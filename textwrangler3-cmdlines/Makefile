# Author: Stephen Murphy
# Created: May 2012
# Description: Install preferences and support files which enable command line extras for TextWrangler

include /usr/local/share/luggage/luggage.make

TITLE=prefs_TextWrangler_cmdline
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=\
		pack-Library-LaunchDaemons-com.barebones.textwrangler.plist\
		pack-Library-PrivHTools-com.barebones.textwrangler\
		pack-usr-local-bin-edit\
		pack-usr-local-bin-twdiff\
		pack-usr-local-bin-twfind\
		unbz2-local_man1-man1.tar.bz2


l_Library_PrivHTools: l_Library
	@sudo mkdir -p ${WORK_D}/Library/PrivilegedHelperTools
	@sudo chown root:wheel ${WORK_D}/Library/PrivilegedHelperTools
	@sudo chmod 1755 ${WORK_D}/Library/PrivilegedHelperTools

l_usr_local_man1: l_usr_local_share
	@sudo mkdir -p ${WORK_D}/usr/local/share/man/man1
	@sudo chown -R root:wheel ${WORK_D}/usr/local/share/man/man1
	@sudo chmod -R 0755 ${WORK_D}/usr/local/share/man/man1

pack-Library-PrivHTools-%: % l_Library_PrivHTools
	@sudo ${INSTALL} -m 755 -g wheel -o root $< ${WORK_D}/Library/PrivilegedHelperTools

unbz2-local_man1-%: % l_usr_local_man1
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/usr/local/share/man/man1

modify_packageroot:
	@sudo chown root:wheel ${WORK_D}/usr/local/share/man/man1/edit.1
	@sudo chown root:wheel ${WORK_D}/usr/local/share/man/man1/twdiff.1
	@sudo chown root:wheel ${WORK_D}/usr/local/share/man/man1/twfind.1
