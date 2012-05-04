# Author: Stephen Murphy
# Created: April 2012
# Description: Payload free package scripts to set user preferences

# Sets default user or existing user firstrun prefs according to make options

include /usr/local/share/luggage/luggage.make

# Targets to make posttflight script etc.

.PHONY: cleanup
.PHONY: script


# Set up which user preferences will be set by postflight script
# If USER is set when calling, will override 'default'
USER=default
ifeq (${USER},default)
PREFDIR='/System/Library/User Template/English.lproj/Library/Preferences'
else
PREFDIR='/Users/${USER}/Library/Preferences'
endif

# Custom targets

help::
	@-echo "-----------------------------------------------"
	@-echo	
	@-echo "Create a firstrun preferences package for use on a new image"
	@-echo
	@-echo "make script - run first to create postflight for the package:"
	@-echo "            - usage: sudo make script USER=xxx"
	@-echo "            - If no user, default (new) user preferences are set"
	@-echo
	@-echo "Once firstboot script is made: sudo make pkg USER=xxx"
	@-echo
	@-echo "Finally: make cleanup - delete postflight containing user details"
	@-echo
	@-echo "ALTERNATIVELY:"
	@-echo
	@-echo "sudo make script USER=xxx pkg cleanup"
	@-echo


script:
	@-echo "Creating postflight script for ${USER}..."
	@cat postflight.head > postflight
	@echo 'USERPREFS_DIR="$$3${PREFDIR}"' >> postflight
	@echo 'USER="${USER}"' >> postflight
	@cat postflight.main >> postflight
	@sudo chmod +x ${CURDIR}/postflight
	@sudo chown 501:20 ${CURDIR}/postflight
	@-echo "Now: sudo make pkg USER=${USER}"
	@-echo "Then: make cleanup"


cleanup:
	@sudo rm ${CURDIR}/postflight


# Luggage specific part
# Note - should specify USER when making to name pkg correctly

OS=`/usr/bin/sw_vers -productVersion | /usr/bin/cut -d "." -f 1,2`
TITLE=firstrunprefs_${OS}_${USER}
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=pack-script-postflight
