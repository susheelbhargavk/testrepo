### Final Year Project 
#### Position Based Advertisement System 
###### Please Follow the required instructions for setting this up

There are some prerequisites for making this system work on any GNU/Linux
type environment.As I have mentioned we need the following for this entire
model to work : 
	* git - core
	* vlc / equivalent video player
	* GNU/Linux environment

`Note :` For installing any of the above descripted packages please go with the 
	 command
	> sudo apt-get install "name of the package"

`Reminder :` In the shell script `install.sh` on the Line `8` and `13` have been
	     commented so if not installed please uncomment the above said lines
	     so that the script directly involves all the process.

* Adding the Videos:

After cloning the repository if the user wants to deploy new adds there are some
conventions which are needed to be kept in mind :
	```shellscript
	#Line 6 
		mkdir folder_name
	#Line 7 
		cd folder_name

	```
So these two lines can be edited depending upon the user, but if edited please 
make sure to change `addvideo.sh` since it also parses the directory convention
based on the `install.sh` script.

-- Susheel Bhargav



