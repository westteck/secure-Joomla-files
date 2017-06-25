#!/usr/bin/env bash
#********Set Varibles *******************************
webroot="/var/www/html"
apacheuser="www-data"
#*****************************************************

#********Check if run as root or sudo user ***********
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
#******************************************************

#******** First set all folders permissions to 755 *****
#******** Then set all file permissions to 644 *********

echo "Changing ownership to root:$apacheuser..."

find $webroot/ -type d -exec chmod 755 
find $webroot/ -type f -exec chmod 644
#********************************************************

chown root:$apacheuser -R /var/www/html #
chown $apacheuser:$apacheuser -R $webroot/images
chown $apacheuser:$apacheuser -R $webroot/administrator/cache

#******* Uncomment if using Phoca Downloads ************
# chown $apacheuser:$apacheuser -R $webroot/phocadownload




