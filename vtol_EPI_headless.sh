
#!/bin/bash

cd ~/Documents/docker
./QGroundControl.AppImage &

#cat >simulator <<EOF
#!/bin/sh
#EOF
#chmod +x simulator

gnome-terminal --working-directory=/home/txa/android-studio/bin -e '/bin/bash -c "./studio.sh"'

#QUADCOPTER
#gnome-terminal --working-directory=/home/txa/Documents/docker/src/PX4-Autopilot -e '/bin/bash -c "set param MAV_{i}_BROADCAST = 1 ; export PX4_HOME_LAT=13.456433 ; export PX4_HOME_LON=-16.699092  ; HEADLESS=1 make px4_sitl jmavsim"'


#EPI_Banjul_National_Labs: LAUNCHSITE
gnome-terminal --working-directory=/home/txa/Documents/docker/src/PX4-Autopilot -e '/bin/bash -c "set param MAV_{i}_BROADCAST = 1 ; export PX4_HOME_LAT=13.456433 ; export PX4_HOME_LON=-16.699092  ; HEADLESS=1 make px4_sitl gazebo_standard_vtol"'

#cd ~/android-studio/bin
#./studio.sh &
cd ~/Documents/docker
./mavsdk_server_manylinux2010-x64 -p 50051
