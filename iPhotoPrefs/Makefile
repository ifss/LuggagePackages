# Author: Stephen Murphy
# Created: May 2012
# Description: Install iPhoto preferences for existing and new users
# Mostly to set first run choices re devices, GPS/location

include /usr/local/share/luggage/luggage.make
include ../common/userprefs.make

TITLE=prefs_iPhoto
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PFILE=com.apple.iPhoto.plist
PAYLOAD=\
	pack-user-template-plist-${PFILE}\
	pack-users-ladmin-Preferences-${PFILE}\
	pack-users-ifss-Preferences-${PFILE}




