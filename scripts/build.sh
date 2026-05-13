#!/bin/bash
set -e

cd /var/www/react-app

# Install dependencies and build React app
sudo npm install --legacy-peer-deps
sudo npm run build

# Copy build output to Nginx root
sudo rm -rf /usr/share/nginx/html/*
sudo cp -r dist/* /usr/share/nginx/html/
