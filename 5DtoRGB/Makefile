# Author: Stephen Murphy
# Created: May 2012 :: Modified July 2012 (for MAS version)
# Description: Package 5DtoRGB free app (MAS version) for unattended install
#
# Note spaces in App name, so using technique from:
# http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=5DtoRGB-1-5-9_Install
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
#PAYLOAD=unbz2-applications-5DtoRGB.app
PAYLOAD=unbz2-application-5DtoRGB_Lite.app

unbz2-application-5DtoRGB_Lite.app: 5DtoRGB_Lite.app.tar.bz2 l_Applications
	@SUDO ${TAR} xjf 5DtoRGB_Lite.app.tar.bz2 -C ${WORK_D}/Applications
	@SUDO chown -R root:admin "${WORK_D}/Applications/5DtoRGB Lite.app"