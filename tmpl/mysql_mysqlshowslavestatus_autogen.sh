#!/bin/sh

unset HISTFILE

mysql -h127.0.0.1 -u{{mysql_user}} -p'{{mysql_user_pass}}' \
-e 'SHOW SLAVE STATUS\G;' 2>&1 |
grep -vi 'Warning: Using a password on the command line interface can be insecure.'
