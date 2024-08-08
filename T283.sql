/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t283`;
CREATE DATABASE IF NOT EXISTS `t283` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t283`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 3, '收货人1', '17703786901', '地址1', 1, '2022-03-16 06:42:41', '2022-03-16 06:42:41', '2022-03-16 06:42:41'),
	(2, 1, '收货人2', '17703786902', '地址2', 1, '2022-03-16 06:42:41', '2022-03-16 06:42:41', '2022-03-16 06:42:41'),
	(3, 2, '收货人3', '17703786903', '地址3', 1, '2022-03-16 06:42:41', '2022-03-16 06:42:41', '2022-03-16 06:42:41'),
	(4, 2, '收货人4', '17703786904', '地址4', 1, '2022-03-16 06:42:41', '2022-03-16 06:42:41', '2022-03-16 06:42:41'),
	(5, 3, '收货人5', '17703786905', '地址5', 1, '2022-03-16 06:42:41', '2022-03-16 06:42:41', '2022-03-16 06:42:41');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='用户反馈';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `yonghu_id`, `chat_issue`, `issue_time`, `chat_reply`, `reply_time`, `zhuangtai_types`, `chat_types`, `insert_time`) VALUES
	(1, 1, '发送反馈信息', '2022-03-16 07:49:30', NULL, NULL, 2, 1, '2022-03-16 07:49:30'),
	(2, 1, NULL, NULL, '管理对平台的反馈回复', '2022-03-16 07:52:11', NULL, 2, '2022-03-16 07:52:12');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/ershoushujiaoyipingtai/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/ershoushujiaoyipingtai/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/ershoushujiaoyipingtai/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-16 06:42:10'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-16 06:42:10'),
	(3, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-03-16 06:42:10'),
	(4, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-03-16 06:42:10'),
	(5, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-16 06:42:10'),
	(6, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-16 06:42:10'),
	(7, 'tushu_types', '图书类型', 1, '图书类型1', NULL, NULL, '2022-03-16 06:42:10'),
	(8, 'tushu_types', '图书类型', 2, '图书类型2', NULL, NULL, '2022-03-16 06:42:10'),
	(9, 'tushu_types', '图书类型', 3, '图书类型3', NULL, NULL, '2022-03-16 06:42:10'),
	(10, 'chat_types', '数据类型', 1, '问题', NULL, NULL, '2022-03-16 06:42:11'),
	(11, 'chat_types', '数据类型', 2, '回复', NULL, NULL, '2022-03-16 06:42:11'),
	(12, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2022-03-16 06:42:11'),
	(13, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2022-03-16 06:42:11'),
	(15, 'tushu_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-03-16 06:42:11'),
	(16, 'tushu_order_types', '订单类型', 3, '已支付', NULL, NULL, '2022-03-16 06:42:11'),
	(17, 'tushu_order_types', '订单类型', 4, '已发货', NULL, NULL, '2022-03-16 06:42:11'),
	(18, 'tushu_order_types', '订单类型', 5, '已收货', NULL, NULL, '2022-03-16 06:42:11'),
	(19, 'tushu_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-03-16 06:42:11'),
	(20, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-16 06:42:11'),
	(21, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-16 06:42:11'),
	(22, 'tushuqiugou_types', '图书求购状态', 1, '未完成', NULL, NULL, '2022-03-16 06:42:11'),
	(23, 'tushuqiugou_types', '图书求购状态', 2, '已完成', NULL, NULL, '2022-03-16 06:42:11');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int NOT NULL COMMENT '公告类型 Search111',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 'http://localhost:8080/ershoushujiaoyipingtai/upload/news1.jpg', 2, '公告详情1', '2022-03-16 06:42:41'),
	(2, '公告标题2', 'http://localhost:8080/ershoushujiaoyipingtai/upload/news2.jpg', 1, '公告详情2', '2022-03-16 06:42:41'),
	(3, '公告标题3', 'http://localhost:8080/ershoushujiaoyipingtai/upload/news3.jpg', 1, '公告详情3', '2022-03-16 06:42:41'),
	(4, '公告标题4', 'http://localhost:8080/ershoushujiaoyipingtai/upload/news4.jpg', 2, '公告详情4', '2022-03-16 06:42:41'),
	(5, '公告标题5', 'http://localhost:8080/ershoushujiaoyipingtai/upload/news5.jpg', 2, '公告详情5', '2022-03-16 06:42:41');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '3h9m14lvxu60slg1y0iiv44v06vpt9t1', '2022-03-16 06:53:54', '2024-07-24 03:04:17'),
	(2, 1, 'a1', 'yonghu', '用户', 'vyt7nicwmc32kfqljzc3c3k2z8dxqv10', '2022-03-16 06:57:28', '2024-07-24 03:05:35'),
	(3, 2, 'a2', 'yonghu', '用户', 'm26trdx33qvc5of2sywcty25l5vwho9t', '2022-03-16 07:34:35', '2022-03-16 08:50:16');

DROP TABLE IF EXISTS `tushu`;
CREATE TABLE IF NOT EXISTS `tushu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tushu_name` varchar(200) DEFAULT NULL COMMENT '图书名称  Search111 ',
  `tushu_photo` varchar(200) DEFAULT NULL COMMENT '图书图片',
  `tushu_zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `tushu_chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tushu_types` int DEFAULT NULL COMMENT '图书类型 Search111',
  `tushu_kucun_number` int DEFAULT NULL COMMENT '图书库存',
  `tushu_old_money` decimal(10,2) DEFAULT NULL COMMENT '图书原价 ',
  `tushu_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `tushu_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `tushu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `tushu_content` text COMMENT '图书简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='图书';

DELETE FROM `tushu`;
INSERT INTO `tushu` (`id`, `yonghu_id`, `tushu_name`, `tushu_photo`, `tushu_zuozhe`, `tushu_chubanshe`, `tushu_types`, `tushu_kucun_number`, `tushu_old_money`, `tushu_new_money`, `tushu_clicknum`, `shangxia_types`, `tushu_delete`, `tushu_content`, `create_time`) VALUES
	(1, 2, '图书名称1', 'http://localhost:8080/ershoushujiaoyipingtai/upload/tushu1.jpg', '作者1', '出版社1', 3, 96, 625.25, 495.97, 313, 1, 1, '图书简介1', '2022-03-16 06:42:41'),
	(2, 2, '图书名称2', 'http://localhost:8080/ershoushujiaoyipingtai/upload/tushu2.jpg', '作者2', '出版社2', 2, 97, 782.22, 261.04, 480, 1, 1, '图书简介2', '2022-03-16 06:42:41'),
	(3, 3, '图书名称3', 'http://localhost:8080/ershoushujiaoyipingtai/upload/tushu3.jpg', '作者3', '出版社3', 2, 101, 653.34, 70.24, 70, 1, 1, '图书简介3', '2022-03-16 06:42:41'),
	(4, 1, '图书名称4', 'http://localhost:8080/ershoushujiaoyipingtai/upload/tushu4.jpg', '作者4', '出版社4', 1, 104, 997.02, 45.84, 263, 1, 1, '图书简介4', '2022-03-16 06:42:41'),
	(5, 1, '图书名称5', 'http://localhost:8080/ershoushujiaoyipingtai/upload/tushu5.jpg', '作者5', '出版社5', 1, 105, 601.80, 407.86, 193, 1, 1, '图书简介5', '2022-03-16 06:42:41');

DROP TABLE IF EXISTS `tushuqiugou`;
CREATE TABLE IF NOT EXISTS `tushuqiugou` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tushuqiugou_name` varchar(200) DEFAULT NULL COMMENT '图书名称  Search111 ',
  `tushuqiugou_photo` varchar(200) DEFAULT NULL COMMENT '图书图片',
  `tushuqiugou_zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `tushuqiugou_chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tushu_types` int DEFAULT NULL COMMENT '图书类型 Search111',
  `tushuqiugou_types` int DEFAULT NULL COMMENT '图书求购状态',
  `tushuqiugou_content` text COMMENT '图书详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='图书求购';

DELETE FROM `tushuqiugou`;
INSERT INTO `tushuqiugou` (`id`, `yonghu_id`, `tushuqiugou_name`, `tushuqiugou_photo`, `tushuqiugou_zuozhe`, `tushuqiugou_chubanshe`, `tushu_types`, `tushuqiugou_types`, `tushuqiugou_content`, `create_time`) VALUES
	(1, 2, '图书名称1', 'http://localhost:8080/ershoushujiaoyipingtai/upload/tushu1.jpg', '作者1', '出版社1', 1, 2, '图书详情1', '2022-03-16 06:42:41'),
	(2, 1, '图书名称2', 'http://localhost:8080/ershoushujiaoyipingtai/upload/tushu2.jpg', '作者2', '出版社2', 1, 1, '图书详情2', '2022-03-16 06:42:41'),
	(3, 3, '图书名称3', 'http://localhost:8080/ershoushujiaoyipingtai/upload/tushu3.jpg', '作者3', '出版社3', 3, 2, '图书详情3', '2022-03-16 06:42:41'),
	(4, 1, '图书名称4', 'http://localhost:8080/ershoushujiaoyipingtai/upload/tushu4.jpg', '作者4', '出版社4', 1, 1, '<p>图书详情4</p>', '2022-03-16 06:42:41'),
	(5, 3, '图书名称5', 'http://localhost:8080/ershoushujiaoyipingtai/upload/tushu5.jpg', '作者5', '出版社5', 1, 2, '图书详情5', '2022-03-16 06:42:41');

DROP TABLE IF EXISTS `tushu_liuyan`;
CREATE TABLE IF NOT EXISTS `tushu_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tushu_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='图书留言';

DELETE FROM `tushu_liuyan`;
INSERT INTO `tushu_liuyan` (`id`, `tushu_id`, `yonghu_id`, `tushu_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '回复信息1', '2022-03-16 06:42:41', '2022-03-16 06:42:41', '2022-03-16 06:42:41'),
	(2, 2, 3, '留言内容2', '回复信息2', '2022-03-16 06:42:41', '2022-03-16 06:42:41', '2022-03-16 06:42:41'),
	(3, 3, 3, '留言内容3', '回复信息3', '2022-03-16 06:42:41', '2022-03-16 06:42:41', '2022-03-16 06:42:41'),
	(4, 4, 3, '留言内容4', '回复信息4', '2022-03-16 06:42:41', '2022-03-16 06:42:41', '2022-03-16 06:42:41'),
	(5, 5, 1, '留言内容5', '回复信息5', '2022-03-16 06:42:41', '2022-03-16 06:42:41', '2022-03-16 06:42:41'),
	(6, 1, 2, '留言内容1111', '发布图书用户可回复', '2022-03-16 07:47:03', '2022-03-16 07:50:37', '2022-03-16 07:47:03');

DROP TABLE IF EXISTS `tushu_order`;
CREATE TABLE IF NOT EXISTS `tushu_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '送货地址 ',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `tushu_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `tushu_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `tushu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `tushu_order_types` int DEFAULT NULL COMMENT '订单类型',
  `tushu_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='图书订单';

DELETE FROM `tushu_order`;
INSERT INTO `tushu_order` (`id`, `tushu_order_uuid_number`, `address_id`, `tushu_id`, `yonghu_id`, `buy_number`, `tushu_order_courier_number`, `tushu_order_courier_name`, `tushu_order_true_price`, `tushu_order_types`, `tushu_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1647415762493', 2, 2, 1, 3, NULL, NULL, 783.12, 3, 1, '2022-03-16 07:29:23', '2022-03-16 07:29:23'),
	(2, '1647415762493', 2, 1, 1, 4, NULL, NULL, 1983.88, 3, 1, '2022-03-16 07:29:23', '2022-03-16 07:29:23'),
	(3, '1647415829956', 2, 1, 1, 1, NULL, NULL, 495.97, 3, 1, '2022-03-16 07:30:30', '2022-03-16 07:30:30'),
	(4, '1647415990083', 2, 2, 1, 1, 'JD 1122334456677', '京东', 261.04, 4, 1, '2022-03-16 07:33:10', '2022-03-16 07:33:10'),
	(5, '1647415990083', 2, 3, 1, 1, NULL, NULL, 70.24, 3, 1, '2022-03-16 07:33:16', '2022-03-16 07:33:16'),
	(6, '1647416949691', 2, 2, 1, 1, 'SF 115599226633', '顺风', 261.04, 5, 1, '2022-03-16 07:49:10', '2022-03-16 07:49:10'),
	(7, '1647416949691', 2, 1, 1, 1, NULL, NULL, 495.97, 2, 1, '2022-03-16 07:49:10', '2022-03-16 07:49:10'),
	(8, '1721786768933', 2, 3, 1, 1, NULL, NULL, 70.24, 3, 1, '2024-07-24 02:06:09', '2024-07-24 02:06:09');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/ershoushujiaoyipingtai/upload/yonghu1.jpg', 2, '1@qq.com', 5841.47, '2022-03-16 06:42:41'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/ershoushujiaoyipingtai/upload/yonghu2.jpg', 1, '2@qq.com', 857.01, '2022-03-16 06:42:41'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/ershoushujiaoyipingtai/upload/yonghu3.jpg', 1, '3@qq.com', 240.48, '2022-03-16 06:42:41');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
