# Author: Stephen Murphy
# Created: May 2012
# Description: Install Local MCX files

# Allows choice of version/target, with different MCX for standard user

include /usr/local/share/luggage/luggage.make

# Targets to make posttflight script etc.

.PHONY: userplist


# Set up which MCX preferences will be used for ifss user
# If VERSION is set when calling, will override 'lion'
VERSION=lion
VERPLIST=${VERSION}-ifss.plist

# Custom targets

help::
	@-echo "-----------------------------------------------"
	@-echo	
	@-echo "Install Local MCX files"
	@-echo
	@-echo "make userplist - run first to create appropriate plist for the version:"
	@-echo "               - usage: sudo make userplist VERSION=xxx"
	@-echo "               - where VERSION is lion, snowleopard, protools or red"
	@-echo
	@-echo "Once user plist is made: sudo make pkg VERSION=xxx"
	@-echo
	@-echo "ALTERNATIVELY:"
	@-echo
	@-echo "sudo make userplist VERSION=xxx pkg"
	@-echo


userplist:
	@-echo "Creating standard user plist for ${VERSION} system(s)..."
	@cp -fX ${CURDIR}/${VERPLIST} ${CURDIR}/ifss.plist
	@sudo chown 501:20 ${CURDIR}/ifss.plist
	@-echo "Now: sudo make pkg VERSION=${VERSION}"


# Luggage specific part

TITLE=prefs_LocalMCX_${VERSION}
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=\
		unbz2-hash\
		pack-users-ifss\
		pack-users-ladmin\
		pack-groups-labusers


l_private_var: l_private
	@sudo mkdir -p ${WORK_D}/private/var
	@sudo chown -R root:wheel ${WORK_D}/private/var
	@sudo chmod -R 755 ${WORK_D}/private/var

l_shadow: l_private_var
	@sudo mkdir -p ${WORK_D}/private/var/db/shadow
	@sudo chown -R root:wheel ${WORK_D}/private/var/db/shadow
	@sudo chmod -R 700 ${WORK_D}/private/var/db/shadow

l_shadow_hash: l_shadow
	@sudo mkdir -p ${WORK_D}/private/var/db/shadow/hash
	@sudo chown -R root:wheel ${WORK_D}/private/var/db/shadow/hash
	@sudo chmod -R 700 ${WORK_D}/private/var/db/shadow/hash

l_dslocal_nodes: l_private_var
	@sudo mkdir -p ${WORK_D}/private/var/db/dslocal/nodes
	@sudo chown -R root:wheel ${WORK_D}/private/var/db/dslocal/nodes
	@sudo chmod -R 755 ${WORK_D}/private/var/db/dslocal/nodes

l_dslocal_Default: l_dslocal_nodes
	@sudo mkdir -p ${WORK_D}/private/var/db/dslocal/nodes/Default
	@sudo chown -R root:wheel ${WORK_D}/private/var/db/dslocal/nodes/Default
	@sudo chmod -R 600 ${WORK_D}/private/var/db/dslocal/nodes/Default

l_dslocal_users: l_dslocal_Default
	@sudo mkdir -p ${WORK_D}/private/var/db/dslocal/nodes/Default/users
	@sudo chown -R root:wheel ${WORK_D}/private/var/db/dslocal/nodes/Default/users
	@sudo chmod -R 700 ${WORK_D}/private/var/db/dslocal/nodes/Default/users

l_dslocal_groups: l_dslocal_Default
	@sudo mkdir -p ${WORK_D}/private/var/db/dslocal/nodes/Default/groups
	@sudo chown -R root:wheel ${WORK_D}/private/var/db/dslocal/nodes/Default/groups
	@sudo chmod -R 700 ${WORK_D}/private/var/db/dslocal/nodes/Default/groups

unbz2-hash: hash.tar.bz2 l_shadow_hash
	@sudo ${TAR} xjf hash.tar.bz2 -C ${WORK_D}/private/var/db/shadow/hash/

pack-users-ifss: l_dslocal_users
	@sudo ${INSTALL} -m 600 -g wheel -o root ifss.plist ${WORK_D}/private/var/db/dslocal/nodes/Default/users

pack-users-ladmin: l_dslocal_users
	@sudo ${INSTALL} -m 600 -g wheel -o root ladmin.plist ${WORK_D}/private/var/db/dslocal/nodes/Default/users

pack-groups-labusers: l_dslocal_groups
	@sudo ${INSTALL} -m 600 -g wheel -o root labusers.plist ${WORK_D}/private/var/db/dslocal/nodes/Default/groups

modify_packageroot:
	@find ${WORK_D}/private/var/db/shadow/hash/ -maxdepth 1 -type f -exec chmod 600 {} \;
	@sudo find ${WORK_D}/private/var/db/shadow/hash/ -maxdepth 1 -type f -exec chown root:wheel {} \;
