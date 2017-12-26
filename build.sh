  #!/bin/sh

echo "Auto detected script"

#Update
apt-get -y update

#Install apache
apt-get -y install apache2

#Define servername to avoid warning msg
echo "ServerName localhost" >> /etc/apache2/apache2.conf

cp index.html /var/www/html/index.html

systemctl restart apache2
