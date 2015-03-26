#!/bin/bash
 
#Simple DVD to AVI script for archiving.
#By: Ronny L. Bull
#Version: 1.0
#Date: 8-05-2011
 
echo "Enter the DVD Title"
read TITLE
 
echo "Where would you like the file to be ripped to? (FULL PATH)"
read PATH
 
echo "Ripping: $TITLE to $PATH"
 
/usr/bin/mencoder dvd://1 -ovc lavc -af volnorm=1 \
	-alang en -oac mp3lame -lameopts cbr:preset=128 \
	-lavcopts vbitrate=900:v4mv:vhq:vcodec=mpeg4 \
	-nosub -o "$PATH/$TITLE.avi"
 
echo "Ripping of - $TITLE - is done"
 
echo "Your file can be found at $PATH/$TITLE.avi"
 
echo "Ejecting DVD now. Please wait ..."
 
/usr/bin/eject
 
exit
