# Author: Stephen Murphy
# Created: May 2012
# Description: Install hidden file which enables support for Assistive Devices

include /usr/local/share/luggage/luggage.make

TITLE=prefs_AssistiveDevs
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=pack-private-var-db-.AccessibilityAPIEnabled


l_private_var: l_private
	@sudo mkdir -p ${WORK_D}/private/var
	@sudo chown -R root:wheel ${WORK_D}/private/var
	@sudo chmod -R 755 ${WORK_D}/private/var

l_private_var_db: l_private_var
	@sudo mkdir -p ${WORK_D}/private/var/db
	@sudo chown -R root:wheel ${WORK_D}/private/var/db
	@sudo chmod -R 755 ${WORK_D}/private/var/db

pack-private-var-db-%: % l_private_var_db
	@sudo ${INSTALL} -m 644 -g wheel -o root $< ${WORK_D}/private/var/db

modify_packageroot:
	@sudo chmod 444 ${WORK_D}/private/var/db/.AccessibilityAPIEnabled
