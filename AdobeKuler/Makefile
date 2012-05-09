# Author: Stephen Murphy
# Created: May 2012
# Description: Package Adobe kuler for unattended install

# -- App requires Adobe Air --

# Note spaces in App name, so using technique from:
# http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=Adobe_kuler_2-1_Install
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=unbz2-application-Adobe_kuler.app


unbz2-application-Adobe_kuler.app: Adobe_kuler.app.tar.bz2 l_Applications
	@SUDO ${TAR} xjf Adobe_kuler.app.tar.bz2 -C ${WORK_D}/Applications
	@SUDO chown -R root:admin "${WORK_D}/Applications/Adobe kuler.app"