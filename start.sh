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
cp /home/deploy/script/000-default.conf /etc/apache2/sites-available/000-default.conf

echo "home deploy LSSSSS"
echo $(cd /home/deploy/ && ls)
echo "home deploy app lsssss"
echo $(cd /home/deploy/app && ls)
