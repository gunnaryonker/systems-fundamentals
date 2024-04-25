#! /bin/bash

# Exercise 3 - Altered version of MSSQLscanner.sh w/ filtering
# This script is designed to prompt user for IP range to scan
# and port to search for, then filter and print out only
# IP addresses with that port open

echo "Enter the Starting IP address : "
read FirstIP

echo "Enter the last octet of the last IP address : "
read LastOctetIP

echo "Enter the port number you want to scan for : "
read port

nmap -sT $FirstIP-$LastOctetIP -p $port >/dev/null -oG MySQLscan

cat MySQLscan | grep open > MySQLscan2

cat MySQLscan2
