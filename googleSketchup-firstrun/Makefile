# Author: Stephen Murphy
# Created: May 2012
# Description: Install preferences and other files for Google Sketchup as per first run

include /usr/local/share/luggage/luggage.make
include ../common/userprefs.make

TITLE=prefs_Google_Sketchup-8_firstrun
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=\
		pack-user-template-plist-com.google.sketchupfree8.plist\
		pack-users-ladmin-Preferences-com.google.sketchupfree8.plist\
		pack-users-ifss-Preferences-com.google.sketchupfree8.plist

#		unbz2-User_Template-AppSupport-Google_SketchUp_8.tar.bz2\
#		unbz2-users-ladmin-AppSupport-Google_SketchUp_8.tar.bz2\
#		unbz2-users-ifss-AppSupport-Google_SketchUp_8.tar.bz2\

#		pack-user-template-Cookies-Cookies.plist\
#		pack-users-ladmin-Cookies-Cookies.plist\
#		pack-users-ifss-Cookies-Cookies.plist

#		pack-users-ladmin-.aawxtrun\
#		pack-users-ifss-.aawxtrun\
#		pack-user-template-.aawxtrun\


l_System_Library_User_Template_Library_AppSupport: l_System_Library_User_Template_Library
	@sudo mkdir -p ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support
	@sudo chown root:wheel ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support
	@sudo chmod 700 ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support

l_System_Library_User_Template_Library_Cookies: l_System_Library_User_Template_Library
	@sudo mkdir -p ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Cookies
	@sudo chown root:wheel ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Cookies
	@sudo chmod 755 ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Cookies

l_ladmin_Library_Cookies: l_ladmin_Library
	@sudo mkdir -p ${WORK_D}/Users/ladmin/Library/Cookies
	@sudo chown 501:20 ${WORK_D}/Users/ladmin/Library/Cookies
	@sudo chmod 755 ${WORK_D}/Users/ladmin/Library/Cookies

l_ifss_Library_Cookies: l_ifss_Library
	@sudo mkdir -p ${WORK_D}/Users/ifss/Library/Cookies
	@sudo chown 502:20 ${WORK_D}/Users/ifss/Library/Cookies
	@sudo chmod 755 ${WORK_D}/Users/ifss/Library/Cookies



pack-users-ladmin-%: % l_Users_ladmin
	@sudo ${INSTALL} -m 644 -g 20 -o 501 $< ${WORK_D}/Users/ladmin

pack-users-ifss-%: % l_Users_ifss
	@sudo ${INSTALL} -m 644 -g 20 -o 502 $< ${WORK_D}/Users/ifss

pack-user-template-%: % l_System_Library_User_Template
	@sudo ${INSTALL} -m 644 $< ${WORK_D}/System/Library/User\ Template/English.lproj

pack-users-ladmin-Cookies-%: % l_ladmin_Library_Cookies
	@sudo ${INSTALL} -m 644 -g 20 -o 501 $< ${WORK_D}/Users/ladmin/Library/Cookies

pack-users-ifss-Cookies-%: % l_ifss_Library_Cookies
	@sudo ${INSTALL} -m 644 -g 20 -o 502 $< ${WORK_D}/Users/ifss/Library/Cookies

pack-user-template-Cookies-%: % l_System_Library_User_Template_Library_Cookies
	@sudo ${INSTALL} -m 644 -g wheel -o root $< ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Cookies



# Spaces in Folder name means that usual technique for setting owners when unpacking archive won't work
# Owners are set in modify_packageroot

unbz2-User_Template-AppSupport-%: % l_System_Library_User_Template_Library_AppSupport
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support
#	@sudo chown -R root:wheel ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"

unbz2-users-ladmin-AppSupport-%: % l_ladmin_Library_AppSupport
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/Users/ladmin/Library/Application\ Support
#	@sudo chown -R 501:20 ${WORK_D}/Users/ladmin/Library/Application\ Support/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"

unbz2-users-ifss-AppSupport-%: % l_ifss_Library_AppSupport
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/Users/ifss/Library/Application\ Support
#	@sudo chown -R 502:20 ${WORK_D}/Users/ifss/Library/Application\ Support/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"


#modify_packageroot:
#	@sudo chown -R root:wheel ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support/Google\ SketchUp\ 8
#	@sudo chown -R 501:20 ${WORK_D}/Users/ladmin/Library/Application\ Support/Google\ SketchUp\ 8
#	@sudo chown -R 502:20 ${WORK_D}/Users/ifss/Library/Application\ Support/Google\ SketchUp\ 8
