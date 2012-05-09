# Author: Stephen Murphy
# Created: April 2012
# Description: Package to set Flash security settings including disabling auto updates
# See: http://wwwimages.adobe.com/www.adobe.com/content/dam/Adobe/en/devnet/flash/articles/flash_player_admin_guide/flash_player_11_1_admin_guide.pdf

include /usr/local/share/luggage/luggage.make

TITLE=prefs_Flash_Security
PACKAGE_VERSION=1.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=pack-AppSupport-Macromedia-mms.cfg

l_Library_Application_Support_Macromedia: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Application\ Support/Macromedia
	@sudo chown root:admin ${WORK_D}/Library/Application\ Support/Macromedia
	@sudo chmod 775 ${WORK_D}/Library/Application\ Support/Macromedia

pack-AppSupport-Macromedia-%: % l_Library_Application_Support_Macromedia
	@sudo ${INSTALL} -m 644 -g admin -o root $< ${WORK_D}/Library/Application\ Support/Macromedia
