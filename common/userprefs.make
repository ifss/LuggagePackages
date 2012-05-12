# Provide commonly used Luggage targets for standard IFSS users

l_Users_ladmin: l_Users
	@sudo mkdir -p ${WORK_D}/Users/ladmin
	@sudo chown 501:20 ${WORK_D}/Users/ladmin
	@sudo chmod 755 ${WORK_D}/Users/ladmin

l_Users_ifss: l_Users
	@sudo mkdir -p ${WORK_D}/Users/ifss
	@sudo chown 502:20 ${WORK_D}/Users/ifss
	@sudo chmod 755 ${WORK_D}/Users/ifss

l_ladmin_Library: l_Users_ladmin
	@sudo mkdir -p ${WORK_D}/Users/ladmin/Library
	@sudo chown 501:20 ${WORK_D}/Users/ladmin/Library
	@sudo chmod 700 ${WORK_D}/Users/ladmin/Library

l_ifss_Library: l_Users_ifss
	@sudo mkdir -p ${WORK_D}/Users/ifss/Library
	@sudo chown 502:20 ${WORK_D}/Users/ifss/Library
	@sudo chmod 700 ${WORK_D}/Users/ifss/Library

l_ladmin_Library_Preferences: l_ladmin_Library
	@sudo mkdir -p ${WORK_D}/Users/ladmin/Library/Preferences
	@sudo chown 501:20 ${WORK_D}/Users/ladmin/Library/Preferences
	@sudo chmod 700 ${WORK_D}/Users/ladmin/Library/Preferences

l_ifss_Library_Preferences: l_ifss_Library
	@sudo mkdir -p ${WORK_D}/Users/ifss/Library/Preferences
	@sudo chown 502:20 ${WORK_D}/Users/ifss/Library/Preferences
	@sudo chmod 700 ${WORK_D}/Users/ifss/Library/Preferences

l_ladmin_Library_AppSupport: l_ladmin_Library
	@sudo mkdir -p ${WORK_D}/Users/ladmin/Library/Application\ Support
	@sudo chown 501:20 ${WORK_D}/Users/ladmin/Library/Application\ Support
	@sudo chmod 700 ${WORK_D}/Users/ladmin/Library/Application\ Support

l_ifss_Library_AppSupport: l_ifss_Library
	@sudo mkdir -p ${WORK_D}/Users/ifss/Library/Application\ Support
	@sudo chown 502:20 ${WORK_D}/Users/ifss/Library/Application\ Support
	@sudo chmod 700 ${WORK_D}/Users/ifss/Library/Application\ Support


pack-users-ladmin-Preferences-%: % l_ladmin_Library_Preferences
	@sudo ${INSTALL} -m 600 -g 20 -o 501 $< ${WORK_D}/Users/ladmin/Library/Preferences

pack-users-ifss-Preferences-%: % l_ifss_Library_Preferences
	@sudo ${INSTALL} -m 600 -g 20 -o 502 $< ${WORK_D}/Users/ifss/Library/Preferences