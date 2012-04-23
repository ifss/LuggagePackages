# Author: Stephen Murphy
# Created: April 2012
# Description: Change the password
# Make the postflight script passing user and password:
#    make script USER=xxx PWD=yyy
# Then make the pkg with the new postflight script
#    sudo make pkg

include /usr/local/share/luggage/luggage.make

# Targets to make posttflight script etc.

.PHONY: cleanup
.PHONY: script

help::
	@-echo "-----------------------------------------------"
	@-echo	
	@-echo "Create a package to set the password for a user"
	@-echo
	@-echo "make script - run first to create a postflight script for the package:"
	@-echo "            - usage: make script USER=xxx PWD=yyy"
	@-echo
	@-echo "Once postflight script is made: sudo make pkg USER=xxx"
	@-echo
	@-echo "Finally: make cleanup - delete postflight containing clear text password"
	@-echo
	@-echo "ALTERNATIVELY:"
	@-echo
	@-echo "sudo make script USER=xxx PWD=yyy pkg cleanup"
	@-echo

script:
	@-echo "Creating postflight script for ${USER}..."
	@touch postflight
	@echo '#!/bin/bash' > postflight
	@echo 'sudo /usr/bin/dscl . -passwd /Users/${USER} ${PWD}' >> postflight
	@sudo chmod +x ${CURDIR}/postflight
	@-echo "Now: sudo make pkg USER=${USER}"
	@-echo "Then: make cleanup"


cleanup:
	@sudo rm ${CURDIR}/postflight


# Luggage specific part
# Note - should specify USER when making to name pkg correctly

TITLE=set_password_${USER}
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=pack-script-postflight