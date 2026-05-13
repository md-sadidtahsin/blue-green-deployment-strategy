#!/bin/bash
set -e

# Clear old files
rm -rf /usr/share/nginx/html/*

# Copy new React build
cp -r /var/www/react-app/dist/* /usr/share/nginx/html/

# Optional: custom Nginx config for SPA
if [ -f /var/www/react-app/nginx.conf ]; then
    cp /var/www/react-app/nginx.conf /etc/nginx/conf.d/react-app.conf
fi
