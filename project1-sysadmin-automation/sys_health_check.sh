#!/bin/bash

LOG_FILE="sys_health_report.log"
DATE=$(date)

echo "============================" >> $LOG_FILE
echo "SYSTEM REPORT - $DATE" >> $LOG_FILE
echo "============================" >> $LOG_FILE

echo "" >> $LOG_FILE
echo "DISK USAGE:" >> $LOG_FILE
df -h >> $LOG_FILE

echo "" >> $LOG_FILE
echo "SYSTEM INFO:" >> $LOG_FILE
systeminfo | head -n 15 >> $LOG_FILE

echo "" >> $LOG_FILE
echo "TOP PROCESSES:" >> $LOG_FILE
tasklist | head -n 10 >> $LOG_FILE

echo "" >> $LOG_FILE
echo "NETWORK INFO:" >> $LOG_FILE
ipconfig | head -n 10 >> $LOG_FILE

echo "" >> $LOG_FILE
echo "REPORT GENERATED SUCCESSFULLY"