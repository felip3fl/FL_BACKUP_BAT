netsh int set interface Local enabled
netsh int set interface Hamachi disabled
netsh int ip set address Local static 10.11.1.12 255.255.255.0 10.11.1.1 1
netsh int ip set dns Local static 10.11.1.1 primary
exit