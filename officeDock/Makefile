# Author: Stephen Murphy
# Created: April 2012
# Description: Install a preference for existing and new users
# Very generic -- change PFILE as required

include /usr/local/share/luggage/luggage.make
include ../common/userprefs.make

TITLE=prefs_OfficeDock
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PFILE=com.apple.dock.plist
PAYLOAD=\
	pack-user-template-plist-${PFILE}\
	pack-users-ladmin-Preferences-${PFILE}\
	pack-users-ifss-Preferences-${PFILE}
