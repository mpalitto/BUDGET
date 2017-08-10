FROM node
RUN npm install -g cordova@7.0.0 ionic@3.5.0
#RUN /bin/bash -c "cd /root/BUDGET; yes n | cordova plugin add cordova-sqlite-storage --save"
#RUN npm install --save @ionic/storage
