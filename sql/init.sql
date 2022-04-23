# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户Id',
  `content` longtext COMMENT '缓存数据',
  `recordStatus` varchar(255) DEFAULT 'active',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 COMMENT = '缓存表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `constantValue` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 59 COMMENT = '常量表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'version','object','版本','{ \"version\": \"1.0.5\", \"title\": \"1.0.5版本发布\", \"note\": \"新版本特性\"  }','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'gender','select','性别','[{\"value\": \"male\", \"text\": \"男\"}, {\"value\": \"female\", \"text\": \"女\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (14,'classId','select','班号','[{\"value\": \"2021-01级-01班\", \"text\": \"2021-01级-01班\"}, {\"value\": \"2021-01级-02班\", \"text\": \"2021-01级-02班\"},\n {\"value\": \"2021-02级-01班\", \"text\": \"2021-02级-01班\"}, {\"value\": \"2021-02级-02班\", \"text\": \"2021-02级-02班\"},\n {\"value\": \"2021-03级-01班\", \"text\": \"2021-03级-01班\"}, {\"value\": \"2021-03级-02班\", \"text\": \"2021-03级-02班\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (15,'level','select','年级','[{\"value\": \"01\", \"text\": \"一年级\"}, {\"value\": \"02\", \"text\": \"二年级\"}, {\"value\": \"03\", \"text\": \"三年级\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'icType','select','证件类型','[{\"value\": \"身份证\", \"text\": \"身份证\"}, {\"value\": \"护照\", \"text\": \"护照\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (53,'enrollmentType','select','入学方式','[{\"value\": \"正常升学\", \"text\": \"正常升学\"}, {\"value\": \"借读\", \"text\": \"借读\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (54,'studentStatus','select','学生状态','[{\"value\": \"正常\", \"text\": \"正常\"}, {\"value\": \"退学\", \"text\": \"退学\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (55,'classStatus','select','班级状态','[{\"value\": \"正常\", \"text\": \"正常\"}, {\"value\": \"毕业班\", \"text\": \"毕业班\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (56,'classType','select','班级类型','[{\"value\": \"特长班\", \"text\": \"特长班\"}, {\"value\": \"义务班\", \"text\": \"义务班\"}]','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_file`;
CREATE TABLE `_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` varchar(255) DEFAULT NULL COMMENT 'fileId',
  `fileDirectory` varchar(255) DEFAULT NULL COMMENT '文件保存路径;',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名;',
  `filenameStorage` varchar(255) DEFAULT NULL COMMENT '文件保存名',
  `downloadPath` varchar(255) DEFAULT NULL COMMENT '文件下载路径',
  `fileType` varchar(255) DEFAULT NULL COMMENT '文件类型;(预留字段)',
  `fileDesc` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `binarySize` varchar(255) DEFAULT NULL COMMENT '文件二进制大小',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `fileId_index` (`fileId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 COMMENT = '文件表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _file
# ------------------------------------------------------------

INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (25,'1645373829233_835477','testFile','江湖JS-logo.png','1645373829233_835477_江湖JS-logo.png','/testFile/1645373829233_835477_江湖JS-logo.png',NULL,'江湖JS，logo2','50.66KB','jhUpdate','admin','admin','2022-02-21T00:19:05+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (26,'1645447085919_540071','testFile','IMG_0145.jpeg','1645447085919_540071_IMG_0145.jpeg','/testFile/1645447085919_540071_IMG_0145.jpeg',NULL,NULL,'88.96KB','jhInsert','admin','admin','2022-02-21T20:38:05+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (27,'1645447112949_468001','testFile','IMG_0145.jpeg','1645447112949_468001_IMG_0145.jpeg','/testFile/1645447112949_468001_IMG_0145.jpeg',NULL,NULL,'88.96KB','jhInsert','admin','admin','2022-02-21T20:38:32+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (28,'1645527307407_212833','testFile','函数.png','1645527307407_212833_函数.png','/testFile/1645527307407_212833_函数.png',NULL,NULL,'4.40KB','jhInsert','admin','admin','2022-02-22T18:55:07+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (29,'1645527554603_435224','testFile','函数.png','1645527554603_435224_函数.png','/testFile/1645527554603_435224_函数.png',NULL,'test','4.40KB','jhInsert','admin','admin','2022-02-22T18:59:14+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (30,'1645527567681_637478','testFile','数据库.png','1645527567681_637478_数据库.png','/testFile/1645527567681_637478_数据库.png',NULL,'dddd','5.11KB','jhInsert','admin','admin','2022-02-22T18:59:27+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'1645529792994_300405','testFile','圣经.png','1645529792994_300405_圣经.png','/testFile/1645529792994_300405_圣经.png',NULL,'1111','4.05KB','jhInsert','admin','admin','2022-02-22T19:36:32+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `groupDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 COMMENT = '群组表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _group
# ------------------------------------------------------------

INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'adminGroup','管理组','管理组',NULL,'{}','jhUpdate','admin','admin','2022-02-18T20:45:25+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'pageId',
  `pageName` varchar(255) DEFAULT NULL COMMENT 'page name',
  `pageType` varchar(255) DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 38 COMMENT = '页面表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _page
# ------------------------------------------------------------

INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'help','帮助','common',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'login','登陆','common',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'manual','操作手册','showInMenu','0','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,'fileManagement','文件管理','showInMenu','2','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (16,'resourcePageManagement','页面、接口','showInMenu','3','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'userManagement','用户管理','showInAvatarMenu','20','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'userGroupRolePageOrResourceManagement','权限规则管理','showInMenu','5','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'userGroupRoleManagement','用户、组织、角色','showInMenu','4','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (36,'recordHistoryManagement','数据历史','showInMenu','1','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` text NOT NULL COMMENT '数据JSON',
  `packageContent` text NOT NULL COMMENT '当时请求的 package JSON',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `index_record_id` (`recordId`),
  KEY `index_table_action` (`table`, `operation`)
) ENGINE = InnoDB AUTO_INCREMENT = 156 COMMENT = '数据历史表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (143,'_file',25,'{\"id\":25,\"fileId\":\"1645373829233_835477\",\"fileDirectory\":\"testFile\",\"filename\":\"江湖JS-logo.png\",\"filenameStorage\":\"1645373829233_835477_江湖JS-logo.png\",\"downloadPath\":\"/testFile/1645373829233_835477_江湖JS-logo.png\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"50.66KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T00:17:09+08:00\"}','{\"packageId\":\"123456\",\"packageType\":\"httpRequest\",\"appData\":{\"appId\":\"demo_advanced\",\"pageId\":\"allPage\",\"actionId\":\"uploadByStream\",\"userAgent\":\"demo_userAgent\",\"actionData\":{\"fileDirectory\":\"testFile\",\"filename\":\"江湖JS-logo.png\",\"fileDesc\":\"江湖JS，logo\"}}}','jhInsert','admin','admin','2022-02-21T00:17:09+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (144,'_file',25,'{\"id\":25,\"fileId\":\"1645373829233_835477\",\"fileDirectory\":\"testFile\",\"filename\":\"江湖JS-logo.png\",\"filenameStorage\":\"1645373829233_835477_江湖JS-logo.png\",\"downloadPath\":\"/testFile/1645373829233_835477_江湖JS-logo.png\",\"fileType\":null,\"fileDesc\":\"江湖JS，logo2\",\"binarySize\":\"50.66KB\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T00:19:05+08:00\"}','{\"appData\":{\"pageId\":\"fileManagement\",\"actionId\":\"updateItem\",\"actionData\":{\"fileDesc\":\"江湖JS，logo2\"},\"where\":{\"id\":25},\"appId\":\"demo_advanced\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\"},\"packageId\":\"1645373945319_2380911\",\"packageType\":\"httpRequest\"}','jhUpdate','admin','admin','2022-02-21T00:19:05+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (145,'_user',68,'{\"id\":68,\"idSequence\":\"26260000\",\"userId\":\"001\",\"username\":\"小米\",\"clearTextPassword\":\"123456\",\"password\":\"891f5a52508153b06adce61736863ad3\",\"md5Salt\":\"FWhG88C2KSCz\",\"userStatus\":\"active\",\"userType\":\"student\",\"config\":null,\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T00:24:05+08:00\"}','{\"appData\":{\"pageId\":\"userGroupRoleManagement\",\"actionId\":\"updateUser\",\"actionData\":{\"idSequence\":\"26260000\",\"userId\":\"001\",\"username\":\"小米\",\"clearTextPassword\":\"123456\",\"password\":\"891f5a52508153b06adce61736863ad3\",\"md5Salt\":\"FWhG88C2KSCz\",\"userStatus\":\"active\",\"userType\":\"student\",\"config\":null,\"operation\":\"insert\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T00:23:32+08:00\"},\"where\":{\"id\":68},\"appId\":\"demo_advanced\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\"},\"packageId\":\"1645374245328_2049384\",\"packageType\":\"httpRequest\"}','jhUpdate','admin','admin','2022-02-21T00:24:05+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (146,'_user',68,'{\"id\":68,\"idSequence\":\"26260000\",\"userId\":\"001\",\"username\":\"小华\",\"clearTextPassword\":\"123456\",\"password\":\"891f5a52508153b06adce61736863ad3\",\"md5Salt\":\"FWhG88C2KSCz\",\"userStatus\":\"active\",\"userType\":\"student\",\"config\":null,\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T00:24:47+08:00\"}','{\"appData\":{\"pageId\":\"userGroupRoleManagement\",\"actionId\":\"updateUser\",\"actionData\":{\"idSequence\":\"26260000\",\"userId\":\"001\",\"username\":\"小华\",\"clearTextPassword\":\"123456\",\"password\":\"891f5a52508153b06adce61736863ad3\",\"md5Salt\":\"FWhG88C2KSCz\",\"userStatus\":\"active\",\"userType\":\"student\",\"config\":null,\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T00:24:05+08:00\"},\"where\":{\"id\":68},\"appId\":\"demo_advanced\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\"},\"packageId\":\"1645374287398_4763222\",\"packageType\":\"httpRequest\"}','jhUpdate','admin','admin','2022-02-21T00:24:47+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (147,'_user_group_role',597,'{\"id\":597,\"userId\":\"001\",\"groupId\":\"adminGroup\",\"roleId\":\"teacher\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T00:41:54+08:00\"}','{\"appData\":{\"pageId\":\"userGroupRoleManagement\",\"actionId\":\"insertItem\",\"actionData\":{\"userId\":\"001\",\"groupId\":\"adminGroup\",\"roleId\":\"teacher\"},\"appId\":\"demo_advanced\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\"},\"packageId\":\"1645375313877_3883295\",\"packageType\":\"httpRequest\"}','jhInsert','admin','admin','2022-02-21T00:41:54+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (148,'_user',68,'{\"id\":68,\"idSequence\":\"26260000\",\"userId\":\"001\",\"username\":\"大华\",\"clearTextPassword\":\"123456\",\"password\":\"891f5a52508153b06adce61736863ad3\",\"md5Salt\":\"FWhG88C2KSCz\",\"userStatus\":\"active\",\"userType\":\"student\",\"config\":null,\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T00:46:44+08:00\"}','{\"appData\":{\"pageId\":\"userGroupRoleManagement\",\"actionId\":\"updateUser\",\"actionData\":{\"idSequence\":\"26260000\",\"userId\":\"001\",\"username\":\"大华\",\"clearTextPassword\":\"123456\",\"password\":\"891f5a52508153b06adce61736863ad3\",\"md5Salt\":\"FWhG88C2KSCz\",\"userStatus\":\"active\",\"userType\":\"student\",\"config\":null,\"operation\":\"jhUpdate\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T00:24:47+08:00\"},\"where\":{\"id\":68},\"appId\":\"demo_advanced\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\"},\"packageId\":\"1645375604065_1114865\",\"packageType\":\"httpRequest\"}','jhUpdate','admin','admin','2022-02-21T00:46:44+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (149,'_user',68,'{\"id\":68,\"idSequence\":\"26260000\",\"userId\":\"001\",\"username\":\"小华\",\"clearTextPassword\":\"123456\",\"password\":\"891f5a52508153b06adce61736863ad3\",\"md5Salt\":\"FWhG88C2KSCz\",\"userStatus\":\"active\",\"userType\":\"student\",\"config\":null,\"operation\":\"jhRestore\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T00:47:08+08:00\"}','{}','jhRestore','admin','admin','2022-02-21T00:47:08+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (150,'_file',27,'{\"id\":27,\"fileId\":\"1645447112949_468001\",\"fileDirectory\":\"testFile\",\"filename\":\"IMG_0145.jpeg\",\"filenameStorage\":\"1645447112949_468001_IMG_0145.jpeg\",\"downloadPath\":\"/testFile/1645447112949_468001_IMG_0145.jpeg\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"88.96KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-21T20:38:32+08:00\"}','{\"packageId\":\"123456\",\"packageType\":\"httpRequest\",\"appData\":{\"appId\":\"demo_advanced\",\"pageId\":\"allPage\",\"actionId\":\"uploadByStream\",\"userAgent\":\"demo_userAgent\",\"actionData\":{\"fileDirectory\":\"testFile\",\"filename\":\"IMG_0145.jpeg\",\"fileDesc\":\"desc\"}}}','jhInsert','admin','admin','2022-02-21T20:38:32+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (151,'_file',28,'{\"id\":28,\"fileId\":\"1645527307407_212833\",\"fileDirectory\":\"testFile\",\"filename\":\"函数.png\",\"filenameStorage\":\"1645527307407_212833_函数.png\",\"downloadPath\":\"/testFile/1645527307407_212833_函数.png\",\"fileType\":null,\"fileDesc\":null,\"binarySize\":\"4.40KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-22T18:55:07+08:00\"}','{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadByBase64\",\"actionData\":{\"fileDirectory\":\"testFile\",\"filename\":\"函数.png\",\"fileBase64\":\"data:image/png;base64,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\",\"fileDesc\":\"test\"},\"appId\":\"demo_advanced\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\"},\"packageId\":\"1645527306494_7193912\",\"packageType\":\"httpRequest\"}','jhInsert','admin','admin','2022-02-22T18:55:07+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (152,'_file',29,'{\"id\":29,\"fileId\":\"1645527554603_435224\",\"fileDirectory\":\"testFile\",\"filename\":\"函数.png\",\"filenameStorage\":\"1645527554603_435224_函数.png\",\"downloadPath\":\"/testFile/1645527554603_435224_函数.png\",\"fileType\":null,\"fileDesc\":\"test\",\"binarySize\":\"4.40KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-22T18:59:14+08:00\"}','{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"uploadByBase64\",\"actionData\":{\"fileDirectory\":\"testFile\",\"filename\":\"函数.png\",\"fileBase64\":\"data:image/png;base64,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\",\"fileDesc\":\"test\"},\"appId\":\"demo_advanced\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\"},\"packageId\":\"1645527553842_9056260\",\"packageType\":\"httpRequest\"}','jhInsert','admin','admin','2022-02-22T18:59:14+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (153,'_file',30,'{\"id\":30,\"fileId\":\"1645527567681_637478\",\"fileDirectory\":\"testFile\",\"filename\":\"数据库.png\",\"filenameStorage\":\"1645527567681_637478_数据库.png\",\"downloadPath\":\"/testFile/1645527567681_637478_数据库.png\",\"fileType\":null,\"fileDesc\":\"dddd\",\"binarySize\":\"5.11KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-22T18:59:27+08:00\"}','{\"packageId\":\"123456\",\"packageType\":\"httpRequest\",\"appData\":{\"appId\":\"demo_advanced\",\"pageId\":\"allPage\",\"actionId\":\"uploadByStream\",\"userAgent\":\"demo_userAgent\",\"actionData\":{\"fileDirectory\":\"testFile\",\"filename\":\"数据库.png\",\"fileDesc\":\"dddd\"}}}','jhInsert','admin','admin','2022-02-22T18:59:27+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (154,'_file',31,'{\"id\":31,\"fileId\":\"1645529792994_300405\",\"fileDirectory\":\"testFile\",\"filename\":\"圣经.png\",\"filenameStorage\":\"1645529792994_300405_圣经.png\",\"downloadPath\":\"/testFile/1645529792994_300405_圣经.png\",\"fileType\":null,\"fileDesc\":\"1111\",\"binarySize\":\"4.05KB\",\"operation\":\"jhInsert\",\"operationByUserId\":\"admin\",\"operationByUser\":\"admin\",\"operationAt\":\"2022-02-22T19:36:32+08:00\"}','{\"packageId\":\"1645529792288_4296327\",\"packageType\":\"httpRequest\",\"appData\":{\"appId\":\"demo_advanced\",\"pageId\":\"allPage\",\"actionId\":\"uploadByStream\",\"actionData\":{\"fileDirectory\":\"testFile\",\"filename\":\"圣经.png\",\"fileDesc\":\"1111\"}}}','jhInsert','admin','admin','2022-02-22T19:36:32+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (155,'_user_session',19,'{\"id\":19,\"userId\":\"admin\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36\",\"deviceId\":\"127.0.0.1:7003_Mac.10.15.7_4fcd20cd_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"offline\",\"authToken\":\"62yOzTxtD-qh6h1bKE2P5in_zKVATfncnygV\",\"refreshToken\":null,\"operation\":\"jhInsert\",\"operationByUserId\":null,\"operationByUser\":null,\"operationAt\":\"2022-03-29T17:01:23+08:00\"}','{\"appData\":{\"pageId\":\"login\",\"actionId\":\"passwordLogin\",\"actionData\":{\"userId\":\"admin\",\"password\":\"123456\",\"deviceId\":\"127.0.0.1:7003_Mac.10.15.7_4fcd20cd_chrome\"},\"appId\":\"demo_advanced\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36\"},\"packageId\":\"1648544483165_4661312\",\"packageType\":\"httpRequest\"}','jhInsert',NULL,NULL,'2022-03-29T17:01:23+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COMMENT '[ "before": {"service": "xx", "serviceFunction": "xxx"}, "after": [] }',
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` text COMMENT 'appData 参数校验',
  `resourceData` text COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` text COMMENT '请求Demo',
  `responseDemo` text COMMENT '响应Demo',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 370 COMMENT = '请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (231,NULL,NULL,'login','passwordLogin','✅登陆','service',NULL,'{ \"service\": \"user\", \"serviceFunction\": \"passwordLogin\" }','','','update',NULL,NULL,'2022-03-29T17:01:24+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (251,NULL,NULL,'allPage','logout','✅登出','service',NULL,'{ \"service\": \"user\", \"serviceFunction\": \"logout\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (252,NULL,NULL,'allPage','refreshToken','✅刷新authToken','service',NULL,'{ \"service\": \"user\", \"serviceFunction\": \"refreshToken\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (253,NULL,NULL,'allPage','userInfo','✅获取用户信息','service',NULL,'{ \"service\": \"user\", \"serviceFunction\": \"userInfo\" }','','','update',NULL,NULL,'2022-03-29T17:02:10+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (254,NULL,NULL,'allPage','resetPassword','✅重置密码','service',NULL,'{ \"service\": \"user\", \"serviceFunction\": \"resetPassword\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (256,NULL,NULL,'allPage','uploadByStream','✅文件上传(文件流)','service',NULL,'{ \"service\": \"file\", \"serviceFunction\": \"uploadByStream\" }','','','update',NULL,NULL,'2022-02-22T19:36:33+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (257,NULL,NULL,'allPage','uploadByBase64','✅文件上传(base64)','service',NULL,'{ \"service\": \"file\", \"serviceFunction\": \"uploadByBase64\" }','','','update',NULL,NULL,'2022-02-22T18:59:14+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (273,NULL,NULL,'fileManagement','selectItemList','✅文件管理-查询列表','sql',NULL,'{ \"table\": \"_file\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-03-29T17:01:28+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (275,NULL,NULL,'fileManagement','updateItem','✅文件管理-更新成员','sql',NULL,'{ \"table\": \"_file\", \"operation\": \"jhUpdate\" }','','','update',NULL,NULL,'2022-02-21T00:19:06+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (276,NULL,NULL,'fileManagement','deleteItem','✅文件管理-删除信息','sql',NULL,'{ \"table\": \"_file\", \"operation\": \"jhDelete\" }','','','update',NULL,NULL,'2022-02-20T22:15:05+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (280,NULL,NULL,'resourcePageManagement','selectItemListOfResource','✅resource管理-查询成员','sql',NULL,'{ \"table\": \"_resource\", \"operation\": \"select\"}','','','update',NULL,NULL,'2022-02-21T01:16:59+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (281,NULL,NULL,'resourcePageManagement','insertItemOfResource','✅resource管理-新增成员','sql',NULL,'{ \"table\": \"_resource\", \"operation\": \"jhInsert\"}','','','update',NULL,NULL,'2022-02-18T21:01:58+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (282,NULL,NULL,'resourcePageManagement','deleteItemOfResource','✅resource管理-删除成员','sql',NULL,'{ \"table\": \"_resource\", \"operation\": \"jhDelete\"}','','','update',NULL,NULL,'2022-02-18T21:02:37+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (283,NULL,NULL,'resourcePageManagement','updateItemOfResource','✅resource管理-更新成员','sql',NULL,'{ \"table\": \"_resource\", \"operation\": \"jhUpdate\"}','','','update',NULL,NULL,'2022-02-18T21:02:12+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (322,NULL,NULL,'resourcePageManagement','selectItemListOfPage','✅page管理-查询成员','sql',NULL,'{ \"table\": \"_page\", \"operation\": \"select\"}','','','update',NULL,NULL,'2022-02-21T00:44:09+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (323,NULL,NULL,'resourcePageManagement','insertItemOfPage','✅page管理-新增成员','sql',NULL,'{ \"table\": \"_page\", \"operation\": \"jhInsert\"}','','','update',NULL,NULL,'2022-02-18T21:03:15+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (324,NULL,NULL,'resourcePageManagement','deleteItemOfPage','✅page管理-删除成员','sql',NULL,'{ \"table\": \"_page\", \"operation\": \"jhDelete\"}','','','update',NULL,NULL,'2022-02-18T21:03:25+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (325,NULL,NULL,'resourcePageManagement','updateItemOfPage','✅page管理-更新成员','sql',NULL,'{ \"table\": \"_page\", \"operation\": \"jhUpdate\"}','','','update',NULL,NULL,'2022-02-18T21:03:20+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (335,NULL,NULL,'userGroupRolePageOrResourceManagement','insertItemOfResource','✅权限规则-协议管理-插入信息','sql',NULL,'{ \"table\": \"_user_group_role_resource\", \"operation\": \"jhInsert\" }','','','update',NULL,NULL,'2022-02-18T20:40:56+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (336,NULL,NULL,'userGroupRolePageOrResourceManagement','selectItemListOfResource','✅权限规则-协议管理-查询数据列表','sql',NULL,'{ \"table\": \"_user_group_role_resource\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-03-29T17:01:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (337,NULL,NULL,'userGroupRolePageOrResourceManagement','updateItemOfResource','✅权限规则-协议管理-更新数据','sql',NULL,'{ \"table\": \"_user_group_role_resource\", \"operation\": \"jhUpdate\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (338,NULL,NULL,'userGroupRolePageOrResourceManagement','deleteItemOfResource','✅权限规则-协议管理-删除数据','sql',NULL,'{ \"table\": \"_user_group_role_resource\", \"operation\": \"jhDelete\" }','','','update',NULL,NULL,'2022-02-18T20:41:56+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (339,NULL,NULL,'userGroupRolePageOrResourceManagement','insertItemOfPage','✅权限规则-页面管理-插入信息','sql',NULL,'{ \"table\": \"_user_group_role_page\", \"operation\": \"jhInsert\" }','','','update',NULL,NULL,'2022-02-18T20:42:26+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (340,NULL,NULL,'userGroupRolePageOrResourceManagement','selectItemListOfPage','✅权限规则-页面管理-查询数据列表','sql',NULL,'{ \"table\": \"_user_group_role_page\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-02-21T01:15:48+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (341,NULL,NULL,'userGroupRolePageOrResourceManagement','updateItemOfPage','✅权限规则-页面管理-更新数据','sql',NULL,'{ \"table\": \"_user_group_role_page\", \"operation\": \"jhUpdate\" }','','','update',NULL,NULL,'2022-02-18T20:42:44+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (342,NULL,NULL,'userGroupRolePageOrResourceManagement','deleteItemOfPage','✅权限规则-页面管理-删除数据','sql',NULL,'{ \"table\": \"_user_group_role_page\", \"operation\": \"jhDelete\" }','','','update',NULL,NULL,'2022-02-18T20:42:49+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (343,NULL,NULL,'userManagement','resetUserPassword','✅用户管理-修改密码','service',NULL,'{ \"service\": \"userManagement\", \"serviceFunction\": \"resetUserPassword\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (344,NULL,NULL,'userManagement','updateItem','✅用户管理-更新用户','sql',NULL,'{ \"table\": \"_user\", \"operation\": \"jhUpdate\" }','','','update',NULL,NULL,'2022-02-18T20:21:45+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (346,NULL,'','recordHistoryManagement','selectOnUseItemListByTable','✅获取指定表的使用中的数据列表','service',NULL,'{ \"service\": \"recordHistory\", \"serviceFunction\": \"selectOnUseItemListByTable\" }','','','update',NULL,NULL,'2022-03-29T17:02:10+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (347,NULL,NULL,'recordHistoryManagement','selectDeletedItemListByTable','✅获取指定表的已删除的数据列表','service',NULL,'{ \"service\": \"recordHistory\", \"serviceFunction\": \"selectDeletedItemListByTable\" }','','','update',NULL,NULL,'2022-02-21T19:58:21+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (348,NULL,NULL,'recordHistoryManagement','selectItemList','✅获取数据历史表','sql',NULL,'{ \"table\": \"_record_history\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-02-21T19:58:30+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (351,NULL,NULL,'recordHistoryManagement','restoreRecordByRecordHistory','✅还原数据','service',NULL,'{ \"service\": \"recordHistory\", \"serviceFunction\": \"restoreRecordByRecordHistory\" }','','','update',NULL,NULL,'2022-02-21T00:47:08+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (352,NULL,NULL,'userGroupRolePageOrResourceManagement','selectGroup','✅权限规则管理-查询群组','sql',NULL,'{ \"table\": \"_group\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-03-29T17:01:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (353,NULL,NULL,'userGroupRolePageOrResourceManagement','selectRole','✅权限规则管理-查询角色','sql',NULL,'{ \"table\": \"_role\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-03-29T17:01:33+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (354,NULL,NULL,'userManagement','selectItemList','✅用户管理-查询信息','sql',NULL,'{ \"table\": \"_user\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-02-18T21:59:40+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (355,NULL,NULL,'userManagement','insertItem','✅用户管理-查询信息','service',NULL,'{ \"service\": \"userManagement\", \"serviceFunction\": \"addUser\" }','','','update',NULL,NULL,'2022-02-18T20:19:24+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (356,NULL,NULL,'userManagement','resetUserPassword','✅用户管理-修改密码','service',NULL,'{ \"service\": \"userManagement\", \"serviceFunction\": \"resetUserPassword\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (357,NULL,NULL,'userManagement','updateItem','✅用户管理-更新用户','sql',NULL,'{ \"table\": \"_user\", \"operation\": \"jhUpdate\" }','','','update',NULL,NULL,'2022-02-18T20:21:45+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (367,NULL,NULL,'userGroupRolePageOrResourceManagement','selectResourceList','✅权限规则-查询协议列表','sql',NULL,'{ \"table\": \"_resource\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-03-29T17:01:33+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (368,NULL,NULL,'userGroupRolePageOrResourceManagement','selectPageList','✅权限规则-查询页面列表','sql',NULL,'{ \"table\": \"_page\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-03-29T17:01:33+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (451,NULL,NULL,'userGroupRoleManagement','selectItemList','✅权限管理页-查询已配置权限列表','sql',NULL,'{ \"table\": \"_user_group_role\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-02-21T01:16:46+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (452,NULL,NULL,'userGroupRoleManagement','selectUser','✅权限管理页-查询用户','sql',NULL,'{ \"table\": \"_user\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-02-21T01:16:21+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (453,NULL,NULL,'userGroupRoleManagement','selectGroup','✅权限管理页-查询群组','sql',NULL,'{ \"table\": \"_group\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-02-21T01:16:21+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (454,NULL,NULL,'userGroupRoleManagement','insertItem','✅权限管理页-创建权限配置','sql',NULL,'{ \"table\": \"_user_group_role\", \"operation\": \"jhInsert\", \"whereCondition\":\"\"}','','','update',NULL,NULL,'2022-02-21T00:41:54+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (455,NULL,NULL,'userGroupRoleManagement','updateItem','✅权限管理页-更新权限配置','sql',NULL,'{ \"table\": \"_user_group_role\", \"operation\": \"jhUpdate\", \"whereParamsCondition\": \".where(function() {this.where(whereParams)})\"}','','','update',NULL,NULL,'2022-02-18T12:09:29+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (456,NULL,NULL,'userGroupRoleManagement','deleteItem','✅权限管理页-删除权限配置','sql',NULL,'{ \"table\": \"_user_group_role\", \"operation\": \"jhDelete\", \"whereParamsCondition\": \".where(function() {this.where(whereParams)})\"}','','','update',NULL,NULL,'2022-02-18T21:03:41+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (457,NULL,NULL,'userGroupRoleManagement','selectRole','✅权限管理页-查询角色','sql',NULL,'{ \"table\": \"_role\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-02-21T01:16:21+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (458,NULL,NULL,'userGroupRoleManagement','insertUser','✅权限管理页-添加用户','service',NULL,'{ \"service\": \"userManagement\", \"serviceFunction\": \"addUser\" }','','','update',NULL,NULL,'2022-02-21T00:23:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (459,NULL,NULL,'userGroupRoleManagement','insertGroup','✅权限管理页-添加群组','sql',NULL,'{ \"table\": \"_group\", \"operation\": \"jhInsert\" }','','','update',NULL,NULL,'2022-02-18T19:55:57+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (460,NULL,NULL,'userGroupRoleManagement','insertRole','✅权限管理页-添加角色','sql',NULL,'{ \"table\": \"_role\", \"operation\": \"jhInsert\" }','','','update',NULL,NULL,'2022-02-18T20:00:37+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (461,NULL,'{ \"before\": [], \"after\": [{ \"service\": \"userGroupRoleManagement\", \"serviceFunction\": \"deleteUserGroupRole\" }] }','userGroupRoleManagement','deleteUser','✅权限管理页-删除用户','sql',NULL,'{ \"table\": \"_user\", \"operation\": \"jhDelete\" }','','','update',NULL,NULL,'2022-02-18T19:55:36+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (462,NULL,'{ \"before\": [], \"after\": [{ \"service\": \"userGroupRoleManagement\", \"serviceFunction\": \"deleteUserGroupRole\" }] }','userGroupRoleManagement','deleteGroup','✅权限管理页-删除群组','sql',NULL,'{ \"table\": \"_group\", \"operation\": \"jhDelete\" }','','','update',NULL,NULL,'2022-02-18T19:56:11+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (463,NULL,'{ \"before\": [], \"after\": [{ \"service\": \"userGroupRoleManagement\", \"serviceFunction\": \"deleteUserGroupRole\" }] }','userGroupRoleManagement','deleteRole','✅权限管理页-删除角色','sql',NULL,'{ \"table\": \"_role\", \"operation\": \"jhDelete\" }','','','update',NULL,NULL,'2022-02-18T20:04:23+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (464,NULL,NULL,'userGroupRoleManagement','updateUser','✅权限管理页-更新用户','sql',NULL,'{ \"table\": \"_user\", \"operation\": \"jhUpdate\" }','','','update',NULL,NULL,'2022-02-21T00:46:44+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (465,NULL,NULL,'userGroupRoleManagement','updateGroup','✅权限管理页-更新群组','sql',NULL,'{ \"table\": \"_group\", \"operation\": \"jhUpdate\" }','','','update',NULL,NULL,'2022-02-18T20:45:26+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (466,NULL,NULL,'userGroupRoleManagement','updateRole','✅权限管理页-更新角色','sql',NULL,'{ \"table\": \"_role\", \"operation\": \"jhUpdate\" }','','','update',NULL,NULL,'2022-02-18T19:56:37+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource_request_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource_request_log`;
CREATE TABLE `_resource_request_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` varchar(255) DEFAULT NULL COMMENT 'resource id;',
  `packageId` varchar(255) DEFAULT NULL COMMENT 'resource package id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip;',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '设备信息',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `executeSql` varchar(255) DEFAULT NULL COMMENT '执行的sql',
  `requestBody` mediumtext COMMENT '请求body',
  `responseBody` mediumtext COMMENT '响应body',
  `responseStatus` varchar(255) DEFAULT NULL COMMENT '执行的结果;  success, fail',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `resourceId_index` (`resourceId`),
  KEY `packageId_index` (`packageId`)
) ENGINE = InnoDB AUTO_INCREMENT = 6691 COMMENT = '文件表; 软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 12 COMMENT = '角色表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _role
# ------------------------------------------------------------

INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'appAdmin','系统管理员',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'teacher','老师',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'student','学生',NULL,NULL,NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) DEFAULT NULL COMMENT '自增id; 用于生成userId',
  `userId` varchar(255) DEFAULT NULL COMMENT '主键id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名(登陆)',
  `clearTextPassword` varchar(255) DEFAULT NULL COMMENT '明文密码',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `md5Salt` varchar(255) DEFAULT NULL COMMENT 'md5Salt',
  `userStatus` varchar(255) DEFAULT 'active' COMMENT '用户账号状态：活跃或关闭',
  `userType` varchar(255) DEFAULT NULL COMMENT '用户类型; staff, student.',
  `config` mediumtext COMMENT '配置信息',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  `initPassword` varchar(255) DEFAULT NULL COMMENT '测试用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_index` (`username`),
  UNIQUE KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 COMMENT = '用户表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user
# ------------------------------------------------------------

INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`,`initPassword`) VALUES (1,NULL,'admin','admin','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active','common',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`,`initPassword`) VALUES (68,'26260000','001','小华','123456','891f5a52508153b06adce61736863ad3','FWhG88C2KSCz','active','student',NULL,'jhRestore','admin','admin','2022-02-21T00:47:08+08:00',NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `groupId` varchar(255) NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `groupId_index` (`groupId`),
  KEY `userId_index` (`userId`)
) ENGINE = InnoDB AUTO_INCREMENT = 598 COMMENT = '用户群组角色关联表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (568,'admin','adminGroup','appAdmin','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (597,'001','adminGroup','teacher','jhInsert','admin','admin','2022-02-21T00:41:54+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 32 COMMENT = '用户群组角色 - 页面 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (17,'*','public','*','login','allow','登陆页; 开放给所有用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (18,'*','login','*','operationManual','allow','操作手册页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (19,'*','login','*','help','allow','帮助页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'*','adminGroup','appAdmin','userGroupRole','allow','权限管理页; 开放给应用管理者;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'*','adminGroup','appAdmin','*','allow','所有页面; 开放给应用管理者;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'*','adminGroup','appAdmin','userManagement','allow','用户管理页面; 开放给应用管理者;','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 135 COMMENT = '用户群组角色 - 请求资源 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'*','public','*','login.passwordLogin','allow','登陆resource, 开放给所有用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,'*','public','*','allPage.getConstantList','allow','查询常量resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'*','login','*','allPage.logout','allow','登出resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,'*','login','*','allPage.refreshToken','allow','刷新authToken resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'*','login','*','allPage.userInfo','allow','用户个人信息resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'*','login','*','allPage.uploadByBase64','allow','上传文件resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'*','login','*','allPage.uploadByStream','allow','上传文件resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'*','adminGroup','appAdmin','*','allow','应用管理者, 赋予所有resource权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'*','adminGroup','appAdmin','userGroupRole.*','allow','应用管理者, 赋予所有resource权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (71,'*','adminGroup','teacher','newStudent.*','allow','老师, 赋予所有newStudent页面resource的权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (72,'*','adminGroup','teacher','studentBill.*','allow','老师, 赋予所有studentBill页面resource的权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (73,'*','adminGroup','teacher','studentBillPayment.*','allow','老师, 赋予所有studentBillPayment页面resource的权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (74,'*','adminGroup','teacher','studentPayment.*','allow','老师, 赋予所有studentPayment页面resource的权限','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `userAgent` text COMMENT '请求的 agent',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) DEFAULT 'web' COMMENT '设备类型; flutter, web, bot_databot, bot_chatbot, bot_xiaochengxu',
  `socketStatus` varchar(255) DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(2048) DEFAULT NULL COMMENT 'auth token',
  `refreshToken` varchar(2048) DEFAULT NULL COMMENT 'refresh token',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `userId_index` (`userId`)
) ENGINE = InnoDB AUTO_INCREMENT = 20 COMMENT = '用户session表; deviceId 维度;软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _view01_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `_view01_user` AS
select
  `_user`.`id` AS `id`,
  `_user`.`idSequence` AS `idSequence`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  `_user`.`clearTextPassword` AS `clearTextPassword`,
  `_user`.`password` AS `password`,
  `_user`.`md5Salt` AS `md5Salt`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`userType` AS `userType`,
  `_user`.`config` AS `config`,
  `_user`.`operation` AS `operation`,
  `_user`.`operationByUserId` AS `operationByUserId`,
  `_user`.`operationByUser` AS `operationByUser`,
  `_user`.`operationAt` AS `operationAt`,
  `_user`.`initPassword` AS `initPassword`
from
  `_user`;





