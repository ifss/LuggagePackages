# Author: Stephen Murphy
# Created: May 2012
# Description: Package Evom free app and support files for new and standard users

include /usr/local/share/luggage/luggage.make
include ../common/userprefs.make

TITLE=Evom_1-0-1_Install
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=\
		unbz2-applications-Evom.app\
		pack-ladmin-AppSupport-Evom-ffmpeg\
		pack-ladmin-AppSupport-Evom-libx264-evom_high.ffpreset\
		pack-ladmin-AppSupport-Evom-libx264-evom_low.ffpreset\
		pack-ladmin-AppSupport-Evom-libx264-evom_medium.ffpreset\
		pack-ifss-AppSupport-Evom-ffmpeg\
		pack-ifss-AppSupport-Evom-libx264-evom_high.ffpreset\
		pack-ifss-AppSupport-Evom-libx264-evom_low.ffpreset\
		pack-ifss-AppSupport-Evom-libx264-evom_medium.ffpreset\
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

l_ladmin_AppSupport: l_ladmin_Library
	@sudo mkdir -p ${WORK_D}/Users/ladmin/Library/Application\ Support
	@sudo chown 501:20 ${WORK_D}/Users/ladmin/Library/Application\ Support
	@sudo chmod 700 ${WORK_D}/Users/ladmin/Library/Application\ Support

l_ladmin_AppSupport_Evom: l_ladmin_AppSupport
	@sudo mkdir -p ${WORK_D}/Users/ladmin/Library/Application\ Support/Evom
	@sudo chown 501:20 ${WORK_D}/Users/ladmin/Library/Application\ Support/Evom
	@sudo chmod 755 ${WORK_D}/Users/ladmin/Library/Application\ Support/Evom

l_ifss_AppSupport: l_ifss_Library
	@sudo mkdir -p ${WORK_D}/Users/ifss/Library/Application\ Support
	@sudo chown 502:20 ${WORK_D}/Users/ifss/Library/Application\ Support
	@sudo chmod 700 ${WORK_D}/Users/ifss/Library/Application\ Support

l_ifss_AppSupport_Evom: l_ifss_AppSupport
	@sudo mkdir -p ${WORK_D}/Users/ifss/Library/Application\ Support/Evom
	@sudo chown 502:20 ${WORK_D}/Users/ifss/Library/Application\ Support/Evom
	@sudo chmod 755 ${WORK_D}/Users/ifss/Library/Application\ Support/Evom


pack-ladmin-AppSupport-Evom-%: % l_ladmin_AppSupport_Evom
	@sudo ${INSTALL} -m 644 -g 20 -o 501 $< ${WORK_D}/Users/ladmin/Library/Application\ Support/Evom

pack-ifss-AppSupport-Evom-%: % l_ifss_AppSupport_Evom
	@sudo ${INSTALL} -m 644 -g 20 -o 502 $< ${WORK_D}/Users/ifss/Library/Application\ Support/Evom

pack-User-Template-AppSupport-Evom-%: % l_System_Library_User_Template_AppSupport_Evom
	@sudo ${INSTALL} -m 644 -g wheel -o root $< ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support/Evom


modify_packageroot:
	@sudo chmod 755 ${WORK_D}/Users/ifss/Library/Application\ Support/Evom/ffmpeg
	@sudo chmod 755 ${WORK_D}/Users/ladmin/Library/Application\ Support/Evom/ffmpeg
	@sudo chmod 755 ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support/Evom/ffmpeg
	