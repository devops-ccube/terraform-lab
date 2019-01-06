#!/bin/bash
set -e

echo "------------ Install Apache --------------"
sudo apt update -y
#sudo apt install apache2 -y
sudo apt install apache2 -y

echo "  ----- start Apache -----  "
sudo systemctl start apache2
sudo systemctl enable apache2