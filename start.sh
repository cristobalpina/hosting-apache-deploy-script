#!/bin/sh

echo "start"

#Setting permissions
echo ""
echo "Setting Permissions"
echo ""
cp /home/deploy/script/apache2.conf /etc/apache2/apache2.conf


echo ""
echo "Setting VirtualHost configuration"
echo "DocumentRoot: $APP_LOCATION"
echo ""
sh /home/deploy/script/000-default.conf.sh $APP_LOCATION > /etc/apache2/sites-available/000-default.conf

echo ""
echo "Setting Root File"
echo "Root Index: $DIRECTORY_INDEX"
echo ""
sh /home/deploy/dir.conf.sh $DIRECTORY_INDEX > /etc/apache2/mods-enabled/dir.conf
