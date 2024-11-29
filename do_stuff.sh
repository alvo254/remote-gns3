#!/bin/bash

sudo apt update -y 

suod apt upgrade -y 


# https://docs.gns3.com/docs/getting-started/installation/remote-server
curl https://raw.githubusercontent.com/GNS3/gns3-server/master/scripts/remote-install.sh > gns3-remote-install.sh
bash gns3-remote-install.sh --with-openvpn --with-iou --with-i386-repository

