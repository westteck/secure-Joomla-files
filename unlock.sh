#!/usr/bin/env bash

#** Change the ownership of Joomla files and directories
#** to allow for Joomla updates upgrades and installs
#** By Eric Ragsdale
#** Contact eric@westteck.com
#** June 25 2017
#** Version 1.0
#** Place file one folder below the Joomla root folder 
#** change joompath to you working Joomla directory /var/www/html  ###

joompath = "/var/www/html"

echo "Changing ownership to www-data:www-data..."

find $joompath/ -type d -exec chmod 755
find $joompath/ -type f -exec chmod 644
chown www-data:www-data -R $joompath"

echo "Permissions have been changed, you can install now upgrades/patches.  Run lock.sh after the upgrades.";
