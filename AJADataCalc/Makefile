# Author: Stephen Murphy
# Created: May 2012
# Description: Package AJA DataCalc for unattended install
#
# Note spaces in App name, so using technique from:
# http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=AJA_DataCalc_9-0-1_Install
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=unbz2-application-AJA_DataCalc.app


unbz2-application-AJA_DataCalc.app: AJA_DataCalc.app.tar.bz2 l_Applications
	@SUDO ${TAR} xjf AJA_DataCalc.app.tar.bz2 -C ${WORK_D}/Applications
	@SUDO chown -R root:admin "${WORK_D}/Applications/AJA DataCalc.app"