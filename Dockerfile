# Declare ARG before FROM so it can be used in the base image tag
ARG ROS_DISTRO=jazzy
FROM osrf/ros:${ROS_DISTRO}-desktop-full

# Re-declare if you want to use it after FROM
ARG ROS_DISTRO

# Install deps
RUN apt update && apt install -y \
    python3-colcon-common-extensions \
    python3-rosdep \
    vim \
    nano \
 && if [ "$ROS_DISTRO" = "humble" ]; then \
        apt install -y gazebo; \
    fi \
 && rm -rf /var/lib/apt/lists/*

# Workspace
WORKDIR /ros2_ws
COPY /src ./src

# Build (use the ARG)
RUN . /opt/ros/${ROS_DISTRO}/setup.sh && \
    rosdep update && rosdep install --from-paths src --ignore-src -r -y && \
    colcon build

# ✅ Auto-source ROS setup in every new shell
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> /root/.bashrc

