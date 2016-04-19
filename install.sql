-- *** Add SQL here to be executed when container is built ***

CREATE TABLE `example_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `example_table` (`id`, `title`)
VALUES
	(1, 'Some Example Data');
