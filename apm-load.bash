#!/bin/bash
while read address; do sudo ip addr add "$address"/32 dev lo; done < ip_addresses.txt
while read address; do curl -k https://192.168.155.80 -u jim:jim --interface "$address"; done < ip_addresses.txt
#sleep 10
while read address; do curl -k https://192.168.155.80 -u bob:bob --interface "$address"; done < ip_addresses.txt
while read address; do curl -k https://192.168.155.80 -u greg:greg --interface "$address"; done < ip_addresses.txt
#sleep 10
while read address; do sudo ip addr delete "$address"/32 dev lo; done < ip_addresses.txt
sleep 10
