# From github.com/natewalck/LuggagePackages
#
# Original published under MIT license:
#
#   Copyright (C) 2012 Liberty University
#
#   Permission is hereby granted, free of charge, to any person obtaining a copy of
#   this software and associated documentation files (the "Software"), to deal in the
#   Software without restriction, including without limitation the rights to use, copy,
#   modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
#   and to permit persons to whom the Software is furnished to do so, subject to the
#   followingconditions:
#
#   The above copyright notice and this permission notice shall be included in all
#   copies or substantial portions of the Software.
#
#   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
#   INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
#   PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
#   HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
#   CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
#   OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
# Set prefs for existing and new users to disable the iCloud popup on first login
#
# Modifications by Stephen Murphy March 2012
# Installed directly to English user template rather than Non_localized
# (saved making new rule, and all our setup is done English language)

include /usr/local/share/luggage/luggage.make

TITLE=prefs_DisableiCloudPopup
REVERSE_DOMAIN=au.edu.ifss
PACKAGE_VERSION=1.0.0
PAYLOAD=\
	pack-user-template-plist-com.apple.SetupAssistant.plist\
	pack-script-postflight
