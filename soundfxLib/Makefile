# Author: Stephen Murphy
# Created: March 2012
# Description: Install the complete Sound FX Library into the Stock Media folder

# Packaged separately in case space is an issue on some systems

# Note spaces in folder name

include /usr/local/share/luggage/luggage.make

TITLE=files_SoundLib_General_6000
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=unbz2-files-stockmedia-Sound_FX_Library



l_StockMedia: l_root
	@sudo mkdir -p ${WORK_D}/IFSS\ Stock\ Media
	@sudo chown root:admin ${WORK_D}/IFSS\ Stock\ Media
	@sudo chmod 775 ${WORK_D}/IFSS\ Stock\ Media

l_StockMedia_Audio: l_StockMedia
	@sudo mkdir -p ${WORK_D}/IFSS\ Stock\ Media/Audio
	@sudo chown ladmin:admin ${WORK_D}/IFSS\ Stock\ Media/Audio
	@sudo chmod 775 ${WORK_D}/IFSS\ Stock\ Media/Audio


unbz2-files-stockmedia-Sound_FX_Library: The_General_6000_Series.tar.bz2 l_StockMedia_Audio
	@SUDO ${TAR} xjf The_General_6000_Series.tar.bz2 -C ${WORK_D}/IFSS\ Stock\ Media/Audio
	@SUDO chown -R ladmin:admin "${WORK_D}/IFSS Stock Media/Audio/The General 6000 Series"
