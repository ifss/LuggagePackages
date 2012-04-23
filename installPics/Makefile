# Author: Stephen Murphy
# Created: April 2012
# Description: Install and set the standard IFSS desktops and user pics

include /usr/local/share/luggage/luggage.make
include ../common/userprefs.make

TITLE=prefs_installPics
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=\
	pack-user-picture-IFSS_KeyImage_Sec_Logo.jpg\
	pack-user-picture-IFSS_KeyImage_Sec_Logo-Deletion_Warning.jpg\
	pack-user-picture-IFSS_KeyImage_Sec_Logo-Rendering.jpg\
	pack-ifss-picture-ifss.tiff\
	pack-script-postflight


l_User_Pictures_IFSS: l_Library_User_Pictures
	@sudo mkdir -p ${WORK_D}/Library/User\ Pictures/IFSS
	@sudo chown root:admin ${WORK_D}/Library/User\ Pictures/IFSS
	@sudo chmod 775 ${WORK_D}/Library/User\ Pictures/IFSS

pack-ifss-picture-%: % l_User_Pictures_IFSS
	@sudo ${INSTALL} -m 644 $< ${WORK_D}/Library/User\ Pictures/IFSS