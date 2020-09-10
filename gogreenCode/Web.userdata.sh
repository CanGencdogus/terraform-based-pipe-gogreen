#!/bin/bash
yum install -y mysql
yum install httpd php php-mysql -y
cd /var/www/html
wget https://wordpress.org/wordpress-5.1.1.tar.gz
tar -xzf wordpress-5.1.1.tar.gz
sudo yum install -y amazon-linux-extras lamp-mariadb10.2-php7.2 php7.2
cp -r wordpress/* /var/www/html/
rm -rf wordpress
rm -rf wordpress-5.1.1.tar.gz
chmod -R 755 wp-content
chown -R apache:apache wp-content
service httpd start
chkconfig httpd on
cd
echo "this is a text that you should see from my bucket" > rady.txt
aws s3 cp rady.txt s3://origin-s3-bucket-gogreen/rady.txt