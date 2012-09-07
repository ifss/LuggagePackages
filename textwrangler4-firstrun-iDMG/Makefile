# Author: Stephen Murphy
# Created: May 2012
# Description: Install preferences and other files for TextWrangler 4 as per first run
# InstaDMG version - new user template only

include /usr/local/share/luggage/luggage.make

TITLE=prefs_TextWrangler_firstrun
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=\
		pack-user-template-plist-com.barebones.textwrangler.plist\
		unbz2-User_Template-AppSupport-TextWrangler.tar.bz2\

l_System_Library_User_Template_Library_AppSupport: l_System_Library_User_Template_Library
	@sudo mkdir -p ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support
	@sudo chown root:wheel ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support
	@sudo chmod 700 ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support


unbz2-User_Template-AppSupport-%: % l_System_Library_User_Template_Library_AppSupport
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support
	@sudo chown -R root:wheel ${WORK_D}/System/Library/User\ Template/English.lproj/Library/Application\ Support/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"
