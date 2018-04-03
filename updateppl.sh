#!/bin/sh
cd /usr/local/bin/
/usr/local/bin/nmap2db.pl --scan 192.168.0.0/24 --dbtype mysql --db pbnj
/usr/local/bin/sql_history.sh
/usr/local/bin/sql_get.sh  > /var/www/localhost/htdocs/string.txt
php /usr/local/bin/sql/get_ppl.php  > /var/www/localhost/htdocs/string.json
