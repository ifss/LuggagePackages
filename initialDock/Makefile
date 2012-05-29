# Author: Stephen Murphy
# Created: April 2012
# Description: Install a preference for existing and new users
# Very generic -- change PFILE as required

include /usr/local/share/luggage/luggage.make
include ../common/userprefs.make

# Set up target user(s) for preferences install
# If USER is set when calling, will override 'default'

USER=default
ifeq (${USER},default)
PAYLOAD=pack-user-template-plist-${PFILE}
else
PAYLOAD=\
		pack-user-template-plist-${PFILE}\
		pack-users-ladmin-Preferences-${PFILE}\
		pack-users-ifss-Preferences-${PFILE}
endif


# Custom help target

help::
	@-echo "-----------------------------------------------"
	@-echo	
	@-echo "Create a preferences package for existing and/or default users"
	@-echo
	@-echo "sudo make pkg"
	@-echo "            - If USER=xxx not set when called, assumes USER=default"
	@-echo "            - installs for default user template only (e.g. for InstaDMG use)"
	@-echo
	@-echo "sudo make pkg USER=all"
	@-echo "            - installs preference for new and existing users"
	@-echo "            - for use on already booted systems with standard users"
	@-echo "            NOTE: any value of USER other than 'default' gives same result,"
	@-echo "            however the package is named for USER (so 'all' is sensible)"
	@-echo


TITLE=prefs_IFSSdock_${USER}
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PFILE=com.apple.dock.plist
