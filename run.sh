#!/bin/bash
set -m
vncserver :1 &
./noVNC/utils/novnc_proxy --vnc localhost:5901 --listen $PORT &
fg %1
