###
# Script that is used along with a launchd item to kickstart ARD for access by ladmin user
###

# Define 'kickstart' variable, built in OS X script that activates and sets options for ARD.
 
kickstart="/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart"

# ARD Configuration
#Enable ARD for ladmin
$kickstart -configure -allowAccessFor -specifiedUsers
$kickstart -activate -configure -access -on -users ladmin -privs -all -restart -agent -menu
