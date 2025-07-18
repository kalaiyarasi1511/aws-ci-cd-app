#!/bin/bash
set -e  # stop on error

echo "======== BeforeInstall: Starting ========"
sudo yum update -y
sudo yum install -y httpd

echo "Starting and enabling Apache (httpd)..."
sudo systemctl start httpd
sudo systemctl enable httpd
echo "======== BeforeInstall: Completed ========"

