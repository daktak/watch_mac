select group_concat(b.a) from (select substr(hostname,1,1) a from hosts where status = 'Up' and mac not in (select mac from blacklist)) b;
