# PS4_to_X360
## Use a PS4 controller as an Xbox-360 controller, on Linux.
#### Assumes 2 controllers.


Default mappings for PS4 to Xbox 360 controller using xboxdrv. (Ensure you edit .sh file to have your device name)

`
$ sudo apt install xboxdrv evtest
`  
  

`
$ git clone https://github.com/brendencallahan/PS4_to_X360
`  

`
$ cd PS4_to_X360
`  

  
`
 $ sudo evtest (take note of device id and edit it into the script file)
`  
  
`
$ vim PS4_to_X360.sh
`
   
` 
line 3 & 5. .......... dev/input/event28 change to -> dev/input/eventYOURID
` 
  
  
`
$ chmod u+x PS4_to_X360.sh
`

  
`
$ ./PS4_to_X360
`
