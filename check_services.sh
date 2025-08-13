#!/bin/bash

services=("ssh" "cron" "nginx" "mysql")

for service in "${$services[@]}"; do 

echo "checking $service..."
systemctl is -active --quiet $service && echo "$service is running" || echo "$service is not running"

done

