cd /
netsh int set interface Local disabled
netsh int set interface "Wifi" enabled
netsh int ip set address "Wifi" dhcp
netsh int ip set dns "Wifi" dhcp
exit