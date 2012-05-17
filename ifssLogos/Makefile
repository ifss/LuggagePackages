# Author: Stephen Murphy
# Created: March 2012
# Description: Install the standard/current IFSS Logos into the Stock Media folder

# Packaged separately to allow faster updating
# Deletes existing folder if present (so only current logos are used)

# Note spaces in folder name

include /usr/local/share/luggage/luggage.make

TITLE=files_IFSS_Logos
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=\
		unbz2-files-stockmedia-IFSS_Logos\
		pack-script-preflight


l_StockMedia: l_root
	@sudo mkdir -p ${WORK_D}/IFSS\ Stock\ Media
	@sudo chown root:admin ${WORK_D}/IFSS\ Stock\ Media
	@sudo chmod 775 ${WORK_D}/IFSS\ Stock\ Media

l_StockMedia_Video: l_StockMedia
	@sudo mkdir -p ${WORK_D}/IFSS\ Stock\ Media/Video
	@sudo chown ladmin:admin ${WORK_D}/IFSS\ Stock\ Media/Video
	@sudo chmod 775 ${WORK_D}/IFSS\ Stock\ Media/Video


unbz2-files-stockmedia-IFSS_Logos: IFSS_Logos.tar.bz2 l_StockMedia_Video
	@SUDO ${TAR} xjf IFSS_Logos.tar.bz2 -C ${WORK_D}/IFSS\ Stock\ Media/Video
	@SUDO chown -R ladmin:admin "${WORK_D}/IFSS Stock Media/Video/IFSS Logos"
