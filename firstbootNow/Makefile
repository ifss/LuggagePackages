# Author: Stephen Murphy
# Created: April 2012
# Description: Package to run firstboot script as postinstall
# Based on InstaDMG firstboot
# For use on new image or to reset firstboot settings

# For security: wifi password set when creating package
# Lab/workstation config and target OS also set when creating package


include /usr/local/share/luggage/luggage.make

# Targets to make postflight script etc.

.PHONY: cleanup
.PHONY: script

help::
	@-echo "-----------------------------------------------"
	@-echo	
	@-echo "Create a firstboot-style package for immediate use on an installed image"
	@-echo
	@-echo "make script - run first to create postflight script for the package:"
	@-echo "            - usage: sudo make script WSCONF=xxx PWD=yyy"
	@-echo "            - where WSCONF is Lab_1, Lab_2, etc and PWD is wifi password"
	@-echo
	@-echo "Once postflight script is made: sudo make pkg WSCONF=xxx"
	@-echo
	@-echo "Finally: make cleanup - delete postflight containing clear text password"
	@-echo
	@-echo "ALTERNATIVELY:"
	@-echo
	@-echo "sudo make script WSCONF=xxx PWD=yyy pkg cleanup"
	@-echo

script:
	@-echo "Creating postflight script for ${WSCONF} from template..."
	@mv ${CURDIR}/postflight.tpl ${CURDIR}/postflight
	@sed -i '.tpl' 's/WIFIPASSWORDHERE/${PWD}/' ${CURDIR}/postflight 
	@sed -i '' 's/SETWSCONFIGHERE/${WSCONF}/' ${CURDIR}/postflight
	@sudo chmod +x ${CURDIR}/postflight
	@-echo "Now: sudo make pkg WSCONF=${WSCONF}"
	@-echo "Then: make cleanup"


cleanup:
	@sudo rm ${CURDIR}/postflight


# Luggage specific part
# Note - should specify WSCONF when making to name pkg correctly

OS=`/usr/bin/sw_vers -productVersion | /usr/bin/cut -d "." -f 1,2`
WSCONF=Lab_1
TITLE=firstbootprefs_now_${OS}_${WSCONF}
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=pack-script-postflight
