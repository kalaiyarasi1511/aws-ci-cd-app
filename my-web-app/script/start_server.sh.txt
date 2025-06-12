#!/bin/bash

# Stop Apache (in case it's already running)
sudo systemctl stop httpd

# Copy files to Apache's public directory
sudo cp -r /home/ec2-user/my-web-app/* /var/www/html/

# Start Apache again
sudo systemctl start httpd

# Enable Apache on boot (optional)
sudo systemctl enable httpd
