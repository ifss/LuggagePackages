# Author: Stephen Murphy
# Created: May 2012
# Description: Package Google Earth for unattended install
#
# Note spaces in App name, so using technique from:
# http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=Google_Earth_6-2_Install
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=unbz2-application-Google_Earth.app


unbz2-application-Google_Earth.app: Google_Earth.app.tar.bz2 l_Applications
	@SUDO ${TAR} xjf Google_Earth.app.tar.bz2 -C ${WORK_D}/Applications
	@SUDO chown -R root:admin "${WORK_D}/Applications/Google Earth.app"