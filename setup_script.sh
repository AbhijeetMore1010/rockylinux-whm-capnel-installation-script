#!/bin/bash
# This script performs multiple tasks including updating the system, installing Perl and curl,
# installing server dependencies, stopping NetworkManager and firewalld services, disabling them,
# saving iptables rules, and downloading the latest cPanel installer.

# Update the system and install required packages
echo "Updating system and installing required packages..."
yum update -y
yum install -y perl curl

# Install server dependencies
echo "Installing server dependencies..."
# Add your dependency installation commands here
# For example:
# yum install -y httpd mysql-server php

# Stop and disable NetworkManager
echo "Stopping NetworkManager service..."
service NetworkManager stop
echo "Disabling NetworkManager service..."
chkconfig NetworkManager off

# Save iptables rules to a file
echo "Saving iptables rules..."
iptables-save > ~/firewall.rules

# Stop and disable firewalld service
echo "Stopping firewalld service..."
systemctl stop firewalld.service
echo "Disabling firewalld service..."
systemctl disable firewalld.service

# Download and run cPanel installer
echo "Downloading and running cPanel installer..."
cd /home && curl -o latest -L https://securedownloads.cpanel.net/latest && sh latest

echo "Script execution completed."
