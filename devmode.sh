
#!/bin/bash

cd ~/Documents/docker
./QGroundControl.AppImage &

#cat >simulator <<EOF
#!/bin/sh
#EOF
#chmod +x simulator


gnome-terminal --working-directory=/home/txa/Documents/docker/src/PX4-Autopilot -e '/bin/bash -c "export PX4_HOME_LAT=13.439130525878927 ; export PX4_HOME_LON=-16.680631406458  ; HEADLESS=1 make px4_sitl gazebo_standard_vtol"'

cd ~/android-studio/bin
./studio.sh &
cd ~/Documents/docker
./mavsdk_server_manylinux2010-x64 -p 50051
