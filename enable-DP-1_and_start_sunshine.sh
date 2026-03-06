#!/bin/bash

## Kill HDMI-A-1 to keep consistent monitor numbering
## Enable DP-1 virtual monitor
/usr/bin/kscreen-doctor output.HDMI-A-1.disable
/usr/bin/kscreen-doctor output.DP-1.enable

## wait for plasma session to be ready
sleep 1

## start sunshine then when it ends disable DP-1
sunshine && /usr/bin/kscreen-doctor output.DP-1.disable
