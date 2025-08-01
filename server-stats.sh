#!/bin/bash

set -e

#total cpu usage
echo "****************"
echo "Total CPU Usage: "
top -bn1 | grep %Cpu
echo "****************"




echo "Total memory usage: "
#Total memory usage
free -h
echo "****************"

# Total disk usage
echo "Total disk usage: "
df -h
echo "****************"

# top 5 processes by cpu usage:
ps -eo pid,comm,%cpu --sort=-%cpu | head -6

# -e for all output like aux -o for custom formant pid process id comm the command name 


# top 5 processes by memory usage
ps -eo pid,comm,%mem --sort=-%mem | head -6