
insert into host_history (mac,hostname,osname,osfamily,osgen,vendor,last_scanned)
select h.mac, h.hostname, h.osname, h.osfamily, h.osgen, h.vendor, h.last_scanned from hosts h where Status = 'Up' and mac is not null and not exists (select b.mac,b.
hostname
from host_history b where b.mac = h.mac or b.hostname = h.hostname);
