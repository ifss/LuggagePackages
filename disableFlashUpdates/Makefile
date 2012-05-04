# Author: Stephen Murphy
# Created: March 2012
# Description: Package to install plist which disables CS5 auto updates
# See http://managingosx.wordpress.com/2011/05/13/disabling-auto-update-notifications-for-flash-player-10-3/

include /usr/local/share/luggage/luggage.make

TITLE=Disable_Flash_AutoUpdate
PACKAGE_VERSION=1.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=pack-AppSupport-Macromedia-mms.cfg

l_Library_Application_Support_Macromedia: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Application\ Support/Macromedia
	@sudo chown root:admin ${WORK_D}/Library/Application\ Support/Macromedia
	@sudo chmod 775 ${WORK_D}/Library/Application\ Support/Macromedia

pack-AppSupport-Macromedia-%: % l_Library_Application_Support_Macromedia
	@sudo ${INSTALL} -m 644 -g admin -o root $< ${WORK_D}/Library/Application\ Support/Macromedia
