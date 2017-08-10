#! /bin/bash
git config --global user.email "mpalitto@gmail.com"
git config --global user.name "Matteo"

mv /root/BUDGET/BUDGET-init.sh /root
if [ "$(ls -A /root/BUDGET)" ]; then #if dir is NOT empty
   ionic --no-interactive lab > /root/BUDGET/ionic-builder.log
else
   ionic --no-interactive start BUDGET tabs

   cd /root/BUDGET
   yes n | cordova plugin add cordova-sqlite-storage --save
   npm install --save @ionic/storage
fi

while true; do sleep 1000; done

