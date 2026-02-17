
#install nginx if not already installed 
sudo apt update && sudo apt install -y nginx && sudo systemctl start nginx && sudo systemctl enable nginx

#set jenkins user as sudo
jenkins ALL=(ALL) NOPASSWD: ALL



#!/bin/bash

echo "===== Starting Deployment ====="

# Go to workspace
cd $WORKSPACE

# Pull latest code
git pull origin main

# Remove old files
rm -rf /var/www/html/*

# Copy new files to nginx
cp -r * /var/www/html/

# Restart nginx
sudo systemctl reload nginx

echo "===== Deployment Complete ====="
