# Author: Stephen Murphy
# Created: May 2012
# Description: Install preferences and other files for TextWrangler 4 as per first run

include /usr/local/share/luggage/luggage.make
include ../common/userprefs.make

TITLE=prefs_TextWrangler_firstrun
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=\
		pack-user-template-plist-com.barebones.textwrangler.plist\
		pack-users-ladmin-Preferences-com.barebones.textwrangler.plist\
		pack-users-ifss-Preferences-com.barebones.textwrangler.plist\
		unbz2-User_Template-AppSupport-TextWrangler.tar.bz2\
		unbz2-users-ladmin-AppSupport-TextWrangler.tar.bz2\
		unbz2-users-ifss-AppSupport-TextWrangler.tar.bz2


l_System_Library_User_Template_Library_AppSupport: l_System_Library_User_Template_Library
	@sudo mkdir -p ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support
	@sudo chown root:wheel ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support
	@sudo chmod 700 ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support


unbz2-User_Template-AppSupport-%: % l_System_Library_User_Template_Library_AppSupport
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support
	@sudo chown -R root:wheel ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"

unbz2-users-ladmin-AppSupport-%: % l_ladmin_Library_AppSupport
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/Users/ladmin/Library/Application\ Support
	@sudo chown -R 501:20 ${WORK_D}/Users/ladmin/Library/Application\ Support/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"

unbz2-users-ifss-AppSupport-%: % l_ifss_Library_AppSupport
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/Users/ifss/Library/Application\ Support
	@sudo chown -R 502:20 ${WORK_D}/Users/ifss/Library/Application\ Support/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"
