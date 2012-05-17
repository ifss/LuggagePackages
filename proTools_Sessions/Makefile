# Author: Stephen Murphy
# Created: May 2012
# Description: Package Sample Pro Tools sessions for install to user Documents folder

# Preflight deletes existing versions of folders if they exist so user starts with clean sessions
# Needs to modified to include correct username

include /usr/local/share/luggage/luggage.make

# Targets to make posttflight script

.PHONY: preflight

# Need to specify a user to unpack to correct folder
# Uses ifss as default user or can be specified on command line
USER=ifss

# Custom targets

help::
	@-echo "-----------------------------------------------"
	@-echo	
	@-echo "Create a package to install Pro Tools exercises and demo session"
	@-echo
	@-echo "Note that installing will remove previous versions of these files"
	@-echo
	@-echo "Usage: sudo make pkg [USER=xxx]"
	@-echo "  (defaults to ifss user)"
	@-echo

preflight:
	@-echo "Creating preflight script for ${USER} from template..."
	@mv ${CURDIR}/preflight.tpl ${CURDIR}/preflight
	@sed -i '.tpl' 's/USERNAMEHERE/${USER}/' ${CURDIR}/preflight 
	@sudo chmod +x ${CURDIR}/preflight


# Luggage specific part

TITLE=files_Pro_Tools_Sessions_${USER}
PACKAGE_VERSION=1.0.0
REVERSE_DOMAIN=au.edu.ifss
PAYLOAD=\
		preflight\
		pack-script-preflight\
		unbz2-files-PT-Sessions


l_user_Documents: l_root
	@sudo mkdir -p ${WORK_D}/Users/${USER}/Documents
	@sudo chown ${USER}:staff ${WORK_D}/Users/${USER}/Documents
	@sudo chmod 700 ${WORK_D}/Users/${USER}/Documents

unbz2-files-PT-Sessions: Pro_Tools_Sessions.tar.bz2 l_user_Documents
	@SUDO ${TAR} xjf Pro_Tools_Sessions.tar.bz2 -C ${WORK_D}/Users/${USER}/Documents
	@SUDO chown -R ${USER}:staff "${WORK_D}/Users/${USER}/Documents/Pro Tools Sessions"
