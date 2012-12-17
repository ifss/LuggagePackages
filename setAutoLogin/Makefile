# Author: Stephen Murphy
# Created: April 2012
# Description: Payload free package to run a postflight script
#              Sets Auto Login (ifss user) and install encrypted password file

include /usr/local/share/luggage/luggage.make

TITLE=prefs_setAutoLogin
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=\
	pack-etc-kcpassword\
	pack-script-postflight

modify_packageroot:
	@find ${WORK_D}/private/etc/kcpassword -maxdepth 1 -type f -exec chmod 600 {} \;