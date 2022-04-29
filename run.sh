#!/bin/bash
set -m
/usr/bin/Xvfb :1 -screen 0 1180x800x24+32
x11vnc -display :1 -xkb &
./noVNC/utils/novnc_proxy --vnc localhost:5901 --listen $PORT &
fg %1
