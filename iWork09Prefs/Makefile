# Author: Stephen Murphy
# Created: May 2012
# Description: Install iWork preferences for existing and new users

include /usr/local/share/luggage/luggage.make
include ../common/userprefs.make

TITLE=prefs_iWork09
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PFILEK=com.apple.iWork.Keynote.plist
PFILEN=com.apple.iWork.Numbers.plist
PFILEP=com.apple.iWork.Pages.plist
PAYLOAD=\
	pack-user-template-plist-${PFILEK}\
	pack-user-template-plist-${PFILEN}\
	pack-user-template-plist-${PFILEP}\
	pack-users-ladmin-Preferences-${PFILEK}\
	pack-users-ladmin-Preferences-${PFILEN}\
	pack-users-ladmin-Preferences-${PFILEP}\
	pack-users-ifss-Preferences-${PFILEK}\
	pack-users-ifss-Preferences-${PFILEN}\
	pack-users-ifss-Preferences-${PFILEP}




