#!/bin/bash
set -e

# Ensure Node.js and npm are available (Amazon Linux 2)
curl -sL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs

# Stop Nginx before replacing files
systemctl stop nginx || true
