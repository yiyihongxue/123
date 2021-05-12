/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.5.40 : Database - cms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cms`;

/*Table structure for table `administrator` */

DROP TABLE IF EXISTS `administrator`;

CREATE TABLE `administrator` (
  `AdmID` int(8) NOT NULL COMMENT '小区管理员账号',
  `AdmPassword` int(6) DEFAULT NULL COMMENT '密码',
  `Apartment` varchar(15) DEFAULT NULL COMMENT '小区',
  `Cummunity` varchar(15) DEFAULT NULL COMMENT '社区',
  PRIMARY KEY (`AdmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `administrator` */

insert  into `administrator`(`AdmID`,`AdmPassword`,`Apartment`,`Cummunity`) values 
(3,123456,'小区1号','社区1号'),
(4,123456,'小区2号','社区1号'),
(5,123456,'小区1号','社区2号'),
(6,123456,'小区2号','社区2号');

/*Table structure for table `administratorx` */

DROP TABLE IF EXISTS `administratorx`;

CREATE TABLE `administratorx` (
  `AdmXID` int(8) NOT NULL COMMENT '社区管理员账号',
  `AdmXPassword` int(6) NOT NULL COMMENT '密码',
  `Community` varchar(15) NOT NULL COMMENT '所属社区',
  PRIMARY KEY (`AdmXID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `administratorx` */

insert  into `administratorx`(`AdmXID`,`AdmXPassword`,`Community`) values 
(1,123456,'社区1号');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `EmpId` varchar(20) NOT NULL COMMENT '工作人员账号',
  `EmpName` varchar(30) NOT NULL COMMENT '姓名',
  `PhoneNumber` varchar(11) NOT NULL COMMENT '手机号',
  `Apartment` varchar(15) NOT NULL COMMENT '小区',
  `Community` varchar(15) NOT NULL COMMENT '社区',
  `WorkType` varchar(15) NOT NULL COMMENT '工作类型',
  `EmpPassword` varchar(10) NOT NULL COMMENT '密码',
  PRIMARY KEY (`EmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`EmpId`,`EmpName`,`PhoneNumber`,`Apartment`,`Community`,`WorkType`,`EmpPassword`) values 
('B0001','保安1号','11111111111','小区1号','社区1号','保安','123456'),
('B0002','保安2号','11111111112','小区2号','社区1号','保安','123456'),
('Q0001','清洁工1号','11111111113','小区1号','社区2号','清洁工','');

/*Table structure for table `resident` */

DROP TABLE IF EXISTS `resident`;

CREATE TABLE `resident` (
  `ResName` varchar(30) NOT NULL COMMENT '住户名称',
  `PhoneNumber` varchar(11) NOT NULL COMMENT '电话号码',
  `ResID` int(6) NOT NULL COMMENT '住户账号',
  `ResPassword` int(10) NOT NULL COMMENT '账号密码',
  `Apartment` varchar(15) NOT NULL COMMENT '小区',
  `Community` varchar(15) NOT NULL COMMENT '社区',
  `BuildingNum` varchar(2) DEFAULT NULL COMMENT '楼号',
  `Unit` varchar(1) DEFAULT NULL COMMENT '单元号',
  PRIMARY KEY (`ResID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resident` */

insert  into `resident`(`ResName`,`PhoneNumber`,`ResID`,`ResPassword`,`Apartment`,`Community`,`BuildingNum`,`Unit`) values 
('人造人1号','21111111111',1,123456,'小区1号','社区1号','01','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
