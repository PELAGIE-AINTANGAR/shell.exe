#!/bin/bash

date=$(date +%d-%m-%Y-"%H:%M")

cat /var/log/auth.log | grep -c "session opened" > number_connection_$date
tar -cvf ./number_connection_$date.tar ./ && mv number_connection_$date.tar Backup
rm number_connection_$date
