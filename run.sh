#!/bin/bash
set -m
vncserver &
./noVNC/utils/novnc_proxy --vnc localhost:5901 --listen $PORT &
fg %1
