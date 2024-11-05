/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dogshouronglingyang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dogshouronglingyang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dogshouronglingyang`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/dogshouronglingyang/upload/1618211617535.jpg'),(2,'picture2','http://localhost:8080/dogshouronglingyang/upload/1618211631398.jpg'),(3,'picture3','http://localhost:8080/dogshouronglingyang/upload/1618211652949.jpg'),(6,'homepage','http://localhost:8080/dogshouronglingyang/upload/1618211642243.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-12 14:09:01'),(2,'sex_types','性别',2,'女',NULL,'2021-04-12 14:09:01'),(3,'sexdog_types','狗性别',1,'公',NULL,'2021-04-12 14:09:01'),(4,'sexdog_types','狗性别',2,'母',NULL,'2021-04-12 14:09:01'),(5,'sfyimiao_types','是否打过疫苗',1,'是',NULL,'2021-04-12 14:09:01'),(6,'sfyimiao_types','是否打过疫苗',2,'否',NULL,'2021-04-12 14:09:01'),(7,'sfjueyu_types','是否绝育',1,'是',NULL,'2021-04-12 14:09:01'),(8,'sfjueyu_types','是否绝育',2,'否',NULL,'2021-04-12 14:09:01'),(9,'tongyi_types','是否同意',1,'已同意',NULL,'2021-04-12 14:09:01'),(10,'tongyi_types','是否同意',2,'未同意',NULL,'2021-04-12 14:09:01'),(11,'zaikuquan_types','犬类型',1,'一般犬',NULL,'2021-04-12 14:09:01'),(12,'zaikuquan_types','犬类型',2,'精选犬',NULL,'2021-04-12 14:09:01');

/*Table structure for table `lingyanghuifang` */

DROP TABLE IF EXISTS `lingyanghuifang`;

CREATE TABLE `lingyanghuifang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lingyanghuifang_name` varchar(200) DEFAULT NULL COMMENT '领养人 Search111 ',
  `lingyanghuifang_dog_bianhao` varchar(200) DEFAULT NULL COMMENT '领养狗编号',
  `lingyanghuifang_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `lingyanghuifang_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='领养回访';

/*Data for the table `lingyanghuifang` */

insert  into `lingyanghuifang`(`id`,`lingyanghuifang_name`,`lingyanghuifang_dog_bianhao`,`lingyanghuifang_photo`,`lingyanghuifang_content`,`create_time`) values (1,'领养人1','111','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618211559855.jpg','详情信息\r\n','2021-04-12 15:12:43'),(2,'领养人2','222','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618211581478.jpg','详情信息详情信息\r\n','2021-04-12 15:13:05'),(3,'领养人3','333','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618211595685.jpg','详情信息详情信息详情信息\r\n','2021-04-12 15:13:17');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '名称  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `news_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='养狗咨询';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'名称3','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618211529304.jpg','2021-04-12 15:10:55','详情详情详情详情\r\n','2021-04-12 15:10:55'),(2,'名称2','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618211521309.jpg','2021-04-12 15:11:07','详情详情详情详情详情详情\r\n','2021-04-12 15:11:07'),(3,'名称1','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618211506965.jpg','2021-04-12 15:11:20','详情详情详情详情详情详情详情\r\n','2021-04-12 15:11:20');

/*Table structure for table `shourong` */

DROP TABLE IF EXISTS `shourong`;

CREATE TABLE `shourong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jieshou_number` int(11) DEFAULT NULL COMMENT '接收犬只',
  `zaiku_number` int(11) DEFAULT NULL COMMENT '在库犬只',
  `yilingyang_number` int(11) DEFAULT NULL COMMENT '已领养犬只',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='收容管理';

/*Data for the table `shourong` */

insert  into `shourong`(`id`,`jieshou_number`,`zaiku_number`,`yilingyang_number`,`create_time`) values (1,5,3,2,'2021-04-12 14:13:12');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','zf41qs93pjhc8zqosxl980qorr80eoe2','2021-04-12 13:36:30','2021-04-12 19:58:26'),(2,2,'111','yonghu','用户','oc2col1pxaokwi9m5frk6ip4oei0w0lu','2021-04-12 14:57:07','2021-04-12 19:57:04'),(3,3,'222','yonghu','用户','69hmv16v7qnz2a1cpd96jztz8e7nfm25','2021-04-12 17:54:14','2021-04-12 18:54:14');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (2,'111','123456','张婉',2,'123123123123321123','12312321312','http://localhost:8080/dogshouronglingyang/upload/1618210655708.jpg',NULL),(3,'222','123456','沃夫',2,'410882200011264577','17796688971','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618211383019.jpg','2021-04-12 15:09:43');

/*Table structure for table `zaikuquan` */

DROP TABLE IF EXISTS `zaikuquan`;

CREATE TABLE `zaikuquan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zaikuquan_name` varchar(200) DEFAULT NULL COMMENT '狗编号 Search111',
  `sexdog_types` int(200) DEFAULT NULL COMMENT '狗性别 Search111',
  `zaikuquan_pinzhong` varchar(200) DEFAULT NULL COMMENT '品种 Search111',
  `zaikuquan_xingge` varchar(200) DEFAULT NULL COMMENT '性格 Search111',
  `zaikuquan_photo` varchar(200) DEFAULT NULL COMMENT '生活照片',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '接收人',
  `jieshou_time` timestamp NULL DEFAULT NULL COMMENT '接收时间',
  `sfyimiao_types` int(11) DEFAULT NULL COMMENT '是否打过疫苗',
  `sfjueyu_types` int(11) DEFAULT NULL COMMENT '是否绝育',
  `zaikuquan_types` int(11) DEFAULT NULL COMMENT '犬类型',
  `zaikuquan_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='在库犬';

/*Data for the table `zaikuquan` */

insert  into `zaikuquan`(`id`,`zaikuquan_name`,`sexdog_types`,`zaikuquan_pinzhong`,`zaikuquan_xingge`,`zaikuquan_photo`,`yonghu_id`,`jieshou_time`,`sfyimiao_types`,`sfjueyu_types`,`zaikuquan_types`,`zaikuquan_content`,`create_time`) values (22,'001',2,'品种1','性格1','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618210948875.jpg',NULL,NULL,1,2,2,'详情信息详情信息详情信息详情信息\r\n','2021-04-12 16:46:48'),(25,'002',1,'品种2','性格2','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618211255178.jpg',2,'2021-04-12 17:13:02',1,1,2,'详情信息详情信息详情信息详情信息\r\n','2021-04-12 15:07:47'),(26,'003',2,'品种3','性格3','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618211283439.jpg',NULL,NULL,1,2,1,'详情信息详情信息详情信息详情信息详情信息\r\n','2021-04-12 15:08:12'),(27,'004',1,'品种4','性格4','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618211322570.jpg',3,'2021-04-12 17:55:28',2,2,2,'详情信息详情信息详情信息详情信息详情信息详情信息\r\n','2021-04-12 15:08:51'),(28,'005',1,'品种5','性格5','http://localhost:8080/dogshouronglingyang/file/download?fileName=1618221064922.jpg',NULL,NULL,1,2,2,'详情信息详情信息详情信息详情信息\r\n','2021-04-12 17:51:13');

/*Table structure for table `zaikuquan_collection` */

DROP TABLE IF EXISTS `zaikuquan_collection`;

CREATE TABLE `zaikuquan_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zaikuquan_id` int(11) DEFAULT NULL COMMENT '犬解释id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='犬收藏';

/*Data for the table `zaikuquan_collection` */

insert  into `zaikuquan_collection`(`id`,`zaikuquan_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,22,2,'2021-04-12 15:31:54','2021-04-12 15:31:54'),(3,27,3,'2021-04-12 17:54:50','2021-04-12 17:54:50');

/*Table structure for table `zaikuquan_order` */

DROP TABLE IF EXISTS `zaikuquan_order`;

CREATE TABLE `zaikuquan_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zaikuquan_id` int(11) DEFAULT NULL COMMENT '狗编号',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '收养人',
  `sfyimiao_types` int(11) DEFAULT NULL COMMENT '是否打过疫苗',
  `sfjueyu_types` int(11) DEFAULT NULL COMMENT '是否绝育',
  `tongyi_types` int(11) DEFAULT NULL COMMENT '是否同意',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收养时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='收养犬';

/*Data for the table `zaikuquan_order` */

insert  into `zaikuquan_order`(`id`,`zaikuquan_id`,`yonghu_id`,`sfyimiao_types`,`sfjueyu_types`,`tongyi_types`,`insert_time`,`create_time`) values (3,25,2,2,2,1,'2021-04-12 17:12:55','2021-04-12 17:12:55'),(4,27,3,1,1,1,'2021-04-12 17:54:46','2021-04-12 17:54:46');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
