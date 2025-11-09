# docker-templates

For a list of ROS2 base images to choose from : https://hub.docker.com/r/osrf/ros/tags
This workflow has out-of-the-box support for RViZ and Gazebo.

### Clone repo
```
git clone https://github.com/annanya-tamu/docker-templates.git 
cd docker-templates && mkdir src
```

### Build image
For a ROS2 humble
```
ROS_DISTRO=humble docker compose build
```

For a ROS2 jazzy
```
ROS_DISTRO=jazzy docker compose build
```

### Run container
For a ROS2 humble
```
ROS_DISTRO=humble docker compose up -d
```

For a ROS2 jazzy
```
ROS_DISTRO=jazzy docker compose up -d
```

### Attach into container
For a ROS2 humble 
```
docker exec -it ros2_humble_ws bash #attach into container shell
```

For a ROS2 jazzy 
```
docker exec -it ros2_jazzy_ws bash #attach into container shell
```

### Simulations
For RViZ:
```
rviz2
```

Gazebo ROS2 Humble:
```
gazebo
```

Gazebo ROS2 Jazzy:
```
gz sim
```
