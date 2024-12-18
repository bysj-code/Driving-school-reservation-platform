/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiaxiaoyuyue
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiaxiaoyuyue` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiaxiaoyuyue`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'kaoshix_types','考试类型',1,'考试类型1',NULL,NULL,'2023-04-17 11:16:07'),(2,'kaoshix_types','考试类型',2,'考试类型2',NULL,NULL,'2023-04-17 11:16:07'),(3,'kaoshix_types','考试类型',3,'考试类型3',NULL,NULL,'2023-04-17 11:16:07'),(4,'kaoshix_yuyue_yesno_types','预约状态',1,'待审核',NULL,NULL,'2023-04-17 11:16:07'),(5,'kaoshix_yuyue_yesno_types','预约状态',2,'同意',NULL,NULL,'2023-04-17 11:16:07'),(6,'kaoshix_yuyue_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2023-04-17 11:16:07'),(7,'jiaoxiao_types','展示类型',1,'展示类型1',NULL,NULL,'2023-04-17 11:16:07'),(8,'jiaoxiao_types','展示类型',2,'展示类型2',NULL,NULL,'2023-04-17 11:16:07'),(9,'jiaoxiao_types','展示类型',3,'展示类型3',NULL,NULL,'2023-04-17 11:16:07'),(10,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-17 11:16:07'),(11,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-17 11:16:07'),(12,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-17 11:16:07'),(13,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-17 11:16:07'),(14,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-17 11:16:07'),(15,'jiaolian_types','教练类型',1,'教练类型1',NULL,NULL,'2023-04-17 11:16:07'),(16,'jiaolian_types','教练类型',2,'教练类型2',NULL,NULL,'2023-04-17 11:16:07'),(17,'jiaolian_types','教练类型',3,'教练类型3',NULL,NULL,'2023-04-17 11:16:07'),(18,'jiaolian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-17 11:16:07'),(19,'jiaolian_yuyue_yesno_types','预约状态',1,'待审核',NULL,NULL,'2023-04-17 11:16:07'),(20,'jiaolian_yuyue_yesno_types','预约状态',2,'同意',NULL,NULL,'2023-04-17 11:16:07'),(21,'jiaolian_yuyue_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2023-04-17 11:16:07'),(22,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-17 11:16:08'),(23,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-17 11:16:08');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `jiaolian_id` int(11) DEFAULT NULL COMMENT '教练',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学员',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`jiaolian_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,2,NULL,'发布内容1',13,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(2,'帖子标题2',NULL,2,NULL,'发布内容2',381,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(3,'帖子标题3',NULL,2,NULL,'发布内容3',425,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(4,'帖子标题4',NULL,2,NULL,'发布内容4',390,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(5,'帖子标题5',NULL,2,NULL,'发布内容5',443,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(6,'帖子标题6',NULL,2,NULL,'发布内容6',44,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(7,'帖子标题7',NULL,2,NULL,'发布内容7',250,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(8,'帖子标题8',NULL,2,NULL,'发布内容8',357,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(9,'帖子标题9',NULL,2,NULL,'发布内容9',29,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(10,'帖子标题10',NULL,3,NULL,'发布内容10',50,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(11,'帖子标题11',NULL,2,NULL,'发布内容11',6,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(12,'帖子标题12',NULL,2,NULL,'发布内容12',344,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(13,'帖子标题13',NULL,1,NULL,'发布内容13',328,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(14,'帖子标题14',NULL,1,NULL,'发布内容14',404,1,'2023-04-17 11:16:18','2023-04-17 11:16:18','2023-04-17 11:16:18'),(15,NULL,1,NULL,NULL,'11111111111111111',14,2,'2023-04-17 13:14:09',NULL,'2023-04-17 13:14:09'),(16,NULL,NULL,NULL,1,'222222222222222',14,2,'2023-04-17 13:16:19',NULL,'2023-04-17 13:16:19'),(17,NULL,NULL,1,NULL,'33333333333333333333333',14,2,'2023-04-17 13:20:04',NULL,'2023-04-17 13:20:04');

/*Table structure for table `jiaolian` */

DROP TABLE IF EXISTS `jiaolian`;

CREATE TABLE `jiaolian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaolian_name` varchar(200) DEFAULT NULL COMMENT '教练名称 Search111 ',
  `jiaolian_phone` varchar(200) DEFAULT NULL COMMENT '教练手机号',
  `jiaolian_id_number` varchar(200) DEFAULT NULL COMMENT '教练身份证号',
  `jiaolian_photo` varchar(200) DEFAULT NULL COMMENT '教练头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `jiaolian_types` int(11) DEFAULT NULL COMMENT '教练类型 Search111',
  `jiaolian_email` varchar(200) DEFAULT NULL COMMENT '教练邮箱',
  `jiaolian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教练';

/*Data for the table `jiaolian` */

insert  into `jiaolian`(`id`,`username`,`password`,`jiaolian_name`,`jiaolian_phone`,`jiaolian_id_number`,`jiaolian_photo`,`sex_types`,`jiaolian_types`,`jiaolian_email`,`jiaolian_delete`,`insert_time`,`create_time`) values (1,'a1','123456','教练名称1','17703786901','410224199010102001','upload/jiaolian1.jpg',2,1,'1@qq.com',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(2,'a2','123456','教练名称2','17703786902','410224199010102002','upload/jiaolian2.jpg',1,3,'2@qq.com',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(3,'a3','123456','教练名称3','17703786903','410224199010102003','upload/jiaolian3.jpg',1,1,'3@qq.com',1,'2023-04-17 11:16:18','2023-04-17 11:16:18');

/*Table structure for table `jiaolian_collection` */

DROP TABLE IF EXISTS `jiaolian_collection`;

CREATE TABLE `jiaolian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaolian_id` int(11) DEFAULT NULL COMMENT '教练',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学员',
  `jiaolian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='教练收藏';

/*Data for the table `jiaolian_collection` */

insert  into `jiaolian_collection`(`id`,`jiaolian_id`,`yonghu_id`,`jiaolian_collection_types`,`insert_time`,`create_time`) values (1,3,3,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(2,1,3,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(3,1,2,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(4,1,2,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(5,1,1,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(7,1,1,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(9,2,3,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(10,3,3,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(11,2,3,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(12,1,1,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(13,1,2,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(14,1,1,1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(15,3,1,1,'2023-04-17 11:46:17','2023-04-17 11:46:17');

/*Table structure for table `jiaolian_liuyan` */

DROP TABLE IF EXISTS `jiaolian_liuyan`;

CREATE TABLE `jiaolian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaolian_id` int(11) DEFAULT NULL COMMENT '教练',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学员',
  `jiaolian_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='教练留言';

/*Data for the table `jiaolian_liuyan` */

insert  into `jiaolian_liuyan`(`id`,`jiaolian_id`,`yonghu_id`,`jiaolian_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-04-17 11:16:18','回复信息1','2023-04-17 11:16:18','2023-04-17 11:16:18'),(2,2,1,'留言内容2','2023-04-17 11:16:18','回复信息2','2023-04-17 11:16:18','2023-04-17 11:16:18'),(3,3,1,'留言内容3','2023-04-17 11:16:18','回复信息3','2023-04-17 11:16:18','2023-04-17 11:16:18'),(4,2,3,'留言内容4','2023-04-17 11:16:18','回复信息4','2023-04-17 11:16:18','2023-04-17 11:16:18'),(5,3,3,'留言内容5','2023-04-17 11:16:18','回复信息5','2023-04-17 11:16:18','2023-04-17 11:16:18'),(6,2,2,'留言内容6','2023-04-17 11:16:18','回复信息6','2023-04-17 11:16:18','2023-04-17 11:16:18'),(7,3,2,'留言内容7','2023-04-17 11:16:18','回复信息7','2023-04-17 11:16:18','2023-04-17 11:16:18'),(8,3,3,'留言内容8','2023-04-17 11:16:18','回复信息8','2023-04-17 11:16:18','2023-04-17 11:16:18'),(9,1,3,'留言内容9','2023-04-17 11:16:18','回复信息9','2023-04-17 11:16:18','2023-04-17 11:16:18'),(10,1,2,'留言内容10','2023-04-17 11:16:18','回复信息10','2023-04-17 11:16:18','2023-04-17 11:16:18'),(11,2,3,'留言内容11','2023-04-17 11:16:18','回复信息11','2023-04-17 11:16:18','2023-04-17 11:16:18'),(12,3,1,'留言内容12','2023-04-17 11:16:18','回复信息12','2023-04-17 11:16:18','2023-04-17 11:16:18'),(13,1,2,'留言内容13','2023-04-17 11:16:18','回复信息13回复111111111','2023-04-17 13:13:59','2023-04-17 11:16:18'),(14,2,3,'留言内容14','2023-04-17 11:16:18','回复信息14','2023-04-17 11:16:18','2023-04-17 11:16:18');

/*Table structure for table `jiaolian_yuyue` */

DROP TABLE IF EXISTS `jiaolian_yuyue`;

CREATE TABLE `jiaolian_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaolian_id` int(11) DEFAULT NULL COMMENT '教练',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaolian_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `jiaolian_yuyue_text` longtext COMMENT '预约备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `jiaolian_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `jiaolian_yuyue_yesno_text` longtext COMMENT '审核回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='教练预约';

/*Data for the table `jiaolian_yuyue` */

insert  into `jiaolian_yuyue`(`id`,`jiaolian_id`,`yonghu_id`,`jiaolian_yuyue_time`,`jiaolian_yuyue_text`,`insert_time`,`jiaolian_yuyue_yesno_types`,`jiaolian_yuyue_yesno_text`,`create_time`) values (1,2,2,'2023-04-17 11:16:18','预约备注1','2023-04-17 11:16:18',1,NULL,'2023-04-17 11:16:18'),(2,2,3,'2023-04-17 11:16:18','预约备注2','2023-04-17 11:16:18',1,NULL,'2023-04-17 11:16:18'),(3,2,2,'2023-04-17 11:16:18','预约备注3','2023-04-17 11:16:18',1,NULL,'2023-04-17 11:16:18'),(4,1,2,'2023-04-17 11:16:18','预约备注4','2023-04-17 11:16:18',1,NULL,'2023-04-17 11:16:18'),(5,1,3,'2023-04-17 11:16:18','预约备注5','2023-04-17 11:16:18',1,NULL,'2023-04-17 11:16:18'),(6,1,2,'2023-04-17 11:16:18','预约备注6','2023-04-17 11:16:18',1,NULL,'2023-04-17 11:16:18'),(7,1,3,'2023-04-17 11:16:18','预约备注7','2023-04-17 11:16:18',1,NULL,'2023-04-17 11:16:18'),(8,1,2,'2023-04-17 11:16:18','预约备注8','2023-04-17 11:16:18',1,NULL,'2023-04-17 11:16:18'),(9,1,2,'2023-04-17 11:16:18','预约备注9','2023-04-17 11:16:18',1,NULL,'2023-04-17 11:16:18'),(10,2,3,'2023-04-17 11:16:18','预约备注10','2023-04-17 11:16:18',1,NULL,'2023-04-17 11:16:18'),(11,2,1,'2023-04-17 11:16:18','预约备注11','2023-04-17 11:16:18',1,NULL,'2023-04-17 11:16:18'),(17,NULL,1,'2023-04-17 13:22:04','123','2023-04-17 13:22:20',1,'','2023-04-17 13:22:20');

/*Table structure for table `jiaoxiao` */

DROP TABLE IF EXISTS `jiaoxiao`;

CREATE TABLE `jiaoxiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoxiao_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `jiaoxiao_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoxiao_types` int(11) DEFAULT NULL COMMENT '展示类型 Search111',
  `jiaoxiao_content` longtext COMMENT '详情信息',
  `jiaoxiao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='驾校信息';

/*Data for the table `jiaoxiao` */

insert  into `jiaoxiao`(`id`,`jiaoxiao_name`,`jiaoxiao_photo`,`jiaoxiao_types`,`jiaoxiao_content`,`jiaoxiao_delete`,`insert_time`,`create_time`) values (1,'标题1','upload/jiaoxiao1.jpg',1,'详情信息1',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(2,'标题2','upload/jiaoxiao2.jpg',1,'详情信息2',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(3,'标题3','upload/jiaoxiao3.jpg',1,'详情信息3',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(4,'标题4','upload/jiaoxiao4.jpg',2,'详情信息4',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(5,'标题5','upload/jiaoxiao5.jpg',1,'详情信息5',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(6,'标题6','upload/jiaoxiao6.jpg',1,'详情信息6',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(7,'标题7','upload/jiaoxiao7.jpg',1,'详情信息7',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(8,'标题8','upload/jiaoxiao1.jpg',3,'详情信息8',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(9,'标题9','upload/jiaoxiao2.jpg',2,'详情信息9',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(10,'标题10','upload/jiaoxiao3.jpg',1,'详情信息10',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(11,'标题11','upload/jiaoxiao4.jpg',3,'详情信息11',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(12,'标题12','upload/jiaoxiao5.jpg',3,'详情信息12',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(13,'标题13','upload/jiaoxiao6.jpg',2,'详情信息13',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(14,'标题14','upload/jiaoxiao7.jpg',3,'详情信息14',1,'2023-04-17 11:16:18','2023-04-17 11:16:18');

/*Table structure for table `kaoshix` */

DROP TABLE IF EXISTS `kaoshix`;

CREATE TABLE `kaoshix` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kaoshix_name` varchar(200) DEFAULT NULL COMMENT '通知标题  Search111 ',
  `kaoshix_photo` varchar(200) DEFAULT NULL COMMENT '通知封面',
  `kaoshix_types` int(11) DEFAULT NULL COMMENT '考试类型 Search111',
  `kaoshix_address` varchar(200) DEFAULT NULL COMMENT '考试地址',
  `kaoshix_shijian` varchar(200) DEFAULT NULL COMMENT '考试时间',
  `kaoshix_time` timestamp NULL DEFAULT NULL COMMENT '截止时间',
  `kaoshix_content` longtext COMMENT '详情信息',
  `kaoshix_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='考试通知';

/*Data for the table `kaoshix` */

insert  into `kaoshix`(`id`,`kaoshix_name`,`kaoshix_photo`,`kaoshix_types`,`kaoshix_address`,`kaoshix_shijian`,`kaoshix_time`,`kaoshix_content`,`kaoshix_delete`,`insert_time`,`create_time`) values (1,'通知标题1','upload/jiaoxiao1.jpg',2,'考试地址1','考试时间1','2023-04-17 11:16:18','详情信息1',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(2,'通知标题2','upload/jiaoxiao2.jpg',3,'考试地址2','考试时间2','2023-04-17 11:16:18','详情信息2',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(3,'通知标题3','upload/jiaoxiao3.jpg',1,'考试地址3','考试时间3','2023-04-17 11:16:18','详情信息3',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(4,'通知标题4','upload/jiaoxiao4.jpg',1,'考试地址4','考试时间4','2023-04-17 11:16:18','详情信息4',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(5,'通知标题5','upload/jiaoxiao5.jpg',2,'考试地址5','考试时间5','2023-04-17 11:16:18','详情信息5',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(6,'通知标题6','upload/jiaoxiao6.jpg',3,'考试地址6','考试时间6','2023-04-17 11:16:18','详情信息6',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(7,'通知标题7','upload/jiaoxiao7.jpg',3,'考试地址7','考试时间7','2023-04-17 11:16:18','详情信息7',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(8,'通知标题8','upload/jiaoxiao1.jpg',1,'考试地址8','考试时间8','2023-04-17 11:16:18','详情信息8',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(9,'通知标题9','upload/jiaoxiao2.jpg',1,'考试地址9','考试时间9','2023-04-17 11:16:18','详情信息9',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(10,'通知标题10','upload/jiaoxiao3.jpg',3,'考试地址10','考试时间10','2023-04-17 11:16:18','详情信息10',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(11,'通知标题11','upload/jiaoxiao4.jpg',1,'考试地址11','考试时间11','2023-04-17 11:16:18','详情信息11',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(12,'通知标题12','upload/jiaoxiao5.jpg',1,'考试地址12','考试时间12','2023-04-17 11:16:18','详情信息12',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(13,'通知标题13','upload/jiaoxiao6.jpg',3,'考试地址13','考试时间13','2023-04-17 11:16:18','详情信息13',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(14,'通知标题14','upload/jiaoxiao7.jpg',2,'考试地址14','考试时间14','2023-04-17 11:16:18','详情信息14',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(15,'科一考试','/upload/1681708487374.jpg',1,'xxxx地点','2023-4-18 10:00-11：30','2023-04-17 00:00:00','<p><span style=\"color: rgb(96, 98, 102);\">详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息详情信息</span></p>',1,'2023-04-17 13:15:54','2023-04-17 13:15:54');

/*Table structure for table `kaoshix_yuyue` */

DROP TABLE IF EXISTS `kaoshix_yuyue`;

CREATE TABLE `kaoshix_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kaoshix_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号 Search111 ',
  `kaoshix_id` int(11) DEFAULT NULL COMMENT '考试',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kaoshix_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `kaoshix_yuyue_yesno_text` longtext COMMENT '审核回复',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='考试预约';

/*Data for the table `kaoshix_yuyue` */

insert  into `kaoshix_yuyue`(`id`,`kaoshix_yuyue_uuid_number`,`kaoshix_id`,`yonghu_id`,`kaoshix_yuyue_yesno_types`,`kaoshix_yuyue_yesno_text`,`create_time`) values (1,'1681701378392',1,2,1,NULL,'2023-04-17 11:16:18'),(2,'1681701378340',2,1,1,NULL,'2023-04-17 11:16:18'),(3,'1681701378363',3,3,1,NULL,'2023-04-17 11:16:18'),(4,'1681701378382',4,2,1,NULL,'2023-04-17 11:16:18'),(5,'1681701378323',5,2,1,NULL,'2023-04-17 11:16:18'),(6,'1681701378310',6,3,1,NULL,'2023-04-17 11:16:18'),(7,'1681701378322',7,2,1,NULL,'2023-04-17 11:16:18'),(9,'1681701378371',9,1,1,NULL,'2023-04-17 11:16:18'),(10,'1681701378347',10,2,1,NULL,'2023-04-17 11:16:18'),(12,'1681701378323',12,2,1,NULL,'2023-04-17 11:16:18'),(13,'1681701378315',13,2,1,NULL,'2023-04-17 11:16:18'),(14,'1681701378354',14,2,2,'123','2023-04-17 11:16:18');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告通知';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-04-17 11:16:18','公告详情1','2023-04-17 11:16:18'),(2,'公告标题2',1,'upload/news2.jpg','2023-04-17 11:16:18','公告详情2','2023-04-17 11:16:18'),(3,'公告标题3',1,'upload/news3.jpg','2023-04-17 11:16:18','公告详情3','2023-04-17 11:16:18'),(4,'公告标题4',1,'upload/news4.jpg','2023-04-17 11:16:18','公告详情4','2023-04-17 11:16:18'),(5,'公告标题5',2,'upload/news5.jpg','2023-04-17 11:16:18','公告详情5','2023-04-17 11:16:18'),(6,'公告标题6',3,'upload/news6.jpg','2023-04-17 11:16:18','公告详情6','2023-04-17 11:16:18'),(7,'公告标题7',3,'upload/news7.jpg','2023-04-17 11:16:18','公告详情7','2023-04-17 11:16:18'),(8,'公告标题8',1,'upload/news8.jpg','2023-04-17 11:16:18','公告详情8','2023-04-17 11:16:18'),(9,'公告标题9',3,'upload/news9.jpg','2023-04-17 11:16:18','公告详情9','2023-04-17 11:16:18'),(10,'公告标题10',2,'upload/news10.jpg','2023-04-17 11:16:18','公告详情10','2023-04-17 11:16:18'),(11,'公告标题11',3,'upload/news11.jpg','2023-04-17 11:16:18','公告详情11','2023-04-17 11:16:18'),(12,'公告标题12',2,'upload/news12.jpg','2023-04-17 11:16:18','公告详情12','2023-04-17 11:16:18'),(13,'公告标题13',1,'upload/news13.jpg','2023-04-17 11:16:18','公告详情13','2023-04-17 11:16:18'),(14,'公告标题14',3,'upload/news14.jpg','2023-04-17 11:16:18','公告详情14','2023-04-17 11:16:18');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','w2e56r01flhanoyfxjik2zwqdtohpfbl','2023-04-17 11:24:21','2023-04-17 14:25:44'),(2,1,'a1','jiaolian','教练','v7lic4bejnh376kmqvtate3eycxvdveb','2023-04-17 11:30:11','2023-04-17 14:13:32'),(3,1,'a1','yonghu','学员','nq8yc3gmgfyfvbd77r78t8hys99qc7ro','2023-04-17 11:35:42','2023-04-17 14:23:14');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-17 11:16:07');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学员名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学员手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学员身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '学员邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学员';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','学员名称1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(2,'a2','123456','学员名称2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com',1,'2023-04-17 11:16:18','2023-04-17 11:16:18'),(3,'a3','123456','学员名称3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com',1,'2023-04-17 11:16:18','2023-04-17 11:16:18');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
