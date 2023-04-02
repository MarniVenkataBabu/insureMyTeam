/*
SQLyog - Free MySQL GUI v5.02
Host - 5.5.27 : Database - insurance_management_system
*********************************************************************
Server version : 5.5.27
*/


create database if not exists `insurance_management_system`;

USE `insurance_management_system`;

SET FOREIGN_KEY_CHECKS=0;

/*Table structure for table `claim` */

DROP TABLE IF EXISTS `claim`;

CREATE TABLE `claim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `claim_number` varchar(25) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `claim_date` date DEFAULT NULL,
  `claim_status` varchar(225) DEFAULT NULL,
  `policy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_COURSE_ID_idx` (`policy_id`),
  CONSTRAINT `FK_COURSE` FOREIGN KEY (`policy_id`) REFERENCES `policy` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `claim` */

insert into `claim` values (1,'CLM001','Car accident on Main st','2023-01-15','Pending',1);
insert into `claim` values (2,'CLM002','Water damage to home from burst pipe','2023-02-05','Approved',2);
insert into `claim` values (3,'CLM003','Stolen jewelry from hotel room','2023-03-10','Denied',3);
insert into `claim` values (4,'CLM004','Fire in Kitchen destroys cabinets','2023-04-20','Pending',4);
insert into `claim` values (5,'CLM005','Tree falls on car in driveway','2022-05-15','Approved',5);

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT 'null',
  `dob` date DEFAULT NULL,
  `address` varchar(1000) DEFAULT 'null',
  `contact` bigint(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `client` */

insert into `client` values (1,'John Doe','1990-01-01','123 Main St Anytown USA',555);
insert into `client` values (2,'Jane Smith','1985-03-15','456 Elm St Anytown USA',555);
insert into `client` values (3,'Bob JohnSOn','1978-09-22','789 Oak St  Anytown USA',555);
insert into `client` values (4,'Mary Jones','1995-07-04','321 Maple St Anytown USA',555);
insert into `client` values (5,'Tom Wilson','1980-12-31','654 Pine St  Anytown USA',555);

/*Table structure for table `policy` */

DROP TABLE IF EXISTS `policy`;

CREATE TABLE `policy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policy_number` varchar(20) DEFAULT 'null',
  `type` varchar(128) DEFAULT 'null',
  `coverage_amount` double(9,2) DEFAULT '0.00',
  `premium` double(9,2) DEFAULT '0.00',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `client_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_INSTRUCTOR_idx` (`client_id`),
  CONSTRAINT `FK_INSTRUCTOR` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `policy` */

insert into `policy` values (1,'POL001','Life Insurance',100000.45,1500.00,'2023-04-01','2024-01-01',1);
insert into `policy` values (2,'POL002','Home Insurance',25000.56,1200.00,'2023-04-02','2025-05-05',2);
insert into `policy` values (3,'POL003','Travel Insurance',34567.89,1200.00,'2023-04-03','2028-03-01',3);
insert into `policy` values (4,'POL004','Health Insurance',67589.98,900.00,'2023-04-04','2030-03-19',4);
insert into `policy` values (5,'POL005','vehicle Insurance',123.98,800.00,'2023-05-15','2029-11-23',5);

SET FOREIGN_KEY_CHECKS=1;
