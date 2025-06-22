# MonitorSwap-Linux

Script to fetch Sunshine's log to fetch the client resolution and use   [screenprofiler](https://github.com/Kakiharu/screenprofiler) to swap to a desired resolution when launching a stream.

*

## Installation
1. Install [screenprofiler](https://github.com/Kakiharu/screenprofiler) with the Easy Installation so it integrate with your system.
2. Download and execute `install.sh`  OR execute this commands
```
cd screenprofilerswap  
chmod +x screenprofilerswap  
chmod +x screenprofilerback  
ln -s  $PWD/screenprofilerswap ~/.local/bin/screenprofilerswap  
ln -s  $PWD/screenprofilerback ~/.local/bin/screenprofilerback
```
## Usage

1. Open a terminal and execute this to save your default Desktop layout.
```
screenprofilercmd save native 0
```
> If using a Dummy plug, launch now a Moonlight stream and follow the steps. Useful if you want to turn off your monitor while streaming.
2. Change your monitor resolution and refresh rate as to those devices you want to use and save the profile name as the resolution (eg. `screenprofilercmd save 1920x1080 0` for 1080p or `screenprofilercmd save 1280x800 0` for Steam Deck). 
Do this for all the resolutions you want.

## Sunshine
1. Open Sunshine's [WebUI config page](https://localhost:47990/config)
2. Set Log Level to `DEBUG`
3. Set the Pre-command DO to `screenprofilerswap`
4. Set the Pre-command UNDO to `screenprofilerback`
5. Save and apply
6. Test if your configuration is working

![enter image description here](https://i.imgur.com/ckkjXAH.png)
