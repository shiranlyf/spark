# SQL Manager 2007 for MySQL 4.5.0.7
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : purchasingflow


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE IF EXISTS `purchasingflow`;

CREATE DATABASE `purchasingflow`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `purchasingflow`;

#
# Structure for the `pur_bus_order` table : 
#

DROP TABLE IF EXISTS `pur_bus_order`;

CREATE TABLE `pur_bus_order` (
  `id` VARCHAR(200) COLLATE utf8_general_ci DEFAULT NULL,
  `name` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `price` FLOAT(9,3) DEFAULT NULL,
  `createtime` DATETIME DEFAULT NULL,
  `status` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `processInstance_id` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `endtime` DATETIME DEFAULT NULL,
  `content` TEXT COLLATE utf8_general_ci

)ENGINE=InnoDB COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0 PACK_KEYS=0 MIN_ROWS=0 MAX_ROWS=0 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

#
# Structure for the `pur_bus_order_audit` table : 
#

DROP TABLE IF EXISTS `pur_bus_order_audit`;

CREATE TABLE `pur_bus_order_audit` (
  `id` VARCHAR(100) COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `order_id` VARCHAR(100) COLLATE utf8_general_ci DEFAULT NULL,
  `audit_info` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `audit_type` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `status` CHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` DATETIME DEFAULT NULL

)ENGINE=InnoDB COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0 PACK_KEYS=0 MIN_ROWS=0 MAX_ROWS=0 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

#
# Structure for the `pur_sys_role` table : 
#

DROP TABLE IF EXISTS `pur_sys_role`;

CREATE TABLE `pur_sys_role` (
  `id` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `name` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `detail` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL

)ENGINE=InnoDB COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0 PACK_KEYS=0 MIN_ROWS=0 MAX_ROWS=0 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

#
# Structure for the `pur_sys_user` table : 
#

DROP TABLE IF EXISTS `pur_sys_user`;

CREATE TABLE `pur_sys_user` (
  `id` VARCHAR(20) COLLATE utf8_general_ci NOT NULL,
  `userid` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `username` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `pwd` VARCHAR(100) COLLATE utf8_general_ci DEFAULT NULL

)ENGINE=InnoDB COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0 PACK_KEYS=0 MIN_ROWS=0 MAX_ROWS=0 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

#
# Structure for the `pur_sys_user_role` table : 
#

DROP TABLE IF EXISTS `pur_sys_user_role`;

CREATE TABLE `pur_sys_user_role` (
  `id` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  `role_id` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL

)ENGINE=InnoDB COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0 PACK_KEYS=0 MIN_ROWS=0 MAX_ROWS=0 ROW_FORMAT=DYNAMIC CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

#
# Data for the `pur_bus_order` table  (LIMIT 0,500)
#

INSERT INTO `pur_bus_order` (`id`, `name`, `price`, `createtime`, `status`, `user_id`, `processInstance_id`, `endtime`, `content`) VALUES 
  ('1ae082ce49c04835bae91e5b7f1f1ce2','第一次采购',1112.000,'2018-05-07 16:23:50',NULL,'lisi','305',NULL,'电脑'),
  ('e3da31431a2a48359cf40f12fc588478','最新1',222.000,'2018-05-08 10:06:22',NULL,'zhangsan','401',NULL,'最新1'),
  ('ce3ba44e92f74385b1d3a989f8452666','第三次采购',111111.000,'2018-05-08 13:51:11',NULL,'zhangsan','612',NULL,'内容'),
  ('865f6cc3941d4595a39f628fc9c7ef10','第四次采购',11111.000,'2018-05-08 14:36:48',NULL,'lisi','705',NULL,'内容'),
  ('8cd76343427441c89ed854a5d9bda2b8','aaaa',111.000,'2018-05-08 14:44:53',NULL,'wangwu','710',NULL,'aaa'),
  ('5de05b8d4aa146f3b32b113d4e723c56','0001',111.000,'2018-05-08 17:01:09',NULL,'lisi','805',NULL,'aa'),
  ('a6daa80168c1446da35070e486cd95fd','0002',111.000,'2018-05-08 17:01:39',NULL,'lisi','810',NULL,'aaa'),
  ('ee2ac35568074b648a0d638ec3b64631','5月9号采购',11111.000,'2018-05-09 10:15:22',NULL,'lisi','901',NULL,'办公用品'),
  ('32708a0d10d44dd2b270712810fa5e81','a',1.000,'2018-05-09 14:35:52','complete','zhangsan','1206',NULL,'a'),
  ('ee24e1f5bea74ee4826220b682515d7c','a',1.000,'2018-05-09 14:35:53','complete','zhangsan','1211',NULL,'a'),
  ('5684b828e49f49d794b96ceccb47f535','111',11.000,'2018-05-09 16:09:39',NULL,'zhaoliu','1301',NULL,'111'),
  ('d0c3ed05d0694399b617bde22c9f54a4','分支订单',11111.000,'2018-05-11 09:58:40',NULL,'lisi','1405',NULL,'分支订单'),
  ('917234c410db4898bf50a8780a63420b','55',213.000,'2018-05-11 10:05:35',NULL,'zhaoliu','1429',NULL,'55'),
  ('65221fe64c634b179ac6ae432a58288b','222',111111.000,'2018-05-11 10:07:45',NULL,'zhaoliu','1444',NULL,'2222'),
  ('d12bc6aac96c4cba86ffb80f1043ba5c','ddddd',111.000,'2018-05-11 10:09:53',NULL,'zhaoliu','1462',NULL,'dddd'),
  ('5b132d00c7944f6882b16cfea7654637','最后的的',2323.000,'2018-05-11 14:57:44',NULL,'zhangsan','1505',NULL,'啊啊'),
  ('586c5c22f260407e8822bb44e6f6bd82','wwww',11111.000,'2018-05-11 15:01:00',NULL,'zhangsan','1516',NULL,'wwww'),
  ('e52e7e4d30e642ad87de82df822a7875','adfafdadf',12121.000,'2018-05-11 15:02:19',NULL,'zhangsan','1526',NULL,'adafda'),
  ('10e13a3618c64fa2ae8f8646785fd9d8','adaf',222.000,'2018-05-11 15:09:45',NULL,'zhangsan','1535',NULL,'adfaf'),
  ('e80ab54c610148dfbb04304546fe0261','fada',22.000,'2018-05-11 15:12:16',NULL,'zhangsan','1544',NULL,'adfaf'),
  ('56fc880c2cdf47bdb7623feaf9ea0844','aaaa',2222.000,'2018-05-11 15:20:24',NULL,'zhangsan','1605',NULL,'aaa'),
  ('8df069b9aa5141788fd6f912ac55a1f5','ddd',32121.000,'2018-05-11 15:32:33',NULL,'zhaoliu','1627',NULL,'ddd'),
  ('5497c60c58314ae38d98ca87e9a3e3fe','sss',111111.000,'2018-05-11 15:38:34',NULL,'zhaoliu','1659',NULL,'ssss'),
  ('9775c240b92947748878580787135405','aaa',1111.000,'2018-05-11 15:48:51',NULL,'zhaoliu','1665',NULL,'aaa'),
  ('efd9664c5706496cb7d469b954eb61b7','aaa',10000.000,'2018-05-21 17:01:41',NULL,'lisi','1705',NULL,'aaa'),
  ('3a4190b289704e29accfc9c6d7fd115a','fsfsfsdfs',10000.000,'2018-05-21 17:07:18',NULL,'lisi','1717',NULL,'sfsdfsdf'),
  ('0f98c93213524df793a19438e0054d1f','111',10000.000,'2018-05-21 17:09:45',NULL,'lisi','1905',NULL,'111'),
  ('664239a7a8674a61a38c47505d539eb3','1111',1111.000,'2018-05-21 17:39:50',NULL,'lisi','1921',NULL,'1111'),
  ('243f8e26fa2a48a5a4450fc20b1798b7','qqqq',10000.000,'2018-05-21 20:30:16',NULL,'lisi','2005',NULL,'qqq');
COMMIT;

#
# Data for the `pur_bus_order_audit` table  (LIMIT 0,500)
#

INSERT INTO `pur_bus_order_audit` (`id`, `user_id`, `order_id`, `audit_info`, `audit_type`, `status`, `createtime`) VALUES 
  ('d90eb16815674162bce6e242643520b9',NULL,'e3da31431a2a48359cf40f12fc588478','通过！','firstAudit','1','2018-05-08 13:35:37'),
  ('3724b9ed6c354948bd287a7c38570c79','wangwu','e3da31431a2a48359cf40f12fc588478','通过了','secondAudit','1','2018-05-08 13:39:50'),
  ('da61bc40ff3d4983b604b6c5b2ee9fd9','zhaoliu','e3da31431a2a48359cf40f12fc588478','通过了','thirdAudit','1','2018-05-08 13:42:19'),
  ('090a624532884608ad29b0990334368e','wangwu','ce3ba44e92f74385b1d3a989f8452666','','secondAudit','1','2018-05-08 13:52:28'),
  ('ae18eeca034d46c9a0c5690b8b8ac3e8','zhaoliu','ce3ba44e92f74385b1d3a989f8452666','','thirdAudit','1','2018-05-08 13:53:06'),
  ('10fa7623e86f4c71bb62601be634da3a','wangwu','5de05b8d4aa146f3b32b113d4e723c56','','secondAudit','1','2018-05-08 17:08:49'),
  ('8e4a8ebd1dc94419abbfa095c9209d8c','zhaoliu','5de05b8d4aa146f3b32b113d4e723c56','','thirdAudit','1','2018-05-08 17:09:24'),
  ('b2670a06d96e494d8b12cc1cb2fae813','wangwu','a6daa80168c1446da35070e486cd95fd','','secondAudit','1','2018-05-09 13:25:59'),
  ('01bb43072a034ab2bb66d6e6fa892398','zhaoliu','a6daa80168c1446da35070e486cd95fd','','thirdAudit','1','2018-05-09 13:27:21'),
  ('5d95a8725aeb43ebaae5a8fd546c77ca','wangwu','ee2ac35568074b648a0d638ec3b64631','','secondAudit','1','2018-05-09 14:37:56'),
  ('28d8d50c50db43a599aa84277b894a1e','wangwu','32708a0d10d44dd2b270712810fa5e81','','secondAudit','1','2018-05-09 14:38:00'),
  ('dbf8c8b8429045e6838e1c069df96043','wangwu','ee24e1f5bea74ee4826220b682515d7c','','secondAudit','1','2018-05-09 14:38:03'),
  ('5e96401f294d4cd9a4b8255f2bf3c31f','zhaoliu','ee24e1f5bea74ee4826220b682515d7c','','thirdAudit','1','2018-05-09 14:39:03'),
  ('aad71ffeada741bf9f1c8b5321fa9ee2','zhaoliu','32708a0d10d44dd2b270712810fa5e81','','thirdAudit',NULL,'2018-05-09 14:39:05'),
  ('8660abbc3be54d95b49ab25a84abfef5','zhaoliu','ee2ac35568074b648a0d638ec3b64631','','thirdAudit','1','2018-05-09 14:39:11'),
  ('c23591339b4841069c0f24784d29b17e','lisi','d0c3ed05d0694399b617bde22c9f54a4','','firstAudit','1','2018-05-11 10:03:28'),
  ('9b951e47ddc74775be1b55adcc4265d5','wangwu','d0c3ed05d0694399b617bde22c9f54a4','','secondAudit','1','2018-05-11 10:04:33'),
  ('2a54b07b33814dbcb6a171d9c67c110b','zhaoliu','d0c3ed05d0694399b617bde22c9f54a4','','thirdAudit','1','2018-05-11 10:05:05'),
  ('1cba4c5d75fa44298eedbf0e403ca174','lisi','917234c410db4898bf50a8780a63420b','','firstAudit','1','2018-05-11 10:06:10'),
  ('986b545fc0794cdda8cb7db8a350a8ec','zhaoliu','917234c410db4898bf50a8780a63420b','','thirdAudit','1','2018-05-11 10:06:44'),
  ('b73d372e1db44a01bdc1f0280c332356','lisi','65221fe64c634b179ac6ae432a58288b','','firstAudit','1','2018-05-11 10:08:26'),
  ('d430af13bd754ef9b61db5177e4f2992','wangwu','65221fe64c634b179ac6ae432a58288b','','secondAudit','1','2018-05-11 10:09:08'),
  ('c3e5d615a4ba4537b4999ee4dfacab0c','zhaoliu','65221fe64c634b179ac6ae432a58288b','','thirdAudit','1','2018-05-11 10:09:34'),
  ('b1be51f75b9d42c89f616d40d2e99536','lisi','56fc880c2cdf47bdb7623feaf9ea0844','','firstAudit','1','2018-05-11 15:20:49'),
  ('d647600fc92d4de1bfda0473de74603a','zhaoliu','56fc880c2cdf47bdb7623feaf9ea0844','','thirdAudit','1','2018-05-11 15:21:15'),
  ('c0c87b4dc9f44e3ab30e7893b82eef4b','lisi','8df069b9aa5141788fd6f912ac55a1f5','','firstAudit','0','2018-05-11 15:33:17'),
  ('954e4a4257a3465a94f5ecde7a84720b','lisi','8df069b9aa5141788fd6f912ac55a1f5','','firstAudit','1','2018-05-11 15:34:33'),
  ('56c3ed26506e4db58e37876625de2ec6','wangwu','8df069b9aa5141788fd6f912ac55a1f5','','secondAudit','1','2018-05-11 15:35:20'),
  ('d78fbdce9a5743df98006b8256cb6af4','zhaoliu','8df069b9aa5141788fd6f912ac55a1f5','','thirdAudit','1','2018-05-11 15:36:10');
COMMIT;

#
# Data for the `pur_sys_user` table  (LIMIT 0,500)
#

INSERT INTO `pur_sys_user` (`id`, `userid`, `username`, `pwd`) VALUES 
  ('lisi','lisi','李四','96e79218965eb72c92a549dd5a330112'),
  ('zhangsan','zhangsan','张三','96e79218965eb72c92a549dd5a330112'),
  ('wangwu','wangwu','王五','96e79218965eb72c92a549dd5a330112'),
  ('zhaoliu','zhaoliu','赵六','96e79218965eb72c92a549dd5a330112');
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;