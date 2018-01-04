/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.19-log : Database - clothes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`clothes` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `clothes`;

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goodsId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `goodsName` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `goodsInfo` varchar(20) DEFAULT NULL COMMENT '商品信息',
  `goodsType` varchar(20) DEFAULT NULL COMMENT '商品类别',
  `store` bigint(20) DEFAULT NULL COMMENT '库存数',
  `price` float NOT NULL COMMENT '单价',
  `photo` varchar(100) NOT NULL COMMENT '图片',
  PRIMARY KEY (`goodsId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`goodsId`,`goodsName`,`goodsInfo`,`goodsType`,`store`,`price`,`photo`) values (1,'短袖[tonlion]','This is a beautiful ','shirt',100,100,'./images/5.png'),(2,'牛仔裤[jack&jones]','show you self-confid','jeans',20,200,'./images/6.png'),(3,'外套[viishow]','handsome','outercoat',10,450,'./images/7.png'),(4,'靴子[NO1DARA]','show you best','350',5,5.5,'./images/8.png'),(5,'短袖[tonlion]','This is a beautiful ','shirt',100,120,'./images/9.png'),(6,'牛仔裤[jack&jones]','show you self-confid','jeans',20,250,'./images/10.png'),(7,'外套[viishow]','handsome','outercoat',10,410,'./images/11.png'),(8,'靴子[NO1DARA]','show you best','5',5,185,'./images/12.png'),(13,'辣条','好吃的辣条','10',10,10,'./images/4.png');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `userPassword` varchar(20) NOT NULL,
  `power` varchar(20) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Data for the table `login` */

insert  into `login`(`userId`,`userName`,`userPassword`,`power`) values (43,'huzhongyuan','123','manager'),(44,'hejianing','123','user'),(45,'hansongliang','123','user');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
