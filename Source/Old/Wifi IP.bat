cd /
netsh int set interface Local disabled
netsh int set interface "Wifi" enabled
netsh int ip set address "Wifi" static 10.11.1.11 255.255.255.0 10.11.1.1 1
netsh int ip set dns "Wifi" static 10.11.1.1 primary
exit