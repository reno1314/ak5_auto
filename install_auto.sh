#!/bin/bash
wget --no-check-certificate https://raw.githubusercontent.com/reno1314/danted/master/install_R.sh -O install.sh && bash install.sh  --port=12479 --user=123 --passwd=123 && /etc/init.d/sockd start
wget --no-check-certificate https://raw.githubusercontent.com/reno1314/sk5_auto/master/sk5_auto.sh -O sk5_auto.sh && chmod +x sk5_auto.sh
echo "@reboot sleep 10 && bash /root/sk5_auto.sh" >> /var/spool/cron/azureuser

exit
