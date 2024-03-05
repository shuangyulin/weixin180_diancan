/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - naicaidiancan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`naicaidiancan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `naicaidiancan`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (5,1,'聊天信息111',NULL,NULL,NULL,2,1,'2022-02-25 19:37:15'),(6,1,NULL,NULL,'回复信息111','2022-02-25 19:38:44',NULL,2,'2022-02-25 19:38:44');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/naicaidiancan/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/naicaidiancan/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/naicaidiancan/upload/1644817953736.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (74,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-02-14 13:40:53'),(75,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-02-14 13:40:53'),(76,'goods_types','商品名称',1,'商品类型1',NULL,NULL,'2022-02-14 13:40:53'),(77,'goods_types','商品名称',2,'商品类型2',NULL,NULL,'2022-02-14 13:40:53'),(78,'goods_types','商品名称',3,'商品类型3',NULL,NULL,'2022-02-14 13:40:53'),(79,'goods_order_payment_types','支付方式',1,'余额支付',NULL,NULL,'2022-02-14 13:40:53'),(80,'sex_types','性别类型名称',2,'女',NULL,NULL,'2022-02-14 13:40:53'),(81,'sex_types','性别类型名称',1,'男',NULL,NULL,'2022-02-14 13:40:53'),(82,'goods_order_types','订单类型名称',1,'退款',NULL,NULL,'2022-02-14 13:40:53'),(83,'goods_order_types','订单类型名称',2,'已支付',NULL,NULL,'2022-02-14 13:40:53'),(84,'goods_order_types','订单类型名称',3,'已出餐',NULL,NULL,'2022-02-14 13:40:53'),(85,'goods_order_types','订单类型名称',4,'已取餐',NULL,NULL,'2022-02-14 13:40:53'),(86,'goods_order_types','订单类型名称',5,'已评价',NULL,NULL,'2022-02-14 13:40:53'),(87,'news_types','新闻类型名称',1,'优惠活动',NULL,NULL,'2022-02-14 13:40:53'),(88,'news_types','新闻类型名称',2,'紧急情况',NULL,NULL,'2022-02-14 13:40:53'),(89,'goods_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-02-14 14:01:39'),(90,'goods_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-02-14 14:01:39'),(91,'goods_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-02-14 14:01:39'),(92,'chat_types','数据类型',1,'问题',NULL,NULL,'2022-02-25 19:36:25'),(93,'chat_types','数据类型',2,'回复',NULL,NULL,'2022-02-25 19:36:25'),(94,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2022-02-25 19:36:25'),(95,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2022-02-25 19:36:25');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `goods_types` int(11) DEFAULT NULL COMMENT '商品类型  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `goods_kucun_number` int(11) DEFAULT '0' COMMENT '商品库存',
  `goods_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `goods_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价 ',
  `goods_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `goods_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `goods_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_photo`,`goods_kucun_number`,`goods_old_money`,`goods_new_money`,`goods_clicknum`,`shangxia_types`,`goods_delete`,`goods_content`,`create_time`) values (1,'商品名称1',1,'http://localhost:8080/naicaidiancan/upload/photo.jpg',10001,'818.57','125.58',134,1,2,'商品简介1','2022-02-14 13:41:12'),(2,'商品名称2',1,'http://localhost:8080/naicaidiancan/upload/1644817938659.webp',10001,'701.09','394.24',366,1,1,'<p>商品简介2</p>','2022-02-14 13:41:12'),(3,'商品名称3',2,'http://localhost:8080/naicaidiancan/upload/1644817931846.webp',10003,'881.36','273.91',219,1,1,'<p>商品简介3</p>','2022-02-14 13:41:12'),(4,'商品名称4',1,'http://localhost:8080/naicaidiancan/upload/1644817924247.webp',10004,'927.65','132.77',424,1,1,'<p>商品简介4</p>','2022-02-14 13:41:12'),(5,'商品名称5',1,'http://localhost:8080/naicaidiancan/upload/1644817915603.webp',10005,'708.40','97.51',246,1,1,'<p>商品简介5</p>','2022-02-14 13:41:12'),(6,'商品名称6',2,'http://localhost:8080/naicaidiancan/upload/1644817907156.webp',10006,'633.97','372.28',26,1,1,'<p>商品简介6</p>','2022-02-14 13:41:12'),(7,'商品名称7',3,'http://localhost:8080/naicaidiancan/upload/1644817900037.webp',10007,'667.53','451.38',439,2,1,'<p>商品简介7</p>','2022-02-14 13:41:12'),(8,'商品名称8',1,'http://localhost:8080/naicaidiancan/upload/photo1.jpg',10008,'599.75','361.16',115,1,2,'商品简介8','2022-02-14 13:41:12'),(9,'商品名称9',2,'http://localhost:8080/naicaidiancan/upload/photo2.jpg',10009,'543.18','44.25',204,1,2,'商品简介9','2022-02-14 13:41:12'),(10,'商品名称10',3,'http://localhost:8080/naicaidiancan/upload/photo3.jpg',100010,'980.61','484.11',444,1,2,'商品简介10','2022-02-14 13:41:12'),(11,'商品名称11',2,'http://localhost:8080/naicaidiancan/upload/photo4.jpg',100011,'630.07','184.94',360,1,2,'商品简介11','2022-02-14 13:41:12'),(19,'珍珠奶茶',2,'http://localhost:8080/naicaidiancan/upload/1644820396469.webp',1110,'19.00','15.00',4,1,1,'<p>好喝的珍珠奶茶</p>','2022-02-14 14:33:30'),(20,'1',3,'http://localhost:8080/naicaidiancan/upload/1644820446522.webp',1,'1.00','1.00',1,1,2,'<p>1</p>','2022-02-14 14:34:07');

/*Table structure for table `goods_collection` */

DROP TABLE IF EXISTS `goods_collection`;

CREATE TABLE `goods_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `goods_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `goods_collection` */

/*Table structure for table `goods_commentback` */

DROP TABLE IF EXISTS `goods_commentback`;

CREATE TABLE `goods_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `goods_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `goods_commentback` */

insert  into `goods_commentback`(`id`,`goods_id`,`yonghu_id`,`goods_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (2,2,2,'评价内容2','在用户购买完成后可以评价 管理员可以回复用户','2022-02-14 13:41:12','2022-02-14 14:34:47','2022-02-14 13:41:12'),(13,2,1,'评价内容11111',NULL,'2022-02-14 14:37:26',NULL,'2022-02-14 14:37:26');

/*Table structure for table `goods_order` */

DROP TABLE IF EXISTS `goods_order`;

CREATE TABLE `goods_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(200) DEFAULT NULL COMMENT '购买的数量',
  `goods_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `goods_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `goods_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `goods_order` */

insert  into `goods_order`(`id`,`goods_order_uuid_number`,`goods_id`,`yonghu_id`,`buy_number`,`goods_order_true_price`,`goods_order_types`,`goods_order_payment_types`,`insert_time`,`create_time`) values (4,'1644819776367',2,1,1,'394.24',5,1,'2022-02-14 14:22:56','2022-02-14 14:22:56'),(5,'1644820633222',19,1,1,'15.00',2,1,'2022-02-14 14:37:13','2022-02-14 14:37:13');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int(11) NOT NULL COMMENT '新闻类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` text COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1','http://localhost:8080/naicaidiancan/upload/1644817780482.webp',1,'2022-02-14 13:41:12','<p>新闻详情1</p>','2022-02-14 13:41:12'),(2,'新闻名称2','http://localhost:8080/naicaidiancan/upload/1644817772653.webp',1,'2022-02-14 13:41:12','<p>新闻详情2</p>','2022-02-14 13:41:12'),(3,'新闻名称3','http://localhost:8080/naicaidiancan/upload/1644817765186.webp',1,'2022-02-14 13:41:12','<p>新闻详情3</p>','2022-02-14 13:41:12'),(4,'新闻名称4','http://localhost:8080/naicaidiancan/upload/1644817755644.webp',1,'2022-02-14 13:41:12','<p>新闻详情4</p>','2022-02-14 13:41:12'),(5,'新闻名称5','http://localhost:8080/naicaidiancan/upload/1644817743065.webp',2,'2022-02-14 13:41:12','<p>新闻详情5</p>','2022-02-14 13:41:12'),(6,'新闻名称6','http://localhost:8080/naicaidiancan/upload/1644817736840.jpg',1,'2022-02-14 13:41:12','<p>新闻详情6</p>','2022-02-14 13:41:12');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','mlz0c47r0w8xil3ng4gowdu38lrarnf3','2022-02-14 13:45:56','2022-02-25 20:31:41'),(2,1,'a1','yonghu','用户','dr2om016e3y7zj5uhdbo40j522e61hwn','2022-02-14 13:58:44','2022-02-25 20:37:08');

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
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`new_money`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/naicaidiancan/upload/1644817723020.jpg','17703786901','410224199610232001',2,'100106.31',1,'2022-02-14 13:41:12'),(2,'a2','123456','用户姓名2','http://localhost:8080/naicaidiancan/upload/1644817715891.jpg','17703786902','410224199610232002',2,'784.00',1,'2022-02-14 13:41:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
