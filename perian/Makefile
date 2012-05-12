# Author: Stephen Murphy
# Created: May 2012
# Description: Package Perian preference pane and support files for unattended install

include /usr/local/share/luggage/luggage.make
include ../common/userprefs.make

TITLE=Perian_1-2-3_Install
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PFILE1=com.apple.systempreferences.plist
PFILE2=com.cod3r.a52codec.plist
PFILE3=org.perian.Perian.plist
PAYLOAD=\
		unbz2-PreferencePane-Perian.prefPane.tar.bz2\
		unbz2-AudioComponent-A52Codec.component.tar.bz2\
		unbz2-QTComponent-AC3MovieImport.component.tar.bz2\
		unbz2-QTComponent-Perian.component.tar.bz2\
		pack-Library-Preferences-${PFILE1}\
		pack-Library-Preferences-${PFILE2}\
		pack-Library-Preferences-${PFILE3}\
		pack-script-postflight



l_Library_Audio_Components: l_Library
	@sudo mkdir -p ${WORK_D}/Library/Audio/Plug-Ins/Components
	@sudo chown root:wheel ${WORK_D}/Library/Audio/Plug-Ins/Components
	@sudo chmod 755 ${WORK_D}/Library/Audio/Plug-Ins/Components

l_Library_QuickTime: l_Library
	@sudo mkdir -p ${WORK_D}/Library/QuickTime
	@sudo chown root:wheel ${WORK_D}/Library/QuickTime
	@sudo chmod 755 ${WORK_D}/Library/QuickTime


unbz2-PreferencePane-%: % l_Library_PreferencePanes
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/Library/PreferencePanes
	@sudo chown -R root:wheel ${WORK_D}/Library/PreferencePanes/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"

unbz2-AudioComponent-%: % l_Library_Audio_Components
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/Library/Audio/Plug-Ins/Components
	@sudo chown -R root:wheel ${WORK_D}/Library/Audio/Plug-Ins/Components/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"

unbz2-QTComponent-%: % l_Library_QuickTime
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/Library/QuickTime
	@sudo chown -R root:wheel ${WORK_D}/Library/QuickTime/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"
