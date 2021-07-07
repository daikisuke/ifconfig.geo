#!/bin/bash
#Con curl buscamos mi ip publica
miip=$(curl -s https://ifconfig.me)
#Buscamos la ubicaxion de la ip
infor=`curl -s ipinfo.io/$miip`
echo -e "\a${infor}"
