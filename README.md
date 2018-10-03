# watch_mac
Script to generate list of present mac addresses for https://github.com/Zwater/zackwatch-public

Relies on perl nmap parser

https://nmapparser.wordpress.com/

get_mac_date.py requires pandas

Run updateppl.sh , it dumps the output of an nmap /24 scan into mysql, then logs when new macs are seen.

Add entries to the table 'blacklist' to prevent them showing in the string.txt

Add entries to the monitor_list to have them show in the string.json
