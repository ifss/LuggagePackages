# Author: Stephen Murphy
# Created: May 2012
# Description: Install preferences and support files which enable command line extras for TextWrangler 4

# Note in V4, helper tools are now symlinks to app package, so no need to install them directly

include /usr/local/share/luggage/luggage.make

TITLE=prefs_TextWrangler_cmdline
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=\
		pack-Library-LaunchDaemons-com.barebones.authd.plist\
		pack-Library-PrivHTools-com.barebones.authd\
		create-usr-local-bin-symlinks\
		create-usr_local_man1-symlinks


l_Library_PrivHTools: l_Library
	@sudo mkdir -p ${WORK_D}/Library/PrivilegedHelperTools
	@sudo chown root:wheel ${WORK_D}/Library/PrivilegedHelperTools
	@sudo chmod 1755 ${WORK_D}/Library/PrivilegedHelperTools

l_usr_local_man1: l_usr_local_share
	@sudo mkdir -p ${WORK_D}/usr/local/share/man/man1
	@sudo chown -R root:wheel ${WORK_D}/usr/local/share/man/man1
	@sudo chmod -R 0755 ${WORK_D}/usr/local/share/man/man1

pack-Library-PrivHTools-%: % l_Library_PrivHTools
	@sudo ${INSTALL} -m 544 -g wheel -o root $< ${WORK_D}/Library/PrivilegedHelperTools

create-usr-local-bin-symlinks: l_usr_local_bin
	@sudo ln -s /Applications/TextWrangler.app/Contents/Helpers/edit ${WORK_D}/usr/local/bin/edit
	@sudo ln -s /Applications/TextWrangler.app/Contents/Helpers/twdiff ${WORK_D}/usr/local/bin/twdiff
	@sudo ln -s /Applications/TextWrangler.app/Contents/Helpers/twfind ${WORK_D}/usr/local/bin/twfind

create-usr_local_man1-symlinks: l_usr_local_man1
	@sudo ln -s /Applications/TextWrangler.app/Contents/Resources/edit.1 ${WORK_D}/usr/local/share/man/man1/edit.1
	@sudo ln -s /Applications/TextWrangler.app/Contents/Resources/twdiff.1 ${WORK_D}/usr/local/share/man/man1/twdiff.1
	@sudo ln -s /Applications/TextWrangler.app/Contents/Resources/twfind.1 ${WORK_D}/usr/local/share/man/man1/twfind.1


