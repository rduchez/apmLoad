#!/bin/bash
while read address; do sudo ip addr add "$address"/32 dev lo; done < ip_addresses.txt
while read address; do curl -k -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" https://192.168.155.80 -u jim:jim --interface "$address"; done < ip_addresses.txt
#sleep 10
while read address; do curl -k -H "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.52 Safari/537.36 OPR/15.0.1147.100" https://192.168.155.80 -u bob:bob --interface "$address"; done < ip_addresses.txt
while read address; do curl -H "User-Agent: Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0)" -k https://192.168.155.80 -u greg:greg --interface "$address"; done < ip_addresses.txt
#sleep 10
while read address; do sudo ip addr delete "$address"/32 dev lo; done < ip_addresses.txt
sleep 10
