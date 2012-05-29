#!/bin/bash
/usr/bin/pmset -c sleep 0
/usr/bin/pmset -c displaysleep 30
/usr/bin/pmset repeat shutdown MTWRFSU 21:00:00
/usr/bin/defaults delete com.apple.loginwindow LogoutHook
