#!/bin/bash

# copy all files to save space
chmod +x hw_control.sh
mkdir /boot/config/plugins/PR4100_Ctrl/
cp ./hw_control.sh /boot/config/plugins/PR4100_Ctrl/

# modify go script 
echo "cp /boot/config/plugins/PR4100_Ctrl/hw_control.sh /usr/adm/scripts/hw_control-x86_64-CreLab.sh" >> /boot/config/go
echo "sh hw_control-x86_64-CreLab.sh > /usr/adm/hw_control_pr4100_log &" >> /boot/config/go
