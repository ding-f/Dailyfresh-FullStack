-- MariaDB dump 10.19-11.3.2-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: dailyfresh
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can add group',3,'add_group'),
(9,'Can change group',3,'change_group'),
(10,'Can delete group',3,'delete_group'),
(11,'Can view group',3,'view_group'),
(12,'Can view permission',2,'view_permission'),
(13,'Can add content type',4,'add_contenttype'),
(14,'Can change content type',4,'change_contenttype'),
(15,'Can delete content type',4,'delete_contenttype'),
(16,'Can view content type',4,'view_contenttype'),
(17,'Can add session',5,'add_session'),
(18,'Can change session',5,'change_session'),
(19,'Can delete session',5,'delete_session'),
(20,'Can view session',5,'view_session'),
(21,'Can add 用户信息',6,'add_userprofile'),
(22,'Can change 用户信息',6,'change_userprofile'),
(23,'Can delete 用户信息',6,'delete_userprofile'),
(24,'Can add 短信验证',7,'add_verifycode'),
(25,'Can change 短信验证',7,'change_verifycode'),
(26,'Can delete 短信验证',7,'delete_verifycode'),
(27,'Can view 用户信息',6,'view_userprofile'),
(28,'Can view 短信验证',7,'view_verifycode'),
(29,'Can add 商品SPU',8,'add_goods'),
(30,'Can change 商品SPU',8,'change_goods'),
(31,'Can delete 商品SPU',8,'delete_goods'),
(32,'Can add 商品图片',9,'add_goodsimage'),
(33,'Can change 商品图片',9,'change_goodsimage'),
(34,'Can delete 商品图片',9,'delete_goodsimage'),
(35,'Can add 商品',10,'add_goodssku'),
(36,'Can change 商品',10,'change_goodssku'),
(37,'Can delete 商品',10,'delete_goodssku'),
(38,'Can add 商品种类',11,'add_goodstype'),
(39,'Can change 商品种类',11,'change_goodstype'),
(40,'Can delete 商品种类',11,'delete_goodstype'),
(41,'Can add 首页轮播商品',12,'add_indexgoodsbanner'),
(42,'Can change 首页轮播商品',12,'change_indexgoodsbanner'),
(43,'Can delete 首页轮播商品',12,'delete_indexgoodsbanner'),
(44,'Can add 主页促销活动',13,'add_indexpromotionbanner'),
(45,'Can change 主页促销活动',13,'change_indexpromotionbanner'),
(46,'Can delete 主页促销活动',13,'delete_indexpromotionbanner'),
(47,'Can add 商品类目',14,'add_goodscategory'),
(48,'Can change 商品类目',14,'change_goodscategory'),
(49,'Can delete 商品类目',14,'delete_goodscategory'),
(50,'Can view 商品SPU',8,'view_goods'),
(51,'Can view 商品类目',14,'view_goodscategory'),
(52,'Can view 商品图片',9,'view_goodsimage'),
(53,'Can view 商品',10,'view_goodssku'),
(54,'Can view 商品种类',11,'view_goodstype'),
(55,'Can view 首页轮播商品',12,'view_indexgoodsbanner'),
(56,'Can view 主页促销活动',13,'view_indexpromotionbanner'),
(57,'Can add 订单商品',15,'add_ordergoods'),
(58,'Can change 订单商品',15,'change_ordergoods'),
(59,'Can delete 订单商品',15,'delete_ordergoods'),
(60,'Can add 订单信息',16,'add_orderinfo'),
(61,'Can change 订单信息',16,'change_orderinfo'),
(62,'Can delete 订单信息',16,'delete_orderinfo'),
(63,'Can add 购物车',17,'add_shoppingcart'),
(64,'Can change 购物车',17,'change_shoppingcart'),
(65,'Can delete 购物车',17,'delete_shoppingcart'),
(66,'Can view 订单商品',15,'view_ordergoods'),
(67,'Can view 订单信息',16,'view_orderinfo'),
(68,'Can view 购物车',17,'view_shoppingcart'),
(69,'Can add 收货地址',18,'add_useraddress'),
(70,'Can change 收货地址',18,'change_useraddress'),
(71,'Can delete 收货地址',18,'delete_useraddress'),
(72,'Can add 用户收藏',19,'add_userfav'),
(73,'Can change 用户收藏',19,'change_userfav'),
(74,'Can delete 用户收藏',19,'delete_userfav'),
(75,'Can add 用户留言',20,'add_userleavingmessage'),
(76,'Can change 用户留言',20,'change_userleavingmessage'),
(77,'Can delete 用户留言',20,'delete_userleavingmessage'),
(78,'Can view 收货地址',18,'view_useraddress'),
(79,'Can view 用户收藏',19,'view_userfav'),
(80,'Can view 用户留言',20,'view_userleavingmessage'),
(81,'Can add Bookmark',21,'add_bookmark'),
(82,'Can change Bookmark',21,'change_bookmark'),
(83,'Can delete Bookmark',21,'delete_bookmark'),
(84,'Can add User Setting',22,'add_usersettings'),
(85,'Can change User Setting',22,'change_usersettings'),
(86,'Can delete User Setting',22,'delete_usersettings'),
(87,'Can add User Widget',23,'add_userwidget'),
(88,'Can change User Widget',23,'change_userwidget'),
(89,'Can delete User Widget',23,'delete_userwidget'),
(90,'Can add log entry',24,'add_log'),
(91,'Can change log entry',24,'change_log'),
(92,'Can delete log entry',24,'delete_log'),
(93,'Can view Bookmark',21,'view_bookmark'),
(94,'Can view log entry',24,'view_log'),
(95,'Can view User Setting',22,'view_usersettings'),
(96,'Can view User Widget',23,'view_userwidget'),
(97,'Can add Token',25,'add_token'),
(98,'Can change Token',25,'change_token'),
(99,'Can delete Token',25,'delete_token'),
(100,'Can view Token',25,'view_token'),
(101,'Can add association',26,'add_association'),
(102,'Can change association',26,'change_association'),
(103,'Can delete association',26,'delete_association'),
(104,'Can add code',27,'add_code'),
(105,'Can change code',27,'change_code'),
(106,'Can delete code',27,'delete_code'),
(107,'Can add nonce',28,'add_nonce'),
(108,'Can change nonce',28,'change_nonce'),
(109,'Can delete nonce',28,'delete_nonce'),
(110,'Can add user social auth',29,'add_usersocialauth'),
(111,'Can change user social auth',29,'change_usersocialauth'),
(112,'Can delete user social auth',29,'delete_usersocialauth'),
(113,'Can add partial',30,'add_partial'),
(114,'Can change partial',30,'change_partial'),
(115,'Can delete partial',30,'delete_partial'),
(116,'Can view association',26,'view_association'),
(117,'Can view code',27,'view_code'),
(118,'Can view nonce',28,'view_nonce'),
(119,'Can view partial',30,'view_partial'),
(120,'Can view user social auth',29,'view_usersocialauth');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods`
--

DROP TABLE IF EXISTS `df_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `detail` longtext NOT NULL,
  `add_time` datetime NOT NULL,
  `category_id` int NOT NULL,
  `goods_brief` varchar(256) NOT NULL,
  `goods_desc` varchar(256) NOT NULL,
  `goods_front_image` varchar(100) DEFAULT NULL,
  `market_price` decimal(10,2) NOT NULL,
  `shop_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_category_id_59d58e6d` (`category_id`),
  CONSTRAINT `df_goods_category_id_59d58e6d_fk_df_goods_category_id` FOREIGN KEY (`category_id`) REFERENCES `df_goods_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods`
--

LOCK TABLES `df_goods` WRITE;
/*!40000 ALTER TABLE `df_goods` DISABLE KEYS */;
INSERT INTO `df_goods` VALUES
(1,'新鲜水果甜蜜香脆单果约800克','','2023-04-02 22:31:16',20,'食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/1_P_1449024889889.jpg',232.00,156.00),
(2,'田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛','','2023-04-02 22:31:16',7,'前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/2_P_1448945810202.jpg',106.00,88.00),
(3,'酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套','','2023-04-02 22:31:16',15,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/7_P_1448945104883.jpg',286.00,238.00),
(4,'日本蒜蓉粉丝扇贝270克6只装','','2023-04-02 22:31:16',20,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/47_P_1448946213263.jpg',156.00,108.00),
(5,'内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材','','2023-04-02 22:31:16',7,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/10_P_1448944572085.jpg',106.00,88.00),
(6,'乌拉圭进口牛肉卷特级肥牛卷','','2023-04-02 22:31:16',21,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/4_P_1448945381985.jpg',90.00,75.00),
(7,'五星眼肉牛排套餐8片装原味原切生鲜牛肉','','2023-04-02 22:31:16',23,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/8_P_1448945032810.jpg',150.00,125.00),
(8,'澳洲进口120天谷饲牛仔骨4份原味生鲜','','2023-04-02 22:31:16',7,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/11_P_1448944388277.jpg',31.00,26.00),
(9,'潮香村澳洲进口牛排家庭团购套餐20片','','2023-04-02 22:31:16',22,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/6_P_1448945167279.jpg',239.00,199.00),
(10,'爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉10','','2023-04-02 22:31:16',20,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/9_P_1448944791617.jpg',202.00,168.00),
(11,'澳洲进口牛尾巴300g新鲜肥牛肉','','2023-04-02 22:31:16',2,'新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/3_P_1448945490837.jpg',306.00,255.00),
(12,'新疆巴尔鲁克生鲜牛排眼肉牛扒1200g','','2023-04-02 22:31:16',7,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/48_P_1448943988970.jpg',126.00,88.00),
(13,'澳洲进口安格斯牛切片上脑牛排1000g','','2023-04-02 22:31:16',12,'澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/5_P_1448945270390.jpg',144.00,120.00),
(14,'帐篷出租','','2023-04-02 22:31:16',21,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','images/201705/goods_img/53_P_1495068879687.jpg',120.00,100.00),
(15,'52度茅台集团国隆双喜酒500mlx6','','2023-04-02 22:31:16',37,'贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/16_P_1448947194687.jpg',23.00,19.00),
(16,'52度水井坊臻酿八號500ml','','2023-04-02 22:31:16',36,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/14_P_1448947354031.jpg',43.00,36.00),
(17,'53度茅台仁酒500ml','','2023-04-02 22:31:16',32,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/12_P_1448947547989.jpg',190.00,158.00),
(18,'双响炮洋酒JimBeamwhiskey美','','2023-04-02 22:31:16',29,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/46_P_1448946598711.jpg',38.00,28.00),
(19,'西夫拉姆进口洋酒小酒版','','2023-04-02 22:31:16',36,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/21_P_1448946793276.jpg',55.00,46.00),
(20,'茅台53度飞天茅台500ml','','2023-04-02 22:31:16',30,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/15_P_1448947257324.jpg',22.00,18.00),
(21,'52度兰陵·紫气东来1600mL山东名酒','','2023-04-02 22:31:16',29,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/13_P_1448947460386.jpg',42.00,35.00),
(22,'JohnnieWalker尊尼获加黑牌威','','2023-04-02 22:31:16',36,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/50_P_1448946543091.jpg',24.00,20.00),
(23,'人头马CLUB特优香槟干邑350ml','','2023-04-02 22:31:16',30,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/51_P_1448946466595.jpg',31.00,26.00),
(24,'张裕干红葡萄酒750ml*6支','','2023-04-02 22:31:16',31,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/17_P_1448947102246.jpg',54.00,45.00),
(25,'原瓶原装进口洋酒烈酒法国云鹿XO白兰地','','2023-04-02 22:31:16',29,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/20_P_1448946850602.jpg',46.00,38.00),
(26,'法国原装进口圣贝克干红葡萄酒750ml','','2023-04-02 22:31:16',25,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/19_P_1448946951581.jpg',82.00,68.00),
(27,'法国百利威干红葡萄酒AOP级6支装','','2023-04-02 22:31:16',25,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/18_P_1448947011435.jpg',67.00,56.00),
(28,'芝华士12年苏格兰威士忌700ml','','2023-04-02 22:31:16',30,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/22_P_1448946729629.jpg',71.00,59.00),
(29,'深蓝伏特加巴维兰利口酒送预调酒','','2023-04-02 22:31:16',36,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/45_P_1448946661303.jpg',31.00,18.00),
(30,'赣南脐橙特级果10斤装','','2023-04-02 22:31:16',62,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/32_P_1448948525620.jpg',43.00,36.00),
(31,'泰国菠萝蜜16-18斤1个装','','2023-04-02 22:31:16',66,'【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/30_P_1448948663450.jpg',11.00,9.00),
(32,'四川双流草莓新鲜水果礼盒2盒','','2023-04-02 22:31:16',70,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/31_P_1448948598947.jpg',22.00,18.00),
(33,'新鲜头茬非洲冰草冰菜','','2023-04-02 22:31:16',58,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/35_P_1448948333610.jpg',67.00,56.00),
(34,'仿真蔬菜水果果蔬菜模型','','2023-04-02 22:31:16',58,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/36_P_1448948234405.jpg',6.00,5.00),
(35,'现摘芭乐番石榴台湾珍珠芭乐','','2023-04-02 22:31:16',62,'海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/33_P_1448948479966.jpg',28.00,23.00),
(36,'潍坊萝卜5斤/箱礼盒','','2023-04-02 22:31:16',70,'脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/34_P_1448948399009.jpg',46.00,38.00),
(37,'休闲零食膨化食品焦糖/奶油/椒麻味','','2023-04-02 22:31:16',74,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/43_P_1448948762645.jpg',154.00,99.00),
(38,'蒙牛未来星儿童成长牛奶骨力型190ml*','','2023-04-02 22:31:16',105,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/38_P_1448949220255.jpg',84.00,70.00),
(39,'蒙牛特仑苏有机奶250ml×12盒','','2023-04-02 22:31:16',103,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/44_P_1448948850187.jpg',70.00,32.00),
(40,'1元支付测试商品','','2023-04-02 22:31:16',102,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','images/201511/goods_img/49_P_1448162819889.jpg',1.00,1.00),
(41,'德运全脂新鲜纯牛奶1L*10盒装整箱','','2023-04-02 22:31:16',103,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/40_P_1448949038702.jpg',70.00,58.00),
(42,'木糖醇红枣早餐奶即食豆奶粉538g','','2023-04-02 22:31:16',106,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/39_P_1448949115481.jpg',38.00,32.00),
(43,'高钙液体奶200ml*24盒','','2023-04-02 22:31:16',107,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/41_P_1448948980358.jpg',26.00,22.00),
(44,'新西兰进口全脂奶粉900g','','2023-04-02 22:31:16',104,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/37_P_1448949284365.jpg',720.00,600.00),
(45,'伊利官方直营全脂营养舒化奶250ml*1','','2023-04-02 22:31:16',103,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/42_P_1448948895193.jpg',43.00,36.00),
(46,'维纳斯橄榄菜籽油5L/桶','','2023-04-02 22:31:16',51,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/27_P_1448947771805.jpg',187.00,156.00),
(47,'糙米450gx3包粮油米面','','2023-04-02 22:31:16',41,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/23_P_1448948070348.jpg',18.00,15.00),
(48,'精炼一级大豆油5L色拉油粮油食用油','','2023-04-02 22:31:16',56,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/26_P_1448947825754.jpg',54.00,45.00),
(49,'橄榄玉米油5L*2桶','','2023-04-02 22:31:16',54,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/28_P_1448947699948.jpg',31.00,26.00),
(50,'山西黑米农家黑米4斤','','2023-04-02 22:31:16',55,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/24_P_1448948023823.jpg',11.00,9.00),
(51,'稻园牌稻米油粮油米糠油绿色植物油','','2023-04-02 22:31:16',47,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/25_P_1448947875346.jpg',14.00,12.00),
(52,'融氏纯玉米胚芽油5l桶','','2023-04-02 22:31:16',41,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>','goods/images/29_P_1448947631994.jpg',14.00,12.00),
(53,'基围虾','基围虾（学名：Metapenaeus ensis）又名砂蝦、沙蝦、麻蝦、近缘新对虾、獨角新對蝦、刀额新对虾，屬於对虾科新對蝦屬，是利用主要分布于广东省珠江河口一带的叫做「基围」的养育池养殖的河口虾[1]。其主要特征之一是额角突起（称为额剑）上缘有锯齿，下缘无锯齿，因单面开刃算做刀，这是它的学名名称由来，又是区别于对虾属的显著特征之一。刀额新对虾在中国主要分布于福建、广东、广西沿海，其味道鲜美，具有较高的经济价值，同时对低盐（即淡水）、高水温和低溶氧有较强的忍耐能力，离水后也可较长时间不死，适于活虾上市。','0000-00-00 00:00:00',7,'这种养虾方式几乎零成本，而且虾肉口感基本等同于野生虾，一时大受欢迎。1980年代，香港的基围虾售价甚至接近石斑鱼。','<p><img src=\"\\media\\goods\\images\\wjx.webp\" title=\"\" alt=\"2.jpg\"/></p>','\\goods\\images\\wjx.webp',180.00,190.00);
/*!40000 ALTER TABLE `df_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_category`
--

DROP TABLE IF EXISTS `df_goods_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `category_type` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_category`
--

LOCK TABLES `df_goods_category` WRITE;
/*!40000 ALTER TABLE `df_goods_category` DISABLE KEYS */;
INSERT INTO `df_goods_category` VALUES
(1,'sxsp','生鲜食品',1),
(2,'jprl','精品肉类',2),
(3,'yr','羊肉',3),
(4,'ql','禽类',3),
(5,'zr','猪肉',3),
(6,'nr','牛肉',3),
(7,'hxsc','海鲜水产',2),
(8,'cb','参鲍',3),
(9,'yu','鱼',3),
(10,'xia','虾',3),
(11,'xb','蟹/贝',3),
(12,'dzp','蛋制品',2),
(13,'xhd_xyd','松花蛋/咸鸭蛋',3),
(14,'jd','鸡蛋',3),
(15,'ycl','叶菜类',2),
(16,'sc','生菜',3),
(17,'bc','菠菜',3),
(18,'yj','圆椒',3),
(19,'xlh','西兰花',3),
(20,'gjl','根茎类',2),
(21,'qgl','茄果类',2),
(22,'jgl','菌菇类',2),
(23,'jksx','进口生鲜',2),
(24,'jsyl','酒水饮料',1),
(25,'bk','白酒',2),
(26,'wly','五粮液',3),
(27,'lzlj','泸州老窖',3),
(28,'mt','茅台',3),
(29,'ptj','葡萄酒',2),
(30,'yj','洋酒',2),
(31,'pj','啤酒',2),
(32,'qtjp','其他酒品',2),
(33,'qtpp','其他品牌',3),
(34,'hj','黄酒',3),
(35,'ysj','养生酒',3),
(36,'yls','饮料/水',2),
(37,'hj','红酒',2),
(38,'bld','白兰地',3),
(39,'wsj','威士忌',3),
(40,'粮油副食','粮油副食',1),
(41,'食用油','食用油',2),
(42,'其他食用油','其他食用油',3),
(43,'菜仔油','菜仔油',3),
(44,'花生油','花生油',3),
(45,'橄榄油','橄榄油',3),
(46,'礼盒','礼盒',3),
(47,'米面杂粮','米面杂粮',2),
(48,'面粉/面条','面粉/面条',3),
(49,'大米','大米',3),
(50,'意大利面','意大利面',3),
(51,'厨房调料','厨房调料',2),
(52,'调味油/汁','调味油/汁',3),
(53,'酱油/醋','酱油/醋',3),
(54,'南北干货','南北干货',2),
(55,'方便速食','方便速食',2),
(56,'调味品','调味品',2),
(57,'蔬菜水果','蔬菜水果',1),
(58,'有机蔬菜','有机蔬菜',2),
(59,'西红柿','西红柿',3),
(60,'韭菜','韭菜',3),
(61,'青菜','青菜',3),
(62,'精选蔬菜','精选蔬菜',2),
(63,'甘蓝','甘蓝',3),
(64,'胡萝卜','胡萝卜',3),
(65,'黄瓜','黄瓜',3),
(66,'进口水果','进口水果',2),
(67,'火龙果','火龙果',3),
(68,'菠萝蜜','菠萝蜜',3),
(69,'奇异果','奇异果',3),
(70,'国产水果','国产水果',2),
(71,'水果礼盒','水果礼盒',3),
(72,'苹果','苹果',3),
(73,'雪梨','雪梨',3),
(74,'休闲食品','休闲食品',1),
(75,'休闲零食','休闲零食',2),
(76,'果冻','果冻',3),
(77,'枣类','枣类',3),
(78,'蜜饯','蜜饯',3),
(79,'肉类零食','肉类零食',3),
(80,'坚果炒货','坚果炒货',3),
(81,'糖果','糖果',2),
(82,'创意喜糖','创意喜糖',3),
(83,'口香糖','口香糖',3),
(84,'软糖','软糖',3),
(85,'棒棒糖','棒棒糖',3),
(86,'巧克力','巧克力',2),
(87,'夹心巧克力','夹心巧克力',3),
(88,'白巧克力','白巧克力',3),
(89,'松露巧克力','松露巧克力',3),
(90,'黑巧克力','黑巧克力',3),
(91,'肉干肉脯/豆干','肉干肉脯/豆干',2),
(92,'牛肉干','牛肉干',3),
(93,'猪肉脯','猪肉脯',3),
(94,'牛肉粒','牛肉粒',3),
(95,'猪肉干','猪肉干',3),
(96,'鱿鱼丝/鱼干','鱿鱼丝/鱼干',2),
(97,'鱿鱼足','鱿鱼足',3),
(98,'鱿鱼丝','鱿鱼丝',3),
(99,'墨鱼/乌贼','墨鱼/乌贼',3),
(100,'鱿鱼仔','鱿鱼仔',3),
(101,'鱿鱼片','鱿鱼片',3),
(102,'奶类食品','奶类食品',1),
(103,'进口奶品','进口奶品',2),
(104,'国产奶品','国产奶品',2),
(105,'奶粉','奶粉',2),
(106,'有机奶','有机奶',2),
(107,'原料奶','原料奶',2),
(108,'天然干货','天然干货',1),
(109,'菌菇类','菌菇类',2),
(110,'腌干海产','腌干海产',2),
(111,'汤料','汤料',2),
(112,'豆类','豆类',2),
(113,'干菜/菜干','干菜/菜干',2),
(114,'干果/果干','干果/果干',2),
(115,'豆制品','豆制品',2),
(116,'腊味','腊味',2),
(117,'精选茗茶','精选茗茶',1),
(118,'白茶','白茶',2),
(119,'红茶','红茶',2),
(120,'绿茶','绿茶',2);
/*!40000 ALTER TABLE `df_goods_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_image`
--

DROP TABLE IF EXISTS `df_goods_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `sku_id` int DEFAULT NULL,
  `goods_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_image_goods_id_f15fad5e_fk_df_goods_id` (`goods_id`),
  KEY `df_goods_image_sku_id_f8dc96ea_fk_df_goods_sku_id` (`sku_id`),
  CONSTRAINT `df_goods_image_goods_id_f15fad5e_fk_df_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods` (`id`),
  CONSTRAINT `df_goods_image_sku_id_f8dc96ea_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_image`
--

LOCK TABLES `df_goods_image` WRITE;
/*!40000 ALTER TABLE `df_goods_image` DISABLE KEYS */;
INSERT INTO `df_goods_image` VALUES
(1,'goods/images/1_P_1449024889889.jpg','2023-04-02 22:31:16',NULL,1),
(2,'goods/images/1_P_1449024889264.jpg','2023-04-02 22:31:16',NULL,1),
(3,'goods/images/1_P_1449024889726.jpg','2023-04-02 22:31:16',NULL,1),
(4,'goods/images/1_P_1449024889018.jpg','2023-04-02 22:31:16',NULL,1),
(5,'goods/images/1_P_1449024889287.jpg','2023-04-02 22:31:16',NULL,1),
(6,'goods/images/2_P_1448945810202.jpg','2023-04-02 22:31:16',NULL,2),
(7,'goods/images/2_P_1448945810814.jpg','2023-04-02 22:31:16',NULL,2),
(8,'goods/images/7_P_1448945104883.jpg','2023-04-02 22:31:16',NULL,3),
(9,'goods/images/7_P_1448945104734.jpg','2023-04-02 22:31:16',NULL,3),
(10,'goods/images/47_P_1448946213263.jpg','2023-04-02 22:31:16',NULL,4),
(11,'goods/images/47_P_1448946213157.jpg','2023-04-02 22:31:16',NULL,4),
(12,'goods/images/10_P_1448944572085.jpg','2023-04-02 22:31:16',NULL,5),
(13,'goods/images/10_P_1448944572532.jpg','2023-04-02 22:31:16',NULL,5),
(14,'goods/images/10_P_1448944572872.jpg','2023-04-02 22:31:16',NULL,5),
(15,'goods/images/4_P_1448945381985.jpg','2023-04-02 22:31:16',NULL,6),
(16,'goods/images/4_P_1448945381013.jpg','2023-04-02 22:31:16',NULL,6),
(17,'goods/images/8_P_1448945032810.jpg','2023-04-02 22:31:16',NULL,7),
(18,'goods/images/8_P_1448945032646.jpg','2023-04-02 22:31:16',NULL,7),
(19,'goods/images/11_P_1448944388277.jpg','2023-04-02 22:31:16',NULL,8),
(20,'goods/images/11_P_1448944388034.jpg','2023-04-02 22:31:16',NULL,8),
(21,'goods/images/11_P_1448944388201.jpg','2023-04-02 22:31:16',NULL,8),
(22,'goods/images/6_P_1448945167279.jpg','2023-04-02 22:31:16',NULL,9),
(23,'goods/images/6_P_1448945167015.jpg','2023-04-02 22:31:16',NULL,9),
(24,'goods/images/9_P_1448944791617.jpg','2023-04-02 22:31:16',NULL,10),
(25,'goods/images/9_P_1448944791129.jpg','2023-04-02 22:31:16',NULL,10),
(26,'goods/images/9_P_1448944791077.jpg','2023-04-02 22:31:16',NULL,10),
(27,'goods/images/9_P_1448944791229.jpg','2023-04-02 22:31:16',NULL,10),
(28,'goods/images/3_P_1448945490837.jpg','2023-04-02 22:31:16',NULL,11),
(29,'goods/images/3_P_1448945490084.jpg','2023-04-02 22:31:16',NULL,11),
(30,'goods/images/48_P_1448943988970.jpg','2023-04-02 22:31:16',NULL,12),
(31,'goods/images/48_P_1448943988898.jpg','2023-04-02 22:31:16',NULL,12),
(32,'goods/images/48_P_1448943988439.jpg','2023-04-02 22:31:16',NULL,12),
(33,'goods/images/5_P_1448945270390.jpg','2023-04-02 22:31:16',NULL,13),
(34,'goods/images/5_P_1448945270067.jpg','2023-04-02 22:31:16',NULL,13),
(35,'goods/images/5_P_1448945270432.jpg','2023-04-02 22:31:16',NULL,13),
(36,'images/201705/goods_img/53_P_1495068879687.jpg','2023-04-02 22:31:16',NULL,14),
(37,'goods/images/16_P_1448947194687.jpg','2023-04-02 22:31:16',NULL,15),
(38,'goods/images/14_P_1448947354031.jpg','2023-04-02 22:31:16',NULL,16),
(39,'goods/images/14_P_1448947354433.jpg','2023-04-02 22:31:16',NULL,16),
(40,'goods/images/12_P_1448947547989.jpg','2023-04-02 22:31:16',NULL,17),
(41,'goods/images/46_P_1448946598711.jpg','2023-04-02 22:31:16',NULL,18),
(42,'goods/images/46_P_1448946598301.jpg','2023-04-02 22:31:16',NULL,18),
(43,'goods/images/21_P_1448946793276.jpg','2023-04-02 22:31:16',NULL,19),
(44,'goods/images/21_P_1448946793153.jpg','2023-04-02 22:31:16',NULL,19),
(45,'goods/images/15_P_1448947257324.jpg','2023-04-02 22:31:16',NULL,20),
(46,'goods/images/15_P_1448947257580.jpg','2023-04-02 22:31:16',NULL,20),
(47,'goods/images/13_P_1448947460386.jpg','2023-04-02 22:31:16',NULL,21),
(48,'goods/images/13_P_1448947460276.jpg','2023-04-02 22:31:16',NULL,21),
(49,'goods/images/13_P_1448947460353.jpg','2023-04-02 22:31:16',NULL,21),
(50,'goods/images/50_P_1448946543091.jpg','2023-04-02 22:31:16',NULL,22),
(51,'goods/images/50_P_1448946542182.jpg','2023-04-02 22:31:16',NULL,22),
(52,'goods/images/51_P_1448946466595.jpg','2023-04-02 22:31:16',NULL,23),
(53,'goods/images/51_P_1448946466208.jpg','2023-04-02 22:31:16',NULL,23),
(54,'goods/images/17_P_1448947102246.jpg','2023-04-02 22:31:16',NULL,24),
(55,'goods/images/20_P_1448946850602.jpg','2023-04-02 22:31:16',NULL,25),
(56,'goods/images/19_P_1448946951581.jpg','2023-04-02 22:31:16',NULL,26),
(57,'goods/images/19_P_1448946951726.jpg','2023-04-02 22:31:16',NULL,26),
(58,'goods/images/18_P_1448947011435.jpg','2023-04-02 22:31:16',NULL,27),
(59,'goods/images/22_P_1448946729629.jpg','2023-04-02 22:31:16',NULL,28),
(60,'goods/images/45_P_1448946661303.jpg','2023-04-02 22:31:16',NULL,29),
(61,'goods/images/32_P_1448948525620.jpg','2023-04-02 22:31:16',NULL,30),
(62,'goods/images/30_P_1448948663450.jpg','2023-04-02 22:31:16',NULL,31),
(63,'goods/images/30_P_1448948662571.jpg','2023-04-02 22:31:16',NULL,31),
(64,'goods/images/30_P_1448948663221.jpg','2023-04-02 22:31:16',NULL,31),
(65,'goods/images/31_P_1448948598947.jpg','2023-04-02 22:31:16',NULL,32),
(66,'goods/images/31_P_1448948598475.jpg','2023-04-02 22:31:16',NULL,32),
(67,'goods/images/35_P_1448948333610.jpg','2023-04-02 22:31:16',NULL,33),
(68,'goods/images/35_P_1448948333313.jpg','2023-04-02 22:31:16',NULL,33),
(69,'goods/images/36_P_1448948234405.jpg','2023-04-02 22:31:16',NULL,34),
(70,'goods/images/36_P_1448948234250.jpg','2023-04-02 22:31:16',NULL,34),
(71,'goods/images/33_P_1448948479966.jpg','2023-04-02 22:31:16',NULL,35),
(72,'goods/images/33_P_1448948479886.jpg','2023-04-02 22:31:16',NULL,35),
(73,'goods/images/34_P_1448948399009.jpg','2023-04-02 22:31:16',NULL,36),
(74,'goods/images/43_P_1448948762645.jpg','2023-04-02 22:31:16',NULL,37),
(75,'goods/images/38_P_1448949220255.jpg','2023-04-02 22:31:16',NULL,38),
(76,'goods/images/44_P_1448948850187.jpg','2023-04-02 22:31:16',NULL,39),
(77,'images/201511/goods_img/49_P_1448162819889.jpg','2023-04-02 22:31:16',NULL,40),
(78,'goods/images/40_P_1448949038702.jpg','2023-04-02 22:31:16',NULL,41),
(79,'goods/images/39_P_1448949115481.jpg','2023-04-02 22:31:16',NULL,42),
(80,'goods/images/41_P_1448948980358.jpg','2023-04-02 22:31:16',NULL,43),
(81,'goods/images/37_P_1448949284365.jpg','2023-04-02 22:31:16',NULL,44),
(82,'goods/images/42_P_1448948895193.jpg','2023-04-02 22:31:16',NULL,45),
(83,'goods/images/27_P_1448947771805.jpg','2023-04-02 22:31:16',NULL,46),
(84,'goods/images/23_P_1448948070348.jpg','2023-04-02 22:31:16',NULL,47),
(85,'goods/images/26_P_1448947825754.jpg','2023-04-02 22:31:16',NULL,48),
(86,'goods/images/28_P_1448947699948.jpg','2023-04-02 22:31:16',NULL,49),
(87,'goods/images/28_P_1448947699777.jpg','2023-04-02 22:31:16',NULL,49),
(88,'goods/images/24_P_1448948023823.jpg','2023-04-02 22:31:16',NULL,50),
(89,'goods/images/24_P_1448948023977.jpg','2023-04-02 22:31:16',NULL,50),
(90,'goods/images/25_P_1448947875346.jpg','2023-04-02 22:31:16',NULL,51),
(91,'goods/images/29_P_1448947631994.jpg','2023-04-02 22:31:16',NULL,52),
(92,'goods/微信图片_20230519212534.jpg','2023-05-19 21:26:39',5,1),
(93,'goods/微信图片_20230519212542_2Huk0eI.jpg','2023-05-19 21:41:42',5,1),
(94,'goods/TITANS_20230519_214700.jpg','2023-05-19 21:55:13',1,1),
(95,'goods/TITANS_20230519_220226.jpg','2023-05-19 22:05:34',6,1),
(96,'goods/TITANS_20230519_220228_VpjHMzB.jpg','2023-05-19 22:09:17',6,1),
(97,'goods/TITANS_20230519_221053.jpg','2023-05-19 22:15:13',7,1),
(98,'goods/TITANS_20230519_221705_UmWnij3.jpg','2023-05-19 22:19:53',8,1),
(99,'goods/TITANS_20230519_222401_DAv9882.jpg','2023-05-19 22:27:24',9,1),
(100,'goods/TITANS_20230519_223134.jpg','2023-05-19 22:34:13',10,1),
(101,'goods/TITANS_20230519_223548_HGfHeuF.jpg','2023-05-19 22:39:55',11,4),
(102,'goods/TITANS_20230519_224343_rKQzFRz.jpg','2023-05-19 22:54:45',12,1),
(103,'goods/TITANS_20230519_224339.jpg','2023-05-19 22:58:35',12,1),
(104,'goods/TITANS_20230519_223553.jpg','2023-05-19 23:01:18',11,1),
(105,'goods/TITANS_20230519_223135_0oPMRtK.jpg','2023-05-19 23:03:20',10,1),
(106,'goods/TITANS_20230519_222400.jpg','2023-05-19 23:04:39',9,1),
(107,'goods/TITANS_20230519_221702.jpg','2023-05-19 23:05:09',8,1),
(108,'goods/TITANS_20230519_221055_A490ovw.jpg','2023-05-19 23:05:46',7,1),
(109,'goods/TITANS_20230519_220240_AcwiaYZ.jpg','2023-05-19 23:07:15',6,1),
(110,'goods/TITANS_20230519_223556_PnHQR9p.jpg','2023-05-19 23:10:11',11,1),
(111,'goods/TITANS_20230519_223138_jznH4bL.jpg','2023-05-19 23:10:49',10,1),
(112,'goods/TITANS_20230519_221058_y9dPJWi.jpg','2023-05-19 23:12:58',7,1),
(113,'goods/TITANS_20230519_214709_rKjZZv6.jpg','2023-05-19 23:14:03',1,1),
(114,'goods/TITANS_20230519_231602.jpg','2023-05-19 23:18:40',13,1),
(115,'goods/TITANS_20230519_231604.jpg','2023-05-19 23:18:40',13,1),
(116,'goods/TITANS_20230519_231605.jpg','2023-05-19 23:18:40',13,1),
(117,'goods/TITANS_20230519_231605_1VofCgj.jpg','2023-05-19 23:18:40',13,1),
(118,'goods/TITANS_20230519_232324.jpg','2023-05-19 23:33:27',14,1),
(119,'goods/TITANS_20230519_233405.jpg','2023-05-19 23:36:15',15,1),
(120,'goods/TITANS_20230519_232322.jpg','2023-05-19 23:38:45',14,1),
(121,'goods/TITANS_20230519_233406_dhRfKUM.jpg','2023-05-19 23:39:07',15,1),
(122,'goods/TITANS_20230519_233939.jpg','2023-05-19 23:41:54',16,1),
(123,'goods/TITANS_20230519_234352.jpg','2023-05-19 23:47:13',17,1),
(124,'goods/TITANS_20230519_234816_PDOJIIV.jpg','2023-05-19 23:50:17',18,1),
(125,'goods/TITANS_20230519_235112.jpg','2023-05-19 23:53:06',19,1),
(126,'goods/TITANS_20230519_233944_ExLFNA9.jpg','2023-05-19 23:53:58',16,1),
(127,'goods/TITANS_20230519_234353.jpg','2023-05-19 23:55:04',17,1),
(128,'goods/TITANS_20230519_234812.jpg','2023-05-19 23:55:26',18,1),
(129,'goods/TITANS_20230519_235120.jpg','2023-05-19 23:55:50',19,1),
(130,'goods/TITANS_20230519_235637.jpg','2023-05-20 00:01:54',20,2),
(131,'goods/TITANS_20230520_000538.jpg','2023-05-20 00:06:32',21,2),
(132,'goods/TITANS_20230519_235644.jpg','2023-05-20 00:07:30',20,2),
(133,'goods/TITANS_20230520_000538_0Ca82Na.jpg','2023-05-20 00:07:57',21,1),
(134,'goods/TITANS_20230520_001140.jpg','2023-05-20 00:15:45',22,2),
(135,'goods/TITANS_20230520_001145_h4BSlus.jpg','2023-05-20 00:16:37',22,2),
(136,'goods/TITANS_20230520_002027.jpg','2023-05-20 00:21:32',23,2),
(137,'goods/TITANS_20230520_002024.jpg','2023-05-20 00:22:21',23,2),
(138,'goods/TITANS_20230520_002024_Mu9nxNu.jpg','2023-05-20 00:22:26',23,2),
(139,'goods/TITANS_20230520_002024_104fqQh.jpg','2023-05-20 00:22:38',23,2),
(140,'goods/TITANS_20230520_002708.jpg','2023-05-20 00:28:47',24,2),
(141,'goods/TITANS_20230520_002712_dX6i16z.jpg','2023-05-20 00:29:07',24,1),
(142,'goods/TITANS_20230520_002708_CHGyWiK.jpg','2023-05-20 00:30:30',24,2),
(143,'goods/TITANS_20230520_003157.jpg','2023-05-20 00:35:31',25,2),
(144,'goods/TITANS_20230520_003202_5lf01ld.jpg','2023-05-20 00:36:12',25,2),
(145,'goods/TITANS_20230520_140917.jpg','2023-05-20 14:12:48',26,2),
(146,'goods/TITANS_20230520_140921_QubbJLm.jpg','2023-05-20 14:13:28',26,2),
(147,'goods/TITANS_20230520_141414.jpg','2023-05-20 14:16:58',27,2),
(148,'goods/TITANS_20230520_141417_V327JcO.jpg','2023-05-20 14:17:24',27,2),
(149,'goods/TITANS_20230520_141825.jpg','2023-05-20 14:24:34',28,2),
(150,'goods/TITANS_20230520_141827_LEJ6y17.jpg','2023-05-20 14:25:19',28,2),
(151,'goods/TITANS_20230520_141825_z0AYcf7.jpg','2023-05-20 14:27:12',28,2),
(152,'goods/TITANS_20230520_142819.jpg','2023-05-20 14:30:25',29,2),
(153,'goods/TITANS_20230520_142823_rTRKnKN.jpg','2023-05-20 14:31:02',29,2),
(154,'goods/TITANS_20230520_143159.jpg','2023-05-20 14:34:26',30,2),
(155,'goods/TITANS_20230520_143202_Hea7lWN.jpg','2023-05-20 14:35:04',30,2),
(156,'goods/TITANS_20230520_143614.jpg','2023-05-20 14:38:54',31,2),
(157,'goods/TITANS_20230520_143622_fa91LFB.jpg','2023-05-20 14:39:22',31,2),
(158,'goods/TITANS_20230520_144156_PuOSi12.jpg','2023-05-20 14:53:18',32,2),
(159,'goods/TITANS_20230520_144158.jpg','2023-05-20 14:53:52',32,2),
(160,'goods/TITANS_20230520_144200_WhUdiLj.jpg','2023-05-20 14:54:41',32,2),
(161,'goods/TITANS_20230520_145536.jpg','2023-05-20 14:58:08',33,2),
(162,'goods/TITANS_20230520_145535_6KK2Nlh.jpg','2023-05-20 14:58:55',33,2),
(163,'goods/TITANS_20230520_150226_d25gmtg.jpg','2023-05-20 15:09:03',34,2),
(164,'goods/TITANS_20230520_150227.jpg','2023-05-20 15:09:29',34,2),
(165,'goods/TITANS_20230520_150239_EIz57VV.jpg','2023-05-20 15:10:09',34,2),
(166,'goods/TITANS_20230520_151442.jpg','2023-05-20 15:18:10',35,2),
(167,'goods/TITANS_20230520_152004.jpg','2023-05-20 15:21:52',36,2),
(168,'goods/TITANS_20230520_152006_w4I3Bo1.jpg','2023-05-20 15:22:15',36,2),
(169,'goods/TITANS_20230520_152438.jpg','2023-05-20 15:27:03',37,2),
(170,'goods/TITANS_20230520_152450_16XxymT.jpg','2023-05-20 15:28:16',37,2),
(171,'goods/TITANS_20230520_153406.jpg','2023-05-20 15:36:26',38,2),
(172,'goods/TITANS_20230520_153408_2bStLCj.jpg','2023-05-20 15:37:01',38,2),
(173,'goods/TITANS_20230520_153935.jpg','2023-05-20 15:43:53',39,2),
(174,'goods/TITANS_20230520_153938.jpg','2023-05-20 15:44:21',39,2),
(175,'goods/TITANS_20230520_154649.jpg','2023-05-20 15:51:43',40,3),
(176,'goods/TITANS_20230520_154657_KnQHfd5.jpg','2023-05-20 15:52:15',40,3),
(177,'goods/TITANS_20230520_155336.jpg','2023-05-20 15:55:25',41,3),
(178,'goods/TITANS_20230520_155334_IKhtjvs.jpg','2023-05-20 15:55:53',41,3),
(179,'goods/TITANS_20230520_155647.jpg','2023-05-20 15:59:09',42,3),
(180,'goods/TITANS_20230520_155651_HhIG6VZ.jpg','2023-05-20 15:59:34',42,3),
(181,'goods/TITANS_20230520_160126.jpg','2023-05-20 16:03:43',43,3),
(182,'goods/TITANS_20230520_160127_hujFjKO.jpg','2023-05-20 16:04:15',43,3),
(183,'goods/TITANS_20230520_160552.jpg','2023-05-20 16:09:49',44,3),
(184,'goods/TITANS_20230520_160604_wuaXwfG.jpg','2023-05-20 16:10:26',44,3),
(185,'goods/TITANS_20230520_161224.jpg','2023-05-20 16:14:34',45,3),
(186,'goods/TITANS_20230520_161228_22YTYhs.jpg','2023-05-20 16:14:57',45,3),
(187,'goods/TITANS_20230520_161549.jpg','2023-05-20 16:17:49',46,3),
(188,'goods/TITANS_20230520_161552_eV8fBDK.jpg','2023-05-20 16:18:10',46,3),
(189,'goods/TITANS_20230520_162225.jpg','2023-05-20 16:27:34',47,3),
(190,'goods/TITANS_20230520_162830.jpg','2023-05-20 16:30:50',48,3),
(191,'goods/TITANS_20230520_162834.jpg','2023-05-20 16:31:26',48,3),
(192,'goods/TITANS_20230520_163210.jpg','2023-05-20 16:34:27',49,3),
(193,'goods/TITANS_20230520_163217_HbHi8Ka.jpg','2023-05-20 16:35:01',49,3),
(194,'goods/TITANS_20230520_163659.jpg','2023-05-20 16:39:31',50,3),
(195,'goods/TITANS_20230520_164012.jpg','2023-05-20 16:42:24',51,3),
(196,'goods/TITANS_20230520_164034_5xKt7RL.jpg','2023-05-20 16:42:46',51,3),
(197,'goods/TITANS_20230520_164515.jpg','2023-05-20 16:47:52',52,4),
(198,'goods/TITANS_20230520_164528_KqSSvsH.jpg','2023-05-20 16:48:30',52,4),
(199,'goods/TITANS_20230520_164951.jpg','2023-05-20 17:01:00',53,3),
(200,'goods/TITANS_20230520_164948_2EvKyC9.jpg','2023-05-20 17:01:48',53,4),
(201,'goods/TITANS_20230520_170321.jpg','2023-05-20 17:05:21',54,4),
(202,'goods/TITANS_20230520_170323_B4bfXvC.jpg','2023-05-20 17:06:15',54,4),
(203,'goods/TITANS_20230520_170720.jpg','2023-05-20 17:09:33',55,4),
(204,'goods/TITANS_20230520_170722_DVOLLnU.jpg','2023-05-20 17:10:08',55,4),
(205,'goods/TITANS_20230520_171203.jpg','2023-05-20 17:14:07',56,1),
(206,'goods/TITANS_20230520_171206_EWyfZNK.jpg','2023-05-20 17:14:31',56,4),
(207,'goods/TITANS_20230520_171650_cvRltBL.jpg','2023-05-20 17:19:08',57,4),
(208,'goods/TITANS_20230520_171652.jpg','2023-05-20 17:19:42',57,4),
(209,'goods/TITANS_20230520_171654_dMhlAQU.jpg','2023-05-20 17:20:20',57,4),
(210,'goods/TITANS_20230520_172108.jpg','2023-05-20 17:23:19',58,4),
(211,'goods/TITANS_20230520_172114_uSCZGIN.jpg','2023-05-20 17:23:48',58,4),
(212,'goods/TITANS_20230520_172445.jpg','2023-05-20 17:26:28',59,4),
(213,'goods/TITANS_20230520_172450_sevaoku.jpg','2023-05-20 17:26:52',59,4),
(214,'goods/TITANS_20230520_172752.jpg','2023-05-20 17:30:07',60,4),
(215,'goods/TITANS_20230520_172755_gFCBmpP.jpg','2023-05-20 17:30:38',60,4),
(216,'goods/TITANS_20230520_173247.jpg','2023-05-20 17:35:33',61,4),
(217,'goods/TITANS_20230520_173252_rZaQTQH.jpg','2023-05-20 17:36:10',61,4),
(218,'goods/TITANS_20230520_174728.jpg','2023-05-20 17:49:32',62,5),
(219,'goods/TITANS_20230520_174729_wzbWlqN.jpg','2023-05-20 17:50:00',62,5),
(220,'goods/TITANS_20230520_175052.jpg','2023-05-20 17:53:00',63,5),
(221,'goods/TITANS_20230520_175054_iTLTMXa.jpg','2023-05-20 17:53:27',63,5),
(222,'goods/TITANS_20230520_175422.jpg','2023-05-20 17:56:29',64,5),
(223,'goods/TITANS_20230520_175424_AFLJY9c.jpg','2023-05-20 17:56:54',64,5),
(224,'goods/TITANS_20230520_175740.jpg','2023-05-20 17:59:29',65,5),
(225,'goods/TITANS_20230520_175741_FnB7XNS.jpg','2023-05-20 18:00:42',65,5),
(226,'goods/TITANS_20230520_180143.jpg','2023-05-20 18:03:13',66,5),
(227,'goods/TITANS_20230520_180357.jpg','2023-05-20 18:05:46',67,5),
(228,'goods/TITANS_20230520_180358_2BDpYeJ.jpg','2023-05-20 18:06:08',67,5),
(229,'goods/TITANS_20230520_180652.jpg','2023-05-20 18:09:15',68,5),
(230,'goods/TITANS_20230520_181008.jpg','2023-05-20 18:14:14',69,5),
(231,'goods/TITANS_20230520_181010_Kmp22fe.jpg','2023-05-20 18:14:39',69,5),
(232,'goods/TITANS_20230520_181531.jpg','2023-05-20 18:17:43',70,5),
(233,'goods/TITANS_20230520_181532_fm3zYhq.jpg','2023-05-20 18:20:14',70,5),
(234,'goods/TITANS_20230520_182236.jpg','2023-05-20 18:24:35',71,5),
(235,'goods/TITANS_20230520_182237_W28Bqe9.jpg','2023-05-20 18:25:06',71,5),
(236,'goods/TITANS_20230520_205945.jpg','2023-05-20 21:09:43',72,5),
(237,'goods/TITANS_20230520_205947_7VcDXM7.jpg','2023-05-20 21:10:37',72,5),
(238,'goods/TITANS_20230520_211134.jpg','2023-05-20 21:14:19',73,5),
(240,'goods/TITANS_20230520_211634.jpg','2023-05-20 21:19:52',75,5),
(241,'goods/TITANS_20230520_211636_mCye41f.jpg','2023-05-20 21:20:20',75,5),
(242,'goods/TITANS_20230520_212217.jpg','2023-05-20 21:43:43',76,5),
(243,'goods/TITANS_20230520_214444.jpg','2023-05-20 21:48:43',77,5),
(244,'goods/TITANS_20230520_214446_5rTlvWl.jpg','2023-05-20 21:49:16',77,5),
(245,'goods/TITANS_20230520_215004_7MteIwl.jpg','2023-05-20 21:52:50',78,5),
(246,'goods/TITANS_20230520_214947.jpg','2023-05-20 21:53:18',78,5),
(247,'goods/TITANS_20230520_215410.jpg','2023-05-20 21:55:57',79,5),
(248,'goods/TITANS_20230520_215619.jpg','2023-05-20 21:58:57',80,5),
(249,'goods/TITANS_20230520_215620_kfefB2d.jpg','2023-05-20 21:59:20',80,5),
(250,'goods/TITANS_20230520_220017.jpg','2023-05-20 22:02:24',81,5),
(251,'goods/TITANS_20230520_220323.jpg','2023-05-20 22:11:04',82,5),
(252,'goods/TITANS_20230520_221329.jpg','2023-05-20 22:17:29',83,5),
(253,'goods/TITANS_20230520_221833.jpg','2023-05-20 22:21:17',84,6),
(254,'goods/TITANS_20230520_221837_qaY57aN.jpg','2023-05-20 22:21:43',84,6),
(256,'goods/TITANS_20230520_222228_VcUpD3x.jpg','2023-05-20 22:31:25',86,6),
(257,'goods/TITANS_20230520_223205.jpg','2023-05-20 22:42:02',87,6),
(258,'goods/TITANS_20230520_223211_JLcJTNL.jpg','2023-05-20 22:42:27',87,6),
(259,'goods/TITANS_20230520_224526.jpg','2023-05-20 22:48:31',88,6),
(260,'goods/TITANS_20230520_224530_AgKXhFf.jpg','2023-05-20 22:48:55',88,6),
(261,'goods/TITANS_20230520_224949.jpg','2023-05-20 22:52:16',89,6),
(262,'goods/TITANS_20230520_224951_zIjZ0jo.jpg','2023-05-20 22:52:42',89,6),
(263,'goods/TITANS_20230520_225957.jpg','2023-05-20 23:02:35',90,6),
(264,'goods/TITANS_20230520_225958_RwDTA7u.jpg','2023-05-20 23:03:15',90,6),
(265,'goods/TITANS_20230520_230401.jpg','2023-05-20 23:05:50',91,6);
/*!40000 ALTER TABLE `df_goods_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_sku`
--

DROP TABLE IF EXISTS `df_goods_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_sku` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unite` varchar(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `stock` int NOT NULL,
  `sales` int NOT NULL,
  `click_num` int NOT NULL,
  `fav_num` int NOT NULL,
  `status` smallint NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `is_recommend` tinyint(1) NOT NULL,
  `add_time` datetime NOT NULL,
  `goods_id` int NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_sku_goods_id_31622280_fk_df_goods_id` (`goods_id`),
  KEY `df_goods_sku_type_id_576de3b4_fk_df_goods_type_id` (`type_id`),
  CONSTRAINT `df_goods_sku_goods_id_31622280_fk_df_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods` (`id`),
  CONSTRAINT `df_goods_sku_type_id_576de3b4_fk_df_goods_type_id` FOREIGN KEY (`type_id`) REFERENCES `df_goods_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_sku`
--

LOCK TABLES `df_goods_sku` WRITE;
/*!40000 ALTER TABLE `df_goods_sku` DISABLE KEYS */;
INSERT INTO `df_goods_sku` VALUES
(1,'陕西礼泉红富士','甘甜爽口',13.00,'1.5kg','goods/images/TITANS_20230519_214658_EAaGO4r.jpg',109,20,19,6,1,1,0,0,'2023-04-19 03:10:00',1,1),
(2,'越南芒果','新鲜越南芒果',29.90,'2.5kg','\\goods\\images\\R.jpg',120,25,38,99,1,1,1,1,'2023-05-14 05:07:08',1,1),
(4,'基围虾','有些像皮皮虾的美味大虾',100.90,'500g','\\goods\\images\\goods023.jpg',10,2,12,4,1,1,0,1,'2023-05-14 12:20:38',53,2),
(5,'油桃','香甜可口，皮薄多汁',10.00,'500','goods/images/微信图片_20230519212521.jpg',0,0,12,1,1,1,0,1,'2023-05-19 21:13:00',1,1),
(6,'陕西阎良甜瓜','甘甜多汁',5.99,'3斤','goods/images/TITANS_20230519_220242_BganTmY.jpg',158,60,33,23,1,1,0,0,'2023-04-13 21:58:00',1,1),
(7,'云南高山蓝莓','清爽鲜香',5.99,'125g','goods/images/TITANS_20230519_221034_vi3RrrO.jpg',142,50,40,15,1,1,0,0,'2023-04-03 22:05:00',1,1),
(8,'陕西蒲城酥梨','脆甜多汁',7.66,'2斤','goods/images/TITANS_20230519_221629_JCchT6Q.jpg',138,80,36,20,1,1,0,0,'2023-04-07 22:15:00',1,1),
(9,'山东羊角蜜','脆甜肉厚',14.00,'3斤','goods/images/TITANS_20230519_222356_Nd99Tvw.jpg',179,70,43,30,1,1,0,0,'2023-04-20 22:25:00',1,1),
(10,'海南超甜香蕉','果香芬芳',3.20,'500g','goods/images/TITANS_20230519_223129_nYMwMSI.jpg',97,80,62,59,1,1,1,0,'2023-04-10 22:31:00',1,1),
(11,'枇杷','果实饱满',12.00,'500g','goods/images/TITANS_20230519_223546_3dtZZCL.jpg',77,50,36,20,1,1,0,0,'2023-05-19 22:36:00',1,1),
(12,'百花香桃','脆甜爆汁',5.99,'500g','goods/images/TITANS_20230519_224341_vPz1hEs.jpg',96,70,54,40,1,1,1,0,'2023-05-01 22:50:00',1,1),
(13,'陕西大黄杏','多汁爽口',4.60,'500g','goods/images/TITANS_20230519_231559.jpg',130,40,33,20,1,1,0,0,'2023-04-30 23:16:00',1,1),
(14,'姊归伦晚橙','甘甜多汁',10.99,'3斤','goods/images/TITANS_20230519_232314_iqAER5G.jpg',140,50,26,15,1,1,0,0,'2023-03-30 23:30:00',1,1),
(15,'山东绿宝甜瓜','果香清新诱人',5.50,'500g','goods/images/TITANS_20230519_233404_Th878YI.jpg',97,60,53,42,1,1,0,0,'2023-04-01 23:33:00',1,1),
(16,'云南阳光玫瑰','颜值高甜度高',9.99,'250g','goods/images/TITANS_20230519_233938_i1dtncB.jpg',117,50,32,20,1,1,0,0,'2023-04-04 23:40:00',1,1),
(17,'安岳黄柠檬','酸爽多汁',2.99,'500g','goods/images/TITANS_20230519_234350_0yDSKzk.jpg',80,50,21,20,1,1,0,0,'2023-03-29 23:46:00',1,1),
(18,'海南冰糖麒麟西瓜','皮薄味甜',12.99,'3斤','goods/images/TITANS_20230519_234811_lYCZnkG.jpg',179,100,80,62,1,1,1,0,'2023-04-20 23:48:00',1,1),
(19,'泰国金枕榴莲','果肉色泽金黄',49.99,'2斤','goods/images/TITANS_20230519_235110_OGQPQBr.jpg',101,50,31,19,1,1,0,0,'2023-05-19 23:51:00',1,1),
(20,'酷力鲜冻龙虾尾','肉质鲜嫩',22.99,'1kg','goods/images/TITANS_20230519_235636_ReVKM84.jpg',143,100,81,72,1,1,1,0,'2023-03-15 23:55:00',2,2),
(21,'鲜活大花甲','质优价美',7.99,'1kg','goods/images/TITANS_20230520_000535_Ur9mH5t.jpg',80,50,40,20,1,1,0,0,'2023-03-23 00:02:00',2,2),
(22,'优质带鱼段','刺少肉糯',8.99,'500g','goods/images/TITANS_20230520_001138_GFuBPZd.jpg',104,69,82,50,1,1,0,0,'2023-03-31 00:12:00',2,2),
(23,'鲜活鲫鱼','口感新鲜嫩弹',12.99,'500g','goods/images/TITANS_20230520_002015_CC8HBsa.jpg',158,90,111,80,1,1,0,0,'2023-04-05 00:18:00',2,2),
(24,'墨仔湾脆口鱿鱼须','肉厚味鲜嫩滑爽口',9.99,'500g','goods/images/TITANS_20230520_002705_mHNLbEX.jpg',140,76,97,70,1,1,0,0,'2023-04-04 00:24:00',2,2),
(25,'特大号海水大虾','肉质Q弹',16.50,'500g','goods/images/TITANS_20230520_003154_EoW8H1w.jpg',179,130,161,120,1,1,1,0,'2023-04-01 00:32:00',2,2),
(26,'鲜活小龙虾','口感鲜嫩弹牙',29.99,'1kg','goods/images/TITANS_20230520_140915_bADR8ch.jpg',150,80,100,50,1,1,0,0,'2023-04-05 14:09:00',2,2),
(27,'精品大生蚝','肥美多汁',12.50,'1kg','goods/images/TITANS_20230520_141413_mrFnkxO.jpg',93,50,71,30,1,1,0,0,'2023-04-19 14:14:00',2,2),
(28,'手工鲜剥青岛特大海虾仁','新鲜海捕速冻',9.99,'250g','goods/images/TITANS_20230520_141824_l2skvh7.jpg',160,70,101,50,1,1,0,0,'2023-04-04 14:21:00',2,2),
(29,'深海鳕鱼片','鲜香细腻美味',14.99,'350g','goods/images/TITANS_20230520_142817_RdGFkVu.jpg',110,70,101,50,1,1,0,0,'2023-03-31 14:28:00',2,2),
(30,'优质巴沙鱼柳','肉质营养美味',11.50,'500g','goods/images/TITANS_20230520_143156_vmt7VFe.jpg',160,100,130,80,1,1,1,0,'2023-03-29 14:32:00',2,2),
(31,'现杀鲈鱼','肉质鲜嫩',12.50,'500g','goods/images/TITANS_20230520_143610_UXVn99Y.jpg',180,100,141,60,1,1,0,0,'2023-03-31 14:37:00',2,2),
(32,'鲜活大黑鱼','肉质肥美鲜香',23.99,'700g','goods/images/TITANS_20230520_144155_vboj3pt.jpg',150,110,131,80,1,1,1,0,'2023-03-29 14:50:00',2,2),
(33,'浙江东海小黄鱼','口感鲜香',12.00,'1kg','goods/images/TITANS_20230520_145534_fNSk5X2.jpg',130,70,101,30,1,1,0,0,'2023-04-11 14:56:00',2,2),
(34,'明泰鲳鱼包冰率30%','稀少肉厚',10.75,'1kg','goods/images/TITANS_20230520_150224_rAPVz1l.jpg',130,70,100,50,1,1,0,0,'2023-04-01 15:07:00',2,2),
(35,'生猛海霸鲜冻梭子蟹','美味如初',10.99,'600g','goods/images/TITANS_20230520_151134.jpg',127,90,122,50,1,1,0,0,'2023-03-30 15:15:00',2,2),
(36,'国产冰鲜三文雨','口感绵密',36.99,'250g','goods/images/TITANS_20230520_152003_dGi0Xl0.jpg',100,70,130,30,1,1,0,0,'2023-03-14 15:20:00',2,2),
(37,'小耗儿鱼','火锅优选',13.99,'500g','goods/images/TITANS_20230520_152437_LKrads3.jpg',150,60,94,35,1,1,0,0,'2023-04-10 15:25:00',2,2),
(38,'刀禾鲜火箭鱿鱼','爆炒美味',12.99,'400g','goods/images/TITANS_20230520_153405_xiegNfX.jpg',130,80,100,60,1,1,0,0,'2023-03-21 15:28:00',2,2),
(39,'海捕盐冻大虾','虾肉肥腴',21.99,'500g','goods/images/TITANS_20230520_153929_EgBc7z6.jpg',110,80,130,50,1,1,0,0,'2023-04-18 15:39:00',2,2),
(40,'何战库鲜猪大里脊','肉美不油腻',12.99,'400g','goods/images/TITANS_20230520_154647_unM41W0.jpg',180,100,130,90,1,1,0,1,'2023-04-10 15:47:00',3,3),
(41,'雨润新鲜五花肉','肥瘦相间',11.68,'500g','goods/images/TITANS_20230520_155332_alBB4R9.jpg',158,95,136,78,1,1,0,0,'2023-03-14 15:53:00',3,3),
(42,'雨润鲜前腿肉','鲜香不腻',9.86,'500g','goods/images/TITANS_20230520_155641_XYBOXhk.jpg',130,85,120,50,1,1,0,0,'2013-03-20 15:57:00',3,3),
(43,'双汇新鲜猪绞肉','醇香可口',8.95,'400g','goods/images/TITANS_20230520_160124_KbdOYM7.jpg',170,100,130,80,1,1,1,0,'2023-03-20 16:01:00',3,3),
(44,'鲁鸢德风猪蹄块','满满胶原蛋白',10.90,'500g','goods/images/TITANS_20230520_160548_OQUci8T.jpg',130,70,100,40,1,1,0,0,'2023-04-10 16:06:00',3,3),
(45,'精选优质牛腿肉','肉质鲜嫩',18.80,'500g','goods/images/TITANS_20230520_161222_FTUjCWu.jpg',149,70,131,30,1,1,0,0,'2023-03-14 16:13:00',3,3),
(46,'佑伊牧场羊排骨','肥瘦比例均衡',15.99,'500g','goods/images/TITANS_20230520_161548_8EtS9tb.jpg',137,68,89,46,1,1,0,0,'2023-04-05 16:16:00',3,3),
(47,'麻辣牛肉','涮煎烤炸',9.88,'150g','goods/images/TITANS_20230520_162224.jpg',150,80,121,50,1,1,0,0,'2023-04-04 16:22:00',3,3),
(48,'蒙得去骨羊腿肉','烧烤佳选',25.72,'500g','goods/images/TITANS_20230520_162828_bPGRUvT.jpg',130,70,120,45,1,1,0,0,'2023-03-30 16:28:00',3,3),
(49,'精选好品质切块牛腩','调理肉类',21.99,'500g','goods/images/TITANS_20230520_163209_t1vm90R.jpg',140,80,120,66,1,1,0,0,'2023-03-30 16:32:00',3,3),
(50,'内蒙整条羊腿','醇香美味',85.60,'1.5kg','goods/images/TITANS_20230520_163657.jpg',100,60,86,37,1,1,0,0,'2023-03-28 16:37:00',3,3),
(51,'牧牛伽雪花牛肉牛上脑','肉质鲜嫩',23.99,'500g','goods/images/TITANS_20230520_164010_3qacNq5.jpg',130,85,106,53,1,1,0,0,'2023-04-10 16:40:00',3,3),
(52,'松花蛋4枚','松花完整明显',4.98,'200g','goods/images/TITANS_20230520_164519_5VXhWrD.jpg',170,89,109,72,1,1,0,0,'2023-03-07 16:43:00',4,4),
(53,'胜邮咸鸭蛋','大小均匀',7.99,'35g','goods/images/TITANS_20230520_164949_eR0ZnNz.jpg',135,79,94,58,1,1,0,0,'2023-04-03 16:50:00',4,4),
(54,'鲜鹌鹑蛋','新鲜美味',6.69,'220g','goods/images/TITANS_20230520_170319_8lppUDH.jpg',168,85,100,72,1,1,0,0,'2023-03-22 17:03:00',4,4),
(55,'秦牧原粉壳土鸡蛋30枚','鸡蛋新鲜',18.29,'1.8kg','goods/images/TITANS_20230520_170718_F19gxX9.jpg',156,97,120,85,1,1,0,0,'2023-03-22 17:07:00',4,4),
(56,'邦益店商红壳土鸡蛋','大小均匀',17.99,'1.8kg','goods/images/TITANS_20230520_171201_cbbCyS0.jpg',145,75,120,58,1,1,0,0,'2023-03-24 17:12:00',4,4),
(57,'骏马优鲜鲜冻琵琶腿','肉质鲜嫩',15.95,'1kg','goods/images/TITANS_20230520_171647_DukIqNy.jpg',159,94,128,79,1,1,1,0,'2023-03-21 17:17:00',4,4),
(58,'精选农家乌骨鸡','紧实有嚼劲',31.50,'2斤','goods/images/TITANS_20230520_172107_A0LEoT9.jpg',100,58,79,29,1,1,0,0,'2023-04-18 17:21:00',4,4),
(59,'富瑞达鸡翅','口感新鲜嫩弹',12.86,'500g','goods/images/TITANS_20230520_172443_yEVZbeY.jpg',145,75,98,58,1,1,0,0,'2023-03-30 17:25:00',4,4),
(60,'美味鸡胗','鲜香有嚼劲',7.99,'500g','goods/images/TITANS_20230520_172751_VybkaMm.jpg',128,89,105,60,1,1,0,0,'2023-04-05 17:28:00',4,4),
(61,'祁蒙山散养整只大公鸡','家宴煲汤佳品',3.80,'43.99','goods/images/TITANS_20230520_173245_LYlxZDK.jpg',98,68,92,45,1,0,0,0,'2023-04-26 17:33:00',4,4),
(62,'青尖椒','色泽自然',1.79,'250g','goods/images/TITANS_20230520_174727_UZN4tUW.jpg',180,100,130,86,1,0,0,0,'2023-03-29 17:48:00',5,5),
(63,'小米辣','辣味十足',1.58,'100g','goods/images/TITANS_20230520_175051_n3RvjDu.jpg',174,119,128,100,1,0,1,1,'2023-03-14 17:51:00',5,5),
(64,'新鲜长黄瓜','果实新鲜',1.66,'500g','goods/images/TITANS_20230520_175421_fXiwhc3.jpg',157,128,139,95,1,0,1,0,'2023-03-23 17:54:00',5,5),
(65,'粉西红柿','酸爽爆汁',2.69,'500g','goods/images/TITANS_20230520_175739_85ZJf9C.jpg',175,136,158,108,1,0,1,1,'2023-03-29 17:58:00',5,5),
(66,'无筋豆王','皮薄肉厚多汁',4.96,'500g','goods/images/TITANS_20230520_180142.jpg',102,79,108,50,1,0,0,0,'2023-03-28 18:01:00',5,5),
(67,'香菜','新鲜采摘',0.99,'100g','goods/images/TITANS_20230520_180350_0Osptwj.jpg',98,79,105,49,1,0,0,0,'2023-04-12 18:04:00',5,5),
(68,'菠菜','叶菜新鲜',1.35,'300g','goods/images/TITANS_20230520_180650.jpg',137,100,120,82,1,0,1,0,'2023-03-29 18:07:00',5,5),
(69,'精品小娃娃菜3颗装','菜茎薄又脆',2.75,'600g','goods/images/TITANS_20230520_181006_27Em5Ib.jpg',138,79,108,60,1,0,0,0,'2023-03-09 18:11:00',5,5),
(70,'本地芹菜','口感脆嫩无丝',2.59,'500g','goods/images/TITANS_20230520_181529_zpxeQuX.jpg',128,69,83,50,1,0,0,0,'2023-03-22 18:15:00',5,5),
(71,'现切散菜花','口感清新',2.69,'600g','goods/images/TITANS_20230520_182234_jqzjqrZ.jpg',128,79,95,58,1,0,0,0,'2023-04-11 18:22:00',5,5),
(72,'杏鲍菇','菇肉肥厚粗壮',2.66,'500g','goods/images/TITANS_20230520_205944_9eJ7GsO.jpg',138,79,68,50,1,0,0,0,'2023-04-10 21:00:00',5,5),
(73,'本地新鲜小葱','新鲜美味',1.46,'100g','goods/images/TITANS_20230520_211141.jpg',147,75,98,60,1,0,0,0,'2023-03-19 21:11:00',5,5),
(75,'新鲜脆爽带泥胡萝卜','生吃凉拌皆可',1.58,'500g','goods/images/TITANS_20230520_211632_Zr3PGoX.jpg',98,120,145,100,1,1,1,1,'2023-03-28 21:14:00',5,5),
(76,'云南新土豆','绵软可口',2.88,'500g','goods/images/TITANS_20230520_212216.jpg',145,72,98,50,1,1,0,0,'2023-03-30 21:40:00',5,5),
(77,'新鲜红洋葱','微辣可口多汁',1.69,'1kg','goods/images/TITANS_20230520_214441_vLZLLNY.jpg',134,65,83,37,1,0,0,0,'2023-04-10 21:44:00',5,5),
(78,'大蒜','现挖新鲜',6.49,'2斤','goods/images/TITANS_20230520_214946_4Ybor0f.jpg',95,109,137,89,1,1,1,1,'2023-03-21 21:50:00',5,5),
(79,'山东茄王','外表细长圆滑',4.44,'750g','goods/images/TITANS_20230520_215408.jpg',128,79,106,45,1,1,0,0,'2023-04-18 21:54:00',5,5),
(80,'云南现摘西葫芦','果肉鲜嫩多汁',2.70,'900g','goods/images/TITANS_20230520_215618_m93Vyql.jpg',115,83,109,55,1,0,0,0,'2023-04-06 21:56:00',5,5),
(81,'新脆嫩短蒜苔','细嫩味香甜',2.92,'500g','goods/images/TITANS_20230520_220016.jpg',135,73,118,45,1,0,0,0,'2023-03-22 22:00:00',5,5),
(82,'西兰花','大小均匀',3.98,'500g','goods/images/TITANS_20230520_220322.jpg',105,69,94,34,1,0,0,0,'2023-03-30 22:09:00',5,5),
(83,'蒙牛随芯脆脆饼巧克力雪糕30支','下午茶好伴侣',89.90,'70g','goods/images/TITANS_20230520_221321.jpg',145,180,146,98,1,1,1,0,'2023-04-19 22:12:00',6,6),
(84,'思念小小汤圆三合一组盒装','香滑Q弹',7.51,'300g','goods/images/TITANS_20230520_221832_fR3PumL.jpg',145,72,94,55,1,0,0,0,'2023-03-14 22:18:00',6,6),
(86,'猪肉玉米蒸煎饺','皮薄馅足',10.99,'1kg','goods/images/TITANS_20230520_222223_2rsUvUE.jpg',146,77,102,58,1,0,0,0,'2023-04-04 22:24:00',6,6),
(87,'纯手工杂粮粘豆包','松软可口',5.59,'400g','goods/images/TITANS_20230520_223204_q7FrTRf.jpg',134,73,105,64,1,1,0,0,'2023-03-25 22:37:00',6,6),
(88,'榴莲千层蛋糕6寸','蓬松柔软细腻',6.99,'320g','goods/images/TITANS_20230520_224521_AbZVUZm.jpg',128,68,84,60,1,1,0,0,'2023-03-18 22:46:00',6,6),
(89,'儿童玉米热狗卷6个','鲜香好滋味',7.50,'480g','goods/images/TITANS_20230520_224948_scy6AVC.jpg',115,69,88,50,1,1,0,0,'2023-04-08 22:50:00',6,6),
(90,'奥尔良整片大鸡排','口感细嫩鲜美',18.36,'950g','goods/images/TITANS_20230520_225611_RuAl6uy.jpg',86,108,130,89,1,0,1,1,'2023-03-21 23:00:00',6,6),
(91,'精品春饼','饱腹抗饿',3.48,'170g','goods/images/TITANS_20230520_230359.jpg',100,77,95,62,1,0,1,0,'2023-04-03 23:04:00',6,6);
/*!40000 ALTER TABLE `df_goods_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_type`
--

DROP TABLE IF EXISTS `df_goods_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_type`
--

LOCK TABLES `df_goods_type` WRITE;
/*!40000 ALTER TABLE `df_goods_type` DISABLE KEYS */;
INSERT INTO `df_goods_type` VALUES
(1,'新鲜水果','2017-11-14 05:02:09'),
(2,'海鲜水产','2017-11-14 05:04:32'),
(3,'猪牛羊肉','2017-11-14 05:05:34'),
(4,'禽类蛋品','2017-11-14 05:05:58'),
(5,'新鲜蔬菜','2017-11-14 05:06:32'),
(6,'速冻食品','2017-11-14 05:06:55');
/*!40000 ALTER TABLE `df_goods_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_index_banner`
--

DROP TABLE IF EXISTS `df_index_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_index_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `index` smallint NOT NULL,
  `add_time` datetime NOT NULL,
  `sku_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_index_banner_sku_id_57f2798e_fk_df_goods_sku_id` (`sku_id`),
  CONSTRAINT `df_index_banner_sku_id_57f2798e_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_index_banner`
--

LOCK TABLES `df_index_banner` WRITE;
/*!40000 ALTER TABLE `df_index_banner` DISABLE KEYS */;
INSERT INTO `df_index_banner` VALUES
(1,'/banner/banner1.jpg',0,'2017-11-14 08:48:05',1),
(2,'/banner/banner3.jpg',1,'2023-05-14 05:07:39',2);
/*!40000 ALTER TABLE `df_index_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_index_promotion`
--

DROP TABLE IF EXISTS `df_index_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_index_promotion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `index` smallint NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_index_promotion`
--

LOCK TABLES `df_index_promotion` WRITE;
/*!40000 ALTER TABLE `df_index_promotion` DISABLE KEYS */;
INSERT INTO `df_index_promotion` VALUES
(1,'吃货暑假趴','#','group1/M00/00/00/rBCzg1oKr7aAdR-2AAA2pLUeB609027808',0,'2017-11-17 08:29:08'),
(2,'盛夏尝鲜季','#','group1/M00/00/00/rBCzg1oKr9WADLksAAA98yvCs1I5148432',1,'2017-11-14 08:56:53');
/*!40000 ALTER TABLE `df_index_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(25,'authtoken','token'),
(4,'contenttypes','contenttype'),
(8,'goods','goods'),
(14,'goods','goodscategory'),
(9,'goods','goodsimage'),
(10,'goods','goodssku'),
(11,'goods','goodstype'),
(12,'goods','indexgoodsbanner'),
(13,'goods','indexpromotionbanner'),
(5,'sessions','session'),
(26,'social_django','association'),
(27,'social_django','code'),
(28,'social_django','nonce'),
(30,'social_django','partial'),
(29,'social_django','usersocialauth'),
(15,'trade','ordergoods'),
(16,'trade','orderinfo'),
(17,'trade','shoppingcart'),
(6,'users','userprofile'),
(7,'users','verifycode'),
(18,'user_operation','useraddress'),
(19,'user_operation','userfav'),
(20,'user_operation','userleavingmessage'),
(21,'xadmin','bookmark'),
(24,'xadmin','log'),
(22,'xadmin','usersettings'),
(23,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2023-04-02 21:58:12'),
(2,'contenttypes','0002_remove_content_type_name','2023-04-02 21:58:12'),
(3,'auth','0001_initial','2023-04-02 21:58:12'),
(4,'auth','0002_alter_permission_name_max_length','2023-04-02 21:58:12'),
(5,'auth','0003_alter_user_email_max_length','2023-04-02 21:58:12'),
(6,'auth','0004_alter_user_username_opts','2023-04-02 21:58:12'),
(7,'auth','0005_alter_user_last_login_null','2023-04-02 21:58:12'),
(8,'auth','0006_require_contenttypes_0002','2023-04-02 21:58:12'),
(9,'auth','0007_alter_validators_add_error_messages','2023-04-02 21:58:12'),
(10,'auth','0008_alter_user_username_max_length','2023-04-02 21:58:12'),
(11,'auth','0009_alter_user_last_name_max_length','2023-04-02 21:58:12'),
(12,'users','0001_initial','2023-04-02 21:58:12'),
(13,'admin','0001_initial','2023-04-02 21:58:12'),
(14,'admin','0002_logentry_remove_auto_add','2023-04-02 21:58:12'),
(15,'authtoken','0001_initial','2023-04-02 21:58:12'),
(16,'authtoken','0002_auto_20160226_1747','2023-04-02 21:58:12'),
(17,'goods','0001_initial','2023-04-02 21:58:13'),
(18,'goods','0002_auto_20230402_2156','2023-04-02 21:58:13'),
(19,'goods','0003_goodscategory','2023-04-02 21:58:13'),
(20,'sessions','0001_initial','2023-04-02 21:58:13'),
(21,'default','0001_initial','2023-04-02 21:58:13'),
(22,'social_auth','0001_initial','2023-04-02 21:58:13'),
(23,'default','0002_add_related_name','2023-04-02 21:58:13'),
(24,'social_auth','0002_add_related_name','2023-04-02 21:58:13'),
(25,'default','0003_alter_email_max_length','2023-04-02 21:58:13'),
(26,'social_auth','0003_alter_email_max_length','2023-04-02 21:58:13'),
(27,'default','0004_auto_20160423_0400','2023-04-02 21:58:13'),
(28,'social_auth','0004_auto_20160423_0400','2023-04-02 21:58:13'),
(29,'social_auth','0005_auto_20160727_2333','2023-04-02 21:58:13'),
(30,'social_django','0006_partial','2023-04-02 21:58:13'),
(31,'social_django','0007_code_timestamp','2023-04-02 21:58:13'),
(32,'social_django','0008_partial_timestamp','2023-04-02 21:58:13'),
(33,'trade','0001_initial','2023-04-02 21:58:14'),
(34,'trade','0002_auto_20190224_0327','2023-04-02 21:58:14'),
(35,'user_operation','0001_initial','2023-04-02 21:58:14'),
(36,'xadmin','0001_initial','2023-04-02 21:58:14'),
(37,'xadmin','0002_log','2023-04-02 21:58:14'),
(38,'xadmin','0003_auto_20160715_0100','2023-04-02 21:58:14'),
(39,'social_django','0004_auto_20160423_0400','2023-04-02 21:58:14'),
(40,'social_django','0001_initial','2023-04-02 21:58:14'),
(41,'social_django','0005_auto_20160727_2333','2023-04-02 21:58:14'),
(42,'social_django','0002_add_related_name','2023-04-02 21:58:14'),
(43,'social_django','0003_alter_email_max_length','2023-04-02 21:58:14'),
(44,'goods','0004_goodsimage_goods','2023-04-02 22:17:01'),
(45,'goods','0005_auto_20230402_2230','2023-04-02 22:30:59');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('4h6hxmlimqecsjmq0ragllvtc3pj818m','Yjk5NzFmOTAyNzRhMTlhNmM0YmYxZjE4ODI4NmM3Mjc5MTQ4OGMyNjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImE0OTYzZWJkNDQ4YjMyZGUyMWU2NDg5ZGZjM2ViN2VlMjI5ZTg4Y2EifQ==','2023-06-02 22:46:14'),
('7zy3p2l9yzh9214ax1xs3bfop1hj4p0x','MDk0N2ExOGMyMjFhNjY1YWI1NjY2ODE3ZmU5MWM1NzZkMWE1M2I3YTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImE0OTYzZWJkNDQ4YjMyZGUyMWU2NDg5ZGZjM2ViN2VlMjI5ZTg4Y2EiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImdvb2Rzc2t1Il0sIiJdfQ==','2023-06-11 21:35:55'),
('chn1u4xf22tugb8kfkw4u58yfocqq9hp','MDk0N2ExOGMyMjFhNjY1YWI1NjY2ODE3ZmU5MWM1NzZkMWE1M2I3YTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImE0OTYzZWJkNDQ4YjMyZGUyMWU2NDg5ZGZjM2ViN2VlMjI5ZTg4Y2EiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImdvb2Rzc2t1Il0sIiJdfQ==','2023-06-02 22:42:53'),
('dcuvj3gp2n2jxt42wnbsgvzkikjl2w3o','MDk0N2ExOGMyMjFhNjY1YWI1NjY2ODE3ZmU5MWM1NzZkMWE1M2I3YTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImE0OTYzZWJkNDQ4YjMyZGUyMWU2NDg5ZGZjM2ViN2VlMjI5ZTg4Y2EiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImdvb2Rzc2t1Il0sIiJdfQ==','2023-06-02 22:48:45'),
('niw1k8dwbvh089gszthzk03xmwliy5l3','MDk0N2ExOGMyMjFhNjY1YWI1NjY2ODE3ZmU5MWM1NzZkMWE1M2I3YTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImE0OTYzZWJkNDQ4YjMyZGUyMWU2NDg5ZGZjM2ViN2VlMjI5ZTg4Y2EiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImdvb2Rzc2t1Il0sIiJdfQ==','2023-06-04 03:47:35'),
('q32b1293hff4pr6dtr72zy9g7bivyx3r','YWY4NWJkNzRkNWEzOTRiNzNmOGRiZTI4OTkyMGU3MTliNWMwOGM2ODp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImE0OTYzZWJkNDQ4YjMyZGUyMWU2NDg5ZGZjM2ViN2VlMjI5ZTg4Y2EiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImluZGV4Z29vZHNiYW5uZXIiXSwiIl19','2023-07-04 11:23:53'),
('rda0hw0an7stzj28kiymicbcqtjnvvew','MWYzNWQ5MWFkM2M0ZWFiN2MwOTZhZDZhYzcwNjYxMTAzNjdhMjExMjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImE0OTYzZWJkNDQ4YjMyZGUyMWU2NDg5ZGZjM2ViN2VlMjI5ZTg4Y2EiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==','2023-06-02 22:12:12');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int NOT NULL,
  `lifetime` int NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_code` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_partial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersoci_user_id_17d28448_fk_users_use` (`user_id`),
  CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_ordergoods`
--

DROP TABLE IF EXISTS `trade_ordergoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_ordergoods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_num` int NOT NULL,
  `add_time` datetime NOT NULL,
  `goods_id` int NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` (`order_id`),
  KEY `trade_ordergoods_goods_id_e77dc520_fk_df_goods_sku_id` (`goods_id`),
  CONSTRAINT `trade_ordergoods_goods_id_e77dc520_fk_df_goods_sku_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_sku` (`id`),
  CONSTRAINT `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` FOREIGN KEY (`order_id`) REFERENCES `trade_orderinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_ordergoods`
--

LOCK TABLES `trade_ordergoods` WRITE;
/*!40000 ALTER TABLE `trade_ordergoods` DISABLE KEYS */;
INSERT INTO `trade_ordergoods` VALUES
(2,3,'2023-05-20 20:46:46',66,2),
(3,1,'2023-05-20 20:46:46',2,2),
(4,1,'2023-05-20 20:46:46',5,2),
(5,2,'2023-05-20 20:58:35',1,3),
(6,4,'2023-05-20 20:58:35',2,3),
(7,1,'2023-05-20 20:58:35',6,3),
(8,5,'2023-05-20 20:58:35',8,3),
(9,6,'2023-05-20 22:54:40',20,4),
(10,1,'2023-05-20 22:54:40',25,4),
(11,1,'2023-05-20 22:54:40',27,4),
(25,1,'2023-05-21 04:03:36',1,12),
(26,1,'2023-05-21 04:03:36',5,12),
(27,1,'2023-05-21 04:18:10',7,13),
(28,1,'2023-05-21 04:18:10',20,13),
(29,1,'2023-05-21 04:18:10',1,13),
(30,1,'2023-05-21 04:18:10',4,13),
(31,3,'2023-05-21 04:18:10',11,13),
(32,4,'2023-05-21 04:18:10',16,13),
(33,2,'2023-05-21 04:18:10',46,13),
(34,2,'2023-05-21 04:26:45',7,14),
(35,2,'2023-05-21 04:26:45',8,14),
(36,1,'2023-05-21 04:26:45',11,14),
(37,1,'2023-05-21 04:26:45',27,14),
(38,2,'2023-05-21 04:26:45',35,14),
(39,5,'2023-05-21 05:20:50',1,15),
(40,4,'2023-05-21 05:20:50',11,15),
(41,1,'2023-05-21 05:20:50',15,15),
(42,2,'2023-05-21 05:20:50',27,15),
(43,1,'2023-05-21 05:20:50',23,15),
(44,1,'2023-05-21 05:20:50',12,15),
(45,1,'2023-05-21 08:35:33',8,16),
(46,2,'2023-05-21 08:35:33',11,16),
(47,2,'2023-05-21 08:35:33',10,16),
(48,1,'2023-05-21 08:35:33',1,16),
(49,2,'2023-05-21 08:35:33',7,16),
(50,1,'2023-05-21 08:35:33',9,16),
(51,2,'2023-05-21 09:13:16',12,17),
(52,1,'2023-05-21 09:13:16',7,17),
(53,1,'2023-05-21 09:13:16',15,17),
(54,1,'2023-05-21 11:31:17',16,18),
(55,1,'2023-05-21 11:31:17',19,18),
(56,1,'2023-05-21 11:31:17',22,18),
(57,2,'2023-05-21 11:31:17',7,18),
(58,2,'2023-05-21 11:31:17',11,18),
(59,1,'2023-05-21 11:31:17',15,18);
/*!40000 ALTER TABLE `trade_ordergoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_orderinfo`
--

DROP TABLE IF EXISTS `trade_orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_orderinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) DEFAULT NULL,
  `nonce_str` varchar(50) DEFAULT NULL,
  `trade_no` varchar(100) DEFAULT NULL,
  `pay_status` varchar(30) NOT NULL,
  `pay_type` varchar(10) NOT NULL,
  `post_script` varchar(200) NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(20) NOT NULL,
  `singer_mobile` varchar(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  UNIQUE KEY `nonce_str` (`nonce_str`),
  UNIQUE KEY `trade_no` (`trade_no`),
  KEY `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_orderinfo`
--

LOCK TABLES `trade_orderinfo` WRITE;
/*!40000 ALTER TABLE `trade_orderinfo` DISABLE KEYS */;
INSERT INTO `trade_orderinfo` VALUES
(2,'999888','sgdusywh2','1233333333','TRADE_SUCCESS','alipay','多加点',126,'2023-05-20 20:45:00','陕西省安康市安康学院','张佩','177','2023-05-20 20:44:00',4),
(3,'20230520205835458','sgdusywh3',NULL,'paying','alipay','订单接口测试',189,NULL,'陕西省安康市安康学院江北校区','张佩','177','2023-05-19 10:00:00',4),
(4,'20230520225440443','sgdusywh4',NULL,'paying','wechat','订单接口测试2',289,NULL,'陕西省安康市安康学院江北校区2','张佩2','177','2023-05-19 10:00:00',4),
(12,'20230521040336424','7AEqTauq2nOu4xCC',NULL,'paying','alipay','备注',23,NULL,'','张佩','177','2023-05-21 04:03:00',4),
(13,'20230521041810493','BBDfYlkfvpmFpwEU',NULL,'paying','alipay','备注',250.82,NULL,'陕西省-西安市-咸阳市彬县-书香名苑','张佩妈','177','2023-05-21 04:18:00',4),
(14,'20230521042645417','GnCNretk6sWyqhpc',NULL,'paying','alipay','备注',73.78,NULL,'','张佩','177','2023-05-21 04:26:00',4),
(15,'20230521052050447','ao4BATOTUwup0yyy',NULL,'paying','alipay','备注',162.48,NULL,'','张佩','177','2023-05-21 05:20:00',4),
(16,'20230521083533464','Wehe8pPvhHkCECze',NULL,'paying','alipay','备注',77.04,NULL,'','张佩','177','2023-05-21 08:35:00',4),
(17,'20230521091316493','0GBIjhIkwHdyrYXT',NULL,'paying','alipay','备注',23.47,NULL,'','张佩','177','2023-05-21 09:13:00',4),
(18,'20230521113117493','0BQVRNjHLTAqcnc6',NULL,'paying','alipay','备注',110.45,NULL,'','张佩','177','2023-05-21 11:31:00',4);
/*!40000 ALTER TABLE `trade_orderinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_shoppingcart`
--

DROP TABLE IF EXISTS `trade_shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_shoppingcart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nums` int NOT NULL,
  `add_time` datetime NOT NULL,
  `goods_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_shoppingcart_user_id_goods_id_92225e66_uniq` (`user_id`,`goods_id`),
  KEY `trade_shoppingcart_goods_id_8b0f3cb4_fk_df_goods_sku_id` (`goods_id`),
  CONSTRAINT `trade_shoppingcart_goods_id_8b0f3cb4_fk_df_goods_sku_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_sku` (`id`),
  CONSTRAINT `trade_shoppingcart_user_id_da423c9c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_shoppingcart`
--

LOCK TABLES `trade_shoppingcart` WRITE;
/*!40000 ALTER TABLE `trade_shoppingcart` DISABLE KEYS */;
INSERT INTO `trade_shoppingcart` VALUES
(60,3,'2023-05-28 15:18:29',7,4),
(62,1,'2023-05-28 15:22:17',45,4);
/*!40000 ALTER TABLE `trade_shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_operation_useraddress`
--

DROP TABLE IF EXISTS `user_operation_useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_operation_useraddress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `province` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(100) NOT NULL,
  `signer_mobile` varchar(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_usera_user_id_fe128593_fk_users_use` (`user_id`),
  CONSTRAINT `user_operation_usera_user_id_fe128593_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_operation_useraddress`
--

LOCK TABLES `user_operation_useraddress` WRITE;
/*!40000 ALTER TABLE `user_operation_useraddress` DISABLE KEYS */;
INSERT INTO `user_operation_useraddress` VALUES
(1,'陕西省','安康市','汉滨区','安康市安康学院','张佩','177','2023-05-19 23:41:00',1,4),
(2,'陕西省','西安市','咸阳市彬县','书香名苑','张佩妈','177','2023-05-21 01:09:00',1,4);
/*!40000 ALTER TABLE `user_operation_useraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_operation_userfav`
--

DROP TABLE IF EXISTS `user_operation_userfav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_operation_userfav` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `goods_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_operation_userfav_user_id_goods_id_2dbadda7_uniq` (`user_id`,`goods_id`),
  KEY `user_operation_userfav_goods_id_57fc554f_fk_df_goods_id` (`goods_id`),
  CONSTRAINT `user_operation_userfav_goods_id_57fc554f_fk_df_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods` (`id`),
  CONSTRAINT `user_operation_userfav_user_id_4e4de070_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_operation_userfav`
--

LOCK TABLES `user_operation_userfav` WRITE;
/*!40000 ALTER TABLE `user_operation_userfav` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_operation_userfav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_operation_userleavingmessage`
--

DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_operation_userleavingmessage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_type` int NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_userl_user_id_70d909d6_fk_users_use` (`user_id`),
  CONSTRAINT `user_operation_userl_user_id_70d909d6_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_operation_userleavingmessage`
--

LOCK TABLES `user_operation_userleavingmessage` WRITE;
/*!40000 ALTER TABLE `user_operation_userleavingmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_operation_userleavingmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES
(4,'1234567890','2024-04-26 13:50:46',1,'zhangpei','','',1,1,'2023-05-17 02:10:30',NULL,NULL,'female','','zhangpei@qq.com'),
(5,'pbkdf2_sha256$100000$WOHAB4b06hNp$r8u/3oujtqwt+SctU7etONRZgVdTKf7GnvJ1V2XKXBY=',NULL,0,'fuding','','',0,1,'2023-06-28 16:17:54',NULL,NULL,'female','fuding',NULL),
(6,'pbkdf2_sha256$100000$tbRilhiardzW$OXBlcJW8ipGr8d3I5NCf8bsXIrPtl9UcXchmZ0NsvWU=',NULL,0,'fudingding','','',0,1,'2023-06-28 16:22:54',NULL,NULL,'female','fudingding',NULL),
(7,'pbkdf2_sha256$100000$U4MAxutSDm7y$4nu8MB3aAPh2tan4SenTRr/vxgIjQx5aPsudJf+CJ2E=',NULL,0,'fu','','',0,1,'2023-06-28 16:25:33',NULL,NULL,'female','fu',NULL),
(8,'pbkdf2_sha256$100000$5mx8E3ANKdVW$hFeaXOmLHW8nf+lXf6SzO3q+L+ozMqK2aPGLKns4z3Y=',NULL,0,'fud','','',0,1,'2023-06-28 16:28:52',NULL,NULL,'female','',NULL),
(9,'pbkdf2_sha256$100000$MN4yq0VdWP4o$Jd9o/vh4d/G5SpEDXN9OifWYCzgsX2ovE5ORtfU1AfQ=',NULL,0,'fudddd','','',0,1,'2023-06-28 17:02:02',NULL,NULL,'female','',NULL),
(10,'pbkdf2_sha256$100000$e3SGGH6Csx68$vlQuhSE4fMrWny6Mq0D49lP/3/XUJSkCtwdJZCoOGtw=',NULL,0,'fufu','','',0,1,'2023-06-28 17:06:22',NULL,NULL,'female','',NULL),
(11,'pbkdf2_sha256$100000$JaMteo7147Xi$r7tljwGhzQpYMO/6S6DWQp2IreDRA/FPSc9yeonZXNA=',NULL,0,'fufuf','','',0,1,'2023-06-28 17:06:40',NULL,NULL,'female','',NULL),
(12,'pbkdf2_sha256$100000$kVmqIPjkkUkJ$PGOzYfsI1PZ2cMunY7V8b7w61fH5sPYSKoUWW4OI6s4=',NULL,0,'fufufuuuuu','','',0,1,'2023-06-28 17:08:12',NULL,NULL,'female','',NULL),
(13,'pbkdf2_sha256$100000$1TxI3l6x608L$EJS6P8EqDfSYJR4IUh0YMkpEyxf9fPJEsRePpYeSicc=',NULL,0,'fufufuuuuud','','',0,1,'2023-06-28 17:10:20',NULL,NULL,'female','',NULL),
(14,'pbkdf2_sha256$100000$HVxyWpdv0cOa$eDepgYNqTvQSLhyELP61I2HYSMJCuaXrzGqaxw5t4gI=',NULL,0,'fufufuuniu','','',0,1,'2023-06-28 17:14:56',NULL,NULL,'female','',NULL),
(15,'pbkdf2_sha256$100000$0BDUa9Kefjz9$DM/yVj9ry14+EDoDR3IChOVwsMeV/AOX5XQykqj0GyI=',NULL,0,'fufufuuniuniu','','',0,1,'2023-06-28 17:15:28',NULL,NULL,'female','',NULL);
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_verifycode`
--

DROP TABLE IF EXISTS `users_verifycode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_verifycode` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_verifycode`
--

LOCK TABLES `users_verifycode` WRITE;
/*!40000 ALTER TABLE `users_verifycode` DISABLE KEYS */;
INSERT INTO `users_verifycode` VALUES
(1,'0432','177','2023-05-17 00:50:34'),
(2,'7137','177','2023-05-17 00:53:21'),
(3,'7174','177','2023-06-28 15:18:58'),
(4,'2073','177','2023-06-28 15:20:39'),
(5,'4834','177','2023-06-28 15:39:12'),
(6,'1681','177','2023-06-28 15:50:07'),
(7,'1853','177','2023-06-28 16:28:03'),
(8,'3028','177','2024-06-28 16:50:38');
/*!40000 ALTER TABLE `users_verifycode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES
(1,'2023-05-18 00:53:31','127.0.0.1','1','%s(%d)','create','已添加。',17,4),
(2,'2023-05-19 14:36:58','127.0.0.1','2','%s(%d)','create','已添加。',17,4),
(3,'2023-05-19 21:26:39','127.0.0.1','5','蜜瓜','create','已添加。',10,4),
(4,'2023-05-19 21:41:42','192.168.0.181','5','油桃','change','Changed name，desc 和 image.',10,4),
(5,'2023-05-19 21:53:36','192.168.0.181','1','陕西礼泉红富士','change','Changed goods，name，desc，price，unite，image，stock，sales，click_num，fav_num，is_recommend 和 add_time.',10,4),
(6,'2023-05-19 21:55:13','192.168.0.181','1','陕西礼泉红富士','change','Changed image.',10,4),
(7,'2023-05-19 21:59:18','127.0.0.1',NULL,'','delete','Batch delete 1 商品.',NULL,4),
(8,'2023-05-19 22:05:34','192.168.0.181','6','陕西阎良甜瓜','create','已添加。',10,4),
(9,'2023-05-19 22:09:17','192.168.0.181','6','陕西阎良甜瓜','change','Changed image.',10,4),
(10,'2023-05-19 22:15:13','192.168.0.181','7','云南高山蓝莓','create','已添加。',10,4),
(11,'2023-05-19 22:19:53','192.168.0.181','8','陕西蒲城酥梨','create','已添加。',10,4),
(12,'2023-05-19 22:27:24','192.168.0.181','9','山东羊角蜜','create','已添加。',10,4),
(13,'2023-05-19 22:34:13','192.168.0.181','10','海南超甜香蕉','create','已添加。',10,4),
(14,'2023-05-19 22:39:55','192.168.0.181','11','枇杷','create','已添加。',10,4),
(15,'2023-05-19 22:54:45','192.168.0.181','12','百花香桃','create','已添加。',10,4),
(16,'2023-05-19 22:58:35','192.168.0.181','12','百花香桃','change','Changed image.',10,4),
(17,'2023-05-19 23:01:18','192.168.0.181','11','枇杷','change','Changed image.',10,4),
(18,'2023-05-19 23:03:20','192.168.0.181','10','海南超甜香蕉','change','Changed image.',10,4),
(19,'2023-05-19 23:04:39','192.168.0.181','9','山东羊角蜜','change','Changed image.',10,4),
(20,'2023-05-19 23:05:09','192.168.0.181','8','陕西蒲城酥梨','change','Changed image.',10,4),
(21,'2023-05-19 23:05:46','192.168.0.181','7','云南高山蓝莓','change','Changed image.',10,4),
(22,'2023-05-19 23:07:15','192.168.0.181','6','陕西阎良甜瓜','change','Changed image.',10,4),
(23,'2023-05-19 23:10:11','192.168.0.181','11','枇杷','change','Changed image.',10,4),
(24,'2023-05-19 23:10:49','192.168.0.181','10','海南超甜香蕉','change','Changed image.',10,4),
(25,'2023-05-19 23:12:58','192.168.0.181','7','云南高山蓝莓','change','Changed image.',10,4),
(26,'2023-05-19 23:14:03','192.168.0.181','1','陕西礼泉红富士','change','Changed image.',10,4),
(27,'2023-05-19 23:18:40','192.168.0.181','13','陕西大黄杏','create','已添加。',10,4),
(28,'2023-05-19 23:33:27','192.168.0.181','14','姊归伦晚橙','create','已添加。',10,4),
(29,'2023-05-19 23:36:15','192.168.0.181','15','山东绿宝甜瓜','create','已添加。',10,4),
(30,'2023-05-19 23:38:45','192.168.0.181','14','姊归伦晚橙','change','Changed image 和 click_num.',10,4),
(31,'2023-05-19 23:39:07','192.168.0.181','15','山东绿宝甜瓜','change','Changed image.',10,4),
(32,'2023-05-19 23:41:54','192.168.0.181','16','云南阳光玫瑰','create','已添加。',10,4),
(33,'2023-05-19 23:42:11','127.0.0.1','1','安康市安康学院','create','已添加。',18,4),
(34,'2023-05-19 23:47:13','192.168.0.181','17','安岳黄柠檬','create','已添加。',10,4),
(35,'2023-05-19 23:50:17','192.168.0.181','18','海南冰糖麒麟西瓜','create','已添加。',10,4),
(36,'2023-05-19 23:53:06','192.168.0.181','19','泰国金枕榴莲','create','已添加。',10,4),
(37,'2023-05-19 23:53:58','192.168.0.181','16','云南阳光玫瑰','change','Changed image.',10,4),
(38,'2023-05-19 23:55:04','192.168.0.181','17','安岳黄柠檬','change','Changed image.',10,4),
(39,'2023-05-19 23:55:26','192.168.0.181','18','海南冰糖麒麟西瓜','change','Changed image.',10,4),
(40,'2023-05-19 23:55:50','192.168.0.181','19','泰国金枕榴莲','change','Changed image.',10,4),
(41,'2023-05-20 00:01:54','192.168.0.181','20','酷力鲜冻龙虾尾','create','已添加。',10,4),
(42,'2023-05-20 00:06:32','192.168.0.181','21','鲜活大花甲','create','已添加。',10,4),
(43,'2023-05-20 00:07:30','192.168.0.181','20','酷力鲜冻龙虾尾','change','Changed image.',10,4),
(44,'2023-05-20 00:07:57','192.168.0.181','21','鲜活大花甲','change','Changed image.',10,4),
(45,'2023-05-20 00:13:14','127.0.0.1','5','油桃','change','Changed type 和 image.',10,4),
(46,'2023-05-20 00:15:45','192.168.0.181','22','优质带鱼段','create','已添加。',10,4),
(47,'2023-05-20 00:16:37','192.168.0.181','22','优质带鱼段','change','Changed image.',10,4),
(48,'2023-05-20 00:21:32','192.168.0.181','23','鲜活鲫鱼','create','已添加。',10,4),
(49,'2023-05-20 00:22:21','192.168.0.181','23','鲜活鲫鱼','change','Changed image.',10,4),
(50,'2023-05-20 00:22:26','192.168.0.181','23','鲜活鲫鱼','change','Changed image.',10,4),
(51,'2023-05-20 00:22:37','192.168.0.181','23','鲜活鲫鱼','change','Changed image.',10,4),
(52,'2023-05-20 00:22:38','192.168.0.181','23','鲜活鲫鱼','change','Changed image.',10,4),
(53,'2023-05-20 00:28:47','192.168.0.181','24','墨仔湾脆口鱿鱼须','create','已添加。',10,4),
(54,'2023-05-20 00:29:07','192.168.0.181','24','墨仔湾脆口鱿鱼须','change','Changed image.',10,4),
(55,'2023-05-20 00:30:30','192.168.0.181','24','墨仔湾脆口鱿鱼须','change','Changed image.',10,4),
(56,'2023-05-20 00:35:31','192.168.0.181','25','特大号海水大虾','create','已添加。',10,4),
(57,'2023-05-20 00:36:12','192.168.0.181','25','特大号海水大虾','change','Changed image.',10,4),
(58,'2023-05-20 14:12:48','192.168.0.181','26','鲜活小龙虾','create','已添加。',10,4),
(59,'2023-05-20 14:13:28','192.168.0.181','26','鲜活小龙虾','change','Changed image.',10,4),
(60,'2023-05-20 14:16:58','192.168.0.181','27','精品大生蚝','create','已添加。',10,4),
(61,'2023-05-20 14:17:24','192.168.0.181','27','精品大生蚝','change','Changed image.',10,4),
(62,'2023-05-20 14:24:34','192.168.0.181','28','手工鲜剥青岛特大海虾仁','create','已添加。',10,4),
(63,'2023-05-20 14:25:19','192.168.0.181','28','手工鲜剥青岛特大海虾仁','change','Changed image.',10,4),
(64,'2023-05-20 14:27:12','192.168.0.181','28','手工鲜剥青岛特大海虾仁','change','没有字段被修改。',10,4),
(65,'2023-05-20 14:30:25','192.168.0.181','29','深海鳕鱼片','create','已添加。',10,4),
(66,'2023-05-20 14:31:02','192.168.0.181','29','深海鳕鱼片','change','Changed image.',10,4),
(67,'2023-05-20 14:34:26','192.168.0.181','30','优质巴沙鱼柳','create','已添加。',10,4),
(68,'2023-05-20 14:35:04','192.168.0.181','30','优质巴沙鱼柳','change','Changed image.',10,4),
(69,'2023-05-20 14:38:54','192.168.0.181','31','现杀鲈鱼','create','已添加。',10,4),
(70,'2023-05-20 14:39:22','192.168.0.181','31','现杀鲈鱼','change','Changed image.',10,4),
(71,'2023-05-20 14:53:18','192.168.0.181','32','鲜活大黑鱼','create','已添加。',10,4),
(72,'2023-05-20 14:53:52','192.168.0.181','32','鲜活大黑鱼','change','Changed image.',10,4),
(73,'2023-05-20 14:54:41','192.168.0.181','32','鲜活大黑鱼','change','Changed image.',10,4),
(74,'2023-05-20 14:58:08','192.168.0.181','33','浙江东海小黄鱼','create','已添加。',10,4),
(75,'2023-05-20 14:58:55','192.168.0.181','33','浙江东海小黄鱼','change','Changed image.',10,4),
(76,'2023-05-20 15:09:03','192.168.0.181','34','明泰鲳鱼包冰率30%','create','已添加。',10,4),
(77,'2023-05-20 15:09:29','192.168.0.181','34','明泰鲳鱼包冰率30%','change','Changed image.',10,4),
(78,'2023-05-20 15:10:09','192.168.0.181','34','明泰鲳鱼包冰率30%','change','Changed image.',10,4),
(79,'2023-05-20 15:18:10','192.168.0.181','35','生猛海霸鲜冻梭子蟹','create','已添加。',10,4),
(80,'2023-05-20 15:21:52','192.168.0.181','36','国产冰鲜三文雨','create','已添加。',10,4),
(81,'2023-05-20 15:22:15','192.168.0.181','36','国产冰鲜三文雨','change','Changed image.',10,4),
(82,'2023-05-20 15:27:03','192.168.0.181','37','小耗儿鱼','create','已添加。',10,4),
(83,'2023-05-20 15:28:16','192.168.0.181','37','小耗儿鱼','change','Changed image.',10,4),
(84,'2023-05-20 15:36:26','192.168.0.181','38','刀禾鲜火箭鱿鱼','create','已添加。',10,4),
(85,'2023-05-20 15:37:01','192.168.0.181','38','刀禾鲜火箭鱿鱼','change','Changed image.',10,4),
(86,'2023-05-20 15:43:53','192.168.0.181','39','海捕盐冻大虾','create','已添加。',10,4),
(87,'2023-05-20 15:44:21','192.168.0.181','39','海捕盐冻大虾','change','Changed image.',10,4),
(88,'2023-05-20 15:51:43','192.168.0.181','40','何战库鲜猪大里脊','create','已添加。',10,4),
(89,'2023-05-20 15:52:15','192.168.0.181','40','何战库鲜猪大里脊','change','Changed image.',10,4),
(90,'2023-05-20 15:55:25','192.168.0.181','41','雨润新鲜五花肉','create','已添加。',10,4),
(91,'2023-05-20 15:55:54','192.168.0.181','41','雨润新鲜五花肉','change','Changed image.',10,4),
(92,'2023-05-20 15:59:09','192.168.0.181','42','雨润鲜前腿肉','create','已添加。',10,4),
(93,'2023-05-20 15:59:34','192.168.0.181','42','雨润鲜前腿肉','change','Changed image.',10,4),
(94,'2023-05-20 16:03:43','192.168.0.181','43','双汇新鲜猪绞肉','create','已添加。',10,4),
(95,'2023-05-20 16:04:15','192.168.0.181','43','双汇新鲜猪绞肉','change','Changed image.',10,4),
(96,'2023-05-20 16:09:49','192.168.0.181','44','鲁鸢德风猪蹄块','create','已添加。',10,4),
(97,'2023-05-20 16:10:26','192.168.0.181','44','鲁鸢德风猪蹄块','change','Changed image.',10,4),
(98,'2023-05-20 16:14:34','192.168.0.181','45','精选优质牛腿肉','create','已添加。',10,4),
(99,'2023-05-20 16:14:57','192.168.0.181','45','精选优质牛腿肉','change','Changed image.',10,4),
(100,'2023-05-20 16:17:49','192.168.0.181','46','佑伊牧场羊排骨','create','已添加。',10,4),
(101,'2023-05-20 16:18:10','192.168.0.181','46','佑伊牧场羊排骨','change','Changed image.',10,4),
(102,'2023-05-20 16:27:34','192.168.0.181','47','麻辣牛肉','create','已添加。',10,4),
(103,'2023-05-20 16:30:50','192.168.0.181','48','蒙得去骨羊腿肉','create','已添加。',10,4),
(104,'2023-05-20 16:31:26','192.168.0.181','48','蒙得去骨羊腿肉','change','Changed image.',10,4),
(105,'2023-05-20 16:34:27','192.168.0.181','49','精选好品质切块牛腩','create','已添加。',10,4),
(106,'2023-05-20 16:35:01','192.168.0.181','49','精选好品质切块牛腩','change','Changed image.',10,4),
(107,'2023-05-20 16:39:31','192.168.0.181','50','内蒙整条羊腿','create','已添加。',10,4),
(108,'2023-05-20 16:42:24','192.168.0.181','51','牧牛伽雪花牛肉牛上脑','create','已添加。',10,4),
(109,'2023-05-20 16:42:46','192.168.0.181','51','牧牛伽雪花牛肉牛上脑','change','Changed image.',10,4),
(110,'2023-05-20 16:47:52','192.168.0.181','52','松花蛋4枚','create','已添加。',10,4),
(111,'2023-05-20 16:48:30','192.168.0.181','52','松花蛋4枚','change','Changed image.',10,4),
(112,'2023-05-20 17:01:01','192.168.0.181','53','胜邮咸鸭蛋','create','已添加。',10,4),
(113,'2023-05-20 17:01:48','192.168.0.181','53','胜邮咸鸭蛋','change','Changed goods 和 image.',10,4),
(114,'2023-05-20 17:05:21','192.168.0.181','54','鲜鹌鹑蛋','create','已添加。',10,4),
(115,'2023-05-20 17:06:15','192.168.0.181','54','鲜鹌鹑蛋','change','Changed image.',10,4),
(116,'2023-05-20 17:09:33','192.168.0.181','55','秦牧原粉壳土鸡蛋30枚','create','已添加。',10,4),
(117,'2023-05-20 17:10:08','192.168.0.181','55','秦牧原粉壳土鸡蛋30枚','change','Changed image.',10,4),
(118,'2023-05-20 17:14:07','192.168.0.181','56','邦益店商红壳土鸡蛋','create','已添加。',10,4),
(119,'2023-05-20 17:14:31','192.168.0.181','56','邦益店商红壳土鸡蛋','change','Changed image.',10,4),
(120,'2023-05-20 17:19:08','192.168.0.181','57','骏马优鲜鲜冻琵琶腿','create','已添加。',10,4),
(121,'2023-05-20 17:19:42','192.168.0.181','57','骏马优鲜鲜冻琵琶腿','change','Changed image.',10,4),
(122,'2023-05-20 17:20:20','192.168.0.181','57','骏马优鲜鲜冻琵琶腿','change','Changed image.',10,4),
(123,'2023-05-20 17:23:19','192.168.0.181','58','精选农家乌骨鸡','create','已添加。',10,4),
(124,'2023-05-20 17:23:49','192.168.0.181','58','精选农家乌骨鸡','change','Changed image.',10,4),
(125,'2023-05-20 17:26:28','192.168.0.181','59','富瑞达鸡翅','create','已添加。',10,4),
(126,'2023-05-20 17:26:52','192.168.0.181','59','富瑞达鸡翅','change','Changed image.',10,4),
(127,'2023-05-20 17:30:07','192.168.0.181','60','美味鸡胗','create','已添加。',10,4),
(128,'2023-05-20 17:30:38','192.168.0.181','60','美味鸡胗','change','Changed image.',10,4),
(129,'2023-05-20 17:35:33','192.168.0.181','61','祁蒙山散养整只大公鸡','create','已添加。',10,4),
(130,'2023-05-20 17:36:10','192.168.0.181','61','祁蒙山散养整只大公鸡','change','Changed image.',10,4),
(131,'2023-05-20 17:49:32','192.168.0.181','62','青尖椒','create','已添加。',10,4),
(132,'2023-05-20 17:50:00','192.168.0.181','62','青尖椒','change','Changed image.',10,4),
(133,'2023-05-20 17:53:00','192.168.0.181','63','小米辣','create','已添加。',10,4),
(134,'2023-05-20 17:53:28','192.168.0.181','63','小米辣','change','Changed image.',10,4),
(135,'2023-05-20 17:56:29','192.168.0.181','64','新鲜长黄瓜','create','已添加。',10,4),
(136,'2023-05-20 17:56:54','192.168.0.181','64','新鲜长黄瓜','change','Changed image.',10,4),
(137,'2023-05-20 17:59:29','192.168.0.181','65','粉西红柿','create','已添加。',10,4),
(138,'2023-05-20 18:00:42','192.168.0.181','65','粉西红柿','change','Changed image.',10,4),
(139,'2023-05-20 18:03:13','192.168.0.181','66','无筋豆王','create','已添加。',10,4),
(140,'2023-05-20 18:05:46','192.168.0.181','67','香菜','create','已添加。',10,4),
(141,'2023-05-20 18:06:08','192.168.0.181','67','香菜','change','Changed image.',10,4),
(142,'2023-05-20 18:09:15','192.168.0.181','68','菠菜','create','已添加。',10,4),
(143,'2023-05-20 18:14:14','192.168.0.181','69','精品小娃娃菜3颗装','create','已添加。',10,4),
(144,'2023-05-20 18:14:40','192.168.0.181','69','精品小娃娃菜3颗装','change','Changed image.',10,4),
(145,'2023-05-20 18:17:43','192.168.0.181','70','本地芹菜','create','已添加。',10,4),
(146,'2023-05-20 18:20:14','192.168.0.181','70','本地芹菜','change','Changed image.',10,4),
(147,'2023-05-20 18:24:36','192.168.0.181','71','现切散菜花','create','已添加。',10,4),
(148,'2023-05-20 18:25:06','192.168.0.181','71','现切散菜花','change','Changed image.',10,4),
(149,'2023-05-20 18:30:25','127.0.0.1','1','999888','create','已添加。',16,4),
(150,'2023-05-20 20:44:28','127.0.0.1',NULL,'','delete','Batch delete 1 订单信息.',NULL,4),
(151,'2023-05-20 20:46:46','127.0.0.1','2','999888','create','已添加。',16,4),
(152,'2023-05-20 21:09:43','192.168.0.181','72','杏鲍菇','create','已添加。',10,4),
(153,'2023-05-20 21:10:37','192.168.0.181','72','杏鲍菇','change','Changed image.',10,4),
(154,'2023-05-20 21:14:19','192.168.0.181','73','本地新鲜小葱','create','已添加。',10,4),
(155,'2023-05-20 21:14:22','192.168.0.181','74','本地新鲜小葱','create','已添加。',10,4),
(156,'2023-05-20 21:19:52','192.168.0.181','75','新鲜脆爽带泥胡萝卜','create','已添加。',10,4),
(157,'2023-05-20 21:20:20','192.168.0.181','75','新鲜脆爽带泥胡萝卜','change','Changed image.',10,4),
(158,'2023-05-20 21:43:43','192.168.0.181','76','云南新土豆','create','已添加。',10,4),
(159,'2023-05-20 21:48:43','192.168.0.181','77','新鲜红洋葱','create','已添加。',10,4),
(160,'2023-05-20 21:49:16','192.168.0.181','77','新鲜红洋葱','change','Changed image.',10,4),
(161,'2023-05-20 21:52:50','192.168.0.181','78','大蒜','create','已添加。',10,4),
(162,'2023-05-20 21:53:18','192.168.0.181','78','大蒜','change','Changed image.',10,4),
(163,'2023-05-20 21:55:57','192.168.0.181','79','山东茄王','create','已添加。',10,4),
(164,'2023-05-20 21:58:58','192.168.0.181','80','云南现摘西葫芦','create','已添加。',10,4),
(165,'2023-05-20 21:59:20','192.168.0.181','80','云南现摘西葫芦','change','Changed image.',10,4),
(166,'2023-05-20 22:02:24','192.168.0.181','81','新脆嫩短蒜苔','create','已添加。',10,4),
(167,'2023-05-20 22:11:04','192.168.0.181','82','西兰花','create','已添加。',10,4),
(168,'2023-05-20 22:17:29','192.168.0.181','83','蒙牛随芯脆脆饼巧克力雪糕30支','create','已添加。',10,4),
(169,'2023-05-20 22:21:17','192.168.0.181','84','思念小小汤圆三合一组盒装','create','已添加。',10,4),
(170,'2023-05-20 22:21:43','192.168.0.181','84','思念小小汤圆三合一组盒装','change','Changed image.',10,4),
(171,'2023-05-20 22:31:21','192.168.0.181','85','猪肉玉米蒸煎饺','create','已添加。',10,4),
(172,'2023-05-20 22:31:25','192.168.0.181','86','猪肉玉米蒸煎饺','create','已添加。',10,4),
(173,'2023-05-20 22:42:02','192.168.0.181','87','纯手工杂粮粘豆包','create','已添加。',10,4),
(174,'2023-05-20 22:42:27','192.168.0.181','87','纯手工杂粮粘豆包','change','Changed image.',10,4),
(175,'2023-05-20 22:48:31','192.168.0.181','88','榴莲千层蛋糕6寸','create','已添加。',10,4),
(176,'2023-05-20 22:48:55','192.168.0.181','88','榴莲千层蛋糕6寸','change','Changed image.',10,4),
(177,'2023-05-20 22:52:16','192.168.0.181','89','儿童玉米热狗卷6个','create','已添加。',10,4),
(178,'2023-05-20 22:52:42','192.168.0.181','89','儿童玉米热狗卷6个','change','Changed image.',10,4),
(179,'2023-05-20 23:02:35','192.168.0.181','90','奥尔良整片大鸡排','create','已添加。',10,4),
(180,'2023-05-20 23:03:15','192.168.0.181','90','奥尔良整片大鸡排','change','Changed image.',10,4),
(181,'2023-05-20 23:05:50','192.168.0.181','91','精品春饼','create','已添加。',10,4),
(182,'2023-05-21 01:10:42','127.0.0.1','2','书香名苑','create','已添加。',18,4),
(183,'2023-05-21 03:27:33','127.0.0.1',NULL,'','delete','Batch delete 7 订单信息.',NULL,4),
(184,'2023-05-21 03:47:44','127.0.0.1',NULL,'','delete','Batch delete 2 商品.',NULL,4);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES
(1,'dashboard:home:pos','',4),
(2,'site-theme','/static/xadmin/css/themes/bootstrap-theme.css',4);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 15:24:55
