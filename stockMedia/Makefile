# Author: Stephen Murphy
# Created: March 2012
# Description: Install the standard IFSS Stock Media files at root

include /usr/local/share/luggage/luggage.make

TITLE=files_Stock_Media
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=\
		unbz2-files-stockmedia-Audio\
		unbz2-files-stockmedia-Images\
		unbz2-files-stockmedia-Video


l_StockMedia: l_root
	@sudo mkdir -p ${WORK_D}/IFSS\ Stock\ Media
	@sudo chown root:admin ${WORK_D}/IFSS\ Stock\ Media
	@sudo chmod 775 ${WORK_D}/IFSS\ Stock\ Media


unbz2-files-stockmedia-%: %.tar.bz2 l_StockMedia
	@sudo ${TAR} xjf "${<}" -C ${WORK_D}/IFSS\ Stock\ Media
	@sudo chown -R ladmin:admin ${WORK_D}/IFSS\ Stock\ Media/"$(shell echo "${<}" | sed s/\.tar\.bz2//g)"
