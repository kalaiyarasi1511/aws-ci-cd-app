#!/bin/bash
set -e  # Stop if anything fails

echo "======== AfterInstall: Starting ========"
if [ ! -d /var/www/html ]; then
    echo "Creating /var/www/html directory..."
    sudo mkdir -p /var/www/html
fi

echo "Deploying index.html"
echo "Hello from CodeDeploy" | sudo tee /var/www/html/index.html > /dev/null
echo "======== AfterInstall: Completed ========"
