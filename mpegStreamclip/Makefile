# Author: Stephen Murphy
# Created: March 2012
# Description: Package MPEG Streamclip 1.9.2 for unattended install
#
# Note spaces in App name, so using technique from:
# http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=MPEG_Streamclip_1-9-2_Install
PACKAGE_VERSION=1.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=unbz2-application-MPEG_Streamclip.app


unbz2-application-MPEG_Streamclip.app: MPEG_Streamclip.app.tar.bz2 l_Applications
	@SUDO ${TAR} xjf MPEG_Streamclip.app.tar.bz2 -C ${WORK_D}/Applications
	@SUDO chown -R root:admin "${WORK_D}/Applications/MPEG Streamclip.app"