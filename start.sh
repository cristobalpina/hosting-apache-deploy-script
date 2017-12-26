#!/bin/sh

echo "start"

#Setting permissions
echo ""
echo "Setting Permissions"
echo ""
cp /home/deploy/script/apache2.conf /etc/apache2/apache2.conf


echo ""
echo "Using new Virtual Host file"
echo ""
echo "App Location: $APP_LOCATION"
echo "DIRECTORY_INDEX:" $DIRECTORY_INDEX
sh /home/deploy/script/000-default.conf.sh $APP_LOCATION > /etc/apache2/sites-available/000-default.conf

sh /home/deploy/dir.conf.sh $DIRECTORY_INDEX > /etc/apache2/mods-enabled/dir.conf

echo $(cat /etc/apache2/sites-available/000-default.conf)
echo $(cat /etc/apache2/mods-enabled/dir.conf)
