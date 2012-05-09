# Author: Stephen Murphy
# Created: April 2012
# Description: Install launch daemon and script to re-install Local MCX files each restart
#
# Note that installer for Local MCX needs to be in place first
# (but this creates packages folder to hold installer)

include /usr/local/share/luggage/luggage.make

TITLE=scripts_restore_LocalMCX
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=\
		pack-Library-LaunchDaemons-au.edu.ifss.restoremcx.plist\
		pack-Library-Scripts-IFSS-restoremcx.sh\
		l_IFSS_packages


l_Library_Scripts: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Scripts
	@sudo chown root:wheel ${WORK_D}/Library/Scripts
	@sudo chmod 755 ${WORK_D}/Library/Scripts

l_Library_Scripts_IFSS: l_Library_Scripts
	@sudo mkdir -p ${WORK_D}/Library/Scripts/IFSS
	@sudo chown 501:20 ${WORK_D}/Library/Scripts/IFSS
	@sudo chmod 755 ${WORK_D}/Library/Scripts/IFSS

l_IFSS_packages: l_Library_Scripts_IFSS
	@sudo mkdir -p ${WORK_D}/Library/Scripts/IFSS/packages
	@sudo chown 501:20 ${WORK_D}/Library/Scripts/IFSS/packages
	@sudo chmod 755 ${WORK_D}/Library/Scripts/IFSS/packages

pack-Library-Scripts-IFSS-%: % l_Library_Scripts_IFSS
	@sudo ${INSTALL} -m 644 -g 20 -o 501 $< ${WORK_D}/Library/Scripts/IFSS

modify_packageroot:
	@sudo chown root:wheel ${WORK_D}/Library/Scripts/IFSS/restoremcx.sh
	@sudo chmod 755 ${WORK_D}/Library/Scripts/IFSS/restoremcx.sh