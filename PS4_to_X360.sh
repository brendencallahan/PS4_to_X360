#!/bin/sh

trap : 2
echo -e "\nIMPORTANT: Be sure to use ctrl+C, after devices are listed"
echo -e "Please look for the Wireless Controller /eventid.\n"
sudo evtest 

echo -e "\nHow many controllers?"
read conNum

while [ $conNum -gt 0 ]
do
  echo -e "Enter the /eventid:"
  read id 
  xboxdrv --mimic-xpad --silent --quiet --evdev /dev/input/event$id --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y --axismap -Y1=Y1,-Y2=Y2 --evdev-keymap BTN_NORTH=y,BTN_SOUTH=a,BTN_EAST=b,BTN_WEST=x,BTN_SELECT=back,BTN_START=start,BTN_TR=rb,BTN_TR2=rt,BTN_TL=lb,BTN_TL2=lt,BTN_THUMBR=tr,BTN_THUMBL=tl &
  echo -e "Listening to controller $conNum with id $id..."
  ((conNum--))
done

echo -e "All your controllers are belong to us.\n"

# xboxdrv --evdev /dev/input/event25 --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y --axismap -Y1=Y1,-Y2=Y2 --evdev-keymap BTN_NORTH=y,BTN_SOUTH=a,BTN_EAST=b,BTN_WEST=x,BTN_SELECT=back,BTN_START=start,BTN_TR=rb,BTN_TR2=rt,BTN_TL=lb,BTN_TL2=lt,BTN_THUMBR=tr,BTN_THUMBL=tl --mimic-xpad --silent &
# xboxdrv --evdev /dev/input/event28 --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y --axismap -Y1=Y1,-Y2=Y2 --evdev-keymap BTN_NORTH=y,BTN_SOUTH=a,BTN_EAST=b,BTN_WEST=x,BTN_SELECT=back,BTN_START=start,BTN_TR=rb,BTN_TR2=rt,BTN_TL=lb,BTN_TL2=lt,BTN_THUMBR=tr,BTN_THUMBL=tl --mimic-xpad --silent &
