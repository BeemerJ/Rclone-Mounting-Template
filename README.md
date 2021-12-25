# **rclone** Mounting Template
A Batch Script to easily mount any created Storage System using rclone and WinFSP.

*WARNING*: Do **NOT** run using Administrator privileges.

Once the service has started, check your designated drive.
When you are done using your Storage System, you may safely close the command prompt.

## Prerequisites:
* rclone: https://rclone.org/downloads/

* An already created rclone Remote: eg. Google Drive: https://rclone.org/drive/ (check the website for more supported storage systems). 

* WinFSP: https://github.com/billziss-gh/winfsp/releases/ (the Latest Release is reccomended).

## The Template...

Toggle viewing input commands (Optional):
>* *on/off*.
	
	@echo off	

Change directory to rclone folder: 
>* *Coordinates to the folder containing "rclone.exe"*
	
	cd C:\your\directory\here\

Mount the remote to the designated drive letter: 
>* *Remotes are created through running "[rclone config](https://rclone.org/commands/rclone_config/)"*.
>
>* Replace ***"X X X"*** with your created remote name *(eg. Drive or "Google Drive")*, then Replace ***X:*** with your desired Drive letter *(eg. D:)*.
>
>* *Do **NOT** Remove Quotation Marks if your created remote contains spaces*.
	
	rclone mount --vfs-cache-mode full "X X X": X:

Enable the "Press any key to continue..." prompt: 
>* *Should only really show up when an error is given*.
	
	pause
