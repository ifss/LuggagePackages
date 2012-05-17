# Author: Stephen Murphy
# Created: May 2012
# Description: Package Quicktime pro codecs for unattended install

# Note: One component has spaces in name, so have to use own rule (to set owner)
# See http://work.mikeboylan.com/using-the-luggage-with-apps-that-have-spaces 

include /usr/local/share/luggage/luggage.make

TITLE=prefs_Pro_Codecs_Install
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=\
		unbz2-QTComponent-AppleAVCIntraCodec.component.tar.bz2\
		unbz2-QTComponent-AppleHDVCodec.component.tar.bz2\
		unbz2-QTComponent-AppleIntermediateCodec.component.tar.bz2\
		unbz2-QTComponent-AppleMPEG2Codec.component.tar.bz2\
		unbz2-QTComponent-AppleProResCodec.component.tar.bz2\
		unbz2-QTComponent-DVCPROHDCodec.component.tar.bz2\
		unbz2-QTComponent-IMXCodec.component.tar.bz2\
		unbz2-QTComponent-FCP_Uncompressed_422.component


l_Library_QuickTime: l_Library
	@sudo mkdir -p ${WORK_D}/Library/QuickTime
	@sudo chown root:wheel ${WORK_D}/Library/QuickTime
	@sudo chmod 755 ${WORK_D}/Library/QuickTime


unbz2-QTComponent-%: % l_Library_QuickTime
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/Library/QuickTime
	@sudo chown -R root:wheel ${WORK_D}/Library/QuickTime/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"

unbz2-QTComponent-FCP_Uncompressed_422.component: FCP_Uncompressed_422.component.tar.bz2 l_Library_QuickTime
	@SUDO ${TAR} xjf FCP_Uncompressed_422.component.tar.bz2 -C ${WORK_D}/Library/QuickTime
	@SUDO chown -R root:wheel "${WORK_D}/Library/QuickTime/FCP Uncompressed 422.component"
