#!/bin/bash
#gps script by Mauro Verhoest 6/4/2023

gnome-terminal -- bash -c "roscore; exec bash" '$SHELL'
sleep  30s
gnome-terminal -- bash -c "rosrun nmea_navsat_driver nmea_serial_driver _port:=/dev/ttyUSB0  _baud:=115200; exec bash" --role=root
gnome-terminal -- bash -c "rostopic echo /fix"


#xterm -e rostopic echo /fix


