#!/usr/bin/env bash

echo "test"
mysql --defaults-extra-file=mysqlParameters myapp_test -e "$(cat mysqlScript)"
