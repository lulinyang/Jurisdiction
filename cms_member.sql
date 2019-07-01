/*
 Navicat Premium Data Transfer

 Source Server         : loclhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : 127.0.0.1:3306
 Source Schema         : pedigree

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 01/07/2019 22:26:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_member
-- ----------------------------
DROP TABLE IF EXISTS `cms_member`;
CREATE TABLE `cms_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `sex` tinyint(1) NOT NULL DEFAULT 1 COMMENT '性别0：女，1男',
  `headUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `isdead` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否过世',
  `brief_introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区/县',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '详细地址',
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '创建人',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` tinyblob NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_member
-- ----------------------------
INSERT INTO `cms_member` VALUES (1, '陆林杨', 1, '\\/uploads\\/20190630/uQqr4Myp0yWyyiIeqiUNypu41vCZ1bPEnWpjlcPs.jpeg', '15655569098', 0, '<h1 class=\"a-title\" style=\"margin: 0px; padding: 0px; list-style: none; font-size: 28px; line-height: 38px; color: rgb(25, 25, 25); font-family: &quot;\\&quot;PingFang SC\\&quot;,Arial,\\&quot;Microsoft yahei\\&quot;,simsun,\\&quot;sans-serif\\&quot;&quot;; white-space: normal; background-color: rgb(249, 249, 249);\"><strong style=\"float: none;\">特朗普与金正恩会谈持续40分钟，双方同意重启核问题谈判</strong></h1><p><span class=\"time\" style=\"margin-right: 20px;\">2019-06-30 16:16</span>&nbsp;<span class=\"original\" style=\"margin-right: 20px;\"></span><span class=\"tag\" style=\"float: right;\"></span></p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">当地时间30日下午16:45分左右，美国总统特朗普在板门店与朝鲜最高领导人金正恩以及韩国总统文在寅举行了历史性的会面，并与金正恩进行了40分钟的会谈。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">据美国有线电视新闻网报道，会谈结束后，三位领导人一起走出韩方的“自由之家”。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">报道称，特朗普陪同金正恩回到分界线朝方一侧，金正恩说：“我认为这次会议传递出的信号就是，我们现在可以随时见面。”</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">之后特朗普返回到“自由之家”和韩国总统文在寅一同接受了媒体的简短采</p><p><br/></p>', '天津市', '天津市', '河西区', ' ', 'admin', '2019-06-30 21:19:41', now(), 1);
INSERT INTO `cms_member` VALUES (2, '陆林杨', 1, '\\/uploads\\/20190630/uQqr4Myp0yWyyiIeqiUNypu41vCZ1bPEnWpjlcPs.jpeg', '15655569098', 0, '<h1 class=\"a-title\" style=\"margin: 0px; padding: 0px; list-style: none; font-size: 28px; line-height: 38px; color: rgb(25, 25, 25); font-family: &quot;\\&quot;PingFang SC\\&quot;,Arial,\\&quot;Microsoft yahei\\&quot;,simsun,\\&quot;sans-serif\\&quot;&quot;; white-space: normal; background-color: rgb(249, 249, 249);\"><strong style=\"float: none;\">特朗普与金正恩会谈持续40分钟，双方同意重启核问题谈判</strong></h1><p><span class=\"time\" style=\"margin-right: 20px;\">2019-06-30 16:16</span>&nbsp;<span class=\"original\" style=\"margin-right: 20px;\"></span><span class=\"tag\" style=\"float: right;\"></span></p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">当地时间30日下午16:45分左右，美国总统特朗普在板门店与朝鲜最高领导人金正恩以及韩国总统文在寅举行了历史性的会面，并与金正恩进行了40分钟的会谈。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">据美国有线电视新闻网报道，会谈结束后，三位领导人一起走出韩方的“自由之家”。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">报道称，特朗普陪同金正恩回到分界线朝方一侧，金正恩说：“我认为这次会议传递出的信号就是，我们现在可以随时见面。”</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">之后特朗普返回到“自由之家”和韩国总统文在寅一同接受了媒体的简短采</p><p><br/></p>', '天津市', '天津市', '河西区', ' ', 'admin', '2019-06-30 21:21:44', now(), 1);
INSERT INTO `cms_member` VALUES (3, '陆林杨', 1, '\\/uploads\\/20190630/uQqr4Myp0yWyyiIeqiUNypu41vCZ1bPEnWpjlcPs.jpeg', '15655569098', 0, '<h1 class=\"a-title\" style=\"margin: 0px; padding: 0px; list-style: none; font-size: 28px; line-height: 38px; color: rgb(25, 25, 25); font-family: &quot;\\&quot;PingFang SC\\&quot;,Arial,\\&quot;Microsoft yahei\\&quot;,simsun,\\&quot;sans-serif\\&quot;&quot;; white-space: normal; background-color: rgb(249, 249, 249);\"><strong style=\"float: none;\">特朗普与金正恩会谈持续40分钟，双方同意重启核问题谈判</strong></h1><p><span class=\"time\" style=\"margin-right: 20px;\">2019-06-30 16:16</span>&nbsp;<span class=\"original\" style=\"margin-right: 20px;\"></span><span class=\"tag\" style=\"float: right;\"></span></p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">当地时间30日下午16:45分左右，美国总统特朗普在板门店与朝鲜最高领导人金正恩以及韩国总统文在寅举行了历史性的会面，并与金正恩进行了40分钟的会谈。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">据美国有线电视新闻网报道，会谈结束后，三位领导人一起走出韩方的“自由之家”。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">报道称，特朗普陪同金正恩回到分界线朝方一侧，金正恩说：“我认为这次会议传递出的信号就是，我们现在可以随时见面。”</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">之后特朗普返回到“自由之家”和韩国总统文在寅一同接受了媒体的简短采</p><p><br/></p>', '天津市', '天津市', '河西区', '美唐', 'admin', '2019-06-30 21:22:12', now(), 1);
INSERT INTO `cms_member` VALUES (4, '小明', 1, '\\/uploads\\/20190630/snp92gfVkdx49GQ8pUci0Tl6MO2f1SaC58YCebbK.jpeg', '15655569098', 0, '<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; font-family: ����; font-size: 14px; white-space: normal;\">新华社北京6月29日电&nbsp;&nbsp;国家主席习近平29日签署发布特赦令，根据十三届全国人大常委会第十一次会议29日通过的全国人大常委会关于在中华人民共和国成立七十周年之际对部分服刑罪犯予以特赦的决定，对九类服刑罪犯实行特赦。</p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; font-family: ����; font-size: 14px; white-space: normal;\">　　根据国家主席特赦令，对依据2019年1月1日前人民法院作出的生效判决正在服刑的九类罪犯实行特赦：一是参加过中国人民抗日战争、中国人民解放战争的；二是中华人民共和国成立以后，参加过保卫国家主权、安全和领土完整对外作战的；三是中华人民共和国成立以后，为国家重大工程建设做过较大贡献并获得省部级以上“劳动模范”“先进工作者”“五一劳动奖章”等荣誉称号的；四是曾系现役军人并获得个人一等功以上奖励的；五是因防卫过当或者避险过当，被判处三年以下有期徒刑或者剩余刑期在一年以下的；六是年满七十五周岁、身体严重残疾且生活不能自理的；七是犯罪的时候不满十八周岁，被判处三年以下有期徒刑或者剩余刑期在一年以下的；八是丧偶且有未成年子女或者有身体严重残疾、生活不能自理的子女，确需本人抚养的女性，被判处三年以下有期徒刑或者剩余刑期在一年以下的；九是被裁定假释已执行五分之一以上假释考验期的，或者被判处管制的。</p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; font-family: ����; font-size: 14px; white-space: normal;\">　　国家主席特赦令同时明确，上述九类对象中，具有以下情形之一的，不得特赦：一是第二、三、四、七、八、九类对象中系贪污受贿犯罪，军人违反职责犯罪，故意杀人、强奸、抢劫、绑架、放火、爆炸、投放危险物质或者有组织的暴力性犯罪，黑社会性质的组织犯罪，贩卖毒品犯罪，危害国家安全犯罪，恐怖活动犯罪的罪犯，其他有组织犯罪的主犯，累犯的；二是第二、三、四、九类对象中剩余刑期在十年以上的和仍处于无期徒刑、死刑缓期执行期间的；三是曾经被特赦又因犯罪被判处刑罚的；四是不认罪悔改的；五是经评估具有现实社会危险性的。</p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; font-family: ����; font-size: 14px; white-space: normal;\">　　国家主席特赦令指示，对2019年6月29日符合上述条件的服刑罪犯，经人民法院依法作出裁定后，予以释放。</p><p><br/></p>', '天津市', '天津市', '和平区', '美唐', 'admin', '2019-06-30 21:26:05', now(), 1);
INSERT INTO `cms_member` VALUES (5, '小芳', 0, '\\/uploads\\/20190701/HhL3OMnMJnaCuwA6P0VdUf9yFybRty6GoIG0o3XK.jpeg', NULL, 0, '<p>阿三</p>', '', '', '', '', 'admin', '2019-07-01 21:21:09', now(), 0);
INSERT INTO `cms_member` VALUES (6, '小红', 0, '\\/uploads\\/20190701/HhL3OMnMJnaCuwA6P0VdUf9yFybRty6GoIG0o3XK.jpeg', NULL, 0, '<p>阿三</p>', '', '', '', '', 'admin', '2019-07-01 21:21:21', now(), 0);
INSERT INTO `cms_member` VALUES (7, '刘邦', 1, '\\/uploads\\/20190701/OyqPsBmNYwlQnUY7oZmHRodwAZw5DmSIdtFnYl4E.jpeg', NULL, 1, NULL, '', '', '', '', 'admin', '2019-07-01 21:25:13', now(), 0);
INSERT INTO `cms_member` VALUES (8, '吕雉', 0, '\\/uploads\\/20190701/FbsSYUybUorBHvLbUIVGwI95spAeoqifpddgYzXu.jpeg', NULL, 1, NULL, '', '', '', NULL, 'admin', '2019-07-01 21:25:39', now(), 0);
INSERT INTO `cms_member` VALUES (9, '刘盈', 1, '\\/uploads\\/20190701/EoBq85dqSKCIxTiqn2w3J5l5gK7g0BnF4rVC2G02.jpeg', NULL, 1, NULL, '', '', '', '', 'admin', '2019-07-01 21:27:34', now(), 0);
INSERT INTO `cms_member` VALUES (10, '刘恭', 1, '\\/uploads\\/20190701/KYavy2GtlRWVurnaN7QLFjLl0TyOmUuFXVLB4zp7.jpeg', NULL, 1, NULL, '', '', '', '', 'admin', '2019-07-01 21:34:22', now(), 0);
INSERT INTO `cms_member` VALUES (11, '刘恒', 1, '\\/uploads\\/20190701/Nis1YwhnDFGnHNtqREti9cn8OgAAev4vfjCHOgzt.jpeg', NULL, 1, NULL, '', '', '', '', 'admin', '2019-07-01 21:35:02', now(), 0);
INSERT INTO `cms_member` VALUES (12, '窦绮恒', 0, '\\/uploads\\/20190701/VU5dzaPJUIgI3MO1XUF1EsgfhD4eG1MIkWcFYh24.jpeg', NULL, 0, NULL, '', '', '', '', 'admin', '2019-07-01 21:35:53', now(), 0);

SET FOREIGN_KEY_CHECKS = 1;
