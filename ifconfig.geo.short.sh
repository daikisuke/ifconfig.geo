#!/bin/bash
#Con curl buscamos mi ip publica
miip=$(curl -s https://ifconfig.me)
#Buscamos la ubicaxion de la ip
corto=`curl -s ipinfo.io/$miip`
resul="`echo -e "${corto}" | jq '{ip, hostname, city, region, country}'`"
echo -e "\a${resul}"
#printf "%b" ${resul} "\n\a";
