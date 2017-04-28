/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.6.17 : Database - finecmsdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`finecmsdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `finecmsdb`;

/*Table structure for table `fn_block` */

DROP TABLE IF EXISTS `fn_block`;

CREATE TABLE `fn_block` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `type` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_block` */

/*Table structure for table `fn_category` */

DROP TABLE IF EXISTS `fn_category`;

CREATE TABLE `fn_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `typeid` tinyint(1) NOT NULL COMMENT '类别(1内容,2单页,3外链)',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `arrparentid` varchar(255) NOT NULL,
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1，存在',
  `arrchildid` varchar(255) NOT NULL,
  `catname` varchar(30) NOT NULL COMMENT '栏目名称',
  `image` varchar(100) NOT NULL COMMENT '图片',
  `content` mediumtext NOT NULL COMMENT '单网页内容',
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `catdir` varchar(30) NOT NULL COMMENT '栏目URL目录',
  `url` varchar(100) NOT NULL COMMENT 'URL地址',
  `urlpath` varchar(255) NOT NULL,
  `items` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '内容数量',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否为菜单',
  `categorytpl` varchar(50) NOT NULL,
  `listtpl` varchar(50) NOT NULL,
  `showtpl` varchar(50) NOT NULL,
  `setting` text NOT NULL,
  `pagesize` smallint(5) NOT NULL,
  PRIMARY KEY (`catid`),
  KEY `listorder` (`listorder`,`child`),
  KEY `ismenu` (`ismenu`),
  KEY `parentid` (`parentid`),
  KEY `site` (`site`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `fn_category` */

insert  into `fn_category`(`catid`,`site`,`typeid`,`modelid`,`parentid`,`arrparentid`,`child`,`arrchildid`,`catname`,`image`,`content`,`meta_title`,`meta_keywords`,`meta_description`,`catdir`,`url`,`urlpath`,`items`,`listorder`,`ismenu`,`categorytpl`,`listtpl`,`showtpl`,`setting`,`pagesize`) values (50,1,1,15,0,'50,49,22,48,23,51,17',0,'','在线客服','','','','','','zaixiankefu','/index.php?c=content&a=list&catid=50','',2,0,1,'index.html','index.html','index.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(49,1,1,14,0,'50,49,22,48,23,51,17',0,'','友情链接','','','','','','youqinglianjie','/index.php?c=content&a=list&catid=49','',0,0,1,'index.html','index.html','index.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(17,1,4,7,0,'50,49,22,48,23,51,17',0,'','留言','','','','','','liuyan','/index.php?c=content&a=list&catid=17','',0,9,1,'','','index.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(22,1,2,0,0,'50,49,22,48,23,51,17',1,'24,26,34,42,46','英文版','','&lt;p&gt;英文版&lt;/p&gt;','','','','yingwenban','/index.php?c=content&a=list&catid=22','',20,0,1,'','','en-index.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(24,1,1,1,22,'24,26,34,42,46',0,'','新闻中心','','','','','','enxinwenzhongxin','/index.php?c=content&a=list&catid=24','',0,0,1,'category_news.html','newlist.en.html','newInfo.en.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(26,1,2,0,22,'24,26,34,42,46',1,'27,28,29','产品展示','','&lt;p&gt;产品展示&lt;/p&gt;','','','','enchanpinzhanshi','/index.php?c=content&a=list&catid=26','',14,0,1,'','','page.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(25,1,1,1,23,'25,30,35,43,47',0,'','新闻中心','','','','','','cnxinwenzhongxin','/index.php?c=content&a=list&catid=25','',8,0,1,'category_news.html','newlist.html','newInfo.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',1),(48,1,1,13,0,'50,49,22,48,23,51,17',0,'','幻灯片管理','','','','','','huandengpianguanli','/index.php?c=content&a=list&catid=48','',3,0,1,'index.html','index.html','index.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(23,1,2,0,0,'50,49,22,48,23,51,17',1,'25,30,35,43,47','中文版','','&lt;p&gt;中文版&lt;/p&gt;','','','','zhongwenban','/index.php?c=content&a=list&catid=23','',42,0,1,'','','page.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(27,1,1,8,26,'27,28,29',0,'','PVC foam board','','','','','','enPVCjiepifapaoban','/index.php?c=content&a=list&catid=27','',14,0,1,'chanpin.en.html','chanpin.en.html','chanpin.en.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(28,1,1,8,26,'27,28,29',0,'','PVC composite plate','','','','','','enPVCfuheban','/index.php?c=content&a=list&catid=28','',0,0,1,'chanpin.en.html','chanpin.en.html','chanpin.en.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(29,1,1,8,26,'27,28,29',0,'','UV waterproof board','','','','','','enUVfangshuiban','/index.php?c=content&a=list&catid=29','',0,0,1,'chanpin.en.html','chanpin.en.html','chanpin.en.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(30,1,2,0,23,'25,30,35,43,47',1,'31,32,33','产品展示','','&lt;p&gt;产品展示&lt;/p&gt;','','','','cnchanpinzhanshi','/index.php?c=content&a=list&catid=30','',23,0,1,'','','page.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(31,1,1,8,30,'31,32,33',0,'','PVC结皮发泡板','','','','','','cnPVCjiepifapaoban','/index.php?c=content&a=list&catid=31','',15,0,1,'chanpin.html','chanpin.html','chanpin.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(32,1,1,8,30,'31,32,33',0,'','PVC复合板','','','','','','cnPVCfuheban','/index.php?c=content&a=list&catid=32','',8,0,1,'chanpin.html','chanpin.html','chanpin.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(33,1,1,8,30,'31,32,33',0,'','UV防水板','','','','','','cnUVfangshuiban','/index.php?c=content&a=list&catid=33','',0,0,1,'chanpin.html','chanpin.html','chanpin.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(34,1,2,0,22,'24,26,34,42,46',1,'36,37,54','公司简介','','&lt;p&gt;公司简介&lt;/p&gt;','','','','engongsijianjie','/index.php?c=content&a=list&catid=34','',1,0,1,'','','page.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(35,1,2,0,23,'25,30,35,43,47',1,'39,40,41','公司简介','','&lt;p&gt;公司简介&lt;/p&gt;','','','','cngongsijianjie','/index.php?c=content&a=list&catid=35','',1,0,1,'','','page.html','a:10:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:10:\"memberpost\";s:0:\"\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}s:9:\"modelpost\";s:0:\"\";s:8:\"rolepost\";s:0:\"\";s:9:\"grouppost\";s:0:\"\";s:10:\"verifyrole\";s:0:\"\";}',2),(36,1,2,0,34,'36,37,54',0,'','公司介绍','','&lt;h2 class=&quot;container-title&quot; style=&quot;font-family: 微软雅黑, &amp;#39;Microsoft Yahei&amp;#39;, MicrosoftYahei; color: rgb(33, 33, 33); font-weight: 400; margin: 50px 0px 30px; text-align: center; font-size: 24px; white-space: normal;&quot;&gt;公司介绍&lt;/h2&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(132, 132, 132); line-height: 2em;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun; font-size: 18px;&quot;&gt;厦门稻美橡塑制品有限公司是一家专业生产PVC自由发泡板、PVC结皮发泡板的厂家（自然人投资或控股）&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;，公司总部设在中国福建省厦门市翔安区内厝镇新安村，稻美，厦门稻美橡塑制品有限公司拥有完整、科学的质量管理体系。厦门稻美橡塑制品有限公司的诚信、实力和产品质量获得业界的认可。欢迎各界朋友莅临厦门稻美橡塑制品有限公司参观、指导和业务洽谈。&lt;br/&gt;　 &amp;nbsp;PVC发泡板是新型的人造材料，它具有优良的化学稳定性，耐腐蚀，硬度大，强度高，表面光洁。完全可以代替木材，缓解木材紧张。且用一般的木材加工工具即可施工。产品防水、防火、防腐、不吸水、质轻，具有保温、隔音、绝缘、防震等性能。可热成型亦可与其他PVC材料粘接。适于贴膜、印刷、压花、喷涂等二次加工。&lt;br/&gt;&amp;nbsp; &amp;nbsp;应用范围：广泛用于广告装饰业：喷绘、展板、丝网印刷、电脑刻字、标牌、灯箱等。建筑装潢业：室内外饰板，商用装饰架，房间隔断，吊顶板，橱柜、浴柜吊顶板等。交通运输业：轮船、飞机、客车、火车车厢、顶棚、箱体芯层、内部装潢用板等各个领域。&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 12px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); line-height: 3em;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;#39;Microsoft YaHei&amp;#39;;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体, SimSun; font-size: 18px;&quot;&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun; font-size: 18px;&quot;&gt;Xiamen rice beauty rubber products Co., Ltd. is a professional production of PVC free foam board, PVC crust foamed plate manufacturers (natural investment or holding), the company is headquartered in Fujian Province, Xiamen city Xiangan District China CuO Zhen Xin&amp;#39;an Cun, Xiamen rice rice beauty, beauty rubber products Co., Ltd. has a complete and scientific quality management system. Xiamen rice beauty rubber products limited company integrity, strength and quality of products recognized by the industry. Welcome friends from all walks of life to visit the Xiamen rice United States rubber products limited company to visit, guidance and business negotiation.&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun; font-size: 18px;&quot;&gt;PVC foam board is a new type of man-made materials, it has excellent chemical stability, corrosion resistance, high hardness, high strength, smooth surface. Can replace wood, ease the tension. And the use of general wood processing tools can be constructed. Products waterproof, fire prevention, anti-corrosion, non absorbent, light quality, with insulation, sound insulation, insulation, shock resistance, etc.. Hot forming can also be bonded with other PVC materials. Suitable for film, printing, embossing, spraying two times of processing.&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun; font-size: 18px;&quot;&gt;Application scope: widely used in advertising decoration industry: printing, display, screen printing, computer lettering, signs, light boxes etc.. Architectural decoration industry: interior exterior panels, commercial decorative frame, room partition, ceiling panels, cabinets, cabinet ceiling panels etc.. Transportation: ships, aircraft, bus, train, car roof, box core, with interior panels in various fields.&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 12px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); line-height: 3em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;','','','','engongsijieshao','/index.php?c=content&a=list&catid=36','',0,0,1,'','','introduce.en.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(37,1,1,9,34,'36,37,54',0,'','公司荣誉','','','','','','engongsirongyu','/index.php?c=content&a=list&catid=37','',1,0,1,'rongyu.en.html','rongyu.en.html','rongyu.en.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(54,1,2,0,34,'36,37,54',0,'','产品应用','','&lt;h2 class=&quot;container-title&quot; style=&quot;font-family: 微软雅黑, &amp;#39;Microsoft Yahei&amp;#39;, MicrosoftYahei; color: rgb(33, 33, 33); font-weight: 400; margin: 50px 0px 30px; text-align: center; font-size: 24px; white-space: normal;&quot;&gt;产品应用&lt;/h2&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 12px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;工业方面应用&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 12px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;稻美橡塑PVC发泡板具有质轻、难燃、防潮、防水，保湿、隔音、减震等卓越功能，是汽车，飞机、地铁、火车、轮船、电梯等工业品内装饰的首选材料&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(132, 132, 132);&quot;&gt;&lt;img src=&quot;http://www.xmdaomei.com/uploadfile/image/20150212/20150212142020072007.jpg&quot; width=&quot;1049&quot; height=&quot;235&quot; alt=&quot;&quot; style=&quot;margin: 0px; padding: 0px; width: 1049px; height: 235px;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 12px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;建筑装饰行业&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 12px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;稻美橡塑PVC发泡板具有表面硬度高、光滑、质轻、防水、防潮、耐酸碱、保温、环保、难燃、防虫蛀等特点。广泛应用于建筑外墙体、家具内部装潢、&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 12px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;卫生间隔板，屋内间隔、&amp;nbsp;整门制造、公共场所装修等方面。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(132, 132, 132);&quot;&gt;&lt;img src=&quot;http://www.xmdaomei.com/uploadfile/image/20150212/20150212141279027902.jpg&quot; width=&quot;1052&quot; height=&quot;278&quot; alt=&quot;&quot; style=&quot;margin: 0px; padding: 0px; width: 1052px; height: 278px;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 12px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;产品性能提升&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 12px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;稻美PVC板表面可以覆PVC膜、金属膜、防火板、亚克力薄板、圆木薄板，提高耐磨性、郑板强度、耐高温，提高产品性能。提升产品档次。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(132, 132, 132);&quot;&gt;&lt;img src=&quot;http://www.xmdaomei.com/uploadfile/image/20150212/20150212141488578857.jpg&quot; width=&quot;1041&quot; height=&quot;245&quot; alt=&quot;&quot; style=&quot;margin: 0px; padding: 0px; width: 1041px; height: 245px;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 12px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;广告雕刻&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 12px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); line-height: 1.75em;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;稻美橡塑PVC发泡板广泛应用于电脑刻字、广告标牌、展板、标志用板。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(132, 132, 132);&quot;&gt;&lt;img src=&quot;http://www.xmdaomei.com/uploadfile/image/20150212/2015021214220351351.jpg&quot; width=&quot;1044&quot; height=&quot;297&quot; alt=&quot;&quot; style=&quot;margin: 0px; padding: 0px; width: 1044px; height: 297px;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','','','','enchanpinyingyong','/index.php?c=content&a=list&catid=54','',0,0,1,'','','yingYong.en.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(39,1,2,0,35,'39,40,41',0,'','公司介绍','','&lt;p style=&quot;line-height: 2em;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-size: 18px;&quot;&gt;厦门稻美橡塑制品有限公司是PVC发泡板、橡塑、床垫、pvc板、pvc自由发泡板、pvc结皮发泡板等产品专业生产加工的有限责任公司（自然人投资或控股），公司总部设在中国福建省厦门市翔安区内厝镇新安村，稻美，厦门稻美橡塑制品有限公司拥有完整、科学的质量管理体系。厦门稻美橡塑制品有限公司的诚信、实力和产品质量获得业界的认可。欢迎各界朋友莅临厦门稻美橡塑制品有限公司参观、指导和业务洽谈。&lt;br/&gt;　 &amp;nbsp;PVC发泡板是新型的人造材料，它具有优良的化学稳定性，耐腐蚀，硬度大，强度高，表面光洁。完全可以代替木材，缓解木材紧张。且用一般的木材加工工具即可施工。产品防水、防火、防腐、不吸水、质轻，具有保温、隔音、绝缘、防震等性能。可热成型亦可与其他PVC材料粘接。适于贴膜、印刷、压花、喷涂等二次加工。&lt;br/&gt;&amp;nbsp; &amp;nbsp;应用范围：广泛用于广告装饰业：喷绘、展板、丝网印刷、电脑刻字、标牌、灯箱等。建筑装潢业：室内外饰板，商用装饰架，房间隔断，吊顶板，橱柜、浴柜&lt;span style=&quot;color: rgb(0, 0, 0); font-size: 18px;&quot;&gt;吊顶板等。交通运输业：轮船、飞机、客车、火车车厢、顶棚、箱体芯层、内部装潢用板等各个领域。&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体, SimSun; font-size: 18px;&quot;&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun; font-size: 18px;&quot;&gt;Xiamen rice beauty rubber products Co., Ltd. is a professional production of PVC free foam board, PVC crust foamed plate manufacturers (natural investment or holding), the company is headquartered in Fujian Province, Xiamen city Xiangan District China CuO Zhen Xin&amp;#39;an Cun, Xiamen rice rice beauty, beauty rubber products Co., Ltd. has a complete and scientific quality management system. Xiamen rice beauty rubber products limited company integrity, strength and quality of products recognized by the industry. Welcome friends from all walks of life to visit the Xiamen rice United States rubber products limited company to visit, guidance and business negotiation.&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun; font-size: 18px;&quot;&gt;PVC foam board is a new type of man-made materials, it has excellent chemical stability, corrosion resistance, high hardness, high strength, smooth surface. Can replace wood, ease the tension. And the use of general wood processing tools can be constructed. Products waterproof, fire prevention, anti-corrosion, non absorbent, light quality, with insulation, sound insulation, insulation, shock resistance, etc.. Hot forming can also be bonded with other PVC materials. Suitable for film, printing, embossing, spraying two times of processing.&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: 宋体, SimSun; font-size: 18px;&quot;&gt;Application scope: widely used in advertising decoration industry: printing, display, screen printing, computer lettering, signs, light boxes etc.. Architectural decoration industry: interior exterior panels, commercial decorative frame, room partition, ceiling panels, cabinets, cabinet ceiling panels etc.. Transportation: ships, aircraft, bus, train, car roof, box core, with interior panels in various fields.&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255); line-height: 3em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;','','','','cngongsijieshao','/index.php?c=content&a=list&catid=39','',0,0,1,'','','introduce.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(40,1,1,9,35,'39,40,41',0,'','公司荣誉','','','','','','cngongsirongyu','/index.php?c=content&a=list&catid=40','',1,0,1,'rongyu.html','rongyu.html','rongyu.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(41,1,2,0,35,'39,40,41',0,'','产品应用','','&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;工业方面应用&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;稻美橡塑PVC发泡板具有质轻、难燃、防潮、防水，保湿、隔音、减震等卓越功能，是汽车，飞机、地铁、火车、轮船、电梯等工业品内装饰的首选材料&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;&lt;img src=&quot;http://www.xmdaomei.com/uploadfile/image/20150212/20150212142020072007.jpg&quot; width=&quot;1049&quot; height=&quot;235&quot; alt=&quot;&quot; style=&quot;margin: 0px; padding: 0px; width: 1049px; height: 235px;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;建筑装饰行业&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;稻美橡塑PVC发泡板具有表面硬度高、光滑、质轻、防水、防潮、耐酸碱、保温、环保、难燃、防虫蛀等特点。广泛应用于建筑外墙体、家具内部装潢、&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;卫生间隔板，屋内间隔、&amp;nbsp;整门制造、公共场所装修等方面。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;&lt;img src=&quot;http://www.xmdaomei.com/uploadfile/image/20150212/20150212141279027902.jpg&quot; width=&quot;1052&quot; height=&quot;278&quot; alt=&quot;&quot; style=&quot;margin: 0px; padding: 0px; width: 1052px; height: 278px;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;产品性能提升&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;稻美PVC板表面可以覆PVC膜、金属膜、防火板、亚克力薄板、圆木薄板，提高耐磨性、郑板强度、耐高温，提高产品性能。提升产品档次。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;&lt;img src=&quot;http://www.xmdaomei.com/uploadfile/image/20150212/20150212141488578857.jpg&quot; width=&quot;1041&quot; height=&quot;245&quot; alt=&quot;&quot; style=&quot;margin: 0px; padding: 0px; width: 1041px; height: 245px;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;广告雕刻&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.75em; text-align: left;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;稻美橡塑PVC发泡板广泛应用于电脑刻字、广告标牌、展板、标志用板。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;&lt;img src=&quot;http://www.xmdaomei.com/uploadfile/image/20150212/2015021214220351351.jpg&quot; width=&quot;1044&quot; height=&quot;297&quot; alt=&quot;&quot; style=&quot;margin: 0px; padding: 0px; width: 1044px; height: 297px;&quot;/&gt;&lt;/p&gt;','','','','cnchanpinyingyong','/index.php?c=content&a=list&catid=41','',0,0,1,'','','yingYong.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(42,1,1,10,22,'24,26,34,42,46',0,'','案例展示','','','','','','enanlizhanshi','/index.php?c=content&a=list&catid=42','',5,0,1,'anli.en.html','anli.en.html','anli.en.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(43,1,1,10,23,'25,30,35,43,47',0,'','案例展示','','','','','','cnanlizhanshi','/index.php?c=content&a=list&catid=43','',7,0,1,'anli.html','anli.html','anli.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(51,1,4,11,0,'50,49,22,48,23,51,17',0,'','人才招聘','','','','','','rencaizhaopin','/index.php?c=content&a=list&catid=51','',0,0,1,'zhaoPin.html','zhaoPin.html','zhaoPin.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:7:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";}}',2),(46,1,1,12,22,'24,26,34,42,46',0,'','视频中心','','','','','','enshipinzhongxin','/index.php?c=content&a=list&catid=46','',0,0,1,'category.html','vediolist.en.html','vedioinfo.en.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2),(47,1,1,12,23,'25,30,35,43,47',0,'','视频中心','','','','','','cnshipinzhongxin','/index.php?c=content&a=list&catid=47','',3,0,1,'category.html','vediolist.html','vedioinfo.html','a:6:{s:8:\"document\";s:0:\"\";s:10:\"verifypost\";s:1:\"0\";s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";s:9:\"guestpost\";s:0:\"\";s:3:\"url\";a:8:{s:3:\"use\";s:1:\"0\";s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"list\";s:0:\"\";s:9:\"list_page\";s:0:\"\";s:4:\"show\";s:0:\"\";s:9:\"show_page\";s:0:\"\";s:7:\"catjoin\";s:1:\"/\";}}',2);

/*Table structure for table `fn_content` */

DROP TABLE IF EXISTS `fn_content`;

CREATE TABLE `fn_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

/*Data for the table `fn_content` */

/*Table structure for table `fn_content_1` */

DROP TABLE IF EXISTS `fn_content_1`;

CREATE TABLE `fn_content_1` (
  `id` int(10) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sysadd` tinyint(1) NOT NULL COMMENT '是否后台添加',
  `userid` smallint(8) NOT NULL,
  `username` char(20) NOT NULL,
  `inputtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `admin` (`modelid`,`status`,`listorder`,`updatetime`),
  KEY `catid` (`catid`,`status`,`updatetime`),
  KEY `member` (`userid`,`modelid`,`status`,`sysadd`,`updatetime`),
  KEY `status` (`status`,`updatetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_content_1` */

insert  into `fn_content_1`(`id`,`catid`,`modelid`,`title`,`thumb`,`keywords`,`description`,`url`,`listorder`,`status`,`hits`,`sysadd`,`userid`,`username`,`inputtime`,`updatetime`) values (143,37,9,'2017','','','','/index.php?c=content&a=show&id=143',0,1,0,1,0,'admin',1487340937,1487340937),(144,47,12,'我们','','','','/index.php?c=content&a=show&id=144',0,1,0,1,0,'admin',1487383362,1487406600),(145,40,9,'2017','','','','/index.php?c=content&a=show&id=145',0,1,0,1,0,'admin',1487573670,1487573670),(140,42,10,'Advertisement','uploadfiles/image/201702/204.jpg','','','/index.php?c=content&a=show&id=140',0,1,0,1,0,'admin',1487307636,1487308456),(141,42,10,'Goods shelves','uploadfiles/image/201702/206.jpg','','','/index.php?c=content&a=show&id=141',0,1,0,1,0,'admin',1487307716,1487321701),(142,42,10,'bathroom','uploadfiles/image/201702/205.jpg','','','/index.php?c=content&a=show&id=142',0,1,0,1,0,'admin',1487307762,1487308487),(136,27,8,'13','uploadfiles/image/201702/174.jpg','','','/index.php?c=content&a=show&id=136',0,1,0,1,0,'admin',1487307413,1487307413),(137,27,8,'14','uploadfiles/image/201702/175.png','','','/index.php?c=content&a=show&id=137',0,1,0,1,0,'admin',1487307431,1487307431),(138,42,10,'Cupboard','uploadfiles/image/201702/207.jpg','','','/index.php?c=content&a=show&id=138',0,1,0,1,0,'admin',1487307548,1487321746),(139,42,10,'Window carving','uploadfiles/image/201702/203.jpg','','','/index.php?c=content&a=show&id=139',0,1,0,1,0,'admin',1487307608,1487308404),(133,27,8,'10','uploadfiles/image/201702/171.jpg','','','/index.php?c=content&a=show&id=133',0,1,0,1,0,'admin',1487307259,1487307259),(134,27,8,'11','uploadfiles/image/201702/172.jpg','','','/index.php?c=content&a=show&id=134',0,1,0,1,0,'admin',1487307372,1487307372),(135,27,8,'12','uploadfiles/image/201702/173.jpg','','','/index.php?c=content&a=show&id=135',0,1,0,1,0,'admin',1487307395,1487307395),(129,27,8,'6','uploadfiles/image/201702/167.jpg','','','/index.php?c=content&a=show&id=129',0,1,0,1,0,'admin',1487307119,1487307119),(130,27,8,'7','uploadfiles/image/201702/168.jpg','','','/index.php?c=content&a=show&id=130',0,1,0,1,0,'admin',1487307194,1487307194),(131,27,8,'8','uploadfiles/image/201702/169.jpg','','','/index.php?c=content&a=show&id=131',0,1,0,1,0,'admin',1487307214,1487307214),(132,27,8,'9','uploadfiles/image/201702/170.jpg','','','/index.php?c=content&a=show&id=132',0,1,0,1,0,'admin',1487307239,1487307239),(126,27,8,'3','uploadfiles/image/201702/164.jpg','','','/index.php?c=content&a=show&id=126',0,1,0,1,0,'admin',1487306990,1487306990),(127,27,8,'4','uploadfiles/image/201702/165.jpg','','','/index.php?c=content&a=show&id=127',0,1,0,1,0,'admin',1487307080,1487307080),(128,27,8,'5','uploadfiles/image/201702/166.jpg','','','/index.php?c=content&a=show&id=128',0,1,0,1,0,'admin',1487307100,1487307100),(122,43,10,'货架','uploadfiles/image/201702/135.jpg','','','/index.php?c=content&a=show&id=122',0,1,0,1,0,'admin',1487301572,1487301572),(124,27,8,'1','uploadfiles/image/201702/161.jpg','','','/index.php?c=content&a=show&id=124',0,1,0,1,0,'admin',1487306458,1487307167),(125,27,8,'2','uploadfiles/image/201702/163.jpg','','','/index.php?c=content&a=show&id=125',0,1,0,1,0,'admin',1487306964,1487306964),(118,32,8,'P776','uploadfiles/image/201702/118.jpg','','','/index.php?c=content&a=show&id=118',0,1,0,1,0,'admin',1486798558,1486798558),(119,32,8,'P860','uploadfiles/image/201702/119.jpg','','','/index.php?c=content&a=show&id=119',0,1,0,1,0,'admin',1486798597,1486798597),(120,32,8,'P1282','uploadfiles/image/201702/120.jpg','','','/index.php?c=content&a=show&id=120',0,1,0,1,0,'admin',1486798640,1486798640),(121,43,10,'卫浴','uploadfiles/image/201702/128.jpg','','','/index.php?c=content&a=show&id=121',0,1,0,1,0,'admin',1487301508,1487301508),(115,32,8,'A031','uploadfiles/image/201702/115.jpg','','','/index.php?c=content&a=show&id=115',0,1,0,1,0,'admin',1486798344,1486798344),(116,32,8,'A099','uploadfiles/image/201702/116.jpg','','','/index.php?c=content&a=show&id=116',0,1,0,1,0,'admin',1486798462,1486798462),(117,32,8,'A106','uploadfiles/image/201702/117.jpg','','','/index.php?c=content&a=show&id=117',0,1,0,1,0,'admin',1486798517,1486798517),(111,31,8,'6mm PVC结皮发泡板','uploadfiles/image/201702/111.jpg','','','/index.php?c=content&a=show&id=111',0,1,0,1,0,'admin',1486797955,1486797955),(112,31,8,'7mm PVC结皮发泡板','uploadfiles/image/201702/112.jpg','','','/index.php?c=content&a=show&id=112',0,1,0,1,0,'admin',1486798045,1486798045),(113,32,8,'A007','uploadfiles/image/201702/113.jpg','','','/index.php?c=content&a=show&id=113',0,1,0,1,0,'admin',1486798240,1486798240),(114,32,8,'A016','uploadfiles/image/201702/114.jpg','','','/index.php?c=content&a=show&id=114',0,1,0,1,0,'admin',1486798285,1486798285),(108,31,8,'4.5mm PVC结皮发泡板','uploadfiles/image/201702/108.jpg','','','/index.php?c=content&a=show&id=108',0,1,0,1,0,'admin',1486797432,1486797619),(109,31,8,'4.8mm PVC结皮发泡板','uploadfiles/image/201702/109.jpg','','','/index.php?c=content&a=show&id=109',0,1,0,1,0,'admin',1486797521,1486797679),(110,31,8,'5mm PVC结皮发泡板','uploadfiles/image/201702/110.jpg','','','/index.php?c=content&a=show&id=110',0,1,0,1,0,'admin',1486797823,1486797823),(105,31,8,'3mm PVC结皮发泡板','uploadfiles/image/201702/102.jpg','','','/index.php?c=content&a=show&id=105',0,1,0,1,0,'admin',1486797153,1486797153),(106,31,8,'3.8mm PVC结皮发泡板','uploadfiles/image/201702/103.jpg','','','/index.php?c=content&a=show&id=106',0,1,0,1,0,'admin',1486797243,1486797243),(107,31,8,'4mm PVC结皮发泡板','uploadfiles/image/201702/107.jpg','','','/index.php?c=content&a=show&id=107',0,1,0,1,0,'admin',1486797337,1486797591),(102,31,8,'2.5mm PVC结皮发泡板','uploadfiles/image/201702/99.jpg','','','/index.php?c=content&a=show&id=102',0,1,0,1,0,'admin',1486796726,1486796726),(103,31,8,'2.8mm PVC结皮发泡板','uploadfiles/image/201702/100.jpg','','','/index.php?c=content&a=show&id=103',0,1,0,1,0,'admin',1486796840,1486796879),(104,31,8,'3mm黑 PVC结皮发泡板','uploadfiles/image/201702/101.jpg','','','/index.php?c=content&a=show&id=104',0,1,0,1,0,'admin',1486797005,1486797035),(101,31,8,'2.3mm PVC结皮发泡板','uploadfiles/image/201702/98.jpg','','','/index.php?c=content&a=show&id=101',0,1,0,1,0,'admin',1486796616,1486796616),(99,31,8,'2mm黑 PVC结皮发泡板','uploadfiles/image/201702/96.jpg','','','/index.php?c=content&a=show&id=99',0,1,0,1,0,'admin',1486796324,1486796324),(100,31,8,'2mm PVC结皮发泡板','uploadfiles/image/201702/97.jpg','','','/index.php?c=content&a=show&id=100',0,1,0,1,0,'admin',1486796471,1486796471),(96,25,1,'塑胶地板 pvc地板和橡胶地板有什么区别？','uploadfiles/image/201702/61.jpg','塑胶地板,pvc地板','塑胶地板是PVC地板的另一种叫法。主要成分为聚氯乙烯材料，PVC地板可以做成两种，一种是同质透心的，就是从底到面的花纹材质都是一样的。还有一种是复合式的，就是最上面一层是纯PVC透明层，下面加上印花层和发泡层。','/index.php?c=content&a=show&id=96',0,1,0,1,0,'admin',1486618884,1486618949),(92,25,1,'PE塑料在多少度温度下对人体有害？','uploadfiles/image/201702/59.jpg','塑料','PE塑料  PE塑料\r\n  (聚乙烯)\r\n  英文名称:Polyethylene \r\n  比重:0.94-0.96克/立方厘米 成型收缩率:1.5-3.6% 成型温度：140-220℃ 干燥条件：---','/index.php?c=content&a=show&id=92',5,1,0,1,0,'admin',1486618247,1486618841),(93,25,1,'PE塑胶用途','uploadfiles/image/201702/60.jpg','','PE塑胶的原料是树脂。由高分子合成树脂(聚合物)为主要成份，渗入各种辅助料或添加剂,在特定温度,压力下，具有可塑性和流动性,可被模塑成一定形状,且在一定条件下保持形状不变的材料','/index.php?c=content&a=show&id=93',4,1,0,1,0,'admin',1486618313,1486618861),(94,25,1,'塑胶地板 pvc地板和橡胶地板有什么区别？','uploadfiles/image/201702/61.jpg','塑胶地板,pvc地板','塑胶地板是PVC地板的另一种叫法。主要成分为聚氯乙烯材料，PVC地板可以做成两种，一种是同质透心的，就是从底到面的花纹材质都是一样的。还有一种是复合式的，就是最上面一层是纯PVC透明层，下面加上印花层和发泡层。','/index.php?c=content&a=show&id=94',3,1,0,1,0,'admin',1486618367,1486618903),(76,50,15,'在线咨询1','','','','/index.php?c=content&a=show&id=76',1,1,0,1,0,'admin',1486541140,1486616625),(80,43,10,'雕刻、窗花','uploadfiles/image/201702/54.png','','','/index.php?c=content&a=show&id=80',0,1,0,1,0,'admin',1486541959,1487305652),(97,47,12,'gg','uploadfiles/image/201702/94.jpg','','','/index.php?c=content&a=show&id=97',0,1,0,1,0,'admin',1486789246,1486789292),(79,47,12,'视频','uploadfiles/image/201702/19.jpg','','','/index.php?c=content&a=show&id=79',0,1,0,1,0,'admin',1486541516,1486541516),(81,43,10,'复合板应用','uploadfiles/image/201702/53.png','','','/index.php?c=content&a=show&id=81',0,1,0,1,0,'admin',1486541992,1486616026),(82,43,10,'工业应用','uploadfiles/image/201702/52.png','','','/index.php?c=content&a=show&id=82',0,1,0,1,0,'admin',1486542017,1486615993),(83,43,10,'广告行业','uploadfiles/image/201702/55.png','','','/index.php?c=content&a=show&id=83',0,1,0,1,0,'admin',1486542043,1486616364),(84,43,10,'家具橱柜','uploadfiles/image/201702/49.jpg','','','/index.php?c=content&a=show&id=84',0,1,0,1,0,'admin',1486542070,1487305729),(85,48,13,'banner3','','','','/index.php?c=content&a=show&id=85',0,1,0,1,0,'admin',1486613511,1486959775),(87,50,15,'在线咨询2','','','','/index.php?c=content&a=show&id=87',2,1,0,1,0,'admin',1486616601,1486616601),(98,31,8,'18mmUV防水板','uploadfiles/image/201702/95.jpg','','','/index.php?c=content&a=show&id=98',0,1,0,1,0,'admin',1486796173,1486796173),(95,25,1,'高压金属软管的使用温度以及介质','uploadfiles/image/201702/62.jpg','金属软管','高压金属软管采用奥氏体不锈钢材料或按用户要求的材料制造，具有优良的柔软性，耐蚀性，耐高温性（－235℃ ～ ＋450℃)','/index.php?c=content&a=show&id=95',2,1,0,1,0,'admin',1486618416,1486618923),(70,48,13,'banner1','','','','/index.php?c=content&a=show&id=70',0,1,0,1,0,'admin',1486540723,1486711605),(71,48,13,'banner2','','','','/index.php?c=content&a=show&id=71',0,1,0,1,0,'admin',1486540752,1487304806),(89,25,1,'亚洲现货橡胶2月11日价格保持稳定','uploadfiles/image/201702/56.jpg','亚洲','据新加坡外媒报道，2月11日亚洲现货橡胶价格保持稳定不变动，日本逢公共假期休市，且中国农历新年假期即将到来，致使市场交投迟缓。','/index.php?c=content&a=show&id=89',7,1,0,1,0,'admin',1486617943,1486618812),(90,25,1,'让您知道橡塑这个词','uploadfiles/image/201702/57.jpg','橡塑','橡塑是橡胶和塑料两词的统称，它们都是从石油中衍生出来的产品,在来源上它们一样,但是,在成品的制作过程中,物性却有不同,用途也不一样,橡胶使用最常见的是轮胎,塑料在日常生活中的作用也越来越普遍和重要。','/index.php?c=content&a=show&id=90',6,1,0,1,0,'admin',1486618074,1486618826),(91,25,1,'PVC塑胶地板和橡胶地板施工工艺一样吗？','uploadfiles/image/201702/63.jpg','塑胶地板','按照施工流程来说是一样的\r\n基层处理--吸尘 打磨\r\n涂底油--界面剂\r\n自流平--一般2个厚 也是打磨吸尘 等72小时干透','/index.php?c=content&a=show&id=91',1,1,0,1,0,'admin',1486618132,1486618669);

/*Table structure for table `fn_content_1_anlizhanshi` */

DROP TABLE IF EXISTS `fn_content_1_anlizhanshi`;

CREATE TABLE `fn_content_1_anlizhanshi` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `tupianji` text,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_content_1_anlizhanshi` */

insert  into `fn_content_1_anlizhanshi`(`id`,`catid`,`content`,`tupianji`) values (80,43,'','a:2:{s:4:\"file\";a:11:{i:0;s:31:\"uploadfiles/image/201702/21.jpg\";i:1;s:31:\"uploadfiles/image/201702/22.jpg\";i:2;s:31:\"uploadfiles/image/201702/23.jpg\";i:3;s:32:\"uploadfiles/image/201702/147.jpg\";i:4;s:32:\"uploadfiles/image/201702/148.png\";i:5;s:32:\"uploadfiles/image/201702/149.jpg\";i:6;s:32:\"uploadfiles/image/201702/150.jpg\";i:7;s:32:\"uploadfiles/image/201702/151.jpg\";i:8;s:32:\"uploadfiles/image/201702/152.jpg\";i:9;s:32:\"uploadfiles/image/201702/153.jpg\";i:10;s:32:\"uploadfiles/image/201702/154.jpg\";}s:3:\"alt\";a:11:{i:0;s:20:\"20150212152367136713\";i:1;s:20:\"20150212152425442544\";i:2;s:20:\"20150212152487318731\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:1:\"8\";i:7;s:1:\"9\";i:8;s:2:\"10\";i:9;s:2:\"11\";i:10;s:16:\"10151915591_s[1]\";}}'),(81,43,'','a:2:{s:4:\"file\";a:5:{i:0;s:31:\"uploadfiles/image/201702/25.jpg\";i:1;s:31:\"uploadfiles/image/201702/26.jpg\";i:2;s:31:\"uploadfiles/image/201702/27.jpg\";i:3;s:31:\"uploadfiles/image/201702/28.jpg\";i:4;s:31:\"uploadfiles/image/201702/29.jpg\";}s:3:\"alt\";a:5:{i:0;s:19:\"2015030915360628628\";i:1;s:20:\"20150309154082278227\";i:2;s:20:\"20150309155786238623\";i:3;s:20:\"20150309155874717471\";i:4;s:20:\"20150309155981808180\";}}'),(82,43,'','a:2:{s:4:\"file\";a:2:{i:0;s:31:\"uploadfiles/image/201702/31.jpg\";i:1;s:31:\"uploadfiles/image/201702/32.jpg\";}s:3:\"alt\";a:2:{i:0;s:20:\"20150212152317571757\";i:1;s:20:\"20150212152338683868\";}}'),(83,43,'','a:2:{s:4:\"file\";a:4:{i:0;s:31:\"uploadfiles/image/201702/34.jpg\";i:1;s:31:\"uploadfiles/image/201702/35.jpg\";i:2;s:31:\"uploadfiles/image/201702/36.jpg\";i:3;s:31:\"uploadfiles/image/201702/37.jpg\";}s:3:\"alt\";a:4:{i:0;s:20:\"20150212151832693269\";i:1;s:20:\"20150212151921532153\";i:2;s:20:\"20150212151971197119\";i:3;s:20:\"20150212151987428742\";}}'),(84,43,'','a:2:{s:4:\"file\";a:9:{i:0;s:31:\"uploadfiles/image/201702/41.jpg\";i:1;s:32:\"uploadfiles/image/201702/121.jpg\";i:2;s:32:\"uploadfiles/image/201702/122.jpg\";i:3;s:32:\"uploadfiles/image/201702/155.jpg\";i:4;s:32:\"uploadfiles/image/201702/156.jpg\";i:5;s:32:\"uploadfiles/image/201702/157.jpg\";i:6;s:32:\"uploadfiles/image/201702/158.jpg\";i:7;s:32:\"uploadfiles/image/201702/159.jpg\";i:8;s:32:\"uploadfiles/image/201702/160.jpg\";}s:3:\"alt\";a:9:{i:0;s:20:\"20150212152150595059\";i:1;s:2:\"13\";i:2;s:2:\"14\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"3\";i:6;s:1:\"4\";i:7;s:1:\"5\";i:8;s:30:\"T2Pyl8XoXXXXXXXXXX_!!398658606\";}}'),(121,43,'','a:2:{s:4:\"file\";a:6:{i:0;s:32:\"uploadfiles/image/201702/129.jpg\";i:1;s:32:\"uploadfiles/image/201702/130.jpg\";i:2;s:32:\"uploadfiles/image/201702/131.jpg\";i:3;s:32:\"uploadfiles/image/201702/132.jpg\";i:4;s:32:\"uploadfiles/image/201702/133.jpg\";i:5;s:32:\"uploadfiles/image/201702/134.jpg\";}s:3:\"alt\";a:6:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"5\";i:4;s:19:\"t01d398f02ba0ff267b\";i:5;s:22:\"t01fd0c5d23c2450cfb[1]\";}}'),(122,43,'','a:2:{s:4:\"file\";a:6:{i:0;s:32:\"uploadfiles/image/201702/136.jpg\";i:1;s:32:\"uploadfiles/image/201702/137.jpg\";i:2;s:32:\"uploadfiles/image/201702/138.jpg\";i:3;s:32:\"uploadfiles/image/201702/139.jpg\";i:4;s:32:\"uploadfiles/image/201702/140.jpg\";i:5;s:32:\"uploadfiles/image/201702/141.jpg\";}s:3:\"alt\";a:6:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"5\";i:4;s:19:\"t01d398f02ba0ff267b\";i:5;s:22:\"t01fd0c5d23c2450cfb[1]\";}}'),(138,42,'','a:2:{s:4:\"file\";a:6:{i:0;s:32:\"uploadfiles/image/201702/176.jpg\";i:1;s:32:\"uploadfiles/image/201702/177.jpg\";i:2;s:32:\"uploadfiles/image/201702/178.jpg\";i:3;s:32:\"uploadfiles/image/201702/179.jpg\";i:4;s:32:\"uploadfiles/image/201702/180.jpg\";i:5;s:32:\"uploadfiles/image/201702/181.jpg\";}s:3:\"alt\";a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:30:\"T2Pyl8XoXXXXXXXXXX_!!398658606\";}}'),(139,42,'','a:2:{s:4:\"file\";a:8:{i:0;s:32:\"uploadfiles/image/201702/182.jpg\";i:1;s:32:\"uploadfiles/image/201702/183.png\";i:2;s:32:\"uploadfiles/image/201702/184.jpg\";i:3;s:32:\"uploadfiles/image/201702/185.jpg\";i:4;s:32:\"uploadfiles/image/201702/186.jpg\";i:5;s:32:\"uploadfiles/image/201702/187.jpg\";i:6;s:32:\"uploadfiles/image/201702/188.jpg\";i:7;s:32:\"uploadfiles/image/201702/189.jpg\";}s:3:\"alt\";a:8:{i:0;s:1:\"4\";i:1;s:1:\"5\";i:2;s:1:\"6\";i:3;s:1:\"8\";i:4;s:1:\"9\";i:5;s:2:\"10\";i:6;s:2:\"11\";i:7;s:16:\"10151915591_s[1]\";}}'),(140,42,'','a:2:{s:4:\"file\";a:2:{i:0;s:32:\"uploadfiles/image/201702/190.jpg\";i:1;s:32:\"uploadfiles/image/201702/191.jpg\";}s:3:\"alt\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"3\";}}'),(141,42,'','a:2:{s:4:\"file\";a:5:{i:0;s:32:\"uploadfiles/image/201702/192.jpg\";i:1;s:32:\"uploadfiles/image/201702/193.jpg\";i:2;s:32:\"uploadfiles/image/201702/194.jpg\";i:3;s:32:\"uploadfiles/image/201702/195.jpg\";i:4;s:32:\"uploadfiles/image/201702/196.jpg\";}s:3:\"alt\";a:5:{i:0;s:1:\"1\";i:1;s:36:\"05ec7b88-9df1-4ddc-9b64-67d19ddcf1a5\";i:2;s:13:\"4901893343[1]\";i:3;s:26:\"n_s12033409245727311076[1]\";i:4;s:30:\"wKhQplVokDSEIyS3AAAAACQlhNI593\";}}'),(142,42,'','a:2:{s:4:\"file\";a:6:{i:0;s:32:\"uploadfiles/image/201702/197.jpg\";i:1;s:32:\"uploadfiles/image/201702/198.jpg\";i:2;s:32:\"uploadfiles/image/201702/199.jpg\";i:3;s:32:\"uploadfiles/image/201702/200.jpg\";i:4;s:32:\"uploadfiles/image/201702/201.jpg\";i:5;s:32:\"uploadfiles/image/201702/202.jpg\";}s:3:\"alt\";a:6:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"5\";i:4;s:19:\"t01d398f02ba0ff267b\";i:5;s:22:\"t01fd0c5d23c2450cfb[1]\";}}');

/*Table structure for table `fn_content_1_chanpinzhanshi` */

DROP TABLE IF EXISTS `fn_content_1_chanpinzhanshi`;

CREATE TABLE `fn_content_1_chanpinzhanshi` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `chanpinleibie` varchar(255) DEFAULT NULL,
  `chanpinhoudu` varchar(255) DEFAULT NULL,
  `chanpinmidu` varchar(255) DEFAULT NULL,
  `chanpinyanse` varchar(255) DEFAULT NULL,
  `zuidafukuan` varchar(255) DEFAULT NULL,
  `biaozhunchangdu` varchar(255) DEFAULT NULL,
  `biaomianchuli` varchar(255) DEFAULT NULL,
  `baozhuangfangshi` varchar(255) DEFAULT NULL,
  `yunshufangshi` varchar(255) DEFAULT NULL,
  `jiesuanfangshi` varchar(255) DEFAULT NULL,
  `shengchanchangshang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_content_1_chanpinzhanshi` */

insert  into `fn_content_1_chanpinzhanshi`(`id`,`catid`,`content`,`chanpinleibie`,`chanpinhoudu`,`chanpinmidu`,`chanpinyanse`,`zuidafukuan`,`biaozhunchangdu`,`biaomianchuli`,`baozhuangfangshi`,`yunshufangshi`,`jiesuanfangshi`,`shengchanchangshang`) values (98,31,'','18mmUV防水板','18mm','0.4~0.7','灰色','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(99,31,'','2mm黑 PVC结皮发泡板','2mm','0.4~0.7','黑、白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(100,31,'','2mm PVC结皮发泡板','2mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(101,31,'','2.3mm PVC结皮发泡板','2.3mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(102,31,'','2.5mm PVC结皮发泡板','2.5mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(103,31,'','2.8mm PVC结皮发泡板','2.8mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(104,31,'','3mm黑 PVC结皮发泡板','3mm','0.4~0.7','黑、白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(105,31,'','3mm PVC结皮发泡板','3mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(106,31,'','3.8mm PVC结皮发泡板','3.8mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(107,31,'','4mm PVC结皮发泡板','4mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(108,31,'','4.5mm PVC结皮发泡板','4.5mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(109,31,'','4.8mm PVC结皮发泡板','4.8mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(110,31,'','5mm PVC结皮发泡板','5mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(111,31,'','6mm PVC结皮发泡板','6mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(112,31,'','7mm PVC结皮发泡板','7mm','0.4~0.7','白','1220mm','2440mm','覆膜、印图标','无包装、纸皮、木托、按客户要求','汽运、海运','转账、现金','厦门稻美橡塑制品有限公司'),(113,32,'','','','','','','','','','','',''),(114,32,'','','','','','','','','','','',''),(115,32,'','','','','','','','','','','',''),(116,32,'','','','','','','','','','','',''),(117,32,'','','','','','','','','','','',''),(118,32,'','','','','','','','','','','',''),(119,32,'','','','','','','','','','','',''),(120,32,'','','','','','','','','','','',''),(124,27,'','PVC结皮发泡板','','','','','','','','','',''),(125,27,'','','','','','','','','','','',''),(126,27,'','','','','','','','','','','',''),(127,27,'','','','','','','','','','','',''),(128,27,'','','','','','','','','','','',''),(129,27,'','','','','','','','','','','',''),(130,27,'','','','','','','','','','','',''),(131,27,'','','','','','','','','','','',''),(132,27,'','','','','','','','','','','',''),(133,27,'','','','','','','','','','','',''),(134,27,'','','','','','','','','','','',''),(135,27,'','','','','','','','','','','',''),(136,27,'','','','','','','','','','','',''),(137,27,'','','','','','','','','','','','');

/*Table structure for table `fn_content_1_extend` */

DROP TABLE IF EXISTS `fn_content_1_extend`;

CREATE TABLE `fn_content_1_extend` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `verify` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  KEY `id` (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_content_1_extend` */

/*Table structure for table `fn_content_1_gongsirongyu` */

DROP TABLE IF EXISTS `fn_content_1_gongsirongyu`;

CREATE TABLE `fn_content_1_gongsirongyu` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `tupianji` text,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_content_1_gongsirongyu` */

insert  into `fn_content_1_gongsirongyu`(`id`,`catid`,`content`,`tupianji`) values (143,37,'','a:2:{s:4:\"file\";a:3:{i:0;s:32:\"uploadfiles/image/201702/211.png\";i:1;s:32:\"uploadfiles/image/201702/212.png\";i:2;s:32:\"uploadfiles/image/201702/213.png\";}s:3:\"alt\";a:3:{i:0;s:36:\"17CD57B7-6EAB-4DFF-9B6B-2F022EBA8BEC\";i:1;s:36:\"DAC2D058-6154-4C41-8F04-AEEC6B2261A5\";i:2;s:36:\"E093B5B2-1C4C-4F5E-ACD4-8697B0A1AB0C\";}}'),(145,40,'','a:2:{s:4:\"file\";a:3:{i:0;s:32:\"uploadfiles/image/201702/214.png\";i:1;s:32:\"uploadfiles/image/201702/215.png\";i:2;s:32:\"uploadfiles/image/201702/216.png\";}s:3:\"alt\";a:3:{i:0;s:36:\"17CD57B7-6EAB-4DFF-9B6B-2F022EBA8BEC\";i:1;s:36:\"DAC2D058-6154-4C41-8F04-AEEC6B2261A5\";i:2;s:36:\"E093B5B2-1C4C-4F5E-ACD4-8697B0A1AB0C\";}}');

/*Table structure for table `fn_content_1_huandengpian` */

DROP TABLE IF EXISTS `fn_content_1_huandengpian`;

CREATE TABLE `fn_content_1_huandengpian` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `tupian` varchar(255) DEFAULT NULL,
  `yingwenbantupian` varchar(255) DEFAULT NULL,
  `lianjie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_content_1_huandengpian` */

insert  into `fn_content_1_huandengpian`(`id`,`catid`,`content`,`tupian`,`yingwenbantupian`,`lianjie`) values (70,48,'','uploadfiles/image/201702/78.png','uploadfiles/image/201702/76.png',''),(85,48,'','uploadfiles/image/201702/125.jpg','uploadfiles/image/201702/123.jpg',''),(71,48,'','uploadfiles/image/201702/145.jpg','uploadfiles/image/201702/143.jpg','');

/*Table structure for table `fn_content_1_news` */

DROP TABLE IF EXISTS `fn_content_1_news`;

CREATE TABLE `fn_content_1_news` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_content_1_news` */

insert  into `fn_content_1_news`(`id`,`catid`,`content`) values (96,25,'&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; 塑胶地板是PVC地板的另一种叫法。主要成分为聚氯乙烯材料，PVC地板可以做成两种，一种是同质透心的，就是从底到面的花纹材质都是一样的。还有一种是复合式的，就是最上面一层是纯PVC透明层，下面加上印花层和发泡层。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; “PVC地板”就是指采用聚氯乙烯材料生产的地板。具体就是以聚氯乙烯及其共聚树脂为主要原料，加入填料、增塑剂、稳定剂、着色剂等辅料，在片状连续基材上，经涂敷工艺或经压延、挤出或挤压工艺生产而成。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; （1）从形态上分为卷材地板和片材地板2种；所谓卷材地板就是质地较为柔软的一卷一卷的地板，一般其宽度有1.5米、1.83米、2米、3米、4米、5米等，每卷长度有7.5米、15米、20米、25米等，总厚度有1.6mm-3.2mm（仅限商用地板，运动地板更厚可达4mm、5mm、6mm等）。片材地板的规格较多，主要分为条形材和方形材。（2）从结构上分主要有复合体型和同质体型2种，另外还有一种是半同质体型；所谓复合型PVC地板就是说它是有多层结构的，复合体型卷材一般是由4~5层结构叠压而成，一般有耐磨层(含UV处理)、印花膜层、玻璃纤维层、弹性发泡层、基层等。复合体型片材一般是由3-4层结构叠压而成，一般有耐磨层（含UV处理）、印花膜层、稳定层，基层。同质体PVC地板不管是卷材还是片材，都是上下同质的，即从面到底，从上到下，都是同一种材质，同一种花色。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 橡胶地板是天然橡胶、合成橡胶和其它成分的高分子材料所制成的地板。 丁苯、高苯、顺丁橡胶为合成橡胶，是石油的附产品。天然橡胶是指人工培育的橡胶树采下来的橡胶。 橡胶地板是环保地板，因为所有的材料都是无毒无害的环保材料及高分子环保材料。橡胶地板作为地面装饰材料在国外发达国家已流行了数十年，并且得到了广泛的应用。而在我国才刚刚兴起。特别是公共活动场所和交通较为繁忙地区，如飞机场、火车站、地铁站台、博物馆、宾馆、写字楼、影剧院、百货商场、学校、医院、幼儿园等。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;'),(95,25,'&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); font-size: 16px;&quot;&gt;高压金属软管采用奥氏体不锈钢材料或按用户要求的材料制造，具有优良的柔软性，耐蚀性，耐高温性（－235℃&amp;nbsp;～&amp;nbsp;＋450℃)，耐高压性（最高为32MPa），在管路中可对任何方向进行连接，用以温度补偿和吸收振动、降低噪声、改变介质输送方向、消除管道间或管道与设备间的机械位移等，双法兰金属波纹软管对有位移、振动的各种泵、阀等的柔性接头尤为适用。&lt;/span&gt;&lt;/p&gt;'),(94,25,'&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; 塑胶地板是PVC地板的另一种叫法。主要成分为聚氯乙烯材料，PVC地板可以做成两种，一种是同质透心的，就是从底到面的花纹材质都是一样的。还有一种是复合式的，就是最上面一层是纯PVC透明层，下面加上印花层和发泡层。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; “PVC地板”就是指采用聚氯乙烯材料生产的地板。具体就是以聚氯乙烯及其共聚树脂为主要原料，加入填料、增塑剂、稳定剂、着色剂等辅料，在片状连续基材上，经涂敷工艺或经压延、挤出或挤压工艺生产而成。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; （1）从形态上分为卷材地板和片材地板2种；所谓卷材地板就是质地较为柔软的一卷一卷的地板，一般其宽度有1.5米、1.83米、2米、3米、4米、5米等，每卷长度有7.5米、15米、20米、25米等，总厚度有1.6mm-3.2mm（仅限商用地板，运动地板更厚可达4mm、5mm、6mm等）。片材地板的规格较多，主要分为条形材和方形材。（2）从结构上分主要有复合体型和同质体型2种，另外还有一种是半同质体型；所谓复合型PVC地板就是说它是有多层结构的，复合体型卷材一般是由4~5层结构叠压而成，一般有耐磨层(含UV处理)、印花膜层、玻璃纤维层、弹性发泡层、基层等。复合体型片材一般是由3-4层结构叠压而成，一般有耐磨层（含UV处理）、印花膜层、稳定层，基层。同质体PVC地板不管是卷材还是片材，都是上下同质的，即从面到底，从上到下，都是同一种材质，同一种花色。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 橡胶地板是天然橡胶、合成橡胶和其它成分的高分子材料所制成的地板。 丁苯、高苯、顺丁橡胶为合成橡胶，是石油的附产品。天然橡胶是指人工培育的橡胶树采下来的橡胶。 橡胶地板是环保地板，因为所有的材料都是无毒无害的环保材料及高分子环保材料。橡胶地板作为地面装饰材料在国外发达国家已流行了数十年，并且得到了广泛的应用。而在我国才刚刚兴起。特别是公共活动场所和交通较为繁忙地区，如飞机场、火车站、地铁站台、博物馆、宾馆、写字楼、影剧院、百货商场、学校、医院、幼儿园等。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;'),(93,25,'&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;PE塑胶的原料是树脂。由高分子合成树脂(聚合物)为主要成份，渗入各种辅助料或添加剂,在特定温度,压力下，具有可塑性和流动性,可被模塑成一定形状,且在一定条件下保持形状不变的材料.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;用途：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 塑胶零件广泛应用现代生活中的每一个领域，例如家用电器、仪器仪表、电线电缆、建筑器材、通讯电子、汽车工业、航天航空、日用五金等。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;'),(90,25,'&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;橡塑是橡胶和塑料两词的统称，它们都是从石油中衍生出来的产品,在来源上它们一样,但是,在成品的制作过程中,物性却有不同,用途也不一样,橡胶使用最常见的是轮胎,塑料在日常生活中的作用也越来越普遍和重要。&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 塑料与橡胶最基本的区别在于塑料如果发生形变是塑性变形，然而橡胶是弹性形变。也就是说，塑料形变后不容易恢复初始状态，但是橡胶同橡胶相比就容易得多。塑料的弹性是比较小的，通常小于100%，但橡胶却可以达到1000%甚至更多。塑料在成型上当绝大多数成型过程结束时，该产品过程也就相应的结束；而橡胶成型过程结束后还得需要继续进行硫化。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;'),(91,25,'&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;按照施工流程来说是一样的&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;基层处理--吸尘 打磨&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;涂底油--界面剂&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;自流平--一般2个厚 也是打磨吸尘 等72小时干透&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;刮胶&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;铺板---预铺 下料 贴板 开槽 焊接&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;平整 去起鼓 或小范围修整&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;注意：含水率小于8% 湿度小于75% 温度15度以上 通风 恒温&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;至于不同处 主要有以下几点&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;1 自流平硬度 橡胶地板最好到c20硬度&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;2 胶水方面 橡胶地板建议使用双组份胶水&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;3橡胶地板因其尺寸稳定性更好 可采用密拼 就是不用焊线&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;4 因橡胶地板裁板难度大 建议找有经验师傅施工 我指铺装过橡胶地板的师傅&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;5 橡胶地板宽幅一般较PVC窄 预铺下料要计算好 减少浪费 损耗&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;6 橡胶地板上墙比PVC难度大&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;'),(92,25,'&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;PE塑料&amp;nbsp; PE塑料&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; (聚乙烯)&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; 英文名称:Polyethylene&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; 比重:0.94-0.96克/立方厘米 成型收缩率:1.5-3.6% 成型温度：140-220℃ 干燥条件：---&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; 物料性能 耐腐蚀性,电绝缘性(尤其高频绝缘性)优良,可以氯化,辐照改性,可用玻璃纤维增强.低压聚乙烯的熔点,刚性,硬度和强度较高,吸水性小,有良好的电性能和耐辐射性;高压聚乙烯的柔软性,伸长率,冲击强度和渗透性较好;超高分子量聚乙烯冲击强度高,耐疲劳,耐磨. 低压聚乙烯适于制作耐腐蚀零件和绝缘零件;高压聚乙烯适于制作薄膜等;超高分子量聚乙烯适于制作减震,耐磨及传动零件.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; 成型性能 1.结晶料,吸湿小,不须充分干燥,流动性极好流动性对压力敏感,成型时宜用高压注射,料温均匀,填充速度快,保压充分.不宜用直接浇口,以防收缩不均,内应力增大.注意选择浇口位置,防止产生缩孔和变形.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; 2.收缩范围和收缩值大,方向性明显,易变形翘曲.冷却速度宜慢,模具设冷料穴,并有冷却系统.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; 3.加热时间不宜过长,否则会发生分解,灼伤.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; 4.软质塑件有较浅的侧凹槽时,可强行脱模.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; 5.可能发生融体破裂,不宜与有机溶剂接触,以防开裂.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;聚乙烯的分解温度在380度以上。如果是在煮饭时和食物一起加热，温度怎麼也达不到它的分解温度的。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;纯粹的聚乙烯分解不会产生有毒物质。但是，一般的聚乙烯制品，在生产过程中都会加入一些加工助剂，如热稳定剂，抗氧化剂等。这些物质的分解温度有的很低，有些本身可能就有安全问题。所以，只要是正规的食品包装的聚乙烯容器，加热温度不是太高，一般不会分解，也不会产生有毒物质。&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;'),(89,25,'&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;据新加坡外媒报道，2月11日亚洲现货橡胶价格保持稳定不变动，日本逢公共假期休市，且中国农历新年假期即将到来，致使市场交投迟缓。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;　　新加坡贸易商称，尽管供应紧张，但市场持续低迷，这造迫使一些人仍以低于成本的价格进行销售，以保障资金流动。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;　　4月从巴邻旁发运的印尼轮胎级标准胶SIR20以每吨1440美元成交，FOB基准。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;　　3月/4月装船的泰国3号烟片胶RSS3报每公斤184-185美分，上交易日报183-184美分。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;　　3月/4月装船的泰国轮胎级标准胶STR20报每公斤150-151美分，上交易日报150-152美分。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;　　3月/4月装船的印尼轮胎级标准胶SIR20报每公斤142-144美分，上交易日报142-144美分。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 12px; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;　　3月/4月装船的马来西亚轮胎级标准胶SMR20报每公斤143-145美分，上交易日报143-145美分。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');

/*Table structure for table `fn_content_1_shipinzhongxin` */

DROP TABLE IF EXISTS `fn_content_1_shipinzhongxin`;

CREATE TABLE `fn_content_1_shipinzhongxin` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `shipinwenjian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_content_1_shipinzhongxin` */

insert  into `fn_content_1_shipinzhongxin`(`id`,`catid`,`content`,`shipinwenjian`) values (79,47,'','uploadfiles/file/201702/1.mp4'),(97,47,'','uploadfiles/file/201702/2.mp4'),(144,47,'','uploadfiles/file/201702/3.mp4');

/*Table structure for table `fn_content_1_verify` */

DROP TABLE IF EXISTS `fn_content_1_verify`;

CREATE TABLE `fn_content_1_verify` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `modelid` smallint(5) NOT NULL,
  `userid` mediumint(8) NOT NULL,
  `username` char(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tablename` char(30) NOT NULL,
  `updatetime` bigint(10) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `content` longtext NOT NULL,
  KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `modelid` (`modelid`,`updatetime`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_content_1_verify` */

/*Table structure for table `fn_content_1_youqinglianjie` */

DROP TABLE IF EXISTS `fn_content_1_youqinglianjie`;

CREATE TABLE `fn_content_1_youqinglianjie` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `lianjie` varchar(255) DEFAULT NULL,
  `zhongwenmingcheng` varchar(255) DEFAULT NULL,
  `yingwenmingcheng` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_content_1_youqinglianjie` */

/*Table structure for table `fn_content_1_zaixiankefu` */

DROP TABLE IF EXISTS `fn_content_1_zaixiankefu`;

CREATE TABLE `fn_content_1_zaixiankefu` (
  `id` int(10) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  `QQ` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_content_1_zaixiankefu` */

insert  into `fn_content_1_zaixiankefu`(`id`,`catid`,`content`,`QQ`) values (76,50,'','2196930998'),(87,50,'','2196930998');

/*Table structure for table `fn_favorite` */

DROP TABLE IF EXISTS `fn_favorite`;

CREATE TABLE `fn_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL,
  `title` char(100) NOT NULL,
  `url` char(100) NOT NULL,
  `adddate` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `userid` (`userid`),
  KEY `site` (`site`),
  KEY `adddate` (`adddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_favorite` */

/*Table structure for table `fn_form` */

DROP TABLE IF EXISTS `fn_form`;

CREATE TABLE `fn_form` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `fn_form` */

/*Table structure for table `fn_form_1_gbook` */

DROP TABLE IF EXISTS `fn_form_1_gbook`;

CREATE TABLE `fn_form_1_gbook` (
  `id` int(10) NOT NULL,
  `cid` mediumint(8) NOT NULL,
  `userid` mediumint(8) NOT NULL,
  `username` char(20) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` char(20) DEFAULT NULL,
  `neirong` text,
  `xingming` varchar(255) DEFAULT NULL,
  `dianhua` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`),
  KEY `inputtime` (`inputtime`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_form_1_gbook` */

insert  into `fn_form_1_gbook`(`id`,`cid`,`userid`,`username`,`listorder`,`status`,`inputtime`,`updatetime`,`ip`,`neirong`,`xingming`,`dianhua`) values (6,0,0,'',0,1,1485078720,1485078720,'','fv分低V','成都城市','福鼎发发'),(7,0,0,'',0,1,1485078755,1485078755,'','发热','烦人烦人','芙蓉峰'),(9,0,0,'',0,1,1485089619,1485089619,'','8而预告-908','剖批斗','哦8rey');

/*Table structure for table `fn_form_1_rencaizhaopin` */

DROP TABLE IF EXISTS `fn_form_1_rencaizhaopin`;

CREATE TABLE `fn_form_1_rencaizhaopin` (
  `id` int(10) NOT NULL,
  `cid` mediumint(8) NOT NULL,
  `userid` mediumint(8) NOT NULL,
  `username` char(20) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` char(20) DEFAULT NULL,
  `xingming` varchar(255) DEFAULT NULL,
  `xingbie` varchar(255) DEFAULT NULL,
  `chushengshijian` text,
  `yingpinzhiwei` varchar(255) DEFAULT NULL,
  `zhuanye` varchar(255) DEFAULT NULL,
  `biyeshijian` varchar(255) DEFAULT NULL,
  `biyeyuanxiao` varchar(255) DEFAULT NULL,
  `lianxidianhua` varchar(255) DEFAULT NULL,
  `gongzuojingli` text,
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`),
  KEY `inputtime` (`inputtime`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_form_1_rencaizhaopin` */

insert  into `fn_form_1_rencaizhaopin`(`id`,`cid`,`userid`,`username`,`listorder`,`status`,`inputtime`,`updatetime`,`ip`,`xingming`,`xingbie`,`chushengshijian`,`yingpinzhiwei`,`zhuanye`,`biyeshijian`,`biyeyuanxiao`,`lianxidianhua`,`gongzuojingli`) values (10,0,0,'',0,1,1485089682,1485089682,'','几盘','女','的v上单','5786345','试试','分VB西欧皮卡','上单在在','福鼎v爱的','挨批翻译哦呜元素滑动'),(11,0,0,'',0,1,1485091644,1485091644,'','成都','男','动次打次的','差点迟到','差点迟到','差点迟到','动次打次','擦擦擦','动次打次');

/*Table structure for table `fn_ip` */

DROP TABLE IF EXISTS `fn_ip`;

CREATE TABLE `fn_ip` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `addtime` bigint(10) NOT NULL,
  `endtime` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_ip` */

/*Table structure for table `fn_linkage` */

DROP TABLE IF EXISTS `fn_linkage`;

CREATE TABLE `fn_linkage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `name` varchar(30) NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `child` tinyint(1) NOT NULL,
  `arrchilds` varchar(200) NOT NULL,
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `list` (`site`,`parentid`,`keyid`,`listorder`),
  KEY `keyid` (`site`,`keyid`),
  KEY `child` (`child`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `fn_linkage` */

insert  into `fn_linkage`(`id`,`site`,`name`,`parentid`,`child`,`arrchilds`,`keyid`,`listorder`) values (1,0,'地区',0,0,'',0,0),(2,1,'地区一',0,1,'2,6,7,8,9,10',1,0),(3,1,'地区二',0,1,'3,11,12,13',1,0),(4,1,'地区三',0,1,'4,14,15',1,0),(5,1,'地区四',0,1,'5,16,17,18',1,0),(6,1,'街道11',2,0,'6',1,0),(7,1,'街道12',2,0,'7',1,0),(8,1,'街道13',2,0,'8',1,0),(9,1,'街道14',2,0,'9',1,0),(10,1,'街道15',2,0,'10',1,0),(11,1,'街道21',3,0,'11',1,0),(12,1,'街道22',3,0,'12',1,0),(13,1,'街道23',3,0,'13',1,0),(14,1,'街道31',4,0,'14',1,0),(15,1,'街道32',4,0,'15',1,0),(16,1,'街道4',5,0,'16',1,0),(17,1,'街道41',5,0,'17',1,0),(18,1,'街道42',5,0,'18',1,0);

/*Table structure for table `fn_member` */

DROP TABLE IF EXISTS `fn_member`;

CREATE TABLE `fn_member` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `salt` char(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `avatar` varchar(100) NOT NULL DEFAULT '',
  `groupid` smallint(5) NOT NULL DEFAULT '1',
  `modelid` smallint(5) NOT NULL,
  `credits` int(10) NOT NULL,
  `regdate` bigint(10) unsigned NOT NULL DEFAULT '0',
  `regip` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `randcode` varchar(32) NOT NULL,
  `lastloginip` varchar(15) NOT NULL,
  `lastlogintime` bigint(10) NOT NULL,
  `loginip` varchar(15) NOT NULL,
  `logintime` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `groupid` (`groupid`),
  KEY `status` (`status`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_member` */

/*Table structure for table `fn_member_count` */

DROP TABLE IF EXISTS `fn_member_count`;

CREATE TABLE `fn_member_count` (
  `id` mediumint(8) NOT NULL,
  `post` mediumint(5) NOT NULL,
  `pms` mediumint(5) NOT NULL,
  `updatetime` bigint(10) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_member_count` */

/*Table structure for table `fn_member_geren` */

DROP TABLE IF EXISTS `fn_member_geren`;

CREATE TABLE `fn_member_geren` (
  `id` mediumint(8) NOT NULL,
  `xingming` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_member_geren` */

/*Table structure for table `fn_member_group` */

DROP TABLE IF EXISTS `fn_member_group`;

CREATE TABLE `fn_member_group` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `credits` mediumint(8) NOT NULL,
  `allowpost` mediumint(8) NOT NULL,
  `allowpms` mediumint(8) NOT NULL,
  `allowattachment` tinyint(1) NOT NULL,
  `postverify` tinyint(1) NOT NULL,
  `auto` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` smallint(5) NOT NULL,
  `listorder` tinyint(3) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `fn_member_group` */

insert  into `fn_member_group`(`id`,`name`,`credits`,`allowpost`,`allowpms`,`allowattachment`,`postverify`,`auto`,`filesize`,`listorder`,`disabled`) values (1,'新手上路',0,3,1,0,1,0,5,0,0),(2,'普通会员',20,1,0,0,1,0,10,0,0),(3,'中级会员',50,10,0,0,0,0,20,0,0),(4,'高级会员',100,12,0,1,0,0,50,0,0),(5,'金牌会员',200,100,10,1,0,0,0,0,0);

/*Table structure for table `fn_member_pms` */

DROP TABLE IF EXISTS `fn_member_pms`;

CREATE TABLE `fn_member_pms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sendname` varchar(30) NOT NULL DEFAULT '',
  `sendid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toname` varchar(30) NOT NULL DEFAULT '',
  `toid` mediumint(8) NOT NULL,
  `isadmin` tinyint(1) NOT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `sendtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `hasview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `senddel` mediumint(8) NOT NULL,
  `todel` mediumint(8) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `sendtime` (`sendtime`),
  KEY `sendid` (`sendid`),
  KEY `hasview` (`hasview`),
  KEY `isadmin` (`isadmin`),
  KEY `toid` (`toid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_member_pms` */

/*Table structure for table `fn_model` */

DROP TABLE IF EXISTS `fn_model`;

CREATE TABLE `fn_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `typeid` tinyint(3) NOT NULL,
  `modelname` char(30) NOT NULL,
  `tablename` varchar(30) NOT NULL,
  `categorytpl` varchar(30) NOT NULL,
  `listtpl` varchar(30) NOT NULL,
  `showtpl` varchar(30) NOT NULL,
  `joinid` smallint(5) DEFAULT NULL,
  `setting` text,
  PRIMARY KEY (`modelid`),
  KEY `typeid` (`typeid`),
  KEY `site` (`site`),
  KEY `joinid` (`joinid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `fn_model` */

insert  into `fn_model`(`modelid`,`site`,`typeid`,`modelname`,`tablename`,`categorytpl`,`listtpl`,`showtpl`,`joinid`,`setting`) values (1,1,1,'文章','content_1_news','category_news.html','list_news.html','show_news.html',NULL,'a:1:{s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"1\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"1\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"1\";}}}'),(6,1,2,'个人会员','member_geren','category_geren.html','list_geren.html','show_geren.html',NULL,''),(7,1,3,'留言','form_1_gbook','index.html','index.html','index.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:4:\"form\";a:14:{s:4:\"post\";s:1:\"0\";s:4:\"code\";s:1:\"0\";s:5:\"check\";s:1:\"0\";s:6:\"member\";s:1:\"0\";s:4:\"edit\";s:1:\"0\";s:3:\"num\";s:1:\"0\";s:2:\"ip\";s:0:\"\";s:8:\"pagesize\";s:2:\"10\";s:4:\"show\";a:3:{i:0;s:8:\"xingming\";i:1;s:7:\"dianhua\";i:2;s:7:\"neirong\";}s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:3:\"url\";a:3:{s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"show\";s:0:\"\";}s:8:\"callback\";s:10:\"mycallback\";}}'),(15,1,1,'在线客服','content_1_zaixiankefu','category.html','list.html','show.html',0,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"名称\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(14,1,1,'友情链接','content_1_youqinglianjie','category.html','list.html','show.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"备注\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(13,1,1,'幻灯片','content_1_huandengpian','category.html','list.html','show.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(8,1,1,'产品展示','content_1_chanpinzhanshi','category.html','list.html','show.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"1\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:3:\"tga\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(9,1,1,'公司荣誉','content_1_gongsirongyu','category.html','list.html','show.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"年份\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"0\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(10,1,1,'案例展示','content_1_anlizhanshi','category.html','list.html','show.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"1\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}'),(11,1,3,'人才招聘','form_1_rencaizhaopin','zhaoPin.html','zhaoPin.html','zhaoPinInfo.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:4:\"form\";a:14:{s:4:\"post\";s:1:\"0\";s:4:\"code\";s:1:\"0\";s:5:\"check\";s:1:\"0\";s:6:\"member\";s:1:\"0\";s:4:\"edit\";s:1:\"0\";s:3:\"num\";s:1:\"0\";s:2:\"ip\";s:0:\"\";s:8:\"pagesize\";s:2:\"10\";s:4:\"show\";a:5:{i:0;s:8:\"xingming\";i:1;s:7:\"xingbie\";i:2;s:15:\"chushengshijian\";i:3;s:13:\"yingpinzhiwei\";i:4;s:7:\"zhuanye\";}s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:3:\"url\";a:3:{s:6:\"tohtml\";s:1:\"0\";s:7:\"htmldir\";s:4:\"html\";s:4:\"show\";s:0:\"\";}s:8:\"callback\";s:0:\"\";}}'),(12,1,1,'视频中心','content_1_shipinzhongxin','category.html','list.html','show.html',NULL,'a:2:{s:4:\"auth\";a:2:{s:9:\"adminpost\";s:1:\"0\";s:10:\"memberpost\";s:1:\"0\";}s:7:\"default\";a:4:{s:5:\"title\";a:2:{s:4:\"name\";s:6:\"标题\";s:4:\"show\";s:1:\"1\";}s:5:\"thumb\";a:2:{s:4:\"name\";s:9:\"缩略图\";s:4:\"show\";s:1:\"1\";}s:8:\"keywords\";a:2:{s:4:\"name\";s:9:\"关键字\";s:4:\"show\";s:1:\"0\";}s:11:\"description\";a:2:{s:4:\"name\";s:6:\"描述\";s:4:\"show\";s:1:\"0\";}}}');

/*Table structure for table `fn_model_field` */

DROP TABLE IF EXISTS `fn_model_field`;

CREATE TABLE `fn_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(15) NOT NULL,
  `length` char(10) NOT NULL,
  `indexkey` varchar(10) NOT NULL,
  `isshow` tinyint(1) NOT NULL,
  `tips` text NOT NULL,
  `not_null` tinyint(1) NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL,
  `setting` mediumtext NOT NULL,
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

/*Data for the table `fn_model_field` */

insert  into `fn_model_field`(`fieldid`,`modelid`,`field`,`name`,`type`,`length`,`indexkey`,`isshow`,`tips`,`not_null`,`pattern`,`errortips`,`formtype`,`setting`,`listorder`,`disabled`) values (1,1,'content','内容','','0','',1,'',0,'','','editor','a:3:{s:5:\"width\";s:2:\"80\";s:6:\"height\";s:3:\"500\";s:4:\"type\";s:1:\"1\";}',0,0),(80,15,'QQ','qq','VARCHAR','255','',1,'',1,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(79,15,'content','内容','','','',1,'',0,'','','editor','',0,1),(78,14,'yingwenmingcheng','英文名称','VARCHAR','255','',1,'',1,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(77,14,'zhongwenmingcheng','中文名称','VARCHAR','255','',1,'',1,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(75,14,'content','内容','','','',1,'',0,'','','editor','',0,1),(76,14,'lianjie','链接','VARCHAR','255','',1,'',1,'','','wurl','a:1:{s:4:\"size\";s:3:\"150\";}',0,0),(29,5,'content','商品描述','','','',1,'',0,'','','editor','a:3:{s:5:\"width\";s:2:\"90\";s:6:\"height\";s:3:\"300\";s:4:\"type\";s:1:\"1\";}',99,0),(81,13,'lianjie','点击跳转的链接','VARCHAR','255','',1,'',0,'','','wurl','a:1:{s:4:\"size\";s:3:\"500\";}',0,0),(74,13,'yingwenbantupian','英文版图片','VARCHAR','255','',1,'',1,'','','image','a:3:{s:5:\"width\";s:4:\"1700\";s:6:\"height\";s:3:\"698\";s:4:\"size\";s:1:\"2\";}',1,0),(71,13,'content','内容','','','',1,'',0,'','','editor','',0,1),(72,13,'tupian','中文版图片','VARCHAR','255','',1,'',1,'','','image','a:3:{s:5:\"width\";s:4:\"1700\";s:6:\"height\";s:3:\"698\";s:4:\"size\";s:1:\"2\";}',2,0),(36,5,'jiage','商品价格','DECIMAL','10,2','',1,'',0,'','','input','a:1:{s:4:\"size\";s:0:\"\";}',0,0),(37,5,'shuliang','商品数量','MEDIUMINT','8','',1,'',0,'','','input','a:1:{s:4:\"size\";s:0:\"\";}',0,0),(38,5,'chushou','已经出售','MEDIUMINT','8','',0,'',0,'','','input','a:1:{s:4:\"size\";s:0:\"\";}',0,0),(39,6,'xingming','姓名','VARCHAR','255','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"150\";s:7:\"default\";s:0:\"\";}',0,0),(40,7,'neirong','内容','TEXT','255','',1,'',1,'','','textarea','a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:2:\"90\";s:7:\"default\";s:0:\"\";}',3,0),(41,7,'xingming','姓名','VARCHAR','255','',1,'',1,'','','input','a:2:{s:4:\"size\";s:3:\"200\";s:7:\"default\";s:0:\"\";}',0,0),(42,7,'dianhua','电话','VARCHAR','255','',1,'',1,'','','input','a:2:{s:4:\"size\";s:3:\"200\";s:7:\"default\";s:0:\"\";}',0,0),(43,8,'content','内容','','','',1,'',0,'','','editor','',0,1),(44,8,'chanpinleibie','产品类别','VARCHAR','400','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(45,8,'chanpinhoudu','产品厚度','VARCHAR','400','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(46,8,'chanpinmidu','产品密度','VARCHAR','400','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(47,8,'chanpinyanse','产品颜色','VARCHAR','400','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(48,8,'zuidafukuan','最大幅宽','VARCHAR','400','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(49,8,'biaozhunchangdu','标准长度','VARCHAR','400','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(50,8,'biaomianchuli','表面处理','VARCHAR','400','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(51,8,'baozhuangfangshi','包装方式','VARCHAR','400','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(52,8,'yunshufangshi','运输方式','VARCHAR','400','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(53,8,'jiesuanfangshi','结算方式','VARCHAR','400','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(54,8,'shengchanchangshang','生产厂商','VARCHAR','400','',1,'',0,'','','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(55,9,'content','内容','','','',1,'',0,'','','editor','',0,1),(57,9,'tupianji','图片集','','','',1,'',0,'','','files','a:2:{s:4:\"type\";s:20:\"bmp,jpg,jpeg,png,gif\";s:4:\"size\";s:1:\"2\";}',0,0),(58,10,'content','内容','','','',1,'',0,'','','editor','',0,1),(59,10,'tupianji','图片集','','','',1,'',0,'','','files','a:2:{s:4:\"type\";s:20:\"bmp,jpg,jpeg,png,gif\";s:4:\"size\";s:1:\"2\";}',0,0),(60,11,'xingming','姓名','VARCHAR','255','',1,'',1,'','必须输入','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(61,11,'xingbie','性别','VARCHAR','255','',1,'',1,'','必选','radio','a:2:{s:7:\"content\";s:16:\"男|男\r\n女|女\";s:7:\"default\";s:3:\"男\";}',0,0),(62,11,'chushengshijian','出生时间','TEXT','255','',1,'',1,'','必填','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(63,11,'yingpinzhiwei','应聘职位','VARCHAR','255','',1,'',1,'','必填','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(64,11,'zhuanye','专业','VARCHAR','255','',1,'',1,'','必填','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(65,11,'biyeshijian','毕业时间','VARCHAR','255','',1,'',1,'','必填','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(66,11,'biyeyuanxiao','毕业院校','VARCHAR','255','',1,'',1,'','必填','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(67,11,'lianxidianhua','联系电话','VARCHAR','255','',1,'',1,'','必填','input','a:2:{s:4:\"size\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(68,11,'gongzuojingli','工作经历','TEXT','2000','',1,'',1,'','必填','textarea','a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:7:\"default\";s:0:\"\";}',0,0),(69,12,'content','内容','','','',1,'',0,'','','editor','',0,1),(70,12,'shipinwenjian','视频文件','VARCHAR','400','',1,'',1,'','必填','file','a:2:{s:4:\"type\";s:3:\"mp4\";s:4:\"size\";s:3:\"400\";}',0,0);

/*Table structure for table `fn_oauth` */

DROP TABLE IF EXISTS `fn_oauth`;

CREATE TABLE `fn_oauth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `oauth_openid` varchar(80) NOT NULL DEFAULT '',
  `oauth_name` varchar(30) NOT NULL DEFAULT '',
  `oauth_data` text NOT NULL,
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `logintimes` bigint(10) unsigned NOT NULL DEFAULT '0',
  `logintime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `addtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `site` (`oauth_openid`,`oauth_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_oauth` */

/*Table structure for table `fn_plugin` */

DROP TABLE IF EXISTS `fn_plugin`;

CREATE TABLE `fn_plugin` (
  `pluginid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` tinyint(1) NOT NULL,
  `markid` smallint(5) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `controller` varchar(30) NOT NULL DEFAULT '',
  `dir` varchar(30) NOT NULL,
  `author` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(20) NOT NULL DEFAULT '',
  `disable` tinyint(1) NOT NULL DEFAULT '0',
  `setting` text NOT NULL,
  PRIMARY KEY (`pluginid`),
  KEY `dir` (`dir`),
  KEY `markid` (`markid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_plugin` */

/*Table structure for table `fn_position` */

DROP TABLE IF EXISTS `fn_position`;

CREATE TABLE `fn_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) NOT NULL COMMENT '站点id',
  `catid` smallint(5) unsigned DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `maxnum` smallint(5) NOT NULL DEFAULT '20',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `fn_position` */

/*Table structure for table `fn_position_data` */

DROP TABLE IF EXISTS `fn_position_data`;

CREATE TABLE `fn_position_data` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) NOT NULL,
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `contentid` mediumint(8) DEFAULT NULL,
  `thumb` varchar(100) NOT NULL DEFAULT '0',
  `title` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `url` varchar(200) NOT NULL,
  `listorder` mediumint(8) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posid` (`posid`),
  KEY `listorder` (`listorder`),
  KEY `catid` (`catid`),
  KEY `contentid` (`contentid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `fn_position_data` */

/*Table structure for table `fn_relatedlink` */

DROP TABLE IF EXISTS `fn_relatedlink`;

CREATE TABLE `fn_relatedlink` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `sort` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_relatedlink` */

/*Table structure for table `fn_role` */

DROP TABLE IF EXISTS `fn_role`;

CREATE TABLE `fn_role` (
  `roleid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `fn_role` */

insert  into `fn_role`(`roleid`,`rolename`,`description`) values (1,'超级管理员','超级管理员'),(2,'总编','总编'),(3,'编辑','编辑');

/*Table structure for table `fn_search` */

DROP TABLE IF EXISTS `fn_search`;

CREATE TABLE `fn_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) NOT NULL,
  `catid` smallint(5) NOT NULL,
  `params` varchar(32) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `addtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sql` text NOT NULL,
  `total` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `params` (`params`,`addtime`),
  KEY `modelid` (`modelid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_search` */

/*Table structure for table `fn_tag` */

DROP TABLE IF EXISTS `fn_tag`;

CREATE TABLE `fn_tag` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `catid` int(10) NOT NULL,
  `letter` varchar(200) NOT NULL,
  `listorder` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `catid` (`catid`),
  KEY `letter` (`letter`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `fn_tag` */

insert  into `fn_tag`(`id`,`name`,`catid`,`letter`,`listorder`) values (1,'电池',24,'dianchi',0),(2,'蔡英文',25,'caiyingwen',0),(3,'过山车',25,'guoshanche',0),(4,'女孩',25,'nvhai',0),(5,'丽江',25,'lijiang',0),(6,'古城',25,'gucheng',0),(7,'中国',25,'zhongguo',0),(8,'banner',25,'banner',0),(9,'亚洲',25,'yazhou',0),(10,'橡塑',25,'xiangsu',0),(11,'塑胶地板',25,'sujiaodiban',0),(12,'塑料',25,'suliao',0),(13,'pvc地板',25,'pvcdiban',0),(14,'金属软管',25,'jinshuruanguan',0);

/*Table structure for table `fn_tag_cache` */

DROP TABLE IF EXISTS `fn_tag_cache`;

CREATE TABLE `fn_tag_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `params` varchar(32) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `addtime` bigint(10) unsigned NOT NULL DEFAULT '0',
  `sql` mediumtext NOT NULL,
  `total` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `params` (`params`,`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fn_tag_cache` */

/*Table structure for table `fn_user` */

DROP TABLE IF EXISTS `fn_user`;

CREATE TABLE `fn_user` (
  `userid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` tinyint(3) DEFAULT NULL COMMENT '站点id',
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` char(10) NOT NULL,
  `roleid` int(3) NOT NULL,
  `lastloginip` varchar(15) DEFAULT NULL,
  `lastlogintime` bigint(10) unsigned DEFAULT '0',
  `loginip` varchar(15) DEFAULT NULL,
  `logintime` bigint(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `realname` varchar(50) DEFAULT '',
  `usermenu` text,
  PRIMARY KEY (`userid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `fn_user` */

insert  into `fn_user`(`userid`,`site`,`username`,`password`,`salt`,`roleid`,`lastloginip`,`lastlogintime`,`loginip`,`logintime`,`email`,`realname`,`usermenu`) values (1,NULL,'admin','bd2838951c1e00cc2339b788eb928e39','68ff41d539',1,'127.0.0.1',1487556065,'',1487574539,NULL,'网站创始人',NULL);

/*Table structure for table `fn_wx_app` */

DROP TABLE IF EXISTS `fn_wx_app`;

CREATE TABLE `fn_wx_app` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '应用类型',
  `name` varchar(50) NOT NULL COMMENT '应用名称',
  `images` text NOT NULL,
  `filename` varchar(50) NOT NULL COMMENT '文件名称',
  `config` text COMMENT '应用本身信息',
  `setting` text COMMENT '应用配置信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信应用表';

/*Data for the table `fn_wx_app` */

/*Table structure for table `fn_wx_content` */

DROP TABLE IF EXISTS `fn_wx_content`;

CREATE TABLE `fn_wx_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` tinyint(1) unsigned NOT NULL COMMENT '素材类型',
  `cid` varchar(255) DEFAULT NULL COMMENT '关联内容id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '图片',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `url` varchar(255) DEFAULT NULL COMMENT '更多阅读地址',
  `content` text NOT NULL COMMENT '详细内容',
  `orther` mediumtext COMMENT '其他数据信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '输入时间',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='素材内容表';

/*Data for the table `fn_wx_content` */

/*Table structure for table `fn_wx_menu` */

DROP TABLE IF EXISTS `fn_wx_menu`;

CREATE TABLE `fn_wx_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `type` char(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `key` varchar(30) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `displayorder` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信菜单表';

/*Data for the table `fn_wx_menu` */

/*Table structure for table `fn_wx_reply` */

DROP TABLE IF EXISTS `fn_wx_reply`;

CREATE TABLE `fn_wx_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '回复类型',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `app` varchar(30) DEFAULT NULL COMMENT '应用目录',
  `cid` int(10) NOT NULL DEFAULT '0' COMMENT '素材id',
  `content` text COMMENT '文本信息',
  `count` int(10) NOT NULL DEFAULT '0' COMMENT '总计回复次数',
  PRIMARY KEY (`id`),
  KEY `count` (`count`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信回复规则表';

/*Data for the table `fn_wx_reply` */

/*Table structure for table `fn_wx_user` */

DROP TABLE IF EXISTS `fn_wx_user`;

CREATE TABLE `fn_wx_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL COMMENT '会员id',
  `openid` varchar(50) NOT NULL COMMENT '唯一id',
  `nickname` varchar(50) NOT NULL COMMENT '微信昵称',
  `sex` tinyint(1) unsigned DEFAULT NULL COMMENT '性别',
  `city` varchar(30) DEFAULT NULL COMMENT '城市',
  `country` varchar(30) DEFAULT NULL COMMENT '国家',
  `province` varchar(30) DEFAULT NULL COMMENT '省',
  `language` varchar(30) DEFAULT NULL COMMENT '语言',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `subscribe_time` int(10) unsigned NOT NULL COMMENT '关注时间',
  `location_x` varchar(20) DEFAULT NULL COMMENT '坐标',
  `location_y` varchar(20) DEFAULT NULL COMMENT '坐标',
  `location_info` varchar(255) DEFAULT NULL COMMENT '坐标详情',
  `msg_today` int(10) NOT NULL DEFAULT '0' COMMENT '每日消息的发送时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `msg_today` (`msg_today`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信会员表';

/*Data for the table `fn_wx_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
