::WARNING: Do NOT run using Administrator privileges.

::Once the service has started, check your designated drive.
::When you are done using your Storage System, you may safely close the command prompt.

::Pre-Requisites:

::Rclone: https://rclone.org/downloads/
::An already created Rclone Remote: eg. Google Drive: https://rclone.org/drive/ (check the website to see other supported storage systems). 
::WinFSP: https://github.com/billziss-gh/winfsp/releases/ (The Latest Release is reccomended).

::-----

::toggle viewing input commands. -Default = off
	
	@echo off
	::---

::Rclone folder directory. (coordinates to folder containing "rclone.exe")
	
	cd C:\rclone\
	::---

::mounts the remote (created through "rclone config") to the designated drive letter.
	
	rclone mount --vfs-cache-mode full ("Your Remote Here"): (Drive Letter Here):
	::---

::enables the "press any key to continue" prompt. (should only show when an error is given)
	
	pause
	::---