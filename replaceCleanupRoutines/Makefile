# Author: Stephen Murphy
# Created: May 2012
# Description: Package the basic cleanup routines - after updates to main script

# Note: Custom apps (bundled scripts) have spaces in names, so using technique from:
# http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=scripts_Cleanup_Routines_IFSS_AU
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=pack-Library-Scripts-IFSS-cleanupRoutinesLibrary.scpt


l_Library_Scripts: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Scripts
	@sudo chown root:wheel ${WORK_D}/Library/Scripts
	@sudo chmod 755 ${WORK_D}/Library/Scripts

l_Library_Scripts_IFSS: l_Library_Scripts
	@sudo mkdir -p ${WORK_D}/Library/Scripts/IFSS
	@sudo chown 501:20 ${WORK_D}/Library/Scripts/IFSS
	@sudo chmod 755 ${WORK_D}/Library/Scripts/IFSS

pack-Library-Scripts-IFSS-%: % l_Library_Scripts_IFSS
	@sudo ${INSTALL} -m 644 -g 20 -o 501 $< ${WORK_D}/Library/Scripts/IFSS
