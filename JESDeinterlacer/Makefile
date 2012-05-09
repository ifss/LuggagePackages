# Author: Stephen Murphy
# Created: May 2012
# Description: Package JES Deinterlacer for unattended install
#
# Note spaces in App name, so using technique from:
# http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=JES_Deinterlacer_3-8-2_Install
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=unbz2-application-JES_Deinterlacer.app


unbz2-application-JES_Deinterlacer.app: JES_Deinterlacer.app.tar.bz2 l_Applications
	@SUDO ${TAR} xjf JES_Deinterlacer.app.tar.bz2 -C ${WORK_D}/Applications
	@SUDO chown -R root:admin "${WORK_D}/Applications/JES Deinterlacer.app"