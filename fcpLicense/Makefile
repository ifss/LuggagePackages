# Author: Stephen Murphy
# Created: April 2012
# Description: Package FCP license file for unattended install
#
# Note spaces in file name, so using technique from:
# http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=FCS_SystemID_Install
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=unbz2-FCS_SystemID


l_Library_Application_Support_ProApps: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Application\ Support/ProApps
	@sudo chown root:admin ${WORK_D}/Library/Application\ Support/ProApps
	@sudo chmod 775 ${WORK_D}/Library/Application\ Support/ProApps

unbz2-FCS_SystemID: FCS_SystemID.tar.bz2 l_Library_Application_Support_ProApps
	@SUDO ${TAR} xjf FCS_SystemID.tar.bz2 -C ${WORK_D}/Library/Application\ Support/ProApps
	@SUDO chown -R 501:20 "${WORK_D}/Library/Application Support/ProApps/Final Cut Studio System ID"