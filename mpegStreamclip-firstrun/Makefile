# Author: Stephen Murphy
# Created: May 2012
# Description: Install preference for MPEG Streamclip as per first run -- for existing and new users

include /usr/local/share/luggage/luggage.make
include ../common/userprefs.make

TITLE=prefs_MPEGStreamclip_firstrun
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PFILE=it.alfanet.squared5.MPEGStreamclip.plist
PAYLOAD=\
 	pack-user-template-plist-${PFILE}\
	pack-users-ladmin-Preferences-${PFILE}\
	pack-users-ifss-Preferences-${PFILE}
