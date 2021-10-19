# rclone Mounting Template
A Batch Script to easily mount any created Storage System using rclone and WinFSP, pretty beginner friendly :)

*WARNING*: Do NOT run using Administrator privileges.

Once the service has started, check your designated drive.
When you are done using your Storage System, you may safely close the command prompt.

# Prerequisites:
* rclone: https://rclone.org/downloads/

* An already created rclone Remote: eg. Google Drive: https://rclone.org/drive/ (check the website for more supported storage systems). 

* WinFSP: https://github.com/billziss-gh/winfsp/releases/ (The Latest Release is reccomended).

# The Template...

::toggle viewing input commands. -Default = off
	
	@echo off	

::rclone folder directory. (coordinates to folder containing "rclone.exe")
	
	cd C:\rclone\

::mounts the remote (created through "rclone config") to the designated drive letter.
	
	rclone mount --vfs-cache-mode full *"Your Remote Name Here"*: *Drive Letter Here*:

::enables the "press any key to continue" prompt. (should only show when an error is given)
	
	pause
