#!/bin/sh
FLAGFILE=".au.edu.ifss.SetupAU.done"
DELAY=10
cd ~
if [ ! -f "$FLAGFILE" ] ; then
   DONE=`osascript "/Library/Scripts/IFSS/setupAU.scpt" $DELAY`
fi
if [ "$DONE" == "true" ] ; then
   touch "$FLAGFILE"
fi