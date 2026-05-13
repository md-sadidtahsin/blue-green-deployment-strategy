#!/bin/bash
set -e

# Restart Nginx to serve new build
systemctl restart nginx
