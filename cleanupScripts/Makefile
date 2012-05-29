# Author: Stephen Murphy
# Created: May 2012
# Description: Package custom scripts used to cleanups and maintenance

# Note: Custom apps (bundled scripts) have spaces in names, so using technique from:
# http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=scripts_Cleanups_IFSS_AU
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=\
		unbz2-application-IFSS_Maintenance.app\
		unbz2-application-IFSS_Open_Day_Cleanup.app\
		unbz2-application-IFSS_Reset_Screensaver.app\
		pack-Library-Scripts-IFSS-resetenergysaver.sh\
		pack-Library-Scripts-IFSS-cleanupRoutinesLibrary.scpt


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


unbz2-application-IFSS_Maintenance.app: IFSS_Maintenance.app.tar.bz2 l_Applications
	@SUDO ${TAR} xjf IFSS_Maintenance.app.tar.bz2 -C ${WORK_D}/Applications
	@SUDO chown -R root:admin "${WORK_D}/Applications/IFSS Maintenance.app"

unbz2-application-IFSS_Open_Day_Cleanup.app: IFSS_Open_Day_Cleanup.app.tar.bz2 l_Applications
	@SUDO ${TAR} xjf IFSS_Open_Day_Cleanup.app.tar.bz2 -C ${WORK_D}/Applications
	@SUDO chown -R root:admin "${WORK_D}/Applications/IFSS Open Day Cleanup.app"

unbz2-application-IFSS_Reset_Screensaver.app: IFSS_Reset_Screensaver.app.tar.bz2 l_Applications
	@SUDO ${TAR} xjf IFSS_Reset_Screensaver.app.tar.bz2 -C ${WORK_D}/Applications
	@SUDO chown -R root:admin "${WORK_D}/Applications/IFSS Reset Screensaver.app"
