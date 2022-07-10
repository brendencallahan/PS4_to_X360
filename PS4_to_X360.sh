#!/bin/sh

xboxdrv --evdev /dev/input/event28 --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y --axismap -Y1=Y1,-Y2=Y2 --evdev-keymap BTN_NORTH=y,BTN_SOUTH=a,BTN_EAST=b,BTN_WEST=x,BTN_SELECT=back,BTN_START=start,BTN_TR=rb,BTN_TR2=rt,BTN_TL=lb,BTN_TL2=lt,BTN_THUMBR=tr,BTN_THUMBL=tl --mimic-xpad --silent &

xboxdrv --evdev /dev/input/event25 --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y --axismap -Y1=Y1,-Y2=Y2 --evdev-keymap BTN_NORTH=y,BTN_SOUTH=a,BTN_EAST=b,BTN_WEST=x,BTN_SELECT=back,BTN_START=start,BTN_TR=rb,BTN_TR2=rt,BTN_TL=lb,BTN_TL2=lt,BTN_THUMBR=tr,BTN_THUMBL=tl --mimic-xpad --silent &
