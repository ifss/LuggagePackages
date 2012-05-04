# Author: Stephen Murphy
# Created: April 2012
# Description: Package to install firstboot script and LaunchDaemon
# Based on InstaDMG firstboot, but does not include postflight for user prefs
# For use when user prefs are set per user, and firstboot only should be run

# For security: wifi password set when creating package
# Lab/workstation config and target OS also set when creating package


include /usr/local/share/luggage/luggage.make

# Targets to make firstboot.sh script etc.

.PHONY: cleanup
.PHONY: script

help::
	@-echo "-----------------------------------------------"
	@-echo	
	@-echo "Create a firstboot package for use on a new image"
	@-echo
	@-echo "make script - run first to create firstboot script for the package:"
	@-echo "            - usage: sudo make script WSCONF=xxx PWD=yyy U501=aaa U502=sss"
	@-echo "            - where WSCONF is Lab_1, Lab_2, etc, PWD is wifi password"
	@-echo "            - where U501 is the admin user and U502 the standard user"
	@-echo
	@-echo "Once firstboot script is made: sudo make pkg WSCONF=xxx"
	@-echo
	@-echo "Finally: make cleanup - delete firstboot containing clear text password/names"
	@-echo
	@-echo "ALTERNATIVELY:"
	@-echo
	@-echo "sudo make script WSCONF=xxx PWD=yyy U501=aaa U502=sss pkg cleanup"
	@-echo

script:
	@-echo "Creating firstboot script for ${WSCONF} from template..."
	@mv ${CURDIR}/firstboot.sh.tpl ${CURDIR}/firstboot.sh
	@sed -i '.tpl' 's/WIFIPASSWORDHERE/${PWD}/' ${CURDIR}/firstboot.sh 
	@sed -i '' 's/SETWSCONFIGHERE/${WSCONF}/' ${CURDIR}/firstboot.sh 
	@sed -i '' 's/ADMINUSER/${U501}/' ${CURDIR}/firstboot.sh
	@sed -i '' 's/STDUSER/${U502}/' ${CURDIR}/firstboot.sh
	@sudo chmod +x ${CURDIR}/firstboot.sh
	@-echo "Now: sudo make pkg WSCONF=${WSCONF}"
	@-echo "Then: make cleanup"


cleanup:
	@sudo rm ${CURDIR}/firstboot.sh


# Luggage specific part
# Note - should specify WSCONF when making to name pkg correctly

OS=`/usr/bin/sw_vers -productVersion | /usr/bin/cut -d "." -f 1,2`
WSCONF=Lab_1
TITLE=firstboot_script_${OS}_${WSCONF}
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=\
	pack-Library-LaunchDaemons-au.edu.ifss.firstboot.plist\
	pack-Library-Scripts_IFSS-firstboot.sh


l_Library_Scripts_IFSS: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Scripts/IFSS
	@sudo chown 501:20 ${WORK_D}/Library/Scripts/IFSS
	@sudo chmod 755 ${WORK_D}/Library/Scripts/IFSS

pack-Library-Scripts_IFSS-%: % l_Library_Scripts_IFSS
	@sudo ${INSTALL} -m 755 -g wheel -o root $< ${WORK_D}/Library/Scripts/IFSS
