#!/usr/bin/env bash

echo "test"
mysql --defaults-extra-file=mysqlParameters myapp_test -e "$(cat mysqlScript)"
echo "mysql script was executed"
cat mysqlScript


sudo apt install apache2
wget localhost
