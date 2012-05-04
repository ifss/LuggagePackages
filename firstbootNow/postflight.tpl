#!/bin/bash

###
# First Boot script that is run as a postflight
# For immediate run, rather than on next boot
# Typically used on fresh booted image
###

# Determine the OS (to allow specific settings for 10.7, such as WiFi)

OS=`/usr/bin/sw_vers -productVersion | /usr/bin/cut -d "." -f 1,2`

# Define 'kickstart' and 'systemsetup' variables, built in OS X script that activates and sets options for ARD.
 
kickstart="/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart"
systemsetup="/usr/sbin/systemsetup"
genericppd="/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/Generic.ppd"
 
# Delete iMovie (Previous Version) Directory if it exists, because we don't need it. 
#Use when installing iLife using the original installers with InstaDMG.
#rm -R /Applications/iMovie\ \(previous\ version\).localized/

# ARD Configuration
#Enable ARD for ladmin
$kickstart -configure -allowAccessFor -specifiedUsers
$kickstart -activate -configure -access -on -users "ladmin" -privs -all -restart -agent
 
# Set time zone and time server.
$systemsetup -setusingnetworktime on
$systemsetup -settimezone Australia/Sydney -setnetworktimeserver time.asia.apple.com

#Sets computer to never sleep while plugged in to a power source
pmset -c sleep 0
#Sets display to sleep after 30 minutes while plugged in to a power source
pmset -c displaysleep 30
#Sets computer to shutdown at 9pm daily
pmset repeat shutdown MTWRFSU 21:00:00

#Turn off software update
/usr/sbin/softwareupdate --schedule off

#Sets Computer name etc based on serial number
SerNum=`ioreg -l | grep IOPlatformSerialNumber | awk '{print $4}' | cut -d \" -f 2`
NewName="IFSS-""$SerNum"
scutil --set ComputerName $NewName
scutil --set LocalHostName $NewName
scutil --set HostName $(scutil --get LocalHostName)

#Connect to standard IFSS wireless networks
/usr/sbin/networksetup -detectnewhardware

SEC="WPA2"
PWD="WIFIPASSWORDHERE"

# Workstation specific settings

WSCONFIG="SETWSCONFIGHERE"

case $WSCONFIG in
Lab_1)
# Preferred default networks for Lab 1
SSID0="IFSS Studio 1a"
SSID1="IFSS Studio 1b"
SSID2="IFSS2"
;;
*)
# Preferred default networks elsewhere
SSID0="IFSS3"
SSID1="IFSS2"
SSID2="IFSS Studio 1b"
;;
esac


# On 10.7, the Wi-Fi interface needs to be identified
# Works for 10.6 and 10.7
wifiDevice=`/usr/sbin/networksetup -listallhardwareports | egrep -A 1 "Hardware Port: (Air|Wi-)" | tail -1 | awk '{print $NF}'`

sleep 10

/usr/sbin/networksetup -addpreferredwirelessnetworkatindex $wifiDevice "$SSID1" 1 $SEC $PWD
/usr/sbin/networksetup -addpreferredwirelessnetworkatindex $wifiDevice "$SSID2" 2 $SEC $PWD

sleep 10
/usr/sbin/networksetup -addpreferredwirelessnetworkatindex $wifiDevice "$SSID0" 0 $SEC $PWD

# Since we are on a booted image, need to set the active network
sleep 10
/usr/sbin/networksetup -setairportnetwork $wifiDevice "$SSID0" $PWD


#Adds Printers
#lpadmin -p "Printer Name" -L "Printer Location" -D "Printer Description" -E -v lpd://server/printqueue -P $genericppd -o printer-is-shared=false

# Printer driver and ppd need to be installed first
# Variables. Edit these.
printername="DocuCentre-IV%203060%20%20%28b0%3A39%3Ac8%29"
location="Student Lounge"
gui_display_name="Student DocuCentre-IV 3060"
address="mdns://DocuCentre-IV%203060%20%20%28b0%3A39%3Ac8%29._printer._tcp.local."
driver_ppd="/Library/Printers/PPDs/Contents/Resources/FX Print Driver for Mac OS X.gz"

### Printer Install ###
# Install the printer.
/usr/sbin/lpadmin -p "$printername" -L "$location" -D "$gui_display_name" -v "$address" -P "$driver_ppd" -E -o printer-is-shared=false

# Enable and start the printers on the system (after adding the printer initially it is paused).
/usr/sbin/cupsenable $(lpstat -p | grep -w "printer" | awk '{print$2}')

# Set the printer as the default if we want.
/usr/bin/lpoptions -d $printername
