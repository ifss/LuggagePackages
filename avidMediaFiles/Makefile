# Author: Stephen Murphy
# Created: March 2012
# Description: Make the Avid MediaFiles folder at Root

include /usr/local/share/luggage/luggage.make

TITLE=prefs_Avid_MediaFiles
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=l_AvidMF

l_AvidMF: l_root
	@sudo mkdir -p ${WORK_D}/Avid\ MediaFiles
	@sudo chown root:admin ${WORK_D}/Avid\ MediaFiles
	@sudo chmod 777 ${WORK_D}/Avid\ MediaFiles
