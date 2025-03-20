# MonitorSwap-Linux

Script to fetch Sunshine's log to fetch the client resolution and use   [screenprofiler](https://github.com/Kakiharu/screenprofiler) to swap to a desired resolution when launching a stream.

**Install**

First install [screenprofiler](https://github.com/Kakiharu/screenprofiler) with the Easy Installation so it integrate with your system.

Launch a terminal and type `profilecmd save native 0`

Change your monitor resolution and refresh rate as to those devices you want to use and save the profile name as the resolution (eg. `screenprofilercmd save 1920x1080 0` for 1080p or `screenprofilercmd save 1280x800 0` for Steam Deck)

Download screenprofilerswap.sh where you want

Use `chmod +x screenprofilerswap.sh`  to allow the execution of the script

Go to Sunshine WebUI  [config](https://localhost:47990/config) page

Set the Pre-command DO to `sh -c /path/to/screenprofilerswap.sh`

Set the Pre-command UNDO to `screenprofilecmd load native 0`
![Config](https://i.imgur.com/uVi1ziP.png)

Save and restart Sunshine
