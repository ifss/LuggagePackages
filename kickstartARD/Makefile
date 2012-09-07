# Author: Stephen Murphy
# Created: September 2012
# Description: Package to install kickstart script and LaunchDaemon
# Based on InstaDMG firstboot

include /usr/local/share/luggage/luggage.make

TITLE=kickstart_script
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=\
	pack-Library-LaunchDaemons-au.edu.ifss.kickstart.plist\
	pack-Library-Scripts_IFSS-kickstart.sh


l_Library_Scripts_IFSS: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Scripts/IFSS
	@sudo chown 501:20 ${WORK_D}/Library/Scripts/IFSS
	@sudo chmod 755 ${WORK_D}/Library/Scripts/IFSS

pack-Library-Scripts_IFSS-%: % l_Library_Scripts_IFSS
	@sudo ${INSTALL} -m 755 -g wheel -o root $< ${WORK_D}/Library/Scripts/IFSS
