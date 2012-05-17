# Author: Stephen Murphy
# Created: March 2012
# Description: Package AVCCAM SD Card File Recovery for unattended install
#
# Note spaces in App name, so using technique from:
# http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=AVCCAM_Recovery_1-2_Install
PACKAGE_VERSION=1.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=unbz2-application-AVCCAM_SD_Card_File_Recovery.app


unbz2-application-AVCCAM_SD_Card_File_Recovery.app: AVCCAM_SD_Card_File_Recovery.app.tar.bz2 l_Applications
	@SUDO ${TAR} xjf AVCCAM_SD_Card_File_Recovery.app.tar.bz2 -C ${WORK_D}/Applications
	@SUDO chown -R root:admin "${WORK_D}/Applications/AVCCAM SD Card File Recovery.app"