#
#   Copyright 2009 Joe Block <jpb@ApesSeekingKnowledge.net>
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
# Example: Printer Creation Example
# Author: Gary Larizza
# Description: This package will use a preflight script to setup the actual printer
#				and then dump a pre-created .ppd file into the appropriate directory
#				to set all the printer settings.  This worked much better than lpadmin
#				commands for me (and was easier).  Note that you could also copy over
#				custom printer definition files if they aren't pre-installed with OS X.
#
# Modifications to install only the ppd (for use with InstaDMG) by Stephen Murphy April 2012

include /usr/local/share/luggage/luggage.make

TITLE=ppd_Docucentre
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=pack-docucentre-ppd
		
# The postflight script in InstaDMG firstboot sets up the printer which will use
# the .ppd file copied in the next step. First customize your printer with whatever
# settings you need.  Then copy the custom .ppd file located in /etc/cups/ppd/ 
# for deployment by this package.

pack-docucentre-ppd: l_etc_cups_ppd
	@sudo ${CP} ./DocuCentre_IV_3060___b0_39_c8_.ppd ${WORK_D}/private/etc/cups/ppd/DocuCentre_IV_3060___b0_39_c8_.ppd
	@sudo chmod 644 ${WORK_D}/private/etc/cups/ppd/DocuCentre_IV_3060___b0_39_c8_.ppd
	@sudo chown root:_lp ${WORK_D}/private/etc/cups/ppd/DocuCentre_IV_3060___b0_39_c8_.ppd

l_etc_cups_ppd: l_private_etc
	@sudo mkdir -p ${WORK_D}/private/etc/cups/ppd
	@sudo chown -R root:_lp ${WORK_D}/private/etc/cups/ppd
	@sudo chmod -R 755 ${WORK_D}/private/etc/cups/ppd
