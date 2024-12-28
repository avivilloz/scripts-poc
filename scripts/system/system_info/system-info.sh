#!/bin/bash

HEADER="${1:-System Information Report}"
DETAIL_LEVEL="${2:-basic}"

print_separator() {
    echo "----------------------------------------"
}

echo -e "\033[1;34m$HEADER\033[0m"
print_separator
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
echo "CPU: $(grep 'model name' /proc/cpuinfo | head -1 | cut -d':' -f2)"
echo "Memory: $(free -h | awk '/^Mem:/ {print $2}')"

if [ "$DETAIL_LEVEL" = "full" ]; then
    print_separator
    echo "Disk Usage:"
    df -h /
    print_separator
    echo "Top 5 CPU Processes:"
    ps aux --sort=-%cpu | head -6
fi

print_separator
