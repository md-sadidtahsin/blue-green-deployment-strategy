#!/bin/bash
# Copy React build to Nginx root
sudo rm -rf /usr/share/nginx/html/*
sudo cp -r /home/ec2-user/react-app/build/* /usr/share/nginx/html/

# Configure Nginx for React SPA
sudo tee /etc/nginx/conf.d/react-app.conf <<EOF
server {
    listen 80;
    server_name _;
    root /usr/share/nginx/html;
    index index.html;
    location / {
        try_files \$uri /index.html;
    }
}
EOF

# Restart Nginx
sudo systemctl enable nginx
sudo systemctl restart nginx
