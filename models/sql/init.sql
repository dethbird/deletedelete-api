DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `auth_token` varchar(255) NOT NULL,
  `current_document` text COMMENT 'current document for autosave ',
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_token` (`auth_token`),
  KEY `name` (`name`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `auth_token`, `current_document`, `date_added`, `date_updated`) VALUES
(1, 'System User', 'systems@deletedelete.com', '3c0c096d65f03d6d7c3438caf6d10ae1', NULL, '2015-04-04 08:18:53', '2015-04-04 08:18:53');