#!/usr/bin/env bash

echo "test"
mysql --defaults-extra-file=mysqlParameters myapp_test -e "$(cat mysqlScript)"
echo "mysql script was executed"
cat mysqlScript


sudo apt install apache2 -y
sudo apt-get install php libapache2-mod-php -y
sudo apt-get install php-mysql -y
sudo service apache2 restart
sudo rm /var/www/html/index.html
sudo cp index.php /var/www/html/index.php
sudo cp Accounts.php /var/www/html/Accounts.php
sudo cp Helpers.php /var/www/html/.
sudo cp DatabaseOperations.php /var/www/html/.
sudo cp Models /var/www/html/. -r


echo "getting messagfe from server"
curl localhost
curl localhost/Accounts.php?cmd=getAccounts

echo "done getting message from server"
