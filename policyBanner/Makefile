# Author: Stephen Murphy
# Created: March 2012
# Description: Package policy banner for login window

include /usr/local/share/luggage/luggage.make

TITLE=prefs_Policy_Banner
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=unbz2-Library-Security-PolicyBanner.rtfd.tar.bz2


l_Library_Security: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Security
	@sudo chown root:wheel ${WORK_D}/Library/Security
	@sudo chmod 755 ${WORK_D}/Library/Security


pack-Library-Security-%: % l_Library_Security
	@sudo ${INSTALL} -m 755 -g wheel -o root $< ${WORK_D}/Library/Security

unbz2-Library-Security-%: % l_Library_Security
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/Library/Security
	@sudo chown -R root:wheel ${WORK_D}/Library/Security/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"
	