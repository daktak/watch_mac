CREATE TABLE `blacklist` (
  `mac` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB;

CREATE TABLE `host_history` (
  `mac` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` text COLLATE utf8mb4_unicode_ci,
  `osname` text COLLATE utf8mb4_unicode_ci,
  `osfamily` text COLLATE utf8mb4_unicode_ci,
  `osgen` text COLLATE utf8mb4_unicode_ci,
  `vendor` text COLLATE utf8mb4_unicode_ci,
  `mac_date` text COLLATE utf8mb4_unicode_ci,
  `mac_company` text COLLATE utf8mb4_unicode_ci,
  `last_scanned` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE `hosts` (
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mac` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT 'down',
  `hostname` text COLLATE utf8mb4_unicode_ci,
  `open_ports` text COLLATE utf8mb4_unicode_ci,
  `filtered_ports` text COLLATE utf8mb4_unicode_ci,
  `osname` text COLLATE utf8mb4_unicode_ci,
  `osfamily` text COLLATE utf8mb4_unicode_ci,
  `osgen` text COLLATE utf8mb4_unicode_ci,
  `vendor` text COLLATE utf8mb4_unicode_ci,
  `mac_date` text COLLATE utf8mb4_unicode_ci,
  `mac_company` text COLLATE utf8mb4_unicode_ci,
  `last_scanned` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ip`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB;

CREATE TABLE `monitor_list` (
  `mac` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `initial` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB;
