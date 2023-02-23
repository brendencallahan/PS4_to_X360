# PS4_to_X360
## Use a PS4 controller as an Xbox-360 controller, on Linux.

Some game don't have the best support for playstation controllers. This script
uses xboxdrv and evtest, to map the PS4 controller to the Xbox 360 one.

#### ***IMPORTANT:*** be sure to ctrl-C, after evtest lists off devices.
(This will be more obvious when you run the script. If you know of a better way
to get the /dev/input/deviceid please let me know.)

### To use

```
$ sudo pacman -S xboxdrv evtest
```
```
$ git clone https://github.com/brendencallahan/PS4_to_X360
```
```
$ cd PS4_to_X360
```
```
$ chmod u+x PS4_to_X360.sh
```
```
$ ./PS4_to_X360
```
