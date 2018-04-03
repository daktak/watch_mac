select monitor_list.initial, if(hosts.status='Up','1','0') from monitor_list left join hosts ON hosts.mac = monitor_list.mac;
