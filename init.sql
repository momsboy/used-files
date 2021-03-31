
-- CREATION DE L'UTILISATEUR moms 

CREATE USER 'moms'@'localhost' IDENTIFIED BY 'momar';

CREATE USER 'moms'@'%' IDENTIFIED BY 'momar';

GRANT ALL ON *.* TO 'moms'@'localhost';

GRANT ALL ON *.* TO 'moms'@'%';

flush privileges;

-- INITIALISATION DU db_test

CREATE DATABASE IF NOT EXISTS db_test;

USE db_test;

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


INSERT INTO person VALUES (1,"Moms","DIOUF");
INSERT INTO person VALUES (2,"Momar","DIOUF");
INSERT INTO person VALUES (3,"The Mamba ","Coder");













