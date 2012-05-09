# Author: Stephen Murphy
# Created: May 2012
# Description: Package custom scripts used to set AU language and region

include /usr/local/share/luggage/luggage.make

TITLE=scripts_IFSS_AU
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=\
		pack-Library-Scripts-IFSS-runsetupau.sh\
		pack-Library-Scripts-IFSS-setLanguageAU.scpt\
		pack-Library-Scripts-IFSS-setRegionAU.scpt\
		pack-Library-Scripts-IFSS-setupAU.scpt


l_Library_Scripts: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Scripts
	@sudo chown root:wheel ${WORK_D}/Library/Scripts
	@sudo chmod 755 ${WORK_D}/Library/Scripts

l_Library_Scripts_IFSS: l_Library_Scripts
	@sudo mkdir -p ${WORK_D}/Library/Scripts/IFSS
	@sudo chown 501:20 ${WORK_D}/Library/Scripts/IFSS
	@sudo chmod 755 ${WORK_D}/Library/Scripts/IFSS

pack-Library-Scripts-IFSS-%: % l_Library_Scripts_IFSS
	@sudo ${INSTALL} -m 644 -g 20 -o 501 $< ${WORK_D}/Library/Scripts/IFSS

modify_packageroot:
	@sudo chown root:wheel ${WORK_D}/Library/Scripts/IFSS/runsetupau.sh
	@sudo chmod 755 ${WORK_D}/Library/Scripts/IFSS/runsetupau.sh
