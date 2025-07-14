#!/bin/bash
# Sends alert if disk or memory usage exceeds threshold

THRESHOLD=80
EMAIL="your_email@example.com"

disk_usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
mem_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

if [ "$disk_usage" -gt "$THRESHOLD" ]; then
    echo "Disk usage is high: $disk_usage%" | mail -s "Disk Alert" $EMAIL
fi

if (( $(echo "$mem_usage > $THRESHOLD" | bc -l) )); then
    echo "Memory usage is high: $mem_usage%" | mail -s "Memory Alert" $EMAIL
fi
