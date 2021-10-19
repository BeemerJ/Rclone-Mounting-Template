
::rclone Mounting Template: https://github.com/Code-Moss/Rclone-Mounting-Template
::
::WARNING: Do NOT run using Administrator privileges.
::Once the service has started, check your designated drive.
::When you are done using your Storage System, you may safely close the command prompt.
::
::Pre-Requisites:
::
::Rclone: https://rclone.org/downloads/
::An already created Rclone Remote: eg. Google Drive: https://rclone.org/drive/ (check the website to see other supported storage systems). 
::WinFSP: https://github.com/billziss-gh/winfsp/releases/ (The Latest Release is reccomended).


@echo off
cd C:\rclone\
rclone mount --vfs-cache-mode full "Your Remote Here": X:
pause
