#!/bin/bash
sudo yum update -y
sudoyum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd