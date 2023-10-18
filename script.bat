@echo off
echo [+] Changing DNS servers to OpenDNS Family Shield...
netsh interface ipv4 set dns "Ethernet" static 208.67.222.123 primary
netsh interface ipv4 add dns "Ethernet" 208.67.220.123 index=2
netsh interface ipv4 set dns "Ethernet 2" static 208.67.222.123 primary
netsh interface ipv4 add dns "Ethernet 2" 208.67.220.123 index=2
netsh interface ipv4 set dns "Wi-Fi" static 208.67.222.123 primary
netsh interface ipv4 add dns "Wi-Fi" 208.67.220.123 index=2
netsh interface ipv4 set dns "Local Area Connection" static 208.67.222.123 primary
netsh interface ipv4 add dns "Local Area Connection" 208.67.220.123 index=2
netsh interface ipv4 set dns "Local Area Connection 2" static 208.67.222.123 primary
netsh interface ipv4 add dns "Local Area Connection 2" 208.67.220.123 index=2
ipconfig /flushdns
echo [+] DNS servers changed to OpenDNS Family Shield.
