To view the robot:

Attach into the jazzy container (instructions in main branch)
Run the world
```
cd src && gz sim building_robot.sdf
```
## Features of tutorial

### Viewing the robot in the simulation
Hit the "Translate" button on the top left and click on the robot. You should be able to hit "Shift" on your keyboard, and then move the robot by dragging your mouse along the arrows.

### Moving the robot manually
Then in another terminal, enter:
```
gz topic -t "/cmd_vel" -m gz.msgs.Twist -p "linear: {x: 0.5}, angular: {z: 0.05}"
```

In the GUI, click the Play button on the bottom left. You should see the vehicle start turning left.

### Viewing a custom world
In the terminal, enter
```
cd src && gz sim world_demo.sdf
```
Press the Play button and get stats about the sim by entering this in a different terminal
```
gz topic -e -t /world/world_demo/stats
```

You can include models created by other people from here: https://app.gazebosim.org/dashboard

### Moving the robot using keystrokes
Go to the top right of the GUI, and select Key publisher. Then press Play. Use the arrow keys to move the robot.

### Concepts to know
Diff_drive plugin - Allows the robot to be driven differentially. This needs to be added manually to the SDF.
Keypublisher plugin - maps keystrokes to numbers that are published on topic /keyboard/keypress. This can be activated by clicking the drop down menu on the top right of the gazebo GUI and selecting "Key Publisher". You can see the output by typing:
```
gz topic -e -t /keyboard/keypress
```
TriggeredPublisher plugin - publishes a user specified message on an output topic in response to an input message that matches user specified criteria. This is also defined in the SDF.

You can overwrite the existing default GUI by using the `<gz-gui>` tags.

