#!/bin/bash
cd /home/ec2-user/react-app

# Install Node.js (Amazon Linux 2 often uses Node via nvm or yum)
curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install -y nodejs

# Install dependencies and build React app
npm install
npm run build

# Install Nginx if not already present
sudo amazon-linux-extras enable nginx1
sudo yum install -y nginx
