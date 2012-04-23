# Author: Stephen Murphy
# Created: March 2012
# Description: Package to install plist which disables CS5 auto updates
# May not need to be installed if using AAME packaged installer

include /usr/local/share/luggage/luggage.make

TITLE=Disable_CS5_Updates
PACKAGE_VERSION=1.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=pack-adobeupdater


l_Library_Application_Support_AdobeUpdater: l_Library_Application_Support_Adobe
	@sudo mkdir -p ${WORK_D}/Library/Application\ Support/Adobe/AAMUpdaterInventory/1.0
	@sudo chown root:admin ${WORK_D}/Library/Application\ Support/Adobe/AAMUpdaterInventory/1.0
	@sudo chmod 775 ${WORK_D}/Library/Application\ Support/Adobe/AAMUpdaterInventory/1.0

pack-adobeupdater: l_Library_Application_Support_AdobeUpdater
	@sudo ${CP} ./AdobeUpdaterAdminPrefs.dat ${WORK_D}/Library/Application\ Support/Adobe/AAMUpdaterInventory/1.0
	@sudo chmod 644 ${WORK_D}/Library/Application\ Support/Adobe/AAMUpdaterInventory/1.0/AdobeUpdaterAdminPrefs.dat
	@sudo chown root:admin ${WORK_D}/Library/Application\ Support/Adobe/AAMUpdaterInventory/1.0/AdobeUpdaterAdminPrefs.dat

