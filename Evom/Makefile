# Author: Stephen Murphy
# Created: May 2012
# Description: Package Evom free app and support files for unattended install

include /usr/local/share/luggage/luggage.make

TITLE=Evom_0-99_Install
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=\
		unbz2-applications-Evom.app\
		pack-AppSupport-Evom-ffmpeg\
		pack-AppSupport-Evom-libx264-evom_high.ffpreset\
		pack-AppSupport-Evom-libx264-evom_low.ffpreset\
		pack-AppSupport-Evom-libx264-evom_medium.ffpreset

l_Library_Application_Support_Evom: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Application\ Support/Evom
	@sudo chown root:admin ${WORK_D}/Library/Application\ Support/Evom
	@sudo chmod 775 ${WORK_D}/Library/Application\ Support/Evom
	
pack-AppSupport-Evom-%: % l_Library_Application_Support_Evom
	@sudo ${INSTALL} -m 644 -g admin -o root $< ${WORK_D}/Library/Application\ Support/Evom
