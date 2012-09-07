# Author: Stephen Murphy
# Created: May 2012 :: July 2012 (InstaDMDG version)
# Description: Package Evom free app and support files for new users (InstaDMG workflow)

include /usr/local/share/luggage/luggage.make
include ../common/userprefs.make

TITLE=Evom_1-0-1_Install_InstaDMG
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=\
		unbz2-applications-Evom.app\
		pack-User-Template-AppSupport-Evom-ffmpeg\
		pack-User-Template-AppSupport-Evom-libx264-evom_high.ffpreset\
		pack-User-Template-AppSupport-Evom-libx264-evom_low.ffpreset\
		pack-User-Template-AppSupport-Evom-libx264-evom_medium.ffpreset


l_System_Library_User_Template_AppSupport: l_System_Library_User_Template_Library
	@sudo mkdir -p ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support
	@sudo chown root:wheel ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support
	@sudo chmod 700 ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support

l_System_Library_User_Template_AppSupport_Evom: l_System_Library_User_Template_AppSupport
	@sudo mkdir -p ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support/Evom
	@sudo chown root:wheel ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support/Evom
	@sudo chmod 755 ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support/Evom


pack-User-Template-AppSupport-Evom-%: % l_System_Library_User_Template_AppSupport_Evom
	@sudo ${INSTALL} -m 644 -g wheel -o root $< ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support/Evom


modify_packageroot:
	@sudo chmod 755 ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support/Evom/ffmpeg
	