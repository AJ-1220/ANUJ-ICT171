#!/bin/bash
# server.sh - Automated Server Setup Script for ICT171 Assignment 2
# Created by Anuj Mahato

echo "=== Starting automated server setup ==="

# Step 1: Update system package list
echo "Updating package list..."
apt update

# Step 2: Upgrade installed packages
echo "Upgrading packages..."
apt upgrade -y

# Step 3: Install Nginx web server
echo "Installing Nginx..."
apt install nginx -y
systemctl enable nginx
systemctl start nginx

# Step 4: (Optional) Install Certbot for SSL/TLS
echo "Installing Certbot and preparing for SSL/TLS..."
apt install software-properties-common -y
add-apt-repository universe -y
apt update
apt install certbot python3-certbot-nginx -y

# Step 5: Display disk usage
echo "Disk Usage:"
df -h

# Step 6: Display memory usage
echo "Memory Usage:"
free -h

echo "=== Server setup script complete ==="
