# Author: Stephen Murphy
# Created: March 2012
# Description: Make the Temp Trash folder at Root

include /usr/local/share/luggage/luggage.make

TITLE=prefs_Temp_Trash
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=l_TempTrash

l_TempTrash: l_root
	@sudo mkdir -p ${WORK_D}/Temp\ Trash
	@sudo chown 502:20 ${WORK_D}/Temp\ Trash
	@sudo chmod 775 ${WORK_D}/Temp\ Trash
