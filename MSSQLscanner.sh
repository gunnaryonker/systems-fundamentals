#! /bin/bash

# Exercise 2
# This script is designed to find hosts with MicrosftMySQL
# installed with port 1433 and print out those hosts with
# the port status

nmap -sT 192.168.181.0/24 -p 1433 >/dev/null -oG MySQLscan

cat MySQLscan

