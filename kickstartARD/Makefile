# Author: Stephen Murphy
# Created: September 2012
# Updated: November 2012 (added launch agent and 
# Description: Package to install kickstart script and LaunchDaemon
# Based on InstaDMG firstboot

# Note: The launch daemon uses a watchpaths trigger to run because
#       Local MCX turns off remote management if daemon runs on boot.
#       The launch agent runs a script on user login to create a
#       trigger file, in turn causing the daemon to run.

include /usr/local/share/luggage/luggage.make

TITLE=kickstart_script
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.1.0
PAYLOAD=\
	pack-Library-LaunchDaemons-au.edu.ifss.kickstart.plist\
	pack-Library-LaunchAgents-au.edu.ifss.ardtrigger.plist\
	pack-Library-Scripts_IFSS-kickstart.sh\
	pack-Library-Scripts_IFSS-ardtrigger.sh\
	pack-trigger-ardtrigger


l_Library_Scripts_IFSS: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Scripts/IFSS
	@sudo chown 501:20 ${WORK_D}/Library/Scripts/IFSS
	@sudo chmod 755 ${WORK_D}/Library/Scripts/IFSS

l_Library_Scripts_IFSS_trigger: l_Library_Scripts_IFSS
	@sudo mkdir -p ${WORK_D}/Library/Scripts/IFSS/trigger
	@sudo chown root:admin ${WORK_D}/Library/Scripts/IFSS/trigger
	@sudo chmod 755 ${WORK_D}/Library/Scripts/IFSS/trigger

pack-Library-Scripts_IFSS-%: % l_Library_Scripts_IFSS
	@sudo ${INSTALL} -m 755 -g wheel -o root $< ${WORK_D}/Library/Scripts/IFSS

pack-trigger-ardtrigger: ardtrigger l_Library_Scripts_IFSS_trigger
	@sudo touch ${WORK_D}/Library/Scripts/IFSS/trigger/"${<}"
	@sudo chown 501:20 ${WORK_D}/Library/Scripts/IFSS/trigger/"${<}"
	@sudo chmod 666 ${WORK_D}/Library/Scripts/IFSS/trigger/"${<}"