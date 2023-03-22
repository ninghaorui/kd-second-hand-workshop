/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.40 : Database - market_hao1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`market_hao1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `market_hao1`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `recv_name` varchar(20) DEFAULT NULL,
  `recv_province` varchar(20) DEFAULT NULL,
  `recv_city` varchar(20) DEFAULT NULL,
  `recv_area` varchar(20) DEFAULT NULL,
  `recv_district` varchar(50) DEFAULT NULL,
  `recv_addr` varchar(50) DEFAULT NULL,
  `recv_phone` varchar(11) DEFAULT NULL,
  `recv_tel` varchar(11) DEFAULT NULL,
  `recv_zip` varchar(8) DEFAULT NULL,
  `recv_tag` varchar(20) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `created_user` varchar(20) DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `modified_user` varchar(50) DEFAULT NULL,
  `modified_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `address` */

insert  into `address`(`id`,`uid`,`recv_name`,`recv_province`,`recv_city`,`recv_area`,`recv_district`,`recv_addr`,`recv_phone`,`recv_tel`,`recv_zip`,`recv_tag`,`is_default`,`created_user`,`created_time`,`modified_user`,`modified_time`) values (1,1,'西瓜','23','01','09','黑龙江省哈尔滨市松北区','黑龙江科技大学9#421','15124680346','','150022','宿舍',1,NULL,NULL,NULL,NULL),(2,3,'lr','23','01','09','黑龙江省哈尔滨市松北区','宿舍','17645653758','','150022','宿舍',1,NULL,NULL,NULL,NULL),(3,3,'西瓜','23','01','09','黑龙江省哈尔滨市松北区','学生公寓','13019711506','','','宿舍',0,NULL,NULL,NULL,NULL),(4,5,'cc','23','01','09','黑龙江省哈尔滨市松北区','11111','13453147518','13453147518','32212','家',1,NULL,NULL,NULL,NULL);

/*Table structure for table `carousel` */

DROP TABLE IF EXISTS `carousel`;

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `descript` longtext,
  `url` longtext,
  `img_url` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `carousel` */

insert  into `carousel`(`id`,`title`,`create_at`,`status`,`descript`,`url`,`img_url`) values (8,'潮流好物','2022-01-04',1,'淘宝特卖','https://click.mz.simba.taobao.com/ecpm?spm=a21bo.jianhua.201862-2.1&e=HyvuGonDu56m7JZHpWwQvxsQmLP5zomMxfNHayFhe4IKst5T6g71nwk8FTgUHoQXqt4pwf0JdmJ4pGB%2BQgK1D%2FSQu0KhsbUyUK7RDtIZydUyXElRAMLwo5FiZpwDPce955m%2BnprolwqRrHGm7PfbNEesMPZzmHGmRRZDo%2BHKR%2BJOgzuazTc%2FlA%3D%3D&u=https%3A%2F%2Fwww.tmall.com&k=185','a8073276-db40-4601-8c76-951d52b02413.jpg'),(10,'淘宝好货','2022-01-04',1,'淘宝链接','https://click.mz.simba.taobao.com/ecpm?spm=a21bo.jianhua.201862-2.1&e=qkTES6E%2FdVmm7JZHpWwQvxsQmLP5zomMCQcc1izcAnvHrBGgG84KFYapuzvDjs9%2B62Pfmy7b2qF4pGB%2BQgK1D%2FSQu0KhsbUyUK7RDtIZydUyXElRAMLwo5FiZpwDPce955m%2BnprolwqRrHGm7PfbNEesMPZzmHGmRRZDo%2BHKR%2BJOgzuazTc%2FlA%3D%3D&u=https%3A%2F%2Fwww.tmall.com&k=185','e00df324-cf66-42ab-a00b-e33d20cd154d.jpg');

/*Table structure for table `catelog` */

DROP TABLE IF EXISTS `catelog`;

CREATE TABLE `catelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `number` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '1是可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `catelog` */

insert  into `catelog`(`id`,`name`,`number`,`status`) values (6,'服饰',4,1),(7,'数码',5,1),(8,'书本',3,1),(9,'家具',5,1),(10,'体育',4,1),(11,'电脑',0,1),(12,'求购',1,1);

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `comments` */

insert  into `comments`(`id`,`user_id`,`goods_id`,`create_at`,`content`) values (1,5,24,'2022-01-07','键盘是新的吗'),(2,1,12,'2022-09-15','12345'),(3,5,24,'2023-02-11','123');

/*Table structure for table `dict_areas` */

DROP TABLE IF EXISTS `dict_areas`;

CREATE TABLE `dict_areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_code` varchar(2) NOT NULL,
  `area_code` varchar(2) NOT NULL,
  `area_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `dict_areas` */

insert  into `dict_areas`(`id`,`city_code`,`area_code`,`area_name`) values (1,'01','09','松北区'),(2,'02','10','杏花岭区');

/*Table structure for table `dict_cities` */

DROP TABLE IF EXISTS `dict_cities`;

CREATE TABLE `dict_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_code` varchar(2) NOT NULL,
  `city_code` varchar(2) NOT NULL,
  `city_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `dict_cities` */

insert  into `dict_cities`(`id`,`province_code`,`city_code`,`city_name`) values (1,'23','01','哈尔滨市'),(2,'24','02','太原市');

/*Table structure for table `dict_provinces` */

DROP TABLE IF EXISTS `dict_provinces`;

CREATE TABLE `dict_provinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_code` varchar(2) NOT NULL,
  `province_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `dict_provinces` */

insert  into `dict_provinces`(`id`,`province_code`,`province_name`) values (1,'23','黑龙江省'),(2,'24','山西省');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catelog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `real_price` double DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `polish_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `commet_num` int(11) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `qq_number` varchar(10) DEFAULT NULL,
  `wx_number` varchar(20) DEFAULT NULL,
  `good_city` varchar(20) DEFAULT NULL,
  `good_buy_method` varchar(100) DEFAULT NULL,
  `good_address` varchar(50) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `describle` longtext,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `goods` */

insert  into `goods`(`id`,`catelog_id`,`user_id`,`name`,`price`,`real_price`,`start_time`,`polish_time`,`end_time`,`commet_num`,`phone_number`,`qq_number`,`wx_number`,`good_city`,`good_buy_method`,`good_address`,`viewCount`,`describle`,`status`) values (10,8,5,'高数上',10,10,'2022-01-04','2022-04-02',NULL,0,'13453147518','646713753','13453147518h','1','1','',22,'考完试不想带回家了，九成新',1),(11,8,5,'理论力学',12,12,'2022-01-04','2022-04-02',NULL,0,'13453147518','646713753','13453147518h','1','1','',6,'考完试，不想带回家，低价售',1),(12,8,1,'中国近代史',12,12,'2022-01-04','2022-09-15',NULL,1,'15124680346','646713753','15124680346','1','1','',11,'考研复习，政治复习低价售卖。',1),(13,9,1,'折叠书桌',30,30,'2022-01-04','2022-09-15',NULL,0,'15124680346','646713753','15124680346','1','1','',2,'宿舍里的折叠书桌，考完试了，准备回家，低价出',3),(14,7,1,'Airpors',988,1200,'2022-01-04','2022-01-04',NULL,0,'15124680346','646713753','15124680346','1','1','',4,'用了两个月的耳机，八成新，打算出',3),(15,7,2,'荣誉9s',300,1600,'2022-01-04','2022-01-04',NULL,0,'17611006666','646713753','17611006666','1','1','',2,'用了三年的手机，有新手机了，这个打算卖，可以当备用机',1),(16,9,4,'电脑桌',30,50,'2022-01-04','2022-01-04',NULL,0,'15232103749','646713753','15232103749','1','1','',3,'全新的电脑桌，非常扎实',1),(17,6,4,'阿迪达斯外套',300,400,'2022-01-04','2022-01-04',NULL,0,'15232103749','15232103','15232103749','1','1','',2,'阿迪达斯正品颗粒绒外套，九成新',3),(18,6,4,'AJ4',1500,2100,'2022-01-04','2022-01-04',NULL,0,'15232103749','15232103','15232103749','1','1','',9,'40码的AJ4大巴黎，九成新，保真。',1),(19,6,3,'AJ13',2100,2300,'2022-01-04','2022-01-04',NULL,0,'13019711506','130197115','13019711506','1','1','',16,'43码的AJ13，九成新的中国红配色',1),(20,10,3,'篮球',45,99,'2022-01-04','2022-01-04',NULL,0,'13019711506','130197115','13019711506','1','1','',6,'威尔斯标准7号篮球，基本全新',1),(21,10,3,'滑板',300,400,'2022-01-04','2022-01-04',NULL,0,'13019711506','130197115','13019711506','1','1','',2,'DB的全新专业版一个，加收藏送护具',3),(22,10,3,'羽毛球拍',99,120,'2022-01-04','2022-01-04',NULL,0,'13019711506','130197115','13019711506','1','1','',4,'正品李宁标准羽毛球拍，加收藏送保护袋',3),(23,7,5,'联想显示屏',380,600,'2022-01-04','2022-01-09',NULL,0,'13453147518','646713753','646713753','1','1','',15,'联想高端显示屏，1080高清分辨率',1),(24,7,5,'牧马人键盘',40,100,'2022-01-04','2023-02-11',NULL,2,'13453147518','646713753','646713753','1','1','',11,'高级牧马人静音键盘，九成新出',1),(25,9,5,'床上桌',25,55,'2022-01-04','2022-01-07',NULL,0,'13453147518','646713753','646713753','1','1','',0,'全新的床上桌，低价转让',1),(26,7,5,'电脑屏幕',200,400,'2022-01-07','2022-01-07',NULL,0,'13453147518','646713753','646713753','1','1','',1,'电脑屏幕，九成新，火速联系',1),(27,9,5,'桌子',20,40,'2022-01-07','2022-01-07',NULL,0,'13453147518','646713753','646713753','1','1','',0,'桌子非常好，基本上九成新',1),(28,6,5,'阿迪达斯外套',200,400,'2022-01-07','2022-01-07',NULL,0,'13453147518','123456','123456','1','1','',2,'阿迪达斯正品外套，九成新',3),(29,9,5,'折叠桌',20,50,'2022-01-09','2022-01-09',NULL,0,'13453147518','646713753','646713753','1','1','',4,'全新的品牌折叠桌，想要的火速联系我',1),(30,10,5,'111',120,200,'2022-03-14','2022-03-14',NULL,0,'13453147518','','','1','3','11111111',1,'22333333333333333',1),(31,12,5,'aj4白水泥',1000,2000,'2023-02-11','2023-02-11',NULL,0,'13453147518','123','a123','1','1','',1,'预算1000左右，可以商量',1);

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `img_url` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `image` */

insert  into `image`(`id`,`goods_id`,`img_url`) values (15,10,'36ef6d19-a8db-47d7-9b81-02619b80980e.jpg'),(16,11,'6449c527-45ff-486b-9bff-00b49a40979d.jpg'),(17,12,'6a1dee75-9b53-4155-a2b6-f700dbd78aff.jpg'),(18,13,'a77d2c01-1fbd-4b2b-a9c9-fd8da797b0bb.jpg'),(19,14,'f7129939-d3f2-456f-a49c-45105628b175.jpg'),(20,15,'2c176763-9715-45d4-9fdd-e70920841e31.jpg'),(21,16,'6f22ff37-b0f7-48eb-b897-34b5a79a659c.jpg'),(22,17,'fc056b00-edae-4cdb-a787-8feee3548f93.jpg'),(23,18,'ebe99dc7-e6ee-4603-b05b-9b853f923041.jpg'),(24,19,'227173e1-4fed-47f0-ac65-7958dc79c6b4.jpg'),(25,20,'2b21afe5-f77e-47a1-8c66-28d09df744e5.jpg'),(26,21,'cd1afc96-e84c-44c4-934c-ac185a6c8eba.jpg'),(27,22,'95ab2ca4-0684-4cec-907c-d4ce2828499c.jpg'),(28,23,'971eaadd-28a9-4afb-b4f1-77efa4f17e60.jpg'),(29,23,'29c542b5-2fea-40b1-950a-b14fea6071aa.jpg'),(30,23,'862f6c96-d1dc-419d-8796-8e3c1a1b489c.jpg'),(31,24,'b268e6af-a138-43ac-b957-bf77ec199ec8.jpg'),(32,24,'3855b4b2-c561-4aff-8e82-743210e420c4.jpg'),(33,25,'ecb1b348-78c2-4c4a-af1a-80e6e467e786.jpg'),(34,25,'394b6030-34c7-482d-bb54-9f824ccdd470.jpg'),(35,25,'3d71af0a-e13b-4a08-94ba-ae18116caada.jpg'),(36,26,'736f13eb-6859-492b-a9e7-9550995b1be9.jpg'),(37,27,'e4f21208-1d4d-4e2a-861e-7ee7f3e8d791.jpg'),(38,28,'fb965232-6724-4954-b0d2-0f278c83c274.jpg'),(39,29,'e6e1f3ed-b564-4332-8d74-82df843a1851.jpg'),(40,29,'8fa32327-5501-42f4-8dc6-8de0183ddfc9.jpg'),(41,29,'703842f9-1cfa-4594-aa1c-deca5d5d56f9.jpg'),(42,30,'bf18f7fe-0972-4022-96af-13ca2865049f.jpg'),(43,31,'abbeebb2-ecb0-423e-bbf0-1dbb9bf7ed69.jpg');

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `context` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `notice` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `pay_id` varchar(100) NOT NULL,
  `create_at` longtext,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `orders` */

insert  into `orders`(`id`,`order_id`,`user_id`,`good_id`,`address_id`,`pay_id`,`create_at`,`status`) values (3,'20220104174017614',5,13,4,'20220104174009416','2022-01-04',1),(4,'20220106103348975',5,14,4,'20220106103335410','2022-01-06',1),(5,'20220107100528414',5,17,4,'20220107100521860','2022-01-07',1),(6,'20220109184733213',5,21,4,'20220109184720924','2022-01-09',1),(7,'20220306212821509',5,22,4,'20220306212814844','2022-03-06',1),(8,'20220915222115627',1,28,1,'20220915222101176','2022-09-15',1);

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `atuser_id` int(11) DEFAULT NULL,
  `commet_id` int(11) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `reply` */

/*Table structure for table `report` */

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` longtext,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `report` */

insert  into `report`(`id`,`good_id`,`user_id`,`content`,`status`) values (1,16,5,'举报1111111111111',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `QQ` varchar(10) DEFAULT NULL,
  `create_at` varchar(20) DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `power` tinyint(4) DEFAULT NULL,
  `last_login` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `img_url` longtext,
  `residence` longtext,
  `signature` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `user` */

insert  into `user`(`id`,`phone`,`username`,`password`,`QQ`,`create_at`,`goods_num`,`power`,`last_login`,`status`,`birthday`,`sex`,`img_url`,`residence`,`signature`) values (1,'15124680346','小李同学','E10ADC3949BA59ABBE56E057F20F883E',NULL,'2019-05-19',4,10,'2022-09-15',NULL,'','女','930ede04-d64c-4cd2-adbb-75b58aef7b53.jpg','',''),(2,'17611006666','管理员','47BCE5C74F589F4867DBD57E9CA9F808',NULL,'2019-05-19',1,100,'2022-03-04',NULL,'','男','4854d1de-d5f1-40f9-9cb5-10cb3ba7a425.jpeg','',''),(3,'13019711506','西瓜味的小仙女','E10ADC3949BA59ABBE56E057F20F883E',NULL,'2019-05-23',8,10,'2022-01-04',NULL,'','男','177e1f54-8aa9-4dbf-be73-26b8d9a2a846.jpg','',''),(4,'15232103749','小月月','E10ADC3949BA59ABBE56E057F20F883E',NULL,'2020-04-14',5,10,'2022-11-23',NULL,'','男','07c13a18-9fb1-44f7-ba6a-2c861526dde5.jpg','',''),(5,'13453147518','13453147518','E10ADC3949BA59ABBE56E057F20F883E',NULL,'2022-01-03',11,10,'2023-02-11',NULL,'','男','8584e2bc-a666-4ec9-8fba-629216e51073.jpg','',''),(6,'13613412345','13613412345','E10ADC3949BA59ABBE56E057F20F883E',NULL,'2022-01-03',0,10,'2022-01-03',NULL,'2022-01-03','男','b78c6caa-0175-4610-a591-c6aa2917c3aa.png',NULL,NULL);

/*Table structure for table `wanted` */

DROP TABLE IF EXISTS `wanted`;

CREATE TABLE `wanted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `good_id` int(11) DEFAULT NULL,
  `create_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `wanted` */

insert  into `wanted`(`id`,`user_id`,`good_id`,`create_at`) values (9,3,18,'2022-01-04'),(18,5,28,'2022-01-09'),(19,5,19,'2022-03-05'),(20,5,22,'2022-03-06'),(21,5,20,'2022-03-14'),(22,5,10,'2022-04-07'),(23,5,16,'2023-02-11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
