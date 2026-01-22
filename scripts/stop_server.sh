#!/bin/bash

# Stop Apache if it is running
isExistApp="$(pgrep httpd)"
if [[ -n $isExistApp ]]; then
    sudo systemctl stop httpd.service
fi

# Stop Tomcat if it is running
isExistApp="$(pgrep tomcat)"
if [[ -n $isExistApp ]]; then
    sudo systemctl stop tomcat.service
fi

# Clean up the existing webapp directory and war to prevent conflicts
sudo rm -rf /usr/share/tomcat/webapps/nextwork-web-project
sudo rm -f /usr/share/tomcat/webapps/nextwork-web-project.war
