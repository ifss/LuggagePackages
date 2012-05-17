# Author: Stephen Murphy
# Created: March 2012
# Description: Package AVCCAM Restorer for unattended install
#
# Note spaces in App name, so using technique from:
# http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=AVCCAM_Restorer_3_Install
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=unbz2-application-AVCCAM_Restorer.app


unbz2-application-AVCCAM_Restorer.app: AVCCAM_Restorer.app.tar.bz2 l_Applications
	@SUDO ${TAR} xjf AVCCAM_Restorer.app.tar.bz2 -C ${WORK_D}/Applications
	@SUDO chown -R root:admin "${WORK_D}/Applications/AVCCAM Restorer.app"