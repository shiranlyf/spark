# SQL Manager 2007 for MySQL 4.5.0.7
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : spark_project


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE IF EXISTS `spark_project`;

CREATE DATABASE `spark_project`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `spark_project`;

#
# Structure for the `ad_blacklist` table : 
#

DROP TABLE IF EXISTS `ad_blacklist`;

CREATE TABLE `ad_blacklist` (
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `ad_click_trend` table : 
#

DROP TABLE IF EXISTS `ad_click_trend`;

CREATE TABLE `ad_click_trend` (
  `date` varchar(30) DEFAULT NULL,
  `ad_id` int(11) DEFAULT NULL,
  `minute` varchar(30) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  `hour` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `ad_province_top3` table : 
#

DROP TABLE IF EXISTS `ad_province_top3`;

CREATE TABLE `ad_province_top3` (
  `date` varchar(30) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `ad_id` int(11) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `ad_stat` table : 
#

DROP TABLE IF EXISTS `ad_stat`;

CREATE TABLE `ad_stat` (
  `date` varchar(30) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `ad_id` int(11) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `ad_user_click_count` table : 
#

DROP TABLE IF EXISTS `ad_user_click_count`;

CREATE TABLE `ad_user_click_count` (
  `date` varchar(30) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ad_id` int(11) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `area_top3_product` table : 
#

DROP TABLE IF EXISTS `area_top3_product`;

CREATE TABLE `area_top3_product` (
  `task_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `area_level` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `city_infos` varchar(255) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `city_info` table : 
#

DROP TABLE IF EXISTS `city_info`;

CREATE TABLE `city_info` (
  `city_id` int(11) DEFAULT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `page_split_convert_rate` table : 
#

DROP TABLE IF EXISTS `page_split_convert_rate`;

CREATE TABLE `page_split_convert_rate` (
  `taskid` int(11) DEFAULT NULL,
  `convert_rate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `session_aggr_stat` table : 
#

DROP TABLE IF EXISTS `session_aggr_stat`;

CREATE TABLE `session_aggr_stat` (
  `task_id` int(11) DEFAULT NULL,
  `session_count` int(11) DEFAULT NULL,
  `1s_3s` double DEFAULT NULL,
  `4s_6s` double DEFAULT NULL,
  `7s_9s` double DEFAULT NULL,
  `10s_30s` double DEFAULT NULL,
  `30s_60s` double DEFAULT NULL,
  `1m_3m` double DEFAULT NULL,
  `3m_10m` double DEFAULT NULL,
  `10m_30m` double DEFAULT NULL,
  `30m` double DEFAULT NULL,
  `1_3` double DEFAULT NULL,
  `4_6` double DEFAULT NULL,
  `7_9` double DEFAULT NULL,
  `10_30` double DEFAULT NULL,
  `30_60` double DEFAULT NULL,
  `60` double DEFAULT NULL,
  KEY `idx_task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 36864 kB';

#
# Structure for the `session_detail` table : 
#

DROP TABLE IF EXISTS `session_detail`;

CREATE TABLE `session_detail` (
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `action_time` varchar(255) DEFAULT NULL,
  `search_keyword` varchar(255) DEFAULT NULL,
  `click_category_id` int(11) DEFAULT NULL,
  `click_product_id` int(11) DEFAULT NULL,
  `order_category_ids` varchar(255) DEFAULT NULL,
  `order_product_ids` varchar(255) DEFAULT NULL,
  `pay_category_ids` varchar(255) DEFAULT NULL,
  `pay_product_ids` varchar(255) DEFAULT NULL,
  KEY `idx_task_id` (`task_id`),
  KEY `idx_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 36864 kB';

#
# Structure for the `session_random_extract` table : 
#

DROP TABLE IF EXISTS `session_random_extract`;

CREATE TABLE `session_random_extract` (
  `task_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `search_keywords` varchar(255) DEFAULT NULL,
  `click_category_ids` varchar(255) DEFAULT NULL,
  KEY `idx_task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 36864 kB';

#
# Structure for the `task` table : 
#

DROP TABLE IF EXISTS `task`;

CREATE TABLE `task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `finish_time` varchar(255) DEFAULT NULL,
  `task_type` varchar(255) DEFAULT NULL,
  `task_status` varchar(255) DEFAULT NULL,
  `task_param` text,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 PACK_KEYS=0 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 36864 kB';

#
# Structure for the `test_user` table : 
#

DROP TABLE IF EXISTS `test_user`;

CREATE TABLE `test_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 PACK_KEYS=0 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 36864 kB';

#
# Structure for the `top10_category` table : 
#

DROP TABLE IF EXISTS `top10_category`;

CREATE TABLE `top10_category` (
  `task_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL,
  `order_count` int(11) DEFAULT NULL,
  `pay_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 36864 kB';

#
# Structure for the `top10_session` table : 
#

DROP TABLE IF EXISTS `top10_session`;

CREATE TABLE `top10_session` (
  `task_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `click_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 ROW_FORMAT=COMPACT COMMENT='InnoDB free: 36864 kB';

#
# Data for the `task` table  (LIMIT 0,500)
#

INSERT INTO `task` (`task_id`, `task_name`, `create_time`, `start_time`, `finish_time`, `task_type`, `task_status`, `task_param`) VALUES 
  (1,'测试任务001',NULL,NULL,NULL,NULL,NULL,'{\"startAge\":[\"0\"], \"endAge\":[50],\"startDate\":[\"2018-06-03\"],\"endDate\":[\"2018-06-03\"]}'),
  (2,'测试任务002',NULL,NULL,NULL,NULL,NULL,'{\"targetPageFlow\":[\"1,2,3,4,5,6,7,8,9\"],\"startDate\":[\"2018-06-05\"],\"endDate\":[\"2018-06-06\"]}'),
  (3,'测试任务003',NULL,NULL,NULL,NULL,NULL,'{\"startDate\":[\"2018-06-08\"],\"endDate\":[\"2018-06-08\"]}');
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;