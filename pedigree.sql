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

 Date: 27/11/2019 23:54:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章标题',
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  `type` tinyint(1) NOT NULL COMMENT '文章类型',
  `update_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章内容',
  `browse_num` int(255) NOT NULL DEFAULT 0 COMMENT '浏览数',
  `recommend` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否推荐',
  `top` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否置顶',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES (1, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 6, 0, 0, 0, '2019-07-04 05:56:15', '2019-07-04 05:56:15');
INSERT INTO `cms_article` VALUES (2, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, '1', 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 05:56:21', '2019-07-04 06:26:23');
INSERT INTO `cms_article` VALUES (3, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 05:56:23', '2019-07-04 05:56:23');
INSERT INTO `cms_article` VALUES (4, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 1, '2019-07-04 05:56:24', '2019-07-04 06:33:37');
INSERT INTO `cms_article` VALUES (5, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 05:56:24', '2019-07-04 05:56:24');
INSERT INTO `cms_article` VALUES (6, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, '1', 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 1, '2019-07-04 05:56:25', '2019-07-04 06:33:16');
INSERT INTO `cms_article` VALUES (7, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 05:56:25', '2019-07-04 05:56:25');
INSERT INTO `cms_article` VALUES (8, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 06:34:15', '2019-07-04 06:34:15');
INSERT INTO `cms_article` VALUES (9, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 06:34:16', '2019-07-04 06:34:16');
INSERT INTO `cms_article` VALUES (10, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 2, 0, 0, 0, '2019-07-04 06:34:16', '2019-07-04 06:34:16');
INSERT INTO `cms_article` VALUES (11, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 4, 0, 0, 0, '2019-07-04 06:34:17', '2019-07-04 06:34:17');
INSERT INTO `cms_article` VALUES (12, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 3, 0, 0, 0, '2019-07-04 06:34:17', '2019-07-04 06:34:17');
INSERT INTO `cms_article` VALUES (13, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 06:34:18', '2019-07-04 06:34:18');
INSERT INTO `cms_article` VALUES (14, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 06:34:18', '2019-07-04 06:34:18');
INSERT INTO `cms_article` VALUES (15, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 06:34:19', '2019-07-04 06:34:19');
INSERT INTO `cms_article` VALUES (16, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 5, 0, 0, 0, '2019-07-04 06:34:20', '2019-07-04 06:34:20');
INSERT INTO `cms_article` VALUES (17, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 06:34:20', '2019-07-04 06:34:20');
INSERT INTO `cms_article` VALUES (18, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 06:34:20', '2019-07-04 06:34:20');
INSERT INTO `cms_article` VALUES (19, '测试aass', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, '1', 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 2, 0, 0, 0, '2019-07-04 06:34:21', '2019-07-05 04:36:16');
INSERT INTO `cms_article` VALUES (20, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 1, 0, 0, 0, '2019-07-04 06:34:21', '2019-07-04 06:34:21');
INSERT INTO `cms_article` VALUES (21, '测试', '\\/uploads\\/20190703/zo6SWJ1jkRgKJFmGpO67bVyy9ZQdHudgnnze5PWf.jpeg', 6, NULL, 1, 'D啊顶顶顶顶顶顶顶', '<p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;一个人能取得多大的成就，从某种意义上说取决于他所出生的时代背景、生活环境及家庭影响。如乱世出英雄，贫寒出将才等等。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 1972年，魏伟伟出生于革命圣地——江西南昌。南昌，是一座具有悠久历史和光荣革命传统的城市，自古以来就是锺灵毓秀之地、文化礼仪之乡，以物华天宝、人杰地灵而享誉天下。同时，南昌又是一座英雄的城市，1927年8月1日，在这里打响了武装反抗国民党反动统治的第一枪。改革开放之后，南昌建成了国家级中心批发市场——江西省内最大服装品种最齐全的南昌洪城服装批发大市场。1999年，其商品交易额突破60亿元，商品辐射湖南、湖北、广东等省，每天有大量服装从这里销往全国各地。受传统文化与革命英雄事迹的熏陶以及成长环境的影响，魏伟伟从小就有一种想报效祖国的强烈的责任感与使命感，也对服装产生了浓厚的兴趣。从学校毕业后，即借几万元钱加入服装批发行业，在洪城批发市场从事服装批发。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 服装批发，外人看来十分简单，只要按季节进货，然后等待客户上门批发就行。实际上，每一个简单的行业，都有很微妙深奥的学问，否则，就不会有“三百六十行行行有人赚钱行行有人亏本”之说。开始，满怀信心涉足服装行业的魏伟伟怎么也想不通，他跟别人一样进的是同样的货，定的是同样的价格，但他的店前总是门庭冷落车马稀。别人开始换季了，他的当季服装还静悄悄地躺在仓库里。借来的钱全部积压在仓库，没有资金周转，店铺面临关门之险，魏伟伟的心越来越急，越来越紧。幸好魏伟伟有一个最大的优点，就是沉着、冷静，虽然心里很急，但在他脸上所流露出来的，总是一张幸福的笑脸，给人感觉非常阳光，非常和善。是啊，何必用自己的焦躁、自己的痛苦去影响他人的生活、影响他人的心情？<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不懂就问。魏伟伟经常向服装行业的老师傅老前辈们请教。俗话说“同行是冤家”，老前辈老师傅们开始也有所防备，有所保留，毕竟，在同一个市场，同一个行业，多教一个人，就多树一个竞争对手。但时间长了，次数多了，他们就敞开了心扉，对魏伟伟倾囊相授。因为魏伟伟有事没事都去给他们帮忙，如装货、卸货、看店等等。精诚所至，金石为开。通过请教，魏伟伟终于明白自己店前门庭冷落的原因——所经营的品种多而杂，让客户无从选择。知道了原因，魏伟伟立即把积压的服装全部亏本处理，然后用回笼的资金进了一批裤子。由于产品单一而专业、档次高，季节性强，一经投放市场，立即销售一空。几批货下来，魏伟伟不仅还清了所有欠债，还有了盈余。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 因进货原因，魏伟伟经常往返广州，每次到广州，就像刘姥姥进了大观园，不过不是对这里的建筑感兴趣，也不是对这里的新鲜事物感到好奇，而是这里的发展空间，这里发展优势强烈地吸引着他，诱惑着他。广州，有着广阔的发展空间，有着完整而强大的产业链，南昌洪城服装市场与这里相比，简直是天与地之间的距离。魏伟伟算了一笔帐，同行业中，广州一年相当于南昌十年，而人生，又有多少个十年？魏伟伟感受到了前所未有的冲击，产生了前所未有的失落感。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 不行！我一定要去广州发展，到那改革开放的前沿阵地去驰骋纵横。魏伟伟的热血在沸腾，为这一想法而激动。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “不行！”父亲的一句话，犹如一盆冰冷的水，把他浇了个透心凉。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “你啊！就是吃不了三餐饱饭。”母亲“雪上加霜”。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “刚刚才稳定，又要去折腾，你能不能安分守己一回？”妻子也在扇风。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 不管是浇冷水、“雪上加霜”还是扇风，家人都是出于对他的爱，是希望他好，希望他能够安安稳稳地做点小生意，因为当时的环境太苦，条件太差，经不起折腾，也被折腾怕了。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; “燕雀安知鸿皓之志哉？”魏伟伟不是没有考虑家人们的感受，也不是没有考虑过后果：能不能去，去了之后该怎么做，资金从哪里来，最坏的结局是什么，能不能坚持下去等等。这些，他都反复思考过，但想得最多的是，认为人生其实就是一个实践的过程，只要去努力了，去实践了，即使失败了，也没什么大不了的。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 是苍鹰，必将翱翔天际；是蛟龙，终归游向大海。魏伟伟最终选择了广州，2000年来到了广州。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 人生的道路上，会面临着许许多多的选择。站在历史的海岸，漫溯那一道道历史沟渠：楚大夫沉吟泽畔，九死不悔；魏武帝扬鞭东指壮心不已；陶渊明悠然南山，饮酒采菊……他们选择了永恒——纵然谄媚污蔑蒙蔽视听，也不随其流扬其波是执着的选择，纵然马革裹尸魂归关西，也要扬声边塞尽扫狼烟，这是豪壮的选择；纵然一身清苦终日难饱，也愿怡然自乐、躬耕陇亩，这是高雅的选择——在一番番选择中，帝王将相成其盖世伟业，贤士迁客成其千古文章。魏伟伟的选择，其实就是一次心灵的升华，因为他是在用心灵选择，选择自己的理想，选择心灵的永恒，也因为这次选择，他踏上了甜蜜之旅，开创了甜蜜的事业；也因为他的这次选择，中国多了一个品牌，服装多了一层内涵，多了一种诠释。<br/>&nbsp;</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>&nbsp;&nbsp;&nbsp; 炼狱</strong></p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;<br/>&nbsp;&nbsp;&nbsp; 创业初期，魏伟伟是幸运的，一到广州，就找到了两位志同道合的朋友，一个是与他一起长大的，另一个是他原来生意上的伙伴。三人搭台同唱一台戏。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 台已搭好，该唱什么戏呢？魏伟伟凭多年经营服装的经验，觉得牛仔服市场空间大，发展前景广阔。事实证明，魏伟伟的眼光决定了初次创业的成功，他们投入生产牛仔裤后，即迎来了牛仔快速发展期，公司产品供不应求。根据他们制订的创业规划，第一年为发展期，准备亏损，第二年才开始盈利。结果第一年不仅收回了全部投资，还有盈利。初战告捷，激情猛涨，信心倍增，开始轰轰烈烈的下一轮征战。第二年，再次投入100多万元，用于购买设备，扩大生产规模，做自己的品牌。同时，把所有的流动资金近300万元用来做外单，希望通过为一些大型品牌企业加工，从而学习他们的经营理念与先进技术。谁知人算不如天算，计划赶不上变化，做外单不但没有学到别人的管理理念与先进技术，反而把自己也套了进去，差点坠入万劫不复的深渊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 或许是“天将降大任于斯人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。”上天有意对他们磨炼。因为第一次做外单，缺乏相关管理经验与技术，第一批外单失败，产品全部积压，这对当时魏伟伟他们来说，是最无情的打击，猛涨的激情瞬间消失，倍增的信心由灰心取代。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 屋漏偏逢连夜雨，在外单失利的情况下，内单跟着失守，仓库一下子积压了六七万条牛仔裤。这一年，公司不仅没有盈利，反而亏损数百万元。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 难能可贵的是，在巨额亏损面前，魏伟伟他们虽然有过短暂的迷茫，但迷茫过后，是反思，查找失败的原因。通过不断反思、分析、总结，得出，管理经验不足、技术欠缺是导致失败的客观因素，而其主要原因，则在于公司管理架构不科学，三名股东，三种思想，三头管理，其结果，我们可想而知。于是，三人商议，提出一人负责制，集中精力，集中资源，使之政令畅通，管理顺畅。谁来出头露面，负责整个公司的经营管理？魏伟伟最合适。另两名股东意见不谋而合。<br/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; 看着朋友对自己信任的目光，在公司最困难时刻，魏伟伟责无旁贷地挑起了这幅千钧重担，开始艰难的负债经营。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2008年，对于国人来讲，是极其不平凡的一年，注定将会在历史的长河中留下浓墨重彩的一笔：冰灾地震、奥运盛宴、金融海啸、扩大内需等等粉墨登场……2008年，也是广州甜蜜鸟服饰极不平凡的一年。在魏伟伟的带领下，公司刚从亏损的泥潭中爬出来，还没有正式站起来，就有一名股东要求退股。退股意味着要退钱，可还没有完全恢复元气的公司哪里有钱退？然己所不欲，勿施于人。既然人家去意已决，也不可强留。更可怕也最危险的是，席卷全球的金融风暴随时都有可能将你致于死地。此时魏伟伟如履薄冰，在企业生死一线间徘徊。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 从某种意义上讲，压力也是动力，“危”中藏“机”。起码对魏伟伟来讲就是这样。在股东退股与金融危机两重压力之下，迫使他思考更多问题，总结更多经验。在思考中，魏伟伟清楚地看到了公司现有的经营模式不适合于现代企业的发展。他之前的想法是，先让公司发展，待公司发展了，有了足够的资金，就让员工去发展，给员工空间。事实上，这种模式是不科学的，员工的发展与公司的发展是同等的，正如一颗树，你不能等树干长粗了才来长叶子，也不能生长叶子再长树干，树干和树叶必须同时生长，才能枝繁叶茂，这是自然规律。明白了这个道理，魏伟伟开始对公司进行的整改，变革经营模式，调整管理结构，大胆放权与授权，成立生产部、业务一部与二部，独立核算，自负盈亏，充分调动员工的积极性，使他们有更大的发展空间与自主空间。通过这一系列科学合理、行之有效的举措，员工的积极性空前高涨，工作效率与效益显著提高，魏伟伟自己也轻松起来，可以有更多的精力去研究与探索服装行业的发展规律及公司未来发展方向。</p><p style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14.6667px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 没有经历坎坷泥泞的艰难，不会知道阳光大道的可贵；没有经历风雪交加的黑夜，不能体会风和日丽的可爱。而逆境，是一所最好的学校。每一次失败，每一次打击，每一次损失，都蕴育着成功的萌芽。炼狱归来，无论是甜蜜鸟服饰，还是魏伟伟本人，他们前进的步子迈得更加稳重、坚定、坚实。</p><p><br/></p>', 9, 0, 0, 0, '2019-07-04 06:34:22', '2019-07-04 06:34:22');
INSERT INTO `cms_article` VALUES (22, 'aaa', '\\/uploads\\/20191108/MJbnPpJz4pyQYbZ4Xu8KDDSYCa5c1uRdS9t7PjVm.png', 6, '1', 1, 'aaas', '<p>ssddfff</p>', 1, 0, 0, 1, '2019-11-08 18:54:17', '2019-11-08 19:06:57');
INSERT INTO `cms_article` VALUES (23, '中国演出市场经济', '\\/uploads\\/20191110/lD62tPtzhjWCkPDDnEc1wyUTRuRIrYBjDDikh5Qq.jpeg', 10, NULL, 1, '新华社北京11月8日电（记者 余俊杰）8日，中国演出行业协会在京发布《2018中国演出市场年度报告》，显示2018年我国演出市场总体经济规模达514.11亿元，同比增幅5%，其中农村演出收入29.02亿元，较2017年上升10.22%。', '<p><span style=\"font-family: -apple-system-font, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 19px; text-align: justify; background-color: #FFFFFF;\">新华社北京11月8日电（记者 余俊杰）8日，中国演出行业协会在京发布《2018中国演出市场年度报告》，显示2018年我国演出市场总体经济规模达514.11亿元，同比增幅5%，其中农村演出收入29.02亿元，较2017年上升10.22%。</span></p><p><span style=\"font-family: -apple-system-font, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 19px; text-align: justify; background-color: #FFFFFF;\">由文化和旅游部产业发展司委托中国演出行业协会主办的2019中国文旅产品国际营销年会——旅游演艺国际合作论坛8日在京举行。会上发布的该份报告指出，2018年我国演出市场份额中，演出票房收入为182.21亿元，占比最高；政府补贴收入（不含农村惠民）135.75亿元，比2017年上涨9.07%。</span></p><p><span style=\"font-family: -apple-system-font, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 19px; text-align: justify; background-color: #FFFFFF;\">报告指出，据演出票务公司提供的消费大数据分析，演出市场消费群体趋于年轻化，90后人群占60%以上，24岁以下人群占比14.8%；单笔消费平均价格达1200元，远高于电影、体育等其他文化领域。</span></p><p><span style=\"font-family: -apple-system-font, &quot;Helvetica Neue&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, sans-serif; font-size: 19px; text-align: justify; background-color: #FFFFFF;\">报告显示，剧场演出下沉趋势明显，收入增长显著，2018年三四线城市平均演出达50余场，同比增幅超10%。</span></p>', 6, 0, 0, 0, '2019-11-10 08:39:11', '2019-11-10 08:39:11');
INSERT INTO `cms_article` VALUES (24, '香港青年天津交流团', '\\/uploads\\/20191116/macpiQqOmmz8Tn8UEAtwCnUED2yJ4Idzm53TnTI5.jpeg', 10, NULL, 1, '香港青年天津交流团来津开展交流活动', '<p><span class=\"f-bold\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; font-weight: bold;\">内容提要：</span>12日至16日，“津港同行创青春”香港青年天津交流团来津开展交流活动。15日，市政协副主席魏大鹏与交流团一行座谈交流。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box; text-indent: 2em;\"><br/></p><p><img height=\"446\" src=\"http://pic.enorth.com.cn/004/108/733/00410873318_443a712c.jpg\" width=\"600\" style=\"border: none; vertical-align: middle; padding: 0px; margin: 0px auto; box-sizing: border-box; display: block; height: inherit;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\">市政协副主席魏大鹏</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box; text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box; text-indent: 2em;\"><span style=\"font-weight: 700;\">天津北方网讯：</span>12日至16日，“津港同行创青春”香港青年天津交流团来津开展交流活动。15日，市政协副主席魏大鹏与交流团一行座谈交流。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box; text-indent: 2em;\"><br/></p><p><img height=\"400\" src=\"http://pic.enorth.com.cn/004/108/733/00410873319_66abfe5b.jpg\" width=\"600\" style=\"border: none; vertical-align: middle; padding: 0px; margin: 0px auto; box-sizing: border-box; display: block; height: inherit;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\">座谈会现场</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box; text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box; text-indent: 2em;\">座谈会上，交流团成员畅谈收获体会。大家表示，近年来，天津经济社会发展势头迅猛，与香港在经贸、科技、教育、文化、体育等方面的交流日益密切。我们将以此次活动为契机，不断深化对祖国内地的了解，为促进津港两地在更多领域实现务实合作作出更大贡献。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box; text-indent: 2em;\">魏大鹏代表市政协对交流团来津表示欢迎。他说，通过此次活动我们结识了许多新朋友，为今后进一步合作交流打下了坚实基础。希望香港青年通过天津这个窗口，更加深刻认识新中国走过的不平凡道路和取得的巨大成就，更加深刻理解“一国两制”与坚持和发展中国特色社会主义、实现中华民族伟大复兴中国梦的内在联系，进一步增强国家认同、民族认同、文化认同。同时，希望各位青年朋友能够成为津港友谊的使者，为促进两地交流合作作出积极贡献。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box; text-indent: 2em;\"><br/></p><p><img height=\"400\" src=\"http://pic.enorth.com.cn/004/108/733/00410873320_bb73d2d3.jpg\" width=\"600\" style=\"border: none; vertical-align: middle; padding: 0px; margin: 0px auto; box-sizing: border-box; display: block; height: inherit;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\">参观天津团泊体育中心</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\"><br/></p><p><img height=\"400\" src=\"http://pic.enorth.com.cn/004/108/733/00410873331_eaf65954.jpg\" width=\"600\" style=\"border: none; vertical-align: middle; padding: 0px; margin: 0px auto; box-sizing: border-box; display: block; height: inherit;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\">与天津天海足球俱乐部友谊比赛</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\"><br/></p><p><img height=\"400\" src=\"http://pic.enorth.com.cn/004/108/733/00410873332_1a4dcac0.jpg\" width=\"600\" style=\"border: none; vertical-align: middle; padding: 0px; margin: 0px auto; box-sizing: border-box; display: block; height: inherit;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\">参观萨马兰奇纪念馆</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 13px; box-sizing: border-box; text-indent: 2em;\">在津期间，交流团一行考察了国家海洋博物馆、中新生态城图书馆、了凡纪念馆、中关村科技城、南开大学、天津博物馆、天津卓郎科技有限公司、天津团泊体育中心、萨马兰奇纪念馆等，与天津天海足球俱乐部进行了友谊比赛，感受了天津发展成就，接受了爱国主义教育。（津云新闻编辑付勇钧 摄影记者戴涛）</p><p><br/></p>', 50, 0, 0, 0, '2019-11-16 13:29:06', '2019-11-16 13:29:06');

-- ----------------------------
-- Table structure for cms_banner
-- ----------------------------
DROP TABLE IF EXISTS `cms_banner`;
CREATE TABLE `cms_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  `isLink` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否链接',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `created_at` datetime NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_banner
-- ----------------------------
INSERT INTO `cms_banner` VALUES (1, '\\/uploads\\/20191126/tQIVCxmNHwrYFBmWJf2nLrWvbPG9xgvJl8tij4Xv.jpeg', 1, 'http://www.baidu.com', 0, '2019-11-26 22:11:49', '2019-11-26 22:25:49');
INSERT INTO `cms_banner` VALUES (2, '\\/uploads\\/20191126/pkZBHfwhAYsU5fzImPbnTZehGEJtFSctJ7SJ73KV.jpeg', 0, '', 0, '2019-11-26 22:11:49', '2019-11-26 22:25:49');
INSERT INTO `cms_banner` VALUES (3, '\\/uploads\\/20191126/WPN61gvzyxDtS1CmhtpHi3tFX8n1K09NxRpjaqxJ.jpeg', 0, '', 0, '2019-11-26 22:11:49', '2019-11-26 22:25:49');
INSERT INTO `cms_banner` VALUES (4, '\\/uploads\\/20191126/9SC1FLZBdcMNX3klqaCDHjBOqi3ClPNjAdkGswUk.jpeg', 0, '', 0, '2019-11-26 22:11:49', '2019-11-26 22:25:49');

-- ----------------------------
-- Table structure for cms_city
-- ----------------------------
DROP TABLE IF EXISTS `cms_city`;
CREATE TABLE `cms_city`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cityEn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cityZh` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provinceEn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provinceZh` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `countryEn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `countryZh` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `leaderEn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `leaderZh` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lat` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hot` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否是热门城市',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '城市表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_city
-- ----------------------------
INSERT INTO `cms_city` VALUES ('101010100', 'beijing', '北京', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '39.904989', '116.405285', 1);
INSERT INTO `cms_city` VALUES ('101010200', 'haidian', '海淀', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '39.956074', '116.310316', 0);
INSERT INTO `cms_city` VALUES ('101010300', 'chaoyang', '朝阳', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '39.921489', '116.486409', 0);
INSERT INTO `cms_city` VALUES ('101010400', 'shunyi', '顺义', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '40.128936', '116.653525', 0);
INSERT INTO `cms_city` VALUES ('101010500', 'huairou', '怀柔', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '40.324272', '116.637122', 0);
INSERT INTO `cms_city` VALUES ('101010600', 'tongzhou', '通州', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '39.902486', '116.658603', 0);
INSERT INTO `cms_city` VALUES ('101010700', 'changping', '昌平', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '40.218085', '116.235906', 0);
INSERT INTO `cms_city` VALUES ('101010800', 'yanqing', '延庆', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '40.465325', '115.985006', 0);
INSERT INTO `cms_city` VALUES ('101010900', 'fengtai', '丰台', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '39.863642', '116.286968', 0);
INSERT INTO `cms_city` VALUES ('101011000', 'shijingshan', '石景山', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '39.914601', '116.195445', 0);
INSERT INTO `cms_city` VALUES ('101011100', 'daxing', '大兴', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '39.728908', '116.338033', 0);
INSERT INTO `cms_city` VALUES ('101011200', 'fangshan', '房山', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '39.735535', '116.139157', 0);
INSERT INTO `cms_city` VALUES ('101011300', 'miyun', '密云', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '40.377362', '116.843352', 0);
INSERT INTO `cms_city` VALUES ('101011400', 'mentougou', '门头沟', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '39.937183', '116.105381', 0);
INSERT INTO `cms_city` VALUES ('101011500', 'pinggu', '平谷', 'beijing', '北京', 'China', '中国', 'beijing', '北京', '40.144783', '117.112335', 0);
INSERT INTO `cms_city` VALUES ('101011600', 'dongcheng', '东城', 'beijing', '北京', 'China', '中国', 'dongcheng', '东城', '39.917544', '116.418757', 0);
INSERT INTO `cms_city` VALUES ('101011700', 'xicheng', '西城', 'beijing', '北京', 'China', '中国', 'xicheng', '西城', '39.915309', '116.366794', 0);
INSERT INTO `cms_city` VALUES ('101020100', 'shanghai', '上海', 'shanghai', '上海', 'China', '中国', 'shanghai', '上海', '31.231706', '121.472644', 1);
INSERT INTO `cms_city` VALUES ('101020200', 'minhang', '闵行', 'shanghai', '上海', 'China', '中国', 'shanghai', '上海', '31.111658', '121.375972', 0);
INSERT INTO `cms_city` VALUES ('101020300', 'baoshan', '宝山', 'shanghai', '上海', 'China', '中国', 'shanghai', '上海', '31.398896', '121.489934', 0);
INSERT INTO `cms_city` VALUES ('101020400', 'huangpu', '黄浦', 'shanghai', '上海', 'China', '中国', 'huangpu', '黄浦', '31.222771', '121.490317', 0);
INSERT INTO `cms_city` VALUES ('101020500', 'jiading', '嘉定', 'shanghai', '上海', 'China', '中国', 'shanghai', '上海', '31.383524', '121.250333', 0);
INSERT INTO `cms_city` VALUES ('101020600', 'pudongxinqu', '浦东新区', 'shanghai', '上海', 'China', '中国', 'shanghai', '上海', '31.245944', '121.567706', 0);
INSERT INTO `cms_city` VALUES ('101020700', 'jinshan', '金山', 'shanghai', '上海', 'China', '中国', 'shanghai', '上海', '30.724697', '121.330736', 0);
INSERT INTO `cms_city` VALUES ('101020800', 'qingpu', '青浦', 'shanghai', '上海', 'China', '中国', 'shanghai', '上海', '31.151209', '121.113021', 0);
INSERT INTO `cms_city` VALUES ('101020900', 'songjiang', '松江', 'shanghai', '上海', 'China', '中国', 'shanghai', '上海', '31.03047', '121.223543', 0);
INSERT INTO `cms_city` VALUES ('101021000', 'fengxian', '奉贤', 'shanghai', '上海', 'China', '中国', 'shanghai', '上海', '30.912345', '121.458472', 0);
INSERT INTO `cms_city` VALUES ('101021100', 'chongming', '崇明', 'shanghai', '上海', 'China', '中国', 'shanghai', '上海', '31.626946', '121.397516', 0);
INSERT INTO `cms_city` VALUES ('101021200', 'xuhui', '徐汇', 'shanghai', '上海', 'China', '中国', 'shanghai', '上海', '31.179973', '121.43752', 0);
INSERT INTO `cms_city` VALUES ('101021300', 'changning', '长宁', 'shanghai', '上海', 'China', '中国', 'changning', '长宁', '31.218123', '121.4222', 0);
INSERT INTO `cms_city` VALUES ('101021400', 'jingan', '静安', 'shanghai', '上海', 'China', '中国', 'jingan', '静安', '31.229003', '121.448224', 0);
INSERT INTO `cms_city` VALUES ('101021500', 'putuo', '普陀', 'shanghai', '上海', 'China', '中国', 'putuo', '普陀', '31.241701', '121.392499', 0);
INSERT INTO `cms_city` VALUES ('101021600', 'hongkou', '虹口', 'shanghai', '上海', 'China', '中国', 'hongkou', '虹口', '31.26097', '121.491832', 0);
INSERT INTO `cms_city` VALUES ('101021700', 'yangpu', '杨浦', 'shanghai', '上海', 'China', '中国', 'yangpu', '杨浦', '31.270755', '121.522797', 0);
INSERT INTO `cms_city` VALUES ('101030100', 'tianjin', '天津', 'tianjin', '天津', 'China', '中国', 'tianjin', '天津', '39.125596', '117.190182', 1);
INSERT INTO `cms_city` VALUES ('101030200', 'wuqing', '武清', 'tianjin', '天津', 'China', '中国', 'tianjin', '天津', '39.376925', '117.057959', 0);
INSERT INTO `cms_city` VALUES ('101030300', 'baodi', '宝坻', 'tianjin', '天津', 'China', '中国', 'tianjin', '天津', '39.716965', '117.308094', 0);
INSERT INTO `cms_city` VALUES ('101030400', 'dongli', '东丽', 'tianjin', '天津', 'China', '中国', 'tianjin', '天津', '39.087764', '117.313967', 0);
INSERT INTO `cms_city` VALUES ('101030500', 'xiqing', '西青', 'tianjin', '天津', 'China', '中国', 'tianjin', '天津', '39.139446', '117.012247', 0);
INSERT INTO `cms_city` VALUES ('101030600', 'beichen', '北辰', 'tianjin', '天津', 'China', '中国', 'tianjin', '天津', '39.225555', '117.13482', 0);
INSERT INTO `cms_city` VALUES ('101030700', 'ninghe', '宁河', 'tianjin', '天津', 'China', '中国', 'tianjin', '天津', '39.328886', '117.82828', 0);
INSERT INTO `cms_city` VALUES ('101030800', 'heping', '和平', 'tianjin', '天津', 'China', '中国', 'heping', '和平', '39.118327', '117.195907', 0);
INSERT INTO `cms_city` VALUES ('101030900', 'jinghai', '静海', 'tianjin', '天津', 'China', '中国', 'tianjin', '天津', '38.935671', '116.925304', 0);
INSERT INTO `cms_city` VALUES ('101031000', 'jinnan', '津南', 'tianjin', '天津', 'China', '中国', 'tianjin', '天津', '38.989577', '117.382549', 0);
INSERT INTO `cms_city` VALUES ('101031100', 'binhaixinqu', '滨海新区', 'tianjin', '天津', 'China', '中国', 'tianjin', '天津', '39.032846', '117.654173', 0);
INSERT INTO `cms_city` VALUES ('101031200', 'hedong', '河东', 'tianjin', '天津', 'China', '中国', 'hedong', '河东', '39.122125', '117.226568', 0);
INSERT INTO `cms_city` VALUES ('101031300', 'hexi', '河西', 'tianjin', '天津', 'China', '中国', 'hexi', '河西', '39.101897', '117.217536', 0);
INSERT INTO `cms_city` VALUES ('101031400', 'jizhou', '蓟州', 'tianjin', '天津', 'China', '中国', 'tianjin', '天津', '40.045342', '117.407449', 0);
INSERT INTO `cms_city` VALUES ('101031500', 'nankai', '南开', 'tianjin', '天津', 'China', '中国', 'nankai', '南开', '39.120474', '117.164143', 0);
INSERT INTO `cms_city` VALUES ('101031600', 'hebei', '河北', 'tianjin', '天津', 'China', '中国', 'hebei', '河北', '39.156632', '117.201569', 0);
INSERT INTO `cms_city` VALUES ('101031700', 'hongqiao', '红桥', 'tianjin', '天津', 'China', '中国', 'hongqiao', '红桥', '39.175066', '117.163301', 0);
INSERT INTO `cms_city` VALUES ('101040100', 'chongqing', '重庆', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.291965', '108.170255', 1);
INSERT INTO `cms_city` VALUES ('101040200', 'yongchuan', '永川', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.348748', '105.894714', 0);
INSERT INTO `cms_city` VALUES ('101040300', 'hechuan', '合川', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.990993', '106.265554', 0);
INSERT INTO `cms_city` VALUES ('101040400', 'nanchuan', '南川', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.156646', '107.098153', 0);
INSERT INTO `cms_city` VALUES ('101040500', 'jiangjin', '江津', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.283387', '106.253156', 0);
INSERT INTO `cms_city` VALUES ('101040700', 'yubei', '渝北', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.601451', '106.512851', 0);
INSERT INTO `cms_city` VALUES ('101040800', 'beibei', '北碚', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.82543', '106.437868', 0);
INSERT INTO `cms_city` VALUES ('101040900', 'banan', '巴南', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.381919', '106.519423', 0);
INSERT INTO `cms_city` VALUES ('101041000', 'changshou', '长寿', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.833671', '107.074854', 0);
INSERT INTO `cms_city` VALUES ('101041100', 'qianjiang', '黔江', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.527548', '108.782577', 0);
INSERT INTO `cms_city` VALUES ('101041200', 'yuzhong', '渝中', 'zhongqing', '重庆', 'China', '中国', 'yuzhong', '渝中', '29.556742', '106.56288', 0);
INSERT INTO `cms_city` VALUES ('101041300', 'wanzhou', '万州', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '30.807807', '108.380246', 0);
INSERT INTO `cms_city` VALUES ('101041400', 'fuling', '涪陵', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.703652', '107.394905', 0);
INSERT INTO `cms_city` VALUES ('101041500', 'kaixian', '开县', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '31.12', '108.26', 0);
INSERT INTO `cms_city` VALUES ('101041600', 'chengkou', '城口', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '31.946293', '108.6649', 0);
INSERT INTO `cms_city` VALUES ('101041700', 'yunyang', '云阳', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '30.930529', '108.697698', 0);
INSERT INTO `cms_city` VALUES ('101041800', 'wuxi', '巫溪', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '31.3966', '109.628912', 0);
INSERT INTO `cms_city` VALUES ('101041900', 'fengjie', '奉节', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '31.019967', '109.465774', 0);
INSERT INTO `cms_city` VALUES ('101042000', 'wushan', '巫山', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '31.074843', '109.878928', 0);
INSERT INTO `cms_city` VALUES ('101042100', 'tongnan', '潼南', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '30.189554', '105.841818', 0);
INSERT INTO `cms_city` VALUES ('101042200', 'dianjiang', '垫江', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '30.330012', '107.348692', 0);
INSERT INTO `cms_city` VALUES ('101042300', 'liangping', '梁平', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '30.672168', '107.800034', 0);
INSERT INTO `cms_city` VALUES ('101042400', 'zhongxian', '忠县', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '30.291537', '108.037518', 0);
INSERT INTO `cms_city` VALUES ('101042500', 'shizhu', '石柱', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.99853', '108.112448', 0);
INSERT INTO `cms_city` VALUES ('101042600', 'dazu', '大足', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.700498', '105.715319', 0);
INSERT INTO `cms_city` VALUES ('101042700', 'rongchang', '荣昌', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.403627', '105.594061', 0);
INSERT INTO `cms_city` VALUES ('101042800', 'tongliang', '铜梁', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.839944', '106.054948', 0);
INSERT INTO `cms_city` VALUES ('101042900', 'bishan', '璧山', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.593581', '106.231126', 0);
INSERT INTO `cms_city` VALUES ('101043000', 'fengdu', '丰都', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.866424', '107.73248', 0);
INSERT INTO `cms_city` VALUES ('101043100', 'wulong', '武隆', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.32376', '107.75655', 0);
INSERT INTO `cms_city` VALUES ('101043200', 'pengshui', '彭水', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.293856', '108.166551', 0);
INSERT INTO `cms_city` VALUES ('101043300', 'qijiang', '綦江', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '29.028091', '106.651417', 0);
INSERT INTO `cms_city` VALUES ('101043400', 'youyang', '酉阳', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '28.839828', '108.767201', 0);
INSERT INTO `cms_city` VALUES ('101043500', 'dadukou', '大渡口', 'zhongqing', '重庆', 'China', '中国', 'dadukou', '大渡口', '29.481002', '106.48613', 0);
INSERT INTO `cms_city` VALUES ('101043600', 'xiushan', '秀山', 'chongqing', '重庆', 'China', '中国', 'chongqing', '重庆', '28.444772', '108.996043', 0);
INSERT INTO `cms_city` VALUES ('101043700', 'jiangbei', '江北', 'zhongqing', '重庆', 'China', '中国', 'jiangbei', '江北', '29.575352', '106.532844', 0);
INSERT INTO `cms_city` VALUES ('101043800', 'shapingba', '沙坪坝', 'zhongqing', '重庆', 'China', '中国', 'shapingba', '沙坪坝', '29.541224', '106.4542', 0);
INSERT INTO `cms_city` VALUES ('101043900', 'jiulongpo', '九龙坡', 'zhongqing', '重庆', 'China', '中国', 'jiulongpo', '九龙坡', '29.523492', '106.480989', 0);
INSERT INTO `cms_city` VALUES ('101044000', 'nanan', '南岸', 'zhongqing', '重庆', 'China', '中国', 'nanan', '南岸', '29.523992', '106.560813', 0);
INSERT INTO `cms_city` VALUES ('101044100', 'kaizhou', '开州', 'zhongqing', '重庆', 'China', '中国', 'kaizhou', '开州', '31.167735', '108.413317', 0);
INSERT INTO `cms_city` VALUES ('101050101', 'haerbin', '哈尔滨', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.756967', '126.642464', 0);
INSERT INTO `cms_city` VALUES ('101050102', 'shuangcheng', '双城', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.377942', '126.308784', 0);
INSERT INTO `cms_city` VALUES ('101050103', 'hulan', '呼兰', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.98423', '126.603302', 0);
INSERT INTO `cms_city` VALUES ('101050104', 'acheng', '阿城', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.538372', '126.972726', 0);
INSERT INTO `cms_city` VALUES ('101050105', 'binxian', '宾县', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.759369', '127.48594', 0);
INSERT INTO `cms_city` VALUES ('101050106', 'yilan', '依兰', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '46.315105', '129.565594', 0);
INSERT INTO `cms_city` VALUES ('101050107', 'bayan', '巴彦', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '46.081889', '127.403602', 0);
INSERT INTO `cms_city` VALUES ('101050108', 'tonghe', '通河', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.977618', '128.747786', 0);
INSERT INTO `cms_city` VALUES ('101050109', 'fangzheng', '方正', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.839536', '128.836131', 0);
INSERT INTO `cms_city` VALUES ('101050110', 'yanshou', '延寿', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.455648', '128.331886', 0);
INSERT INTO `cms_city` VALUES ('101050111', 'shangzhi', '尚志', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.214953', '127.968539', 0);
INSERT INTO `cms_city` VALUES ('101050112', 'wuchang', '五常', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '44.919418', '127.15759', 0);
INSERT INTO `cms_city` VALUES ('101050113', 'mulan', '木兰', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.949826', '128.042675', 0);
INSERT INTO `cms_city` VALUES ('101050114', 'daoli', '道里', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.762035', '126.612532', 0);
INSERT INTO `cms_city` VALUES ('101050115', 'nangang', '南岗', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.755971', '126.652098', 0);
INSERT INTO `cms_city` VALUES ('101050116', 'daowai', '道外', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.78454', '126.648838', 0);
INSERT INTO `cms_city` VALUES ('101050117', 'pingfang', '平房', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.605567', '126.629257', 0);
INSERT INTO `cms_city` VALUES ('101050118', 'songbei', '松北', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.814656', '126.563066', 0);
INSERT INTO `cms_city` VALUES ('101050119', 'xiangfang', '香坊', 'heilongjiang', '黑龙江', 'China', '中国', 'haerbin', '哈尔滨', '45.713067', '126.667049', 0);
INSERT INTO `cms_city` VALUES ('101050201', 'qiqihaer', '齐齐哈尔', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.342081', '123.95792', 0);
INSERT INTO `cms_city` VALUES ('101050202', 'nehe', '讷河', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '48.481133', '124.882172', 0);
INSERT INTO `cms_city` VALUES ('101050203', 'longjiang', '龙江', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.336388', '123.187225', 0);
INSERT INTO `cms_city` VALUES ('101050204', 'gannan', '甘南', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.917838', '123.506034', 0);
INSERT INTO `cms_city` VALUES ('101050205', 'fuyu', '富裕', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.797172', '124.469106', 0);
INSERT INTO `cms_city` VALUES ('101050206', 'yian', '依安', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.890098', '125.307561', 0);
INSERT INTO `cms_city` VALUES ('101050207', 'baiquan', '拜泉', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.607363', '126.091911', 0);
INSERT INTO `cms_city` VALUES ('101050208', 'keshan', '克山', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '48.034342', '125.874355', 0);
INSERT INTO `cms_city` VALUES ('101050209', 'kedong', '克东', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '48.03732', '126.249094', 0);
INSERT INTO `cms_city` VALUES ('101050210', 'tailai', '泰来', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '46.39233', '123.41953', 0);
INSERT INTO `cms_city` VALUES ('101050211', 'longsha', '龙沙', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.341736', '123.957338', 0);
INSERT INTO `cms_city` VALUES ('101050212', 'jianhua', '建华', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.354494', '123.955888', 0);
INSERT INTO `cms_city` VALUES ('101050213', 'tiefeng', '铁锋', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.339499', '123.973555', 0);
INSERT INTO `cms_city` VALUES ('101050214', 'angangxi', '昂昂溪', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.156867', '123.813181', 0);
INSERT INTO `cms_city` VALUES ('101050215', 'fulaerji', '富拉尔基', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.20697', '123.638873', 0);
INSERT INTO `cms_city` VALUES ('101050216', 'nianzishan', '碾子山', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.51401', '122.887972', 0);
INSERT INTO `cms_city` VALUES ('101050217', 'meilisi', '梅里斯', 'heilongjiang', '黑龙江', 'China', '中国', 'qiqihaer', '齐齐哈尔', '47.311113', '123.754599', 0);
INSERT INTO `cms_city` VALUES ('101050301', 'mudanjiang', '牡丹江', 'heilongjiang', '黑龙江', 'China', '中国', 'mudanjiang', '牡丹江', '44.582962', '129.618602', 0);
INSERT INTO `cms_city` VALUES ('101050302', 'hailin', '海林', 'heilongjiang', '黑龙江', 'China', '中国', 'mudanjiang', '牡丹江', '44.574149', '129.387902', 0);
INSERT INTO `cms_city` VALUES ('101050303', 'muling', '穆棱', 'heilongjiang', '黑龙江', 'China', '中国', 'mudanjiang', '牡丹江', '44.91967', '130.527085', 0);
INSERT INTO `cms_city` VALUES ('101050304', 'linkou', '林口', 'heilongjiang', '黑龙江', 'China', '中国', 'mudanjiang', '牡丹江', '45.286645', '130.268402', 0);
INSERT INTO `cms_city` VALUES ('101050305', 'suifenhe', '绥芬河', 'heilongjiang', '黑龙江', 'China', '中国', 'mudanjiang', '牡丹江', '44.396864', '131.164856', 0);
INSERT INTO `cms_city` VALUES ('101050306', 'ningan', '宁安', 'heilongjiang', '黑龙江', 'China', '中国', 'mudanjiang', '牡丹江', '44.346836', '129.470019', 0);
INSERT INTO `cms_city` VALUES ('101050307', 'dongning', '东宁', 'heilongjiang', '黑龙江', 'China', '中国', 'mudanjiang', '牡丹江', '44.063578', '131.125296', 0);
INSERT INTO `cms_city` VALUES ('101050308', 'dongan', '东安', 'heilongjiang', '黑龙江', 'China', '中国', 'mudanjiang', '牡丹江', '44.582399', '129.623292', 0);
INSERT INTO `cms_city` VALUES ('101050309', 'yangming', '阳明', 'heilongjiang', '黑龙江', 'China', '中国', 'mudanjiang', '牡丹江', '44.596328', '129.634645', 0);
INSERT INTO `cms_city` VALUES ('101050310', 'aimin', '爱民', 'heilongjiang', '黑龙江', 'China', '中国', 'mudanjiang', '牡丹江', '44.595443', '129.601232', 0);
INSERT INTO `cms_city` VALUES ('101050311', 'xian', '西安', 'heilongjiang', '黑龙江', 'China', '中国', 'mudanjiang', '牡丹江', '44.581032', '129.61311', 0);
INSERT INTO `cms_city` VALUES ('101050401', 'jiamusi', '佳木斯', 'heilongjiang', '黑龙江', 'China', '中国', 'jiamusi', '佳木斯', '46.809606', '130.361634', 0);
INSERT INTO `cms_city` VALUES ('101050402', 'tangyuan', '汤原', 'heilongjiang', '黑龙江', 'China', '中国', 'jiamusi', '佳木斯', '46.730048', '129.904463', 0);
INSERT INTO `cms_city` VALUES ('101050403', 'fuyuan', '抚远', 'heilongjiang', '黑龙江', 'China', '中国', 'jiamusi', '佳木斯', '48.364707', '134.294501', 0);
INSERT INTO `cms_city` VALUES ('101050404', 'huachuan', '桦川', 'heilongjiang', '黑龙江', 'China', '中国', 'jiamusi', '佳木斯', '47.023039', '130.723713', 0);
INSERT INTO `cms_city` VALUES ('101050405', 'huanan', '桦南', 'heilongjiang', '黑龙江', 'China', '中国', 'jiamusi', '佳木斯', '46.240118', '130.570112', 0);
INSERT INTO `cms_city` VALUES ('101050406', 'tongjiang', '同江', 'heilongjiang', '黑龙江', 'China', '中国', 'jiamusi', '佳木斯', '47.651131', '132.510119', 0);
INSERT INTO `cms_city` VALUES ('101050407', 'fujin', '富锦', 'heilongjiang', '黑龙江', 'China', '中国', 'jiamusi', '佳木斯', '47.250747', '132.037951', 0);
INSERT INTO `cms_city` VALUES ('101050408', 'xiangyang', '向阳', 'heilongjiang', '黑龙江', 'China', '中国', 'jiamusi', '佳木斯', '46.809645', '130.361786', 0);
INSERT INTO `cms_city` VALUES ('101050409', 'qianjin', '前进', 'heilongjiang', '黑龙江', 'China', '中国', 'jiamusi', '佳木斯', '46.812345', '130.377684', 0);
INSERT INTO `cms_city` VALUES ('101050410', 'dongfeng', '东风', 'heilongjiang', '黑龙江', 'China', '中国', 'jiamusi', '佳木斯', '46.822476', '130.403297', 0);
INSERT INTO `cms_city` VALUES ('101050411', 'jiaoqu', '郊区', 'heilongjiang', '黑龙江', 'China', '中国', 'jiamusi', '佳木斯', '46.80712', '130.351588', 0);
INSERT INTO `cms_city` VALUES ('101050501', 'suihua', '绥化', 'heilongjiang', '黑龙江', 'China', '中国', 'suihua', '绥化', '46.637393', '126.99293', 0);
INSERT INTO `cms_city` VALUES ('101050502', 'zhaodong', '肇东', 'heilongjiang', '黑龙江', 'China', '中国', 'suihua', '绥化', '46.069471', '125.991402', 0);
INSERT INTO `cms_city` VALUES ('101050503', 'anda', '安达', 'heilongjiang', '黑龙江', 'China', '中国', 'suihua', '绥化', '46.410614', '125.329926', 0);
INSERT INTO `cms_city` VALUES ('101050504', 'hailun', '海伦', 'heilongjiang', '黑龙江', 'China', '中国', 'suihua', '绥化', '47.460428', '126.969383', 0);
INSERT INTO `cms_city` VALUES ('101050505', 'mingshui', '明水', 'heilongjiang', '黑龙江', 'China', '中国', 'suihua', '绥化', '47.183527', '125.907544', 0);
INSERT INTO `cms_city` VALUES ('101050506', 'wangkui', '望奎', 'heilongjiang', '黑龙江', 'China', '中国', 'suihua', '绥化', '46.83352', '126.484191', 0);
INSERT INTO `cms_city` VALUES ('101050507', 'lanxi', '兰西', 'heilongjiang', '黑龙江', 'China', '中国', 'suihua', '绥化', '46.259037', '126.289315', 0);
INSERT INTO `cms_city` VALUES ('101050508', 'qinggang', '青冈', 'heilongjiang', '黑龙江', 'China', '中国', 'suihua', '绥化', '46.686596', '126.112268', 0);
INSERT INTO `cms_city` VALUES ('101050509', 'qingan', '庆安', 'heilongjiang', '黑龙江', 'China', '中国', 'suihua', '绥化', '46.879203', '127.510024', 0);
INSERT INTO `cms_city` VALUES ('101050510', 'suiling', '绥棱', 'heilongjiang', '黑龙江', 'China', '中国', 'suihua', '绥化', '47.247195', '127.111121', 0);
INSERT INTO `cms_city` VALUES ('101050511', 'beilin', '北林', 'heilongjiang', '黑龙江', 'China', '中国', 'suihua', '绥化', '46.634912', '126.990665', 0);
INSERT INTO `cms_city` VALUES ('101050601', 'heihe', '黑河', 'heilongjiang', '黑龙江', 'China', '中国', 'heihe', '黑河', '50.249585', '127.499023', 0);
INSERT INTO `cms_city` VALUES ('101050602', 'nenjiang', '嫩江', 'heilongjiang', '黑龙江', 'China', '中国', 'heihe', '黑河', '49.177461', '125.229904', 0);
INSERT INTO `cms_city` VALUES ('101050603', 'sunwu', '孙吴', 'heilongjiang', '黑龙江', 'China', '中国', 'heihe', '黑河', '49.423941', '127.327315', 0);
INSERT INTO `cms_city` VALUES ('101050604', 'xunke', '逊克', 'heilongjiang', '黑龙江', 'China', '中国', 'heihe', '黑河', '49.582974', '128.476152', 0);
INSERT INTO `cms_city` VALUES ('101050605', 'wudalianchi', '五大连池', 'heilongjiang', '黑龙江', 'China', '中国', 'heihe', '黑河', '48.512688', '126.197694', 0);
INSERT INTO `cms_city` VALUES ('101050606', 'beian', '北安', 'heilongjiang', '黑龙江', 'China', '中国', 'heihe', '黑河', '48.245437', '126.508737', 0);
INSERT INTO `cms_city` VALUES ('101050607', 'aihui', '爱辉', 'heilongjiang', '黑龙江', 'China', '中国', 'heihe', '黑河', '50.249027', '127.497639', 0);
INSERT INTO `cms_city` VALUES ('101050701', 'daxinganling', '大兴安岭', 'heilongjiang', '黑龙江', 'China', '中国', 'daxinganling', '大兴安岭', '52.335262', '124.711526', 0);
INSERT INTO `cms_city` VALUES ('101050702', 'tahe', '塔河', 'heilongjiang', '黑龙江', 'China', '中国', 'daxinganling', '大兴安岭', '52.335229', '124.710516', 0);
INSERT INTO `cms_city` VALUES ('101050703', 'mohe', '漠河', 'heilongjiang', '黑龙江', 'China', '中国', 'daxinganling', '大兴安岭', '52.972074', '122.536256', 0);
INSERT INTO `cms_city` VALUES ('101050704', 'huma', '呼玛', 'heilongjiang', '黑龙江', 'China', '中国', 'daxinganling', '大兴安岭', '51.726998', '126.662105', 0);
INSERT INTO `cms_city` VALUES ('101050801', 'yichun', '伊春', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '47.726851', '128.899284', 0);
INSERT INTO `cms_city` VALUES ('101050802', 'wuyiling', '乌伊岭', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '48.59112', '129.437847', 0);
INSERT INTO `cms_city` VALUES ('101050803', 'wuying', '五营', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '48.108204', '129.245028', 0);
INSERT INTO `cms_city` VALUES ('101050804', 'tieli', '铁力', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '46.985772', '128.030561', 0);
INSERT INTO `cms_city` VALUES ('101050805', 'jiayin', '嘉荫', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '48.891378', '130.397684', 0);
INSERT INTO `cms_city` VALUES ('101050806', 'nancha', '南岔', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '47.137314', '129.28246', 0);
INSERT INTO `cms_city` VALUES ('101050807', 'youhao', '友好', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '47.854303', '128.838961', 0);
INSERT INTO `cms_city` VALUES ('101050808', 'xilin', '西林', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '47.479437', '129.311441', 0);
INSERT INTO `cms_city` VALUES ('101050809', 'cuiluan', '翠峦', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '47.726228', '128.671746', 0);
INSERT INTO `cms_city` VALUES ('101050810', 'xinqing', '新青', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '48.288292', '129.52995', 0);
INSERT INTO `cms_city` VALUES ('101050811', 'meixi', '美溪', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '47.636102', '129.133411', 0);
INSERT INTO `cms_city` VALUES ('101050812', 'jinshantun', '金山屯', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '47.41295', '129.435944', 0);
INSERT INTO `cms_city` VALUES ('101050813', 'wumahe', '乌马河', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '47.726961', '128.802941', 0);
INSERT INTO `cms_city` VALUES ('101050814', 'tangwanghe', '汤旺河', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '48.453651', '129.57224', 0);
INSERT INTO `cms_city` VALUES ('101050815', 'dailing', '带岭', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '47.027532', '129.021151', 0);
INSERT INTO `cms_city` VALUES ('101050816', 'hongxing', '红星', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '48.238368', '129.388796', 0);
INSERT INTO `cms_city` VALUES ('101050817', 'shangganling', '上甘岭', 'heilongjiang', '黑龙江', 'China', '中国', 'yichun', '伊春', '47.974859', '129.02508', 0);
INSERT INTO `cms_city` VALUES ('101050901', 'daqing', '大庆', 'heilongjiang', '黑龙江', 'China', '中国', 'daqing', '大庆', '46.590734', '125.11272', 0);
INSERT INTO `cms_city` VALUES ('101050902', 'lindian', '林甸', 'heilongjiang', '黑龙江', 'China', '中国', 'daqing', '大庆', '47.186411', '124.877742', 0);
INSERT INTO `cms_city` VALUES ('101050903', 'zhaozhou', '肇州', 'heilongjiang', '黑龙江', 'China', '中国', 'daqing', '大庆', '45.708685', '125.273254', 0);
INSERT INTO `cms_city` VALUES ('101050904', 'zhaoyuan', '肇源', 'heilongjiang', '黑龙江', 'China', '中国', 'daqing', '大庆', '45.518832', '125.081974', 0);
INSERT INTO `cms_city` VALUES ('101050905', 'duerbote', '杜尔伯特', 'heilongjiang', '黑龙江', 'China', '中国', 'daqing', '大庆', '46.865973', '124.446259', 0);
INSERT INTO `cms_city` VALUES ('101050906', 'saertu', '萨尔图', 'heilongjiang', '黑龙江', 'China', '中国', 'daqing', '大庆', '46.596356', '125.114643', 0);
INSERT INTO `cms_city` VALUES ('101050907', 'longfeng', '龙凤', 'heilongjiang', '黑龙江', 'China', '中国', 'daqing', '大庆', '46.573948', '125.145794', 0);
INSERT INTO `cms_city` VALUES ('101050908', 'ranghulu', '让胡路', 'heilongjiang', '黑龙江', 'China', '中国', 'daqing', '大庆', '46.653254', '124.868341', 0);
INSERT INTO `cms_city` VALUES ('101050909', 'honggang', '红岗', 'heilongjiang', '黑龙江', 'China', '中国', 'daqing', '大庆', '46.403049', '124.889528', 0);
INSERT INTO `cms_city` VALUES ('101050910', 'datong', '大同', 'heilongjiang', '黑龙江', 'China', '中国', 'daqing', '大庆', '46.034304', '124.818509', 0);
INSERT INTO `cms_city` VALUES ('101051001', 'xinxing', '新兴', 'heilongjiang', '黑龙江', 'China', '中国', 'qitaihe', '七台河', '45.794258', '130.889482', 0);
INSERT INTO `cms_city` VALUES ('101051002', 'qitaihe', '七台河', 'heilongjiang', '黑龙江', 'China', '中国', 'qitaihe', '七台河', '45.771266', '131.015584', 0);
INSERT INTO `cms_city` VALUES ('101051003', 'boli', '勃利', 'heilongjiang', '黑龙江', 'China', '中国', 'qitaihe', '七台河', '45.751573', '130.575025', 0);
INSERT INTO `cms_city` VALUES ('101051004', 'taoshan', '桃山', 'heilongjiang', '黑龙江', 'China', '中国', 'qitaihe', '七台河', '45.771217', '131.015848', 0);
INSERT INTO `cms_city` VALUES ('101051005', 'qiezihe', '茄子河', 'heilongjiang', '黑龙江', 'China', '中国', 'qitaihe', '七台河', '45.776587', '131.071561', 0);
INSERT INTO `cms_city` VALUES ('101051101', 'jixi', '鸡西', 'heilongjiang', '黑龙江', 'China', '中国', 'jixi', '鸡西', '45.300046', '130.975966', 0);
INSERT INTO `cms_city` VALUES ('101051102', 'hulin', '虎林', 'heilongjiang', '黑龙江', 'China', '中国', 'jixi', '鸡西', '45.767985', '132.973881', 0);
INSERT INTO `cms_city` VALUES ('101051103', 'mishan', '密山', 'heilongjiang', '黑龙江', 'China', '中国', 'jixi', '鸡西', '45.54725', '131.874137', 0);
INSERT INTO `cms_city` VALUES ('101051104', 'jidong', '鸡东', 'heilongjiang', '黑龙江', 'China', '中国', 'jixi', '鸡西', '45.250892', '131.148907', 0);
INSERT INTO `cms_city` VALUES ('101051105', 'jiguan', '鸡冠', 'heilongjiang', '黑龙江', 'China', '中国', 'jixi', '鸡西', '45.30034', '130.974374', 0);
INSERT INTO `cms_city` VALUES ('101051106', 'hengshan', '恒山', 'heilongjiang', '黑龙江', 'China', '中国', 'jixi', '鸡西', '45.213242', '130.910636', 0);
INSERT INTO `cms_city` VALUES ('101051107', 'didao', '滴道', 'heilongjiang', '黑龙江', 'China', '中国', 'jixi', '鸡西', '45.348812', '130.846823', 0);
INSERT INTO `cms_city` VALUES ('101051108', 'lishu', '梨树', 'heilongjiang', '黑龙江', 'China', '中国', 'jixi', '鸡西', '45.092195', '130.697781', 0);
INSERT INTO `cms_city` VALUES ('101051109', 'chengzihe', '城子河', 'heilongjiang', '黑龙江', 'China', '中国', 'jixi', '鸡西', '45.338248', '131.010501', 0);
INSERT INTO `cms_city` VALUES ('101051110', 'mashan', '麻山', 'heilongjiang', '黑龙江', 'China', '中国', 'jixi', '鸡西', '45.209607', '130.481126', 0);
INSERT INTO `cms_city` VALUES ('101051201', 'hegang', '鹤岗', 'heilongjiang', '黑龙江', 'China', '中国', 'hegang', '鹤岗', '47.332085', '130.277487', 0);
INSERT INTO `cms_city` VALUES ('101051202', 'suibin', '绥滨', 'heilongjiang', '黑龙江', 'China', '中国', 'hegang', '鹤岗', '47.289892', '131.860526', 0);
INSERT INTO `cms_city` VALUES ('101051203', 'luobei', '萝北', 'heilongjiang', '黑龙江', 'China', '中国', 'hegang', '鹤岗', '47.577577', '130.829087', 0);
INSERT INTO `cms_city` VALUES ('101051204', 'xiangyang', '向阳', 'heilongjiang', '黑龙江', 'China', '中国', 'hegang', '鹤岗', '47.345372', '130.292478', 0);
INSERT INTO `cms_city` VALUES ('101051205', 'gongnong', '工农', 'heilongjiang', '黑龙江', 'China', '中国', 'hegang', '鹤岗', '47.331678', '130.276652', 0);
INSERT INTO `cms_city` VALUES ('101051206', 'nanshan', '南山', 'heilongjiang', '黑龙江', 'China', '中国', 'hegang', '鹤岗', '47.31324', '130.275533', 0);
INSERT INTO `cms_city` VALUES ('101051207', 'xingan', '兴安', 'heilongjiang', '黑龙江', 'China', '中国', 'hegang', '鹤岗', '47.252911', '130.236169', 0);
INSERT INTO `cms_city` VALUES ('101051208', 'dongshan', '东山', 'heilongjiang', '黑龙江', 'China', '中国', 'hegang', '鹤岗', '47.337385', '130.31714', 0);
INSERT INTO `cms_city` VALUES ('101051209', 'xingshan', '兴山', 'heilongjiang', '黑龙江', 'China', '中国', 'hegang', '鹤岗', '47.35997', '130.30534', 0);
INSERT INTO `cms_city` VALUES ('101051301', 'shuangyashan', '双鸭山', 'heilongjiang', '黑龙江', 'China', '中国', 'shuangyashan', '双鸭山', '46.643442', '131.157304', 0);
INSERT INTO `cms_city` VALUES ('101051302', 'jixian', '集贤', 'heilongjiang', '黑龙江', 'China', '中国', 'shuangyashan', '双鸭山', '46.72898', '131.13933', 0);
INSERT INTO `cms_city` VALUES ('101051303', 'baoqing', '宝清', 'heilongjiang', '黑龙江', 'China', '中国', 'shuangyashan', '双鸭山', '46.328781', '132.206415', 0);
INSERT INTO `cms_city` VALUES ('101051304', 'raohe', '饶河', 'heilongjiang', '黑龙江', 'China', '中国', 'shuangyashan', '双鸭山', '46.801288', '134.021162', 0);
INSERT INTO `cms_city` VALUES ('101051305', 'youyi', '友谊', 'heilongjiang', '黑龙江', 'China', '中国', 'shuangyashan', '双鸭山', '46.775159', '131.810622', 0);
INSERT INTO `cms_city` VALUES ('101051306', 'jianshan', '尖山', 'heilongjiang', '黑龙江', 'China', '中国', 'shuangyashan', '双鸭山', '46.642961', '131.15896', 0);
INSERT INTO `cms_city` VALUES ('101051307', 'lingdong', '岭东', 'heilongjiang', '黑龙江', 'China', '中国', 'shuangyashan', '双鸭山', '46.591076', '131.163675', 0);
INSERT INTO `cms_city` VALUES ('101051308', 'sifangtai', '四方台', 'heilongjiang', '黑龙江', 'China', '中国', 'shuangyashan', '双鸭山', '46.594347', '131.333181', 0);
INSERT INTO `cms_city` VALUES ('101051309', 'baoshan', '宝山', 'heilongjiang', '黑龙江', 'China', '中国', 'shuangyashan', '双鸭山', '46.573366', '131.404294', 0);
INSERT INTO `cms_city` VALUES ('101060101', 'changchun', '长春', 'jilin', '吉林', 'China', '中国', 'changchun', '长春', '43.886841', '125.3245', 0);
INSERT INTO `cms_city` VALUES ('101060102', 'nongan', '农安', 'jilin', '吉林', 'China', '中国', 'changchun', '长春', '44.431258', '125.175287', 0);
INSERT INTO `cms_city` VALUES ('101060103', 'dehui', '德惠', 'jilin', '吉林', 'China', '中国', 'changchun', '长春', '44.533909', '125.703327', 0);
INSERT INTO `cms_city` VALUES ('101060104', 'jiutai', '九台', 'jilin', '吉林', 'China', '中国', 'changchun', '长春', '44.157155', '125.844682', 0);
INSERT INTO `cms_city` VALUES ('101060105', 'yushu', '榆树', 'jilin', '吉林', 'China', '中国', 'changchun', '长春', '44.827642', '126.550107', 0);
INSERT INTO `cms_city` VALUES ('101060106', 'shuangyang', '双阳', 'jilin', '吉林', 'China', '中国', 'changchun', '长春', '43.525168', '125.659018', 0);
INSERT INTO `cms_city` VALUES ('101060107', 'erdao', '二道', 'jilin', '吉林', 'China', '中国', 'changchun', '长春', '43.870824', '125.384727', 0);
INSERT INTO `cms_city` VALUES ('101060108', 'nanguan', '南关', 'jilin', '吉林', 'China', '中国', 'changchun', '长春', '43.890235', '125.337237', 0);
INSERT INTO `cms_city` VALUES ('101060109', 'kuancheng', '宽城', 'jilin', '吉林', 'China', '中国', 'changchun', '长春', '43.903823', '125.342828', 0);
INSERT INTO `cms_city` VALUES ('101060110', 'chaoyang', '朝阳', 'jilin', '吉林', 'China', '中国', 'changchun', '长春', '43.86491', '125.318042', 0);
INSERT INTO `cms_city` VALUES ('101060111', 'lvyuan', '绿园', 'jilin', '吉林', 'China', '中国', 'changchun', '长春', '43.892177', '125.272467', 0);
INSERT INTO `cms_city` VALUES ('101060201', 'jilin', '吉林', 'jilin', '吉林', 'China', '中国', 'jilin', '吉林', '43.843577', '126.55302', 0);
INSERT INTO `cms_city` VALUES ('101060202', 'shulan', '舒兰', 'jilin', '吉林', 'China', '中国', 'jilin', '吉林', '44.410906', '126.947813', 0);
INSERT INTO `cms_city` VALUES ('101060203', 'yongji', '永吉', 'jilin', '吉林', 'China', '中国', 'jilin', '吉林', '43.667416', '126.501622', 0);
INSERT INTO `cms_city` VALUES ('101060204', 'jiaohe', '蛟河', 'jilin', '吉林', 'China', '中国', 'jilin', '吉林', '43.720579', '127.342739', 0);
INSERT INTO `cms_city` VALUES ('101060205', 'panshi', '磐石', 'jilin', '吉林', 'China', '中国', 'jilin', '吉林', '42.942476', '126.059929', 0);
INSERT INTO `cms_city` VALUES ('101060206', 'huadian', '桦甸', 'jilin', '吉林', 'China', '中国', 'jilin', '吉林', '42.972093', '126.745445', 0);
INSERT INTO `cms_city` VALUES ('101060207', 'changyi', '昌邑', 'jilin', '吉林', 'China', '中国', 'jilin', '吉林', '43.851118', '126.570766', 0);
INSERT INTO `cms_city` VALUES ('101060208', 'longtan', '龙潭', 'jilin', '吉林', 'China', '中国', 'jilin', '吉林', '43.909755', '126.561429', 0);
INSERT INTO `cms_city` VALUES ('101060209', 'chuanying', '船营', 'jilin', '吉林', 'China', '中国', 'jilin', '吉林', '43.843804', '126.55239', 0);
INSERT INTO `cms_city` VALUES ('101060210', 'fengman', '丰满', 'jilin', '吉林', 'China', '中国', 'jilin', '吉林', '43.816594', '126.560759', 0);
INSERT INTO `cms_city` VALUES ('101060301', 'yanji', '延吉', 'jilin', '吉林', 'China', '中国', 'yanbian', '延边', '42.906964', '129.51579', 0);
INSERT INTO `cms_city` VALUES ('101060302', 'dunhua', '敦化', 'jilin', '吉林', 'China', '中国', 'yanbian', '延边', '43.366921', '128.22986', 0);
INSERT INTO `cms_city` VALUES ('101060303', 'antu', '安图', 'jilin', '吉林', 'China', '中国', 'yanbian', '延边', '43.110994', '128.901865', 0);
INSERT INTO `cms_city` VALUES ('101060304', 'wangqing', '汪清', 'jilin', '吉林', 'China', '中国', 'yanbian', '延边', '43.315426', '129.766161', 0);
INSERT INTO `cms_city` VALUES ('101060305', 'helong', '和龙', 'jilin', '吉林', 'China', '中国', 'yanbian', '延边', '42.547004', '129.008748', 0);
INSERT INTO `cms_city` VALUES ('101060306', 'yanbian', '延边', 'jilin', '吉林', 'China', '中国', 'yanbian', '延边', '42.904823', '129.513228', 0);
INSERT INTO `cms_city` VALUES ('101060307', 'longjing', '龙井', 'jilin', '吉林', 'China', '中国', 'yanbian', '延边', '42.771029', '129.425747', 0);
INSERT INTO `cms_city` VALUES ('101060308', 'hunchun', '珲春', 'jilin', '吉林', 'China', '中国', 'yanbian', '延边', '42.871057', '130.365787', 0);
INSERT INTO `cms_city` VALUES ('101060309', 'tumen', '图们', 'jilin', '吉林', 'China', '中国', 'yanbian', '延边', '42.966621', '129.846701', 0);
INSERT INTO `cms_city` VALUES ('101060401', 'siping', '四平', 'jilin', '吉林', 'China', '中国', 'siping', '四平', '43.170344', '124.370785', 0);
INSERT INTO `cms_city` VALUES ('101060402', 'shuangliao', '双辽', 'jilin', '吉林', 'China', '中国', 'siping', '四平', '43.518275', '123.505283', 0);
INSERT INTO `cms_city` VALUES ('101060403', 'lishu', '梨树', 'jilin', '吉林', 'China', '中国', 'siping', '四平', '43.30831', '124.335802', 0);
INSERT INTO `cms_city` VALUES ('101060404', 'gongzhuling', '公主岭', 'jilin', '吉林', 'China', '中国', 'siping', '四平', '43.509474', '124.817588', 0);
INSERT INTO `cms_city` VALUES ('101060405', 'yitong', '伊通', 'jilin', '吉林', 'China', '中国', 'siping', '四平', '43.345464', '125.303124', 0);
INSERT INTO `cms_city` VALUES ('101060406', 'tiexi', '铁西', 'jilin', '吉林', 'China', '中国', 'siping', '四平', '43.176263', '124.360894', 0);
INSERT INTO `cms_city` VALUES ('101060407', 'tiedong', '铁东', 'jilin', '吉林', 'China', '中国', 'siping', '四平', '43.16726', '124.388464', 0);
INSERT INTO `cms_city` VALUES ('101060501', 'tonghua', '通化', 'jilin', '吉林', 'China', '中国', 'tonghua', '通化', '41.721177', '125.936501', 0);
INSERT INTO `cms_city` VALUES ('101060502', 'meihekou', '梅河口', 'jilin', '吉林', 'China', '中国', 'tonghua', '通化', '42.530002', '125.687336', 0);
INSERT INTO `cms_city` VALUES ('101060503', 'liuhe', '柳河', 'jilin', '吉林', 'China', '中国', 'tonghua', '通化', '42.281484', '125.740536', 0);
INSERT INTO `cms_city` VALUES ('101060504', 'huinan', '辉南', 'jilin', '吉林', 'China', '中国', 'tonghua', '通化', '42.683459', '126.042821', 0);
INSERT INTO `cms_city` VALUES ('101060505', 'jian', '集安', 'jilin', '吉林', 'China', '中国', 'tonghua', '通化', '41.126276', '126.186204', 0);
INSERT INTO `cms_city` VALUES ('101060506', 'tonghuaxian', '通化县', 'jilin', '吉林', 'China', '中国', 'tonghua', '通化', '41.677918', '125.753121', 0);
INSERT INTO `cms_city` VALUES ('101060507', 'dongchang', '东昌', 'jilin', '吉林', 'China', '中国', 'tonghua', '通化', '41.721233', '125.936716', 0);
INSERT INTO `cms_city` VALUES ('101060508', 'erdaojiang', '二道江', 'jilin', '吉林', 'China', '中国', 'tonghua', '通化', '41.777564', '126.045987', 0);
INSERT INTO `cms_city` VALUES ('101060601', 'baicheng', '白城', 'jilin', '吉林', 'China', '中国', 'baicheng', '白城', '45.619026', '122.841114', 0);
INSERT INTO `cms_city` VALUES ('101060602', 'taonan', '洮南', 'jilin', '吉林', 'China', '中国', 'baicheng', '白城', '45.339113', '122.783779', 0);
INSERT INTO `cms_city` VALUES ('101060603', 'daan', '大安', 'jilin', '吉林', 'China', '中国', 'baicheng', '白城', '45.507648', '124.291512', 0);
INSERT INTO `cms_city` VALUES ('101060604', 'zhenlai', '镇赉', 'jilin', '吉林', 'China', '中国', 'baicheng', '白城', '45.846089', '123.202246', 0);
INSERT INTO `cms_city` VALUES ('101060605', 'tongyu', '通榆', 'jilin', '吉林', 'China', '中国', 'baicheng', '白城', '44.80915', '123.088543', 0);
INSERT INTO `cms_city` VALUES ('101060606', 'taobei', '洮北', 'jilin', '吉林', 'China', '中国', 'baicheng', '白城', '45.619253', '122.842499', 0);
INSERT INTO `cms_city` VALUES ('101060701', 'liaoyuan', '辽源', 'jilin', '吉林', 'China', '中国', 'liaoyuan', '辽源', '42.902692', '125.145349', 0);
INSERT INTO `cms_city` VALUES ('101060702', 'dongfeng', '东丰', 'jilin', '吉林', 'China', '中国', 'liaoyuan', '辽源', '42.675228', '125.529623', 0);
INSERT INTO `cms_city` VALUES ('101060703', 'dongliao', '东辽', 'jilin', '吉林', 'China', '中国', 'liaoyuan', '辽源', '42.927724', '124.991995', 0);
INSERT INTO `cms_city` VALUES ('101060704', 'longshan', '龙山', 'jilin', '吉林', 'China', '中国', 'liaoyuan', '辽源', '42.902702', '125.145164', 0);
INSERT INTO `cms_city` VALUES ('101060705', 'xian', '西安', 'jilin', '吉林', 'China', '中国', 'liaoyuan', '辽源', '42.920415', '125.151424', 0);
INSERT INTO `cms_city` VALUES ('101060801', 'songyuan', '松原', 'jilin', '吉林', 'China', '中国', 'songyuan', '松原', '45.118243', '124.823608', 0);
INSERT INTO `cms_city` VALUES ('101060802', 'qianan', '乾安', 'jilin', '吉林', 'China', '中国', 'songyuan', '松原', '45.006846', '124.024361', 0);
INSERT INTO `cms_city` VALUES ('101060803', 'qianguo', '前郭', 'jilin', '吉林', 'China', '中国', 'songyuan', '松原', '45.116288', '124.826808', 0);
INSERT INTO `cms_city` VALUES ('101060804', 'changling', '长岭', 'jilin', '吉林', 'China', '中国', 'songyuan', '松原', '44.276579', '123.985184', 0);
INSERT INTO `cms_city` VALUES ('101060805', 'fuyu', '扶余', 'jilin', '吉林', 'China', '中国', 'songyuan', '松原', '44.986199', '126.042758', 0);
INSERT INTO `cms_city` VALUES ('101060806', 'ningjiang', '宁江', 'jilin', '吉林', 'China', '中国', 'songyuan', '松原', '45.176498', '124.827851', 0);
INSERT INTO `cms_city` VALUES ('101060901', 'baishan', '白山', 'jilin', '吉林', 'China', '中国', 'baishan', '白山', '41.942505', '126.427839', 0);
INSERT INTO `cms_city` VALUES ('101060902', 'jingyu', '靖宇', 'jilin', '吉林', 'China', '中国', 'baishan', '白山', '42.389689', '126.808386', 0);
INSERT INTO `cms_city` VALUES ('101060903', 'linjiang', '临江', 'jilin', '吉林', 'China', '中国', 'baishan', '白山', '41.810689', '126.919296', 0);
INSERT INTO `cms_city` VALUES ('101060905', 'changbai', '长白', 'jilin', '吉林', 'China', '中国', 'baishan', '白山', '41.419361', '128.203384', 0);
INSERT INTO `cms_city` VALUES ('101060906', 'fusong', '抚松', 'jilin', '吉林', 'China', '中国', 'baishan', '白山', '42.332643', '127.273796', 0);
INSERT INTO `cms_city` VALUES ('101060907', 'jiangyuan', '江源', 'jilin', '吉林', 'China', '中国', 'baishan', '白山', '42.048109', '126.584229', 0);
INSERT INTO `cms_city` VALUES ('101060908', 'hunjiang', '浑江', 'jilin', '吉林', 'China', '中国', 'baishan', '白山', '41.943065', '126.428035', 0);
INSERT INTO `cms_city` VALUES ('101070101', 'shenyang', '沈阳', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.796767', '123.429096', 0);
INSERT INTO `cms_city` VALUES ('101070102', 'hunnan', '浑南', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.741946', '123.458981', 0);
INSERT INTO `cms_city` VALUES ('101070103', 'liaozhong', '辽中', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.512725', '122.731269', 0);
INSERT INTO `cms_city` VALUES ('101070104', 'kangping', '康平', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '42.741533', '123.352703', 0);
INSERT INTO `cms_city` VALUES ('101070105', 'faku', '法库', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '42.507045', '123.416722', 0);
INSERT INTO `cms_city` VALUES ('101070106', 'xinmin', '新民', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.996508', '122.828868', 0);
INSERT INTO `cms_city` VALUES ('101070107', 'heping', '和平', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.788074', '123.406664', 0);
INSERT INTO `cms_city` VALUES ('101070108', 'shenhe', '沈河', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.795591', '123.445696', 0);
INSERT INTO `cms_city` VALUES ('101070109', 'dadong', '大东', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.808503', '123.469956', 0);
INSERT INTO `cms_city` VALUES ('101070110', 'huanggu', '皇姑', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.822336', '123.405677', 0);
INSERT INTO `cms_city` VALUES ('101070111', 'tiexi', '铁西', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.787808', '123.350664', 0);
INSERT INTO `cms_city` VALUES ('101070112', 'sujiatun', '苏家屯', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.665904', '123.341604', 0);
INSERT INTO `cms_city` VALUES ('101070113', 'shenbeixinqu', '沈北新区', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '42.052312', '123.521471', 0);
INSERT INTO `cms_city` VALUES ('101070114', 'yuhong', '于洪', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.795833', '123.310829', 0);
INSERT INTO `cms_city` VALUES ('101070115', 'dongling', '东陵', 'liaoning', '辽宁', 'China', '中国', 'shenyang', '沈阳', '41.741946', '123.458981', 0);
INSERT INTO `cms_city` VALUES ('101070201', 'dalian', '大连', 'liaoning', '辽宁', 'China', '中国', 'dalian', '大连', '38.91459', '121.618622', 0);
INSERT INTO `cms_city` VALUES ('101070202', 'wafangdian', '瓦房店', 'liaoning', '辽宁', 'China', '中国', 'dalian', '大连', '39.63065', '122.002656', 0);
INSERT INTO `cms_city` VALUES ('101070203', 'jinzhou', '金州', 'liaoning', '辽宁', 'China', '中国', 'dalian', '大连', '39.052745', '121.789413', 0);
INSERT INTO `cms_city` VALUES ('101070204', 'pulandian', '普兰店', 'liaoning', '辽宁', 'China', '中国', 'dalian', '大连', '39.401555', '121.9705', 0);
INSERT INTO `cms_city` VALUES ('101070205', 'lvshun', '旅顺', 'liaoning', '辽宁', 'China', '中国', 'dalian', '大连', '38.812043', '121.26713', 0);
INSERT INTO `cms_city` VALUES ('101070206', 'changhai', '长海', 'liaoning', '辽宁', 'China', '中国', 'dalian', '大连', '39.272399', '122.587824', 0);
INSERT INTO `cms_city` VALUES ('101070207', 'zhuanghe', '庄河', 'liaoning', '辽宁', 'China', '中国', 'dalian', '大连', '39.69829', '122.970612', 0);
INSERT INTO `cms_city` VALUES ('101070208', 'zhongshan', '中山', 'liaoning', '辽宁', 'China', '中国', 'dalian', '大连', '38.921553', '121.64376', 0);
INSERT INTO `cms_city` VALUES ('101070209', 'xigang', '西岗', 'liaoning', '辽宁', 'China', '中国', 'dalian', '大连', '38.914266', '121.616112', 0);
INSERT INTO `cms_city` VALUES ('101070210', 'shahekou', '沙河口', 'liaoning', '辽宁', 'China', '中国', 'dalian', '大连', '38.912859', '121.593702', 0);
INSERT INTO `cms_city` VALUES ('101070211', 'ganjingzi', '甘井子', 'liaoning', '辽宁', 'China', '中国', 'dalian', '大连', '38.975148', '121.582614', 0);
INSERT INTO `cms_city` VALUES ('101070301', 'anshan', '鞍山', 'liaoning', '辽宁', 'China', '中国', 'anshan', '鞍山', '41.110626', '122.995632', 0);
INSERT INTO `cms_city` VALUES ('101070302', 'taian', '台安', 'liaoning', '辽宁', 'China', '中国', 'anshan', '鞍山', '41.38686', '122.429736', 0);
INSERT INTO `cms_city` VALUES ('101070303', 'xiuyan', '岫岩', 'liaoning', '辽宁', 'China', '中国', 'anshan', '鞍山', '40.281509', '123.28833', 0);
INSERT INTO `cms_city` VALUES ('101070304', 'haicheng', '海城', 'liaoning', '辽宁', 'China', '中国', 'anshan', '鞍山', '40.852533', '122.752199', 0);
INSERT INTO `cms_city` VALUES ('101070305', 'tiedong', '铁东', 'liaoning', '辽宁', 'China', '中国', 'anshan', '鞍山', '41.110344', '122.994475', 0);
INSERT INTO `cms_city` VALUES ('101070306', 'tiexi', '铁西', 'liaoning', '辽宁', 'China', '中国', 'anshan', '鞍山', '41.11069', '122.971834', 0);
INSERT INTO `cms_city` VALUES ('101070307', 'lishan', '立山', 'liaoning', '辽宁', 'China', '中国', 'anshan', '鞍山', '41.150622', '123.024806', 0);
INSERT INTO `cms_city` VALUES ('101070308', 'qianshan', '千山', 'liaoning', '辽宁', 'China', '中国', 'anshan', '鞍山', '41.068909', '122.949298', 0);
INSERT INTO `cms_city` VALUES ('101070401', 'fushun', '抚顺', 'liaoning', '辽宁', 'China', '中国', 'fushun', '抚顺', '41.922644', '124.097979', 0);
INSERT INTO `cms_city` VALUES ('101070402', 'xinbin', '新宾', 'liaoning', '辽宁', 'China', '中国', 'fushun', '抚顺', '41.732456', '125.037547', 0);
INSERT INTO `cms_city` VALUES ('101070403', 'qingyuan', '清原', 'liaoning', '辽宁', 'China', '中国', 'fushun', '抚顺', '42.10135', '124.927192', 0);
INSERT INTO `cms_city` VALUES ('101070405', 'xinfu', '新抚', 'liaoning', '辽宁', 'China', '中国', 'fushun', '抚顺', '41.86082', '123.902858', 0);
INSERT INTO `cms_city` VALUES ('101070406', 'dongzhou', '东洲', 'liaoning', '辽宁', 'China', '中国', 'fushun', '抚顺', '41.866829', '124.047219', 0);
INSERT INTO `cms_city` VALUES ('101070407', 'wanghua', '望花', 'liaoning', '辽宁', 'China', '中国', 'fushun', '抚顺', '41.851803', '123.801509', 0);
INSERT INTO `cms_city` VALUES ('101070408', 'shuncheng', '顺城', 'liaoning', '辽宁', 'China', '中国', 'fushun', '抚顺', '41.881132', '123.917165', 0);
INSERT INTO `cms_city` VALUES ('101070501', 'benxi', '本溪', 'liaoning', '辽宁', 'China', '中国', 'benxi', '本溪', '41.297909', '123.770519', 0);
INSERT INTO `cms_city` VALUES ('101070502', 'benxixian', '本溪县', 'liaoning', '辽宁', 'China', '中国', 'benxi', '本溪', '41.18', '124.17', 0);
INSERT INTO `cms_city` VALUES ('101070503', 'pingshan', '平山', 'liaoning', '辽宁', 'China', '中国', 'benxi', '本溪', '41.291581', '123.761231', 0);
INSERT INTO `cms_city` VALUES ('101070504', 'huanren', '桓仁', 'liaoning', '辽宁', 'China', '中国', 'benxi', '本溪', '41.268997', '125.359195', 0);
INSERT INTO `cms_city` VALUES ('101070505', 'xihu', '溪湖', 'liaoning', '辽宁', 'China', '中国', 'benxi', '本溪', '41.330056', '123.765226', 0);
INSERT INTO `cms_city` VALUES ('101070506', 'mingshan', '明山', 'liaoning', '辽宁', 'China', '中国', 'benxi', '本溪', '41.302429', '123.763288', 0);
INSERT INTO `cms_city` VALUES ('101070507', 'nanfen', '南芬', 'liaoning', '辽宁', 'China', '中国', 'benxi', '本溪', '41.104093', '123.748381', 0);
INSERT INTO `cms_city` VALUES ('101070601', 'dandong', '丹东', 'liaoning', '辽宁', 'China', '中国', 'dandong', '丹东', '40.124296', '124.383044', 0);
INSERT INTO `cms_city` VALUES ('101070602', 'fengcheng', '凤城', 'liaoning', '辽宁', 'China', '中国', 'dandong', '丹东', '40.457567', '124.071067', 0);
INSERT INTO `cms_city` VALUES ('101070603', 'kuandian', '宽甸', 'liaoning', '辽宁', 'China', '中国', 'dandong', '丹东', '40.730412', '124.784867', 0);
INSERT INTO `cms_city` VALUES ('101070604', 'donggang', '东港', 'liaoning', '辽宁', 'China', '中国', 'dandong', '丹东', '39.883467', '124.149437', 0);
INSERT INTO `cms_city` VALUES ('101070605', 'yuanbao', '元宝', 'liaoning', '辽宁', 'China', '中国', 'dandong', '丹东', '40.136483', '124.397814', 0);
INSERT INTO `cms_city` VALUES ('101070606', 'zhenxing', '振兴', 'liaoning', '辽宁', 'China', '中国', 'dandong', '丹东', '40.102801', '124.361153', 0);
INSERT INTO `cms_city` VALUES ('101070607', 'zhenan', '振安', 'liaoning', '辽宁', 'China', '中国', 'dandong', '丹东', '40.158557', '124.427709', 0);
INSERT INTO `cms_city` VALUES ('101070701', 'jinzhou', '锦州', 'liaoning', '辽宁', 'China', '中国', 'jinzhou', '锦州', '41.119269', '121.135742', 0);
INSERT INTO `cms_city` VALUES ('101070702', 'linghai', '凌海', 'liaoning', '辽宁', 'China', '中国', 'jinzhou', '锦州', '41.171738', '121.364236', 0);
INSERT INTO `cms_city` VALUES ('101070703', 'guta', '古塔', 'liaoning', '辽宁', 'China', '中国', 'jinzhou', '锦州', '41.115719', '121.130085', 0);
INSERT INTO `cms_city` VALUES ('101070704', 'yixian', '义县', 'liaoning', '辽宁', 'China', '中国', 'jinzhou', '锦州', '41.537224', '121.242831', 0);
INSERT INTO `cms_city` VALUES ('101070705', 'heishan', '黑山', 'liaoning', '辽宁', 'China', '中国', 'jinzhou', '锦州', '41.691804', '122.117915', 0);
INSERT INTO `cms_city` VALUES ('101070706', 'beizhen', '北镇', 'liaoning', '辽宁', 'China', '中国', 'jinzhou', '锦州', '41.598764', '121.795962', 0);
INSERT INTO `cms_city` VALUES ('101070707', 'linghe', '凌河', 'liaoning', '辽宁', 'China', '中国', 'jinzhou', '锦州', '41.114662', '121.151304', 0);
INSERT INTO `cms_city` VALUES ('101070708', 'taihe', '太和', 'liaoning', '辽宁', 'China', '中国', 'jinzhou', '锦州', '41.105378', '121.107297', 0);
INSERT INTO `cms_city` VALUES ('101070801', 'yingkou', '营口', 'liaoning', '辽宁', 'China', '中国', 'yingkou', '营口', '40.667432', '122.235151', 0);
INSERT INTO `cms_city` VALUES ('101070802', 'dashiqiao', '大石桥', 'liaoning', '辽宁', 'China', '中国', 'yingkou', '营口', '40.633973', '122.505894', 0);
INSERT INTO `cms_city` VALUES ('101070803', 'gaizhou', '盖州', 'liaoning', '辽宁', 'China', '中国', 'yingkou', '营口', '40.405234', '122.355534', 0);
INSERT INTO `cms_city` VALUES ('101070804', 'zhanqian', '站前', 'liaoning', '辽宁', 'China', '中国', 'yingkou', '营口', '40.669949', '122.253235', 0);
INSERT INTO `cms_city` VALUES ('101070805', 'xishi', '西市', 'liaoning', '辽宁', 'China', '中国', 'yingkou', '营口', '40.663086', '122.210067', 0);
INSERT INTO `cms_city` VALUES ('101070806', 'bayuquan', '鲅鱼圈', 'liaoning', '辽宁', 'China', '中国', 'yingkou', '营口', '40.263646', '122.127242', 0);
INSERT INTO `cms_city` VALUES ('101070807', 'laobian', '老边', 'liaoning', '辽宁', 'China', '中国', 'yingkou', '营口', '40.682723', '122.382584', 0);
INSERT INTO `cms_city` VALUES ('101070901', 'fuxin', '阜新', 'liaoning', '辽宁', 'China', '中国', 'fuxin', '阜新', '42.058607', '121.743125', 0);
INSERT INTO `cms_city` VALUES ('101070902', 'zhangwu', '彰武', 'liaoning', '辽宁', 'China', '中国', 'fuxin', '阜新', '42.384823', '122.537444', 0);
INSERT INTO `cms_city` VALUES ('101070903', 'haizhou', '海州', 'liaoning', '辽宁', 'China', '中国', 'fuxin', '阜新', '42.011162', '121.657639', 0);
INSERT INTO `cms_city` VALUES ('101070904', 'xinqiu', '新邱', 'liaoning', '辽宁', 'China', '中国', 'fuxin', '阜新', '42.086603', '121.790541', 0);
INSERT INTO `cms_city` VALUES ('101070905', 'taiping', '太平', 'liaoning', '辽宁', 'China', '中国', 'fuxin', '阜新', '42.011145', '121.677575', 0);
INSERT INTO `cms_city` VALUES ('101070906', 'qinghemen', '清河门', 'liaoning', '辽宁', 'China', '中国', 'fuxin', '阜新', '41.780477', '121.42018', 0);
INSERT INTO `cms_city` VALUES ('101070907', 'xihe', '细河', 'liaoning', '辽宁', 'China', '中国', 'fuxin', '阜新', '42.019218', '121.654791', 0);
INSERT INTO `cms_city` VALUES ('101071001', 'liaoyang', '辽阳', 'liaoning', '辽宁', 'China', '中国', 'liaoyang', '辽阳', '41.269402', '123.18152', 0);
INSERT INTO `cms_city` VALUES ('101071002', 'liaoyangxian', '辽阳县', 'liaoning', '辽宁', 'China', '中国', 'liaoyang', '辽阳', '41.216479', '123.079674', 0);
INSERT INTO `cms_city` VALUES ('101071003', 'dengta', '灯塔', 'liaoning', '辽宁', 'China', '中国', 'liaoyang', '辽阳', '41.427836', '123.325864', 0);
INSERT INTO `cms_city` VALUES ('101071004', 'gongchangling', '弓长岭', 'liaoning', '辽宁', 'China', '中国', 'liaoyang', '辽阳', '41.157831', '123.431633', 0);
INSERT INTO `cms_city` VALUES ('101071005', 'baita', '白塔', 'liaoning', '辽宁', 'China', '中国', 'liaoyang', '辽阳', '41.26745', '123.172611', 0);
INSERT INTO `cms_city` VALUES ('101071006', 'wensheng', '文圣', 'liaoning', '辽宁', 'China', '中国', 'liaoyang', '辽阳', '41.266765', '123.188227', 0);
INSERT INTO `cms_city` VALUES ('101071007', 'hongwei', '宏伟', 'liaoning', '辽宁', 'China', '中国', 'liaoyang', '辽阳', '41.205747', '123.200461', 0);
INSERT INTO `cms_city` VALUES ('101071008', 'taizihe', '太子河', 'liaoning', '辽宁', 'China', '中国', 'liaoyang', '辽阳', '41.251682', '123.185336', 0);
INSERT INTO `cms_city` VALUES ('101071101', 'tieling', '铁岭', 'liaoning', '辽宁', 'China', '中国', 'tieling', '铁岭', '42.223316', '123.725669', 0);
INSERT INTO `cms_city` VALUES ('101071102', 'kaiyuan', '开原', 'liaoning', '辽宁', 'China', '中国', 'tieling', '铁岭', '42.542141', '124.045551', 0);
INSERT INTO `cms_city` VALUES ('101071103', 'changtu', '昌图', 'liaoning', '辽宁', 'China', '中国', 'tieling', '铁岭', '42.784441', '124.11017', 0);
INSERT INTO `cms_city` VALUES ('101071104', 'xifeng', '西丰', 'liaoning', '辽宁', 'China', '中国', 'tieling', '铁岭', '42.738091', '124.72332', 0);
INSERT INTO `cms_city` VALUES ('101071105', 'tiefa', '调兵山', 'liaoning', '辽宁', 'China', '中国', 'tieling', '铁岭', '42.450734', '123.545366', 0);
INSERT INTO `cms_city` VALUES ('101071106', 'yinzhou', '银州', 'liaoning', '辽宁', 'China', '中国', 'tieling', '铁岭', '42.292278', '123.844877', 0);
INSERT INTO `cms_city` VALUES ('101071107', 'qinghe', '清河', 'liaoning', '辽宁', 'China', '中国', 'tieling', '铁岭', '42.542978', '124.14896', 0);
INSERT INTO `cms_city` VALUES ('101071201', 'chaoyang', '朝阳', 'liaoning', '辽宁', 'China', '中国', 'chaoyang', '朝阳', '41.576758', '120.451176', 0);
INSERT INTO `cms_city` VALUES ('101071202', 'shuangta', '双塔', 'liaoning', '辽宁', 'China', '中国', 'chaoyang', '朝阳', '41.579389', '120.44877', 0);
INSERT INTO `cms_city` VALUES ('101071203', 'lingyuan', '凌源', 'liaoning', '辽宁', 'China', '中国', 'chaoyang', '朝阳', '41.243086', '119.404789', 0);
INSERT INTO `cms_city` VALUES ('101071204', 'kazuo', '喀左', 'liaoning', '辽宁', 'China', '中国', 'chaoyang', '朝阳', '41.05', '119.43', 0);
INSERT INTO `cms_city` VALUES ('101071205', 'beipiao', '北票', 'liaoning', '辽宁', 'China', '中国', 'chaoyang', '朝阳', '41.803286', '120.766951', 0);
INSERT INTO `cms_city` VALUES ('101071206', 'longcheng', '龙城', 'liaoning', '辽宁', 'China', '中国', 'chaoyang', '朝阳', '41.576749', '120.413376', 0);
INSERT INTO `cms_city` VALUES ('101071207', 'jianpingxian', '建平县', 'liaoning', '辽宁', 'China', '中国', 'chaoyang', '朝阳', '41.402576', '119.642363', 0);
INSERT INTO `cms_city` VALUES ('101071301', 'panjin', '盘锦', 'liaoning', '辽宁', 'China', '中国', 'panjin', '盘锦', '41.124484', '122.06957', 0);
INSERT INTO `cms_city` VALUES ('101071302', 'dawa', '大洼', 'liaoning', '辽宁', 'China', '中国', 'panjin', '盘锦', '40.994428', '122.071708', 0);
INSERT INTO `cms_city` VALUES ('101071303', 'panshan', '盘山', 'liaoning', '辽宁', 'China', '中国', 'panjin', '盘锦', '41.240701', '121.98528', 0);
INSERT INTO `cms_city` VALUES ('101071304', 'shuangtaizi', '双台子', 'liaoning', '辽宁', 'China', '中国', 'panjin', '盘锦', '41.190365', '122.055733', 0);
INSERT INTO `cms_city` VALUES ('101071305', 'xinglongtai', '兴隆台', 'liaoning', '辽宁', 'China', '中国', 'panjin', '盘锦', '41.122423', '122.071624', 0);
INSERT INTO `cms_city` VALUES ('101071401', 'huludao', '葫芦岛', 'liaoning', '辽宁', 'China', '中国', 'huludao', '葫芦岛', '40.755572', '120.856394', 0);
INSERT INTO `cms_city` VALUES ('101071402', 'jianchang', '建昌', 'liaoning', '辽宁', 'China', '中国', 'huludao', '葫芦岛', '40.812871', '119.807776', 0);
INSERT INTO `cms_city` VALUES ('101071403', 'suizhong', '绥中', 'liaoning', '辽宁', 'China', '中国', 'huludao', '葫芦岛', '40.328407', '120.342112', 0);
INSERT INTO `cms_city` VALUES ('101071404', 'xingcheng', '兴城', 'liaoning', '辽宁', 'China', '中国', 'huludao', '葫芦岛', '40.619413', '120.729365', 0);
INSERT INTO `cms_city` VALUES ('101071405', 'lianshan', '连山', 'liaoning', '辽宁', 'China', '中国', 'huludao', '葫芦岛', '40.755143', '120.85937', 0);
INSERT INTO `cms_city` VALUES ('101071406', 'longgang', '龙港', 'liaoning', '辽宁', 'China', '中国', 'huludao', '葫芦岛', '40.709991', '120.838569', 0);
INSERT INTO `cms_city` VALUES ('101071407', 'nanpiao', '南票', 'liaoning', '辽宁', 'China', '中国', 'huludao', '葫芦岛', '41.098813', '120.752314', 0);
INSERT INTO `cms_city` VALUES ('101080101', 'huhehaote', '呼和浩特', 'neimenggu', '内蒙古', 'China', '中国', 'huhehaote', '呼和浩特', '40.818311', '111.670801', 0);
INSERT INTO `cms_city` VALUES ('101080102', 'tuzuoqi', '土左旗', 'neimenggu', '内蒙古', 'China', '中国', 'huhehaote', '呼和浩特', '40.41', '111.09', 0);
INSERT INTO `cms_city` VALUES ('101080103', 'tuoxian', '托县', 'neimenggu', '内蒙古', 'China', '中国', 'huhehaote', '呼和浩特', '40.16', '111.11', 0);
INSERT INTO `cms_city` VALUES ('101080104', 'helin', '和林', 'neimenggu', '内蒙古', 'China', '中国', 'huhehaote', '呼和浩特', '40.380288', '111.824143', 0);
INSERT INTO `cms_city` VALUES ('101080105', 'qingshuihe', '清水河', 'neimenggu', '内蒙古', 'China', '中国', 'huhehaote', '呼和浩特', '39.912479', '111.67222', 0);
INSERT INTO `cms_city` VALUES ('101080106', 'saihan', '赛罕', 'neimenggu', '内蒙古', 'China', '中国', 'huhehaote', '呼和浩特', '40.807834', '111.698463', 0);
INSERT INTO `cms_city` VALUES ('101080107', 'wuchuan', '武川', 'neimenggu', '内蒙古', 'China', '中国', 'huhehaote', '呼和浩特', '41.094483', '111.456563', 0);
INSERT INTO `cms_city` VALUES ('101080108', 'xincheng', '新城', 'namenggu', '内蒙古', 'China', '中国', 'huhehaote', '呼和浩特', '40.826225', '111.685964', 0);
INSERT INTO `cms_city` VALUES ('101080109', 'huimin', '回民', 'namenggu', '内蒙古', 'China', '中国', 'huhehaote', '呼和浩特', '40.815149', '111.662162', 0);
INSERT INTO `cms_city` VALUES ('101080110', 'yuquan', '玉泉', 'namenggu', '内蒙古', 'China', '中国', 'huhehaote', '呼和浩特', '40.799421', '111.66543', 0);
INSERT INTO `cms_city` VALUES ('101080201', 'baotou', '包头', 'neimenggu', '内蒙古', 'China', '中国', 'baotou', '包头', '40.658168', '109.840405', 0);
INSERT INTO `cms_city` VALUES ('101080202', 'baiyunebo', '白云鄂博', 'neimenggu', '内蒙古', 'China', '中国', 'baotou', '包头', '41.769246', '109.97016', 0);
INSERT INTO `cms_city` VALUES ('101080204', 'tuyouqi', '土右旗', 'neimenggu', '内蒙古', 'China', '中国', 'baotou', '包头', '40.33', '110.32', 0);
INSERT INTO `cms_city` VALUES ('101080205', 'guyang', '固阳', 'neimenggu', '内蒙古', 'China', '中国', 'baotou', '包头', '41.030004', '110.063421', 0);
INSERT INTO `cms_city` VALUES ('101080206', 'damaoqi', '达茂旗', 'neimenggu', '内蒙古', 'China', '中国', 'baotou', '包头', '41.42', '110.26', 0);
INSERT INTO `cms_city` VALUES ('101080208', 'donghe', '东河', 'namenggu', '内蒙古', 'China', '中国', 'baotou', '包头', '40.587056', '110.026895', 0);
INSERT INTO `cms_city` VALUES ('101080209', 'kundoulun', '昆都仑', 'namenggu', '内蒙古', 'China', '中国', 'baotou', '包头', '40.661345', '109.822932', 0);
INSERT INTO `cms_city` VALUES ('101080210', 'qingshan', '青山', 'namenggu', '内蒙古', 'China', '中国', 'baotou', '包头', '40.668558', '109.880049', 0);
INSERT INTO `cms_city` VALUES ('101080211', 'shiguai', '石拐', 'namenggu', '内蒙古', 'China', '中国', 'baotou', '包头', '40.672094', '110.272565', 0);
INSERT INTO `cms_city` VALUES ('101080212', 'jiuyuan', '九原', 'namenggu', '内蒙古', 'China', '中国', 'baotou', '包头', '40.600581', '109.968122', 0);
INSERT INTO `cms_city` VALUES ('101080301', 'wuhai', '乌海', 'neimenggu', '内蒙古', 'China', '中国', 'wuhai', '乌海', '39.673734', '106.825563', 0);
INSERT INTO `cms_city` VALUES ('101080302', 'haibowan', '海勃湾', 'namenggu', '内蒙古', 'China', '中国', 'wuhai', '乌海', '39.673527', '106.817762', 0);
INSERT INTO `cms_city` VALUES ('101080303', 'hainan', '海南', 'namenggu', '内蒙古', 'China', '中国', 'wuhai', '乌海', '39.44153', '106.884789', 0);
INSERT INTO `cms_city` VALUES ('101080304', 'wuda', '乌达', 'namenggu', '内蒙古', 'China', '中国', 'wuhai', '乌海', '39.502288', '106.722711', 0);
INSERT INTO `cms_city` VALUES ('101080401', 'jining', '集宁', 'neimenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '41.034134', '113.116453', 0);
INSERT INTO `cms_city` VALUES ('101080402', 'zhuozi', '卓资', 'neimenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '40.89576', '112.577702', 0);
INSERT INTO `cms_city` VALUES ('101080403', 'huade', '化德', 'neimenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '41.899335', '114.01008', 0);
INSERT INTO `cms_city` VALUES ('101080404', 'shangdu', '商都', 'neimenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '41.560163', '113.560643', 0);
INSERT INTO `cms_city` VALUES ('101080405', 'wulanchabu', '乌兰察布', 'namenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '41.034126', '113.114543', 0);
INSERT INTO `cms_city` VALUES ('101080406', 'xinghe', '兴和', 'neimenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '40.872437', '113.834009', 0);
INSERT INTO `cms_city` VALUES ('101080407', 'liangcheng', '凉城', 'neimenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '40.531627', '112.500911', 0);
INSERT INTO `cms_city` VALUES ('101080408', 'chayouqianqi', '察右前旗', 'neimenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '40.48', '113.13', 0);
INSERT INTO `cms_city` VALUES ('101080409', 'chayouzhongqi', '察右中旗', 'neimenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '41.16', '112.37', 0);
INSERT INTO `cms_city` VALUES ('101080410', 'chayouhouqi', '察右后旗', 'neimenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '41.27', '113.11', 0);
INSERT INTO `cms_city` VALUES ('101080411', 'siziwangqi', '四子王旗', 'neimenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '41.528114', '111.70123', 0);
INSERT INTO `cms_city` VALUES ('101080412', 'fengzhen', '丰镇', 'neimenggu', '内蒙古', 'China', '中国', 'wulanchabu', '乌兰察布', '40.437534', '113.163462', 0);
INSERT INTO `cms_city` VALUES ('101080501', 'tongliao', '通辽', 'neimenggu', '内蒙古', 'China', '中国', 'tongliao', '通辽', '43.617429', '122.263119', 0);
INSERT INTO `cms_city` VALUES ('101080503', 'kezuozhongqi', '科左中旗', 'neimenggu', '内蒙古', 'China', '中国', 'tongliao', '通辽', '44.08', '123.18', 0);
INSERT INTO `cms_city` VALUES ('101080504', 'kezuohouqi', '科左后旗', 'neimenggu', '内蒙古', 'China', '中国', 'tongliao', '通辽', '42.58', '122.21', 0);
INSERT INTO `cms_city` VALUES ('101080506', 'kailu', '开鲁', 'neimenggu', '内蒙古', 'China', '中国', 'tongliao', '通辽', '43.602432', '121.308797', 0);
INSERT INTO `cms_city` VALUES ('101080507', 'kulun', '库伦', 'neimenggu', '内蒙古', 'China', '中国', 'tongliao', '通辽', '42.734692', '121.774886', 0);
INSERT INTO `cms_city` VALUES ('101080508', 'naiman', '奈曼', 'neimenggu', '内蒙古', 'China', '中国', 'tongliao', '通辽', '42.84685', '120.662543', 0);
INSERT INTO `cms_city` VALUES ('101080509', 'zhalute', '扎鲁特', 'neimenggu', '内蒙古', 'China', '中国', 'tongliao', '通辽', '44.555294', '120.905275', 0);
INSERT INTO `cms_city` VALUES ('101080510', 'keerqin', '科尔沁', 'namenggu', '内蒙古', 'China', '中国', 'tongliao', '通辽', '45.059645', '121.472818', 0);
INSERT INTO `cms_city` VALUES ('101080512', 'huolinguole', '霍林郭勒', 'neimenggu', '内蒙古', 'China', '中国', 'tongliao', '通辽', '45.532361', '119.657862', 0);
INSERT INTO `cms_city` VALUES ('101080601', 'chifeng', '赤峰', 'neimenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '42.275317', '118.956806', 0);
INSERT INTO `cms_city` VALUES ('101080602', 'hongshan', '红山', 'namenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '42.269732', '118.961087', 0);
INSERT INTO `cms_city` VALUES ('101080603', 'aluqi', '阿鲁旗', 'neimenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '43.53', '120.03', 0);
INSERT INTO `cms_city` VALUES ('101080605', 'balinzuoqi', '巴林左旗', 'neimenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '43.980715', '119.391737', 0);
INSERT INTO `cms_city` VALUES ('101080606', 'balinyouqi', '巴林右旗', 'neimenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '43.528963', '118.678347', 0);
INSERT INTO `cms_city` VALUES ('101080607', 'linxi', '林西', 'neimenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '43.605326', '118.05775', 0);
INSERT INTO `cms_city` VALUES ('101080608', 'keshiketeng', '克什克腾', 'neimenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '43.256233', '117.542465', 0);
INSERT INTO `cms_city` VALUES ('101080609', 'wengniute', '翁牛特', 'neimenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '42.937128', '119.022619', 0);
INSERT INTO `cms_city` VALUES ('101080611', 'kalaqin', '喀喇沁', 'neimenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '41.92778', '118.708572', 0);
INSERT INTO `cms_city` VALUES ('101080613', 'ningcheng', '宁城', 'neimenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '41.598692', '119.339242', 0);
INSERT INTO `cms_city` VALUES ('101080614', 'aohan', '敖汉', 'neimenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '42.287012', '119.906486', 0);
INSERT INTO `cms_city` VALUES ('101080616', 'yuanbaoshan', '元宝山', 'namenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '42.041168', '119.289877', 0);
INSERT INTO `cms_city` VALUES ('101080617', 'songshan', '松山', 'namenggu', '内蒙古', 'China', '中国', 'chifeng', '赤峰', '42.281046', '118.938958', 0);
INSERT INTO `cms_city` VALUES ('101080701', 'eerduosi', '鄂尔多斯', 'neimenggu', '内蒙古', 'China', '中国', 'eerduosi', '鄂尔多斯', '39.817179', '109.99029', 0);
INSERT INTO `cms_city` VALUES ('101080703', 'dalate', '达拉特', 'neimenggu', '内蒙古', 'China', '中国', 'eerduosi', '鄂尔多斯', '40.404076', '110.040281', 0);
INSERT INTO `cms_city` VALUES ('101080704', 'zhungeer', '准格尔', 'neimenggu', '内蒙古', 'China', '中国', 'eerduosi', '鄂尔多斯', '39.865221', '111.238332', 0);
INSERT INTO `cms_city` VALUES ('101080705', 'eqianqi', '鄂前旗', 'neimenggu', '内蒙古', 'China', '中国', 'eerduosi', '鄂尔多斯', '38.11', '107.29', 0);
INSERT INTO `cms_city` VALUES ('101080708', 'etuoke', '鄂托克', 'neimenggu', '内蒙古', 'China', '中国', 'eerduosi', '鄂尔多斯', '39.095752', '107.982604', 0);
INSERT INTO `cms_city` VALUES ('101080709', 'hangjinqi', '杭锦旗', 'neimenggu', '内蒙古', 'China', '中国', 'eerduosi', '鄂尔多斯', '39.831789', '108.736324', 0);
INSERT INTO `cms_city` VALUES ('101080710', 'wushenqi', '乌审旗', 'neimenggu', '内蒙古', 'China', '中国', 'eerduosi', '鄂尔多斯', '38.596611', '108.842454', 0);
INSERT INTO `cms_city` VALUES ('101080711', 'yijinhuoluo', '伊金霍洛', 'neimenggu', '内蒙古', 'China', '中国', 'eerduosi', '鄂尔多斯', '39.604312', '109.787402', 0);
INSERT INTO `cms_city` VALUES ('101080713', 'dongsheng', '东胜', 'neimenggu', '内蒙古', 'China', '中国', 'eerduosi', '鄂尔多斯', '39.81788', '109.98945', 0);
INSERT INTO `cms_city` VALUES ('101080801', 'linhe', '临河', 'neimenggu', '内蒙古', 'China', '中国', 'bayannaoer', '巴彦淖尔', '40.757092', '107.417018', 0);
INSERT INTO `cms_city` VALUES ('101080802', 'wuyuan', '五原', 'neimenggu', '内蒙古', 'China', '中国', 'bayannaoer', '巴彦淖尔', '41.097639', '108.270658', 0);
INSERT INTO `cms_city` VALUES ('101080803', 'dengkou', '磴口', 'neimenggu', '内蒙古', 'China', '中国', 'bayannaoer', '巴彦淖尔', '40.330479', '107.006056', 0);
INSERT INTO `cms_city` VALUES ('101080804', 'wuqianqi', '乌前旗', 'neimenggu', '内蒙古', 'China', '中国', 'bayannaoer', '巴彦淖尔', '40.44', '108.39', 0);
INSERT INTO `cms_city` VALUES ('101080806', 'wuzhongqi', '乌中旗', 'neimenggu', '内蒙古', 'China', '中国', 'bayannaoer', '巴彦淖尔', '41.34', '108.31', 0);
INSERT INTO `cms_city` VALUES ('101080807', 'wuhouqi', '乌后旗', 'neimenggu', '内蒙古', 'China', '中国', 'bayannaoer', '巴彦淖尔', '41.27', '106.59', 0);
INSERT INTO `cms_city` VALUES ('101080810', 'hangjinhouqi', '杭锦后旗', 'neimenggu', '内蒙古', 'China', '中国', 'bayannaoer', '巴彦淖尔', '40.888797', '107.147682', 0);
INSERT INTO `cms_city` VALUES ('101080811', 'bayannaoer', '巴彦淖尔', 'namenggu', '内蒙古', 'China', '中国', 'bayannaoer', '巴彦淖尔', '40.757402', '107.416959', 0);
INSERT INTO `cms_city` VALUES ('101080901', 'xilinhaote', '锡林浩特', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '43.944301', '116.091903', 0);
INSERT INTO `cms_city` VALUES ('101080902', 'xilinguole', '锡林郭勒', 'namenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '43.944018', '116.090996', 0);
INSERT INTO `cms_city` VALUES ('101080903', 'erlianhaote', '二连浩特', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '43.652895', '111.97981', 0);
INSERT INTO `cms_city` VALUES ('101080904', 'abaga', '阿巴嘎', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '44.022728', '114.970618', 0);
INSERT INTO `cms_city` VALUES ('101080906', 'suzuoqi', '苏左旗', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '43.52', '113.38', 0);
INSERT INTO `cms_city` VALUES ('101080907', 'suyouqi', '苏右旗', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '42.45', '112.39', 0);
INSERT INTO `cms_city` VALUES ('101080909', 'dongwuqi', '东乌旗', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '45.31', '116.58', 0);
INSERT INTO `cms_city` VALUES ('101080910', 'xiwuqi', '西乌旗', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '44.35', '117.36', 0);
INSERT INTO `cms_city` VALUES ('101080911', 'taipusiqi', '太仆寺', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '41.895199', '115.28728', 0);
INSERT INTO `cms_city` VALUES ('101080912', 'xianghuang', '镶黄旗', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '42.239229', '113.843869', 0);
INSERT INTO `cms_city` VALUES ('101080913', 'zhengxiangbaiqi', '正镶白旗', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '42.286807', '115.031423', 0);
INSERT INTO `cms_city` VALUES ('101080914', 'zhenglanqi', '正蓝旗', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '42.245895', '116.003311', 0);
INSERT INTO `cms_city` VALUES ('101080915', 'duolun', '多伦', 'neimenggu', '内蒙古', 'China', '中国', 'xilinguole', '锡林郭勒', '42.197962', '116.477288', 0);
INSERT INTO `cms_city` VALUES ('101081001', 'hailaer', '海拉尔', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '49.213889', '119.764923', 0);
INSERT INTO `cms_city` VALUES ('101081003', 'arongqi', '阿荣旗', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '48.130503', '123.464615', 0);
INSERT INTO `cms_city` VALUES ('101081004', 'molidawa', '莫力达瓦', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '48.478385', '124.507401', 0);
INSERT INTO `cms_city` VALUES ('101081005', 'elunchunqi', '鄂伦春旗', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '50.35', '123.44', 0);
INSERT INTO `cms_city` VALUES ('101081006', 'ewenkeqi', '鄂温克旗', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '49.09', '119.45', 0);
INSERT INTO `cms_city` VALUES ('101081007', 'chenqi', '陈旗', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '49.19', '119.26', 0);
INSERT INTO `cms_city` VALUES ('101081008', 'xinzuoqi', '新左旗', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '48.13', '118.16', 0);
INSERT INTO `cms_city` VALUES ('101081009', 'xinyouqi', '新右旗', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '48.4', '116.49', 0);
INSERT INTO `cms_city` VALUES ('101081010', 'manzhouli', '满洲里', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '49.590788', '117.455561', 0);
INSERT INTO `cms_city` VALUES ('101081011', 'yakeshi', '牙克石', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '49.287024', '120.729005', 0);
INSERT INTO `cms_city` VALUES ('101081012', 'zhalantun', '扎兰屯', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '48.007412', '122.744401', 0);
INSERT INTO `cms_city` VALUES ('101081013', 'hulunbeier', '呼伦贝尔', 'namenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '49.215333', '119.758168', 0);
INSERT INTO `cms_city` VALUES ('101081014', 'eerguna', '额尔古纳', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '50.2439', '120.178636', 0);
INSERT INTO `cms_city` VALUES ('101081015', 'genhe', '根河', 'neimenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '50.780454', '121.532724', 0);
INSERT INTO `cms_city` VALUES ('101081017', 'zhalainuoer', '扎赉诺尔', 'namenggu', '内蒙古', 'China', '中国', 'hulunbeier', '呼伦贝尔', '49.456567', '117.716373', 0);
INSERT INTO `cms_city` VALUES ('101081101', 'wulanhaote', '乌兰浩特', 'neimenggu', '内蒙古', 'China', '中国', 'xinganmeng', '兴安盟', '46.077238', '122.068975', 0);
INSERT INTO `cms_city` VALUES ('101081102', 'aershan', '阿尔山', 'neimenggu', '内蒙古', 'China', '中国', 'xinganmeng', '兴安盟', '47.177', '119.943656', 0);
INSERT INTO `cms_city` VALUES ('101081103', 'keyouzhongqi', '科右中旗', 'neimenggu', '内蒙古', 'China', '中国', 'xinganmeng', '兴安盟', '45.03', '121.28', 0);
INSERT INTO `cms_city` VALUES ('101081105', 'zhanlaite', '扎赉特', 'neimenggu', '内蒙古', 'China', '中国', 'xinganmeng', '兴安盟', '46.725136', '122.909332', 0);
INSERT INTO `cms_city` VALUES ('101081107', 'tuquan', '突泉', 'neimenggu', '内蒙古', 'China', '中国', 'xinganmeng', '兴安盟', '45.380986', '121.564856', 0);
INSERT INTO `cms_city` VALUES ('101081108', 'xinganmeng', '兴安盟', 'namenggu', '内蒙古', 'China', '中国', 'xinganmeng', '兴安盟', '46.076268', '122.070317', 0);
INSERT INTO `cms_city` VALUES ('101081109', 'keyouqianqi', '科右前旗', 'neimenggu', '内蒙古', 'China', '中国', 'xinganmeng', '兴安盟', '46.063', '122.069', 0);
INSERT INTO `cms_city` VALUES ('101081201', 'azuoqi', '阿左旗', 'neimenggu', '内蒙古', 'China', '中国', 'alashanmeng', '阿拉善盟', '39.641', '105.111', 0);
INSERT INTO `cms_city` VALUES ('101081202', 'ayouqi', '阿右旗', 'neimenggu', '内蒙古', 'China', '中国', 'alashanmeng', '阿拉善盟', '39.13', '101.41', 0);
INSERT INTO `cms_city` VALUES ('101081203', 'ejina', '额济纳', 'neimenggu', '内蒙古', 'China', '中国', 'alashanmeng', '阿拉善盟', '41.958813', '101.06944', 0);
INSERT INTO `cms_city` VALUES ('101081213', 'alashanmeng', '阿拉善盟', 'namenggu', '内蒙古', 'China', '中国', 'alashanmeng', '阿拉善盟', '38.844814', '105.706422', 0);
INSERT INTO `cms_city` VALUES ('101090101', 'shijiazhuang', '石家庄', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.045474', '114.502461', 0);
INSERT INTO `cms_city` VALUES ('101090102', 'jingxing', '井陉', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.033614', '114.144488', 0);
INSERT INTO `cms_city` VALUES ('101090103', 'zhengding', '正定', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.147835', '114.569887', 0);
INSERT INTO `cms_city` VALUES ('101090104', 'luancheng', '栾城', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '37.886911', '114.654281', 0);
INSERT INTO `cms_city` VALUES ('101090105', 'xingtang', '行唐', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.437422', '114.552734', 0);
INSERT INTO `cms_city` VALUES ('101090106', 'lingshou', '灵寿', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.306546', '114.37946', 0);
INSERT INTO `cms_city` VALUES ('101090107', 'gaoyi', '高邑', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '37.605714', '114.610699', 0);
INSERT INTO `cms_city` VALUES ('101090108', 'shenze', '深泽', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.18454', '115.200207', 0);
INSERT INTO `cms_city` VALUES ('101090109', 'zanhuang', '赞皇', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '37.660199', '114.387756', 0);
INSERT INTO `cms_city` VALUES ('101090110', 'wuji', '无极', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.176376', '114.977845', 0);
INSERT INTO `cms_city` VALUES ('101090111', 'pingshan', '平山', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.259311', '114.184144', 0);
INSERT INTO `cms_city` VALUES ('101090112', 'yuanshi', '元氏', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '37.762514', '114.52618', 0);
INSERT INTO `cms_city` VALUES ('101090113', 'zhaoxian', '赵县', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '37.754341', '114.775362', 0);
INSERT INTO `cms_city` VALUES ('101090114', 'xinji', '辛集', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '37.92904', '115.217451', 0);
INSERT INTO `cms_city` VALUES ('101090115', 'gaocheng', '藁城', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.033767', '114.849647', 0);
INSERT INTO `cms_city` VALUES ('101090116', 'jinzhou', '晋州', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.027478', '115.044886', 0);
INSERT INTO `cms_city` VALUES ('101090117', 'xinle', '新乐', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.344768', '114.68578', 0);
INSERT INTO `cms_city` VALUES ('101090118', 'luquan', '鹿泉', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.093994', '114.321023', 0);
INSERT INTO `cms_city` VALUES ('101090119', 'changan', '长安', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.047501', '114.548151', 0);
INSERT INTO `cms_city` VALUES ('101090120', 'qiaoxi', '桥西', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.028383', '114.462931', 0);
INSERT INTO `cms_city` VALUES ('101090121', 'xinhua', '新华', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.067142', '114.465974', 0);
INSERT INTO `cms_city` VALUES ('101090122', 'jingxingkuangqu', '井陉矿区', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.069748', '114.058178', 0);
INSERT INTO `cms_city` VALUES ('101090123', 'yuhua', '裕华', 'hebei', '河北', 'China', '中国', 'shijiazhuang', '石家庄', '38.027696', '114.533257', 0);
INSERT INTO `cms_city` VALUES ('101090201', 'baoding', '保定', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.867657', '115.482331', 0);
INSERT INTO `cms_city` VALUES ('101090202', 'mancheng', '满城', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.95138', '115.32442', 0);
INSERT INTO `cms_city` VALUES ('101090203', 'fuping', '阜平', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.847276', '114.198801', 0);
INSERT INTO `cms_city` VALUES ('101090204', 'xushui', '徐水', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '39.020395', '115.64941', 0);
INSERT INTO `cms_city` VALUES ('101090205', 'tangxian', '唐县', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.748542', '114.981241', 0);
INSERT INTO `cms_city` VALUES ('101090206', 'gaoyang', '高阳', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.690092', '115.778878', 0);
INSERT INTO `cms_city` VALUES ('101090207', 'rongcheng', '容城', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '39.05282', '115.866247', 0);
INSERT INTO `cms_city` VALUES ('101090208', 'jingxiu', '竞秀', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.88662', '115.470659', 0);
INSERT INTO `cms_city` VALUES ('101090209', 'laiyuan', '涞源', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '39.35755', '114.692567', 0);
INSERT INTO `cms_city` VALUES ('101090210', 'wangdu', '望都', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.707448', '115.154009', 0);
INSERT INTO `cms_city` VALUES ('101090211', 'anxin', '安新', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.929912', '115.931979', 0);
INSERT INTO `cms_city` VALUES ('101090212', 'yixian', '易县', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '39.35297', '115.501146', 0);
INSERT INTO `cms_city` VALUES ('101090213', 'lianchi', '莲池', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.865005', '115.500934', 0);
INSERT INTO `cms_city` VALUES ('101090214', 'quyang', '曲阳', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.619992', '114.704055', 0);
INSERT INTO `cms_city` VALUES ('101090215', 'lixian', '蠡县', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.496429', '115.583631', 0);
INSERT INTO `cms_city` VALUES ('101090216', 'shunping', '顺平', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.845127', '115.132749', 0);
INSERT INTO `cms_city` VALUES ('101090217', 'xiongxian', '雄县', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.990819', '116.107474', 0);
INSERT INTO `cms_city` VALUES ('101090218', 'zhuozhou', '涿州', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '39.485765', '115.973409', 0);
INSERT INTO `cms_city` VALUES ('101090219', 'dingzhou', '定州', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.517602', '114.991389', 0);
INSERT INTO `cms_city` VALUES ('101090220', 'anguo', '安国', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.421367', '115.33141', 0);
INSERT INTO `cms_city` VALUES ('101090221', 'gaobeidian', '高碑店', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '39.327689', '115.882704', 0);
INSERT INTO `cms_city` VALUES ('101090222', 'laishui', '涞水', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '39.393148', '115.711985', 0);
INSERT INTO `cms_city` VALUES ('101090223', 'dingxing', '定兴', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '39.266195', '115.796895', 0);
INSERT INTO `cms_city` VALUES ('101090224', 'qingyuan', '清苑', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.771012', '115.492221', 0);
INSERT INTO `cms_city` VALUES ('101090225', 'boye', '博野', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.458271', '115.461798', 0);
INSERT INTO `cms_city` VALUES ('101090226', 'nanshi', '南市', 'hebei', '河北', 'China', '中国', 'baoding', '保定', '38.865005', '115.500934', 0);
INSERT INTO `cms_city` VALUES ('101090301', 'zhangjiakou', '张家口', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.811901', '114.884091', 0);
INSERT INTO `cms_city` VALUES ('101090302', 'xuanhua', '宣化', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.609368', '115.0632', 0);
INSERT INTO `cms_city` VALUES ('101090303', 'zhangbei', '张北', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '41.151713', '114.715951', 0);
INSERT INTO `cms_city` VALUES ('101090304', 'kangbao', '康保', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '41.850046', '114.615809', 0);
INSERT INTO `cms_city` VALUES ('101090305', 'guyuan', '沽源', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '41.667419', '115.684836', 0);
INSERT INTO `cms_city` VALUES ('101090306', 'shangyi', '尚义', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '41.080091', '113.977713', 0);
INSERT INTO `cms_city` VALUES ('101090307', 'yuxian', '蔚县', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '39.837181', '114.582695', 0);
INSERT INTO `cms_city` VALUES ('101090308', 'yangyuan', '阳原', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.113419', '114.167343', 0);
INSERT INTO `cms_city` VALUES ('101090309', 'huaian', '怀安', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.671274', '114.422364', 0);
INSERT INTO `cms_city` VALUES ('101090310', 'wanquan', '万全', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.765136', '114.736131', 0);
INSERT INTO `cms_city` VALUES ('101090311', 'huailai', '怀来', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.405405', '115.520846', 0);
INSERT INTO `cms_city` VALUES ('101090312', 'zhuolu', '涿鹿', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.378701', '115.219246', 0);
INSERT INTO `cms_city` VALUES ('101090313', 'chicheng', '赤城', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.912081', '115.832708', 0);
INSERT INTO `cms_city` VALUES ('101090314', 'chongli', '崇礼', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.971302', '115.281652', 0);
INSERT INTO `cms_city` VALUES ('101090315', 'qiaodong', '桥东', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.813875', '114.885658', 0);
INSERT INTO `cms_city` VALUES ('101090316', 'qiaoxi', '桥西', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.824385', '114.882127', 0);
INSERT INTO `cms_city` VALUES ('101090317', 'xiahuayuan', '下花园', 'hebei', '河北', 'China', '中国', 'zhangjiakou', '张家口', '40.488645', '115.281002', 0);
INSERT INTO `cms_city` VALUES ('101090401', 'shuangqiao', '双桥', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '40.976204', '117.939152', 0);
INSERT INTO `cms_city` VALUES ('101090402', 'chengde', '承德', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '40.976204', '117.939152', 0);
INSERT INTO `cms_city` VALUES ('101090403', 'chengdexian', '承德县', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '40.768637', '118.172496', 0);
INSERT INTO `cms_city` VALUES ('101090404', 'xinglong', '兴隆', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '40.418525', '117.507098', 0);
INSERT INTO `cms_city` VALUES ('101090405', 'pingquan', '平泉', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '41.00561', '118.690238', 0);
INSERT INTO `cms_city` VALUES ('101090406', 'luanping', '滦平', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '40.936644', '117.337124', 0);
INSERT INTO `cms_city` VALUES ('101090407', 'longhua', '隆化', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '41.316667', '117.736343', 0);
INSERT INTO `cms_city` VALUES ('101090408', 'fengning', '丰宁', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '41.209903', '116.65121', 0);
INSERT INTO `cms_city` VALUES ('101090409', 'kuancheng', '宽城', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '40.607981', '118.488642', 0);
INSERT INTO `cms_city` VALUES ('101090410', 'weichang', '围场', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '41.949404', '117.764086', 0);
INSERT INTO `cms_city` VALUES ('101090411', 'shuangluan', '双滦', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '40.959756', '117.797485', 0);
INSERT INTO `cms_city` VALUES ('101090412', 'yingshouyingzikuang', '鹰手营子矿', 'hebei', '河北', 'China', '中国', 'chengde', '承德', '40.546956', '117.661154', 0);
INSERT INTO `cms_city` VALUES ('101090501', 'tangshan', '唐山', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.635113', '118.175393', 0);
INSERT INTO `cms_city` VALUES ('101090502', 'fengnan', '丰南', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.56303', '118.110793', 0);
INSERT INTO `cms_city` VALUES ('101090503', 'fengrun', '丰润', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.831363', '118.155779', 0);
INSERT INTO `cms_city` VALUES ('101090504', 'luanxian', '滦县', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.744851', '118.699547', 0);
INSERT INTO `cms_city` VALUES ('101090505', 'luannan', '滦南', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.506201', '118.681552', 0);
INSERT INTO `cms_city` VALUES ('101090506', 'leting', '乐亭', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.42813', '118.905341', 0);
INSERT INTO `cms_city` VALUES ('101090507', 'qianxi', '迁西', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '40.146238', '118.305139', 0);
INSERT INTO `cms_city` VALUES ('101090508', 'yutian', '玉田', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.887323', '117.753665', 0);
INSERT INTO `cms_city` VALUES ('101090509', 'caofeidian', '曹妃甸', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.278277', '118.446585', 0);
INSERT INTO `cms_city` VALUES ('101090510', 'zunhua', '遵化', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '40.188616', '117.965875', 0);
INSERT INTO `cms_city` VALUES ('101090511', 'qianan', '迁安', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '40.012108', '118.701933', 0);
INSERT INTO `cms_city` VALUES ('101090513', 'lunan', '路南', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.615162', '118.210821', 0);
INSERT INTO `cms_city` VALUES ('101090514', 'lubei', '路北', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.628538', '118.174736', 0);
INSERT INTO `cms_city` VALUES ('101090515', 'guye', '古冶', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.715736', '118.45429', 0);
INSERT INTO `cms_city` VALUES ('101090516', 'kaiping', '开平', 'hebei', '河北', 'China', '中国', 'tangshan', '唐山', '39.676171', '118.264425', 0);
INSERT INTO `cms_city` VALUES ('101090601', 'langfang', '廊坊', 'hebei', '河北', 'China', '中国', 'langfang', '廊坊', '39.523927', '116.704441', 0);
INSERT INTO `cms_city` VALUES ('101090602', 'guan', '固安', 'hebei', '河北', 'China', '中国', 'langfang', '廊坊', '39.436468', '116.299894', 0);
INSERT INTO `cms_city` VALUES ('101090603', 'yongqing', '永清', 'hebei', '河北', 'China', '中国', 'langfang', '廊坊', '39.319717', '116.498089', 0);
INSERT INTO `cms_city` VALUES ('101090604', 'xianghe', '香河', 'hebei', '河北', 'China', '中国', 'langfang', '廊坊', '39.757212', '117.007161', 0);
INSERT INTO `cms_city` VALUES ('101090605', 'dacheng', '大城', 'hebei', '河北', 'China', '中国', 'langfang', '廊坊', '38.699215', '116.640735', 0);
INSERT INTO `cms_city` VALUES ('101090606', 'wenan', '文安', 'hebei', '河北', 'China', '中国', 'langfang', '廊坊', '38.866801', '116.460107', 0);
INSERT INTO `cms_city` VALUES ('101090607', 'dachang', '大厂', 'hebei', '河北', 'China', '中国', 'langfang', '廊坊', '39.889266', '116.986501', 0);
INSERT INTO `cms_city` VALUES ('101090608', 'bazhou', '霸州', 'hebei', '河北', 'China', '中国', 'langfang', '廊坊', '39.117331', '116.392021', 0);
INSERT INTO `cms_city` VALUES ('101090609', 'sanhe', '三河', 'hebei', '河北', 'China', '中国', 'langfang', '廊坊', '39.982778', '117.077018', 0);
INSERT INTO `cms_city` VALUES ('101090610', 'anci', '安次', 'hebei', '河北', 'China', '中国', 'langfang', '廊坊', '39.502569', '116.694544', 0);
INSERT INTO `cms_city` VALUES ('101090611', 'guangyang', '广阳', 'hebei', '河北', 'China', '中国', 'langfang', '廊坊', '39.521931', '116.713708', 0);
INSERT INTO `cms_city` VALUES ('101090701', 'cangzhou', '沧州', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.310582', '116.857461', 0);
INSERT INTO `cms_city` VALUES ('101090702', 'qingxian', '青县', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.569646', '116.838384', 0);
INSERT INTO `cms_city` VALUES ('101090703', 'dongguang', '东光', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '37.88655', '116.542062', 0);
INSERT INTO `cms_city` VALUES ('101090704', 'haixing', '海兴', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.141582', '117.496606', 0);
INSERT INTO `cms_city` VALUES ('101090705', 'yanshan', '盐山', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.056141', '117.229814', 0);
INSERT INTO `cms_city` VALUES ('101090706', 'suning', '肃宁', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.427102', '115.835856', 0);
INSERT INTO `cms_city` VALUES ('101090707', 'nanpi', '南皮', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.042439', '116.709171', 0);
INSERT INTO `cms_city` VALUES ('101090708', 'wuqiao', '吴桥', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '37.628182', '116.391512', 0);
INSERT INTO `cms_city` VALUES ('101090709', 'xianxian', '献县', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.189661', '116.123844', 0);
INSERT INTO `cms_city` VALUES ('101090710', 'mengcun', '孟村', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.057953', '117.105104', 0);
INSERT INTO `cms_city` VALUES ('101090711', 'botou', '泊头', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.073479', '116.570163', 0);
INSERT INTO `cms_city` VALUES ('101090712', 'renqiu', '任丘', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.706513', '116.106764', 0);
INSERT INTO `cms_city` VALUES ('101090713', 'huanghua', '黄骅', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.369238', '117.343803', 0);
INSERT INTO `cms_city` VALUES ('101090714', 'hejian', '河间', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.44149', '116.089452', 0);
INSERT INTO `cms_city` VALUES ('101090715', 'xinhua', '新华', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.308273', '116.873049', 0);
INSERT INTO `cms_city` VALUES ('101090716', 'cangxian', '沧县', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.219856', '117.007478', 0);
INSERT INTO `cms_city` VALUES ('101090717', 'yunhe', '运河', 'hebei', '河北', 'China', '中国', 'cangzhou', '沧州', '38.307405', '116.840063', 0);
INSERT INTO `cms_city` VALUES ('101090801', 'hengshui', '衡水', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '37.735097', '115.665993', 0);
INSERT INTO `cms_city` VALUES ('101090802', 'zaoqiang', '枣强', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '37.511512', '115.726499', 0);
INSERT INTO `cms_city` VALUES ('101090803', 'wuyi', '武邑', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '37.803774', '115.892415', 0);
INSERT INTO `cms_city` VALUES ('101090804', 'wuqiang', '武强', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '38.03698', '115.970236', 0);
INSERT INTO `cms_city` VALUES ('101090805', 'raoyang', '饶阳', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '38.232671', '115.726577', 0);
INSERT INTO `cms_city` VALUES ('101090806', 'anping', '安平', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '38.233511', '115.519627', 0);
INSERT INTO `cms_city` VALUES ('101090807', 'gucheng', '故城', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '37.350981', '115.966747', 0);
INSERT INTO `cms_city` VALUES ('101090808', 'jingxian', '景县', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '37.686622', '116.258446', 0);
INSERT INTO `cms_city` VALUES ('101090809', 'fucheng', '阜城', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '37.869945', '116.164727', 0);
INSERT INTO `cms_city` VALUES ('101090810', 'jizhou', '冀州', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '37.542788', '115.579173', 0);
INSERT INTO `cms_city` VALUES ('101090811', 'shenzhou', '深州', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '38.00347', '115.554596', 0);
INSERT INTO `cms_city` VALUES ('101090812', 'taocheng', '桃城', 'hebei', '河北', 'China', '中国', 'hengshui', '衡水', '37.732237', '115.694945', 0);
INSERT INTO `cms_city` VALUES ('101090901', 'xingtai', '邢台', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.05073', '114.561132', 0);
INSERT INTO `cms_city` VALUES ('101090902', 'lincheng', '临城', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.444009', '114.506873', 0);
INSERT INTO `cms_city` VALUES ('101090903', 'qiaodong', '桥东', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.064125', '114.507131', 0);
INSERT INTO `cms_city` VALUES ('101090904', 'neiqiu', '内丘', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.287663', '114.511523', 0);
INSERT INTO `cms_city` VALUES ('101090905', 'baixiang', '柏乡', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.483596', '114.693382', 0);
INSERT INTO `cms_city` VALUES ('101090906', 'longyao', '隆尧', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.350925', '114.776348', 0);
INSERT INTO `cms_city` VALUES ('101090907', 'nanhe', '南和', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.003812', '114.691377', 0);
INSERT INTO `cms_city` VALUES ('101090908', 'ningjin', '宁晋', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.618956', '114.921027', 0);
INSERT INTO `cms_city` VALUES ('101090909', 'julu', '巨鹿', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.21768', '115.038782', 0);
INSERT INTO `cms_city` VALUES ('101090910', 'xinhe', '新河', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.526216', '115.247537', 0);
INSERT INTO `cms_city` VALUES ('101090911', 'guangzong', '广宗', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.075548', '115.142797', 0);
INSERT INTO `cms_city` VALUES ('101090912', 'pingxiang', '平乡', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.069404', '115.029218', 0);
INSERT INTO `cms_city` VALUES ('101090913', 'weixian', '威县', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '36.983272', '115.272749', 0);
INSERT INTO `cms_city` VALUES ('101090914', 'qinghe', '清河', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.059991', '115.668999', 0);
INSERT INTO `cms_city` VALUES ('101090915', 'linxi', '临西', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '36.8642', '115.498684', 0);
INSERT INTO `cms_city` VALUES ('101090916', 'nangong', '南宫', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.359668', '115.398102', 0);
INSERT INTO `cms_city` VALUES ('101090917', 'shahe', '沙河', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '36.861903', '114.504902', 0);
INSERT INTO `cms_city` VALUES ('101090918', 'renxian', '任县', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.129952', '114.684469', 0);
INSERT INTO `cms_city` VALUES ('101090919', 'qiaoxi', '桥西', 'hebei', '河北', 'China', '中国', 'xingtai', '邢台', '37.068009', '114.473687', 0);
INSERT INTO `cms_city` VALUES ('101091001', 'handan', '邯郸', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.612273', '114.490686', 0);
INSERT INTO `cms_city` VALUES ('101091002', 'fengfeng', '峰峰', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.420487', '114.209936', 0);
INSERT INTO `cms_city` VALUES ('101091003', 'linzhang', '临漳', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.337604', '114.610703', 0);
INSERT INTO `cms_city` VALUES ('101091004', 'chengan', '成安', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.443832', '114.680356', 0);
INSERT INTO `cms_city` VALUES ('101091005', 'daming', '大名', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.283316', '115.152586', 0);
INSERT INTO `cms_city` VALUES ('101091006', 'shexian', '涉县', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.563143', '113.673297', 0);
INSERT INTO `cms_city` VALUES ('101091007', 'cixian', '磁县', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.367673', '114.38208', 0);
INSERT INTO `cms_city` VALUES ('101091008', 'feixiang', '肥乡', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.555778', '114.805154', 0);
INSERT INTO `cms_city` VALUES ('101091009', 'yongnian', '永年', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.776413', '114.496162', 0);
INSERT INTO `cms_city` VALUES ('101091010', 'qiuxian', '邱县', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.81325', '115.168584', 0);
INSERT INTO `cms_city` VALUES ('101091011', 'jize', '鸡泽', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.914908', '114.878517', 0);
INSERT INTO `cms_city` VALUES ('101091012', 'guangping', '广平', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.483603', '114.950859', 0);
INSERT INTO `cms_city` VALUES ('101091013', 'guantao', '馆陶', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.539461', '115.289057', 0);
INSERT INTO `cms_city` VALUES ('101091014', 'weixian', '魏县', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.354248', '114.93411', 0);
INSERT INTO `cms_city` VALUES ('101091015', 'quzhou', '曲周', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.773398', '114.957588', 0);
INSERT INTO `cms_city` VALUES ('101091016', 'wuan', '武安', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.696115', '114.194581', 0);
INSERT INTO `cms_city` VALUES ('101091017', 'hanshan', '邯山', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.603196', '114.484989', 0);
INSERT INTO `cms_city` VALUES ('101091018', 'congtai', '丛台', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.611082', '114.494703', 0);
INSERT INTO `cms_city` VALUES ('101091019', 'fuxing', '复兴', 'hebei', '河北', 'China', '中国', 'handan', '邯郸', '36.615484', '114.458242', 0);
INSERT INTO `cms_city` VALUES ('101091101', 'qinhuangdao', '秦皇岛', 'hebei', '河北', 'China', '中国', 'qinhuangdao', '秦皇岛', '39.942531', '119.586579', 0);
INSERT INTO `cms_city` VALUES ('101091102', 'qinglong', '青龙', 'hebei', '河北', 'China', '中国', 'qinhuangdao', '秦皇岛', '40.406023', '118.954555', 0);
INSERT INTO `cms_city` VALUES ('101091103', 'changli', '昌黎', 'hebei', '河北', 'China', '中国', 'qinhuangdao', '秦皇岛', '39.709729', '119.164541', 0);
INSERT INTO `cms_city` VALUES ('101091104', 'funing', '抚宁', 'hebei', '河北', 'China', '中国', 'qinhuangdao', '秦皇岛', '39.887053', '119.240651', 0);
INSERT INTO `cms_city` VALUES ('101091105', 'lulong', '卢龙', 'hebei', '河北', 'China', '中国', 'qinhuangdao', '秦皇岛', '39.891639', '118.881809', 0);
INSERT INTO `cms_city` VALUES ('101091106', 'beidaihe', '北戴河', 'hebei', '河北', 'China', '中国', 'qinhuangdao', '秦皇岛', '39.825121', '119.486286', 0);
INSERT INTO `cms_city` VALUES ('101091107', 'haigang', '海港', 'hebei', '河北', 'China', '中国', 'qinhuangdao', '秦皇岛', '39.943458', '119.596224', 0);
INSERT INTO `cms_city` VALUES ('101091108', 'shanhaiguan', '山海关', 'hebei', '河北', 'China', '中国', 'qinhuangdao', '秦皇岛', '39.998023', '119.753591', 0);
INSERT INTO `cms_city` VALUES ('101100101', 'taiyuan', '太原', 'shanxi', '山西', 'China', '中国', 'taiyuan', '太原', '37.857014', '112.549248', 0);
INSERT INTO `cms_city` VALUES ('101100102', 'qingxu', '清徐', 'shanxi', '山西', 'China', '中国', 'taiyuan', '太原', '37.60729', '112.357961', 0);
INSERT INTO `cms_city` VALUES ('101100103', 'yangqu', '阳曲', 'shanxi', '山西', 'China', '中国', 'taiyuan', '太原', '38.058797', '112.673818', 0);
INSERT INTO `cms_city` VALUES ('101100104', 'loufan', '娄烦', 'shanxi', '山西', 'China', '中国', 'taiyuan', '太原', '38.066035', '111.793798', 0);
INSERT INTO `cms_city` VALUES ('101100105', 'gujiao', '古交', 'shanxi', '山西', 'China', '中国', 'taiyuan', '太原', '37.908534', '112.174353', 0);
INSERT INTO `cms_city` VALUES ('101100106', 'jiancaopingqu', '尖草坪区', 'shanxi', '山西', 'China', '中国', 'taiyuan', '太原', '37.939893', '112.487122', 0);
INSERT INTO `cms_city` VALUES ('101100107', 'xiaodianqu', '小店区', 'shanxi', '山西', 'China', '中国', 'taiyuan', '太原', '37.817974', '112.564273', 0);
INSERT INTO `cms_city` VALUES ('101100108', 'yingze', '迎泽', 'shanxi', '山西', 'China', '中国', 'taiyuan', '太原', '37.855804', '112.558851', 0);
INSERT INTO `cms_city` VALUES ('101100109', 'xinghualing', '杏花岭', 'shanxi', '山西', 'China', '中国', 'taiyuan', '太原', '37.879291', '112.560743', 0);
INSERT INTO `cms_city` VALUES ('101100110', 'wanbailin', '万柏林', 'shanxi', '山西', 'China', '中国', 'taiyuan', '太原', '37.862653', '112.522258', 0);
INSERT INTO `cms_city` VALUES ('101100111', 'jinyuan', '晋源', 'shanxi', '山西', 'China', '中国', 'taiyuan', '太原', '37.715619', '112.477849', 0);
INSERT INTO `cms_city` VALUES ('101100201', 'datong', '大同', 'shanxi', '山西', 'China', '中国', 'datong', '大同', '40.090511', '113.301438', 0);
INSERT INTO `cms_city` VALUES ('101100202', 'yanggao', '阳高', 'shanxi', '山西', 'China', '中国', 'datong', '大同', '40.364927', '113.749871', 0);
INSERT INTO `cms_city` VALUES ('101100203', 'datongxian', '大同县', 'shanxi', '山西', 'China', '中国', 'datong', '大同', '40.039345', '113.611306', 0);
INSERT INTO `cms_city` VALUES ('101100204', 'tianzhen', '天镇', 'shanxi', '山西', 'China', '中国', 'datong', '大同', '40.421336', '114.09112', 0);
INSERT INTO `cms_city` VALUES ('101100205', 'guangling', '广灵', 'shanxi', '山西', 'China', '中国', 'datong', '大同', '39.763051', '114.279252', 0);
INSERT INTO `cms_city` VALUES ('101100206', 'lingqiu', '灵丘', 'shanxi', '山西', 'China', '中国', 'datong', '大同', '39.438867', '114.23576', 0);
INSERT INTO `cms_city` VALUES ('101100207', 'hunyuan', '浑源', 'shanxi', '山西', 'China', '中国', 'datong', '大同', '39.699099', '113.698091', 0);
INSERT INTO `cms_city` VALUES ('101100208', 'zuoyun', '左云', 'shanxi', '山西', 'China', '中国', 'datong', '大同', '40.012873', '112.70641', 0);
INSERT INTO `cms_city` VALUES ('101100209', 'kuangqu', '矿区', 'shanxi', '山西', 'China', '中国', 'datong', '大同', '40.03626', '113.168656', 0);
INSERT INTO `cms_city` VALUES ('101100210', 'nanjiao', '南郊', 'shanxi', '山西', 'China', '中国', 'datong', '大同', '40.01802', '113.16892', 0);
INSERT INTO `cms_city` VALUES ('101100211', 'xinrong', '新荣', 'shanxi', '山西', 'China', '中国', 'datong', '大同', '40.258269', '113.141044', 0);
INSERT INTO `cms_city` VALUES ('101100301', 'yangquan', '阳泉', 'shanxi', '山西', 'China', '中国', 'yangquan', '阳泉', '37.861188', '113.583285', 0);
INSERT INTO `cms_city` VALUES ('101100302', 'yuxian', '盂县', 'shanxi', '山西', 'China', '中国', 'yangquan', '阳泉', '38.086131', '113.41223', 0);
INSERT INTO `cms_city` VALUES ('101100303', 'pingding', '平定', 'shanxi', '山西', 'China', '中国', 'yangquan', '阳泉', '37.800289', '113.631049', 0);
INSERT INTO `cms_city` VALUES ('101100304', 'kuangqu', '矿区', 'shanxi', '山西', 'China', '中国', 'yangquan', '阳泉', '37.870085', '113.559066', 0);
INSERT INTO `cms_city` VALUES ('101100305', 'jiaoqu', '郊区', 'shanxi', '山西', 'China', '中国', 'yangquan', '阳泉', '37.94096', '113.58664', 0);
INSERT INTO `cms_city` VALUES ('101100401', 'jinzhong', '晋中', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '37.696495', '112.736465', 0);
INSERT INTO `cms_city` VALUES ('101100402', 'yuci', '榆次', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '37.6976', '112.740056', 0);
INSERT INTO `cms_city` VALUES ('101100403', 'yushe', '榆社', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '37.069019', '112.973521', 0);
INSERT INTO `cms_city` VALUES ('101100404', 'zuoquan', '左权', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '37.079672', '113.377834', 0);
INSERT INTO `cms_city` VALUES ('101100405', 'heshun', '和顺', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '37.327027', '113.572919', 0);
INSERT INTO `cms_city` VALUES ('101100406', 'xiyang', '昔阳', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '37.60437', '113.706166', 0);
INSERT INTO `cms_city` VALUES ('101100407', 'shouyang', '寿阳', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '37.891136', '113.177708', 0);
INSERT INTO `cms_city` VALUES ('101100408', 'taigu', '太谷', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '37.424595', '112.554103', 0);
INSERT INTO `cms_city` VALUES ('101100409', 'qixian', '祁县', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '37.358739', '112.330532', 0);
INSERT INTO `cms_city` VALUES ('101100410', 'pingyao', '平遥', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '37.195474', '112.174059', 0);
INSERT INTO `cms_city` VALUES ('101100411', 'lingshi', '灵石', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '36.847469', '111.772759', 0);
INSERT INTO `cms_city` VALUES ('101100412', 'jiexiu', '介休', 'shanxi', '山西', 'China', '中国', 'jinzhong', '晋中', '37.027616', '111.913857', 0);
INSERT INTO `cms_city` VALUES ('101100501', 'changzhi', '长治', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.191112', '113.113556', 0);
INSERT INTO `cms_city` VALUES ('101100502', 'licheng', '黎城', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.502971', '113.387366', 0);
INSERT INTO `cms_city` VALUES ('101100503', 'tunliu', '屯留', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.314072', '112.892741', 0);
INSERT INTO `cms_city` VALUES ('101100504', 'lucheng', '潞城', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.332233', '113.223245', 0);
INSERT INTO `cms_city` VALUES ('101100505', 'xiangyuan', '襄垣', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.532854', '113.050094', 0);
INSERT INTO `cms_city` VALUES ('101100506', 'pingshun', '平顺', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.200202', '113.438791', 0);
INSERT INTO `cms_city` VALUES ('101100507', 'wuxiang', '武乡', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.834315', '112.8653', 0);
INSERT INTO `cms_city` VALUES ('101100508', 'qinxian', '沁县', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.757123', '112.70138', 0);
INSERT INTO `cms_city` VALUES ('101100509', 'zhangzi', '长子', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.119484', '112.884656', 0);
INSERT INTO `cms_city` VALUES ('101100510', 'qinyuan', '沁源', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.500777', '112.340878', 0);
INSERT INTO `cms_city` VALUES ('101100511', 'huguan', '壶关', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.110938', '113.206138', 0);
INSERT INTO `cms_city` VALUES ('101100512', 'jiaoqu', '郊区', 'shanxi', '山西', 'China', '中国', 'changzhi', '长治', '36.218388', '113.101211', 0);
INSERT INTO `cms_city` VALUES ('101100601', 'jincheng', '晋城', 'shanxi', '山西', 'China', '中国', 'jincheng', '晋城', '35.497553', '112.851274', 0);
INSERT INTO `cms_city` VALUES ('101100602', 'qinshui', '沁水', 'shanxi', '山西', 'China', '中国', 'jincheng', '晋城', '35.689472', '112.187213', 0);
INSERT INTO `cms_city` VALUES ('101100603', 'yangcheng', '阳城', 'shanxi', '山西', 'China', '中国', 'jincheng', '晋城', '35.482177', '112.422014', 0);
INSERT INTO `cms_city` VALUES ('101100604', 'lingchuan', '陵川', 'shanxi', '山西', 'China', '中国', 'jincheng', '晋城', '35.775614', '113.278877', 0);
INSERT INTO `cms_city` VALUES ('101100605', 'gaoping', '高平', 'shanxi', '山西', 'China', '中国', 'jincheng', '晋城', '35.791355', '112.930691', 0);
INSERT INTO `cms_city` VALUES ('101100606', 'zezhou', '泽州', 'shanxi', '山西', 'China', '中国', 'jincheng', '晋城', '35.617221', '112.899137', 0);
INSERT INTO `cms_city` VALUES ('101100701', 'linfen', '临汾', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.08415', '111.517973', 0);
INSERT INTO `cms_city` VALUES ('101100702', 'quwo', '曲沃', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '35.641387', '111.475529', 0);
INSERT INTO `cms_city` VALUES ('101100703', 'yonghe', '永和', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.760614', '110.631276', 0);
INSERT INTO `cms_city` VALUES ('101100704', 'xixian', '隰县', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.692675', '110.935809', 0);
INSERT INTO `cms_city` VALUES ('101100705', 'daning', '大宁', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.46383', '110.751283', 0);
INSERT INTO `cms_city` VALUES ('101100706', 'jixian', '吉县', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.099355', '110.682853', 0);
INSERT INTO `cms_city` VALUES ('101100707', 'xiangfen', '襄汾', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '35.876139', '111.442932', 0);
INSERT INTO `cms_city` VALUES ('101100708', 'puxian', '蒲县', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.411682', '111.09733', 0);
INSERT INTO `cms_city` VALUES ('101100709', 'fenxi', '汾西', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.653368', '111.563021', 0);
INSERT INTO `cms_city` VALUES ('101100710', 'hongtong', '洪洞', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.255742', '111.673692', 0);
INSERT INTO `cms_city` VALUES ('101100711', 'huozhou', '霍州', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.57202', '111.723103', 0);
INSERT INTO `cms_city` VALUES ('101100712', 'xiangning', '乡宁', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '35.975402', '110.857365', 0);
INSERT INTO `cms_city` VALUES ('101100713', 'yicheng', '翼城', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '35.738621', '111.713508', 0);
INSERT INTO `cms_city` VALUES ('101100714', 'houma', '侯马', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '35.620302', '111.371272', 0);
INSERT INTO `cms_city` VALUES ('101100715', 'fushan', '浮山', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '35.971359', '111.850039', 0);
INSERT INTO `cms_city` VALUES ('101100716', 'anze', '安泽', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.146032', '112.251372', 0);
INSERT INTO `cms_city` VALUES ('101100717', 'guxian', '古县', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.26855', '111.920207', 0);
INSERT INTO `cms_city` VALUES ('101100718', 'yaodou', '尧都', 'shanxi', '山西', 'China', '中国', 'linfen', '临汾', '36.080366', '111.522945', 0);
INSERT INTO `cms_city` VALUES ('101100801', 'yuncheng', '运城', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '35.022778', '111.003957', 0);
INSERT INTO `cms_city` VALUES ('101100802', 'linyi', '临猗', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '35.141883', '110.77493', 0);
INSERT INTO `cms_city` VALUES ('101100803', 'jishan', '稷山', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '35.600412', '110.978996', 0);
INSERT INTO `cms_city` VALUES ('101100804', 'wanrong', '万荣', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '35.417042', '110.843561', 0);
INSERT INTO `cms_city` VALUES ('101100805', 'hejin', '河津', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '35.59715', '110.710268', 0);
INSERT INTO `cms_city` VALUES ('101100806', 'xinjiang', '新绛', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '35.613697', '111.225205', 0);
INSERT INTO `cms_city` VALUES ('101100807', 'jiangxian', '绛县', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '35.49045', '111.576182', 0);
INSERT INTO `cms_city` VALUES ('101100808', 'wenxi', '闻喜', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '35.353839', '111.220306', 0);
INSERT INTO `cms_city` VALUES ('101100809', 'yuanqu', '垣曲', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '35.298293', '111.67099', 0);
INSERT INTO `cms_city` VALUES ('101100810', 'yongji', '永济', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '34.865125', '110.447984', 0);
INSERT INTO `cms_city` VALUES ('101100811', 'ruicheng', '芮城', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '34.694769', '110.69114', 0);
INSERT INTO `cms_city` VALUES ('101100812', 'xiaxian', '夏县', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '35.140441', '111.223174', 0);
INSERT INTO `cms_city` VALUES ('101100813', 'pinglu', '平陆', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '34.837256', '111.212377', 0);
INSERT INTO `cms_city` VALUES ('101100814', 'yanhu', '盐湖', 'shanxi', '山西', 'China', '中国', 'yuncheng', '运城', '35.025643', '111.000627', 0);
INSERT INTO `cms_city` VALUES ('101100901', 'shuozhou', '朔州', 'shanxi', '山西', 'China', '中国', 'shuozhou', '朔州', '39.331261', '112.433387', 0);
INSERT INTO `cms_city` VALUES ('101100902', 'pinglu', '平鲁', 'shanxi', '山西', 'China', '中国', 'shuozhou', '朔州', '39.515603', '112.295227', 0);
INSERT INTO `cms_city` VALUES ('101100903', 'shanyin', '山阴', 'shanxi', '山西', 'China', '中国', 'shuozhou', '朔州', '39.52677', '112.816396', 0);
INSERT INTO `cms_city` VALUES ('101100904', 'youyu', '右玉', 'shanxi', '山西', 'China', '中国', 'shuozhou', '朔州', '39.988812', '112.465588', 0);
INSERT INTO `cms_city` VALUES ('101100905', 'yingxian', '应县', 'shanxi', '山西', 'China', '中国', 'shuozhou', '朔州', '39.559187', '113.187505', 0);
INSERT INTO `cms_city` VALUES ('101100906', 'huairen', '怀仁', 'shanxi', '山西', 'China', '中国', 'shuozhou', '朔州', '39.82079', '113.100512', 0);
INSERT INTO `cms_city` VALUES ('101100907', 'shuocheng', '朔城', 'shanxi', '山西', 'China', '中国', 'shuozhou', '朔州', '39.324525', '112.428676', 0);
INSERT INTO `cms_city` VALUES ('101101001', 'xinzhou', '忻州', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '38.41769', '112.733538', 0);
INSERT INTO `cms_city` VALUES ('101101002', 'dingxiang', '定襄', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '38.484948', '112.963231', 0);
INSERT INTO `cms_city` VALUES ('101101003', 'wutaixian', '五台县', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '38.725711', '113.259012', 0);
INSERT INTO `cms_city` VALUES ('101101004', 'hequ', '河曲', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '39.381895', '111.146609', 0);
INSERT INTO `cms_city` VALUES ('101101005', 'pianguan', '偏关', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '39.442153', '111.500477', 0);
INSERT INTO `cms_city` VALUES ('101101006', 'shenchi', '神池', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '39.088467', '112.200438', 0);
INSERT INTO `cms_city` VALUES ('101101007', 'ningwu', '宁武', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '39.001718', '112.307936', 0);
INSERT INTO `cms_city` VALUES ('101101008', 'daixian', '代县', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '39.065138', '112.962519', 0);
INSERT INTO `cms_city` VALUES ('101101009', 'fanshi', '繁峙', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '39.188104', '113.267707', 0);
INSERT INTO `cms_city` VALUES ('101101011', 'bode', '保德', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '39.022576', '111.085688', 0);
INSERT INTO `cms_city` VALUES ('101101012', 'jingle', '静乐', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '38.355947', '111.940231', 0);
INSERT INTO `cms_city` VALUES ('101101013', 'kelan', '岢岚', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '38.705625', '111.56981', 0);
INSERT INTO `cms_city` VALUES ('101101014', 'wuzhai', '五寨', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '38.912761', '111.841015', 0);
INSERT INTO `cms_city` VALUES ('101101015', 'yuanping', '原平', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '38.729186', '112.713132', 0);
INSERT INTO `cms_city` VALUES ('101101016', 'xinfu', '忻府', 'shanxi', '山西', 'China', '中国', 'xinzhou', '忻州', '38.417743', '112.734112', 0);
INSERT INTO `cms_city` VALUES ('101101100', 'lvliang', '吕梁', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '37.524366', '111.134335', 0);
INSERT INTO `cms_city` VALUES ('101101101', 'lishi', '离石', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '37.524037', '111.134462', 0);
INSERT INTO `cms_city` VALUES ('101101102', 'linxian', '临县', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '37.960806', '110.995963', 0);
INSERT INTO `cms_city` VALUES ('101101103', 'xingxian', '兴县', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '38.464136', '111.124816', 0);
INSERT INTO `cms_city` VALUES ('101101104', 'lanxian', '岚县', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '38.278654', '111.671555', 0);
INSERT INTO `cms_city` VALUES ('101101105', 'liulin', '柳林', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '37.431664', '110.89613', 0);
INSERT INTO `cms_city` VALUES ('101101106', 'shilou', '石楼', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '36.999426', '110.837119', 0);
INSERT INTO `cms_city` VALUES ('101101107', 'fangshan', '方山', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '37.892632', '111.238885', 0);
INSERT INTO `cms_city` VALUES ('101101108', 'jiaokou', '交口', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '36.983068', '111.183188', 0);
INSERT INTO `cms_city` VALUES ('101101109', 'zhongyang', '中阳', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '37.342054', '111.193319', 0);
INSERT INTO `cms_city` VALUES ('101101110', 'xiaoyi', '孝义', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '37.144474', '111.781568', 0);
INSERT INTO `cms_city` VALUES ('101101111', 'fenyang', '汾阳', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '37.267742', '111.785273', 0);
INSERT INTO `cms_city` VALUES ('101101112', 'wenshui', '文水', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '37.436314', '112.032595', 0);
INSERT INTO `cms_city` VALUES ('101101113', 'jiaocheng', '交城', 'shanxi', '山西', 'China', '中国', 'lvliang', '吕梁', '37.555155', '112.159154', 0);
INSERT INTO `cms_city` VALUES ('101110101', 'xian', '西安', 'shan-xi', '陕西', 'China', '中国', 'xian', '西安', '34.263161', '108.948024', 0);
INSERT INTO `cms_city` VALUES ('101110102', 'changan', '长安', 'shan-xi', '陕西', 'China', '中国', 'xian', '西安', '34.157097', '108.941579', 0);
INSERT INTO `cms_city` VALUES ('101110103', 'lintong', '临潼', 'shan-xi', '陕西', 'China', '中国', 'xian', '西安', '34.372065', '109.213986', 0);
INSERT INTO `cms_city` VALUES ('101110104', 'lantian', '蓝田', 'shan-xi', '陕西', 'China', '中国', 'xian', '西安', '34.156189', '109.317634', 0);
INSERT INTO `cms_city` VALUES ('101110105', 'zhouzhi', '周至', 'shan-xi', '陕西', 'China', '中国', 'xian', '西安', '34.161532', '108.216465', 0);
INSERT INTO `cms_city` VALUES ('101110106', 'huxian', '户县', 'shan-xi', '陕西', 'China', '中国', 'xian', '西安', '34.108668', '108.607385', 0);
INSERT INTO `cms_city` VALUES ('101110107', 'gaoling', '高陵', 'shan-xi', '陕西', 'China', '中国', 'xian', '西安', '34.535065', '109.088896', 0);
INSERT INTO `cms_city` VALUES ('101110108', 'xincheng', '新城', 'shanxi', '陕西', 'China', '中国', 'xian', '西安', '34.26927', '108.959903', 0);
INSERT INTO `cms_city` VALUES ('101110109', 'beilin', '碑林', 'shanxi', '陕西', 'China', '中国', 'xian', '西安', '34.251061', '108.946994', 0);
INSERT INTO `cms_city` VALUES ('101110110', 'lianhu', '莲湖', 'shanxi', '陕西', 'China', '中国', 'xian', '西安', '34.2656', '108.933194', 0);
INSERT INTO `cms_city` VALUES ('101110111', 'baqiao', '灞桥', 'shanxi', '陕西', 'China', '中国', 'xian', '西安', '34.267453', '109.067261', 0);
INSERT INTO `cms_city` VALUES ('101110112', 'weiyang', '未央', 'shanxi', '陕西', 'China', '中国', 'xian', '西安', '34.30823', '108.946022', 0);
INSERT INTO `cms_city` VALUES ('101110113', 'yanta', '雁塔', 'shanxi', '陕西', 'China', '中国', 'xian', '西安', '34.213389', '108.926593', 0);
INSERT INTO `cms_city` VALUES ('101110114', 'yanliang', '阎良', 'shanxi', '陕西', 'China', '中国', 'xian', '西安', '34.662141', '109.22802', 0);
INSERT INTO `cms_city` VALUES ('101110200', 'xianyang', '咸阳', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '34.333439', '108.705117', 0);
INSERT INTO `cms_city` VALUES ('101110201', 'sanyuan', '三原', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '34.613996', '108.943481', 0);
INSERT INTO `cms_city` VALUES ('101110202', 'liquan', '礼泉', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '34.482583', '108.428317', 0);
INSERT INTO `cms_city` VALUES ('101110203', 'yongshou', '永寿', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '34.692619', '108.143129', 0);
INSERT INTO `cms_city` VALUES ('101110204', 'chunhua', '淳化', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '34.79797', '108.581173', 0);
INSERT INTO `cms_city` VALUES ('101110205', 'jingyang', '泾阳', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '34.528493', '108.83784', 0);
INSERT INTO `cms_city` VALUES ('101110206', 'wugong', '武功', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '34.259732', '108.212857', 0);
INSERT INTO `cms_city` VALUES ('101110207', 'qianxian', '乾县', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '34.527261', '108.247406', 0);
INSERT INTO `cms_city` VALUES ('101110208', 'binxian', '彬县', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '35.034233', '108.083674', 0);
INSERT INTO `cms_city` VALUES ('101110209', 'changwu', '长武', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '35.206122', '107.795835', 0);
INSERT INTO `cms_city` VALUES ('101110210', 'xunyi', '旬邑', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '35.112234', '108.337231', 0);
INSERT INTO `cms_city` VALUES ('101110211', 'xingping', '兴平', 'shan-xi', '陕西', 'China', '中国', 'xianyang', '咸阳', '34.297134', '108.488493', 0);
INSERT INTO `cms_city` VALUES ('101110212', 'qindou', '秦都', 'shanxi', '陕西', 'China', '中国', 'xianyang', '咸阳', '34.329801', '108.698636', 0);
INSERT INTO `cms_city` VALUES ('101110213', 'weicheng', '渭城', 'shanxi', '陕西', 'China', '中国', 'xianyang', '咸阳', '34.336847', '108.730957', 0);
INSERT INTO `cms_city` VALUES ('101110300', 'yanan', '延安', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '36.596537', '109.49081', 0);
INSERT INTO `cms_city` VALUES ('101110301', 'yanchang', '延长', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '36.578306', '110.012961', 0);
INSERT INTO `cms_city` VALUES ('101110302', 'yanchuan', '延川', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '36.882066', '110.190314', 0);
INSERT INTO `cms_city` VALUES ('101110303', 'zichang', '子长', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '37.14207', '109.675968', 0);
INSERT INTO `cms_city` VALUES ('101110304', 'yichuan', '宜川', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '36.050391', '110.175537', 0);
INSERT INTO `cms_city` VALUES ('101110305', 'fuxian', '富县', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '35.996495', '109.384136', 0);
INSERT INTO `cms_city` VALUES ('101110306', 'zhidan', '志丹', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '36.823031', '108.768898', 0);
INSERT INTO `cms_city` VALUES ('101110307', 'ansai', '安塞', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '36.86441', '109.325341', 0);
INSERT INTO `cms_city` VALUES ('101110308', 'ganquan', '甘泉', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '36.277729', '109.34961', 0);
INSERT INTO `cms_city` VALUES ('101110309', 'luochuan', '洛川', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '35.762133', '109.435712', 0);
INSERT INTO `cms_city` VALUES ('101110310', 'huangling', '黄陵', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '35.580165', '109.262469', 0);
INSERT INTO `cms_city` VALUES ('101110311', 'huanglong', '黄龙', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '35.583276', '109.83502', 0);
INSERT INTO `cms_city` VALUES ('101110312', 'wuqi', '吴起', 'shan-xi', '陕西', 'China', '中国', 'yanan', '延安', '36.924852', '108.176976', 0);
INSERT INTO `cms_city` VALUES ('101110313', 'baota', '宝塔', 'shanxi', '陕西', 'China', '中国', 'yanan', '延安', '36.596291', '109.49069', 0);
INSERT INTO `cms_city` VALUES ('101110401', 'yulin', '榆林', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '38.290162', '109.741193', 0);
INSERT INTO `cms_city` VALUES ('101110402', 'fugu', '府谷', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '39.029243', '111.069645', 0);
INSERT INTO `cms_city` VALUES ('101110403', 'shenmu', '神木', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '38.835641', '110.497005', 0);
INSERT INTO `cms_city` VALUES ('101110404', 'jiaxian', '佳县', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '38.021597', '110.493367', 0);
INSERT INTO `cms_city` VALUES ('101110405', 'dingbian', '定边', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '37.59523', '107.601284', 0);
INSERT INTO `cms_city` VALUES ('101110406', 'jingbian', '靖边', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '37.596084', '108.80567', 0);
INSERT INTO `cms_city` VALUES ('101110407', 'hengshan', '横山', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '37.964048', '109.292596', 0);
INSERT INTO `cms_city` VALUES ('101110408', 'mizhi', '米脂', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '37.759081', '110.178683', 0);
INSERT INTO `cms_city` VALUES ('101110409', 'zizhou', '子洲', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '37.611573', '110.03457', 0);
INSERT INTO `cms_city` VALUES ('101110410', 'suide', '绥德', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '37.507701', '110.265377', 0);
INSERT INTO `cms_city` VALUES ('101110411', 'wubu', '吴堡', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '37.451925', '110.739315', 0);
INSERT INTO `cms_city` VALUES ('101110412', 'qingjian', '清涧', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '37.087702', '110.12146', 0);
INSERT INTO `cms_city` VALUES ('101110413', 'yuyang', '榆阳', 'shan-xi', '陕西', 'China', '中国', 'yulin', '榆林', '38.299267', '109.74791', 0);
INSERT INTO `cms_city` VALUES ('101110501', 'weinan', '渭南', 'shan-xi', '陕西', 'China', '中国', 'weinan', '渭南', '34.499381', '109.502882', 0);
INSERT INTO `cms_city` VALUES ('101110502', 'huaxian', '华县', 'shan-xi', '陕西', 'China', '中国', 'weinan', '渭南', '34.31', '109.44', 0);
INSERT INTO `cms_city` VALUES ('101110503', 'tongguan', '潼关', 'shan-xi', '陕西', 'China', '中国', 'weinan', '渭南', '34.544515', '110.24726', 0);
INSERT INTO `cms_city` VALUES ('101110504', 'dali', '大荔', 'shan-xi', '陕西', 'China', '中国', 'weinan', '渭南', '34.795011', '109.943123', 0);
INSERT INTO `cms_city` VALUES ('101110505', 'baishui', '白水', 'shan-xi', '陕西', 'China', '中国', 'weinan', '渭南', '35.177291', '109.594309', 0);
INSERT INTO `cms_city` VALUES ('101110506', 'fuping', '富平', 'shan-xi', '陕西', 'China', '中国', 'weinan', '渭南', '34.746679', '109.187174', 0);
INSERT INTO `cms_city` VALUES ('101110507', 'pucheng', '蒲城', 'shan-xi', '陕西', 'China', '中国', 'weinan', '渭南', '34.956034', '109.589653', 0);
INSERT INTO `cms_city` VALUES ('101110508', 'chengcheng', '澄城', 'shan-xi', '陕西', 'China', '中国', 'weinan', '渭南', '35.184', '109.937609', 0);
INSERT INTO `cms_city` VALUES ('101110509', 'heyang', '合阳', 'shan-xi', '陕西', 'China', '中国', 'weinan', '渭南', '35.237098', '110.147979', 0);
INSERT INTO `cms_city` VALUES ('101110510', 'hancheng', '韩城', 'shan-xi', '陕西', 'China', '中国', 'weinan', '渭南', '35.475238', '110.452391', 0);
INSERT INTO `cms_city` VALUES ('101110511', 'huayin', '华阴', 'shan-xi', '陕西', 'China', '中国', 'weinan', '渭南', '34.565359', '110.08952', 0);
INSERT INTO `cms_city` VALUES ('101110512', 'linwei', '临渭', 'shanxi', '陕西', 'China', '中国', 'weinan', '渭南', '34.501271', '109.503299', 0);
INSERT INTO `cms_city` VALUES ('101110513', 'huazhou', '华州', 'shanxi', '陕西', 'China', '中国', 'weinan', '渭南', '34.511958', '109.76141', 0);
INSERT INTO `cms_city` VALUES ('101110601', 'shangluo', '商洛', 'shan-xi', '陕西', 'China', '中国', 'shangluo', '商洛', '33.868319', '109.939776', 0);
INSERT INTO `cms_city` VALUES ('101110602', 'luonan', '洛南', 'shan-xi', '陕西', 'China', '中国', 'shangluo', '商洛', '34.088502', '110.145716', 0);
INSERT INTO `cms_city` VALUES ('101110603', 'zhashui', '柞水', 'shan-xi', '陕西', 'China', '中国', 'shangluo', '商洛', '33.682773', '109.111249', 0);
INSERT INTO `cms_city` VALUES ('101110604', 'shangzhou', '商州', 'shan-xi', '陕西', 'China', '中国', 'shangluo', '商洛', '33.869208', '109.937685', 0);
INSERT INTO `cms_city` VALUES ('101110605', 'zhenan', '镇安', 'shan-xi', '陕西', 'China', '中国', 'shangluo', '商洛', '33.423981', '109.151075', 0);
INSERT INTO `cms_city` VALUES ('101110606', 'danfeng', '丹凤', 'shan-xi', '陕西', 'China', '中国', 'shangluo', '商洛', '33.694711', '110.33191', 0);
INSERT INTO `cms_city` VALUES ('101110607', 'shangnan', '商南', 'shan-xi', '陕西', 'China', '中国', 'shangluo', '商洛', '33.526367', '110.885437', 0);
INSERT INTO `cms_city` VALUES ('101110608', 'shanyang', '山阳', 'shan-xi', '陕西', 'China', '中国', 'shangluo', '商洛', '33.530411', '109.880435', 0);
INSERT INTO `cms_city` VALUES ('101110701', 'ankang', '安康', 'shan-xi', '陕西', 'China', '中国', 'ankang', '安康', '32.6903', '109.029273', 0);
INSERT INTO `cms_city` VALUES ('101110702', 'ziyang', '紫阳', 'shan-xi', '陕西', 'China', '中国', 'ankang', '安康', '32.520176', '108.537788', 0);
INSERT INTO `cms_city` VALUES ('101110703', 'shiquan', '石泉', 'shan-xi', '陕西', 'China', '中国', 'ankang', '安康', '33.038512', '108.250512', 0);
INSERT INTO `cms_city` VALUES ('101110704', 'hanyin', '汉阴', 'shan-xi', '陕西', 'China', '中国', 'ankang', '安康', '32.891121', '108.510946', 0);
INSERT INTO `cms_city` VALUES ('101110705', 'xunyang', '旬阳', 'shan-xi', '陕西', 'China', '中国', 'ankang', '安康', '32.833567', '109.368149', 0);
INSERT INTO `cms_city` VALUES ('101110706', 'langao', '岚皋', 'shan-xi', '陕西', 'China', '中国', 'ankang', '安康', '32.31069', '108.900663', 0);
INSERT INTO `cms_city` VALUES ('101110707', 'pingli', '平利', 'shan-xi', '陕西', 'China', '中国', 'ankang', '安康', '32.387933', '109.361865', 0);
INSERT INTO `cms_city` VALUES ('101110708', 'baihe', '白河', 'shan-xi', '陕西', 'China', '中国', 'ankang', '安康', '32.809484', '110.114186', 0);
INSERT INTO `cms_city` VALUES ('101110709', 'zhenping', '镇坪', 'shan-xi', '陕西', 'China', '中国', 'ankang', '安康', '31.883395', '109.526437', 0);
INSERT INTO `cms_city` VALUES ('101110710', 'ningshan', '宁陕', 'shan-xi', '陕西', 'China', '中国', 'ankang', '安康', '33.312184', '108.313714', 0);
INSERT INTO `cms_city` VALUES ('101110711', 'hanbin', '汉滨', 'shanxi', '陕西', 'China', '中国', 'ankang', '安康', '32.690817', '109.029098', 0);
INSERT INTO `cms_city` VALUES ('101110801', 'hanzhong', '汉中', 'shan-xi', '陕西', 'China', '中国', 'hanzhong', '汉中', '33.077668', '107.028621', 0);
INSERT INTO `cms_city` VALUES ('101110802', 'lueyang', '略阳', 'shan-xi', '陕西', 'China', '中国', 'hanzhong', '汉中', '33.329638', '106.153899', 0);
INSERT INTO `cms_city` VALUES ('101110803', 'mianxian', '勉县', 'shan-xi', '陕西', 'China', '中国', 'hanzhong', '汉中', '33.155618', '106.680175', 0);
INSERT INTO `cms_city` VALUES ('101110804', 'liuba', '留坝', 'shan-xi', '陕西', 'China', '中国', 'hanzhong', '汉中', '33.61334', '106.924377', 0);
INSERT INTO `cms_city` VALUES ('101110805', 'yangxian', '洋县', 'shan-xi', '陕西', 'China', '中国', 'hanzhong', '汉中', '33.223283', '107.549962', 0);
INSERT INTO `cms_city` VALUES ('101110806', 'chenggu', '城固', 'shan-xi', '陕西', 'China', '中国', 'hanzhong', '汉中', '33.153098', '107.329887', 0);
INSERT INTO `cms_city` VALUES ('101110807', 'xixiang', '西乡', 'shan-xi', '陕西', 'China', '中国', 'hanzhong', '汉中', '32.987961', '107.765858', 0);
INSERT INTO `cms_city` VALUES ('101110808', 'fuoping', '佛坪', 'shan-xi', '陕西', 'China', '中国', 'hanzhong', '汉中', '33.520745', '107.988582', 0);
INSERT INTO `cms_city` VALUES ('101110809', 'ningqiang', '宁强', 'shan-xi', '陕西', 'China', '中国', 'hanzhong', '汉中', '32.830806', '106.25739', 0);
INSERT INTO `cms_city` VALUES ('101110810', 'nanzheng', '南郑', 'shan-xi', '陕西', 'China', '中国', 'hanzhong', '汉中', '33.003341', '106.942393', 0);
INSERT INTO `cms_city` VALUES ('101110811', 'zhenba', '镇巴', 'shan-xi', '陕西', 'China', '中国', 'hanzhong', '汉中', '32.535854', '107.89531', 0);
INSERT INTO `cms_city` VALUES ('101110812', 'hantai', '汉台', 'shanxi', '陕西', 'China', '中国', 'hanzhong', '汉中', '33.077674', '107.028233', 0);
INSERT INTO `cms_city` VALUES ('101110901', 'baoji', '宝鸡', 'shan-xi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.369315', '107.14487', 0);
INSERT INTO `cms_city` VALUES ('101110902', 'weibin', '渭滨', 'shanxi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.371008', '107.144467', 0);
INSERT INTO `cms_city` VALUES ('101110903', 'qianyang', '千阳', 'shan-xi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.642584', '107.132987', 0);
INSERT INTO `cms_city` VALUES ('101110904', 'linyou', '麟游', 'shan-xi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.677714', '107.796608', 0);
INSERT INTO `cms_city` VALUES ('101110905', 'qishan', '岐山', 'shan-xi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.44296', '107.624464', 0);
INSERT INTO `cms_city` VALUES ('101110906', 'fengxiang', '凤翔', 'shan-xi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.521668', '107.400577', 0);
INSERT INTO `cms_city` VALUES ('101110907', 'fufeng', '扶风', 'shan-xi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.375497', '107.891419', 0);
INSERT INTO `cms_city` VALUES ('101110908', 'meixian', '眉县', 'shan-xi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.272137', '107.752371', 0);
INSERT INTO `cms_city` VALUES ('101110909', 'taibai', '太白', 'shan-xi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.059215', '107.316533', 0);
INSERT INTO `cms_city` VALUES ('101110910', 'fengxian', '凤县', 'shan-xi', '陕西', 'China', '中国', 'baoji', '宝鸡', '33.912464', '106.525212', 0);
INSERT INTO `cms_city` VALUES ('101110911', 'longxian', '陇县', 'shan-xi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.893262', '106.857066', 0);
INSERT INTO `cms_city` VALUES ('101110912', 'chencang', '陈仓', 'shan-xi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.352747', '107.383645', 0);
INSERT INTO `cms_city` VALUES ('101110913', 'jintai', '金台', 'shanxi', '陕西', 'China', '中国', 'baoji', '宝鸡', '34.375192', '107.149943', 0);
INSERT INTO `cms_city` VALUES ('101111001', 'tongchuan', '铜川', 'shan-xi', '陕西', 'China', '中国', 'tongchuan', '铜川', '34.916582', '108.979608', 0);
INSERT INTO `cms_city` VALUES ('101111003', 'yijun', '宜君', 'shan-xi', '陕西', 'China', '中国', 'tongchuan', '铜川', '35.398766', '109.118278', 0);
INSERT INTO `cms_city` VALUES ('101111004', 'yaozhou', '耀州', 'shan-xi', '陕西', 'China', '中国', 'tongchuan', '铜川', '34.910206', '108.962538', 0);
INSERT INTO `cms_city` VALUES ('101111005', 'wangyi', '王益', 'shanxi', '陕西', 'China', '中国', 'tongchuan', '铜川', '35.069098', '109.075862', 0);
INSERT INTO `cms_city` VALUES ('101111006', 'yintai', '印台', 'shanxi', '陕西', 'China', '中国', 'tongchuan', '铜川', '35.111927', '109.100814', 0);
INSERT INTO `cms_city` VALUES ('101111101', 'yangling', '杨凌', 'shan-xi', '陕西', 'China', '中国', 'yangling', '杨凌', '34.28', '108.07', 0);
INSERT INTO `cms_city` VALUES ('101111102', 'yangling', '杨陵', 'shanxi', '陕西', 'China', '中国', 'yangling', '杨凌', '34.27135', '108.086348', 0);
INSERT INTO `cms_city` VALUES ('101120101', 'jinan', '济南', 'shandong', '山东', 'China', '中国', 'jinan', '济南', '36.675807', '117.000923', 0);
INSERT INTO `cms_city` VALUES ('101120102', 'changqing', '长清', 'shandong', '山东', 'China', '中国', 'jinan', '济南', '36.561049', '116.74588', 0);
INSERT INTO `cms_city` VALUES ('101120103', 'shanghe', '商河', 'shandong', '山东', 'China', '中国', 'jinan', '济南', '37.310544', '117.156369', 0);
INSERT INTO `cms_city` VALUES ('101120104', 'zhangqiu', '章丘', 'shandong', '山东', 'China', '中国', 'jinan', '济南', '36.71209', '117.54069', 0);
INSERT INTO `cms_city` VALUES ('101120105', 'pingyin', '平阴', 'shandong', '山东', 'China', '中国', 'jinan', '济南', '36.286923', '116.455054', 0);
INSERT INTO `cms_city` VALUES ('101120106', 'jiyang', '济阳', 'shandong', '山东', 'China', '中国', 'jinan', '济南', '36.976772', '117.176035', 0);
INSERT INTO `cms_city` VALUES ('101120107', 'lixia', '历下', 'shandong', '山东', 'China', '中国', 'jinan', '济南', '36.664169', '117.03862', 0);
INSERT INTO `cms_city` VALUES ('101120108', 'shizhong', '市中', 'shandong', '山东', 'China', '中国', 'jinan', '济南', '36.657354', '116.99898', 0);
INSERT INTO `cms_city` VALUES ('101120109', 'huaiyin', '槐荫', 'shandong', '山东', 'China', '中国', 'jinan', '济南', '36.668205', '116.947921', 0);
INSERT INTO `cms_city` VALUES ('101120110', 'tianqiao', '天桥', 'shandong', '山东', 'China', '中国', 'jinan', '济南', '36.693374', '116.996086', 0);
INSERT INTO `cms_city` VALUES ('101120111', 'licheng', '历城', 'shandong', '山东', 'China', '中国', 'jinan', '济南', '36.681744', '117.063744', 0);
INSERT INTO `cms_city` VALUES ('101120201', 'qingdao', '青岛', 'shandong', '山东', 'China', '中国', 'qingdao', '青岛', '36.082982', '120.355173', 0);
INSERT INTO `cms_city` VALUES ('101120202', 'laoshan', '崂山', 'shandong', '山东', 'China', '中国', 'qingdao', '青岛', '36.102569', '120.467393', 0);
INSERT INTO `cms_city` VALUES ('101120203', 'shinan', '市南', 'shandong', '山东', 'China', '中国', 'qingdao', '青岛', '36.070892', '120.395966', 0);
INSERT INTO `cms_city` VALUES ('101120204', 'jimo', '即墨', 'shandong', '山东', 'China', '中国', 'qingdao', '青岛', '36.390847', '120.447352', 0);
INSERT INTO `cms_city` VALUES ('101120205', 'jiaozhou', '胶州', 'shandong', '山东', 'China', '中国', 'qingdao', '青岛', '36.285878', '120.006202', 0);
INSERT INTO `cms_city` VALUES ('101120206', 'huangdao', '黄岛', 'shandong', '山东', 'China', '中国', 'qingdao', '青岛', '35.875138', '119.995518', 0);
INSERT INTO `cms_city` VALUES ('101120207', 'laixi', '莱西', 'shandong', '山东', 'China', '中国', 'qingdao', '青岛', '36.86509', '120.526226', 0);
INSERT INTO `cms_city` VALUES ('101120208', 'pingdu', '平度', 'shandong', '山东', 'China', '中国', 'qingdao', '青岛', '36.788828', '119.959012', 0);
INSERT INTO `cms_city` VALUES ('101120209', 'shibei', '市北', 'shandong', '山东', 'China', '中国', 'qingdao', '青岛', '36.083819', '120.355026', 0);
INSERT INTO `cms_city` VALUES ('101120210', 'licang', '李沧', 'shandong', '山东', 'China', '中国', 'qingdao', '青岛', '36.160023', '120.421236', 0);
INSERT INTO `cms_city` VALUES ('101120211', 'chengyang', '城阳', 'shandong', '山东', 'China', '中国', 'qingdao', '青岛', '36.306833', '120.389135', 0);
INSERT INTO `cms_city` VALUES ('101120301', 'zibo', '淄博', 'shandong', '山东', 'China', '中国', 'zibo', '淄博', '36.814939', '118.047648', 0);
INSERT INTO `cms_city` VALUES ('101120302', 'zichuan', '淄川', 'shandong', '山东', 'China', '中国', 'zibo', '淄博', '36.647272', '117.967696', 0);
INSERT INTO `cms_city` VALUES ('101120303', 'boshan', '博山', 'shandong', '山东', 'China', '中国', 'zibo', '淄博', '36.497567', '117.85823', 0);
INSERT INTO `cms_city` VALUES ('101120304', 'gaoqing', '高青', 'shandong', '山东', 'China', '中国', 'zibo', '淄博', '37.169581', '117.829839', 0);
INSERT INTO `cms_city` VALUES ('101120305', 'zhoucun', '周村', 'shandong', '山东', 'China', '中国', 'zibo', '淄博', '36.803699', '117.851036', 0);
INSERT INTO `cms_city` VALUES ('101120306', 'yiyuan', '沂源', 'shandong', '山东', 'China', '中国', 'zibo', '淄博', '36.186282', '118.166161', 0);
INSERT INTO `cms_city` VALUES ('101120307', 'huantai', '桓台', 'shandong', '山东', 'China', '中国', 'zibo', '淄博', '36.959773', '118.101556', 0);
INSERT INTO `cms_city` VALUES ('101120308', 'linzi', '临淄', 'shandong', '山东', 'China', '中国', 'zibo', '淄博', '36.816657', '118.306018', 0);
INSERT INTO `cms_city` VALUES ('101120309', 'zhangdian', '张店', 'shandong', '山东', 'China', '中国', 'zibo', '淄博', '36.807049', '118.053521', 0);
INSERT INTO `cms_city` VALUES ('101120401', 'dezhou', '德州', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '37.453968', '116.307428', 0);
INSERT INTO `cms_city` VALUES ('101120402', 'wucheng', '武城', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '37.209527', '116.078627', 0);
INSERT INTO `cms_city` VALUES ('101120403', 'linyi', '临邑', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '37.192044', '116.867028', 0);
INSERT INTO `cms_city` VALUES ('101120405', 'qihe', '齐河', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '36.795497', '116.758394', 0);
INSERT INTO `cms_city` VALUES ('101120406', 'leling', '乐陵', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '37.729115', '117.216657', 0);
INSERT INTO `cms_city` VALUES ('101120407', 'qingyun', '庆云', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '37.777724', '117.390507', 0);
INSERT INTO `cms_city` VALUES ('101120408', 'pingyuan', '平原', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '37.164465', '116.433904', 0);
INSERT INTO `cms_city` VALUES ('101120409', 'ningjin', '宁津', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '37.649619', '116.79372', 0);
INSERT INTO `cms_city` VALUES ('101120410', 'xiajin', '夏津', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '36.950501', '116.003816', 0);
INSERT INTO `cms_city` VALUES ('101120411', 'yucheng', '禹城', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '36.934485', '116.642554', 0);
INSERT INTO `cms_city` VALUES ('101120412', 'decheng', '德城', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '37.453923', '116.307076', 0);
INSERT INTO `cms_city` VALUES ('101120413', 'lingcheng', '陵城', 'shandong', '山东', 'China', '中国', 'dezhou', '德州', '37.332848', '116.574929', 0);
INSERT INTO `cms_city` VALUES ('101120501', 'yantai', '烟台', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '37.539297', '121.391382', 0);
INSERT INTO `cms_city` VALUES ('101120502', 'laizhou', '莱州', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '37.182725', '119.942135', 0);
INSERT INTO `cms_city` VALUES ('101120503', 'changdao', '长岛', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '37.916194', '120.738345', 0);
INSERT INTO `cms_city` VALUES ('101120504', 'penglai', '蓬莱', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '37.811168', '120.762689', 0);
INSERT INTO `cms_city` VALUES ('101120505', 'longkou', '龙口', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '37.648446', '120.528328', 0);
INSERT INTO `cms_city` VALUES ('101120506', 'zhaoyuan', '招远', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '37.364919', '120.403142', 0);
INSERT INTO `cms_city` VALUES ('101120507', 'qixia', '栖霞', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '37.305854', '120.834097', 0);
INSERT INTO `cms_city` VALUES ('101120508', 'fushan', '福山', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '37.496875', '121.264741', 0);
INSERT INTO `cms_city` VALUES ('101120509', 'moup', '牟平', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '37.388356', '121.60151', 0);
INSERT INTO `cms_city` VALUES ('101120510', 'laiyang', '莱阳', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '36.977037', '120.711151', 0);
INSERT INTO `cms_city` VALUES ('101120511', 'haiyang', '海阳', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '36.780657', '121.168392', 0);
INSERT INTO `cms_city` VALUES ('101120512', 'zhifu', '芝罘', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '37.540925', '121.385877', 0);
INSERT INTO `cms_city` VALUES ('101120513', 'laishan', '莱山', 'shandong', '山东', 'China', '中国', 'yantai', '烟台', '37.473549', '121.448866', 0);
INSERT INTO `cms_city` VALUES ('101120601', 'weifang', '潍坊', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.70925', '119.107078', 0);
INSERT INTO `cms_city` VALUES ('101120602', 'qingzhou', '青州', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.697855', '118.484693', 0);
INSERT INTO `cms_city` VALUES ('101120603', 'shouguang', '寿光', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.874411', '118.736451', 0);
INSERT INTO `cms_city` VALUES ('101120604', 'linqu', '临朐', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.516371', '118.539876', 0);
INSERT INTO `cms_city` VALUES ('101120605', 'changle', '昌乐', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.703253', '118.839995', 0);
INSERT INTO `cms_city` VALUES ('101120606', 'changyi', '昌邑', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.854937', '119.394502', 0);
INSERT INTO `cms_city` VALUES ('101120607', 'anqiu', '安丘', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.427417', '119.206886', 0);
INSERT INTO `cms_city` VALUES ('101120608', 'gaomi', '高密', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.37754', '119.757033', 0);
INSERT INTO `cms_city` VALUES ('101120609', 'zhucheng', '诸城', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '35.997093', '119.403182', 0);
INSERT INTO `cms_city` VALUES ('101120610', 'weicheng', '潍城', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.710062', '119.103784', 0);
INSERT INTO `cms_city` VALUES ('101120611', 'hanting', '寒亭', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.772103', '119.207866', 0);
INSERT INTO `cms_city` VALUES ('101120612', 'fangzi', '坊子', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.654616', '119.166326', 0);
INSERT INTO `cms_city` VALUES ('101120613', 'kuiwen', '奎文', 'shandong', '山东', 'China', '中国', 'weifang', '潍坊', '36.709494', '119.137357', 0);
INSERT INTO `cms_city` VALUES ('101120701', 'jining', '济宁', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '35.415393', '116.587245', 0);
INSERT INTO `cms_city` VALUES ('101120702', 'jiaxiang', '嘉祥', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '35.398098', '116.342885', 0);
INSERT INTO `cms_city` VALUES ('101120703', 'weishan', '微山', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '34.809525', '117.12861', 0);
INSERT INTO `cms_city` VALUES ('101120704', 'yutai', '鱼台', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '34.997706', '116.650023', 0);
INSERT INTO `cms_city` VALUES ('101120705', 'yanzhou', '兖州', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '35.556445', '116.828996', 0);
INSERT INTO `cms_city` VALUES ('101120706', 'jinxiang', '金乡', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '35.06977', '116.310364', 0);
INSERT INTO `cms_city` VALUES ('101120707', 'wenshang', '汶上', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '35.721746', '116.487146', 0);
INSERT INTO `cms_city` VALUES ('101120708', 'sishui', '泗水', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '35.653216', '117.273605', 0);
INSERT INTO `cms_city` VALUES ('101120709', 'liangshan', '梁山', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '35.801843', '116.08963', 0);
INSERT INTO `cms_city` VALUES ('101120710', 'qufu', '曲阜', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '35.592788', '116.991885', 0);
INSERT INTO `cms_city` VALUES ('101120711', 'zoucheng', '邹城', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '35.405259', '116.96673', 0);
INSERT INTO `cms_city` VALUES ('101120712', 'rencheng', '任城', 'shandong', '山东', 'China', '中国', 'jining', '济宁', '35.414828', '116.595261', 0);
INSERT INTO `cms_city` VALUES ('101120801', 'taian', '泰安', 'shandong', '山东', 'China', '中国', 'taian', '泰安', '36.194968', '117.129063', 0);
INSERT INTO `cms_city` VALUES ('101120802', 'xintai', '新泰', 'shandong', '山东', 'China', '中国', 'taian', '泰安', '35.910387', '117.766092', 0);
INSERT INTO `cms_city` VALUES ('101120803', 'taishan', '泰山', 'shandong', '山东', 'China', '中国', 'taian', '泰安', '36.189313', '117.129984', 0);
INSERT INTO `cms_city` VALUES ('101120804', 'feicheng', '肥城', 'shandong', '山东', 'China', '中国', 'taian', '泰安', '36.1856', '116.763703', 0);
INSERT INTO `cms_city` VALUES ('101120805', 'dongping', '东平', 'shandong', '山东', 'China', '中国', 'taian', '泰安', '35.930467', '116.461052', 0);
INSERT INTO `cms_city` VALUES ('101120806', 'ningyang', '宁阳', 'shandong', '山东', 'China', '中国', 'taian', '泰安', '35.76754', '116.799297', 0);
INSERT INTO `cms_city` VALUES ('101120807', 'daiyue', '岱岳', 'shandong', '山东', 'China', '中国', 'taian', '泰安', '36.1841', '117.04353', 0);
INSERT INTO `cms_city` VALUES ('101120901', 'linyi', '临沂', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '35.065282', '118.326443', 0);
INSERT INTO `cms_city` VALUES ('101120902', 'junan', '莒南', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '35.175911', '118.838322', 0);
INSERT INTO `cms_city` VALUES ('101120903', 'yinan', '沂南', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '35.547002', '118.455395', 0);
INSERT INTO `cms_city` VALUES ('101120904', 'lanling', '兰陵', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '34.855573', '118.049968', 0);
INSERT INTO `cms_city` VALUES ('101120905', 'linshu', '临沭', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '34.917062', '118.648379', 0);
INSERT INTO `cms_city` VALUES ('101120906', 'tancheng', '郯城', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '34.614741', '118.342963', 0);
INSERT INTO `cms_city` VALUES ('101120907', 'mengyin', '蒙阴', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '35.712435', '117.943271', 0);
INSERT INTO `cms_city` VALUES ('101120908', 'pingyi', '平邑', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '35.511519', '117.631884', 0);
INSERT INTO `cms_city` VALUES ('101120909', 'feixian', '费县', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '35.269174', '117.968869', 0);
INSERT INTO `cms_city` VALUES ('101120910', 'yishui', '沂水', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '35.787029', '118.634543', 0);
INSERT INTO `cms_city` VALUES ('101120911', 'lanshan', '兰山', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '35.061631', '118.327667', 0);
INSERT INTO `cms_city` VALUES ('101120912', 'luozhuang', '罗庄', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '34.997204', '118.284795', 0);
INSERT INTO `cms_city` VALUES ('101120913', 'hedong', '河东', 'shandong', '山东', 'China', '中国', 'linyi', '临沂', '35.085004', '118.398296', 0);
INSERT INTO `cms_city` VALUES ('101121001', 'heze', '菏泽', 'shandong', '山东', 'China', '中国', 'heze', '菏泽', '35.246531', '115.469381', 0);
INSERT INTO `cms_city` VALUES ('101121002', 'juancheng', '鄄城', 'shandong', '山东', 'China', '中国', 'heze', '菏泽', '35.560257', '115.51434', 0);
INSERT INTO `cms_city` VALUES ('101121003', 'yuncheng', '郓城', 'shandong', '山东', 'China', '中国', 'heze', '菏泽', '35.594773', '115.93885', 0);
INSERT INTO `cms_city` VALUES ('101121004', 'dongming', '东明', 'shandong', '山东', 'China', '中国', 'heze', '菏泽', '35.289637', '115.098412', 0);
INSERT INTO `cms_city` VALUES ('101121005', 'dingtao', '定陶', 'shandong', '山东', 'China', '中国', 'heze', '菏泽', '35.072701', '115.569601', 0);
INSERT INTO `cms_city` VALUES ('101121006', 'juye', '巨野', 'shandong', '山东', 'China', '中国', 'heze', '菏泽', '35.390999', '116.089341', 0);
INSERT INTO `cms_city` VALUES ('101121007', 'caoxian', '曹县', 'shandong', '山东', 'China', '中国', 'heze', '菏泽', '34.823253', '115.549482', 0);
INSERT INTO `cms_city` VALUES ('101121008', 'chengwu', '成武', 'shandong', '山东', 'China', '中国', 'heze', '菏泽', '34.947366', '115.897349', 0);
INSERT INTO `cms_city` VALUES ('101121009', 'shanxian', '单县', 'shandong', '山东', 'China', '中国', 'heze', '菏泽', '34.790851', '116.08262', 0);
INSERT INTO `cms_city` VALUES ('101121010', 'mudan', '牡丹', 'shandong', '山东', 'China', '中国', 'heze', '菏泽', '35.24311', '115.470946', 0);
INSERT INTO `cms_city` VALUES ('101121101', 'binzhou', '滨州', 'shandong', '山东', 'China', '中国', 'binzhou', '滨州', '37.383542', '118.016974', 0);
INSERT INTO `cms_city` VALUES ('101121102', 'boxing', '博兴', 'shandong', '山东', 'China', '中国', 'binzhou', '滨州', '37.147002', '118.123096', 0);
INSERT INTO `cms_city` VALUES ('101121103', 'wudi', '无棣', 'shandong', '山东', 'China', '中国', 'binzhou', '滨州', '37.740848', '117.616325', 0);
INSERT INTO `cms_city` VALUES ('101121104', 'yangxin', '阳信', 'shandong', '山东', 'China', '中国', 'binzhou', '滨州', '37.640492', '117.581326', 0);
INSERT INTO `cms_city` VALUES ('101121105', 'huimin', '惠民', 'shandong', '山东', 'China', '中国', 'binzhou', '滨州', '37.483876', '117.508941', 0);
INSERT INTO `cms_city` VALUES ('101121106', 'zhanhua', '沾化', 'shandong', '山东', 'China', '中国', 'binzhou', '滨州', '37.698456', '118.129902', 0);
INSERT INTO `cms_city` VALUES ('101121107', 'zouping', '邹平', 'shandong', '山东', 'China', '中国', 'binzhou', '滨州', '36.87803', '117.736807', 0);
INSERT INTO `cms_city` VALUES ('101121108', 'bincheng', '滨城', 'shandong', '山东', 'China', '中国', 'binzhou', '滨州', '37.384842', '118.020149', 0);
INSERT INTO `cms_city` VALUES ('101121201', 'dongying', '东营', 'shandong', '山东', 'China', '中国', 'dongying', '东营', '37.461567', '118.507543', 0);
INSERT INTO `cms_city` VALUES ('101121202', 'hekou', '河口', 'shandong', '山东', 'China', '中国', 'dongying', '东营', '37.886015', '118.529613', 0);
INSERT INTO `cms_city` VALUES ('101121203', 'kenli', '垦利', 'shandong', '山东', 'China', '中国', 'dongying', '东营', '37.588679', '118.551314', 0);
INSERT INTO `cms_city` VALUES ('101121204', 'lijin', '利津', 'shandong', '山东', 'China', '中国', 'dongying', '东营', '37.493365', '118.248854', 0);
INSERT INTO `cms_city` VALUES ('101121205', 'guangrao', '广饶', 'shandong', '山东', 'China', '中国', 'dongying', '东营', '37.05161', '118.407522', 0);
INSERT INTO `cms_city` VALUES ('101121301', 'weihai', '威海', 'shandong', '山东', 'China', '中国', 'weihai', '威海', '37.509691', '122.116394', 0);
INSERT INTO `cms_city` VALUES ('101121302', 'wendeng', '文登', 'shandong', '山东', 'China', '中国', 'weihai', '威海', '37.196211', '122.057139', 0);
INSERT INTO `cms_city` VALUES ('101121303', 'rongcheng', '荣成', 'shandong', '山东', 'China', '中国', 'weihai', '威海', '37.160134', '122.422896', 0);
INSERT INTO `cms_city` VALUES ('101121304', 'rushan', '乳山', 'shandong', '山东', 'China', '中国', 'weihai', '威海', '36.919622', '121.536346', 0);
INSERT INTO `cms_city` VALUES ('101121307', 'huancui', '环翠', 'shandong', '山东', 'China', '中国', 'weihai', '威海', '37.510754', '122.116189', 0);
INSERT INTO `cms_city` VALUES ('101121401', 'zaozhuang', '枣庄', 'shandong', '山东', 'China', '中国', 'zaozhuang', '枣庄', '34.856424', '117.557964', 0);
INSERT INTO `cms_city` VALUES ('101121402', 'xuecheng', '薛城', 'shandong', '山东', 'China', '中国', 'zaozhuang', '枣庄', '34.79789', '117.265293', 0);
INSERT INTO `cms_city` VALUES ('101121403', 'yicheng', '峄城', 'shandong', '山东', 'China', '中国', 'zaozhuang', '枣庄', '34.767713', '117.586316', 0);
INSERT INTO `cms_city` VALUES ('101121404', 'taierzhuang', '台儿庄', 'shandong', '山东', 'China', '中国', 'zaozhuang', '枣庄', '34.564815', '117.734747', 0);
INSERT INTO `cms_city` VALUES ('101121405', 'tengzhou', '滕州', 'shandong', '山东', 'China', '中国', 'zaozhuang', '枣庄', '35.088498', '117.162098', 0);
INSERT INTO `cms_city` VALUES ('101121406', 'shizhong', '市中', 'shandong', '山东', 'China', '中国', 'zaozhuang', '枣庄', '34.856651', '117.557281', 0);
INSERT INTO `cms_city` VALUES ('101121407', 'shanting', '山亭', 'shandong', '山东', 'China', '中国', 'zaozhuang', '枣庄', '35.096077', '117.458968', 0);
INSERT INTO `cms_city` VALUES ('101121501', 'rizhao', '日照', 'shandong', '山东', 'China', '中国', 'rizhao', '日照', '35.428588', '119.461208', 0);
INSERT INTO `cms_city` VALUES ('101121502', 'wulian', '五莲', 'shandong', '山东', 'China', '中国', 'rizhao', '日照', '35.751936', '119.206745', 0);
INSERT INTO `cms_city` VALUES ('101121503', 'juxian', '莒县', 'shandong', '山东', 'China', '中国', 'rizhao', '日照', '35.588115', '118.832859', 0);
INSERT INTO `cms_city` VALUES ('101121504', 'donggang', '东港', 'shandong', '山东', 'China', '中国', 'rizhao', '日照', '35.426152', '119.457703', 0);
INSERT INTO `cms_city` VALUES ('101121505', 'lanshan', '岚山', 'shandong', '山东', 'China', '中国', 'rizhao', '日照', '35.119794', '119.315844', 0);
INSERT INTO `cms_city` VALUES ('101121601', 'laiwu', '莱芜', 'shandong', '山东', 'China', '中国', 'laiwu', '莱芜', '36.214397', '117.677736', 0);
INSERT INTO `cms_city` VALUES ('101121602', 'laicheng', '莱城', 'shandong', '山东', 'China', '中国', 'laiwu', '莱芜', '36.213662', '117.678351', 0);
INSERT INTO `cms_city` VALUES ('101121603', 'gangcheng', '钢城', 'shandong', '山东', 'China', '中国', 'laiwu', '莱芜', '36.058038', '117.82033', 0);
INSERT INTO `cms_city` VALUES ('101121701', 'liaocheng', '聊城', 'shandong', '山东', 'China', '中国', 'liaocheng', '聊城', '36.456013', '115.980367', 0);
INSERT INTO `cms_city` VALUES ('101121702', 'guanxian', '冠县', 'shandong', '山东', 'China', '中国', 'liaocheng', '聊城', '36.483753', '115.444808', 0);
INSERT INTO `cms_city` VALUES ('101121703', 'yanggu', '阳谷', 'shandong', '山东', 'China', '中国', 'liaocheng', '聊城', '36.113708', '115.784287', 0);
INSERT INTO `cms_city` VALUES ('101121704', 'gaotang', '高唐', 'shandong', '山东', 'China', '中国', 'liaocheng', '聊城', '36.859755', '116.229662', 0);
INSERT INTO `cms_city` VALUES ('101121705', 'chiping', '茌平', 'shandong', '山东', 'China', '中国', 'liaocheng', '聊城', '36.591934', '116.25335', 0);
INSERT INTO `cms_city` VALUES ('101121706', 'donge', '东阿', 'shandong', '山东', 'China', '中国', 'liaocheng', '聊城', '36.336004', '116.248855', 0);
INSERT INTO `cms_city` VALUES ('101121707', 'linqing', '临清', 'shandong', '山东', 'China', '中国', 'liaocheng', '聊城', '36.842598', '115.713462', 0);
INSERT INTO `cms_city` VALUES ('101121708', 'dongchangfu', '东昌府', 'shandong', '山东', 'China', '中国', 'liaocheng', '聊城', '36.45606', '115.980023', 0);
INSERT INTO `cms_city` VALUES ('101121709', 'shenxian', '莘县', 'shandong', '山东', 'China', '中国', 'liaocheng', '聊城', '36.237597', '115.667291', 0);
INSERT INTO `cms_city` VALUES ('101130101', 'wulumuqi', '乌鲁木齐', 'xinjiang', '新疆', 'China', '中国', 'wulumuqi', '乌鲁木齐', '43.792818', '87.617733', 0);
INSERT INTO `cms_city` VALUES ('101130102', 'tianshan', '天山', 'xinjiang', '新疆', 'China', '中国', 'wulumuqi', '乌鲁木齐', '43.796428', '87.620116', 0);
INSERT INTO `cms_city` VALUES ('101130104', 'shayibake', '沙依巴克', 'xinjiang', '新疆', 'China', '中国', 'wulumuqi', '乌鲁木齐', '43.788872', '87.596639', 0);
INSERT INTO `cms_city` VALUES ('101130105', 'dabancheng', '达坂城', 'xinjiang', '新疆', 'China', '中国', 'wulumuqi', '乌鲁木齐', '43.36181', '88.30994', 0);
INSERT INTO `cms_city` VALUES ('101130106', 'xinshi', '新市', 'xinjiang', '新疆', 'China', '中国', 'wulumuqi', '乌鲁木齐', '43.870882', '87.560653', 0);
INSERT INTO `cms_city` VALUES ('101130107', 'shuimogou', '水磨沟', 'xinjiang', '新疆', 'China', '中国', 'wulumuqi', '乌鲁木齐', '43.816747', '87.613093', 0);
INSERT INTO `cms_city` VALUES ('101130111', 'toutunhe', '头屯河', 'xinjiang', '新疆', 'China', '中国', 'wulumuqi', '乌鲁木齐', '43.876053', '87.425823', 0);
INSERT INTO `cms_city` VALUES ('101130112', 'midong', '米东', 'xinjiang', '新疆', 'China', '中国', 'wulumuqi', '乌鲁木齐', '43.960982', '87.691801', 0);
INSERT INTO `cms_city` VALUES ('101130113', 'wulumuqixian', '乌鲁木齐县', 'xinjiang', '新疆', 'China', '中国', 'wulumuqi', '乌鲁木齐', '43.982546', '87.505603', 0);
INSERT INTO `cms_city` VALUES ('101130201', 'kelamayi', '克拉玛依', 'xinjiang', '新疆', 'China', '中国', 'kelamayi', '克拉玛依', '45.595886', '84.873946', 0);
INSERT INTO `cms_city` VALUES ('101130202', 'wuerhe', '乌尔禾', 'xinjiang', '新疆', 'China', '中国', 'kelamayi', '克拉玛依', '46.08776', '85.697767', 0);
INSERT INTO `cms_city` VALUES ('101130203', 'baijiantan', '白碱滩', 'xinjiang', '新疆', 'China', '中国', 'kelamayi', '克拉玛依', '45.689021', '85.129882', 0);
INSERT INTO `cms_city` VALUES ('101130204', 'dushanzi', '独山子', 'xinjiang', '新疆', 'China', '中国', 'kelamayi', '克拉玛依', '44.327207', '84.882267', 0);
INSERT INTO `cms_city` VALUES ('101130301', 'shihezi', '石河子', 'xinjiang', '新疆', 'China', '中国', 'shihezi', '石河子', '44.305886', '86.041075', 0);
INSERT INTO `cms_city` VALUES ('101130401', 'changji', '昌吉', 'xinjiang', '新疆', 'China', '中国', 'changji', '昌吉', '44.014577', '87.304012', 0);
INSERT INTO `cms_city` VALUES ('101130402', 'hutubi', '呼图壁', 'xinjiang', '新疆', 'China', '中国', 'changji', '昌吉', '44.189342', '86.888613', 0);
INSERT INTO `cms_city` VALUES ('101130404', 'fukang', '阜康', 'xinjiang', '新疆', 'China', '中国', 'changji', '昌吉', '44.152153', '87.98384', 0);
INSERT INTO `cms_city` VALUES ('101130405', 'jimusaer', '吉木萨尔', 'xinjiang', '新疆', 'China', '中国', 'changji', '昌吉', '43.997162', '89.181288', 0);
INSERT INTO `cms_city` VALUES ('101130406', 'qitai', '奇台', 'xinjiang', '新疆', 'China', '中国', 'changji', '昌吉', '44.021996', '89.591437', 0);
INSERT INTO `cms_city` VALUES ('101130407', 'manasi', '玛纳斯', 'xinjiang', '新疆', 'China', '中国', 'changji', '昌吉', '44.305625', '86.217687', 0);
INSERT INTO `cms_city` VALUES ('101130408', 'mulei', '木垒', 'xinjiang', '新疆', 'China', '中国', 'changji', '昌吉', '43.832442', '90.282833', 0);
INSERT INTO `cms_city` VALUES ('101130501', 'tulufan', '吐鲁番', 'xinjiang', '新疆', 'China', '中国', 'tulufan', '吐鲁番', '42.947613', '89.184078', 0);
INSERT INTO `cms_city` VALUES ('101130502', 'tuokexun', '托克逊', 'xinjiang', '新疆', 'China', '中国', 'tulufan', '吐鲁番', '42.793536', '88.655771', 0);
INSERT INTO `cms_city` VALUES ('101130503', 'gaochang', '高昌', 'xinjiang', '新疆', 'China', '中国', 'tulufan', '吐鲁番', '42.947627', '89.182324', 0);
INSERT INTO `cms_city` VALUES ('101130504', 'shanshan', '鄯善', 'xinjiang', '新疆', 'China', '中国', 'tulufan', '吐鲁番', '42.865503', '90.212692', 0);
INSERT INTO `cms_city` VALUES ('101130601', 'kuerle', '库尔勒', 'xinjiang', '新疆', 'China', '中国', 'bayinguoleng', '巴音郭楞', '41.763122', '86.145948', 0);
INSERT INTO `cms_city` VALUES ('101130602', 'luntai', '轮台', 'xinjiang', '新疆', 'China', '中国', 'bayinguoleng', '巴音郭楞', '41.781266', '84.248542', 0);
INSERT INTO `cms_city` VALUES ('101130603', 'yuli', '尉犁', 'xinjiang', '新疆', 'China', '中国', 'bayinguoleng', '巴音郭楞', '41.337428', '86.263412', 0);
INSERT INTO `cms_city` VALUES ('101130604', 'ruoqiang', '若羌', 'xinjiang', '新疆', 'China', '中国', 'bayinguoleng', '巴音郭楞', '39.023807', '88.168807', 0);
INSERT INTO `cms_city` VALUES ('101130605', 'qiemo', '且末', 'xinjiang', '新疆', 'China', '中国', 'bayinguoleng', '巴音郭楞', '38.138562', '85.532629', 0);
INSERT INTO `cms_city` VALUES ('101130606', 'hejing', '和静', 'xinjiang', '新疆', 'China', '中国', 'bayinguoleng', '巴音郭楞', '42.31716', '86.391067', 0);
INSERT INTO `cms_city` VALUES ('101130607', 'yanqi', '焉耆', 'xinjiang', '新疆', 'China', '中国', 'bayinguoleng', '巴音郭楞', '42.064349', '86.5698', 0);
INSERT INTO `cms_city` VALUES ('101130608', 'shuo', '和硕', 'xinjiang', '新疆', 'China', '中国', 'bayinguoleng', '巴音郭楞', '42.268863', '86.864947', 0);
INSERT INTO `cms_city` VALUES ('101130609', 'bayinguoleng', '巴音郭楞', 'xinjiang', '新疆', 'China', '中国', 'bayinguoleng', '巴音郭楞', '41.768552', '86.150969', 0);
INSERT INTO `cms_city` VALUES ('101130612', 'bohu', '博湖', 'xinjiang', '新疆', 'China', '中国', 'bayinguoleng', '巴音郭楞', '41.980166', '86.631576', 0);
INSERT INTO `cms_city` VALUES ('101130701', 'alaer', '阿拉尔', 'xinjiang', '新疆', 'China', '中国', 'alaer', '阿拉尔', '40.541914', '81.285884', 0);
INSERT INTO `cms_city` VALUES ('101130801', 'akesu', '阿克苏', 'xinjiang', '新疆', 'China', '中国', 'akesu', '阿克苏', '41.170712', '80.265068', 0);
INSERT INTO `cms_city` VALUES ('101130802', 'wushi', '乌什', 'xinjiang', '新疆', 'China', '中国', 'akesu', '阿克苏', '41.21587', '79.230805', 0);
INSERT INTO `cms_city` VALUES ('101130803', 'wensu', '温宿', 'xinjiang', '新疆', 'China', '中国', 'akesu', '阿克苏', '41.272995', '80.243273', 0);
INSERT INTO `cms_city` VALUES ('101130804', 'baicheng', '拜城', 'xinjiang', '新疆', 'China', '中国', 'akesu', '阿克苏', '41.796101', '81.869881', 0);
INSERT INTO `cms_city` VALUES ('101130805', 'xinhe', '新和', 'xinjiang', '新疆', 'China', '中国', 'akesu', '阿克苏', '41.551176', '82.610828', 0);
INSERT INTO `cms_city` VALUES ('101130806', 'shaya', '沙雅', 'xinjiang', '新疆', 'China', '中国', 'akesu', '阿克苏', '41.226268', '82.78077', 0);
INSERT INTO `cms_city` VALUES ('101130807', 'kuche', '库车', 'xinjiang', '新疆', 'China', '中国', 'akesu', '阿克苏', '41.717141', '82.96304', 0);
INSERT INTO `cms_city` VALUES ('101130808', 'keping', '柯坪', 'xinjiang', '新疆', 'China', '中国', 'akesu', '阿克苏', '40.50624', '79.04785', 0);
INSERT INTO `cms_city` VALUES ('101130809', 'awati', '阿瓦提', 'xinjiang', '新疆', 'China', '中国', 'akesu', '阿克苏', '40.638422', '80.378426', 0);
INSERT INTO `cms_city` VALUES ('101130901', 'kashi', '喀什', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '39.467664', '75.989138', 0);
INSERT INTO `cms_city` VALUES ('101130902', 'yingjisha', '英吉沙', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '38.929839', '76.174292', 0);
INSERT INTO `cms_city` VALUES ('101130903', 'tashikuergan', '塔什库尔干', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '37.775437', '75.228068', 0);
INSERT INTO `cms_city` VALUES ('101130904', 'maigaiti', '麦盖提', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '38.903384', '77.651538', 0);
INSERT INTO `cms_city` VALUES ('101130905', 'shache', '莎车', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '38.414499', '77.248884', 0);
INSERT INTO `cms_city` VALUES ('101130906', 'yecheng', '叶城', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '37.884679', '77.420353', 0);
INSERT INTO `cms_city` VALUES ('101130907', 'zepu', '泽普', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '38.191217', '77.273593', 0);
INSERT INTO `cms_city` VALUES ('101130908', 'bachu', '巴楚', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '39.783479', '78.55041', 0);
INSERT INTO `cms_city` VALUES ('101130909', 'yuepuhu', '岳普湖', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '39.235248', '76.7724', 0);
INSERT INTO `cms_city` VALUES ('101130910', 'jiashi', '伽师', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '39.494325', '76.741982', 0);
INSERT INTO `cms_city` VALUES ('101130911', 'shufu', '疏附', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '39.378306', '75.863075', 0);
INSERT INTO `cms_city` VALUES ('101130912', 'shule', '疏勒', 'xinjiang', '新疆', 'China', '中国', 'kashi', '喀什', '39.399461', '76.053653', 0);
INSERT INTO `cms_city` VALUES ('101131001', 'yining', '伊宁', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '43.922209', '81.316343', 0);
INSERT INTO `cms_city` VALUES ('101131002', 'chabuchaer', '察布查尔', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '43.838883', '81.150874', 0);
INSERT INTO `cms_city` VALUES ('101131003', 'nileke', '尼勒克', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '43.789737', '82.504119', 0);
INSERT INTO `cms_city` VALUES ('101131004', 'yiningxian', '伊宁县', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '43.977876', '81.524671', 0);
INSERT INTO `cms_city` VALUES ('101131005', 'gongliu', '巩留', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '43.481618', '82.227044', 0);
INSERT INTO `cms_city` VALUES ('101131006', 'xinyuan', '新源', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '43.434249', '83.258493', 0);
INSERT INTO `cms_city` VALUES ('101131007', 'zhaosu', '昭苏', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '43.157765', '81.126029', 0);
INSERT INTO `cms_city` VALUES ('101131008', 'tekesi', '特克斯', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '43.214861', '81.840058', 0);
INSERT INTO `cms_city` VALUES ('101131009', 'huocheng', '霍城', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '44.049912', '80.872508', 0);
INSERT INTO `cms_city` VALUES ('101131010', 'huoerguosi', '霍尔果斯', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '44.201669', '80.420759', 0);
INSERT INTO `cms_city` VALUES ('101131011', 'kuitunshi', '奎屯', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '44.423445', '84.901602', 0);
INSERT INTO `cms_city` VALUES ('101131012', 'yili', '伊犁', 'xinjiang', '新疆', 'China', '中国', 'yili', '伊犁', '43.92186', '81.317946', 0);
INSERT INTO `cms_city` VALUES ('101131101', 'tacheng', '塔城', 'xinjiang', '新疆', 'China', '中国', 'tacheng', '塔城', '46.746281', '82.983988', 0);
INSERT INTO `cms_city` VALUES ('101131102', 'yumin', '裕民', 'xinjiang', '新疆', 'China', '中国', 'tacheng', '塔城', '46.202781', '82.982157', 0);
INSERT INTO `cms_city` VALUES ('101131103', 'emin', '额敏', 'xinjiang', '新疆', 'China', '中国', 'tacheng', '塔城', '46.522555', '83.622118', 0);
INSERT INTO `cms_city` VALUES ('101131104', 'hebukesaier', '和布克赛尔', 'xinjiang', '新疆', 'China', '中国', 'tacheng', '塔城', '46.793001', '85.733551', 0);
INSERT INTO `cms_city` VALUES ('101131105', 'tuoli', '托里', 'xinjiang', '新疆', 'China', '中国', 'tacheng', '塔城', '45.935863', '83.60469', 0);
INSERT INTO `cms_city` VALUES ('101131106', 'wusu', '乌苏', 'xinjiang', '新疆', 'China', '中国', 'tacheng', '塔城', '44.430115', '84.677624', 0);
INSERT INTO `cms_city` VALUES ('101131107', 'shawan', '沙湾', 'xinjiang', '新疆', 'China', '中国', 'tacheng', '塔城', '44.329544', '85.622508', 0);
INSERT INTO `cms_city` VALUES ('101131201', 'hami', '哈密', 'xinjiang', '新疆', 'China', '中国', 'hami', '哈密', '42.833248', '93.51316', 0);
INSERT INTO `cms_city` VALUES ('101131202', 'yizhou', '伊州', 'xinjiang', '新疆', 'China', '中国', 'hami', '哈密', '42.833888', '93.509174', 0);
INSERT INTO `cms_city` VALUES ('101131203', 'balikun', '巴里坤', 'xinjiang', '新疆', 'China', '中国', 'hami', '哈密', '43.599032', '93.021795', 0);
INSERT INTO `cms_city` VALUES ('101131204', 'yiwu', '伊吾', 'xinjiang', '新疆', 'China', '中国', 'hami', '哈密', '43.252012', '94.692773', 0);
INSERT INTO `cms_city` VALUES ('101131301', 'hetian', '和田', 'xinjiang', '新疆', 'China', '中国', 'hetian', '和田', '37.108944', '79.927542', 0);
INSERT INTO `cms_city` VALUES ('101131302', 'pishan', '皮山', 'xinjiang', '新疆', 'China', '中国', 'hetian', '和田', '37.616332', '78.282301', 0);
INSERT INTO `cms_city` VALUES ('101131303', 'cele', '策勒', 'xinjiang', '新疆', 'China', '中国', 'hetian', '和田', '37.001672', '80.803572', 0);
INSERT INTO `cms_city` VALUES ('101131304', 'moyu', '墨玉', 'xinjiang', '新疆', 'China', '中国', 'hetian', '和田', '37.271511', '79.736629', 0);
INSERT INTO `cms_city` VALUES ('101131305', 'luopu', '洛浦', 'xinjiang', '新疆', 'China', '中国', 'hetian', '和田', '37.074377', '80.184038', 0);
INSERT INTO `cms_city` VALUES ('101131306', 'minfeng', '民丰', 'xinjiang', '新疆', 'China', '中国', 'hetian', '和田', '37.064909', '82.692354', 0);
INSERT INTO `cms_city` VALUES ('101131307', 'yutian', '于田', 'xinjiang', '新疆', 'China', '中国', 'hetian', '和田', '36.854628', '81.667845', 0);
INSERT INTO `cms_city` VALUES ('101131401', 'aletai', '阿勒泰', 'xinjiang', '新疆', 'China', '中国', 'aletai', '阿勒泰', '47.848911', '88.138743', 0);
INSERT INTO `cms_city` VALUES ('101131402', 'habahe', '哈巴河', 'xinjiang', '新疆', 'China', '中国', 'aletai', '阿勒泰', '48.059284', '86.418964', 0);
INSERT INTO `cms_city` VALUES ('101131405', 'jimunai', '吉木乃', 'xinjiang', '新疆', 'China', '中国', 'aletai', '阿勒泰', '47.434633', '85.876064', 0);
INSERT INTO `cms_city` VALUES ('101131406', 'buerjin', '布尔津', 'xinjiang', '新疆', 'China', '中国', 'aletai', '阿勒泰', '47.70453', '86.86186', 0);
INSERT INTO `cms_city` VALUES ('101131407', 'fuhai', '福海', 'xinjiang', '新疆', 'China', '中国', 'aletai', '阿勒泰', '47.113128', '87.494569', 0);
INSERT INTO `cms_city` VALUES ('101131408', 'fuyun', '富蕴', 'xinjiang', '新疆', 'China', '中国', 'aletai', '阿勒泰', '46.993106', '89.524993', 0);
INSERT INTO `cms_city` VALUES ('101131409', 'qinghe', '青河', 'xinjiang', '新疆', 'China', '中国', 'aletai', '阿勒泰', '46.672446', '90.381561', 0);
INSERT INTO `cms_city` VALUES ('101131410', 'beitun', '北屯', 'xinjiang', '新疆', 'China', '中国', 'aletai', '阿勒泰', '47.353177', '87.824932', 0);
INSERT INTO `cms_city` VALUES ('101131412', 'shuanghe', '双河', 'xinjiang', '新疆', 'China', '中国', 'aletai', '阿勒泰', '44.840524', '82.353656', 0);
INSERT INTO `cms_city` VALUES ('101131413', 'kekedala', '可克达拉', 'xinjiang', '新疆', 'China', '中国', 'aletai', '阿勒泰', '43.6832', '80.63579', 0);
INSERT INTO `cms_city` VALUES ('101131501', 'atushi', '阿图什', 'xinjiang', '新疆', 'China', '中国', 'kezhou', '克州', '39.712898', '76.173939', 0);
INSERT INTO `cms_city` VALUES ('101131502', 'wuqia', '乌恰', 'xinjiang', '新疆', 'China', '中国', 'kezhou', '克州', '39.716633', '75.25969', 0);
INSERT INTO `cms_city` VALUES ('101131503', 'aketao', '阿克陶', 'xinjiang', '新疆', 'China', '中国', 'kezhou', '克州', '39.147079', '75.945159', 0);
INSERT INTO `cms_city` VALUES ('101131504', 'aheqi', '阿合奇', 'xinjiang', '新疆', 'China', '中国', 'kezhou', '克州', '40.937567', '78.450164', 0);
INSERT INTO `cms_city` VALUES ('101131505', 'kezhou', '克州', 'xinjiang', '新疆', 'China', '中国', 'kezhou', '克州', '39.713966', '76.176796', 0);
INSERT INTO `cms_city` VALUES ('101131601', 'bole', '博乐', 'xinjiang', '新疆', 'China', '中国', 'boertala', '博尔塔拉', '44.903087', '82.072237', 0);
INSERT INTO `cms_city` VALUES ('101131602', 'wenquan', '温泉', 'xinjiang', '新疆', 'China', '中国', 'boertala', '博尔塔拉', '44.973751', '81.03099', 0);
INSERT INTO `cms_city` VALUES ('101131603', 'jinghe', '精河', 'xinjiang', '新疆', 'China', '中国', 'boertala', '博尔塔拉', '44.605645', '82.892938', 0);
INSERT INTO `cms_city` VALUES ('101131604', 'boertala', '博尔塔拉', 'xinjiang', '新疆', 'China', '中国', 'boertala', '博尔塔拉', '44.903258', '82.074778', 0);
INSERT INTO `cms_city` VALUES ('101131606', 'alashankou', '阿拉山口', 'xinjiang', '新疆', 'China', '中国', 'boertala', '博尔塔拉', '45.16777', '82.569389', 0);
INSERT INTO `cms_city` VALUES ('101131701', 'tumushuke', '图木舒克', 'xinjiang', '新疆', 'China', '中国', 'tumushuke', '图木舒克', '39.867316', '79.077978', 0);
INSERT INTO `cms_city` VALUES ('101131801', 'wujiaqu', '五家渠', 'xinjiang', '新疆', 'China', '中国', 'wujiaqu', '五家渠', '44.167401', '87.526884', 0);
INSERT INTO `cms_city` VALUES ('101131901', 'tiemenguan', '铁门关', 'xinjiang', '新疆', 'China', '中国', 'tiemenguan', '铁门关', '41.827251', '85.501218', 0);
INSERT INTO `cms_city` VALUES ('101140101', 'lasa', '拉萨', 'xizang', '西藏', 'China', '中国', 'lasa', '拉萨', '29.660361', '91.132212', 0);
INSERT INTO `cms_city` VALUES ('101140102', 'dangxiong', '当雄', 'xizang', '西藏', 'China', '中国', 'lasa', '拉萨', '30.474819', '91.103551', 0);
INSERT INTO `cms_city` VALUES ('101140103', 'nimu', '尼木', 'xizang', '西藏', 'China', '中国', 'lasa', '拉萨', '29.431346', '90.165545', 0);
INSERT INTO `cms_city` VALUES ('101140104', 'linzhou', '林周', 'xizang', '西藏', 'China', '中国', 'lasa', '拉萨', '29.895754', '91.261842', 0);
INSERT INTO `cms_city` VALUES ('101140105', 'duilongdeqing', '堆龙德庆', 'xizang', '西藏', 'China', '中国', 'lasa', '拉萨', '29.647347', '91.002823', 0);
INSERT INTO `cms_city` VALUES ('101140106', 'qushui', '曲水', 'xizang', '西藏', 'China', '中国', 'lasa', '拉萨', '29.349895', '90.738051', 0);
INSERT INTO `cms_city` VALUES ('101140107', 'dazi', '达孜', 'xizang', '西藏', 'China', '中国', 'lasa', '拉萨', '29.670314', '91.350976', 0);
INSERT INTO `cms_city` VALUES ('101140108', 'mozhugongka', '墨竹工卡', 'xizang', '西藏', 'China', '中国', 'lasa', '拉萨', '29.834657', '91.731158', 0);
INSERT INTO `cms_city` VALUES ('101140109', 'chengguan', '城关', 'xicang', '西藏', 'China', '中国', 'lasa', '拉萨', '29.659472', '91.132911', 0);
INSERT INTO `cms_city` VALUES ('101140201', 'rikaze', '日喀则', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '29.267519', '88.885148', 0);
INSERT INTO `cms_city` VALUES ('101140202', 'lazi', '拉孜', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '29.085136', '87.63743', 0);
INSERT INTO `cms_city` VALUES ('101140203', 'nanmulin', '南木林', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '29.680459', '89.099434', 0);
INSERT INTO `cms_city` VALUES ('101140204', 'nielamu', '聂拉木', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '28.15595', '85.981953', 0);
INSERT INTO `cms_city` VALUES ('101140205', 'anri', '定日', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '28.656667', '87.123887', 0);
INSERT INTO `cms_city` VALUES ('101140206', 'jiangzi', '江孜', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '28.908845', '89.605044', 0);
INSERT INTO `cms_city` VALUES ('101140208', 'zhongba', '仲巴', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '29.768336', '84.032826', 0);
INSERT INTO `cms_city` VALUES ('101140209', 'saga', '萨嘎', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '29.328194', '85.234622', 0);
INSERT INTO `cms_city` VALUES ('101140210', 'jilong', '吉隆', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '28.852416', '85.298349', 0);
INSERT INTO `cms_city` VALUES ('101140211', 'angren', '昂仁', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '29.294758', '87.23578', 0);
INSERT INTO `cms_city` VALUES ('101140212', 'dingjie', '定结', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '28.36409', '87.767723', 0);
INSERT INTO `cms_city` VALUES ('101140213', 'sajia', '萨迦', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '28.901077', '88.023007', 0);
INSERT INTO `cms_city` VALUES ('101140214', 'xietongmen', '谢通门', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '29.431597', '88.260517', 0);
INSERT INTO `cms_city` VALUES ('101140215', 'sangzhuzi', '桑珠孜', 'xicang', '西藏', 'China', '中国', 'rikaze', '日喀则', '29.267003', '88.88667', 0);
INSERT INTO `cms_city` VALUES ('101140216', 'gangba', '岗巴', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '28.274371', '88.518903', 0);
INSERT INTO `cms_city` VALUES ('101140217', 'bailang', '白朗', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '29.106627', '89.263618', 0);
INSERT INTO `cms_city` VALUES ('101140218', 'yadong', '亚东', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '27.482772', '88.906806', 0);
INSERT INTO `cms_city` VALUES ('101140219', 'kangma', '康马', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '28.554719', '89.683406', 0);
INSERT INTO `cms_city` VALUES ('101140220', 'renbu', '仁布', 'xizang', '西藏', 'China', '中国', 'rikaze', '日喀则', '29.230299', '89.843207', 0);
INSERT INTO `cms_city` VALUES ('101140301', 'shannan', '山南', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '29.236023', '91.766529', 0);
INSERT INTO `cms_city` VALUES ('101140302', 'gongga', '贡嘎', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '29.289078', '90.985271', 0);
INSERT INTO `cms_city` VALUES ('101140303', 'zhanang', '扎囊', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '29.246476', '91.338', 0);
INSERT INTO `cms_city` VALUES ('101140304', 'jiacha', '加查', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '29.140921', '92.591043', 0);
INSERT INTO `cms_city` VALUES ('101140305', 'langkazi', '浪卡子', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '28.96836', '90.398747', 0);
INSERT INTO `cms_city` VALUES ('101140306', 'cuona', '错那', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '27.991707', '91.960132', 0);
INSERT INTO `cms_city` VALUES ('101140307', 'longzi', '隆子', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '28.408548', '92.463309', 0);
INSERT INTO `cms_city` VALUES ('101140309', 'naidong', '乃东', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '29.236106', '91.76525', 0);
INSERT INTO `cms_city` VALUES ('101140310', 'sangri', '桑日', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '29.259774', '92.015732', 0);
INSERT INTO `cms_city` VALUES ('101140311', 'luozha', '洛扎', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '28.385765', '90.858243', 0);
INSERT INTO `cms_city` VALUES ('101140312', 'cuomei', '措美', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '28.437353', '91.432347', 0);
INSERT INTO `cms_city` VALUES ('101140313', 'qiongjie', '琼结', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '29.025242', '91.683753', 0);
INSERT INTO `cms_city` VALUES ('101140314', 'qusong', '曲松', 'xizang', '西藏', 'China', '中国', 'shannan', '山南', '29.063656', '92.201066', 0);
INSERT INTO `cms_city` VALUES ('101140401', 'linzhi', '林芝', 'xizang', '西藏', 'China', '中国', 'linzi', '林芝', '29.654693', '94.362348', 0);
INSERT INTO `cms_city` VALUES ('101140402', 'bomi', '波密', 'xizang', '西藏', 'China', '中国', 'linzi', '林芝', '29.858771', '95.768151', 0);
INSERT INTO `cms_city` VALUES ('101140403', 'milin', '米林', 'xizang', '西藏', 'China', '中国', 'linzi', '林芝', '29.213811', '94.213679', 0);
INSERT INTO `cms_city` VALUES ('101140404', 'chayu', '察隅', 'xizang', '西藏', 'China', '中国', 'linzi', '林芝', '28.660244', '97.465002', 0);
INSERT INTO `cms_city` VALUES ('101140405', 'gongbujiangda', '工布江达', 'xizang', '西藏', 'China', '中国', 'linzhi', '林芝', '29.88447', '93.246515', 0);
INSERT INTO `cms_city` VALUES ('101140406', 'langxian', '朗县', 'xizang', '西藏', 'China', '中国', 'linzhi', '林芝', '29.0446', '93.073429', 0);
INSERT INTO `cms_city` VALUES ('101140407', 'motuo', '墨脱', 'xizang', '西藏', 'China', '中国', 'linzhi', '林芝', '29.32573', '95.332245', 0);
INSERT INTO `cms_city` VALUES ('101140408', 'bayi', '巴宜', 'xicang', '西藏', 'China', '中国', 'linzhi', '林芝', '29.653732', '94.360987', 0);
INSERT INTO `cms_city` VALUES ('101140501', 'changdu', '昌都', 'xizang', '西藏', 'China', '中国', 'changdu', '昌都', '31.136875', '97.178452', 0);
INSERT INTO `cms_city` VALUES ('101140502', 'dingqing', '丁青', 'xizang', '西藏', 'China', '中国', 'changdu', '昌都', '31.410681', '95.597748', 0);
INSERT INTO `cms_city` VALUES ('101140503', 'bianba', '边坝', 'xizang', '西藏', 'China', '中国', 'changdu', '昌都', '30.933849', '94.707504', 0);
INSERT INTO `cms_city` VALUES ('101140504', 'luolong', '洛隆', 'xizang', '西藏', 'China', '中国', 'changdu', '昌都', '30.741947', '95.823418', 0);
INSERT INTO `cms_city` VALUES ('101140505', 'zuogong', '左贡', 'xizang', '西藏', 'China', '中国', 'changdu', '昌都', '29.671335', '97.840532', 0);
INSERT INTO `cms_city` VALUES ('101140506', 'mangkang', '芒康', 'xizang', '西藏', 'China', '中国', 'changdu', '昌都', '29.686615', '98.596444', 0);
INSERT INTO `cms_city` VALUES ('101140507', 'leiwuqi', '类乌齐', 'xizang', '西藏', 'China', '中国', 'changdu', '昌都', '31.213048', '96.601259', 0);
INSERT INTO `cms_city` VALUES ('101140508', 'basu', '八宿', 'xizang', '西藏', 'China', '中国', 'changdu', '昌都', '30.053408', '96.917893', 0);
INSERT INTO `cms_city` VALUES ('101140509', 'jiangda', '江达', 'xizang', '西藏', 'China', '中国', 'changdu', '昌都', '31.499534', '98.218351', 0);
INSERT INTO `cms_city` VALUES ('101140510', 'chaya', '察雅', 'xizang', '西藏', 'China', '中国', 'changdu', '昌都', '30.653038', '97.565701', 0);
INSERT INTO `cms_city` VALUES ('101140511', 'gongjue', '贡觉', 'xizang', '西藏', 'China', '中国', 'changdu', '昌都', '30.859206', '98.271191', 0);
INSERT INTO `cms_city` VALUES ('101140512', 'karuo', '卡若', 'xicang', '西藏', 'China', '中国', 'changdou', '昌都', '31.137035', '97.178255', 0);
INSERT INTO `cms_city` VALUES ('101140601', 'naqu', '那曲', 'xizang', '西藏', 'China', '中国', 'naqu', '那曲', '31.476004', '92.060214', 0);
INSERT INTO `cms_city` VALUES ('101140602', 'nima', '尼玛', 'xizang', '西藏', 'China', '中国', 'naqu', '那曲', '31.784979', '87.236646', 0);
INSERT INTO `cms_city` VALUES ('101140603', 'jiali', '嘉黎', 'xizang', '西藏', 'China', '中国', 'naqu', '那曲', '30.640846', '93.232907', 0);
INSERT INTO `cms_city` VALUES ('101140604', 'bange', '班戈', 'xizang', '西藏', 'China', '中国', 'naqu', '那曲', '31.394578', '90.011822', 0);
INSERT INTO `cms_city` VALUES ('101140605', 'anduo', '安多', 'xizang', '西藏', 'China', '中国', 'naqu', '那曲', '32.260299', '91.681879', 0);
INSERT INTO `cms_city` VALUES ('101140606', 'suoxian', '索县', 'xizang', '西藏', 'China', '中国', 'naqu', '那曲', '31.886173', '93.784964', 0);
INSERT INTO `cms_city` VALUES ('101140607', 'nierong', '聂荣', 'xizang', '西藏', 'China', '中国', 'naqu', '那曲', '32.107855', '92.303659', 0);
INSERT INTO `cms_city` VALUES ('101140608', 'baqing', '巴青', 'xizang', '西藏', 'China', '中国', 'naqu', '那曲', '31.918691', '94.054049', 0);
INSERT INTO `cms_city` VALUES ('101140609', 'biru', '比如', 'xizang', '西藏', 'China', '中国', 'naqu', '那曲', '31.479917', '93.68044', 0);
INSERT INTO `cms_city` VALUES ('101140610', 'shuanghu', '双湖', 'xizang', '西藏', 'China', '中国', 'naqu', '那曲', '33.18698', '88.838578', 0);
INSERT INTO `cms_city` VALUES ('101140611', 'shenza', '申扎', 'xizang', '西藏', 'China', '中国', 'naqu', '那曲', '30.929056', '88.709777', 0);
INSERT INTO `cms_city` VALUES ('101140701', 'ali', '阿里', 'xizang', '西藏', 'China', '中国', 'ali', '阿里', '32.503187', '80.105498', 0);
INSERT INTO `cms_city` VALUES ('101140702', 'gaize', '改则', 'xizang', '西藏', 'China', '中国', 'ali', '阿里', '32.302076', '84.062384', 0);
INSERT INTO `cms_city` VALUES ('101140705', 'pulan', '普兰', 'xizang', '西藏', 'China', '中国', 'ali', '阿里', '30.291896', '81.177588', 0);
INSERT INTO `cms_city` VALUES ('101140706', 'zhada', '札达', 'xizang', '西藏', 'China', '中国', 'ali', '阿里', '31.478587', '79.803191', 0);
INSERT INTO `cms_city` VALUES ('101140707', 'gaer', '噶尔', 'xizang', '西藏', 'China', '中国', 'ali', '阿里', '32.503373', '80.105005', 0);
INSERT INTO `cms_city` VALUES ('101140708', 'ritu', '日土', 'xizang', '西藏', 'China', '中国', 'ali', '阿里', '33.382454', '79.731937', 0);
INSERT INTO `cms_city` VALUES ('101140709', 'geji', '革吉', 'xizang', '西藏', 'China', '中国', 'ali', '阿里', '32.389192', '81.142896', 0);
INSERT INTO `cms_city` VALUES ('101140710', 'cuoqin', '措勤', 'xizang', '西藏', 'China', '中国', 'ali', '阿里', '31.016774', '85.159254', 0);
INSERT INTO `cms_city` VALUES ('101150101', 'xining', '西宁', 'qinghai', '青海', 'China', '中国', 'xining', '西宁', '36.623178', '101.778916', 0);
INSERT INTO `cms_city` VALUES ('101150102', 'datong', '大通', 'qinghai', '青海', 'China', '中国', 'xining', '西宁', '36.931343', '101.684183', 0);
INSERT INTO `cms_city` VALUES ('101150103', 'huangyuan', '湟源', 'qinghai', '青海', 'China', '中国', 'xining', '西宁', '36.684818', '101.263435', 0);
INSERT INTO `cms_city` VALUES ('101150104', 'huangzhong', '湟中', 'qinghai', '青海', 'China', '中国', 'xining', '西宁', '36.500419', '101.569475', 0);
INSERT INTO `cms_city` VALUES ('101150105', 'chengdong', '城东', 'qinghai', '青海', 'China', '中国', 'xining', '西宁', '36.616043', '101.796095', 0);
INSERT INTO `cms_city` VALUES ('101150106', 'chengzhong', '城中', 'qinghai', '青海', 'China', '中国', 'xining', '西宁', '36.621181', '101.784554', 0);
INSERT INTO `cms_city` VALUES ('101150107', 'chengxi', '城西', 'qinghai', '青海', 'China', '中国', 'xining', '西宁', '36.628323', '101.763649', 0);
INSERT INTO `cms_city` VALUES ('101150108', 'chengbei', '城北', 'qinghai', '青海', 'China', '中国', 'xining', '西宁', '36.648448', '101.761297', 0);
INSERT INTO `cms_city` VALUES ('101150201', 'pingan', '平安', 'qinghai', '青海', 'China', '中国', 'haidong', '海东', '36.502714', '102.104295', 0);
INSERT INTO `cms_city` VALUES ('101150202', 'ledu', '乐都', 'qinghai', '青海', 'China', '中国', 'haidong', '海东', '36.480291', '102.402431', 0);
INSERT INTO `cms_city` VALUES ('101150203', 'minhe', '民和', 'qinghai', '青海', 'China', '中国', 'haidong', '海东', '36.329451', '102.804209', 0);
INSERT INTO `cms_city` VALUES ('101150204', 'huzhu', '互助', 'qinghai', '青海', 'China', '中国', 'haidong', '海东', '36.83994', '101.956734', 0);
INSERT INTO `cms_city` VALUES ('101150205', 'hualong', '化隆', 'qinghai', '青海', 'China', '中国', 'haidong', '海东', '36.098322', '102.262329', 0);
INSERT INTO `cms_city` VALUES ('101150206', 'xunhua', '循化', 'qinghai', '青海', 'China', '中国', 'haidong', '海东', '35.847247', '102.486534', 0);
INSERT INTO `cms_city` VALUES ('101150207', 'haidong', '海东', 'qinghai', '青海', 'China', '中国', 'haidong', '海东', '36.502916', '102.10327', 0);
INSERT INTO `cms_city` VALUES ('101150301', 'tongren', '同仁', 'qinghai', '青海', 'China', '中国', 'huangnan', '黄南', '35.516337', '102.017604', 0);
INSERT INTO `cms_city` VALUES ('101150302', 'jianzha', '尖扎', 'qinghai', '青海', 'China', '中国', 'huangnan', '黄南', '35.938205', '102.031953', 0);
INSERT INTO `cms_city` VALUES ('101150303', 'zeku', '泽库', 'qinghai', '青海', 'China', '中国', 'huangnan', '黄南', '35.036842', '101.469343', 0);
INSERT INTO `cms_city` VALUES ('101150304', 'henan', '河南', 'qinghai', '青海', 'China', '中国', 'huangnan', '黄南', '34.734522', '101.611877', 0);
INSERT INTO `cms_city` VALUES ('101150305', 'huangnan', '黄南', 'qinghai', '青海', 'China', '中国', 'huangnan', '黄南', '35.517744', '102.019988', 0);
INSERT INTO `cms_city` VALUES ('101150401', 'gonghe', '共和', 'qinghai', '青海', 'China', '中国', 'hainan', '海南', '36.280286', '100.619597', 0);
INSERT INTO `cms_city` VALUES ('101150402', 'hainan', '海南', 'qinghai', '青海', 'China', '中国', 'hainan', '海南', '36.280353', '100.619542', 0);
INSERT INTO `cms_city` VALUES ('101150404', 'guide', '贵德', 'qinghai', '青海', 'China', '中国', 'hainan', '海南', '36.040456', '101.431856', 0);
INSERT INTO `cms_city` VALUES ('101150406', 'xinghai', '兴海', 'qinghai', '青海', 'China', '中国', 'hainan', '海南', '35.58909', '99.986963', 0);
INSERT INTO `cms_city` VALUES ('101150407', 'guinan', '贵南', 'qinghai', '青海', 'China', '中国', 'hainan', '海南', '35.587085', '100.74792', 0);
INSERT INTO `cms_city` VALUES ('101150408', 'tongde', '同德', 'qinghai', '青海', 'China', '中国', 'hainan', '海南', '35.254492', '100.579465', 0);
INSERT INTO `cms_city` VALUES ('101150501', 'maqin', '玛沁', 'qinghai', '青海', 'China', '中国', 'guoluo', '果洛', '34.473386', '100.243531', 0);
INSERT INTO `cms_city` VALUES ('101150502', 'banma', '班玛', 'qinghai', '青海', 'China', '中国', 'guoluo', '果洛', '32.931589', '100.737955', 0);
INSERT INTO `cms_city` VALUES ('101150503', 'gande', '甘德', 'qinghai', '青海', 'China', '中国', 'guoluo', '果洛', '33.966987', '99.902589', 0);
INSERT INTO `cms_city` VALUES ('101150504', 'dari', '达日', 'qinghai', '青海', 'China', '中国', 'guoluo', '果洛', '33.753259', '99.651715', 0);
INSERT INTO `cms_city` VALUES ('101150505', 'jiuzhi', '久治', 'qinghai', '青海', 'China', '中国', 'guoluo', '果洛', '33.430217', '101.484884', 0);
INSERT INTO `cms_city` VALUES ('101150506', 'madu', '玛多', 'qinghai', '青海', 'China', '中国', 'guoluo', '果洛', '34.91528', '98.211343', 0);
INSERT INTO `cms_city` VALUES ('101150507', 'guoluo', '果洛', 'qinghai', '青海', 'China', '中国', 'guoluo', '果洛', '34.4736', '100.242143', 0);
INSERT INTO `cms_city` VALUES ('101150601', 'yushu', '玉树', 'qinghai', '青海', 'China', '中国', 'yushu', '玉树', '33.004049', '97.008522', 0);
INSERT INTO `cms_city` VALUES ('101150602', 'chenduo', '称多', 'qinghai', '青海', 'China', '中国', 'yushu', '玉树', '33.367884', '97.110893', 0);
INSERT INTO `cms_city` VALUES ('101150603', 'zhiduo', '治多', 'qinghai', '青海', 'China', '中国', 'yushu', '玉树', '33.852322', '95.616843', 0);
INSERT INTO `cms_city` VALUES ('101150604', 'zaduo', '杂多', 'qinghai', '青海', 'China', '中国', 'yushu', '玉树', '32.891886', '95.293423', 0);
INSERT INTO `cms_city` VALUES ('101150605', 'nangqian', '囊谦', 'qinghai', '青海', 'China', '中国', 'yushu', '玉树', '32.203206', '96.479797', 0);
INSERT INTO `cms_city` VALUES ('101150606', 'qumacai', '曲麻莱', 'qinghai', '青海', 'China', '中国', 'yushu', '玉树', '34.12654', '95.800674', 0);
INSERT INTO `cms_city` VALUES ('101150701', 'delingha', '德令哈', 'qinghai', '青海', 'China', '中国', 'haixi', '海西', '37.374555', '97.370143', 0);
INSERT INTO `cms_city` VALUES ('101150702', 'haixi', '海西', 'qinghai', '青海', 'China', '中国', 'haixi', '海西', '37.853631', '95.357233', 0);
INSERT INTO `cms_city` VALUES ('101150708', 'tianjun', '天峻', 'qinghai', '青海', 'China', '中国', 'haixi', '海西', '37.29906', '99.02078', 0);
INSERT INTO `cms_city` VALUES ('101150709', 'wulan', '乌兰', 'qinghai', '青海', 'China', '中国', 'haixi', '海西', '36.930389', '98.479852', 0);
INSERT INTO `cms_city` VALUES ('101150712', 'mangai', '茫崖', 'qinghai', '青海', 'China', '中国', 'haixi', '海西', '38.15', '90.51', 0);
INSERT INTO `cms_city` VALUES ('101150713', 'dachaidan', '大柴旦', 'qinghai', '青海', 'China', '中国', 'haixi', '海西', '37.51', '95.22', 0);
INSERT INTO `cms_city` VALUES ('101150714', 'geermu', '格尔木', 'qinghai', '青海', 'China', '中国', 'haixi', '海西', '36.401541', '94.905777', 0);
INSERT INTO `cms_city` VALUES ('101150715', 'dulan', '都兰', 'qinghai', '青海', 'China', '中国', 'haixi', '海西', '36.298553', '98.089161', 0);
INSERT INTO `cms_city` VALUES ('101150716', 'lenghu', '冷湖', 'qinghai', '青海', 'China', '中国', 'haixi', '海西', '37.37', '97.37', 0);
INSERT INTO `cms_city` VALUES ('101150801', 'haiyan', '海晏', 'qinghai', '青海', 'China', '中国', 'haibei', '海北', '36.959542', '100.90049', 0);
INSERT INTO `cms_city` VALUES ('101150802', 'menyuan', '门源', 'qinghai', '青海', 'China', '中国', 'haibei', '海北', '37.376627', '101.618461', 0);
INSERT INTO `cms_city` VALUES ('101150803', 'qilian', '祁连', 'qinghai', '青海', 'China', '中国', 'haibei', '海北', '38.175409', '100.249778', 0);
INSERT INTO `cms_city` VALUES ('101150804', 'haibei', '海北', 'qinghai', '青海', 'China', '中国', 'haibei', '海北', '36.959435', '100.901059', 0);
INSERT INTO `cms_city` VALUES ('101150806', 'gangcha', '刚察', 'qinghai', '青海', 'China', '中国', 'haibei', '海北', '37.326263', '100.138417', 0);
INSERT INTO `cms_city` VALUES ('101160101', 'lanzhou', '兰州', 'gansu', '甘肃', 'China', '中国', 'lanzhou', '兰州', '36.058039', '103.823557', 0);
INSERT INTO `cms_city` VALUES ('101160102', 'gaolan', '皋兰', 'gansu', '甘肃', 'China', '中国', 'lanzhou', '兰州', '36.331254', '103.94933', 0);
INSERT INTO `cms_city` VALUES ('101160103', 'yongdeng', '永登', 'gansu', '甘肃', 'China', '中国', 'lanzhou', '兰州', '36.734428', '103.262203', 0);
INSERT INTO `cms_city` VALUES ('101160104', 'yuzhong', '榆中', 'gansu', '甘肃', 'China', '中国', 'lanzhou', '兰州', '35.84443', '104.114975', 0);
INSERT INTO `cms_city` VALUES ('101160105', 'chengguan', '城关', 'gansu', '甘肃', 'China', '中国', 'lanzhou', '兰州', '36.049115', '103.841032', 0);
INSERT INTO `cms_city` VALUES ('101160106', 'qilihe', '七里河', 'gansu', '甘肃', 'China', '中国', 'lanzhou', '兰州', '36.06673', '103.784326', 0);
INSERT INTO `cms_city` VALUES ('101160107', 'xigu', '西固', 'gansu', '甘肃', 'China', '中国', 'lanzhou', '兰州', '36.100369', '103.622331', 0);
INSERT INTO `cms_city` VALUES ('101160108', 'anning', '安宁', 'gansu', '甘肃', 'China', '中国', 'lanzhou', '兰州', '36.10329', '103.724038', 0);
INSERT INTO `cms_city` VALUES ('101160109', 'honggu', '红古', 'gansu', '甘肃', 'China', '中国', 'lanzhou', '兰州', '36.344177', '102.861814', 0);
INSERT INTO `cms_city` VALUES ('101160201', 'dingxi', '定西', 'gansu', '甘肃', 'China', '中国', 'dingxi', '定西', '35.579578', '104.626294', 0);
INSERT INTO `cms_city` VALUES ('101160202', 'tongwei', '通渭', 'gansu', '甘肃', 'China', '中国', 'dingxi', '定西', '35.208922', '105.250102', 0);
INSERT INTO `cms_city` VALUES ('101160203', 'longxi', '陇西', 'gansu', '甘肃', 'China', '中国', 'dingxi', '定西', '35.003409', '104.637554', 0);
INSERT INTO `cms_city` VALUES ('101160204', 'weiyuan', '渭源', 'gansu', '甘肃', 'China', '中国', 'dingxi', '定西', '35.133023', '104.211742', 0);
INSERT INTO `cms_city` VALUES ('101160205', 'lintao', '临洮', 'gansu', '甘肃', 'China', '中国', 'dingxi', '定西', '35.376233', '103.862186', 0);
INSERT INTO `cms_city` VALUES ('101160206', 'zhangxian', '漳县', 'gansu', '甘肃', 'China', '中国', 'dingxi', '定西', '34.848642', '104.466756', 0);
INSERT INTO `cms_city` VALUES ('101160207', 'minxian', '岷县', 'gansu', '甘肃', 'China', '中国', 'dingxi', '定西', '34.439105', '104.039882', 0);
INSERT INTO `cms_city` VALUES ('101160208', 'anding', '安定', 'gansu', '甘肃', 'China', '中国', 'dingxi', '定西', '35.579764', '104.62577', 0);
INSERT INTO `cms_city` VALUES ('101160301', 'pingliang', '平凉', 'gansu', '甘肃', 'China', '中国', 'pingliang', '平凉', '35.54279', '106.684691', 0);
INSERT INTO `cms_city` VALUES ('101160302', 'jingchuan', '泾川', 'gansu', '甘肃', 'China', '中国', 'pingliang', '平凉', '35.335283', '107.365218', 0);
INSERT INTO `cms_city` VALUES ('101160303', 'lingtai', '灵台', 'gansu', '甘肃', 'China', '中国', 'pingliang', '平凉', '35.064009', '107.620587', 0);
INSERT INTO `cms_city` VALUES ('101160304', 'chongxin', '崇信', 'gansu', '甘肃', 'China', '中国', 'pingliang', '平凉', '35.304533', '107.031253', 0);
INSERT INTO `cms_city` VALUES ('101160305', 'huating', '华亭', 'gansu', '甘肃', 'China', '中国', 'pingliang', '平凉', '35.215342', '106.649308', 0);
INSERT INTO `cms_city` VALUES ('101160306', 'zhuanglang', '庄浪', 'gansu', '甘肃', 'China', '中国', 'pingliang', '平凉', '35.203428', '106.041979', 0);
INSERT INTO `cms_city` VALUES ('101160307', 'jingning', '静宁', 'gansu', '甘肃', 'China', '中国', 'pingliang', '平凉', '35.525243', '105.733489', 0);
INSERT INTO `cms_city` VALUES ('101160308', 'kongtong', '崆峒', 'gansu', '甘肃', 'China', '中国', 'pingliang', '平凉', '35.54173', '106.684223', 0);
INSERT INTO `cms_city` VALUES ('101160401', 'qingyang', '庆阳', 'gansu', '甘肃', 'China', '中国', 'qingyang', '庆阳', '35.734218', '107.638372', 0);
INSERT INTO `cms_city` VALUES ('101160402', 'xifeng', '西峰', 'gansu', '甘肃', 'China', '中国', 'qingyang', '庆阳', '35.733713', '107.638824', 0);
INSERT INTO `cms_city` VALUES ('101160403', 'huanxian', '环县', 'gansu', '甘肃', 'China', '中国', 'qingyang', '庆阳', '36.569322', '107.308754', 0);
INSERT INTO `cms_city` VALUES ('101160404', 'huachi', '华池', 'gansu', '甘肃', 'China', '中国', 'qingyang', '庆阳', '36.457304', '107.986288', 0);
INSERT INTO `cms_city` VALUES ('101160405', 'heshui', '合水', 'gansu', '甘肃', 'China', '中国', 'qingyang', '庆阳', '35.819005', '108.019865', 0);
INSERT INTO `cms_city` VALUES ('101160406', 'zhengning', '正宁', 'gansu', '甘肃', 'China', '中国', 'qingyang', '庆阳', '35.490642', '108.361068', 0);
INSERT INTO `cms_city` VALUES ('101160407', 'ningxian', '宁县', 'gansu', '甘肃', 'China', '中国', 'qingyang', '庆阳', '35.50201', '107.921182', 0);
INSERT INTO `cms_city` VALUES ('101160408', 'zhenyuan', '镇原', 'gansu', '甘肃', 'China', '中国', 'qingyang', '庆阳', '35.677806', '107.195706', 0);
INSERT INTO `cms_city` VALUES ('101160409', 'qingcheng', '庆城', 'gansu', '甘肃', 'China', '中国', 'qingyang', '庆阳', '36.013504', '107.885664', 0);
INSERT INTO `cms_city` VALUES ('101160501', 'wuwei', '武威', 'gansu', '甘肃', 'China', '中国', 'wuwei', '武威', '37.929996', '102.634697', 0);
INSERT INTO `cms_city` VALUES ('101160502', 'minqin', '民勤', 'gansu', '甘肃', 'China', '中国', 'wuwei', '武威', '38.624621', '103.090654', 0);
INSERT INTO `cms_city` VALUES ('101160503', 'gulang', '古浪', 'gansu', '甘肃', 'China', '中国', 'wuwei', '武威', '37.470571', '102.898047', 0);
INSERT INTO `cms_city` VALUES ('101160504', 'liangzhou', '凉州', 'gansu', '甘肃', 'China', '中国', 'wuwei', '武威', '37.93025', '102.634492', 0);
INSERT INTO `cms_city` VALUES ('101160505', 'tianzhu', '天祝', 'gansu', '甘肃', 'China', '中国', 'wuwei', '武威', '36.971678', '103.142034', 0);
INSERT INTO `cms_city` VALUES ('101160601', 'jinchang', '金昌', 'gansu', '甘肃', 'China', '中国', 'jinchang', '金昌', '38.514238', '102.187888', 0);
INSERT INTO `cms_city` VALUES ('101160602', 'yongchang', '永昌', 'gansu', '甘肃', 'China', '中国', 'jinchang', '金昌', '38.247354', '101.971957', 0);
INSERT INTO `cms_city` VALUES ('101160603', 'jinchuan', '金川', 'gansu', '甘肃', 'China', '中国', 'jinchang', '金昌', '38.513793', '102.187683', 0);
INSERT INTO `cms_city` VALUES ('101160701', 'zhangye', '张掖', 'gansu', '甘肃', 'China', '中国', 'zhangye', '张掖', '38.932897', '100.455472', 0);
INSERT INTO `cms_city` VALUES ('101160702', 'sunan', '肃南', 'gansu', '甘肃', 'China', '中国', 'zhangye', '张掖', '38.837269', '99.617086', 0);
INSERT INTO `cms_city` VALUES ('101160703', 'minle', '民乐', 'gansu', '甘肃', 'China', '中国', 'zhangye', '张掖', '38.434454', '100.816623', 0);
INSERT INTO `cms_city` VALUES ('101160704', 'linze', '临泽', 'gansu', '甘肃', 'China', '中国', 'zhangye', '张掖', '39.152151', '100.166333', 0);
INSERT INTO `cms_city` VALUES ('101160705', 'gaotai', '高台', 'gansu', '甘肃', 'China', '中国', 'zhangye', '张掖', '39.376308', '99.81665', 0);
INSERT INTO `cms_city` VALUES ('101160706', 'shandan', '山丹', 'gansu', '甘肃', 'China', '中国', 'zhangye', '张掖', '38.784839', '101.088442', 0);
INSERT INTO `cms_city` VALUES ('101160707', 'ganzhou', '甘州', 'gansu', '甘肃', 'China', '中国', 'zhangye', '张掖', '38.931774', '100.454862', 0);
INSERT INTO `cms_city` VALUES ('101160801', 'jiuquan', '酒泉', 'gansu', '甘肃', 'China', '中国', 'jiuquan', '酒泉', '39.744023', '98.510795', 0);
INSERT INTO `cms_city` VALUES ('101160802', 'suzhou', '肃州', 'gansu', '甘肃', 'China', '中国', 'jiuquan', '酒泉', '39.743858', '98.511155', 0);
INSERT INTO `cms_city` VALUES ('101160803', 'jinta', '金塔', 'gansu', '甘肃', 'China', '中国', 'jiuquan', '酒泉', '39.983036', '98.902959', 0);
INSERT INTO `cms_city` VALUES ('101160804', 'akesai', '阿克塞', 'gansu', '甘肃', 'China', '中国', 'jiuquan', '酒泉', '39.631642', '94.337642', 0);
INSERT INTO `cms_city` VALUES ('101160805', 'guazhou', '瓜州', 'gansu', '甘肃', 'China', '中国', 'jiuquan', '酒泉', '40.516525', '95.780591', 0);
INSERT INTO `cms_city` VALUES ('101160806', 'subei', '肃北', 'gansu', '甘肃', 'China', '中国', 'jiuquan', '酒泉', '39.51224', '94.87728', 0);
INSERT INTO `cms_city` VALUES ('101160807', 'yumen', '玉门', 'gansu', '甘肃', 'China', '中国', 'jiuquan', '酒泉', '40.28682', '97.037206', 0);
INSERT INTO `cms_city` VALUES ('101160808', 'dunhuang', '敦煌', 'gansu', '甘肃', 'China', '中国', 'jiuquan', '酒泉', '40.141119', '94.664279', 0);
INSERT INTO `cms_city` VALUES ('101160901', 'tianshui', '天水', 'gansu', '甘肃', 'China', '中国', 'tianshui', '天水', '34.578529', '105.724998', 0);
INSERT INTO `cms_city` VALUES ('101160902', 'qinzhou', '秦州', 'gansu', '甘肃', 'China', '中国', 'tianshui', '天水', '34.578645', '105.724477', 0);
INSERT INTO `cms_city` VALUES ('101160903', 'qingshui', '清水', 'gansu', '甘肃', 'China', '中国', 'tianshui', '天水', '34.75287', '106.139878', 0);
INSERT INTO `cms_city` VALUES ('101160904', 'qinan', '秦安', 'gansu', '甘肃', 'China', '中国', 'tianshui', '天水', '34.862354', '105.6733', 0);
INSERT INTO `cms_city` VALUES ('101160905', 'gangu', '甘谷', 'gansu', '甘肃', 'China', '中国', 'tianshui', '天水', '34.747327', '105.332347', 0);
INSERT INTO `cms_city` VALUES ('101160906', 'wushan', '武山', 'gansu', '甘肃', 'China', '中国', 'tianshui', '天水', '34.721955', '104.891696', 0);
INSERT INTO `cms_city` VALUES ('101160907', 'zhangjiachuan', '张家川', 'gansu', '甘肃', 'China', '中国', 'tianshui', '天水', '34.993237', '106.212416', 0);
INSERT INTO `cms_city` VALUES ('101160908', 'maiji', '麦积', 'gansu', '甘肃', 'China', '中国', 'tianshui', '天水', '34.563504', '105.897631', 0);
INSERT INTO `cms_city` VALUES ('101161001', 'wudu', '武都', 'gansu', '甘肃', 'China', '中国', 'longnan', '陇南', '33.388155', '104.929866', 0);
INSERT INTO `cms_city` VALUES ('101161002', 'chengxian', '成县', 'gansu', '甘肃', 'China', '中国', 'longnan', '陇南', '33.739863', '105.734434', 0);
INSERT INTO `cms_city` VALUES ('101161003', 'wenxian', '文县', 'gansu', '甘肃', 'China', '中国', 'longnan', '陇南', '32.942171', '104.682448', 0);
INSERT INTO `cms_city` VALUES ('101161004', 'dangchang', '宕昌', 'gansu', '甘肃', 'China', '中国', 'longnan', '陇南', '34.042655', '104.394475', 0);
INSERT INTO `cms_city` VALUES ('101161005', 'kangxian', '康县', 'gansu', '甘肃', 'China', '中国', 'longnan', '陇南', '33.328266', '105.609534', 0);
INSERT INTO `cms_city` VALUES ('101161006', 'xihe', '西和', 'gansu', '甘肃', 'China', '中国', 'longnan', '陇南', '34.013718', '105.299737', 0);
INSERT INTO `cms_city` VALUES ('101161007', 'lixian', '礼县', 'gansu', '甘肃', 'China', '中国', 'longnan', '陇南', '34.189387', '105.181616', 0);
INSERT INTO `cms_city` VALUES ('101161008', 'huixian', '徽县', 'gansu', '甘肃', 'China', '中国', 'longnan', '陇南', '33.767785', '106.085632', 0);
INSERT INTO `cms_city` VALUES ('101161009', 'liangdang', '两当', 'gansu', '甘肃', 'China', '中国', 'longnan', '陇南', '33.910729', '106.306959', 0);
INSERT INTO `cms_city` VALUES ('101161010', 'longnan', '陇南', 'gansu', '甘肃', 'China', '中国', 'longnan', '陇南', '33.388598', '104.929379', 0);
INSERT INTO `cms_city` VALUES ('101161101', 'linxia', '临夏', 'gansu', '甘肃', 'China', '中国', 'linxia', '临夏', '35.59941', '103.211634', 0);
INSERT INTO `cms_city` VALUES ('101161102', 'kangle', '康乐', 'gansu', '甘肃', 'China', '中国', 'linxia', '临夏', '35.371906', '103.709852', 0);
INSERT INTO `cms_city` VALUES ('101161103', 'yongjing', '永靖', 'gansu', '甘肃', 'China', '中国', 'linxia', '临夏', '35.938933', '103.319871', 0);
INSERT INTO `cms_city` VALUES ('101161104', 'guanghe', '广河', 'gansu', '甘肃', 'China', '中国', 'linxia', '临夏', '35.481688', '103.576188', 0);
INSERT INTO `cms_city` VALUES ('101161105', 'hezheng', '和政', 'gansu', '甘肃', 'China', '中国', 'linxia', '临夏', '35.425971', '103.350357', 0);
INSERT INTO `cms_city` VALUES ('101161106', 'dongxiang', '东乡', 'gansu', '甘肃', 'China', '中国', 'linxia', '临夏', '35.66383', '103.389568', 0);
INSERT INTO `cms_city` VALUES ('101161107', 'jishishan', '积石山', 'gansu', '甘肃', 'China', '中国', 'linxia', '临夏', '35.712906', '102.877473', 0);
INSERT INTO `cms_city` VALUES ('101161201', 'hezuo', '合作', 'gansu', '甘肃', 'China', '中国', 'gannan', '甘南', '34.985973', '102.91149', 0);
INSERT INTO `cms_city` VALUES ('101161202', 'lintan', '临潭', 'gansu', '甘肃', 'China', '中国', 'gannan', '甘南', '34.69164', '103.353054', 0);
INSERT INTO `cms_city` VALUES ('101161203', 'zhuoni', '卓尼', 'gansu', '甘肃', 'China', '中国', 'gannan', '甘南', '34.588165', '103.508508', 0);
INSERT INTO `cms_city` VALUES ('101161204', 'zhouqu', '舟曲', 'gansu', '甘肃', 'China', '中国', 'gannan', '甘南', '33.782964', '104.370271', 0);
INSERT INTO `cms_city` VALUES ('101161205', 'diebu', '迭部', 'gansu', '甘肃', 'China', '中国', 'gannan', '甘南', '34.055348', '103.221009', 0);
INSERT INTO `cms_city` VALUES ('101161206', 'maqu', '玛曲', 'gansu', '甘肃', 'China', '中国', 'gannan', '甘南', '33.998068', '102.075767', 0);
INSERT INTO `cms_city` VALUES ('101161207', 'luqu', '碌曲', 'gansu', '甘肃', 'China', '中国', 'gannan', '甘南', '34.589591', '102.488495', 0);
INSERT INTO `cms_city` VALUES ('101161208', 'xiahe', '夏河', 'gansu', '甘肃', 'China', '中国', 'gannan', '甘南', '35.200853', '102.520743', 0);
INSERT INTO `cms_city` VALUES ('101161209', 'gannan', '甘南', 'gansu', '甘肃', 'China', '中国', 'gannan', '甘南', '34.986354', '102.911008', 0);
INSERT INTO `cms_city` VALUES ('101161301', 'baiyin', '白银', 'gansu', '甘肃', 'China', '中国', 'baiyin', '白银', '36.54568', '104.173606', 0);
INSERT INTO `cms_city` VALUES ('101161302', 'jingyuan', '靖远', 'gansu', '甘肃', 'China', '中国', 'baiyin', '白银', '36.561424', '104.686972', 0);
INSERT INTO `cms_city` VALUES ('101161303', 'huining', '会宁', 'gansu', '甘肃', 'China', '中国', 'baiyin', '白银', '35.692486', '105.054337', 0);
INSERT INTO `cms_city` VALUES ('101161304', 'pingchuan', '平川', 'gansu', '甘肃', 'China', '中国', 'baiyin', '白银', '36.72921', '104.819207', 0);
INSERT INTO `cms_city` VALUES ('101161305', 'jingtai', '景泰', 'gansu', '甘肃', 'China', '中国', 'baiyin', '白银', '37.193519', '104.066394', 0);
INSERT INTO `cms_city` VALUES ('101161401', 'jiayuguan', '嘉峪关', 'gansu', '甘肃', 'China', '中国', 'jiayuguan', '嘉峪关', '39.786529', '98.277304', 0);
INSERT INTO `cms_city` VALUES ('101170101', 'yinchuan', '银川', 'ningxia', '宁夏', 'China', '中国', 'yinchuan', '银川', '38.46637', '106.278179', 0);
INSERT INTO `cms_city` VALUES ('101170102', 'yongning', '永宁', 'ningxia', '宁夏', 'China', '中国', 'yinchuan', '银川', '38.28043', '106.253781', 0);
INSERT INTO `cms_city` VALUES ('101170103', 'lingwu', '灵武', 'ningxia', '宁夏', 'China', '中国', 'yinchuan', '银川', '38.094058', '106.334701', 0);
INSERT INTO `cms_city` VALUES ('101170104', 'helan', '贺兰', 'ningxia', '宁夏', 'China', '中国', 'yinchuan', '银川', '38.554563', '106.345904', 0);
INSERT INTO `cms_city` VALUES ('101170105', 'xingqing', '兴庆', 'ningxia', '宁夏', 'China', '中国', 'yinchuan', '银川', '38.46747', '106.278393', 0);
INSERT INTO `cms_city` VALUES ('101170106', 'xixia', '西夏', 'ningxia', '宁夏', 'China', '中国', 'yinchuan', '银川', '38.492424', '106.132116', 0);
INSERT INTO `cms_city` VALUES ('101170107', 'jinfeng', '金凤', 'ningxia', '宁夏', 'China', '中国', 'yinchuan', '银川', '38.477353', '106.228486', 0);
INSERT INTO `cms_city` VALUES ('101170201', 'shizuishan', '石嘴山', 'ningxia', '宁夏', 'China', '中国', 'shizuishan', '石嘴山', '39.01333', '106.376173', 0);
INSERT INTO `cms_city` VALUES ('101170202', 'huinong', '惠农', 'ningxia', '宁夏', 'China', '中国', 'shizuishan', '石嘴山', '39.230094', '106.775513', 0);
INSERT INTO `cms_city` VALUES ('101170203', 'pingluo', '平罗', 'ningxia', '宁夏', 'China', '中国', 'shizuishan', '石嘴山', '38.90674', '106.54489', 0);
INSERT INTO `cms_city` VALUES ('101170205', 'dawukou', '大武口', 'ningxia', '宁夏', 'China', '中国', 'shizuishan', '石嘴山', '39.014158', '106.376651', 0);
INSERT INTO `cms_city` VALUES ('101170301', 'wuzhong', '吴忠', 'ningxia', '宁夏', 'China', '中国', 'wuzhong', '吴忠', '37.986165', '106.199409', 0);
INSERT INTO `cms_city` VALUES ('101170302', 'tongxin', '同心', 'ningxia', '宁夏', 'China', '中国', 'wuzhong', '吴忠', '36.9829', '105.914764', 0);
INSERT INTO `cms_city` VALUES ('101170303', 'yanchi', '盐池', 'ningxia', '宁夏', 'China', '中国', 'wuzhong', '吴忠', '37.784222', '107.40541', 0);
INSERT INTO `cms_city` VALUES ('101170304', 'litong', '利通', 'ningxia', '宁夏', 'China', '中国', 'wuzhong', '吴忠', '37.985967', '106.199419', 0);
INSERT INTO `cms_city` VALUES ('101170305', 'hongsibao', '红寺堡', 'ningxia', '宁夏', 'China', '中国', 'wuzhong', '吴忠', '37.421616', '106.067315', 0);
INSERT INTO `cms_city` VALUES ('101170306', 'qingtongxia', '青铜峡', 'ningxia', '宁夏', 'China', '中国', 'wuzhong', '吴忠', '38.021509', '106.075395', 0);
INSERT INTO `cms_city` VALUES ('101170401', 'guyuan', '固原', 'ningxia', '宁夏', 'China', '中国', 'guyuan', '固原', '36.004561', '106.285241', 0);
INSERT INTO `cms_city` VALUES ('101170402', 'xiji', '西吉', 'ningxia', '宁夏', 'China', '中国', 'guyuan', '固原', '35.965384', '105.731801', 0);
INSERT INTO `cms_city` VALUES ('101170403', 'longde', '隆德', 'ningxia', '宁夏', 'China', '中国', 'guyuan', '固原', '35.618234', '106.12344', 0);
INSERT INTO `cms_city` VALUES ('101170404', 'jinyuan', '泾源', 'ningxia', '宁夏', 'China', '中国', 'guyuan', '固原', '35.49344', '106.338674', 0);
INSERT INTO `cms_city` VALUES ('101170405', 'yuanzhou', '原州', 'ningxia', '宁夏', 'China', '中国', 'guyuan', '固原', '36.005337', '106.28477', 0);
INSERT INTO `cms_city` VALUES ('101170406', 'pengyang', '彭阳', 'ningxia', '宁夏', 'China', '中国', 'guyuan', '固原', '35.849975', '106.641512', 0);
INSERT INTO `cms_city` VALUES ('101170501', 'zhongwei', '中卫', 'ningxia', '宁夏', 'China', '中国', 'zhongwei', '中卫', '37.514951', '105.189568', 0);
INSERT INTO `cms_city` VALUES ('101170502', 'zhongning', '中宁', 'ningxia', '宁夏', 'China', '中国', 'zhongwei', '中卫', '37.489736', '105.675784', 0);
INSERT INTO `cms_city` VALUES ('101170503', 'shapotou', '沙坡头', 'ningxia', '宁夏', 'China', '中国', 'zhongwei', '中卫', '37.514564', '105.190536', 0);
INSERT INTO `cms_city` VALUES ('101170504', 'haiyuan', '海原', 'ningxia', '宁夏', 'China', '中国', 'zhongwei', '中卫', '36.562007', '105.647323', 0);
INSERT INTO `cms_city` VALUES ('101180101', 'zhengzhou', '郑州', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.757975', '113.665412', 0);
INSERT INTO `cms_city` VALUES ('101180102', 'gongyi', '巩义', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.75218', '112.98283', 0);
INSERT INTO `cms_city` VALUES ('101180103', 'xingyang', '荥阳', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.789077', '113.391523', 0);
INSERT INTO `cms_city` VALUES ('101180104', 'dengfeng', '登封', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.459939', '113.037768', 0);
INSERT INTO `cms_city` VALUES ('101180105', 'xinmi', '新密', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.537846', '113.380616', 0);
INSERT INTO `cms_city` VALUES ('101180106', 'xinzheng', '新郑', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.394219', '113.73967', 0);
INSERT INTO `cms_city` VALUES ('101180107', 'zhongmou', '中牟', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.721976', '114.022521', 0);
INSERT INTO `cms_city` VALUES ('101180108', 'shangjie', '上街', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.808689', '113.298282', 0);
INSERT INTO `cms_city` VALUES ('101180109', 'zhongyuan', '中原', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.748286', '113.611576', 0);
INSERT INTO `cms_city` VALUES ('101180110', 'erqi', '二七', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.730936', '113.645422', 0);
INSERT INTO `cms_city` VALUES ('101180111', 'guancheng', '管城', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.746453', '113.685313', 0);
INSERT INTO `cms_city` VALUES ('101180112', 'jinshui', '金水', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.775838', '113.686037', 0);
INSERT INTO `cms_city` VALUES ('101180113', 'huiji', '惠济', 'henan', '河南', 'China', '中国', 'zhengzhou', '郑州', '34.828591', '113.61836', 0);
INSERT INTO `cms_city` VALUES ('101180201', 'anyang', '安阳', 'henan', '河南', 'China', '中国', 'anyang', '安阳', '36.103442', '114.352482', 0);
INSERT INTO `cms_city` VALUES ('101180202', 'tangyin', '汤阴', 'henan', '河南', 'China', '中国', 'anyang', '安阳', '35.922349', '114.362357', 0);
INSERT INTO `cms_city` VALUES ('101180203', 'huaxian', '滑县', 'henan', '河南', 'China', '中国', 'anyang', '安阳', '35.574628', '114.524', 0);
INSERT INTO `cms_city` VALUES ('101180204', 'neihuang', '内黄', 'henan', '河南', 'China', '中国', 'anyang', '安阳', '35.953702', '114.904582', 0);
INSERT INTO `cms_city` VALUES ('101180205', 'linzhou', '林州', 'henan', '河南', 'China', '中国', 'anyang', '安阳', '36.063403', '113.823767', 0);
INSERT INTO `cms_city` VALUES ('101180206', 'wenfeng', '文峰', 'henan', '河南', 'China', '中国', 'anyang', '安阳', '36.098101', '114.352562', 0);
INSERT INTO `cms_city` VALUES ('101180207', 'beiguan', '北关', 'henan', '河南', 'China', '中国', 'anyang', '安阳', '36.10978', '114.352646', 0);
INSERT INTO `cms_city` VALUES ('101180208', 'yindou', '殷都', 'henan', '河南', 'China', '中国', 'anyang', '安阳', '36.108974', '114.300098', 0);
INSERT INTO `cms_city` VALUES ('101180209', 'longan', '龙安', 'henan', '河南', 'China', '中国', 'anyang', '安阳', '36.095568', '114.323522', 0);
INSERT INTO `cms_city` VALUES ('101180301', 'xinxiang', '新乡', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.190021', '113.806186', 0);
INSERT INTO `cms_city` VALUES ('101180302', 'huojia', '获嘉', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.261685', '113.657249', 0);
INSERT INTO `cms_city` VALUES ('101180303', 'yuanyang', '原阳', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.054001', '113.965966', 0);
INSERT INTO `cms_city` VALUES ('101180304', 'huixian', '辉县', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.461318', '113.802518', 0);
INSERT INTO `cms_city` VALUES ('101180305', 'weihui', '卫辉', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.404295', '114.065855', 0);
INSERT INTO `cms_city` VALUES ('101180306', 'yanjin', '延津', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.149515', '114.200982', 0);
INSERT INTO `cms_city` VALUES ('101180307', 'fengqiu', '封丘', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.04057', '114.423405', 0);
INSERT INTO `cms_city` VALUES ('101180308', 'changyuan', '长垣', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.19615', '114.673807', 0);
INSERT INTO `cms_city` VALUES ('101180309', 'hongqi', '红旗', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.302684', '113.878158', 0);
INSERT INTO `cms_city` VALUES ('101180310', 'weibin', '卫滨', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.304905', '113.866065', 0);
INSERT INTO `cms_city` VALUES ('101180311', 'fengquan', '凤泉', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.379855', '113.906712', 0);
INSERT INTO `cms_city` VALUES ('101180312', 'muye', '牧野', 'henan', '河南', 'China', '中国', 'xinxiang', '新乡', '35.312974', '113.89716', 0);
INSERT INTO `cms_city` VALUES ('101180401', 'xuchang', '许昌', 'henan', '河南', 'China', '中国', 'xuchang', '许昌', '34.022956', '113.826063', 0);
INSERT INTO `cms_city` VALUES ('101180402', 'yanling', '鄢陵', 'henan', '河南', 'China', '中国', 'xuchang', '许昌', '34.100502', '114.188507', 0);
INSERT INTO `cms_city` VALUES ('101180403', 'xiangcheng', '襄城', 'henan', '河南', 'China', '中国', 'xuchang', '许昌', '33.855943', '113.493166', 0);
INSERT INTO `cms_city` VALUES ('101180404', 'changge', '长葛', 'henan', '河南', 'China', '中国', 'xuchang', '许昌', '34.219257', '113.768912', 0);
INSERT INTO `cms_city` VALUES ('101180405', 'yuzhou', '禹州', 'henan', '河南', 'China', '中国', 'xuchang', '许昌', '34.154403', '113.471316', 0);
INSERT INTO `cms_city` VALUES ('101180406', 'weidou', '魏都', 'henan', '河南', 'China', '中国', 'xuchang', '许昌', '34.02711', '113.828307', 0);
INSERT INTO `cms_city` VALUES ('101180501', 'pingdingshan', '平顶山', 'henan', '河南', 'China', '中国', 'pingdingshan', '平顶山', '33.735241', '113.307718', 0);
INSERT INTO `cms_city` VALUES ('101180502', 'jiaxian', '郏县', 'henan', '河南', 'China', '中国', 'pingdingshan', '平顶山', '33.971993', '113.220451', 0);
INSERT INTO `cms_city` VALUES ('101180503', 'baofeng', '宝丰', 'henan', '河南', 'China', '中国', 'pingdingshan', '平顶山', '33.866359', '113.066812', 0);
INSERT INTO `cms_city` VALUES ('101180504', 'ruzhou', '汝州', 'henan', '河南', 'China', '中国', 'pingdingshan', '平顶山', '34.167408', '112.845336', 0);
INSERT INTO `cms_city` VALUES ('101180505', 'yexian', '叶县', 'henan', '河南', 'China', '中国', 'pingdingshan', '平顶山', '33.621252', '113.358298', 0);
INSERT INTO `cms_city` VALUES ('101180506', 'wugang', '舞钢', 'henan', '河南', 'China', '中国', 'pingdingshan', '平顶山', '33.302082', '113.52625', 0);
INSERT INTO `cms_city` VALUES ('101180507', 'lushan', '鲁山', 'henan', '河南', 'China', '中国', 'pingdingshan', '平顶山', '33.740325', '112.906703', 0);
INSERT INTO `cms_city` VALUES ('101180508', 'shilong', '石龙', 'henan', '河南', 'China', '中国', 'pingdingshan', '平顶山', '33.901538', '112.889885', 0);
INSERT INTO `cms_city` VALUES ('101180509', 'xinhua', '新华', 'henan', '河南', 'China', '中国', 'pingdingshan', '平顶山', '33.737579', '113.299061', 0);
INSERT INTO `cms_city` VALUES ('101180510', 'weidong', '卫东', 'henan', '河南', 'China', '中国', 'pingdingshan', '平顶山', '33.739285', '113.310327', 0);
INSERT INTO `cms_city` VALUES ('101180511', 'zhanhe', '湛河', 'henan', '河南', 'China', '中国', 'pingdingshan', '平顶山', '33.725681', '113.320873', 0);
INSERT INTO `cms_city` VALUES ('101180601', 'xinyang', '信阳', 'henan', '河南', 'China', '中国', 'xinyang', '信阳', '32.123274', '114.075031', 0);
INSERT INTO `cms_city` VALUES ('101180602', 'xixian', '息县', 'henan', '河南', 'China', '中国', 'xinyang', '信阳', '32.344744', '114.740713', 0);
INSERT INTO `cms_city` VALUES ('101180603', 'luoshan', '罗山', 'henan', '河南', 'China', '中国', 'xinyang', '信阳', '32.203206', '114.533414', 0);
INSERT INTO `cms_city` VALUES ('101180604', 'guangshan', '光山', 'henan', '河南', 'China', '中国', 'xinyang', '信阳', '32.010398', '114.903577', 0);
INSERT INTO `cms_city` VALUES ('101180605', 'xinxian', '新县', 'henan', '河南', 'China', '中国', 'xinyang', '信阳', '31.63515', '114.87705', 0);
INSERT INTO `cms_city` VALUES ('101180606', 'huaibin', '淮滨', 'henan', '河南', 'China', '中国', 'xinyang', '信阳', '32.452639', '115.415451', 0);
INSERT INTO `cms_city` VALUES ('101180607', 'huangchuan', '潢川', 'henan', '河南', 'China', '中国', 'xinyang', '信阳', '32.134024', '115.050123', 0);
INSERT INTO `cms_city` VALUES ('101180608', 'gushi', '固始', 'henan', '河南', 'China', '中国', 'xinyang', '信阳', '32.183074', '115.667328', 0);
INSERT INTO `cms_city` VALUES ('101180609', 'shangcheng', '商城', 'henan', '河南', 'China', '中国', 'xinyang', '信阳', '31.799982', '115.406297', 0);
INSERT INTO `cms_city` VALUES ('101180610', 'shihe', '浉河', 'henan', '河南', 'China', '中国', 'xinyang', '信阳', '32.123274', '114.075031', 0);
INSERT INTO `cms_city` VALUES ('101180611', 'pingqiao', '平桥', 'henan', '河南', 'China', '中国', 'xinyang', '信阳', '32.098395', '114.126027', 0);
INSERT INTO `cms_city` VALUES ('101180701', 'nanyang', '南阳', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '32.999082', '112.540918', 0);
INSERT INTO `cms_city` VALUES ('101180702', 'nanzhao', '南召', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '33.488617', '112.435583', 0);
INSERT INTO `cms_city` VALUES ('101180703', 'fangcheng', '方城', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '33.255138', '113.010933', 0);
INSERT INTO `cms_city` VALUES ('101180704', 'sheqi', '社旗', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '33.056126', '112.938279', 0);
INSERT INTO `cms_city` VALUES ('101180705', 'xixia', '西峡', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '33.302981', '111.485772', 0);
INSERT INTO `cms_city` VALUES ('101180706', 'neixiang', '内乡', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '33.046358', '111.843801', 0);
INSERT INTO `cms_city` VALUES ('101180707', 'zhenping', '镇平', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '33.036651', '112.232722', 0);
INSERT INTO `cms_city` VALUES ('101180708', 'xichuan', '淅川', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '33.136106', '111.489026', 0);
INSERT INTO `cms_city` VALUES ('101180709', 'xinye', '新野', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '32.524006', '112.365624', 0);
INSERT INTO `cms_city` VALUES ('101180710', 'tanghe', '唐河', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '32.687892', '112.838492', 0);
INSERT INTO `cms_city` VALUES ('101180711', 'dengzhou', '邓州', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '32.681642', '112.092716', 0);
INSERT INTO `cms_city` VALUES ('101180712', 'tongbai', '桐柏', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '32.367153', '113.406059', 0);
INSERT INTO `cms_city` VALUES ('101180713', 'wancheng', '宛城', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '32.994857', '112.544591', 0);
INSERT INTO `cms_city` VALUES ('101180714', 'wolong', '卧龙', 'henan', '河南', 'China', '中国', 'nanyang', '南阳', '32.989877', '112.528789', 0);
INSERT INTO `cms_city` VALUES ('101180801', 'kaifeng', '开封', 'henan', '河南', 'China', '中国', 'kaifeng', '开封', '34.797049', '114.341447', 0);
INSERT INTO `cms_city` VALUES ('101180802', 'qixian', '杞县', 'henan', '河南', 'China', '中国', 'kaifeng', '开封', '34.554585', '114.770472', 0);
INSERT INTO `cms_city` VALUES ('101180803', 'weishi', '尉氏', 'henan', '河南', 'China', '中国', 'kaifeng', '开封', '34.412256', '114.193927', 0);
INSERT INTO `cms_city` VALUES ('101180804', 'tongxu', '通许', 'henan', '河南', 'China', '中国', 'kaifeng', '开封', '34.477302', '114.467734', 0);
INSERT INTO `cms_city` VALUES ('101180805', 'lankao', '兰考', 'henan', '河南', 'China', '中国', 'kaifeng', '开封', '34.829899', '114.820572', 0);
INSERT INTO `cms_city` VALUES ('101180806', 'longting', '龙亭', 'henan', '河南', 'China', '中国', 'kaifeng', '开封', '34.799833', '114.353348', 0);
INSERT INTO `cms_city` VALUES ('101180807', 'shunhe', '顺河', 'henan', '河南', 'China', '中国', 'kaifeng', '开封', '34.800459', '114.364875', 0);
INSERT INTO `cms_city` VALUES ('101180808', 'gulou', '鼓楼', 'henan', '河南', 'China', '中国', 'kaifeng', '开封', '34.792383', '114.3485', 0);
INSERT INTO `cms_city` VALUES ('101180809', 'yuwangtai', '禹王台', 'henan', '河南', 'China', '中国', 'kaifeng', '开封', '34.779727', '114.350246', 0);
INSERT INTO `cms_city` VALUES ('101180810', 'xiangfu', '祥符', 'henan', '河南', 'China', '中国', 'kaifeng', '开封', '34.756476', '114.437622', 0);
INSERT INTO `cms_city` VALUES ('101180901', 'luoyang', '洛阳', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.663041', '112.434468', 0);
INSERT INTO `cms_city` VALUES ('101180902', 'xinan', '新安', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.728679', '112.141403', 0);
INSERT INTO `cms_city` VALUES ('101180903', 'mengjin', '孟津', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.826485', '112.443892', 0);
INSERT INTO `cms_city` VALUES ('101180904', 'yiyang', '宜阳', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.516478', '112.179989', 0);
INSERT INTO `cms_city` VALUES ('101180905', 'luoning', '洛宁', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.387179', '111.655399', 0);
INSERT INTO `cms_city` VALUES ('101180906', 'yichuan', '伊川', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.423416', '112.429384', 0);
INSERT INTO `cms_city` VALUES ('101180907', 'songxian', '嵩县', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.131563', '112.087765', 0);
INSERT INTO `cms_city` VALUES ('101180908', 'yanshi', '偃师', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.723042', '112.787739', 0);
INSERT INTO `cms_city` VALUES ('101180909', 'luanchuan', '栾川', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '33.783195', '111.618386', 0);
INSERT INTO `cms_city` VALUES ('101180910', 'ruyang', '汝阳', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.15323', '112.473789', 0);
INSERT INTO `cms_city` VALUES ('101180911', 'jili', '吉利', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.899093', '112.584796', 0);
INSERT INTO `cms_city` VALUES ('101180912', 'laocheng', '老城', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.682945', '112.477298', 0);
INSERT INTO `cms_city` VALUES ('101180913', 'xigong', '西工', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.667847', '112.443232', 0);
INSERT INTO `cms_city` VALUES ('101180914', 'chanhe', '瀍河', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.684738', '112.491625', 0);
INSERT INTO `cms_city` VALUES ('101180915', 'jianxi', '涧西', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.654251', '112.399243', 0);
INSERT INTO `cms_city` VALUES ('101180916', 'luolong', '洛龙', 'henan', '河南', 'China', '中国', 'luoyang', '洛阳', '34.618557', '112.456634', 0);
INSERT INTO `cms_city` VALUES ('101181001', 'shangqiu', '商丘', 'henan', '河南', 'China', '中国', 'shangqiu', '商丘', '34.437054', '115.650497', 0);
INSERT INTO `cms_city` VALUES ('101181002', 'liangyuan', '梁园', 'henan', '河南', 'China', '中国', 'shangqiu', '商丘', '34.436553', '115.65459', 0);
INSERT INTO `cms_city` VALUES ('101181003', 'suixian', '睢县', 'henan', '河南', 'China', '中国', 'shangqiu', '商丘', '34.428433', '115.070109', 0);
INSERT INTO `cms_city` VALUES ('101181004', 'minquan', '民权', 'henan', '河南', 'China', '中国', 'shangqiu', '商丘', '34.648455', '115.148146', 0);
INSERT INTO `cms_city` VALUES ('101181005', 'yucheng', '虞城', 'henan', '河南', 'China', '中国', 'shangqiu', '商丘', '34.399634', '115.863811', 0);
INSERT INTO `cms_city` VALUES ('101181006', 'zhecheng', '柘城', 'henan', '河南', 'China', '中国', 'shangqiu', '商丘', '34.075277', '115.307433', 0);
INSERT INTO `cms_city` VALUES ('101181007', 'ningling', '宁陵', 'henan', '河南', 'China', '中国', 'shangqiu', '商丘', '34.449299', '115.320055', 0);
INSERT INTO `cms_city` VALUES ('101181008', 'xiayi', '夏邑', 'henan', '河南', 'China', '中国', 'shangqiu', '商丘', '34.240894', '116.13989', 0);
INSERT INTO `cms_city` VALUES ('101181009', 'yongcheng', '永城', 'henan', '河南', 'China', '中国', 'shangqiu', '商丘', '33.931318', '116.449672', 0);
INSERT INTO `cms_city` VALUES ('101181010', 'suiyang', '睢阳', 'henan', '河南', 'China', '中国', 'shangqiu', '商丘', '34.390536', '115.653813', 0);
INSERT INTO `cms_city` VALUES ('101181101', 'jiaozuo', '焦作', 'henan', '河南', 'China', '中国', 'jiaozuo', '焦作', '35.23904', '113.238266', 0);
INSERT INTO `cms_city` VALUES ('101181102', 'xiuwu', '修武', 'henan', '河南', 'China', '中国', 'jiaozuo', '焦作', '35.229923', '113.447465', 0);
INSERT INTO `cms_city` VALUES ('101181103', 'wuzhi', '武陟', 'henan', '河南', 'China', '中国', 'jiaozuo', '焦作', '35.09885', '113.408334', 0);
INSERT INTO `cms_city` VALUES ('101181104', 'qinyang', '沁阳', 'henan', '河南', 'China', '中国', 'jiaozuo', '焦作', '35.08901', '112.934538', 0);
INSERT INTO `cms_city` VALUES ('101181105', 'jiefang', '解放', 'henan', '河南', 'China', '中国', 'jiaozuo', '焦作', '35.241353', '113.226126', 0);
INSERT INTO `cms_city` VALUES ('101181106', 'boai', '博爱', 'henan', '河南', 'China', '中国', 'jiaozuo', '焦作', '35.170351', '113.069313', 0);
INSERT INTO `cms_city` VALUES ('101181107', 'wenxian', '温县', 'henan', '河南', 'China', '中国', 'jiaozuo', '焦作', '34.941233', '113.079118', 0);
INSERT INTO `cms_city` VALUES ('101181108', 'mengzhou', '孟州', 'henan', '河南', 'China', '中国', 'jiaozuo', '焦作', '34.90963', '112.78708', 0);
INSERT INTO `cms_city` VALUES ('101181109', 'zhongzhan', '中站', 'henan', '河南', 'China', '中国', 'jiaozuo', '焦作', '35.236145', '113.175485', 0);
INSERT INTO `cms_city` VALUES ('101181110', 'macun', '马村', 'henan', '河南', 'China', '中国', 'jiaozuo', '焦作', '35.265453', '113.321703', 0);
INSERT INTO `cms_city` VALUES ('101181111', 'shanyang', '山阳', 'henan', '河南', 'China', '中国', 'jiaozuo', '焦作', '35.21476', '113.26766', 0);
INSERT INTO `cms_city` VALUES ('101181201', 'hebi', '鹤壁', 'henan', '河南', 'China', '中国', 'hebi', '鹤壁', '35.748236', '114.295444', 0);
INSERT INTO `cms_city` VALUES ('101181202', 'xunxian', '浚县', 'henan', '河南', 'China', '中国', 'hebi', '鹤壁', '35.671282', '114.550162', 0);
INSERT INTO `cms_city` VALUES ('101181203', 'qixian', '淇县', 'henan', '河南', 'China', '中国', 'hebi', '鹤壁', '35.609478', '114.200379', 0);
INSERT INTO `cms_city` VALUES ('101181204', 'heshan', '鹤山', 'henan', '河南', 'China', '中国', 'hebi', '鹤壁', '35.936128', '114.166551', 0);
INSERT INTO `cms_city` VALUES ('101181205', 'shancheng', '山城', 'henan', '河南', 'China', '中国', 'hebi', '鹤壁', '35.896058', '114.184202', 0);
INSERT INTO `cms_city` VALUES ('101181206', 'qibin', '淇滨', 'henan', '河南', 'China', '中国', 'hebi', '鹤壁', '35.748382', '114.293917', 0);
INSERT INTO `cms_city` VALUES ('101181301', 'puyang', '濮阳', 'henan', '河南', 'China', '中国', 'puyang', '濮阳', '35.768234', '115.041299', 0);
INSERT INTO `cms_city` VALUES ('101181302', 'taiqian', '台前', 'henan', '河南', 'China', '中国', 'puyang', '濮阳', '35.996474', '115.855681', 0);
INSERT INTO `cms_city` VALUES ('101181303', 'nanle', '南乐', 'henan', '河南', 'China', '中国', 'puyang', '濮阳', '36.075204', '115.204336', 0);
INSERT INTO `cms_city` VALUES ('101181304', 'qingfeng', '清丰', 'henan', '河南', 'China', '中国', 'puyang', '濮阳', '35.902413', '115.107287', 0);
INSERT INTO `cms_city` VALUES ('101181305', 'fanxian', '范县', 'henan', '河南', 'China', '中国', 'puyang', '濮阳', '35.851977', '115.504212', 0);
INSERT INTO `cms_city` VALUES ('101181306', 'hualong', '华龙', 'henan', '河南', 'China', '中国', 'puyang', '濮阳', '35.760473', '115.03184', 0);
INSERT INTO `cms_city` VALUES ('101181401', 'zhoukou', '周口', 'henan', '河南', 'China', '中国', 'zhoukou', '周口', '33.620357', '114.649653', 0);
INSERT INTO `cms_city` VALUES ('101181402', 'fugou', '扶沟', 'henan', '河南', 'China', '中国', 'zhoukou', '周口', '34.054061', '114.392008', 0);
INSERT INTO `cms_city` VALUES ('101181403', 'taikang', '太康', 'henan', '河南', 'China', '中国', 'zhoukou', '周口', '34.065312', '114.853834', 0);
INSERT INTO `cms_city` VALUES ('101181404', 'huaiyang', '淮阳', 'henan', '河南', 'China', '中国', 'zhoukou', '周口', '33.732547', '114.870166', 0);
INSERT INTO `cms_city` VALUES ('101181405', 'xihua', '西华', 'henan', '河南', 'China', '中国', 'zhoukou', '周口', '33.784378', '114.530067', 0);
INSERT INTO `cms_city` VALUES ('101181406', 'shangshui', '商水', 'henan', '河南', 'China', '中国', 'zhoukou', '周口', '33.543845', '114.60927', 0);
INSERT INTO `cms_city` VALUES ('101181407', 'xiangcheng', '项城', 'henan', '河南', 'China', '中国', 'zhoukou', '周口', '33.443085', '114.899521', 0);
INSERT INTO `cms_city` VALUES ('101181408', 'dancheng', '郸城', 'henan', '河南', 'China', '中国', 'zhoukou', '周口', '33.643852', '115.189', 0);
INSERT INTO `cms_city` VALUES ('101181409', 'luyi', '鹿邑', 'henan', '河南', 'China', '中国', 'zhoukou', '周口', '33.861067', '115.486386', 0);
INSERT INTO `cms_city` VALUES ('101181410', 'shenqiu', '沈丘', 'henan', '河南', 'China', '中国', 'zhoukou', '周口', '33.395514', '115.078375', 0);
INSERT INTO `cms_city` VALUES ('101181411', 'chuanhui', '川汇', 'henan', '河南', 'China', '中国', 'zhoukou', '周口', '33.614836', '114.652136', 0);
INSERT INTO `cms_city` VALUES ('101181501', 'luohe', '漯河', 'henan', '河南', 'China', '中国', 'luohe', '漯河', '33.575855', '114.026405', 0);
INSERT INTO `cms_city` VALUES ('101181502', 'linying', '临颍', 'henan', '河南', 'China', '中国', 'luohe', '漯河', '33.80609', '113.938891', 0);
INSERT INTO `cms_city` VALUES ('101181503', 'wuyang', '舞阳', 'henan', '河南', 'China', '中国', 'luohe', '漯河', '33.436278', '113.610565', 0);
INSERT INTO `cms_city` VALUES ('101181504', 'yuanhui', '源汇', 'henan', '河南', 'China', '中国', 'luohe', '漯河', '33.565441', '114.017948', 0);
INSERT INTO `cms_city` VALUES ('101181505', 'yancheng', '郾城', 'henan', '河南', 'China', '中国', 'luohe', '漯河', '33.588897', '114.016813', 0);
INSERT INTO `cms_city` VALUES ('101181506', 'zhaoling', '召陵', 'henan', '河南', 'China', '中国', 'luohe', '漯河', '33.567555', '114.051686', 0);
INSERT INTO `cms_city` VALUES ('101181601', 'zhumadian', '驻马店', 'henan', '河南', 'China', '中国', 'zhumadian', '驻马店', '32.980169', '114.024736', 0);
INSERT INTO `cms_city` VALUES ('101181602', 'xiping', '西平', 'henan', '河南', 'China', '中国', 'zhumadian', '驻马店', '33.382315', '114.026864', 0);
INSERT INTO `cms_city` VALUES ('101181603', 'suiping', '遂平', 'henan', '河南', 'China', '中国', 'zhumadian', '驻马店', '33.14698', '114.00371', 0);
INSERT INTO `cms_city` VALUES ('101181604', 'shangcai', '上蔡', 'henan', '河南', 'China', '中国', 'zhumadian', '驻马店', '33.264719', '114.266892', 0);
INSERT INTO `cms_city` VALUES ('101181605', 'runan', '汝南', 'henan', '河南', 'China', '中国', 'zhumadian', '驻马店', '33.004535', '114.359495', 0);
INSERT INTO `cms_city` VALUES ('101181606', 'biyang', '泌阳', 'henan', '河南', 'China', '中国', 'zhumadian', '驻马店', '32.725129', '113.32605', 0);
INSERT INTO `cms_city` VALUES ('101181607', 'pingyu', '平舆', 'henan', '河南', 'China', '中国', 'zhumadian', '驻马店', '32.955626', '114.637105', 0);
INSERT INTO `cms_city` VALUES ('101181608', 'xincai', '新蔡', 'henan', '河南', 'China', '中国', 'zhumadian', '驻马店', '32.749948', '114.975246', 0);
INSERT INTO `cms_city` VALUES ('101181609', 'queshan', '确山', 'henan', '河南', 'China', '中国', 'zhumadian', '驻马店', '32.801538', '114.026679', 0);
INSERT INTO `cms_city` VALUES ('101181610', 'zhengyang', '正阳', 'henan', '河南', 'China', '中国', 'zhumadian', '驻马店', '32.601826', '114.38948', 0);
INSERT INTO `cms_city` VALUES ('101181611', 'yicheng', '驿城', 'henan', '河南', 'China', '中国', 'zhumadian', '驻马店', '32.977559', '114.029149', 0);
INSERT INTO `cms_city` VALUES ('101181701', 'sanmenxia', '三门峡', 'henan', '河南', 'China', '中国', 'sanmenxia', '三门峡', '34.777338', '111.194099', 0);
INSERT INTO `cms_city` VALUES ('101181702', 'lingbao', '灵宝', 'henan', '河南', 'China', '中国', 'sanmenxia', '三门峡', '34.521264', '110.88577', 0);
INSERT INTO `cms_city` VALUES ('101181703', 'mianchi', '渑池', 'henan', '河南', 'China', '中国', 'sanmenxia', '三门峡', '34.763487', '111.762992', 0);
INSERT INTO `cms_city` VALUES ('101181704', 'lushi', '卢氏', 'henan', '河南', 'China', '中国', 'sanmenxia', '三门峡', '34.053995', '111.052649', 0);
INSERT INTO `cms_city` VALUES ('101181705', 'yima', '义马', 'henan', '河南', 'China', '中国', 'sanmenxia', '三门峡', '34.746868', '111.869417', 0);
INSERT INTO `cms_city` VALUES ('101181706', 'shanxian', '陕县', 'henan', '河南', 'China', '中国', 'sanmenxia', '三门峡', '34.782', '111.195', 0);
INSERT INTO `cms_city` VALUES ('101181707', 'hubin', '湖滨', 'henan', '河南', 'China', '中国', 'sanmenxia', '三门峡', '34.77812', '111.19487', 0);
INSERT INTO `cms_city` VALUES ('101181708', 'shanzhou', '陕州', 'henan', '河南', 'China', '中国', 'sanmenxia', '三门峡', '34.720244', '111.103851', 0);
INSERT INTO `cms_city` VALUES ('101181801', 'jiyuan', '济源', 'henan', '河南', 'China', '中国', 'jiyuan', '济源', '35.090378', '112.590047', 0);
INSERT INTO `cms_city` VALUES ('101190101', 'nanjing', '南京', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '32.041544', '118.767413', 1);
INSERT INTO `cms_city` VALUES ('101190102', 'lishui', '溧水', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '31.653061', '119.028732', 0);
INSERT INTO `cms_city` VALUES ('101190103', 'gaochun', '高淳', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '31.327132', '118.87589', 0);
INSERT INTO `cms_city` VALUES ('101190104', 'jiangning', '江宁', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '31.953418', '118.850621', 0);
INSERT INTO `cms_city` VALUES ('101190105', 'luhe', '六合', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '32.340655', '118.85065', 0);
INSERT INTO `cms_city` VALUES ('101190107', 'pukou', '浦口', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '32.05839', '118.625307', 0);
INSERT INTO `cms_city` VALUES ('101190108', 'xuanwu', '玄武', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '32.050678', '118.792199', 0);
INSERT INTO `cms_city` VALUES ('101190109', 'qinhuai', '秦淮', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '32.033818', '118.786088', 0);
INSERT INTO `cms_city` VALUES ('101190110', 'jianye', '建邺', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '32.004538', '118.732688', 0);
INSERT INTO `cms_city` VALUES ('101190111', 'gulou', '鼓楼', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '32.066966', '118.769739', 0);
INSERT INTO `cms_city` VALUES ('101190112', 'qixia', '栖霞', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '32.102147', '118.808702', 0);
INSERT INTO `cms_city` VALUES ('101190113', 'yuhuatai', '雨花台', 'jiangsu', '江苏', 'China', '中国', 'nanjing', '南京', '31.995946', '118.77207', 0);
INSERT INTO `cms_city` VALUES ('101190201', 'wuxi', '无锡', 'jiangsu', '江苏', 'China', '中国', 'wuxi', '无锡', '31.574729', '120.301663', 0);
INSERT INTO `cms_city` VALUES ('101190202', 'jiangyin', '江阴', 'jiangsu', '江苏', 'China', '中国', 'wuxi', '无锡', '31.910984', '120.275891', 0);
INSERT INTO `cms_city` VALUES ('101190203', 'yixing', '宜兴', 'jiangsu', '江苏', 'China', '中国', 'wuxi', '无锡', '31.364384', '119.820538', 0);
INSERT INTO `cms_city` VALUES ('101190204', 'xishan', '锡山', 'jiangsu', '江苏', 'China', '中国', 'wuxi', '无锡', '31.585559', '120.357298', 0);
INSERT INTO `cms_city` VALUES ('101190205', 'huishan', '惠山', 'jiangsu', '江苏', 'China', '中国', 'wuxi', '无锡', '31.681019', '120.303543', 0);
INSERT INTO `cms_city` VALUES ('101190206', 'binhu', '滨湖', 'jiangsu', '江苏', 'China', '中国', 'wuxi', '无锡', '31.550228', '120.266053', 0);
INSERT INTO `cms_city` VALUES ('101190207', 'liangxi', '梁溪', 'jiangsu', '江苏', 'China', '中国', 'wuxi', '无锡', '31.575706', '120.296595', 0);
INSERT INTO `cms_city` VALUES ('101190208', 'xinwu', '新吴', 'jiangsu', '江苏', 'China', '中国', 'wuxi', '无锡', '31.550966', '120.352782', 0);
INSERT INTO `cms_city` VALUES ('101190301', 'zhenjiang', '镇江', 'jiangsu', '江苏', 'China', '中国', 'zhenjiang', '镇江', '32.204402', '119.452753', 0);
INSERT INTO `cms_city` VALUES ('101190302', 'danyang', '丹阳', 'jiangsu', '江苏', 'China', '中国', 'zhenjiang', '镇江', '31.991459', '119.581911', 0);
INSERT INTO `cms_city` VALUES ('101190303', 'yangzhong', '扬中', 'jiangsu', '江苏', 'China', '中国', 'zhenjiang', '镇江', '32.237266', '119.828054', 0);
INSERT INTO `cms_city` VALUES ('101190304', 'jurong', '句容', 'jiangsu', '江苏', 'China', '中国', 'zhenjiang', '镇江', '31.947355', '119.167135', 0);
INSERT INTO `cms_city` VALUES ('101190305', 'dantu', '丹徒', 'jiangsu', '江苏', 'China', '中国', 'zhenjiang', '镇江', '32.128972', '119.433883', 0);
INSERT INTO `cms_city` VALUES ('101190306', 'jingkou', '京口', 'jiangsu', '江苏', 'China', '中国', 'zhenjiang', '镇江', '32.206191', '119.454571', 0);
INSERT INTO `cms_city` VALUES ('101190307', 'runzhou', '润州', 'jiangsu', '江苏', 'China', '中国', 'zhenjiang', '镇江', '32.213501', '119.414877', 0);
INSERT INTO `cms_city` VALUES ('101190401', 'suzhou', '苏州', 'jiangsu', '江苏', 'China', '中国', 'suzhou', '苏州', '31.299379', '120.619585', 1);
INSERT INTO `cms_city` VALUES ('101190402', 'changshu', '常熟', 'jiangsu', '江苏', 'China', '中国', 'suzhou', '苏州', '31.658156', '120.74852', 0);
INSERT INTO `cms_city` VALUES ('101190403', 'zhangjiagang', '张家港', 'jiangsu', '江苏', 'China', '中国', 'suzhou', '苏州', '31.865553', '120.543441', 0);
INSERT INTO `cms_city` VALUES ('101190404', 'kunshan', '昆山', 'jiangsu', '江苏', 'China', '中国', 'suzhou', '苏州', '31.381925', '120.958137', 0);
INSERT INTO `cms_city` VALUES ('101190405', 'wuzhong', '吴中', 'jiangsu', '江苏', 'China', '中国', 'suzhou', '苏州', '31.270839', '120.624621', 0);
INSERT INTO `cms_city` VALUES ('101190406', 'huqiu', '虎丘', 'jiangsu', '江苏', 'China', '中国', 'suzhou', '苏州', '31.294845', '120.566833', 0);
INSERT INTO `cms_city` VALUES ('101190407', 'wujiang', '吴江', 'jiangsu', '江苏', 'China', '中国', 'suzhou', '苏州', '31.160404', '120.641601', 0);
INSERT INTO `cms_city` VALUES ('101190408', 'taicang', '太仓', 'jiangsu', '江苏', 'China', '中国', 'suzhou', '苏州', '31.452568', '121.112275', 0);
INSERT INTO `cms_city` VALUES ('101190409', 'xiangcheng', '相城', 'jiangsu', '江苏', 'China', '中国', 'suzhou', '苏州', '31.396684', '120.618956', 0);
INSERT INTO `cms_city` VALUES ('101190410', 'gusu', '姑苏', 'jiangsu', '江苏', 'China', '中国', 'suzhou', '苏州', '31.311414', '120.622249', 0);
INSERT INTO `cms_city` VALUES ('101190501', 'nantong', '南通', 'jiangsu', '江苏', 'China', '中国', 'nantong', '南通', '32.016212', '120.864608', 0);
INSERT INTO `cms_city` VALUES ('101190502', 'haian', '海安', 'jiangsu', '江苏', 'China', '中国', 'nantong', '南通', '32.540289', '120.465995', 0);
INSERT INTO `cms_city` VALUES ('101190503', 'rugao', '如皋', 'jiangsu', '江苏', 'China', '中国', 'nantong', '南通', '32.391591', '120.566324', 0);
INSERT INTO `cms_city` VALUES ('101190504', 'rudong', '如东', 'jiangsu', '江苏', 'China', '中国', 'nantong', '南通', '32.311832', '121.186088', 0);
INSERT INTO `cms_city` VALUES ('101190505', 'chongchuan', '崇川', 'jiangsu', '江苏', 'China', '中国', 'nantong', '南通', '32.015278', '120.86635', 0);
INSERT INTO `cms_city` VALUES ('101190506', 'gangzha', '港闸', 'jiangsu', '江苏', 'China', '中国', 'nantong', '南通', '32.040299', '120.8339', 0);
INSERT INTO `cms_city` VALUES ('101190507', 'qidong', '启东', 'jiangsu', '江苏', 'China', '中国', 'nantong', '南通', '31.810158', '121.659724', 0);
INSERT INTO `cms_city` VALUES ('101190508', 'haimen', '海门', 'jiangsu', '江苏', 'China', '中国', 'nantong', '南通', '31.893528', '121.176609', 0);
INSERT INTO `cms_city` VALUES ('101190509', 'tongzhou', '通州', 'jiangsu', '江苏', 'China', '中国', 'nantong', '南通', '32.084287', '121.073171', 0);
INSERT INTO `cms_city` VALUES ('101190601', 'yangzhou', '扬州', 'jiangsu', '江苏', 'China', '中国', 'yangzhou', '扬州', '32.393159', '119.421003', 0);
INSERT INTO `cms_city` VALUES ('101190602', 'baoying', '宝应', 'jiangsu', '江苏', 'China', '中国', 'yangzhou', '扬州', '33.23694', '119.321284', 0);
INSERT INTO `cms_city` VALUES ('101190603', 'yizheng', '仪征', 'jiangsu', '江苏', 'China', '中国', 'yangzhou', '扬州', '32.271965', '119.182443', 0);
INSERT INTO `cms_city` VALUES ('101190604', 'gaoyou', '高邮', 'jiangsu', '江苏', 'China', '中国', 'yangzhou', '扬州', '32.785164', '119.443842', 0);
INSERT INTO `cms_city` VALUES ('101190605', 'jiangdu', '江都', 'jiangsu', '江苏', 'China', '中国', 'yangzhou', '扬州', '32.426564', '119.567481', 0);
INSERT INTO `cms_city` VALUES ('101190606', 'hanjiang', '邗江', 'jiangsu', '江苏', 'China', '中国', 'yangzhou', '扬州', '32.377899', '119.397777', 0);
INSERT INTO `cms_city` VALUES ('101190607', 'guangling', '广陵', 'jiangsu', '江苏', 'China', '中国', 'yangzhou', '扬州', '32.392154', '119.442267', 0);
INSERT INTO `cms_city` VALUES ('101190701', 'yancheng', '盐城', 'jiangsu', '江苏', 'China', '中国', 'yancheng', '盐城', '33.377631', '120.139998', 0);
INSERT INTO `cms_city` VALUES ('101190702', 'xiangshui', '响水', 'jiangsu', '江苏', 'China', '中国', 'yancheng', '盐城', '34.19996', '119.579573', 0);
INSERT INTO `cms_city` VALUES ('101190703', 'binhai', '滨海', 'jiangsu', '江苏', 'China', '中国', 'yancheng', '盐城', '33.989888', '119.828434', 0);
INSERT INTO `cms_city` VALUES ('101190704', 'funing', '阜宁', 'jiangsu', '江苏', 'China', '中国', 'yancheng', '盐城', '33.78573', '119.805338', 0);
INSERT INTO `cms_city` VALUES ('101190705', 'sheyang', '射阳', 'jiangsu', '江苏', 'China', '中国', 'yancheng', '盐城', '33.773779', '120.257444', 0);
INSERT INTO `cms_city` VALUES ('101190706', 'jianhu', '建湖', 'jiangsu', '江苏', 'China', '中国', 'yancheng', '盐城', '33.472621', '119.793105', 0);
INSERT INTO `cms_city` VALUES ('101190707', 'dongtai', '东台', 'jiangsu', '江苏', 'China', '中国', 'yancheng', '盐城', '32.853174', '120.314101', 0);
INSERT INTO `cms_city` VALUES ('101190708', 'dafeng', '大丰', 'jiangsu', '江苏', 'China', '中国', 'yancheng', '盐城', '33.199531', '120.470324', 0);
INSERT INTO `cms_city` VALUES ('101190709', 'yandu', '盐都', 'jiangsu', '江苏', 'China', '中国', 'yancheng', '盐城', '33.341288', '120.139753', 0);
INSERT INTO `cms_city` VALUES ('101190710', 'tinghu', '亭湖', 'jiangsu', '江苏', 'China', '中国', 'yancheng', '盐城', '33.383912', '120.136078', 0);
INSERT INTO `cms_city` VALUES ('101190801', 'xuzhou', '徐州', 'jiangsu', '江苏', 'China', '中国', 'xuzhou', '徐州', '34.261792', '117.184811', 0);
INSERT INTO `cms_city` VALUES ('101190802', 'tongshan', '铜山', 'jiangsu', '江苏', 'China', '中国', 'xuzhou', '徐州', '34.19288', '117.183894', 0);
INSERT INTO `cms_city` VALUES ('101190803', 'fengxian', '丰县', 'jiangsu', '江苏', 'China', '中国', 'xuzhou', '徐州', '34.696946', '116.592888', 0);
INSERT INTO `cms_city` VALUES ('101190804', 'peixian', '沛县', 'jiangsu', '江苏', 'China', '中国', 'xuzhou', '徐州', '34.729044', '116.937182', 0);
INSERT INTO `cms_city` VALUES ('101190805', 'pizhou', '邳州', 'jiangsu', '江苏', 'China', '中国', 'xuzhou', '徐州', '34.314708', '117.963923', 0);
INSERT INTO `cms_city` VALUES ('101190806', 'suining', '睢宁', 'jiangsu', '江苏', 'China', '中国', 'xuzhou', '徐州', '33.899222', '117.95066', 0);
INSERT INTO `cms_city` VALUES ('101190807', 'xinyi', '新沂', 'jiangsu', '江苏', 'China', '中国', 'xuzhou', '徐州', '34.368779', '118.345828', 0);
INSERT INTO `cms_city` VALUES ('101190808', 'gulou', '鼓楼', 'jiangsu', '江苏', 'China', '中国', 'xuzhou', '徐州', '34.269397', '117.192941', 0);
INSERT INTO `cms_city` VALUES ('101190809', 'yunlong', '云龙', 'jiangsu', '江苏', 'China', '中国', 'xuzhou', '徐州', '34.254805', '117.194589', 0);
INSERT INTO `cms_city` VALUES ('101190810', 'jiawang', '贾汪', 'jiangsu', '江苏', 'China', '中国', 'xuzhou', '徐州', '34.441642', '117.450212', 0);
INSERT INTO `cms_city` VALUES ('101190811', 'quanshan', '泉山', 'jiangsu', '江苏', 'China', '中国', 'xuzhou', '徐州', '34.262249', '117.182225', 0);
INSERT INTO `cms_city` VALUES ('101190901', 'huaian', '淮安', 'jiangsu', '江苏', 'China', '中国', 'huaian', '淮安', '33.597506', '119.021265', 0);
INSERT INTO `cms_city` VALUES ('101190902', 'jinhu', '金湖', 'jiangsu', '江苏', 'China', '中国', 'huaian', '淮安', '33.018162', '119.016936', 0);
INSERT INTO `cms_city` VALUES ('101190903', 'xuyi', '盱眙', 'jiangsu', '江苏', 'China', '中国', 'huaian', '淮安', '33.00439', '118.493823', 0);
INSERT INTO `cms_city` VALUES ('101190904', 'hongze', '洪泽', 'jiangsu', '江苏', 'China', '中国', 'huaian', '淮安', '33.294975', '118.867875', 0);
INSERT INTO `cms_city` VALUES ('101190905', 'lianshui', '涟水', 'jiangsu', '江苏', 'China', '中国', 'huaian', '淮安', '33.771308', '119.266078', 0);
INSERT INTO `cms_city` VALUES ('101190906', 'huaiyinqu', '淮阴区', 'jiangsu', '江苏', 'China', '中国', 'huaian', '淮安', '33.622452', '119.020817', 0);
INSERT INTO `cms_city` VALUES ('101190907', 'qinghe', '清河', 'jiangsu', '江苏', 'China', '中国', 'huaian', '淮安', '33.591652', '119.025621', 0);
INSERT INTO `cms_city` VALUES ('101190908', 'huaianqu', '淮安区', 'jiangsu', '江苏', 'China', '中国', 'huaian', '淮安', '33.507499', '119.14634', 0);
INSERT INTO `cms_city` VALUES ('101190909', 'qingpu', '清浦', 'jiangsu', '江苏', 'China', '中国', 'huaian', '淮安', '33.557098', '118.997456', 0);
INSERT INTO `cms_city` VALUES ('101191001', 'lianyungang', '连云港', 'jiangsu', '江苏', 'China', '中国', 'lianyungang', '连云港', '34.600018', '119.178821', 0);
INSERT INTO `cms_city` VALUES ('101191002', 'donghai', '东海', 'jiangsu', '江苏', 'China', '中国', 'lianyungang', '连云港', '34.522859', '118.766489', 0);
INSERT INTO `cms_city` VALUES ('101191003', 'ganyu', '赣榆', 'jiangsu', '江苏', 'China', '中国', 'lianyungang', '连云港', '34.839154', '119.128774', 0);
INSERT INTO `cms_city` VALUES ('101191004', 'guanyun', '灌云', 'jiangsu', '江苏', 'China', '中国', 'lianyungang', '连云港', '34.298436', '119.255741', 0);
INSERT INTO `cms_city` VALUES ('101191005', 'guannan', '灌南', 'jiangsu', '江苏', 'China', '中国', 'lianyungang', '连云港', '34.092553', '119.352331', 0);
INSERT INTO `cms_city` VALUES ('101191006', 'haizhou', '海州', 'jiangsu', '江苏', 'China', '中国', 'lianyungang', '连云港', '34.601584', '119.179793', 0);
INSERT INTO `cms_city` VALUES ('101191101', 'changzhou', '常州', 'jiangsu', '江苏', 'China', '中国', 'changzhou', '常州', '31.772752', '119.946973', 0);
INSERT INTO `cms_city` VALUES ('101191102', 'liyang', '溧阳', 'jiangsu', '江苏', 'China', '中国', 'changzhou', '常州', '31.427081', '119.487816', 0);
INSERT INTO `cms_city` VALUES ('101191103', 'jintan', '金坛', 'jiangsu', '江苏', 'China', '中国', 'changzhou', '常州', '31.744399', '119.573395', 0);
INSERT INTO `cms_city` VALUES ('101191104', 'wujin', '武进', 'jiangsu', '江苏', 'China', '中国', 'changzhou', '常州', '31.718566', '119.958773', 0);
INSERT INTO `cms_city` VALUES ('101191105', 'tianning', '天宁', 'jiangsu', '江苏', 'China', '中国', 'changzhou', '常州', '31.779632', '119.963783', 0);
INSERT INTO `cms_city` VALUES ('101191106', 'zhonglou', '钟楼', 'jiangsu', '江苏', 'China', '中国', 'changzhou', '常州', '31.78096', '119.948388', 0);
INSERT INTO `cms_city` VALUES ('101191107', 'xinbei', '新北', 'jiangsu', '江苏', 'China', '中国', 'changzhou', '常州', '31.824664', '119.974654', 0);
INSERT INTO `cms_city` VALUES ('101191201', 'taizhou', '泰州', 'jiangsu', '江苏', 'China', '中国', 'taizhou', '泰州', '32.484882', '119.915176', 0);
INSERT INTO `cms_city` VALUES ('101191202', 'xinghua', '兴化', 'jiangsu', '江苏', 'China', '中国', 'taizhou', '泰州', '32.938065', '119.840162', 0);
INSERT INTO `cms_city` VALUES ('101191203', 'taixing', '泰兴', 'jiangsu', '江苏', 'China', '中国', 'taizhou', '泰州', '32.168784', '120.020228', 0);
INSERT INTO `cms_city` VALUES ('101191204', 'jiangyan', '姜堰', 'jiangsu', '江苏', 'China', '中国', 'taizhou', '泰州', '32.508483', '120.148208', 0);
INSERT INTO `cms_city` VALUES ('101191205', 'jingjiang', '靖江', 'jiangsu', '江苏', 'China', '中国', 'taizhou', '泰州', '32.018168', '120.26825', 0);
INSERT INTO `cms_city` VALUES ('101191206', 'hailing', '海陵', 'jiangsu', '江苏', 'China', '中国', 'taizhou', '泰州', '32.488406', '119.920187', 0);
INSERT INTO `cms_city` VALUES ('101191207', 'gaogang', '高港', 'jiangsu', '江苏', 'China', '中国', 'taizhou', '泰州', '32.315701', '119.88166', 0);
INSERT INTO `cms_city` VALUES ('101191301', 'suqian', '宿迁', 'jiangsu', '江苏', 'China', '中国', 'suqian', '宿迁', '33.963008', '118.275162', 0);
INSERT INTO `cms_city` VALUES ('101191302', 'shuyang', '沭阳', 'jiangsu', '江苏', 'China', '中国', 'suqian', '宿迁', '34.129097', '118.775889', 0);
INSERT INTO `cms_city` VALUES ('101191303', 'siyang', '泗阳', 'jiangsu', '江苏', 'China', '中国', 'suqian', '宿迁', '33.711433', '118.681284', 0);
INSERT INTO `cms_city` VALUES ('101191304', 'sihong', '泗洪', 'jiangsu', '江苏', 'China', '中国', 'suqian', '宿迁', '33.456538', '118.211824', 0);
INSERT INTO `cms_city` VALUES ('101191305', 'suyu', '宿豫', 'jiangsu', '江苏', 'China', '中国', 'suqian', '宿迁', '33.941071', '118.330012', 0);
INSERT INTO `cms_city` VALUES ('101191306', 'sucheng', '宿城', 'jiangsu', '江苏', 'China', '中国', 'suqian', '宿迁', '33.937726', '118.278984', 0);
INSERT INTO `cms_city` VALUES ('101200101', 'wuhan', '武汉', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.584355', '114.298572', 1);
INSERT INTO `cms_city` VALUES ('101200102', 'caidian', '蔡甸', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.582186', '114.029341', 0);
INSERT INTO `cms_city` VALUES ('101200103', 'huangpi', '黄陂', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.874155', '114.374025', 0);
INSERT INTO `cms_city` VALUES ('101200104', 'xinzhou', '新洲', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.842149', '114.802108', 0);
INSERT INTO `cms_city` VALUES ('101200105', 'jiangxia', '江夏', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.349045', '114.313961', 0);
INSERT INTO `cms_city` VALUES ('101200106', 'dongxihu', '东西湖', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.622467', '114.142483', 0);
INSERT INTO `cms_city` VALUES ('101200107', 'jiangan', '江岸', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.594911', '114.30304', 0);
INSERT INTO `cms_city` VALUES ('101200108', 'jianghan', '江汉', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.578771', '114.283109', 0);
INSERT INTO `cms_city` VALUES ('101200109', 'qiaokou', '硚口', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.57061', '114.264568', 0);
INSERT INTO `cms_city` VALUES ('101200110', 'hanyang', '汉阳', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.549326', '114.265807', 0);
INSERT INTO `cms_city` VALUES ('101200111', 'wuchang', '武昌', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.546536', '114.307344', 0);
INSERT INTO `cms_city` VALUES ('101200112', 'qingshan', '青山', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.634215', '114.39707', 0);
INSERT INTO `cms_city` VALUES ('101200113', 'hongshan', '洪山', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.504259', '114.400718', 0);
INSERT INTO `cms_city` VALUES ('101200114', 'hannan', '汉南', 'hubei', '湖北', 'China', '中国', 'wuhan', '武汉', '30.309637', '114.08124', 0);
INSERT INTO `cms_city` VALUES ('101200201', 'xiangyang', '襄阳', 'hubei', '湖北', 'China', '中国', 'xiangyang', '襄阳', '32.042426', '112.144146', 0);
INSERT INTO `cms_city` VALUES ('101200202', 'xiangzhou', '襄州', 'hubei', '湖北', 'China', '中国', 'xiangyang', '襄阳', '32.085517', '112.197378', 0);
INSERT INTO `cms_city` VALUES ('101200203', 'baokang', '保康', 'hubei', '湖北', 'China', '中国', 'xiangyang', '襄阳', '31.873507', '111.262235', 0);
INSERT INTO `cms_city` VALUES ('101200204', 'nanzhang', '南漳', 'hubei', '湖北', 'China', '中国', 'xiangyang', '襄阳', '31.77692', '111.844424', 0);
INSERT INTO `cms_city` VALUES ('101200205', 'yicheng', '宜城', 'hubei', '湖北', 'China', '中国', 'xiangyang', '襄阳', '31.709203', '112.261441', 0);
INSERT INTO `cms_city` VALUES ('101200206', 'laohekou', '老河口', 'hubei', '湖北', 'China', '中国', 'xiangyang', '襄阳', '32.385438', '111.675732', 0);
INSERT INTO `cms_city` VALUES ('101200207', 'gucheng', '谷城', 'hubei', '湖北', 'China', '中国', 'xiangyang', '襄阳', '32.262676', '111.640147', 0);
INSERT INTO `cms_city` VALUES ('101200208', 'zaoyang', '枣阳', 'hubei', '湖北', 'China', '中国', 'xiangyang', '襄阳', '32.123083', '112.765268', 0);
INSERT INTO `cms_city` VALUES ('101200209', 'xiangcheng', '襄城', 'hubei', '湖北', 'China', '中国', 'xiangyang', '襄阳', '32.015088', '112.150327', 0);
INSERT INTO `cms_city` VALUES ('101200210', 'fancheng', '樊城', 'hubei', '湖北', 'China', '中国', 'xiangyang', '襄阳', '32.058589', '112.13957', 0);
INSERT INTO `cms_city` VALUES ('101200301', 'ezhou', '鄂州', 'hubei', '湖北', 'China', '中国', 'ezhou', '鄂州', '30.396536', '114.890593', 0);
INSERT INTO `cms_city` VALUES ('101200302', 'liangzihu', '梁子湖', 'hubei', '湖北', 'China', '中国', 'ezhou', '鄂州', '30.098191', '114.681967', 0);
INSERT INTO `cms_city` VALUES ('101200303', 'huarong', '华容', 'hubei', '湖北', 'China', '中国', 'ezhou', '鄂州', '30.534468', '114.74148', 0);
INSERT INTO `cms_city` VALUES ('101200304', 'echeng', '鄂城', 'hubei', '湖北', 'China', '中国', 'ezhou', '鄂州', '30.39669', '114.890012', 0);
INSERT INTO `cms_city` VALUES ('101200401', 'xiaogan', '孝感', 'hubei', '湖北', 'China', '中国', 'xiaogan', '孝感', '30.926423', '113.926655', 0);
INSERT INTO `cms_city` VALUES ('101200402', 'anlu', '安陆', 'hubei', '湖北', 'China', '中国', 'xiaogan', '孝感', '31.26174', '113.690401', 0);
INSERT INTO `cms_city` VALUES ('101200403', 'yunmeng', '云梦', 'hubei', '湖北', 'China', '中国', 'xiaogan', '孝感', '31.021691', '113.750616', 0);
INSERT INTO `cms_city` VALUES ('101200404', 'dawu', '大悟', 'hubei', '湖北', 'China', '中国', 'xiaogan', '孝感', '31.565483', '114.126249', 0);
INSERT INTO `cms_city` VALUES ('101200405', 'yingcheng', '应城', 'hubei', '湖北', 'China', '中国', 'xiaogan', '孝感', '30.939038', '113.573842', 0);
INSERT INTO `cms_city` VALUES ('101200406', 'hanchuan', '汉川', 'hubei', '湖北', 'China', '中国', 'xiaogan', '孝感', '30.652165', '113.835301', 0);
INSERT INTO `cms_city` VALUES ('101200407', 'xiaochang', '孝昌', 'hubei', '湖北', 'China', '中国', 'xiaogan', '孝感', '31.251618', '113.988964', 0);
INSERT INTO `cms_city` VALUES ('101200408', 'xiaonan', '孝南', 'hubei', '湖北', 'China', '中国', 'xiaogan', '孝感', '30.925966', '113.925849', 0);
INSERT INTO `cms_city` VALUES ('101200501', 'huanggang', '黄冈', 'hubei', '湖北', 'China', '中国', 'huanggang', '黄冈', '30.447711', '114.879365', 0);
INSERT INTO `cms_city` VALUES ('101200502', 'hongan', '红安', 'hubei', '湖北', 'China', '中国', 'huanggang', '黄冈', '31.284777', '114.615095', 0);
INSERT INTO `cms_city` VALUES ('101200503', 'macheng', '麻城', 'hubei', '湖北', 'China', '中国', 'huanggang', '黄冈', '31.177906', '115.02541', 0);
INSERT INTO `cms_city` VALUES ('101200504', 'luotian', '罗田', 'hubei', '湖北', 'China', '中国', 'huanggang', '黄冈', '30.781679', '115.398984', 0);
INSERT INTO `cms_city` VALUES ('101200505', 'yingshan', '英山', 'hubei', '湖北', 'China', '中国', 'huanggang', '黄冈', '30.735794', '115.67753', 0);
INSERT INTO `cms_city` VALUES ('101200506', 'xishui', '浠水', 'hubei', '湖北', 'China', '中国', 'huanggang', '黄冈', '30.454837', '115.26344', 0);
INSERT INTO `cms_city` VALUES ('101200507', 'qichun', '蕲春', 'hubei', '湖北', 'China', '中国', 'huanggang', '黄冈', '30.234927', '115.433964', 0);
INSERT INTO `cms_city` VALUES ('101200508', 'huangmei', '黄梅', 'hubei', '湖北', 'China', '中国', 'huanggang', '黄冈', '30.075113', '115.942548', 0);
INSERT INTO `cms_city` VALUES ('101200509', 'wuxue', '武穴', 'hubei', '湖北', 'China', '中国', 'huanggang', '黄冈', '29.849342', '115.56242', 0);
INSERT INTO `cms_city` VALUES ('101200510', 'tuanfeng', '团风', 'hubei', '湖北', 'China', '中国', 'huanggang', '黄冈', '30.63569', '114.872029', 0);
INSERT INTO `cms_city` VALUES ('101200511', 'huangzhou', '黄州', 'hubei', '湖北', 'China', '中国', 'huanggang', '黄冈', '30.447435', '114.878934', 0);
INSERT INTO `cms_city` VALUES ('101200601', 'huangshi', '黄石', 'hubei', '湖北', 'China', '中国', 'huangshi', '黄石', '30.220074', '115.077048', 0);
INSERT INTO `cms_city` VALUES ('101200602', 'daye', '大冶', 'hubei', '湖北', 'China', '中国', 'huangshi', '黄石', '30.098804', '114.974842', 0);
INSERT INTO `cms_city` VALUES ('101200603', 'yangxin', '阳新', 'hubei', '湖北', 'China', '中国', 'huangshi', '黄石', '29.841572', '115.212883', 0);
INSERT INTO `cms_city` VALUES ('101200604', 'tieshan', '铁山', 'hubei', '湖北', 'China', '中国', 'huangshi', '黄石', '30.20601', '114.901366', 0);
INSERT INTO `cms_city` VALUES ('101200605', 'xialu', '下陆', 'hubei', '湖北', 'China', '中国', 'huangshi', '黄石', '30.177845', '114.975755', 0);
INSERT INTO `cms_city` VALUES ('101200606', 'xisaishan', '西塞山', 'hubei', '湖北', 'China', '中国', 'huangshi', '黄石', '30.205365', '115.093354', 0);
INSERT INTO `cms_city` VALUES ('101200607', 'huangshigang', '黄石港', 'hubei', '湖北', 'China', '中国', 'huangshi', '黄石', '30.212086', '115.090164', 0);
INSERT INTO `cms_city` VALUES ('101200701', 'xianning', '咸宁', 'hubei', '湖北', 'China', '中国', 'xianning', '咸宁', '29.832798', '114.328963', 0);
INSERT INTO `cms_city` VALUES ('101200702', 'chibi', '赤壁', 'hubei', '湖北', 'China', '中国', 'xianning', '咸宁', '29.716879', '113.88366', 0);
INSERT INTO `cms_city` VALUES ('101200703', 'jiayu', '嘉鱼', 'hubei', '湖北', 'China', '中国', 'xianning', '咸宁', '29.973363', '113.921547', 0);
INSERT INTO `cms_city` VALUES ('101200704', 'chongyang', '崇阳', 'hubei', '湖北', 'China', '中国', 'xianning', '咸宁', '29.54101', '114.049958', 0);
INSERT INTO `cms_city` VALUES ('101200705', 'tongcheng', '通城', 'hubei', '湖北', 'China', '中国', 'xianning', '咸宁', '29.246076', '113.814131', 0);
INSERT INTO `cms_city` VALUES ('101200706', 'tongshan', '通山', 'hubei', '湖北', 'China', '中国', 'xianning', '咸宁', '29.604455', '114.493163', 0);
INSERT INTO `cms_city` VALUES ('101200707', 'xianan', '咸安', 'hubei', '湖北', 'China', '中国', 'xianning', '咸宁', '29.824716', '114.333894', 0);
INSERT INTO `cms_city` VALUES ('101200801', 'jingzhou', '荆州', 'hubei', '湖北', 'China', '中国', 'jingzhou', '荆州', '30.326857', '112.23813', 0);
INSERT INTO `cms_city` VALUES ('101200802', 'jiangling', '江陵', 'hubei', '湖北', 'China', '中国', 'jingzhou', '荆州', '30.033919', '112.41735', 0);
INSERT INTO `cms_city` VALUES ('101200803', 'gongan', '公安', 'hubei', '湖北', 'China', '中国', 'jingzhou', '荆州', '30.059065', '112.230179', 0);
INSERT INTO `cms_city` VALUES ('101200804', 'shishou', '石首', 'hubei', '湖北', 'China', '中国', 'jingzhou', '荆州', '29.716437', '112.40887', 0);
INSERT INTO `cms_city` VALUES ('101200805', 'jianli', '监利', 'hubei', '湖北', 'China', '中国', 'jingzhou', '荆州', '29.820079', '112.904344', 0);
INSERT INTO `cms_city` VALUES ('101200806', 'honghu', '洪湖', 'hubei', '湖北', 'China', '中国', 'jingzhou', '荆州', '29.81297', '113.470304', 0);
INSERT INTO `cms_city` VALUES ('101200807', 'songzi', '松滋', 'hubei', '湖北', 'China', '中国', 'jingzhou', '荆州', '30.176037', '111.77818', 0);
INSERT INTO `cms_city` VALUES ('101200808', 'shashi', '沙市', 'hubei', '湖北', 'China', '中国', 'jingzhou', '荆州', '30.315895', '112.257433', 0);
INSERT INTO `cms_city` VALUES ('101200901', 'yichang', '宜昌', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.702636', '111.290843', 0);
INSERT INTO `cms_city` VALUES ('101200902', 'yuanan', '远安', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '31.059626', '111.64331', 0);
INSERT INTO `cms_city` VALUES ('101200903', 'zigui', '秭归', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.823908', '110.976785', 0);
INSERT INTO `cms_city` VALUES ('101200904', 'xingshan', '兴山', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '31.34795', '110.754499', 0);
INSERT INTO `cms_city` VALUES ('101200905', 'xiling', '西陵', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.702476', '111.295468', 0);
INSERT INTO `cms_city` VALUES ('101200906', 'wufeng', '五峰', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.199252', '110.674938', 0);
INSERT INTO `cms_city` VALUES ('101200907', 'dangyang', '当阳', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.824492', '111.793419', 0);
INSERT INTO `cms_city` VALUES ('101200908', 'changyang', '长阳', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.466534', '111.198475', 0);
INSERT INTO `cms_city` VALUES ('101200909', 'yidu', '宜都', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.387234', '111.454367', 0);
INSERT INTO `cms_city` VALUES ('101200910', 'zhijiang', '枝江', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.425364', '111.751799', 0);
INSERT INTO `cms_city` VALUES ('101200912', 'yiling', '夷陵', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.770199', '111.326747', 0);
INSERT INTO `cms_city` VALUES ('101200913', 'wujiagang', '伍家岗', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.679053', '111.307215', 0);
INSERT INTO `cms_city` VALUES ('101200914', 'dianjun', '点军', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.692322', '111.268163', 0);
INSERT INTO `cms_city` VALUES ('101200915', 'xiaoting', '猇亭', 'hubei', '湖北', 'China', '中国', 'yichang', '宜昌', '30.530744', '111.427642', 0);
INSERT INTO `cms_city` VALUES ('101201001', 'enshi', '恩施', 'hubei', '湖北', 'China', '中国', 'enshi', '恩施', '30.283114', '109.48699', 0);
INSERT INTO `cms_city` VALUES ('101201002', 'lichuan', '利川', 'hubei', '湖北', 'China', '中国', 'enshi', '恩施', '30.294247', '108.943491', 0);
INSERT INTO `cms_city` VALUES ('101201003', 'jianshi', '建始', 'hubei', '湖北', 'China', '中国', 'enshi', '恩施', '30.601632', '109.723822', 0);
INSERT INTO `cms_city` VALUES ('101201004', 'xianfeng', '咸丰', 'hubei', '湖北', 'China', '中国', 'enshi', '恩施', '29.678967', '109.15041', 0);
INSERT INTO `cms_city` VALUES ('101201005', 'xuanen', '宣恩', 'hubei', '湖北', 'China', '中国', 'enshi', '恩施', '29.98867', '109.482819', 0);
INSERT INTO `cms_city` VALUES ('101201006', 'hefeng', '鹤峰', 'hubei', '湖北', 'China', '中国', 'enshi', '恩施', '29.887298', '110.033699', 0);
INSERT INTO `cms_city` VALUES ('101201007', 'laifeng', '来凤', 'hubei', '湖北', 'China', '中国', 'enshi', '恩施', '29.506945', '109.408328', 0);
INSERT INTO `cms_city` VALUES ('101201008', 'badong', '巴东', 'hubei', '湖北', 'China', '中国', 'enshi', '恩施', '31.041403', '110.336665', 0);
INSERT INTO `cms_city` VALUES ('101201101', 'shiyan', '十堰', 'hubei', '湖北', 'China', '中国', 'shiyan', '十堰', '32.646907', '110.787916', 0);
INSERT INTO `cms_city` VALUES ('101201102', 'zhuxi', '竹溪', 'hubei', '湖北', 'China', '中国', 'shiyan', '十堰', '32.315342', '109.717196', 0);
INSERT INTO `cms_city` VALUES ('101201103', 'yunxi', '郧西', 'hubei', '湖北', 'China', '中国', 'shiyan', '十堰', '32.991457', '110.426472', 0);
INSERT INTO `cms_city` VALUES ('101201104', 'yunyang', '郧阳', 'hubei', '湖北', 'China', '中国', 'shiyan', '十堰', '32.838267', '110.812099', 0);
INSERT INTO `cms_city` VALUES ('101201105', 'zhushan', '竹山', 'hubei', '湖北', 'China', '中国', 'shiyan', '十堰', '32.22586', '110.2296', 0);
INSERT INTO `cms_city` VALUES ('101201106', 'fangxian', '房县', 'hubei', '湖北', 'China', '中国', 'shiyan', '十堰', '32.055002', '110.741966', 0);
INSERT INTO `cms_city` VALUES ('101201107', 'danjiangkou', '丹江口', 'hubei', '湖北', 'China', '中国', 'shiyan', '十堰', '32.538839', '111.513793', 0);
INSERT INTO `cms_city` VALUES ('101201108', 'maojian', '茅箭', 'hubei', '湖北', 'China', '中国', 'shiyan', '十堰', '32.644463', '110.78621', 0);
INSERT INTO `cms_city` VALUES ('101201109', 'zhangwan', '张湾', 'hubei', '湖北', 'China', '中国', 'shiyan', '十堰', '32.652516', '110.772365', 0);
INSERT INTO `cms_city` VALUES ('101201201', 'shennongjia', '神农架', 'hubei', '湖北', 'China', '中国', 'shennongjia', '神农架', '31.744449', '110.671525', 0);
INSERT INTO `cms_city` VALUES ('101201301', 'suizhou', '随州', 'hubei', '湖北', 'China', '中国', 'suizhou', '随州', '31.717497', '113.37377', 0);
INSERT INTO `cms_city` VALUES ('101201302', 'guangshui', '广水', 'hubei', '湖北', 'China', '中国', 'suizhou', '随州', '31.617731', '113.826601', 0);
INSERT INTO `cms_city` VALUES ('101201303', 'zengdou', '曾都', 'hubei', '湖北', 'China', '中国', 'suizhou', '随州', '31.717521', '113.374519', 0);
INSERT INTO `cms_city` VALUES ('101201304', 'suixian', '随县', 'hubei', '湖北', 'China', '中国', 'suizhou', '随州', '31.854246', '113.301384', 0);
INSERT INTO `cms_city` VALUES ('101201401', 'jingmen', '荆门', 'hubei', '湖北', 'China', '中国', 'jingmen', '荆门', '31.03542', '112.204251', 0);
INSERT INTO `cms_city` VALUES ('101201402', 'zhongxiang', '钟祥', 'hubei', '湖北', 'China', '中国', 'jingmen', '荆门', '31.165573', '112.587267', 0);
INSERT INTO `cms_city` VALUES ('101201403', 'jingshan', '京山', 'hubei', '湖北', 'China', '中国', 'jingmen', '荆门', '31.022458', '113.114595', 0);
INSERT INTO `cms_city` VALUES ('101201404', 'duodao', '掇刀', 'hubei', '湖北', 'China', '中国', 'jingmen', '荆门', '30.980798', '112.198413', 0);
INSERT INTO `cms_city` VALUES ('101201405', 'shayang', '沙洋', 'hubei', '湖北', 'China', '中国', 'jingmen', '荆门', '30.70359', '112.595218', 0);
INSERT INTO `cms_city` VALUES ('101201406', 'dongbao', '东宝', 'hubei', '湖北', 'China', '中国', 'jingmen', '荆门', '31.033461', '112.204804', 0);
INSERT INTO `cms_city` VALUES ('101201501', 'tianmen', '天门', 'hubei', '湖北', 'China', '中国', 'tianmen', '天门', '30.653061', '113.165862', 0);
INSERT INTO `cms_city` VALUES ('101201601', 'xiantao', '仙桃', 'hubei', '湖北', 'China', '中国', 'xiantao', '仙桃', '30.364953', '113.453974', 0);
INSERT INTO `cms_city` VALUES ('101201701', 'qianjiang', '潜江', 'hubei', '湖北', 'China', '中国', 'qianjiang', '潜江', '30.421215', '112.896866', 0);
INSERT INTO `cms_city` VALUES ('101210101', 'hangzhou', '杭州', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '30.287459', '120.153576', 0);
INSERT INTO `cms_city` VALUES ('101210102', 'xiaoshan', '萧山', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '30.162932', '120.27069', 0);
INSERT INTO `cms_city` VALUES ('101210103', 'tonglu', '桐庐', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '29.797437', '119.685045', 0);
INSERT INTO `cms_city` VALUES ('101210104', 'chunan', '淳安', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '29.604177', '119.044276', 0);
INSERT INTO `cms_city` VALUES ('101210105', 'jiande', '建德', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '29.472284', '119.279089', 0);
INSERT INTO `cms_city` VALUES ('101210106', 'yuhang', '余杭', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '30.421187', '120.301737', 0);
INSERT INTO `cms_city` VALUES ('101210107', 'linan', '临安', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '30.231153', '119.715101', 0);
INSERT INTO `cms_city` VALUES ('101210108', 'fuyang', '富阳', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '30.049871', '119.949869', 0);
INSERT INTO `cms_city` VALUES ('101210109', 'shangcheng', '上城', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '30.250236', '120.171465', 0);
INSERT INTO `cms_city` VALUES ('101210110', 'xiacheng', '下城', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '30.276271', '120.172763', 0);
INSERT INTO `cms_city` VALUES ('101210111', 'jianggan', '江干', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '30.266603', '120.202633', 0);
INSERT INTO `cms_city` VALUES ('101210112', 'gongshu', '拱墅', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '30.314697', '120.150053', 0);
INSERT INTO `cms_city` VALUES ('101210113', 'xihu', '西湖', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '30.272934', '120.147376', 0);
INSERT INTO `cms_city` VALUES ('101210114', 'binjiang', '滨江', 'zhejiang', '浙江', 'China', '中国', 'hangzhou', '杭州', '30.206615', '120.21062', 0);
INSERT INTO `cms_city` VALUES ('101210201', 'huzhou', '湖州', 'zhejiang', '浙江', 'China', '中国', 'huzhou', '湖州', '30.867198', '120.102398', 0);
INSERT INTO `cms_city` VALUES ('101210202', 'changxing', '长兴', 'zhejiang', '浙江', 'China', '中国', 'huzhou', '湖州', '31.00475', '119.910122', 0);
INSERT INTO `cms_city` VALUES ('101210203', 'anji', '安吉', 'zhejiang', '浙江', 'China', '中国', 'huzhou', '湖州', '30.631974', '119.687891', 0);
INSERT INTO `cms_city` VALUES ('101210204', 'deqing', '德清', 'zhejiang', '浙江', 'China', '中国', 'huzhou', '湖州', '30.534927', '119.967662', 0);
INSERT INTO `cms_city` VALUES ('101210205', 'wuxing', '吴兴', 'zhejiang', '浙江', 'China', '中国', 'huzhou', '湖州', '30.867252', '120.101416', 0);
INSERT INTO `cms_city` VALUES ('101210206', 'nanxun', '南浔', 'zhejiang', '浙江', 'China', '中国', 'huzhou', '湖州', '30.872742', '120.417195', 0);
INSERT INTO `cms_city` VALUES ('101210301', 'jiaxing', '嘉兴', 'zhejiang', '浙江', 'China', '中国', 'jiaxing', '嘉兴', '30.762653', '120.750865', 0);
INSERT INTO `cms_city` VALUES ('101210302', 'jiashan', '嘉善', 'zhejiang', '浙江', 'China', '中国', 'jiaxing', '嘉兴', '30.841352', '120.921871', 0);
INSERT INTO `cms_city` VALUES ('101210303', 'haining', '海宁', 'zhejiang', '浙江', 'China', '中国', 'jiaxing', '嘉兴', '30.525544', '120.688821', 0);
INSERT INTO `cms_city` VALUES ('101210304', 'tongxiang', '桐乡', 'zhejiang', '浙江', 'China', '中国', 'jiaxing', '嘉兴', '30.629065', '120.551085', 0);
INSERT INTO `cms_city` VALUES ('101210305', 'pinghu', '平湖', 'zhejiang', '浙江', 'China', '中国', 'jiaxing', '嘉兴', '30.698921', '121.014666', 0);
INSERT INTO `cms_city` VALUES ('101210306', 'haiyan', '海盐', 'zhejiang', '浙江', 'China', '中国', 'jiaxing', '嘉兴', '30.522223', '120.942017', 0);
INSERT INTO `cms_city` VALUES ('101210307', 'nanhu', '南湖', 'zhejiang', '浙江', 'China', '中国', 'jiaxing', '嘉兴', '30.764652', '120.749953', 0);
INSERT INTO `cms_city` VALUES ('101210308', 'xiuzhou', '秀洲', 'zhejiang', '浙江', 'China', '中国', 'jiaxing', '嘉兴', '30.763323', '120.720431', 0);
INSERT INTO `cms_city` VALUES ('101210401', 'ningbo', '宁波', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '29.868388', '121.549792', 1);
INSERT INTO `cms_city` VALUES ('101210402', 'haishu', '海曙', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '29.874452', '121.539698', 0);
INSERT INTO `cms_city` VALUES ('101210403', 'cixi', '慈溪', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '30.177142', '121.248052', 0);
INSERT INTO `cms_city` VALUES ('101210404', 'yuyao', '余姚', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '30.045404', '121.156294', 0);
INSERT INTO `cms_city` VALUES ('101210405', 'fenghua', '奉化', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '29.662348', '121.41089', 0);
INSERT INTO `cms_city` VALUES ('101210406', 'xiangshan', '象山', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '29.470206', '121.877091', 0);
INSERT INTO `cms_city` VALUES ('101210407', 'jiangdong', '江东', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '29.866819', '121.570383', 0);
INSERT INTO `cms_city` VALUES ('101210408', 'ninghai', '宁海', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '29.299836', '121.432606', 0);
INSERT INTO `cms_city` VALUES ('101210409', 'jiangbei', '江北', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '29.888361', '121.559282', 0);
INSERT INTO `cms_city` VALUES ('101210410', 'beilun', '北仑', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '29.90944', '121.831303', 0);
INSERT INTO `cms_city` VALUES ('101210411', 'yinzhou', '鄞州', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '29.831662', '121.558436', 0);
INSERT INTO `cms_city` VALUES ('101210412', 'zhenhai', '镇海', 'zhejiang', '浙江', 'China', '中国', 'ningbo', '宁波', '29.952107', '121.713162', 0);
INSERT INTO `cms_city` VALUES ('101210501', 'yuecheng', '越城', 'zhejiang', '浙江', 'China', '中国', 'shaoxing', '绍兴', '29.996993', '120.585315', 0);
INSERT INTO `cms_city` VALUES ('101210502', 'zhuji', '诸暨', 'zhejiang', '浙江', 'China', '中国', 'shaoxing', '绍兴', '29.713662', '120.244326', 0);
INSERT INTO `cms_city` VALUES ('101210503', 'shangyu', '上虞', 'zhejiang', '浙江', 'China', '中国', 'shaoxing', '绍兴', '30.016769', '120.874185', 0);
INSERT INTO `cms_city` VALUES ('101210504', 'xinchang', '新昌', 'zhejiang', '浙江', 'China', '中国', 'shaoxing', '绍兴', '29.501205', '120.905665', 0);
INSERT INTO `cms_city` VALUES ('101210505', 'shengzhou', '嵊州', 'zhejiang', '浙江', 'China', '中国', 'shaoxing', '绍兴', '29.586606', '120.82888', 0);
INSERT INTO `cms_city` VALUES ('101210506', 'keqiao', '柯桥', 'zhejiang', '浙江', 'China', '中国', 'shaoxing', '绍兴', '30.078038', '120.476075', 0);
INSERT INTO `cms_city` VALUES ('101210507', 'shaoxing', '绍兴', 'zhejiang', '浙江', 'China', '中国', 'shaoxing', '绍兴', '29.997117', '120.582112', 0);
INSERT INTO `cms_city` VALUES ('101210601', 'taizhou', '台州', 'zhejiang', '浙江', 'China', '中国', 'taizhou', '台州', '28.661378', '121.428599', 0);
INSERT INTO `cms_city` VALUES ('101210603', 'yuhuan', '玉环', 'zhejiang', '浙江', 'China', '中国', 'taizhou', '台州', '28.12842', '121.232337', 0);
INSERT INTO `cms_city` VALUES ('101210604', 'sanmen', '三门', 'zhejiang', '浙江', 'China', '中国', 'taizhou', '台州', '29.118955', '121.376429', 0);
INSERT INTO `cms_city` VALUES ('101210605', 'tiantai', '天台', 'zhejiang', '浙江', 'China', '中国', 'taizhou', '台州', '29.141126', '121.031227', 0);
INSERT INTO `cms_city` VALUES ('101210606', 'xianju', '仙居', 'zhejiang', '浙江', 'China', '中国', 'taizhou', '台州', '28.849213', '120.735074', 0);
INSERT INTO `cms_city` VALUES ('101210607', 'wenling', '温岭', 'zhejiang', '浙江', 'China', '中国', 'taizhou', '台州', '28.368781', '121.373611', 0);
INSERT INTO `cms_city` VALUES ('101210610', 'linhai', '临海', 'zhejiang', '浙江', 'China', '中国', 'taizhou', '台州', '28.845441', '121.131229', 0);
INSERT INTO `cms_city` VALUES ('101210611', 'jiaojiang', '椒江', 'zhejiang', '浙江', 'China', '中国', 'taizhou', '台州', '28.67615', '121.431049', 0);
INSERT INTO `cms_city` VALUES ('101210612', 'huangyan', '黄岩', 'zhejiang', '浙江', 'China', '中国', 'taizhou', '台州', '28.64488', '121.262138', 0);
INSERT INTO `cms_city` VALUES ('101210613', 'luqiao', '路桥', 'zhejiang', '浙江', 'China', '中国', 'taizhou', '台州', '28.581799', '121.37292', 0);
INSERT INTO `cms_city` VALUES ('101210701', 'wenzhou', '温州', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '28.000575', '120.672111', 0);
INSERT INTO `cms_city` VALUES ('101210702', 'taishun', '泰顺', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '27.557309', '119.71624', 0);
INSERT INTO `cms_city` VALUES ('101210703', 'wencheng', '文成', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '27.789133', '120.09245', 0);
INSERT INTO `cms_city` VALUES ('101210704', 'pingyang', '平阳', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '27.6693', '120.564387', 0);
INSERT INTO `cms_city` VALUES ('101210705', 'ruian', '瑞安', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '27.779321', '120.646171', 0);
INSERT INTO `cms_city` VALUES ('101210706', 'dongtou', '洞头', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '27.836057', '121.156181', 0);
INSERT INTO `cms_city` VALUES ('101210707', 'yueqing', '乐清', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '28.116083', '120.967147', 0);
INSERT INTO `cms_city` VALUES ('101210708', 'yongjia', '永嘉', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '28.153886', '120.690968', 0);
INSERT INTO `cms_city` VALUES ('101210709', 'cangnan', '苍南', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '27.507743', '120.406256', 0);
INSERT INTO `cms_city` VALUES ('101210710', 'lucheng', '鹿城', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '28.003352', '120.674231', 0);
INSERT INTO `cms_city` VALUES ('101210711', 'longwan', '龙湾', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '27.970254', '120.763469', 0);
INSERT INTO `cms_city` VALUES ('101210712', 'ouhai', '瓯海', 'zhejiang', '浙江', 'China', '中国', 'wenzhou', '温州', '28.006444', '120.637145', 0);
INSERT INTO `cms_city` VALUES ('101210801', 'lishui', '丽水', 'zhejiang', '浙江', 'China', '中国', 'lishui', '丽水', '28.451993', '119.921786', 0);
INSERT INTO `cms_city` VALUES ('101210802', 'suichang', '遂昌', 'zhejiang', '浙江', 'China', '中国', 'lishui', '丽水', '28.5924', '119.27589', 0);
INSERT INTO `cms_city` VALUES ('101210803', 'longquan', '龙泉', 'zhejiang', '浙江', 'China', '中国', 'lishui', '丽水', '28.069177', '119.132319', 0);
INSERT INTO `cms_city` VALUES ('101210804', 'jinyun', '缙云', 'zhejiang', '浙江', 'China', '中国', 'lishui', '丽水', '28.654208', '120.078965', 0);
INSERT INTO `cms_city` VALUES ('101210805', 'qingtian', '青田', 'zhejiang', '浙江', 'China', '中国', 'lishui', '丽水', '28.135247', '120.291939', 0);
INSERT INTO `cms_city` VALUES ('101210806', 'yunhe', '云和', 'zhejiang', '浙江', 'China', '中国', 'lishui', '丽水', '28.111077', '119.569458', 0);
INSERT INTO `cms_city` VALUES ('101210807', 'qingyuan', '庆元', 'zhejiang', '浙江', 'China', '中国', 'lishui', '丽水', '27.618231', '119.067233', 0);
INSERT INTO `cms_city` VALUES ('101210808', 'songyang', '松阳', 'zhejiang', '浙江', 'China', '中国', 'lishui', '丽水', '28.449937', '119.485292', 0);
INSERT INTO `cms_city` VALUES ('101210809', 'jingning', '景宁', 'zhejiang', '浙江', 'China', '中国', 'lishui', '丽水', '27.977247', '119.634669', 0);
INSERT INTO `cms_city` VALUES ('101210810', 'liandou', '莲都', 'zhejiang', '浙江', 'China', '中国', 'lishui', '丽水', '28.451103', '119.922293', 0);
INSERT INTO `cms_city` VALUES ('101210901', 'jinhua', '金华', 'zhejiang', '浙江', 'China', '中国', 'jinhua', '金华', '29.089524', '119.649506', 0);
INSERT INTO `cms_city` VALUES ('101210902', 'pujiang', '浦江', 'zhejiang', '浙江', 'China', '中国', 'jinhua', '金华', '29.451254', '119.893363', 0);
INSERT INTO `cms_city` VALUES ('101210903', 'lanxi', '兰溪', 'zhejiang', '浙江', 'China', '中国', 'jinhua', '金华', '29.210065', '119.460521', 0);
INSERT INTO `cms_city` VALUES ('101210904', 'yiwu', '义乌', 'zhejiang', '浙江', 'China', '中国', 'jinhua', '金华', '29.306863', '120.074911', 0);
INSERT INTO `cms_city` VALUES ('101210905', 'dongyang', '东阳', 'zhejiang', '浙江', 'China', '中国', 'jinhua', '金华', '29.262546', '120.23334', 0);
INSERT INTO `cms_city` VALUES ('101210906', 'wuyi', '武义', 'zhejiang', '浙江', 'China', '中国', 'jinhua', '金华', '28.896563', '119.819159', 0);
INSERT INTO `cms_city` VALUES ('101210907', 'yongkang', '永康', 'zhejiang', '浙江', 'China', '中国', 'jinhua', '金华', '28.895293', '120.036328', 0);
INSERT INTO `cms_city` VALUES ('101210908', 'panan', '磐安', 'zhejiang', '浙江', 'China', '中国', 'jinhua', '金华', '29.052627', '120.44513', 0);
INSERT INTO `cms_city` VALUES ('101210909', 'wucheng', '婺城', 'zhejiang', '浙江', 'China', '中国', 'jinhua', '金华', '29.082607', '119.652579', 0);
INSERT INTO `cms_city` VALUES ('101210910', 'jindong', '金东', 'zhejiang', '浙江', 'China', '中国', 'jinhua', '金华', '29.095835', '119.681264', 0);
INSERT INTO `cms_city` VALUES ('101211001', 'quzhou', '衢州', 'zhejiang', '浙江', 'China', '中国', 'quzhou', '衢州', '28.941708', '118.87263', 0);
INSERT INTO `cms_city` VALUES ('101211002', 'changshan', '常山', 'zhejiang', '浙江', 'China', '中国', 'quzhou', '衢州', '28.900039', '118.521654', 0);
INSERT INTO `cms_city` VALUES ('101211003', 'kaihua', '开化', 'zhejiang', '浙江', 'China', '中国', 'quzhou', '衢州', '29.136503', '118.414435', 0);
INSERT INTO `cms_city` VALUES ('101211004', 'longyou', '龙游', 'zhejiang', '浙江', 'China', '中国', 'quzhou', '衢州', '29.031364', '119.172525', 0);
INSERT INTO `cms_city` VALUES ('101211005', 'jiangshan', '江山', 'zhejiang', '浙江', 'China', '中国', 'quzhou', '衢州', '28.734674', '118.627879', 0);
INSERT INTO `cms_city` VALUES ('101211006', 'qujiang', '衢江', 'zhejiang', '浙江', 'China', '中国', 'quzhou', '衢州', '28.973195', '118.957683', 0);
INSERT INTO `cms_city` VALUES ('101211007', 'kecheng', '柯城', 'zhejiang', '浙江', 'China', '中国', 'quzhou', '衢州', '28.944539', '118.873041', 0);
INSERT INTO `cms_city` VALUES ('101211101', 'zhoushan', '舟山', 'zhejiang', '浙江', 'China', '中国', 'zhoushan', '舟山', '30.016028', '122.106863', 0);
INSERT INTO `cms_city` VALUES ('101211102', 'shengsi', '嵊泗', 'zhejiang', '浙江', 'China', '中国', 'zhoushan', '舟山', '30.727166', '122.457809', 0);
INSERT INTO `cms_city` VALUES ('101211104', 'daishan', '岱山', 'zhejiang', '浙江', 'China', '中国', 'zhoushan', '舟山', '30.242865', '122.201132', 0);
INSERT INTO `cms_city` VALUES ('101211105', 'putuo', '普陀', 'zhejiang', '浙江', 'China', '中国', 'zhoushan', '舟山', '29.945614', '122.301953', 0);
INSERT INTO `cms_city` VALUES ('101211106', 'dinghai', '定海', 'zhejiang', '浙江', 'China', '中国', 'zhoushan', '舟山', '30.016423', '122.108496', 0);
INSERT INTO `cms_city` VALUES ('101220101', 'hefei', '合肥', 'anhui', '安徽', 'China', '中国', 'hefei', '合肥', '31.86119', '117.283042', 0);
INSERT INTO `cms_city` VALUES ('101220102', 'changfeng', '长丰', 'anhui', '安徽', 'China', '中国', 'hefei', '合肥', '32.478548', '117.164699', 0);
INSERT INTO `cms_city` VALUES ('101220103', 'feidong', '肥东', 'anhui', '安徽', 'China', '中国', 'hefei', '合肥', '31.883992', '117.463222', 0);
INSERT INTO `cms_city` VALUES ('101220104', 'feixi', '肥西', 'anhui', '安徽', 'China', '中国', 'hefei', '合肥', '31.719646', '117.166118', 0);
INSERT INTO `cms_city` VALUES ('101220105', 'chaohu', '巢湖', 'anhui', '安徽', 'China', '中国', 'hefei', '合肥', '31.600518', '117.874155', 0);
INSERT INTO `cms_city` VALUES ('101220106', 'lujiang', '庐江', 'anhui', '安徽', 'China', '中国', 'hefei', '合肥', '31.251488', '117.289844', 0);
INSERT INTO `cms_city` VALUES ('101220107', 'yaohai', '瑶海', 'anhui', '安徽', 'China', '中国', 'hefei', '合肥', '31.86961', '117.315358', 0);
INSERT INTO `cms_city` VALUES ('101220108', 'luyang', '庐阳', 'anhui', '安徽', 'China', '中国', 'hefei', '合肥', '31.869011', '117.283776', 0);
INSERT INTO `cms_city` VALUES ('101220109', 'shushan', '蜀山', 'anhui', '安徽', 'China', '中国', 'hefei', '合肥', '31.855868', '117.262072', 0);
INSERT INTO `cms_city` VALUES ('101220110', 'baohe', '包河', 'anhui', '安徽', 'China', '中国', 'hefei', '合肥', '31.82956', '117.285751', 0);
INSERT INTO `cms_city` VALUES ('101220201', 'bengbu', '蚌埠', 'anhui', '安徽', 'China', '中国', 'bengbu', '蚌埠', '32.939667', '117.363228', 0);
INSERT INTO `cms_city` VALUES ('101220202', 'huaiyuan', '怀远', 'anhui', '安徽', 'China', '中国', 'bengbu', '蚌埠', '32.956934', '117.200171', 0);
INSERT INTO `cms_city` VALUES ('101220203', 'guzhen', '固镇', 'anhui', '安徽', 'China', '中国', 'bengbu', '蚌埠', '33.318679', '117.315962', 0);
INSERT INTO `cms_city` VALUES ('101220204', 'wuhe', '五河', 'anhui', '安徽', 'China', '中国', 'bengbu', '蚌埠', '33.146202', '117.888809', 0);
INSERT INTO `cms_city` VALUES ('101220205', 'longzihu', '龙子湖', 'anhui', '安徽', 'China', '中国', 'bangbu', '蚌埠', '32.950452', '117.382312', 0);
INSERT INTO `cms_city` VALUES ('101220206', 'bangshan', '蚌山', 'anhui', '安徽', 'China', '中国', 'bangbu', '蚌埠', '32.938066', '117.355789', 0);
INSERT INTO `cms_city` VALUES ('101220207', 'yuhui', '禹会', 'anhui', '安徽', 'China', '中国', 'bangbu', '蚌埠', '32.931933', '117.35259', 0);
INSERT INTO `cms_city` VALUES ('101220208', 'huaishang', '淮上', 'anhui', '安徽', 'China', '中国', 'bangbu', '蚌埠', '32.963147', '117.34709', 0);
INSERT INTO `cms_city` VALUES ('101220301', 'wuhu', '芜湖', 'anhui', '安徽', 'China', '中国', 'wuhu', '芜湖', '31.326319', '118.376451', 0);
INSERT INTO `cms_city` VALUES ('101220302', 'fanyang', '繁昌', 'anhui', '安徽', 'China', '中国', 'wuhu', '芜湖', '31.080896', '118.201349', 0);
INSERT INTO `cms_city` VALUES ('101220303', 'wuhuxian', '芜湖县', 'anhui', '安徽', 'China', '中国', 'wuhu', '芜湖', '31.145262', '118.572301', 0);
INSERT INTO `cms_city` VALUES ('101220304', 'nanling', '南陵', 'anhui', '安徽', 'China', '中国', 'wuhu', '芜湖', '30.919638', '118.337104', 0);
INSERT INTO `cms_city` VALUES ('101220305', 'wuwei', '无为', 'anhui', '安徽', 'China', '中国', 'wuhu', '芜湖', '31.303075', '117.911432', 0);
INSERT INTO `cms_city` VALUES ('101220306', 'jinghu', '镜湖', 'anhui', '安徽', 'China', '中国', 'wuhu', '芜湖', '31.32559', '118.376343', 0);
INSERT INTO `cms_city` VALUES ('101220307', 'yijiang', '弋江', 'anhui', '安徽', 'China', '中国', 'wuhu', '芜湖', '31.313394', '118.377476', 0);
INSERT INTO `cms_city` VALUES ('101220308', 'jiujiang', '鸠江', 'anhui', '安徽', 'China', '中国', 'wuhu', '芜湖', '31.362716', '118.400174', 0);
INSERT INTO `cms_city` VALUES ('101220309', 'sanshan', '三山', 'anhui', '安徽', 'China', '中国', 'wuhu', '芜湖', '31.225423', '118.233987', 0);
INSERT INTO `cms_city` VALUES ('101220401', 'huainan', '淮南', 'anhui', '安徽', 'China', '中国', 'huainan', '淮南', '32.647574', '117.018329', 0);
INSERT INTO `cms_city` VALUES ('101220402', 'fengtai', '凤台', 'anhui', '安徽', 'China', '中国', 'huainan', '淮南', '32.705382', '116.722769', 0);
INSERT INTO `cms_city` VALUES ('101220403', 'panji', '潘集', 'anhui', '安徽', 'China', '中国', 'huainan', '淮南', '32.782117', '116.816879', 0);
INSERT INTO `cms_city` VALUES ('101220404', 'datong', '大通', 'anhui', '安徽', 'China', '中国', 'huainan', '淮南', '32.632066', '117.052927', 0);
INSERT INTO `cms_city` VALUES ('101220405', 'tianjiaan', '田家庵', 'anhui', '安徽', 'China', '中国', 'huainan', '淮南', '32.644342', '117.018318', 0);
INSERT INTO `cms_city` VALUES ('101220406', 'xiejiaji', '谢家集', 'anhui', '安徽', 'China', '中国', 'huainan', '淮南', '32.598289', '116.865354', 0);
INSERT INTO `cms_city` VALUES ('101220407', 'bagongshan', '八公山', 'anhui', '安徽', 'China', '中国', 'huainan', '淮南', '32.628229', '116.841111', 0);
INSERT INTO `cms_city` VALUES ('101220408', 'shouxian', '寿县', 'anhui', '安徽', 'China', '中国', 'huainan', '淮南', '32.577304', '116.785349', 0);
INSERT INTO `cms_city` VALUES ('101220501', 'maanshan', '马鞍山', 'anhui', '安徽', 'China', '中国', 'maanshan', '马鞍山', '31.689362', '118.507906', 0);
INSERT INTO `cms_city` VALUES ('101220502', 'dangtu', '当涂', 'anhui', '安徽', 'China', '中国', 'maanshan', '马鞍山', '31.556167', '118.489873', 0);
INSERT INTO `cms_city` VALUES ('101220503', 'hanshan', '含山', 'anhui', '安徽', 'China', '中国', 'maanshan', '马鞍山', '31.727758', '118.105545', 0);
INSERT INTO `cms_city` VALUES ('101220504', 'hexian', '和县', 'anhui', '安徽', 'China', '中国', 'maanshan', '马鞍山', '31.716634', '118.362998', 0);
INSERT INTO `cms_city` VALUES ('101220505', 'huashan', '花山', 'anhui', '安徽', 'China', '中国', 'maanshan', '马鞍山', '31.69902', '118.511308', 0);
INSERT INTO `cms_city` VALUES ('101220506', 'yushan', '雨山', 'anhui', '安徽', 'China', '中国', 'maanshan', '马鞍山', '31.685912', '118.493104', 0);
INSERT INTO `cms_city` VALUES ('101220507', 'bowang', '博望', 'anhui', '安徽', 'China', '中国', 'maanshan', '马鞍山', '31.562321', '118.843742', 0);
INSERT INTO `cms_city` VALUES ('101220601', 'anqing', '安庆', 'anhui', '安徽', 'China', '中国', 'anqing', '安庆', '30.50883', '117.043551', 0);
INSERT INTO `cms_city` VALUES ('101220603', 'taihu', '太湖', 'anhui', '安徽', 'China', '中国', 'anqing', '安庆', '30.451869', '116.305225', 0);
INSERT INTO `cms_city` VALUES ('101220604', 'qianshan', '潜山', 'anhui', '安徽', 'China', '中国', 'anqing', '安庆', '30.638222', '116.573666', 0);
INSERT INTO `cms_city` VALUES ('101220605', 'huaining', '怀宁', 'anhui', '安徽', 'China', '中国', 'anqing', '安庆', '30.734994', '116.828664', 0);
INSERT INTO `cms_city` VALUES ('101220606', 'susong', '宿松', 'anhui', '安徽', 'China', '中国', 'anqing', '安庆', '30.158327', '116.120204', 0);
INSERT INTO `cms_city` VALUES ('101220607', 'wangjiang', '望江', 'anhui', '安徽', 'China', '中国', 'anqing', '安庆', '30.12491', '116.690927', 0);
INSERT INTO `cms_city` VALUES ('101220608', 'yuexi', '岳西', 'anhui', '安徽', 'China', '中国', 'anqing', '安庆', '30.848502', '116.360482', 0);
INSERT INTO `cms_city` VALUES ('101220609', 'tongcheng', '桐城', 'anhui', '安徽', 'China', '中国', 'anqing', '安庆', '31.050576', '116.959656', 0);
INSERT INTO `cms_city` VALUES ('101220610', 'yingjiang', '迎江', 'anhui', '安徽', 'China', '中国', 'anqing', '安庆', '30.506375', '117.044965', 0);
INSERT INTO `cms_city` VALUES ('101220611', 'daguan', '大观', 'anhui', '安徽', 'China', '中国', 'anqing', '安庆', '30.505632', '117.034512', 0);
INSERT INTO `cms_city` VALUES ('101220612', 'yixiu', '宜秀', 'anhui', '安徽', 'China', '中国', 'anqing', '安庆', '30.541323', '117.070003', 0);
INSERT INTO `cms_city` VALUES ('101220701', 'suzhou', '宿州', 'anhui', '安徽', 'China', '中国', 'suzhou', '宿州', '33.633891', '116.984084', 0);
INSERT INTO `cms_city` VALUES ('101220702', 'dangshan', '砀山', 'anhui', '安徽', 'China', '中国', 'suzhou', '宿州', '34.426247', '116.351113', 0);
INSERT INTO `cms_city` VALUES ('101220703', 'lingbi', '灵璧', 'anhui', '安徽', 'China', '中国', 'suzhou', '宿州', '33.540629', '117.551493', 0);
INSERT INTO `cms_city` VALUES ('101220704', 'sixian', '泗县', 'anhui', '安徽', 'China', '中国', 'suzhou', '宿州', '33.47758', '117.885443', 0);
INSERT INTO `cms_city` VALUES ('101220705', 'xiaoxian', '萧县', 'anhui', '安徽', 'China', '中国', 'suzhou', '宿州', '34.183266', '116.945399', 0);
INSERT INTO `cms_city` VALUES ('101220706', 'yongqiao', '埇桥', 'anhui', '安徽', 'China', '中国', 'suzhou', '宿州', '33.633853', '116.983309', 0);
INSERT INTO `cms_city` VALUES ('101220801', 'fuyang', '阜阳', 'anhui', '安徽', 'China', '中国', 'fuyang', '阜阳', '32.896969', '115.819729', 0);
INSERT INTO `cms_city` VALUES ('101220802', 'funan', '阜南', 'anhui', '安徽', 'China', '中国', 'fuyang', '阜阳', '32.638102', '115.590534', 0);
INSERT INTO `cms_city` VALUES ('101220803', 'yingshang', '颍上', 'anhui', '安徽', 'China', '中国', 'fuyang', '阜阳', '32.637065', '116.259122', 0);
INSERT INTO `cms_city` VALUES ('101220804', 'linquan', '临泉', 'anhui', '安徽', 'China', '中国', 'fuyang', '阜阳', '33.062698', '115.261688', 0);
INSERT INTO `cms_city` VALUES ('101220805', 'jieshou', '界首', 'anhui', '安徽', 'China', '中国', 'fuyang', '阜阳', '33.26153', '115.362117', 0);
INSERT INTO `cms_city` VALUES ('101220806', 'taihe', '太和', 'anhui', '安徽', 'China', '中国', 'fuyang', '阜阳', '33.16229', '115.627243', 0);
INSERT INTO `cms_city` VALUES ('101220807', 'yingzhou', '颍州', 'anhui', '安徽', 'China', '中国', 'fuyang', '阜阳', '32.891238', '115.813914', 0);
INSERT INTO `cms_city` VALUES ('101220808', 'yingdong', '颍东', 'anhui', '安徽', 'China', '中国', 'fuyang', '阜阳', '32.908861', '115.858747', 0);
INSERT INTO `cms_city` VALUES ('101220809', 'yingquan', '颍泉', 'anhui', '安徽', 'China', '中国', 'fuyang', '阜阳', '32.924797', '115.804525', 0);
INSERT INTO `cms_city` VALUES ('101220901', 'bozhou', '亳州', 'anhui', '安徽', 'China', '中国', 'bozhou', '亳州', '33.869338', '115.782939', 0);
INSERT INTO `cms_city` VALUES ('101220902', 'guoyang', '涡阳', 'anhui', '安徽', 'China', '中国', 'bozhou', '亳州', '33.502831', '116.211551', 0);
INSERT INTO `cms_city` VALUES ('101220903', 'lixin', '利辛', 'anhui', '安徽', 'China', '中国', 'bozhou', '亳州', '33.143503', '116.207782', 0);
INSERT INTO `cms_city` VALUES ('101220904', 'mengcheng', '蒙城', 'anhui', '安徽', 'China', '中国', 'bozhou', '亳州', '33.260814', '116.560337', 0);
INSERT INTO `cms_city` VALUES ('101220905', 'qiaocheng', '谯城', 'anhui', '安徽', 'China', '中国', 'bozhou', '亳州', '33.869284', '115.781214', 0);
INSERT INTO `cms_city` VALUES ('101221001', 'huangshan', '黄山', 'anhui', '安徽', 'China', '中国', 'huangshan', '黄山', '29.709239', '118.317325', 0);
INSERT INTO `cms_city` VALUES ('101221002', 'huangshanqu', '黄山区', 'anhui', '安徽', 'China', '中国', 'huangshan', '黄山', '30.294517', '118.136639', 0);
INSERT INTO `cms_city` VALUES ('101221003', 'tunxi', '屯溪', 'anhui', '安徽', 'China', '中国', 'huangshan', '黄山', '29.709186', '118.317354', 0);
INSERT INTO `cms_city` VALUES ('101221004', 'qimen', '祁门', 'anhui', '安徽', 'China', '中国', 'huangshan', '黄山', '29.853472', '117.717237', 0);
INSERT INTO `cms_city` VALUES ('101221005', 'yixian', '黟县', 'anhui', '安徽', 'China', '中国', 'huangshan', '黄山', '29.923812', '117.942911', 0);
INSERT INTO `cms_city` VALUES ('101221006', 'shexian', '歙县', 'anhui', '安徽', 'China', '中国', 'huangshan', '黄山', '29.867748', '118.428025', 0);
INSERT INTO `cms_city` VALUES ('101221007', 'xiuning', '休宁', 'anhui', '安徽', 'China', '中国', 'huangshan', '黄山', '29.788878', '118.188531', 0);
INSERT INTO `cms_city` VALUES ('101221009', 'huizhou', '徽州', 'anhui', '安徽', 'China', '中国', 'huangshan', '黄山', '29.825201', '118.339743', 0);
INSERT INTO `cms_city` VALUES ('101221101', 'chuzhou', '滁州', 'anhui', '安徽', 'China', '中国', 'chuzhou', '滁州', '32.303627', '118.316264', 0);
INSERT INTO `cms_city` VALUES ('101221102', 'fengyang', '凤阳', 'anhui', '安徽', 'China', '中国', 'chuzhou', '滁州', '32.867146', '117.562461', 0);
INSERT INTO `cms_city` VALUES ('101221103', 'mingguang', '明光', 'anhui', '安徽', 'China', '中国', 'chuzhou', '滁州', '32.781206', '117.998048', 0);
INSERT INTO `cms_city` VALUES ('101221104', 'dingyuan', '定远', 'anhui', '安徽', 'China', '中国', 'chuzhou', '滁州', '32.527105', '117.683713', 0);
INSERT INTO `cms_city` VALUES ('101221105', 'quanjiao', '全椒', 'anhui', '安徽', 'China', '中国', 'chuzhou', '滁州', '32.09385', '118.268576', 0);
INSERT INTO `cms_city` VALUES ('101221106', 'laian', '来安', 'anhui', '安徽', 'China', '中国', 'chuzhou', '滁州', '32.450231', '118.433293', 0);
INSERT INTO `cms_city` VALUES ('101221107', 'tianchang', '天长', 'anhui', '安徽', 'China', '中国', 'chuzhou', '滁州', '32.6815', '119.011212', 0);
INSERT INTO `cms_city` VALUES ('101221108', 'langya', '琅琊', 'anhui', '安徽', 'China', '中国', 'chuzhou', '滁州', '32.303797', '118.316475', 0);
INSERT INTO `cms_city` VALUES ('101221109', 'nanqiao', '南谯', 'anhui', '安徽', 'China', '中国', 'chuzhou', '滁州', '32.329841', '118.296955', 0);
INSERT INTO `cms_city` VALUES ('101221201', 'huaibei', '淮北', 'anhui', '安徽', 'China', '中国', 'huaibei', '淮北', '33.971707', '116.794664', 0);
INSERT INTO `cms_city` VALUES ('101221202', 'suixi', '濉溪', 'anhui', '安徽', 'China', '中国', 'huaibei', '淮北', '33.916407', '116.767435', 0);
INSERT INTO `cms_city` VALUES ('101221203', 'duji', '杜集', 'anhui', '安徽', 'China', '中国', 'huaibei', '淮北', '33.991218', '116.833925', 0);
INSERT INTO `cms_city` VALUES ('101221204', 'xiangshan', '相山', 'anhui', '安徽', 'China', '中国', 'huaibei', '淮北', '33.970916', '116.790775', 0);
INSERT INTO `cms_city` VALUES ('101221205', 'lieshan', '烈山', 'anhui', '安徽', 'China', '中国', 'huaibei', '淮北', '33.889529', '116.809465', 0);
INSERT INTO `cms_city` VALUES ('101221301', 'tongling', '铜陵', 'anhui', '安徽', 'China', '中国', 'tongling', '铜陵', '30.929935', '117.816576', 0);
INSERT INTO `cms_city` VALUES ('101221302', 'tongguan', '铜官', 'anhui', '安徽', 'China', '中国', 'tongling', '铜陵', '30.93182', '117.818427', 0);
INSERT INTO `cms_city` VALUES ('101221303', 'yian', '义安', 'anhui', '安徽', 'China', '中国', 'tongling', '铜陵', '30.952338', '117.792288', 0);
INSERT INTO `cms_city` VALUES ('101221304', 'jiaoqu', '郊区', 'anhui', '安徽', 'China', '中国', 'tongling', '铜陵', '30.908927', '117.80707', 0);
INSERT INTO `cms_city` VALUES ('101221305', 'zongyang', '枞阳', 'anhui', '安徽', 'China', '中国', 'tongling', '铜陵', '30.700615', '117.222027', 0);
INSERT INTO `cms_city` VALUES ('101221401', 'xuancheng', '宣城', 'anhui', '安徽', 'China', '中国', 'xuancheng', '宣城', '30.945667', '118.757995', 0);
INSERT INTO `cms_city` VALUES ('101221402', 'jingxian', '泾县', 'anhui', '安徽', 'China', '中国', 'xuancheng', '宣城', '30.685975', '118.412397', 0);
INSERT INTO `cms_city` VALUES ('101221403', 'jingde', '旌德', 'anhui', '安徽', 'China', '中国', 'xuancheng', '宣城', '30.288057', '118.543081', 0);
INSERT INTO `cms_city` VALUES ('101221404', 'ningguo', '宁国', 'anhui', '安徽', 'China', '中国', 'xuancheng', '宣城', '30.626529', '118.983407', 0);
INSERT INTO `cms_city` VALUES ('101221405', 'jixi', '绩溪', 'anhui', '安徽', 'China', '中国', 'xuancheng', '宣城', '30.065267', '118.594705', 0);
INSERT INTO `cms_city` VALUES ('101221406', 'guangde', '广德', 'anhui', '安徽', 'China', '中国', 'xuancheng', '宣城', '30.893116', '119.417521', 0);
INSERT INTO `cms_city` VALUES ('101221407', 'langxi', '郎溪', 'anhui', '安徽', 'China', '中国', 'xuancheng', '宣城', '31.127834', '119.185024', 0);
INSERT INTO `cms_city` VALUES ('101221408', 'xuanzhou', '宣州', 'anhui', '安徽', 'China', '中国', 'xuancheng', '宣城', '30.946003', '118.758412', 0);
INSERT INTO `cms_city` VALUES ('101221501', 'luan', '六安', 'anhui', '安徽', 'China', '中国', 'luan', '六安', '31.752889', '116.507676', 0);
INSERT INTO `cms_city` VALUES ('101221502', 'huoqiu', '霍邱', 'anhui', '安徽', 'China', '中国', 'liuan', '六安', '32.341305', '116.278875', 0);
INSERT INTO `cms_city` VALUES ('101221504', 'jinan', '金安', 'anhui', '安徽', 'China', '中国', 'liuan', '六安', '31.754491', '116.503288', 0);
INSERT INTO `cms_city` VALUES ('101221505', 'jinzhai', '金寨', 'anhui', '安徽', 'China', '中国', 'liuan', '六安', '31.681624', '115.878514', 0);
INSERT INTO `cms_city` VALUES ('101221506', 'huoshan', '霍山', 'anhui', '安徽', 'China', '中国', 'liuan', '六安', '31.402456', '116.333078', 0);
INSERT INTO `cms_city` VALUES ('101221507', 'shucheng', '舒城', 'anhui', '安徽', 'China', '中国', 'liuan', '六安', '31.462848', '116.944088', 0);
INSERT INTO `cms_city` VALUES ('101221508', 'yuan', '裕安', 'anhui', '安徽', 'China', '中国', 'liuan', '六安', '31.750692', '116.494543', 0);
INSERT INTO `cms_city` VALUES ('101221509', 'yeji', '叶集', 'anhui', '安徽', 'China', '中国', 'liuan', '六安', '31.84768', '115.913594', 0);
INSERT INTO `cms_city` VALUES ('101221701', 'chizhou', '池州', 'anhui', '安徽', 'China', '中国', 'chizhou', '池州', '30.656037', '117.489157', 0);
INSERT INTO `cms_city` VALUES ('101221702', 'dongzhi', '东至', 'anhui', '安徽', 'China', '中国', 'chizhou', '池州', '30.096568', '117.021476', 0);
INSERT INTO `cms_city` VALUES ('101221703', 'qingyang', '青阳', 'anhui', '安徽', 'China', '中国', 'chizhou', '池州', '30.63818', '117.857395', 0);
INSERT INTO `cms_city` VALUES ('101221704', 'jiuhuashan', '九华山', 'anhui', '安徽', 'China', '中国', 'chizhou', '池州', '30.29', '117.47', 0);
INSERT INTO `cms_city` VALUES ('101221705', 'shitai', '石台', 'anhui', '安徽', 'China', '中国', 'chizhou', '池州', '30.210324', '117.482907', 0);
INSERT INTO `cms_city` VALUES ('101221706', 'guichi', '贵池', 'anhui', '安徽', 'China', '中国', 'chizhou', '池州', '30.657378', '117.488342', 0);
INSERT INTO `cms_city` VALUES ('101230101', 'fuzhou', '福州', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '26.075302', '119.306239', 0);
INSERT INTO `cms_city` VALUES ('101230102', 'minqing', '闽清', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '26.223793', '118.868416', 0);
INSERT INTO `cms_city` VALUES ('101230103', 'minhou', '闽侯', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '26.148567', '119.145117', 0);
INSERT INTO `cms_city` VALUES ('101230104', 'luoyuan', '罗源', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '26.487234', '119.552645', 0);
INSERT INTO `cms_city` VALUES ('101230105', 'lianjiang', '连江', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '26.202109', '119.538365', 0);
INSERT INTO `cms_city` VALUES ('101230106', 'gulou', '鼓楼', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '26.082284', '119.29929', 0);
INSERT INTO `cms_city` VALUES ('101230107', 'yongtai', '永泰', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '25.864825', '118.939089', 0);
INSERT INTO `cms_city` VALUES ('101230108', 'pingtan', '平潭', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '25.503672', '119.791197', 0);
INSERT INTO `cms_city` VALUES ('101230109', 'taijiang', '台江', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '26.058616', '119.310156', 0);
INSERT INTO `cms_city` VALUES ('101230110', 'changle', '长乐', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '25.960583', '119.510849', 0);
INSERT INTO `cms_city` VALUES ('101230111', 'fuqing', '福清', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '25.720402', '119.376992', 0);
INSERT INTO `cms_city` VALUES ('101230112', 'cangshan', '仓山', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '26.038912', '119.320988', 0);
INSERT INTO `cms_city` VALUES ('101230113', 'mawei', '马尾', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '25.991975', '119.458725', 0);
INSERT INTO `cms_city` VALUES ('101230114', 'jinan', '晋安', 'fujian', '福建', 'China', '中国', 'fuzhou', '福州', '26.078837', '119.328597', 0);
INSERT INTO `cms_city` VALUES ('101230201', 'xiamen', '厦门', 'fujian', '福建', 'China', '中国', 'xiamen', '厦门', '24.490474', '118.11022', 0);
INSERT INTO `cms_city` VALUES ('101230202', 'tongan', '同安', 'fujian', '福建', 'China', '中国', 'xiamen', '厦门', '24.729333', '118.150455', 0);
INSERT INTO `cms_city` VALUES ('101230203', 'siming', '思明', 'fujian', '福建', 'China', '中国', 'xiamen', '厦门', '24.462059', '118.087828', 0);
INSERT INTO `cms_city` VALUES ('101230204', 'haicang', '海沧', 'fujian', '福建', 'China', '中国', 'xiamen', '厦门', '24.492512', '118.036364', 0);
INSERT INTO `cms_city` VALUES ('101230205', 'huli', '湖里', 'fujian', '福建', 'China', '中国', 'xiamen', '厦门', '24.512764', '118.10943', 0);
INSERT INTO `cms_city` VALUES ('101230206', 'jimei', '集美', 'fujian', '福建', 'China', '中国', 'xiamen', '厦门', '24.572874', '118.100869', 0);
INSERT INTO `cms_city` VALUES ('101230207', 'xiangan', '翔安', 'fujian', '福建', 'China', '中国', 'xiamen', '厦门', '24.637479', '118.242811', 0);
INSERT INTO `cms_city` VALUES ('101230301', 'ningde', '宁德', 'fujian', '福建', 'China', '中国', 'ningde', '宁德', '26.65924', '119.527082', 0);
INSERT INTO `cms_city` VALUES ('101230302', 'gutian', '古田', 'fujian', '福建', 'China', '中国', 'ningde', '宁德', '26.577491', '118.743156', 0);
INSERT INTO `cms_city` VALUES ('101230303', 'xiapu', '霞浦', 'fujian', '福建', 'China', '中国', 'ningde', '宁德', '26.882068', '120.005214', 0);
INSERT INTO `cms_city` VALUES ('101230304', 'shouning', '寿宁', 'fujian', '福建', 'China', '中国', 'ningde', '宁德', '27.457798', '119.506733', 0);
INSERT INTO `cms_city` VALUES ('101230305', 'zhouning', '周宁', 'fujian', '福建', 'China', '中国', 'ningde', '宁德', '27.103106', '119.338239', 0);
INSERT INTO `cms_city` VALUES ('101230306', 'fuan', '福安', 'fujian', '福建', 'China', '中国', 'ningde', '宁德', '27.084246', '119.650798', 0);
INSERT INTO `cms_city` VALUES ('101230307', 'zherong', '柘荣', 'fujian', '福建', 'China', '中国', 'ningde', '宁德', '27.236163', '119.898226', 0);
INSERT INTO `cms_city` VALUES ('101230308', 'fuding', '福鼎', 'fujian', '福建', 'China', '中国', 'ningde', '宁德', '27.318884', '120.219761', 0);
INSERT INTO `cms_city` VALUES ('101230309', 'pingnan', '屏南', 'fujian', '福建', 'China', '中国', 'ningde', '宁德', '26.910826', '118.987544', 0);
INSERT INTO `cms_city` VALUES ('101230310', 'jiaocheng', '蕉城', 'fujian', '福建', 'China', '中国', 'ningde', '宁德', '26.659253', '119.527225', 0);
INSERT INTO `cms_city` VALUES ('101230401', 'putian', '莆田', 'fujian', '福建', 'China', '中国', 'putian', '莆田', '25.431011', '119.007558', 0);
INSERT INTO `cms_city` VALUES ('101230402', 'xianyou', '仙游', 'fujian', '福建', 'China', '中国', 'putian', '莆田', '25.356529', '118.694331', 0);
INSERT INTO `cms_city` VALUES ('101230404', 'hanjiang', '涵江', 'fujian', '福建', 'China', '中国', 'putian', '莆田', '25.459273', '119.119102', 0);
INSERT INTO `cms_city` VALUES ('101230405', 'xiuyu', '秀屿', 'fujian', '福建', 'China', '中国', 'putian', '莆田', '25.316141', '119.092607', 0);
INSERT INTO `cms_city` VALUES ('101230406', 'licheng', '荔城', 'fujian', '福建', 'China', '中国', 'putian', '莆田', '25.430047', '119.020047', 0);
INSERT INTO `cms_city` VALUES ('101230407', 'chengxiang', '城厢', 'fujian', '福建', 'China', '中国', 'putian', '莆田', '25.433737', '119.001028', 0);
INSERT INTO `cms_city` VALUES ('101230501', 'quanzhou', '泉州', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '24.908853', '118.589421', 0);
INSERT INTO `cms_city` VALUES ('101230502', 'anxi', '安溪', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '25.056824', '118.186014', 0);
INSERT INTO `cms_city` VALUES ('101230503', 'jinmen', '金门', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '24.436417', '118.323221', 0);
INSERT INTO `cms_city` VALUES ('101230504', 'yongchun', '永春', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '25.320721', '118.29503', 0);
INSERT INTO `cms_city` VALUES ('101230505', 'dehua', '德化', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '25.489004', '118.242986', 0);
INSERT INTO `cms_city` VALUES ('101230506', 'nanan', '南安', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '24.959494', '118.387031', 0);
INSERT INTO `cms_city` VALUES ('101230508', 'huian', '惠安', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '25.028718', '118.798954', 0);
INSERT INTO `cms_city` VALUES ('101230509', 'jinjiang', '晋江', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '24.807322', '118.577338', 0);
INSERT INTO `cms_city` VALUES ('101230510', 'shishi', '石狮', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '24.731978', '118.628402', 0);
INSERT INTO `cms_city` VALUES ('101230511', 'licheng', '鲤城', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '24.907645', '118.588929', 0);
INSERT INTO `cms_city` VALUES ('101230512', 'fengze', '丰泽', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '24.896041', '118.605147', 0);
INSERT INTO `cms_city` VALUES ('101230513', 'luojiang', '洛江', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '24.941153', '118.670312', 0);
INSERT INTO `cms_city` VALUES ('101230514', 'quangang', '泉港', 'fujian', '福建', 'China', '中国', 'quanzhou', '泉州', '25.126859', '118.912285', 0);
INSERT INTO `cms_city` VALUES ('101230601', 'zhangzhou', '漳州', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '24.510897', '117.661801', 0);
INSERT INTO `cms_city` VALUES ('101230602', 'changtai', '长泰', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '24.621475', '117.755913', 0);
INSERT INTO `cms_city` VALUES ('101230603', 'nanjing', '南靖', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '24.516425', '117.365462', 0);
INSERT INTO `cms_city` VALUES ('101230604', 'pinghe', '平和', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '24.366158', '117.313549', 0);
INSERT INTO `cms_city` VALUES ('101230605', 'longhai', '龙海', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '24.445341', '117.817292', 0);
INSERT INTO `cms_city` VALUES ('101230606', 'zhangpu', '漳浦', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '24.117907', '117.614023', 0);
INSERT INTO `cms_city` VALUES ('101230607', 'zhaoan', '诏安', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '23.710834', '117.176083', 0);
INSERT INTO `cms_city` VALUES ('101230608', 'dongshan', '东山', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '23.702845', '117.427679', 0);
INSERT INTO `cms_city` VALUES ('101230609', 'yunxiao', '云霄', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '23.950486', '117.340946', 0);
INSERT INTO `cms_city` VALUES ('101230610', 'huaan', '华安', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '25.001416', '117.53631', 0);
INSERT INTO `cms_city` VALUES ('101230611', 'xiangcheng', '芗城', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '24.509955', '117.656461', 0);
INSERT INTO `cms_city` VALUES ('101230612', 'longwen', '龙文', 'fujian', '福建', 'China', '中国', 'zhangzhou', '漳州', '24.515656', '117.671387', 0);
INSERT INTO `cms_city` VALUES ('101230701', 'longyan', '龙岩', 'fujian', '福建', 'China', '中国', 'longyan', '龙岩', '25.091603', '117.02978', 0);
INSERT INTO `cms_city` VALUES ('101230702', 'changting', '长汀', 'fujian', '福建', 'China', '中国', 'longyan', '龙岩', '25.842278', '116.361007', 0);
INSERT INTO `cms_city` VALUES ('101230703', 'liancheng', '连城', 'fujian', '福建', 'China', '中国', 'longyan', '龙岩', '25.708506', '116.756687', 0);
INSERT INTO `cms_city` VALUES ('101230704', 'wuping', '武平', 'fujian', '福建', 'China', '中国', 'longyan', '龙岩', '25.08865', '116.100928', 0);
INSERT INTO `cms_city` VALUES ('101230705', 'shanghang', '上杭', 'fujian', '福建', 'China', '中国', 'longyan', '龙岩', '25.050019', '116.424774', 0);
INSERT INTO `cms_city` VALUES ('101230706', 'yongding', '永定', 'fujian', '福建', 'China', '中国', 'longyan', '龙岩', '24.720442', '116.732691', 0);
INSERT INTO `cms_city` VALUES ('101230707', 'zhangping', '漳平', 'fujian', '福建', 'China', '中国', 'longyan', '龙岩', '25.291597', '117.42073', 0);
INSERT INTO `cms_city` VALUES ('101230708', 'xinluo', '新罗', 'fujian', '福建', 'China', '中国', 'longyan', '龙岩', '25.0918', '117.030721', 0);
INSERT INTO `cms_city` VALUES ('101230801', 'sanming', '三明', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '26.265444', '117.635001', 0);
INSERT INTO `cms_city` VALUES ('101230802', 'ninghua', '宁化', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '26.259932', '116.659725', 0);
INSERT INTO `cms_city` VALUES ('101230803', 'qingliu', '清流', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '26.17761', '116.815821', 0);
INSERT INTO `cms_city` VALUES ('101230804', 'taining', '泰宁', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '26.897995', '117.177522', 0);
INSERT INTO `cms_city` VALUES ('101230805', 'jiangle', '将乐', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '26.728667', '117.473558', 0);
INSERT INTO `cms_city` VALUES ('101230806', 'jianning', '建宁', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '26.831398', '116.845832', 0);
INSERT INTO `cms_city` VALUES ('101230807', 'mingxi', '明溪', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '26.357375', '117.201845', 0);
INSERT INTO `cms_city` VALUES ('101230808', 'shaxian', '沙县', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '26.397361', '117.789095', 0);
INSERT INTO `cms_city` VALUES ('101230809', 'youxi', '尤溪', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '26.169261', '118.188577', 0);
INSERT INTO `cms_city` VALUES ('101230810', 'yongan', '永安', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '25.974075', '117.364447', 0);
INSERT INTO `cms_city` VALUES ('101230811', 'datian', '大田', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '25.690803', '117.849355', 0);
INSERT INTO `cms_city` VALUES ('101230812', 'meilie', '梅列', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '26.269208', '117.63687', 0);
INSERT INTO `cms_city` VALUES ('101230813', 'sanyuan', '三元', 'fujian', '福建', 'China', '中国', 'sanming', '三明', '26.234191', '117.607418', 0);
INSERT INTO `cms_city` VALUES ('101230901', 'nanping', '南平', 'fujian', '福建', 'China', '中国', 'nanping', '南平', '26.635627', '118.178459', 0);
INSERT INTO `cms_city` VALUES ('101230902', 'shunchang', '顺昌', 'fujian', '福建', 'China', '中国', 'nanping', '南平', '26.792851', '117.80771', 0);
INSERT INTO `cms_city` VALUES ('101230903', 'guangze', '光泽', 'fujian', '福建', 'China', '中国', 'nanping', '南平', '27.542803', '117.337897', 0);
INSERT INTO `cms_city` VALUES ('101230904', 'shaowu', '邵武', 'fujian', '福建', 'China', '中国', 'nanping', '南平', '27.337952', '117.491544', 0);
INSERT INTO `cms_city` VALUES ('101230905', 'wuyishan', '武夷山', 'fujian', '福建', 'China', '中国', 'nanping', '南平', '27.751733', '118.032796', 0);
INSERT INTO `cms_city` VALUES ('101230906', 'pucheng', '浦城', 'fujian', '福建', 'China', '中国', 'nanping', '南平', '27.920412', '118.536822', 0);
INSERT INTO `cms_city` VALUES ('101230907', 'jianyang', '建阳', 'fujian', '福建', 'China', '中国', 'nanping', '南平', '27.332067', '118.12267', 0);
INSERT INTO `cms_city` VALUES ('101230908', 'songxi', '松溪', 'fujian', '福建', 'China', '中国', 'nanping', '南平', '27.525785', '118.783491', 0);
INSERT INTO `cms_city` VALUES ('101230909', 'zhenghe', '政和', 'fujian', '福建', 'China', '中国', 'nanping', '南平', '27.365398', '118.858661', 0);
INSERT INTO `cms_city` VALUES ('101230910', 'jianou', '建瓯', 'fujian', '福建', 'China', '中国', 'nanping', '南平', '27.03502', '118.321765', 0);
INSERT INTO `cms_city` VALUES ('101230911', 'yanping', '延平', 'fujian', '福建', 'China', '中国', 'nanping', '南平', '26.636079', '118.178918', 0);
INSERT INTO `cms_city` VALUES ('101231001', 'diaoyudao', '钓鱼岛', 'fujian', '福建', 'China', '中国', 'diaoyudao', '钓鱼岛', '25.73', '123.46', 0);
INSERT INTO `cms_city` VALUES ('101240101', 'nanchang', '南昌', 'jiangxi', '江西', 'China', '中国', 'nanchang', '南昌', '28.676493', '115.892151', 0);
INSERT INTO `cms_city` VALUES ('101240102', 'xinjian', '新建', 'jiangxi', '江西', 'China', '中国', 'nanchang', '南昌', '28.690788', '115.820806', 0);
INSERT INTO `cms_city` VALUES ('101240103', 'nanchangxian', '南昌县', 'jiangxi', '江西', 'China', '中国', 'nanchang', '南昌', '28.543781', '115.942465', 0);
INSERT INTO `cms_city` VALUES ('101240104', 'anyi', '安义', 'jiangxi', '江西', 'China', '中国', 'nanchang', '南昌', '28.841334', '115.553109', 0);
INSERT INTO `cms_city` VALUES ('101240105', 'jinxian', '进贤', 'jiangxi', '江西', 'China', '中国', 'nanchang', '南昌', '28.365681', '116.267671', 0);
INSERT INTO `cms_city` VALUES ('101240106', 'donghu', '东湖', 'jiangxi', '江西', 'China', '中国', 'nanchang', '南昌', '28.682988', '115.889675', 0);
INSERT INTO `cms_city` VALUES ('101240107', 'xihu', '西湖', 'jiangxi', '江西', 'China', '中国', 'nanchang', '南昌', '28.662901', '115.91065', 0);
INSERT INTO `cms_city` VALUES ('101240108', 'qingyunpu', '青云谱', 'jiangxi', '江西', 'China', '中国', 'nanchang', '南昌', '28.635724', '115.907292', 0);
INSERT INTO `cms_city` VALUES ('101240109', 'wanli', '湾里', 'jiangxi', '江西', 'China', '中国', 'nanchang', '南昌', '28.714803', '115.731324', 0);
INSERT INTO `cms_city` VALUES ('101240110', 'qingshanhu', '青山湖', 'jiangxi', '江西', 'China', '中国', 'nanchang', '南昌', '28.689292', '115.949044', 0);
INSERT INTO `cms_city` VALUES ('101240201', 'jiujiang', '九江', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.712034', '115.992811', 0);
INSERT INTO `cms_city` VALUES ('101240202', 'ruichang', '瑞昌', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.676599', '115.669081', 0);
INSERT INTO `cms_city` VALUES ('101240203', 'lushan', '庐山', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.456169', '116.043743', 0);
INSERT INTO `cms_city` VALUES ('101240204', 'wuning', '武宁', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.260182', '115.105646', 0);
INSERT INTO `cms_city` VALUES ('101240205', 'dean', '德安', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.327474', '115.762611', 0);
INSERT INTO `cms_city` VALUES ('101240206', 'yongxiu', '永修', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.018212', '115.809055', 0);
INSERT INTO `cms_city` VALUES ('101240207', 'hukou', '湖口', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.7263', '116.244313', 0);
INSERT INTO `cms_city` VALUES ('101240208', 'pengze', '彭泽', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.898865', '116.55584', 0);
INSERT INTO `cms_city` VALUES ('101240209', 'xingzi', '星子', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.27', '116.03', 0);
INSERT INTO `cms_city` VALUES ('101240210', 'duchang', '都昌', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.275105', '116.205114', 0);
INSERT INTO `cms_city` VALUES ('101240211', 'xunyang', '浔阳', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.72465', '115.995947', 0);
INSERT INTO `cms_city` VALUES ('101240212', 'xiushui', '修水', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.032729', '114.573428', 0);
INSERT INTO `cms_city` VALUES ('101240213', 'gongqingcheng', '共青城', 'jiangxi', '江西', 'China', '中国', 'jiujiang', '九江', '29.247884', '115.805712', 0);
INSERT INTO `cms_city` VALUES ('101240301', 'shangrao', '上饶', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.44442', '117.971185', 0);
INSERT INTO `cms_city` VALUES ('101240302', 'poyang', '鄱阳', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.993374', '116.673748', 0);
INSERT INTO `cms_city` VALUES ('101240303', 'wuyuan', '婺源', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '29.254015', '117.86219', 0);
INSERT INTO `cms_city` VALUES ('101240304', 'xinzhou', '信州', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.445378', '117.970522', 0);
INSERT INTO `cms_city` VALUES ('101240305', 'yugan', '余干', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.69173', '116.691072', 0);
INSERT INTO `cms_city` VALUES ('101240306', 'wannian', '万年', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.692589', '117.07015', 0);
INSERT INTO `cms_city` VALUES ('101240307', 'dexing', '德兴', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.945034', '117.578732', 0);
INSERT INTO `cms_city` VALUES ('101240308', 'shangraoxian', '上饶县', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.453897', '117.90612', 0);
INSERT INTO `cms_city` VALUES ('101240309', 'yiyang', '弋阳', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.402391', '117.435002', 0);
INSERT INTO `cms_city` VALUES ('101240310', 'hengfeng', '横峰', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.415103', '117.608247', 0);
INSERT INTO `cms_city` VALUES ('101240311', 'yanshan', '铅山', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.310892', '117.711906', 0);
INSERT INTO `cms_city` VALUES ('101240312', 'yushan', '玉山', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.673479', '118.244408', 0);
INSERT INTO `cms_city` VALUES ('101240313', 'guangfeng', '广丰', 'jiangxi', '江西', 'China', '中国', 'shangrao', '上饶', '28.440285', '118.189852', 0);
INSERT INTO `cms_city` VALUES ('101240401', 'fuzhou', '抚州', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '27.98385', '116.358351', 0);
INSERT INTO `cms_city` VALUES ('101240402', 'guangchang', '广昌', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '26.838426', '116.327291', 0);
INSERT INTO `cms_city` VALUES ('101240403', 'anle', '乐安', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '27.420101', '115.838432', 0);
INSERT INTO `cms_city` VALUES ('101240404', 'chongren', '崇仁', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '27.760907', '116.059109', 0);
INSERT INTO `cms_city` VALUES ('101240405', 'jinxi', '金溪', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '27.907387', '116.778751', 0);
INSERT INTO `cms_city` VALUES ('101240406', 'zixi', '资溪', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '27.70653', '117.066095', 0);
INSERT INTO `cms_city` VALUES ('101240407', 'yihuang', '宜黄', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '27.546512', '116.223023', 0);
INSERT INTO `cms_city` VALUES ('101240408', 'nancheng', '南城', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '27.55531', '116.63945', 0);
INSERT INTO `cms_city` VALUES ('101240409', 'nanfeng', '南丰', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '27.210132', '116.532994', 0);
INSERT INTO `cms_city` VALUES ('101240410', 'lichuan', '黎川', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '27.292561', '116.91457', 0);
INSERT INTO `cms_city` VALUES ('101240411', 'dongxiang', '东乡', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '28.2325', '116.605341', 0);
INSERT INTO `cms_city` VALUES ('101240412', 'linchuan', '临川', 'jiangxi', '江西', 'China', '中国', 'fuzhou', '抚州', '27.981919', '116.361404', 0);
INSERT INTO `cms_city` VALUES ('101240501', 'yichun', '宜春', 'jiangxi', '江西', 'China', '中国', 'yichun', '宜春', '27.8043', '114.391136', 0);
INSERT INTO `cms_city` VALUES ('101240502', 'tonggu', '铜鼓', 'jiangxi', '江西', 'China', '中国', 'yichun', '宜春', '28.520956', '114.37014', 0);
INSERT INTO `cms_city` VALUES ('101240503', 'yifeng', '宜丰', 'jiangxi', '江西', 'China', '中国', 'yichun', '宜春', '28.388289', '114.787381', 0);
INSERT INTO `cms_city` VALUES ('101240504', 'wanzai', '万载', 'jiangxi', '江西', 'China', '中国', 'yichun', '宜春', '28.104528', '114.449012', 0);
INSERT INTO `cms_city` VALUES ('101240505', 'shanggao', '上高', 'jiangxi', '江西', 'China', '中国', 'yichun', '宜春', '28.234789', '114.932653', 0);
INSERT INTO `cms_city` VALUES ('101240506', 'jingan', '靖安', 'jiangxi', '江西', 'China', '中国', 'yichun', '宜春', '28.86054', '115.361744', 0);
INSERT INTO `cms_city` VALUES ('101240507', 'fengxin', '奉新', 'jiangxi', '江西', 'China', '中国', 'yichun', '宜春', '28.700672', '115.389899', 0);
INSERT INTO `cms_city` VALUES ('101240508', 'gaoan', '高安', 'jiangxi', '江西', 'China', '中国', 'yichun', '宜春', '28.420951', '115.381527', 0);
INSERT INTO `cms_city` VALUES ('101240509', 'zhangshu', '樟树', 'jiangxi', '江西', 'China', '中国', 'yichun', '宜春', '28.055898', '115.543388', 0);
INSERT INTO `cms_city` VALUES ('101240510', 'fengcheng', '丰城', 'jiangxi', '江西', 'China', '中国', 'yichun', '宜春', '28.191584', '115.786005', 0);
INSERT INTO `cms_city` VALUES ('101240511', 'yuanzhou', '袁州', 'jiangxi', '江西', 'China', '中国', 'yichun', '宜春', '27.800117', '114.387379', 0);
INSERT INTO `cms_city` VALUES ('101240601', 'jian', '吉安', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '27.111699', '114.986373', 0);
INSERT INTO `cms_city` VALUES ('101240602', 'jianxian', '吉安县', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '27.040042', '114.905117', 0);
INSERT INTO `cms_city` VALUES ('101240603', 'jishui', '吉水', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '27.213445', '115.134569', 0);
INSERT INTO `cms_city` VALUES ('101240604', 'xingan', '新干', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '27.755758', '115.399294', 0);
INSERT INTO `cms_city` VALUES ('101240605', 'xiajiang', '峡江', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '27.580862', '115.319331', 0);
INSERT INTO `cms_city` VALUES ('101240606', 'yongfeng', '永丰', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '27.321087', '115.435559', 0);
INSERT INTO `cms_city` VALUES ('101240607', 'yongxin', '永新', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '26.944721', '114.242534', 0);
INSERT INTO `cms_city` VALUES ('101240608', 'jinggangshan', '井冈山', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '26.745919', '114.284421', 0);
INSERT INTO `cms_city` VALUES ('101240609', 'wanan', '万安', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '26.462085', '114.784694', 0);
INSERT INTO `cms_city` VALUES ('101240610', 'suichuan', '遂川', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '26.323705', '114.51689', 0);
INSERT INTO `cms_city` VALUES ('101240611', 'taihe', '泰和', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '26.790164', '114.901393', 0);
INSERT INTO `cms_city` VALUES ('101240612', 'anfu', '安福', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '27.382746', '114.61384', 0);
INSERT INTO `cms_city` VALUES ('101240614', 'jizhou', '吉州', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '27.112367', '114.987331', 0);
INSERT INTO `cms_city` VALUES ('101240615', 'qingyuan', '青原', 'jiangxi', '江西', 'China', '中国', 'jian', '吉安', '27.105879', '115.016306', 0);
INSERT INTO `cms_city` VALUES ('101240701', 'ganzhou', '赣州', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.85097', '114.940278', 0);
INSERT INTO `cms_city` VALUES ('101240702', 'chongyi', '崇义', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.687911', '114.307348', 0);
INSERT INTO `cms_city` VALUES ('101240703', 'shangyou', '上犹', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.794284', '114.540537', 0);
INSERT INTO `cms_city` VALUES ('101240704', 'nankang', '南康', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.661721', '114.756933', 0);
INSERT INTO `cms_city` VALUES ('101240705', 'dayu', '大余', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.395937', '114.362243', 0);
INSERT INTO `cms_city` VALUES ('101240706', 'xinfeng', '信丰', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.38023', '114.930893', 0);
INSERT INTO `cms_city` VALUES ('101240707', 'ningdu', '宁都', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '26.472054', '116.018782', 0);
INSERT INTO `cms_city` VALUES ('101240708', 'shicheng', '石城', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '26.326582', '116.342249', 0);
INSERT INTO `cms_city` VALUES ('101240709', 'ruijin', '瑞金', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.875278', '116.034854', 0);
INSERT INTO `cms_city` VALUES ('101240710', 'yudu', '于都', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.955033', '115.411198', 0);
INSERT INTO `cms_city` VALUES ('101240711', 'huichang', '会昌', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.599125', '115.791158', 0);
INSERT INTO `cms_city` VALUES ('101240712', 'anyuan', '安远', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.134591', '115.392328', 0);
INSERT INTO `cms_city` VALUES ('101240713', 'quannan', '全南', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '24.742651', '114.531589', 0);
INSERT INTO `cms_city` VALUES ('101240714', 'longnan', '龙南', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '24.90476', '114.792657', 0);
INSERT INTO `cms_city` VALUES ('101240715', 'dingnan', '定南', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '24.774277', '115.03267', 0);
INSERT INTO `cms_city` VALUES ('101240716', 'xunwu', '寻乌', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '24.954136', '115.651399', 0);
INSERT INTO `cms_city` VALUES ('101240717', 'xingguo', '兴国', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '26.330489', '115.351896', 0);
INSERT INTO `cms_city` VALUES ('101240718', 'ganxian', '赣县', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.865432', '115.018461', 0);
INSERT INTO `cms_city` VALUES ('101240719', 'zhanggong', '章贡', 'jiangxi', '江西', 'China', '中国', 'ganzhou', '赣州', '25.851367', '114.93872', 0);
INSERT INTO `cms_city` VALUES ('101240801', 'jingdezhen', '景德镇', 'jiangxi', '江西', 'China', '中国', 'jingdezhen', '景德镇', '29.29256', '117.214664', 0);
INSERT INTO `cms_city` VALUES ('101240802', 'leping', '乐平', 'jiangxi', '江西', 'China', '中国', 'jingdezhen', '景德镇', '28.967361', '117.129376', 0);
INSERT INTO `cms_city` VALUES ('101240803', 'fuliang', '浮梁', 'jiangxi', '江西', 'China', '中国', 'jingdezhen', '景德镇', '29.352251', '117.217611', 0);
INSERT INTO `cms_city` VALUES ('101240804', 'changjiang', '昌江', 'jiangxi', '江西', 'China', '中国', 'jingdezhen', '景德镇', '29.288465', '117.195023', 0);
INSERT INTO `cms_city` VALUES ('101240805', 'zhushan', '珠山', 'jiangxi', '江西', 'China', '中国', 'jingdezhen', '景德镇', '29.292812', '117.214814', 0);
INSERT INTO `cms_city` VALUES ('101240901', 'pingxiang', '萍乡', 'jiangxi', '江西', 'China', '中国', 'pingxiang', '萍乡', '27.622946', '113.852186', 0);
INSERT INTO `cms_city` VALUES ('101240902', 'lianhua', '莲花', 'jiangxi', '江西', 'China', '中国', 'pingxiang', '萍乡', '27.127807', '113.955582', 0);
INSERT INTO `cms_city` VALUES ('101240903', 'shangli', '上栗', 'jiangxi', '江西', 'China', '中国', 'pingxiang', '萍乡', '27.877041', '113.800525', 0);
INSERT INTO `cms_city` VALUES ('101240904', 'anyuan', '安源', 'jiangxi', '江西', 'China', '中国', 'pingxiang', '萍乡', '27.625826', '113.855044', 0);
INSERT INTO `cms_city` VALUES ('101240905', 'luxi', '芦溪', 'jiangxi', '江西', 'China', '中国', 'pingxiang', '萍乡', '27.633633', '114.041206', 0);
INSERT INTO `cms_city` VALUES ('101240906', 'xiangdong', '湘东', 'jiangxi', '江西', 'China', '中国', 'pingxiang', '萍乡', '27.639319', '113.7456', 0);
INSERT INTO `cms_city` VALUES ('101241001', 'xinyu', '新余', 'jiangxi', '江西', 'China', '中国', 'xinyu', '新余', '27.810834', '114.930835', 0);
INSERT INTO `cms_city` VALUES ('101241002', 'fenyi', '分宜', 'jiangxi', '江西', 'China', '中国', 'xinyu', '新余', '27.811301', '114.675262', 0);
INSERT INTO `cms_city` VALUES ('101241003', 'yushui', '渝水', 'jiangxi', '江西', 'China', '中国', 'xinyu', '新余', '27.819171', '114.923923', 0);
INSERT INTO `cms_city` VALUES ('101241101', 'yingtan', '鹰潭', 'jiangxi', '江西', 'China', '中国', 'yingtan', '鹰潭', '28.238638', '117.033838', 0);
INSERT INTO `cms_city` VALUES ('101241102', 'yujiang', '余江', 'jiangxi', '江西', 'China', '中国', 'yingtan', '鹰潭', '28.206177', '116.822763', 0);
INSERT INTO `cms_city` VALUES ('101241103', 'guixi', '贵溪', 'jiangxi', '江西', 'China', '中国', 'yingtan', '鹰潭', '28.283693', '117.212103', 0);
INSERT INTO `cms_city` VALUES ('101241104', 'yuehu', '月湖', 'jiangxi', '江西', 'China', '中国', 'yingtan', '鹰潭', '28.239076', '117.034112', 0);
INSERT INTO `cms_city` VALUES ('101250101', 'changsha', '长沙', 'hunan', '湖南', 'China', '中国', 'changsha', '长沙', '28.19409', '112.982279', 1);
INSERT INTO `cms_city` VALUES ('101250102', 'ningxiang', '宁乡', 'hunan', '湖南', 'China', '中国', 'changsha', '长沙', '28.253928', '112.553182', 0);
INSERT INTO `cms_city` VALUES ('101250103', 'liuyang', '浏阳', 'hunan', '湖南', 'China', '中国', 'changsha', '长沙', '28.141112', '113.633301', 0);
INSERT INTO `cms_city` VALUES ('101250104', 'xiangjiangxinqu', '湘江新区', 'hunan', '湖南', 'China', '中国', 'changsha', '长沙', '28.12', '113.05', 0);
INSERT INTO `cms_city` VALUES ('101250105', 'wangcheng', '望城', 'hunan', '湖南', 'China', '中国', 'changsha', '长沙', '28.347458', '112.819549', 0);
INSERT INTO `cms_city` VALUES ('101250106', 'changshaxian', '长沙县', 'hunan', '湖南', 'China', '中国', 'changsha', '长沙', '28.237888', '113.080098', 0);
INSERT INTO `cms_city` VALUES ('101250107', 'furong', '芙蓉', 'hunan', '湖南', 'China', '中国', 'changsha', '长沙', '28.193106', '112.988094', 0);
INSERT INTO `cms_city` VALUES ('101250108', 'tianxin', '天心', 'hunan', '湖南', 'China', '中国', 'changsha', '长沙', '28.192375', '112.97307', 0);
INSERT INTO `cms_city` VALUES ('101250109', 'yuelu', '岳麓', 'hunan', '湖南', 'China', '中国', 'changsha', '长沙', '28.213044', '112.911591', 0);
INSERT INTO `cms_city` VALUES ('101250110', 'kaifu', '开福', 'hunan', '湖南', 'China', '中国', 'changsha', '长沙', '28.201336', '112.985525', 0);
INSERT INTO `cms_city` VALUES ('101250111', 'yuhua', '雨花', 'hunan', '湖南', 'China', '中国', 'changsha', '长沙', '28.109937', '113.016337', 0);
INSERT INTO `cms_city` VALUES ('101250201', 'xiangtan', '湘潭', 'hunan', '湖南', 'China', '中国', 'xiangtan', '湘潭', '27.82973', '112.944052', 0);
INSERT INTO `cms_city` VALUES ('101250202', 'shaoshan', '韶山', 'hunan', '湖南', 'China', '中国', 'xiangtan', '湘潭', '27.922682', '112.52848', 0);
INSERT INTO `cms_city` VALUES ('101250203', 'xiangxiang', '湘乡', 'hunan', '湖南', 'China', '中国', 'xiangtan', '湘潭', '27.734918', '112.525217', 0);
INSERT INTO `cms_city` VALUES ('101250204', 'yuhu', '雨湖', 'hunan', '湖南', 'China', '中国', 'xiangtan', '湘潭', '27.86077', '112.907427', 0);
INSERT INTO `cms_city` VALUES ('101250205', 'yuetang', '岳塘', 'hunan', '湖南', 'China', '中国', 'xiangtan', '湘潭', '27.828854', '112.927707', 0);
INSERT INTO `cms_city` VALUES ('101250301', 'zhuzhou', '株洲', 'hunan', '湖南', 'China', '中国', 'zhuzhou', '株洲', '27.835806', '113.151737', 0);
INSERT INTO `cms_city` VALUES ('101250302', 'youxian', '攸县', 'hunan', '湖南', 'China', '中国', 'zhuzhou', '株洲', '27.000071', '113.345774', 0);
INSERT INTO `cms_city` VALUES ('101250303', 'liling', '醴陵', 'hunan', '湖南', 'China', '中国', 'zhuzhou', '株洲', '27.657873', '113.507157', 0);
INSERT INTO `cms_city` VALUES ('101250304', 'hetang', '荷塘', 'hunan', '湖南', 'China', '中国', 'zhuzhou', '株洲', '27.833036', '113.162548', 0);
INSERT INTO `cms_city` VALUES ('101250305', 'chaling', '茶陵', 'hunan', '湖南', 'China', '中国', 'zhuzhou', '株洲', '26.789534', '113.546509', 0);
INSERT INTO `cms_city` VALUES ('101250306', 'yanling', '炎陵', 'hunan', '湖南', 'China', '中国', 'zhuzhou', '株洲', '26.489459', '113.776884', 0);
INSERT INTO `cms_city` VALUES ('101250307', 'lusong', '芦淞', 'hunan', '湖南', 'China', '中国', 'zhuzhou', '株洲', '27.827246', '113.155169', 0);
INSERT INTO `cms_city` VALUES ('101250308', 'shifeng', '石峰', 'hunan', '湖南', 'China', '中国', 'zhuzhou', '株洲', '27.871945', '113.11295', 0);
INSERT INTO `cms_city` VALUES ('101250309', 'tianyuan', '天元', 'hunan', '湖南', 'China', '中国', 'zhuzhou', '株洲', '27.826909', '113.136252', 0);
INSERT INTO `cms_city` VALUES ('101250401', 'hengyang', '衡阳', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '26.900358', '112.607693', 0);
INSERT INTO `cms_city` VALUES ('101250402', 'hengshan', '衡山', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '27.234808', '112.86971', 0);
INSERT INTO `cms_city` VALUES ('101250403', 'hengdong', '衡东', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '27.083531', '112.950412', 0);
INSERT INTO `cms_city` VALUES ('101250404', 'qidong', '祁东', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '26.787109', '112.111192', 0);
INSERT INTO `cms_city` VALUES ('101250405', 'hengyangxian', '衡阳县', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '26.962388', '112.379643', 0);
INSERT INTO `cms_city` VALUES ('101250406', 'changning', '常宁', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '26.406773', '112.396821', 0);
INSERT INTO `cms_city` VALUES ('101250407', 'hengnan', '衡南', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '26.739973', '112.677459', 0);
INSERT INTO `cms_city` VALUES ('101250408', 'leiyang', '耒阳', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '26.414162', '112.847215', 0);
INSERT INTO `cms_city` VALUES ('101250409', 'nanyue', '南岳', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '27.240536', '112.734147', 0);
INSERT INTO `cms_city` VALUES ('101250410', 'zhuhui', '珠晖', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '26.891063', '112.626324', 0);
INSERT INTO `cms_city` VALUES ('101250411', 'yanfeng', '雁峰', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '26.893694', '112.612241', 0);
INSERT INTO `cms_city` VALUES ('101250412', 'shigu', '石鼓', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '26.903908', '112.607635', 0);
INSERT INTO `cms_city` VALUES ('101250413', 'zhengxiang', '蒸湘', 'hunan', '湖南', 'China', '中国', 'hengyang', '衡阳', '26.89087', '112.570608', 0);
INSERT INTO `cms_city` VALUES ('101250501', 'chenzhou', '郴州', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '25.793589', '113.032067', 0);
INSERT INTO `cms_city` VALUES ('101250502', 'guiyang', '桂阳', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '25.737447', '112.734466', 0);
INSERT INTO `cms_city` VALUES ('101250503', 'jiahe', '嘉禾', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '25.587309', '112.370618', 0);
INSERT INTO `cms_city` VALUES ('101250504', 'yizhang', '宜章', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '25.394345', '112.947884', 0);
INSERT INTO `cms_city` VALUES ('101250505', 'linwu', '临武', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '25.279119', '112.564589', 0);
INSERT INTO `cms_city` VALUES ('101250506', 'beihu', '北湖', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '25.792628', '113.032208', 0);
INSERT INTO `cms_city` VALUES ('101250507', 'zixing', '资兴', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '25.974152', '113.23682', 0);
INSERT INTO `cms_city` VALUES ('101250508', 'rucheng', '汝城', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '25.553759', '113.685686', 0);
INSERT INTO `cms_city` VALUES ('101250509', 'anren', '安仁', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '26.708625', '113.27217', 0);
INSERT INTO `cms_city` VALUES ('101250510', 'yongxing', '永兴', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '26.129392', '113.114819', 0);
INSERT INTO `cms_city` VALUES ('101250511', 'guidong', '桂东', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '26.073917', '113.945879', 0);
INSERT INTO `cms_city` VALUES ('101250512', 'suxian', '苏仙', 'hunan', '湖南', 'China', '中国', 'chenzhou', '郴州', '25.793157', '113.038698', 0);
INSERT INTO `cms_city` VALUES ('101250601', 'changde', '常德', 'hunan', '湖南', 'China', '中国', 'changde', '常德', '29.040225', '111.691347', 0);
INSERT INTO `cms_city` VALUES ('101250602', 'anxiang', '安乡', 'hunan', '湖南', 'China', '中国', 'changde', '常德', '29.414483', '112.172289', 0);
INSERT INTO `cms_city` VALUES ('101250603', 'taoyuan', '桃源', 'hunan', '湖南', 'China', '中国', 'changde', '常德', '28.902734', '111.484503', 0);
INSERT INTO `cms_city` VALUES ('101250604', 'hanshou', '汉寿', 'hunan', '湖南', 'China', '中国', 'changde', '常德', '28.907319', '111.968506', 0);
INSERT INTO `cms_city` VALUES ('101250605', 'lixian', '澧县', 'hunan', '湖南', 'China', '中国', 'changde', '常德', '29.64264', '111.761682', 0);
INSERT INTO `cms_city` VALUES ('101250606', 'linli', '临澧', 'hunan', '湖南', 'China', '中国', 'changde', '常德', '29.443217', '111.645602', 0);
INSERT INTO `cms_city` VALUES ('101250607', 'shimen', '石门', 'hunan', '湖南', 'China', '中国', 'changde', '常德', '29.584703', '111.379087', 0);
INSERT INTO `cms_city` VALUES ('101250608', 'jinshi', '津市', 'hunan', '湖南', 'China', '中国', 'changde', '常德', '29.630867', '111.879609', 0);
INSERT INTO `cms_city` VALUES ('101250609', 'wuling', '武陵', 'hunan', '湖南', 'China', '中国', 'changde', '常德', '29.040477', '111.690718', 0);
INSERT INTO `cms_city` VALUES ('101250610', 'dingcheng', '鼎城', 'hunan', '湖南', 'China', '中国', 'changde', '常德', '29.014426', '111.685327', 0);
INSERT INTO `cms_city` VALUES ('101250700', 'yiyang', '益阳', 'hunan', '湖南', 'China', '中国', 'yiyang', '益阳', '28.570066', '112.355042', 0);
INSERT INTO `cms_city` VALUES ('101250701', 'heshanqu', '赫山区', 'hunan', '湖南', 'China', '中国', 'yiyang', '益阳', '28.568327', '112.360946', 0);
INSERT INTO `cms_city` VALUES ('101250702', 'nanxian', '南县', 'hunan', '湖南', 'China', '中国', 'yiyang', '益阳', '29.372181', '112.410399', 0);
INSERT INTO `cms_city` VALUES ('101250703', 'taojiang', '桃江', 'hunan', '湖南', 'China', '中国', 'yiyang', '益阳', '28.520993', '112.139732', 0);
INSERT INTO `cms_city` VALUES ('101250704', 'anhua', '安化', 'hunan', '湖南', 'China', '中国', 'yiyang', '益阳', '28.377421', '111.221824', 0);
INSERT INTO `cms_city` VALUES ('101250705', 'yuanjiang', '沅江', 'hunan', '湖南', 'China', '中国', 'yiyang', '益阳', '28.839713', '112.361088', 0);
INSERT INTO `cms_city` VALUES ('101250706', 'ziyang', '资阳', 'hunan', '湖南', 'China', '中国', 'yiyang', '益阳', '28.592771', '112.33084', 0);
INSERT INTO `cms_city` VALUES ('101250801', 'loudi', '娄底', 'hunan', '湖南', 'China', '中国', 'loudi', '娄底', '27.728136', '112.008497', 0);
INSERT INTO `cms_city` VALUES ('101250802', 'shuangfeng', '双峰', 'hunan', '湖南', 'China', '中国', 'loudi', '娄底', '27.459126', '112.198245', 0);
INSERT INTO `cms_city` VALUES ('101250803', 'lengshuijiang', '冷水江', 'hunan', '湖南', 'China', '中国', 'loudi', '娄底', '27.685759', '111.434674', 0);
INSERT INTO `cms_city` VALUES ('101250804', 'louxing', '娄星', 'hunan', '湖南', 'China', '中国', 'loudi', '娄底', '27.726643', '112.008486', 0);
INSERT INTO `cms_city` VALUES ('101250805', 'xinhua', '新化', 'hunan', '湖南', 'China', '中国', 'loudi', '娄底', '27.737456', '111.306747', 0);
INSERT INTO `cms_city` VALUES ('101250806', 'lianyuan', '涟源', 'hunan', '湖南', 'China', '中国', 'loudi', '娄底', '27.692301', '111.670847', 0);
INSERT INTO `cms_city` VALUES ('101250901', 'shaoyang', '邵阳', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '27.237842', '111.46923', 0);
INSERT INTO `cms_city` VALUES ('101250902', 'longhui', '隆回', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '27.116002', '111.038785', 0);
INSERT INTO `cms_city` VALUES ('101250903', 'dongkou', '洞口', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '27.062286', '110.579212', 0);
INSERT INTO `cms_city` VALUES ('101250904', 'xinshao', '新邵', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '27.311429', '111.459762', 0);
INSERT INTO `cms_city` VALUES ('101250905', 'shaodong', '邵东', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '27.257273', '111.743168', 0);
INSERT INTO `cms_city` VALUES ('101250906', 'suining', '绥宁', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '26.580622', '110.155075', 0);
INSERT INTO `cms_city` VALUES ('101250907', 'xinning', '新宁', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '26.438912', '110.859115', 0);
INSERT INTO `cms_city` VALUES ('101250908', 'wugang', '武冈', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '26.732086', '110.636804', 0);
INSERT INTO `cms_city` VALUES ('101250909', 'chengbu', '城步', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '26.363575', '110.313226', 0);
INSERT INTO `cms_city` VALUES ('101250910', 'shaoyangxian', '邵阳县', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '26.989713', '111.2757', 0);
INSERT INTO `cms_city` VALUES ('101250911', 'shuangqing', '双清', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '27.240001', '111.479756', 0);
INSERT INTO `cms_city` VALUES ('101250912', 'daxiang', '大祥', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '27.233593', '111.462968', 0);
INSERT INTO `cms_city` VALUES ('101250913', 'beita', '北塔', 'hunan', '湖南', 'China', '中国', 'shaoyang', '邵阳', '27.245688', '111.452315', 0);
INSERT INTO `cms_city` VALUES ('101251001', 'yueyang', '岳阳', 'hunan', '湖南', 'China', '中国', 'yueyang', '岳阳', '29.37029', '113.132855', 0);
INSERT INTO `cms_city` VALUES ('101251002', 'huarong', '华容', 'hunan', '湖南', 'China', '中国', 'yueyang', '岳阳', '29.524107', '112.559369', 0);
INSERT INTO `cms_city` VALUES ('101251003', 'xiangyin', '湘阴', 'hunan', '湖南', 'China', '中国', 'yueyang', '岳阳', '28.677498', '112.889748', 0);
INSERT INTO `cms_city` VALUES ('101251004', 'miluo', '汨罗', 'hunan', '湖南', 'China', '中国', 'yueyang', '岳阳', '28.803149', '113.079419', 0);
INSERT INTO `cms_city` VALUES ('101251005', 'pingjiang', '平江', 'hunan', '湖南', 'China', '中国', 'yueyang', '岳阳', '28.701523', '113.593751', 0);
INSERT INTO `cms_city` VALUES ('101251006', 'linxiang', '临湘', 'hunan', '湖南', 'China', '中国', 'yueyang', '岳阳', '29.471594', '113.450809', 0);
INSERT INTO `cms_city` VALUES ('101251007', 'yueyanglouqu', '岳阳楼区', 'hunan', '湖南', 'China', '中国', 'yueyang', '岳阳', '29.366784', '113.120751', 0);
INSERT INTO `cms_city` VALUES ('101251008', 'yunxi', '云溪', 'hunan', '湖南', 'China', '中国', 'yueyang', '岳阳', '29.473395', '113.27387', 0);
INSERT INTO `cms_city` VALUES ('101251009', 'junshan', '君山', 'hunan', '湖南', 'China', '中国', 'yueyang', '岳阳', '29.438062', '113.004082', 0);
INSERT INTO `cms_city` VALUES ('101251101', 'zhangjiajie', '张家界', 'hunan', '湖南', 'China', '中国', 'zhangjiajie', '张家界', '29.127401', '110.479921', 0);
INSERT INTO `cms_city` VALUES ('101251102', 'sangzhi', '桑植', 'hunan', '湖南', 'China', '中国', 'zhangjiajie', '张家界', '29.399939', '110.164039', 0);
INSERT INTO `cms_city` VALUES ('101251103', 'cili', '慈利', 'hunan', '湖南', 'China', '中国', 'zhangjiajie', '张家界', '29.423876', '111.132702', 0);
INSERT INTO `cms_city` VALUES ('101251104', 'wulingyuan', '武陵源', 'hunan', '湖南', 'China', '中国', 'zhangjiajie', '张家界', '29.347827', '110.54758', 0);
INSERT INTO `cms_city` VALUES ('101251105', 'yongding', '永定', 'hunan', '湖南', 'China', '中国', 'zhangjiajie', '张家界', '29.125961', '110.484559', 0);
INSERT INTO `cms_city` VALUES ('101251201', 'huaihua', '怀化', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '27.550082', '109.97824', 0);
INSERT INTO `cms_city` VALUES ('101251202', 'hecheng', '鹤城', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '27.548474', '109.982242', 0);
INSERT INTO `cms_city` VALUES ('101251203', 'yuanling', '沅陵', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '28.455554', '110.399161', 0);
INSERT INTO `cms_city` VALUES ('101251204', 'chenxi', '辰溪', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '28.005474', '110.196953', 0);
INSERT INTO `cms_city` VALUES ('101251205', 'jingzhou', '靖州', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '26.573511', '109.691159', 0);
INSERT INTO `cms_city` VALUES ('101251206', 'huitong', '会同', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '26.870789', '109.720785', 0);
INSERT INTO `cms_city` VALUES ('101251207', 'tongdao', '通道', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '26.158349', '109.783359', 0);
INSERT INTO `cms_city` VALUES ('101251208', 'mayang', '麻阳', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '27.865991', '109.802807', 0);
INSERT INTO `cms_city` VALUES ('101251209', 'xinhuang', '新晃', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '27.359897', '109.174443', 0);
INSERT INTO `cms_city` VALUES ('101251210', 'zhijiang', '芷江', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '27.437996', '109.687777', 0);
INSERT INTO `cms_city` VALUES ('101251211', 'xupu', '溆浦', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '27.903802', '110.593373', 0);
INSERT INTO `cms_city` VALUES ('101251212', 'zhongfang', '中方', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '27.43736', '109.948061', 0);
INSERT INTO `cms_city` VALUES ('101251213', 'hongjiang', '洪江', 'hunan', '湖南', 'China', '中国', 'huaihua', '怀化', '27.201876', '109.831765', 0);
INSERT INTO `cms_city` VALUES ('101251401', 'yongzhou', '永州', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '26.434516', '111.608019', 0);
INSERT INTO `cms_city` VALUES ('101251402', 'qiyang', '祁阳', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '26.585929', '111.85734', 0);
INSERT INTO `cms_city` VALUES ('101251403', 'dongan', '东安', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '26.397278', '111.313035', 0);
INSERT INTO `cms_city` VALUES ('101251404', 'shuangpai', '双牌', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '25.959397', '111.662146', 0);
INSERT INTO `cms_city` VALUES ('101251405', 'daoxian', '道县', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '25.518444', '111.591614', 0);
INSERT INTO `cms_city` VALUES ('101251406', 'ningyuan', '宁远', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '25.584112', '111.944529', 0);
INSERT INTO `cms_city` VALUES ('101251407', 'jiangyong', '江永', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '25.268154', '111.346803', 0);
INSERT INTO `cms_city` VALUES ('101251408', 'lanshan', '蓝山', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '25.375255', '112.194195', 0);
INSERT INTO `cms_city` VALUES ('101251409', 'xintian', '新田', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '25.906927', '112.220341', 0);
INSERT INTO `cms_city` VALUES ('101251410', 'jianghua', '江华', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '25.182596', '111.577276', 0);
INSERT INTO `cms_city` VALUES ('101251411', 'lengshuitan', '冷水滩', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '26.434364', '111.607156', 0);
INSERT INTO `cms_city` VALUES ('101251412', 'lingling', '零陵', 'hunan', '湖南', 'China', '中国', 'yongzhou', '永州', '26.223347', '111.626348', 0);
INSERT INTO `cms_city` VALUES ('101251501', 'jishou', '吉首', 'hunan', '湖南', 'China', '中国', 'xiangxi', '湘西', '28.314827', '109.738273', 0);
INSERT INTO `cms_city` VALUES ('101251502', 'baojing', '保靖', 'hunan', '湖南', 'China', '中国', 'xiangxi', '湘西', '28.709605', '109.651445', 0);
INSERT INTO `cms_city` VALUES ('101251503', 'yongshun', '永顺', 'hunan', '湖南', 'China', '中国', 'xiangxi', '湘西', '28.998068', '109.853292', 0);
INSERT INTO `cms_city` VALUES ('101251504', 'guzhang', '古丈', 'hunan', '湖南', 'China', '中国', 'xiangxi', '湘西', '28.616973', '109.949592', 0);
INSERT INTO `cms_city` VALUES ('101251505', 'fenghuang', '凤凰', 'hunan', '湖南', 'China', '中国', 'xiangxi', '湘西', '27.948308', '109.599191', 0);
INSERT INTO `cms_city` VALUES ('101251506', 'luxi', '泸溪', 'hunan', '湖南', 'China', '中国', 'xiangxi', '湘西', '28.214516', '110.214428', 0);
INSERT INTO `cms_city` VALUES ('101251507', 'longshan', '龙山', 'hunan', '湖南', 'China', '中国', 'xiangxi', '湘西', '29.453438', '109.441189', 0);
INSERT INTO `cms_city` VALUES ('101251508', 'huayuan', '花垣', 'hunan', '湖南', 'China', '中国', 'xiangxi', '湘西', '28.581352', '109.479063', 0);
INSERT INTO `cms_city` VALUES ('101251509', 'xiangxi', '湘西', 'hunan', '湖南', 'China', '中国', 'xiangxi', '湘西', '28.314296', '109.739735', 0);
INSERT INTO `cms_city` VALUES ('101260101', 'guiyang', '贵阳', 'guizhou', '贵州', 'China', '中国', 'guiyang', '贵阳', '26.578343', '106.713478', 0);
INSERT INTO `cms_city` VALUES ('101260102', 'baiyun', '白云', 'guizhou', '贵州', 'China', '中国', 'guiyang', '贵阳', '26.676849', '106.633037', 0);
INSERT INTO `cms_city` VALUES ('101260103', 'huaxi', '花溪', 'guizhou', '贵州', 'China', '中国', 'guiyang', '贵阳', '26.410464', '106.670791', 0);
INSERT INTO `cms_city` VALUES ('101260104', 'wudang', '乌当', 'guizhou', '贵州', 'China', '中国', 'guiyang', '贵阳', '26.630928', '106.762123', 0);
INSERT INTO `cms_city` VALUES ('101260105', 'xifeng', '息烽', 'guizhou', '贵州', 'China', '中国', 'guiyang', '贵阳', '27.092665', '106.737693', 0);
INSERT INTO `cms_city` VALUES ('101260106', 'kaiyang', '开阳', 'guizhou', '贵州', 'China', '中国', 'guiyang', '贵阳', '27.056793', '106.969438', 0);
INSERT INTO `cms_city` VALUES ('101260107', 'xiuwen', '修文', 'guizhou', '贵州', 'China', '中国', 'guiyang', '贵阳', '26.840672', '106.599218', 0);
INSERT INTO `cms_city` VALUES ('101260108', 'qingzhen', '清镇', 'guizhou', '贵州', 'China', '中国', 'guiyang', '贵阳', '26.551289', '106.470278', 0);
INSERT INTO `cms_city` VALUES ('101260110', 'yunyan', '云岩', 'guizhou', '贵州', 'China', '中国', 'guiyang', '贵阳', '26.58301', '106.713397', 0);
INSERT INTO `cms_city` VALUES ('101260111', 'nanming', '南明', 'guizhou', '贵州', 'China', '中国', 'guiyang', '贵阳', '26.573743', '106.715963', 0);
INSERT INTO `cms_city` VALUES ('101260112', 'guanshanhu', '观山湖', 'guizhou', '贵州', 'China', '中国', 'guiyang', '贵阳', '26.646358', '106.626323', 0);
INSERT INTO `cms_city` VALUES ('101260201', 'zunyi', '遵义', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '27.706626', '106.937265', 0);
INSERT INTO `cms_city` VALUES ('101260202', 'zunyixian', '遵义县', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '27.32', '106.49', 0);
INSERT INTO `cms_city` VALUES ('101260203', 'renhuai', '仁怀', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '27.803377', '106.412476', 0);
INSERT INTO `cms_city` VALUES ('101260204', 'suiyang', '绥阳', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '27.951342', '107.191024', 0);
INSERT INTO `cms_city` VALUES ('101260205', 'meitan', '湄潭', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '27.765839', '107.485723', 0);
INSERT INTO `cms_city` VALUES ('101260206', 'fenggang', '凤冈', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '27.960858', '107.722021', 0);
INSERT INTO `cms_city` VALUES ('101260207', 'tongzi', '桐梓', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '28.131559', '106.826591', 0);
INSERT INTO `cms_city` VALUES ('101260208', 'chishui', '赤水', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '28.587057', '105.698116', 0);
INSERT INTO `cms_city` VALUES ('101260209', 'xishui', '习水', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '28.327826', '106.200954', 0);
INSERT INTO `cms_city` VALUES ('101260210', 'daozhen', '道真', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '28.880088', '107.605342', 0);
INSERT INTO `cms_city` VALUES ('101260211', 'zhengan', '正安', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '28.550337', '107.441872', 0);
INSERT INTO `cms_city` VALUES ('101260212', 'wuchuan', '务川', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '28.521567', '107.887857', 0);
INSERT INTO `cms_city` VALUES ('101260213', 'yuqing', '余庆', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '27.221552', '107.892566', 0);
INSERT INTO `cms_city` VALUES ('101260214', 'huichuan', '汇川', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '27.706626', '106.937265', 0);
INSERT INTO `cms_city` VALUES ('101260215', 'honghuagang', '红花岗', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '27.694395', '106.943784', 0);
INSERT INTO `cms_city` VALUES ('101260216', 'bozhou', '播州', 'guizhou', '贵州', 'China', '中国', 'zunyi', '遵义', '27.535288', '106.831668', 0);
INSERT INTO `cms_city` VALUES ('101260301', 'anshun', '安顺', 'guizhou', '贵州', 'China', '中国', 'anshun', '安顺', '26.245544', '105.932188', 0);
INSERT INTO `cms_city` VALUES ('101260302', 'puding', '普定', 'guizhou', '贵州', 'China', '中国', 'anshun', '安顺', '26.305794', '105.745609', 0);
INSERT INTO `cms_city` VALUES ('101260303', 'zhenning', '镇宁', 'guizhou', '贵州', 'China', '中国', 'anshun', '安顺', '26.056096', '105.768656', 0);
INSERT INTO `cms_city` VALUES ('101260304', 'pingba', '平坝', 'guizhou', '贵州', 'China', '中国', 'anshun', '安顺', '26.40608', '106.259942', 0);
INSERT INTO `cms_city` VALUES ('101260305', 'ziyun', '紫云', 'guizhou', '贵州', 'China', '中国', 'anshun', '安顺', '25.751567', '106.084515', 0);
INSERT INTO `cms_city` VALUES ('101260306', 'guanling', '关岭', 'guizhou', '贵州', 'China', '中国', 'anshun', '安顺', '25.944248', '105.618454', 0);
INSERT INTO `cms_city` VALUES ('101260307', 'xixiu', '西秀', 'guizhou', '贵州', 'China', '中国', 'anshun', '安顺', '26.248323', '105.946169', 0);
INSERT INTO `cms_city` VALUES ('101260401', 'duyun', '都匀', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '26.258205', '107.517021', 0);
INSERT INTO `cms_city` VALUES ('101260402', 'guiding', '贵定', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '26.580807', '107.233588', 0);
INSERT INTO `cms_city` VALUES ('101260403', 'wengan', '瓮安', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '27.066339', '107.478417', 0);
INSERT INTO `cms_city` VALUES ('101260404', 'changshun', '长顺', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '26.022116', '106.447376', 0);
INSERT INTO `cms_city` VALUES ('101260405', 'fuquan', '福泉', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '26.702508', '107.513508', 0);
INSERT INTO `cms_city` VALUES ('101260406', 'huishui', '惠水', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '26.128637', '106.657848', 0);
INSERT INTO `cms_city` VALUES ('101260407', 'longli', '龙里', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '26.448809', '106.977733', 0);
INSERT INTO `cms_city` VALUES ('101260408', 'luodian', '罗甸', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '25.429894', '106.750006', 0);
INSERT INTO `cms_city` VALUES ('101260409', 'pingtang', '平塘', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '25.831803', '107.32405', 0);
INSERT INTO `cms_city` VALUES ('101260410', 'dushan', '独山', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '25.826283', '107.542757', 0);
INSERT INTO `cms_city` VALUES ('101260411', 'sandu', '三都', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '25.985183', '107.87747', 0);
INSERT INTO `cms_city` VALUES ('101260412', 'libo', '荔波', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '25.412239', '107.8838', 0);
INSERT INTO `cms_city` VALUES ('101260413', 'qiannan', '黔南', 'guizhou', '贵州', 'China', '中国', 'qiannan', '黔南', '26.258219', '107.517156', 0);
INSERT INTO `cms_city` VALUES ('101260501', 'kaili', '凯里', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.582964', '107.977541', 0);
INSERT INTO `cms_city` VALUES ('101260502', 'cengong', '岑巩', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '27.173244', '108.816459', 0);
INSERT INTO `cms_city` VALUES ('101260503', 'shibing', '施秉', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '27.034657', '108.12678', 0);
INSERT INTO `cms_city` VALUES ('101260504', 'zhenyuan', '镇远', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '27.050233', '108.423656', 0);
INSERT INTO `cms_city` VALUES ('101260505', 'huangping', '黄平', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.896973', '107.901337', 0);
INSERT INTO `cms_city` VALUES ('101260506', 'qiandongnan', '黔东南', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.583352', '107.977488', 0);
INSERT INTO `cms_city` VALUES ('101260507', 'majiang', '麻江', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.494803', '107.593172', 0);
INSERT INTO `cms_city` VALUES ('101260508', 'danzhai', '丹寨', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.199497', '107.794808', 0);
INSERT INTO `cms_city` VALUES ('101260509', 'sansui', '三穗', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.959884', '108.681121', 0);
INSERT INTO `cms_city` VALUES ('101260510', 'taijiang', '台江', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.669138', '108.314637', 0);
INSERT INTO `cms_city` VALUES ('101260511', 'jianhe', '剑河', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.727349', '108.440499', 0);
INSERT INTO `cms_city` VALUES ('101260512', 'leishan', '雷山', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.381027', '108.079613', 0);
INSERT INTO `cms_city` VALUES ('101260513', 'liping', '黎平', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.230636', '109.136504', 0);
INSERT INTO `cms_city` VALUES ('101260514', 'tianzhu', '天柱', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.909684', '109.212798', 0);
INSERT INTO `cms_city` VALUES ('101260515', 'jinping', '锦屏', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '26.680625', '109.20252', 0);
INSERT INTO `cms_city` VALUES ('101260516', 'rongjiang', '榕江', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '25.931085', '108.521026', 0);
INSERT INTO `cms_city` VALUES ('101260517', 'congjiang', '从江', 'guizhou', '贵州', 'China', '中国', 'qiandongnan', '黔东南', '25.747058', '108.912648', 0);
INSERT INTO `cms_city` VALUES ('101260601', 'tongren', '铜仁', 'guizhou', '贵州', 'China', '中国', 'tongren', '铜仁', '27.718346', '109.191555', 0);
INSERT INTO `cms_city` VALUES ('101260602', 'jiangkou', '江口', 'guizhou', '贵州', 'China', '中国', 'tongren', '铜仁', '27.691904', '108.848427', 0);
INSERT INTO `cms_city` VALUES ('101260603', 'yuping', '玉屏', 'guizhou', '贵州', 'China', '中国', 'tongren', '铜仁', '27.238024', '108.917882', 0);
INSERT INTO `cms_city` VALUES ('101260604', 'wanshan', '万山', 'guizhou', '贵州', 'China', '中国', 'tongren', '铜仁', '27.51903', '109.21199', 0);
INSERT INTO `cms_city` VALUES ('101260605', 'sinan', '思南', 'guizhou', '贵州', 'China', '中国', 'tongren', '铜仁', '27.941331', '108.255827', 0);
INSERT INTO `cms_city` VALUES ('101260606', 'bijiang', '碧江', 'guizhou', '贵州', 'China', '中国', 'tongren', '铜仁', '27.718745', '109.192117', 0);
INSERT INTO `cms_city` VALUES ('101260607', 'yinjiang', '印江', 'guizhou', '贵州', 'China', '中国', 'tongren', '铜仁', '27.997976', '108.405517', 0);
INSERT INTO `cms_city` VALUES ('101260608', 'shiqian', '石阡', 'guizhou', '贵州', 'China', '中国', 'tongren', '铜仁', '27.519386', '108.229854', 0);
INSERT INTO `cms_city` VALUES ('101260609', 'yanhe', '沿河', 'guizhou', '贵州', 'China', '中国', 'tongren', '铜仁', '28.560487', '108.495746', 0);
INSERT INTO `cms_city` VALUES ('101260610', 'dejiang', '德江', 'guizhou', '贵州', 'China', '中国', 'tongren', '铜仁', '28.26094', '108.117317', 0);
INSERT INTO `cms_city` VALUES ('101260611', 'songtao', '松桃', 'guizhou', '贵州', 'China', '中国', 'tongren', '铜仁', '28.165419', '109.202627', 0);
INSERT INTO `cms_city` VALUES ('101260701', 'bijie', '毕节', 'guizhou', '贵州', 'China', '中国', 'bijie', '毕节', '27.301693', '105.28501', 0);
INSERT INTO `cms_city` VALUES ('101260702', 'hezhang', '赫章', 'guizhou', '贵州', 'China', '中国', 'bijie', '毕节', '27.119243', '104.726438', 0);
INSERT INTO `cms_city` VALUES ('101260703', 'jinsha', '金沙', 'guizhou', '贵州', 'China', '中国', 'bijie', '毕节', '27.459693', '106.222103', 0);
INSERT INTO `cms_city` VALUES ('101260704', 'weining', '威宁', 'guizhou', '贵州', 'China', '中国', 'bijie', '毕节', '26.859099', '104.286523', 0);
INSERT INTO `cms_city` VALUES ('101260705', 'dafang', '大方', 'guizhou', '贵州', 'China', '中国', 'bijie', '毕节', '27.143521', '105.609254', 0);
INSERT INTO `cms_city` VALUES ('101260706', 'nayong', '纳雍', 'guizhou', '贵州', 'China', '中国', 'bijie', '毕节', '26.769875', '105.375322', 0);
INSERT INTO `cms_city` VALUES ('101260707', 'zhijin', '织金', 'guizhou', '贵州', 'China', '中国', 'bijie', '毕节', '26.668497', '105.768997', 0);
INSERT INTO `cms_city` VALUES ('101260708', 'qianxi', '黔西', 'guizhou', '贵州', 'China', '中国', 'bijie', '毕节', '27.024923', '106.038299', 0);
INSERT INTO `cms_city` VALUES ('101260709', 'qixingguan', '七星关', 'guizhou', '贵州', 'China', '中国', 'bijie', '毕节', '27.302085', '105.284852', 0);
INSERT INTO `cms_city` VALUES ('101260801', 'shuicheng', '水城', 'guizhou', '贵州', 'China', '中国', 'liupanshui', '六盘水', '26.540478', '104.95685', 0);
INSERT INTO `cms_city` VALUES ('101260802', 'liuzhi', '六枝', 'guizhou', '贵州', 'China', '中国', 'liupanshui', '六盘水', '26.210662', '105.474235', 0);
INSERT INTO `cms_city` VALUES ('101260803', 'liupanshui', '六盘水', 'guizhou', '贵州', 'China', '中国', 'liupanshui', '六盘水', '26.584643', '104.846743', 0);
INSERT INTO `cms_city` VALUES ('101260804', 'panxian', '盘县', 'guizhou', '贵州', 'China', '中国', 'liupanshui', '六盘水', '25.706966', '104.468367', 0);
INSERT INTO `cms_city` VALUES ('101260805', 'zhongshan', '钟山', 'guizhou', '贵州', 'China', '中国', 'liupanshui', '六盘水', '26.584805', '104.846244', 0);
INSERT INTO `cms_city` VALUES ('101260901', 'xingyi', '兴义', 'guizhou', '贵州', 'China', '中国', 'qianxinan', '黔西南', '25.088599', '104.897982', 0);
INSERT INTO `cms_city` VALUES ('101260902', 'qinglong', '晴隆', 'guizhou', '贵州', 'China', '中国', 'qianxinan', '黔西南', '25.832881', '105.218773', 0);
INSERT INTO `cms_city` VALUES ('101260903', 'xingren', '兴仁', 'guizhou', '贵州', 'China', '中国', 'qianxinan', '黔西南', '25.431378', '105.192778', 0);
INSERT INTO `cms_city` VALUES ('101260904', 'zhenfeng', '贞丰', 'guizhou', '贵州', 'China', '中国', 'qianxinan', '黔西南', '25.385752', '105.650133', 0);
INSERT INTO `cms_city` VALUES ('101260905', 'wangmo', '望谟', 'guizhou', '贵州', 'China', '中国', 'qianxinan', '黔西南', '25.166667', '106.091563', 0);
INSERT INTO `cms_city` VALUES ('101260906', 'qianxinan', '黔西南', 'guizhou', '贵州', 'China', '中国', 'qianxinan', '黔西南', '25.08812', '104.897971', 0);
INSERT INTO `cms_city` VALUES ('101260907', 'anlong', '安龙', 'guizhou', '贵州', 'China', '中国', 'qianxinan', '黔西南', '25.108959', '105.471498', 0);
INSERT INTO `cms_city` VALUES ('101260908', 'ceheng', '册亨', 'guizhou', '贵州', 'China', '中国', 'qianxinan', '黔西南', '24.983338', '105.81241', 0);
INSERT INTO `cms_city` VALUES ('101260909', 'puan', '普安', 'guizhou', '贵州', 'China', '中国', 'qianxinan', '黔西南', '25.786404', '104.955347', 0);
INSERT INTO `cms_city` VALUES ('101270101', 'chengdu', '成都', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.659462', '104.065735', 1);
INSERT INTO `cms_city` VALUES ('101270102', 'longquanyi', '龙泉驿', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.56065', '104.269181', 0);
INSERT INTO `cms_city` VALUES ('101270103', 'xindu', '新都', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.824223', '104.16022', 0);
INSERT INTO `cms_city` VALUES ('101270104', 'wenjiang', '温江', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.697996', '103.836776', 0);
INSERT INTO `cms_city` VALUES ('101270105', 'jintang', '金堂', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.858417', '104.415604', 0);
INSERT INTO `cms_city` VALUES ('101270106', 'shuangliu', '双流', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.573243', '103.922706', 0);
INSERT INTO `cms_city` VALUES ('101270107', 'pixian', '郫县', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.808752', '103.887842', 0);
INSERT INTO `cms_city` VALUES ('101270108', 'dayi', '大邑', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.586602', '103.522397', 0);
INSERT INTO `cms_city` VALUES ('101270109', 'pujiang', '蒲江', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.194359', '103.511541', 0);
INSERT INTO `cms_city` VALUES ('101270110', 'xinjin', '新津', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.414284', '103.812449', 0);
INSERT INTO `cms_city` VALUES ('101270111', 'dujiangyan', '都江堰', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.99114', '103.627898', 0);
INSERT INTO `cms_city` VALUES ('101270112', 'pengzhou', '彭州', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.985161', '103.941173', 0);
INSERT INTO `cms_city` VALUES ('101270113', 'qionglai', '邛崃', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.413271', '103.46143', 0);
INSERT INTO `cms_city` VALUES ('101270114', 'chongzhou', '崇州', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.631478', '103.671049', 0);
INSERT INTO `cms_city` VALUES ('101270115', 'qingbaijiang', '青白江', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.883438', '104.25494', 0);
INSERT INTO `cms_city` VALUES ('101270116', 'jinjiang', '锦江', 'sichuan', '四川', 'China', '中国', 'chengdou', '成都', '30.657689', '104.080989', 0);
INSERT INTO `cms_city` VALUES ('101270117', 'qingyang', '青羊', 'sichuan', '四川', 'China', '中国', 'chengdou', '成都', '30.667648', '104.055731', 0);
INSERT INTO `cms_city` VALUES ('101270118', 'jinniu', '金牛', 'sichuan', '四川', 'China', '中国', 'chengdou', '成都', '30.692058', '104.043487', 0);
INSERT INTO `cms_city` VALUES ('101270119', 'wuhou', '武侯', 'sichuan', '四川', 'China', '中国', 'chengdou', '成都', '30.630862', '104.05167', 0);
INSERT INTO `cms_city` VALUES ('101270120', 'chenghua', '成华', 'sichuan', '四川', 'China', '中国', 'chengdou', '成都', '30.660275', '104.103077', 0);
INSERT INTO `cms_city` VALUES ('101270121', 'jianyang', '简阳', 'sichuan', '四川', 'China', '中国', 'chengdu', '成都', '30.390666', '104.550339', 0);
INSERT INTO `cms_city` VALUES ('101270201', 'panzhihua', '攀枝花', 'sichuan', '四川', 'China', '中国', 'panzhihua', '攀枝花', '26.580446', '101.716007', 0);
INSERT INTO `cms_city` VALUES ('101270202', 'renhe', '仁和', 'sichuan', '四川', 'China', '中国', 'panzhihua', '攀枝花', '26.497185', '101.737916', 0);
INSERT INTO `cms_city` VALUES ('101270203', 'miyi', '米易', 'sichuan', '四川', 'China', '中国', 'panzhihua', '攀枝花', '26.887474', '102.109877', 0);
INSERT INTO `cms_city` VALUES ('101270204', 'yanbian', '盐边', 'sichuan', '四川', 'China', '中国', 'panzhihua', '攀枝花', '26.677619', '101.851848', 0);
INSERT INTO `cms_city` VALUES ('101270205', 'dongqu', '东区', 'sichuan', '四川', 'China', '中国', 'panzhihua', '攀枝花', '26.580887', '101.715134', 0);
INSERT INTO `cms_city` VALUES ('101270206', 'xiqu', '西区', 'sichuan', '四川', 'China', '中国', 'panzhihua', '攀枝花', '26.596776', '101.637969', 0);
INSERT INTO `cms_city` VALUES ('101270301', 'zigong', '自贡', 'sichuan', '四川', 'China', '中国', 'zigong', '自贡', '29.352765', '104.773447', 0);
INSERT INTO `cms_city` VALUES ('101270302', 'fushun', '富顺', 'sichuan', '四川', 'China', '中国', 'zigong', '自贡', '29.181282', '104.984256', 0);
INSERT INTO `cms_city` VALUES ('101270303', 'rongxian', '荣县', 'sichuan', '四川', 'China', '中国', 'zigong', '自贡', '29.454851', '104.423932', 0);
INSERT INTO `cms_city` VALUES ('101270304', 'ziliujing', '自流井', 'sichuan', '四川', 'China', '中国', 'zigong', '自贡', '29.343231', '104.778188', 0);
INSERT INTO `cms_city` VALUES ('101270305', 'gongjing', '贡井', 'sichuan', '四川', 'China', '中国', 'zigong', '自贡', '29.345675', '104.714372', 0);
INSERT INTO `cms_city` VALUES ('101270306', 'daan', '大安', 'sichuan', '四川', 'China', '中国', 'zigong', '自贡', '29.367136', '104.783229', 0);
INSERT INTO `cms_city` VALUES ('101270307', 'yantan', '沿滩', 'sichuan', '四川', 'China', '中国', 'zigong', '自贡', '29.272521', '104.876417', 0);
INSERT INTO `cms_city` VALUES ('101270401', 'mianyang', '绵阳', 'sichuan', '四川', 'China', '中国', 'mianyang', '绵阳', '31.46402', '104.741722', 0);
INSERT INTO `cms_city` VALUES ('101270402', 'santai', '三台', 'sichuan', '四川', 'China', '中国', 'mianyang', '绵阳', '31.090909', '105.090316', 0);
INSERT INTO `cms_city` VALUES ('101270403', 'yanting', '盐亭', 'sichuan', '四川', 'China', '中国', 'mianyang', '绵阳', '31.22318', '105.391991', 0);
INSERT INTO `cms_city` VALUES ('101270404', 'anxian', '安县', 'sichuan', '四川', 'China', '中国', 'mianyang', '绵阳', '31.39', '104.25', 0);
INSERT INTO `cms_city` VALUES ('101270405', 'zitong', '梓潼', 'sichuan', '四川', 'China', '中国', 'mianyang', '绵阳', '31.635225', '105.16353', 0);
INSERT INTO `cms_city` VALUES ('101270406', 'beichuan', '北川', 'sichuan', '四川', 'China', '中国', 'mianyang', '绵阳', '31.615863', '104.468069', 0);
INSERT INTO `cms_city` VALUES ('101270407', 'pingwu', '平武', 'sichuan', '四川', 'China', '中国', 'mianyang', '绵阳', '32.407588', '104.530555', 0);
INSERT INTO `cms_city` VALUES ('101270408', 'jiangyou', '江油', 'sichuan', '四川', 'China', '中国', 'mianyang', '绵阳', '31.776386', '104.744431', 0);
INSERT INTO `cms_city` VALUES ('101270409', 'fucheng', '涪城', 'sichuan', '四川', 'China', '中国', 'mianyang', '绵阳', '31.463557', '104.740971', 0);
INSERT INTO `cms_city` VALUES ('101270410', 'youxian', '游仙', 'sichuan', '四川', 'China', '中国', 'mianyang', '绵阳', '31.484772', '104.770006', 0);
INSERT INTO `cms_city` VALUES ('101270411', 'anzhou', '安州', 'sichuan', '四川', 'China', '中国', 'mianyang', '绵阳', '31.53894', '104.560341', 0);
INSERT INTO `cms_city` VALUES ('101270501', 'nanchong', '南充', 'sichuan', '四川', 'China', '中国', 'nanchong', '南充', '30.795281', '106.082974', 0);
INSERT INTO `cms_city` VALUES ('101270502', 'nanbu', '南部', 'sichuan', '四川', 'China', '中国', 'nanchong', '南充', '31.349407', '106.061138', 0);
INSERT INTO `cms_city` VALUES ('101270503', 'yingshan', '营山', 'sichuan', '四川', 'China', '中国', 'nanchong', '南充', '31.075907', '106.564893', 0);
INSERT INTO `cms_city` VALUES ('101270504', 'pengan', '蓬安', 'sichuan', '四川', 'China', '中国', 'nanchong', '南充', '31.027978', '106.413488', 0);
INSERT INTO `cms_city` VALUES ('101270505', 'yilong', '仪陇', 'sichuan', '四川', 'China', '中国', 'nanchong', '南充', '31.271261', '106.297083', 0);
INSERT INTO `cms_city` VALUES ('101270506', 'xichong', '西充', 'sichuan', '四川', 'China', '中国', 'nanchong', '南充', '30.994616', '105.893021', 0);
INSERT INTO `cms_city` VALUES ('101270507', 'langzhong', '阆中', 'sichuan', '四川', 'China', '中国', 'nanchong', '南充', '31.580466', '105.975266', 0);
INSERT INTO `cms_city` VALUES ('101270508', 'shunqing', '顺庆', 'sichuan', '四川', 'China', '中国', 'nanchong', '南充', '30.795572', '106.084091', 0);
INSERT INTO `cms_city` VALUES ('101270509', 'gaoping', '高坪', 'sichuan', '四川', 'China', '中国', 'nanchong', '南充', '30.781809', '106.108996', 0);
INSERT INTO `cms_city` VALUES ('101270510', 'jialing', '嘉陵', 'sichuan', '四川', 'China', '中国', 'nanchong', '南充', '30.762976', '106.067027', 0);
INSERT INTO `cms_city` VALUES ('101270601', 'dazhou', '达州', 'sichuan', '四川', 'China', '中国', 'dazhou', '达州', '31.209484', '107.502262', 0);
INSERT INTO `cms_city` VALUES ('101270602', 'xuanhan', '宣汉', 'sichuan', '四川', 'China', '中国', 'dazhou', '达州', '31.355025', '107.722254', 0);
INSERT INTO `cms_city` VALUES ('101270603', 'kaijiang', '开江', 'sichuan', '四川', 'China', '中国', 'dazhou', '达州', '31.085537', '107.864135', 0);
INSERT INTO `cms_city` VALUES ('101270604', 'dazhu', '大竹', 'sichuan', '四川', 'China', '中国', 'dazhou', '达州', '30.736289', '107.20742', 0);
INSERT INTO `cms_city` VALUES ('101270605', 'quxian', '渠县', 'sichuan', '四川', 'China', '中国', 'dazhou', '达州', '30.836348', '106.970746', 0);
INSERT INTO `cms_city` VALUES ('101270606', 'wanyuan', '万源', 'sichuan', '四川', 'China', '中国', 'dazhou', '达州', '32.06777', '108.037548', 0);
INSERT INTO `cms_city` VALUES ('101270607', 'tongchuan', '通川', 'sichuan', '四川', 'China', '中国', 'dazhou', '达州', '31.213522', '107.501062', 0);
INSERT INTO `cms_city` VALUES ('101270608', 'dachuan', '达川', 'sichuan', '四川', 'China', '中国', 'dazhou', '达州', '31.199062', '107.507926', 0);
INSERT INTO `cms_city` VALUES ('101270701', 'suining', '遂宁', 'sichuan', '四川', 'China', '中国', 'suining', '遂宁', '30.513311', '105.571331', 0);
INSERT INTO `cms_city` VALUES ('101270702', 'pengxi', '蓬溪', 'sichuan', '四川', 'China', '中国', 'suining', '遂宁', '30.774883', '105.713699', 0);
INSERT INTO `cms_city` VALUES ('101270703', 'shehong', '射洪', 'sichuan', '四川', 'China', '中国', 'suining', '遂宁', '30.868752', '105.381849', 0);
INSERT INTO `cms_city` VALUES ('101270704', 'chuanshan', '船山', 'sichuan', '四川', 'China', '中国', 'suining', '遂宁', '30.502647', '105.582215', 0);
INSERT INTO `cms_city` VALUES ('101270705', 'anju', '安居', 'sichuan', '四川', 'China', '中国', 'suining', '遂宁', '30.346121', '105.459383', 0);
INSERT INTO `cms_city` VALUES ('101270706', 'daying', '大英', 'sichuan', '四川', 'China', '中国', 'suining', '遂宁', '30.581571', '105.252187', 0);
INSERT INTO `cms_city` VALUES ('101270801', 'guangan', '广安', 'sichuan', '四川', 'China', '中国', 'guangan', '广安', '30.456398', '106.633369', 0);
INSERT INTO `cms_city` VALUES ('101270802', 'yuechi', '岳池', 'sichuan', '四川', 'China', '中国', 'guangan', '广安', '30.533538', '106.444451', 0);
INSERT INTO `cms_city` VALUES ('101270803', 'wusheng', '武胜', 'sichuan', '四川', 'China', '中国', 'guangan', '广安', '30.344291', '106.292473', 0);
INSERT INTO `cms_city` VALUES ('101270804', 'linshui', '邻水', 'sichuan', '四川', 'China', '中国', 'guangan', '广安', '30.334323', '106.934968', 0);
INSERT INTO `cms_city` VALUES ('101270805', 'huaying', '华蓥', 'sichuan', '四川', 'China', '中国', 'guangan', '广安', '30.380574', '106.777882', 0);
INSERT INTO `cms_city` VALUES ('101270806', 'qianfeng', '前锋', 'sichuan', '四川', 'China', '中国', 'guangan', '广安', '30.4963', '106.893277', 0);
INSERT INTO `cms_city` VALUES ('101270901', 'bazhong', '巴中', 'sichuan', '四川', 'China', '中国', 'bazhong', '巴中', '31.858809', '106.753669', 0);
INSERT INTO `cms_city` VALUES ('101270902', 'tongjiang', '通江', 'sichuan', '四川', 'China', '中国', 'bazhong', '巴中', '31.91212', '107.247621', 0);
INSERT INTO `cms_city` VALUES ('101270903', 'nanjiang', '南江', 'sichuan', '四川', 'China', '中国', 'bazhong', '巴中', '32.353164', '106.843418', 0);
INSERT INTO `cms_city` VALUES ('101270904', 'pingchang', '平昌', 'sichuan', '四川', 'China', '中国', 'bazhong', '巴中', '31.562814', '107.101937', 0);
INSERT INTO `cms_city` VALUES ('101270905', 'bazhou', '巴州', 'sichuan', '四川', 'China', '中国', 'bazhong', '巴中', '31.858366', '106.753671', 0);
INSERT INTO `cms_city` VALUES ('101270906', 'enyang', '恩阳', 'sichuan', '四川', 'China', '中国', 'bazhong', '巴中', '31.816336', '106.486515', 0);
INSERT INTO `cms_city` VALUES ('101271001', 'luzhou', '泸州', 'sichuan', '四川', 'China', '中国', 'luzhou', '泸州', '28.889138', '105.443348', 0);
INSERT INTO `cms_city` VALUES ('101271002', 'jiangyang', '江阳', 'sichuan', '四川', 'China', '中国', 'luzhou', '泸州', '28.882889', '105.445131', 0);
INSERT INTO `cms_city` VALUES ('101271003', 'luxian', '泸县', 'sichuan', '四川', 'China', '中国', 'luzhou', '泸州', '29.151288', '105.376335', 0);
INSERT INTO `cms_city` VALUES ('101271004', 'hejiang', '合江', 'sichuan', '四川', 'China', '中国', 'luzhou', '泸州', '28.810325', '105.834098', 0);
INSERT INTO `cms_city` VALUES ('101271005', 'xuyong', '叙永', 'sichuan', '四川', 'China', '中国', 'luzhou', '泸州', '28.167919', '105.437775', 0);
INSERT INTO `cms_city` VALUES ('101271006', 'gulin', '古蔺', 'sichuan', '四川', 'China', '中国', 'luzhou', '泸州', '28.03948', '105.813359', 0);
INSERT INTO `cms_city` VALUES ('101271007', 'naxi', '纳溪', 'sichuan', '四川', 'China', '中国', 'luzhou', '泸州', '28.77631', '105.37721', 0);
INSERT INTO `cms_city` VALUES ('101271008', 'longmatan', '龙马潭', 'sichuan', '四川', 'China', '中国', 'luzhou', '泸州', '28.897572', '105.435228', 0);
INSERT INTO `cms_city` VALUES ('101271101', 'yibin', '宜宾', 'sichuan', '四川', 'China', '中国', 'yibin', '宜宾', '28.760189', '104.630825', 0);
INSERT INTO `cms_city` VALUES ('101271102', 'cuiping', '翠屏', 'sichuan', '四川', 'China', '中国', 'yibin', '宜宾', '28.760179', '104.630231', 0);
INSERT INTO `cms_city` VALUES ('101271103', 'yibinxian', '宜宾县', 'sichuan', '四川', 'China', '中国', 'yibin', '宜宾', '28.695678', '104.541489', 0);
INSERT INTO `cms_city` VALUES ('101271104', 'nanxi', '南溪', 'sichuan', '四川', 'China', '中国', 'yibin', '宜宾', '28.839806', '104.981133', 0);
INSERT INTO `cms_city` VALUES ('101271105', 'jiangan', '江安', 'sichuan', '四川', 'China', '中国', 'yibin', '宜宾', '28.728102', '105.068697', 0);
INSERT INTO `cms_city` VALUES ('101271106', 'changning', '长宁', 'sichuan', '四川', 'China', '中国', 'yibin', '宜宾', '28.577271', '104.921116', 0);
INSERT INTO `cms_city` VALUES ('101271107', 'gaoxian', '高县', 'sichuan', '四川', 'China', '中国', 'yibin', '宜宾', '28.435676', '104.519187', 0);
INSERT INTO `cms_city` VALUES ('101271108', 'gongxian', '珙县', 'sichuan', '四川', 'China', '中国', 'yibin', '宜宾', '28.449041', '104.712268', 0);
INSERT INTO `cms_city` VALUES ('101271109', 'junlian', '筠连', 'sichuan', '四川', 'China', '中国', 'yibin', '宜宾', '28.162017', '104.507848', 0);
INSERT INTO `cms_city` VALUES ('101271110', 'xingwen', '兴文', 'sichuan', '四川', 'China', '中国', 'yibin', '宜宾', '28.302988', '105.236549', 0);
INSERT INTO `cms_city` VALUES ('101271111', 'pingshan', '屏山', 'sichuan', '四川', 'China', '中国', 'yibin', '宜宾', '28.64237', '104.162617', 0);
INSERT INTO `cms_city` VALUES ('101271201', 'neijiang', '内江', 'sichuan', '四川', 'China', '中国', 'neijiang', '内江', '29.58708', '105.066138', 0);
INSERT INTO `cms_city` VALUES ('101271202', 'dongxing', '东兴', 'sichuan', '四川', 'China', '中国', 'neijiang', '内江', '29.600107', '105.067203', 0);
INSERT INTO `cms_city` VALUES ('101271203', 'weiyuan', '威远', 'sichuan', '四川', 'China', '中国', 'neijiang', '内江', '29.52686', '104.668327', 0);
INSERT INTO `cms_city` VALUES ('101271204', 'zizhong', '资中', 'sichuan', '四川', 'China', '中国', 'neijiang', '内江', '29.775295', '104.852463', 0);
INSERT INTO `cms_city` VALUES ('101271205', 'longchang', '隆昌', 'sichuan', '四川', 'China', '中国', 'neijiang', '内江', '29.338162', '105.288074', 0);
INSERT INTO `cms_city` VALUES ('101271206', 'shizhong', '市中', 'sichuan', '四川', 'China', '中国', 'najiang', '内江', '29.585265', '105.065467', 0);
INSERT INTO `cms_city` VALUES ('101271301', 'ziyang', '资阳', 'sichuan', '四川', 'China', '中国', 'ziyang', '资阳', '30.122211', '104.641917', 0);
INSERT INTO `cms_city` VALUES ('101271302', 'anyue', '安岳', 'sichuan', '四川', 'China', '中国', 'ziyang', '资阳', '30.099206', '105.336764', 0);
INSERT INTO `cms_city` VALUES ('101271303', 'lezhi', '乐至', 'sichuan', '四川', 'China', '中国', 'ziyang', '资阳', '30.275619', '105.031142', 0);
INSERT INTO `cms_city` VALUES ('101271305', 'yanjiang', '雁江', 'sichuan', '四川', 'China', '中国', 'ziyang', '资阳', '30.121686', '104.642338', 0);
INSERT INTO `cms_city` VALUES ('101271401', 'leshan', '乐山', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '29.582024', '103.761263', 0);
INSERT INTO `cms_city` VALUES ('101271402', 'qianwei', '犍为', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '29.209782', '103.944266', 0);
INSERT INTO `cms_city` VALUES ('101271403', 'jingyan', '井研', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '29.651645', '104.06885', 0);
INSERT INTO `cms_city` VALUES ('101271404', 'jiajiang', '夹江', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '29.741019', '103.578862', 0);
INSERT INTO `cms_city` VALUES ('101271405', 'muchuan', '沐川', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '28.956338', '103.90211', 0);
INSERT INTO `cms_city` VALUES ('101271406', 'ebian', '峨边', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '29.230271', '103.262148', 0);
INSERT INTO `cms_city` VALUES ('101271407', 'mabian', '马边', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '28.838933', '103.546851', 0);
INSERT INTO `cms_city` VALUES ('101271409', 'emeishan', '峨眉山', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '29.597478', '103.492488', 0);
INSERT INTO `cms_city` VALUES ('101271410', 'shizhong', '市中', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '29.588327', '103.75539', 0);
INSERT INTO `cms_city` VALUES ('101271411', 'shawan', '沙湾', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '29.416536', '103.549961', 0);
INSERT INTO `cms_city` VALUES ('101271412', 'wutongqiao', '五通桥', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '29.406186', '103.816837', 0);
INSERT INTO `cms_city` VALUES ('101271413', 'jinkouhe', '金口河', 'sichuan', '四川', 'China', '中国', 'leshan', '乐山', '29.24602', '103.077831', 0);
INSERT INTO `cms_city` VALUES ('101271501', 'meishan', '眉山', 'sichuan', '四川', 'China', '中国', 'meishan', '眉山', '30.048318', '103.831788', 0);
INSERT INTO `cms_city` VALUES ('101271502', 'renshou', '仁寿', 'sichuan', '四川', 'China', '中国', 'meishan', '眉山', '29.996721', '104.147646', 0);
INSERT INTO `cms_city` VALUES ('101271503', 'pengshan', '彭山', 'sichuan', '四川', 'China', '中国', 'meishan', '眉山', '30.192298', '103.8701', 0);
INSERT INTO `cms_city` VALUES ('101271504', 'hongya', '洪雅', 'sichuan', '四川', 'China', '中国', 'meishan', '眉山', '29.904867', '103.375006', 0);
INSERT INTO `cms_city` VALUES ('101271505', 'danleng', '丹棱', 'sichuan', '四川', 'China', '中国', 'meishan', '眉山', '30.012751', '103.518333', 0);
INSERT INTO `cms_city` VALUES ('101271506', 'qingshen', '青神', 'sichuan', '四川', 'China', '中国', 'meishan', '眉山', '29.831469', '103.846131', 0);
INSERT INTO `cms_city` VALUES ('101271507', 'dongpo', '东坡', 'sichuan', '四川', 'China', '中国', 'meishan', '眉山', '30.048128', '103.831553', 0);
INSERT INTO `cms_city` VALUES ('101271601', 'liangshan', '凉山', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '27.886762', '102.258746', 0);
INSERT INTO `cms_city` VALUES ('101271603', 'muli', '木里', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '27.926859', '101.280184', 0);
INSERT INTO `cms_city` VALUES ('101271604', 'yanyuan', '盐源', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '27.423415', '101.508909', 0);
INSERT INTO `cms_city` VALUES ('101271605', 'dechang', '德昌', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '27.403827', '102.178845', 0);
INSERT INTO `cms_city` VALUES ('101271606', 'huili', '会理', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '26.658702', '102.249548', 0);
INSERT INTO `cms_city` VALUES ('101271607', 'huidong', '会东', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '26.630713', '102.578985', 0);
INSERT INTO `cms_city` VALUES ('101271608', 'ningnan', '宁南', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '27.065205', '102.757374', 0);
INSERT INTO `cms_city` VALUES ('101271609', 'puge', '普格', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '27.376828', '102.541082', 0);
INSERT INTO `cms_city` VALUES ('101271610', 'xichang', '西昌', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '27.885786', '102.258758', 0);
INSERT INTO `cms_city` VALUES ('101271611', 'jinyang', '金阳', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '27.695916', '103.248704', 0);
INSERT INTO `cms_city` VALUES ('101271612', 'zhaojue', '昭觉', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '28.010554', '102.843991', 0);
INSERT INTO `cms_city` VALUES ('101271613', 'xide', '喜德', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '28.305486', '102.412342', 0);
INSERT INTO `cms_city` VALUES ('101271614', 'mianning', '冕宁', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '28.550844', '102.170046', 0);
INSERT INTO `cms_city` VALUES ('101271615', 'yuexi', '越西', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '28.639632', '102.508875', 0);
INSERT INTO `cms_city` VALUES ('101271616', 'ganluo', '甘洛', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '28.977094', '102.775924', 0);
INSERT INTO `cms_city` VALUES ('101271617', 'leibo', '雷波', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '28.262946', '103.571584', 0);
INSERT INTO `cms_city` VALUES ('101271618', 'meigu', '美姑', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '28.327946', '103.132007', 0);
INSERT INTO `cms_city` VALUES ('101271619', 'butuo', '布拖', 'sichuan', '四川', 'China', '中国', 'liangshan', '凉山', '27.709062', '102.808801', 0);
INSERT INTO `cms_city` VALUES ('101271701', 'yaan', '雅安', 'sichuan', '四川', 'China', '中国', 'yaan', '雅安', '29.987722', '103.001033', 0);
INSERT INTO `cms_city` VALUES ('101271702', 'mingshan', '名山', 'sichuan', '四川', 'China', '中国', 'yaan', '雅安', '30.084718', '103.112214', 0);
INSERT INTO `cms_city` VALUES ('101271703', 'yingjing', '荥经', 'sichuan', '四川', 'China', '中国', 'yaan', '雅安', '29.795529', '102.844674', 0);
INSERT INTO `cms_city` VALUES ('101271704', 'hanyuan', '汉源', 'sichuan', '四川', 'China', '中国', 'yaan', '雅安', '29.349915', '102.677145', 0);
INSERT INTO `cms_city` VALUES ('101271705', 'shimian', '石棉', 'sichuan', '四川', 'China', '中国', 'yaan', '雅安', '29.234063', '102.35962', 0);
INSERT INTO `cms_city` VALUES ('101271706', 'tianquan', '天全', 'sichuan', '四川', 'China', '中国', 'yaan', '雅安', '30.059955', '102.763462', 0);
INSERT INTO `cms_city` VALUES ('101271707', 'lushan', '芦山', 'sichuan', '四川', 'China', '中国', 'yaan', '雅安', '30.152907', '102.924016', 0);
INSERT INTO `cms_city` VALUES ('101271708', 'baoxing', '宝兴', 'sichuan', '四川', 'China', '中国', 'yaan', '雅安', '30.369026', '102.813377', 0);
INSERT INTO `cms_city` VALUES ('101271709', 'yucheng', '雨城', 'sichuan', '四川', 'China', '中国', 'yaan', '雅安', '29.981831', '103.003398', 0);
INSERT INTO `cms_city` VALUES ('101271801', 'ganzi', '甘孜', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '30.050663', '101.963815', 0);
INSERT INTO `cms_city` VALUES ('101271802', 'kangding', '康定', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '30.050738', '101.964057', 0);
INSERT INTO `cms_city` VALUES ('101271803', 'luding', '泸定', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '29.912482', '102.233225', 0);
INSERT INTO `cms_city` VALUES ('101271804', 'danba', '丹巴', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '30.877083', '101.886125', 0);
INSERT INTO `cms_city` VALUES ('101271805', 'jiulong', '九龙', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '29.001975', '101.506942', 0);
INSERT INTO `cms_city` VALUES ('101271806', 'yajiang', '雅江', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '30.03225', '101.015735', 0);
INSERT INTO `cms_city` VALUES ('101271807', 'daofu', '道孚', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '30.978767', '101.123327', 0);
INSERT INTO `cms_city` VALUES ('101271808', 'luhuo', '炉霍', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '31.392674', '100.679495', 0);
INSERT INTO `cms_city` VALUES ('101271809', 'xinlong', '新龙', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '30.93896', '100.312094', 0);
INSERT INTO `cms_city` VALUES ('101271810', 'dege', '德格', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '31.806729', '98.57999', 0);
INSERT INTO `cms_city` VALUES ('101271811', 'baiyu', '白玉', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '31.208805', '98.824343', 0);
INSERT INTO `cms_city` VALUES ('101271812', 'shiqu', '石渠', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '32.975302', '98.100887', 0);
INSERT INTO `cms_city` VALUES ('101271813', 'seda', '色达', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '32.268777', '100.331657', 0);
INSERT INTO `cms_city` VALUES ('101271814', 'litang', '理塘', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '29.991807', '100.269862', 0);
INSERT INTO `cms_city` VALUES ('101271815', 'batang', '巴塘', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '30.005723', '99.109037', 0);
INSERT INTO `cms_city` VALUES ('101271816', 'xiangcheng', '乡城', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '28.930855', '99.799943', 0);
INSERT INTO `cms_city` VALUES ('101271817', 'daocheng', '稻城', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '29.037544', '100.296689', 0);
INSERT INTO `cms_city` VALUES ('101271818', 'derong', '得荣', 'sichuan', '四川', 'China', '中国', 'ganzi', '甘孜', '28.71134', '99.288036', 0);
INSERT INTO `cms_city` VALUES ('101271901', 'aba', '阿坝', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '31.899792', '102.221374', 0);
INSERT INTO `cms_city` VALUES ('101271902', 'wenchuan', '汶川', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '31.47463', '103.580675', 0);
INSERT INTO `cms_city` VALUES ('101271903', 'lixian', '理县', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '31.436764', '103.165486', 0);
INSERT INTO `cms_city` VALUES ('101271904', 'maoxian', '茂县', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '31.680407', '103.850684', 0);
INSERT INTO `cms_city` VALUES ('101271905', 'songfan', '松潘', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '32.63838', '103.599177', 0);
INSERT INTO `cms_city` VALUES ('101271906', 'jiuzhaigou', '九寨沟', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '33.262097', '104.236344', 0);
INSERT INTO `cms_city` VALUES ('101271907', 'jinchuan', '金川', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '31.476356', '102.064647', 0);
INSERT INTO `cms_city` VALUES ('101271908', 'xiaojin', '小金', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '30.999016', '102.363193', 0);
INSERT INTO `cms_city` VALUES ('101271909', 'heishui', '黑水', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '32.061721', '102.990805', 0);
INSERT INTO `cms_city` VALUES ('101271910', 'maerkang', '马尔康', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '31.899761', '102.221187', 0);
INSERT INTO `cms_city` VALUES ('101271911', 'rangtang', '壤塘', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '32.264887', '100.979136', 0);
INSERT INTO `cms_city` VALUES ('101271912', 'nuoergai', '若尔盖', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '33.575934', '102.963726', 0);
INSERT INTO `cms_city` VALUES ('101271913', 'hongyuan', '红原', 'sichuan', '四川', 'China', '中国', 'aba', '阿坝', '32.793902', '102.544906', 0);
INSERT INTO `cms_city` VALUES ('101272001', 'deyang', '德阳', 'sichuan', '四川', 'China', '中国', 'deyang', '德阳', '31.127991', '104.398651', 0);
INSERT INTO `cms_city` VALUES ('101272002', 'zhongjiang', '中江', 'sichuan', '四川', 'China', '中国', 'deyang', '德阳', '31.03681', '104.677831', 0);
INSERT INTO `cms_city` VALUES ('101272003', 'guanghan', '广汉', 'sichuan', '四川', 'China', '中国', 'deyang', '德阳', '30.97715', '104.281903', 0);
INSERT INTO `cms_city` VALUES ('101272004', 'shifang', '什邡', 'sichuan', '四川', 'China', '中国', 'deyang', '德阳', '31.126881', '104.173653', 0);
INSERT INTO `cms_city` VALUES ('101272005', 'mianzhu', '绵竹', 'sichuan', '四川', 'China', '中国', 'deyang', '德阳', '31.343084', '104.200162', 0);
INSERT INTO `cms_city` VALUES ('101272006', 'luojiang', '罗江', 'sichuan', '四川', 'China', '中国', 'deyang', '德阳', '31.303281', '104.507126', 0);
INSERT INTO `cms_city` VALUES ('101272007', 'jingyang', '旌阳', 'sichuan', '四川', 'China', '中国', 'deyang', '德阳', '31.130428', '104.389648', 0);
INSERT INTO `cms_city` VALUES ('101272101', 'guangyuan', '广元', 'sichuan', '四川', 'China', '中国', 'guangyuan', '广元', '32.433668', '105.829757', 0);
INSERT INTO `cms_city` VALUES ('101272102', 'wangcang', '旺苍', 'sichuan', '四川', 'China', '中国', 'guangyuan', '广元', '32.22833', '106.290426', 0);
INSERT INTO `cms_city` VALUES ('101272103', 'qingchuan', '青川', 'sichuan', '四川', 'China', '中国', 'guangyuan', '广元', '32.585655', '105.238847', 0);
INSERT INTO `cms_city` VALUES ('101272104', 'jiange', '剑阁', 'sichuan', '四川', 'China', '中国', 'guangyuan', '广元', '32.286517', '105.527035', 0);
INSERT INTO `cms_city` VALUES ('101272105', 'cangxi', '苍溪', 'sichuan', '四川', 'China', '中国', 'guangyuan', '广元', '31.732251', '105.939706', 0);
INSERT INTO `cms_city` VALUES ('101272106', 'lizhou', '利州', 'sichuan', '四川', 'China', '中国', 'guangyuan', '广元', '32.432276', '105.826194', 0);
INSERT INTO `cms_city` VALUES ('101272107', 'zhaohua', '昭化', 'sichuan', '四川', 'China', '中国', 'guangyuan', '广元', '32.322788', '105.964121', 0);
INSERT INTO `cms_city` VALUES ('101272108', 'chaotian', '朝天', 'sichuan', '四川', 'China', '中国', 'guangyuan', '广元', '32.642632', '105.88917', 0);
INSERT INTO `cms_city` VALUES ('101280101', 'guangzhou', '广州', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '23.125178', '113.280637', 1);
INSERT INTO `cms_city` VALUES ('101280102', 'panyu', '番禺', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '22.938582', '113.364619', 0);
INSERT INTO `cms_city` VALUES ('101280103', 'conghua', '从化', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '23.545283', '113.587386', 0);
INSERT INTO `cms_city` VALUES ('101280104', 'zengcheng', '增城', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '23.290497', '113.829579', 0);
INSERT INTO `cms_city` VALUES ('101280105', 'huadu', '花都', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '23.39205', '113.211184', 0);
INSERT INTO `cms_city` VALUES ('101280106', 'liwan', '荔湾', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '23.124943', '113.243038', 0);
INSERT INTO `cms_city` VALUES ('101280107', 'yuexiu', '越秀', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '23.125624', '113.280714', 0);
INSERT INTO `cms_city` VALUES ('101280108', 'haizhu', '海珠', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '23.103131', '113.262008', 0);
INSERT INTO `cms_city` VALUES ('101280109', 'tianhe', '天河', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '23.13559', '113.335367', 0);
INSERT INTO `cms_city` VALUES ('101280110', 'baiyun', '白云', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '23.162281', '113.262831', 0);
INSERT INTO `cms_city` VALUES ('101280111', 'huangpu', '黄埔', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '23.103239', '113.450761', 0);
INSERT INTO `cms_city` VALUES ('101280112', 'nansha', '南沙', 'guangdong', '广东', 'China', '中国', 'guangzhou', '广州', '22.794531', '113.53738', 0);
INSERT INTO `cms_city` VALUES ('101280201', 'shaoguan', '韶关', 'guangdong', '广东', 'China', '中国', 'shaoguan', '韶关', '24.801322', '113.591544', 0);
INSERT INTO `cms_city` VALUES ('101280202', 'ruyuan', '乳源', 'guangdong', '广东', 'China', '中国', 'shaoguan', '韶关', '24.776109', '113.278417', 0);
INSERT INTO `cms_city` VALUES ('101280203', 'shixing', '始兴', 'guangdong', '广东', 'China', '中国', 'shaoguan', '韶关', '24.948364', '114.067205', 0);
INSERT INTO `cms_city` VALUES ('101280204', 'wengyuan', '翁源', 'guangdong', '广东', 'China', '中国', 'shaoguan', '韶关', '24.353887', '114.131289', 0);
INSERT INTO `cms_city` VALUES ('101280205', 'lechang', '乐昌', 'guangdong', '广东', 'China', '中国', 'shaoguan', '韶关', '25.128445', '113.352413', 0);
INSERT INTO `cms_city` VALUES ('101280206', 'renhua', '仁化', 'guangdong', '广东', 'China', '中国', 'shaoguan', '韶关', '25.088226', '113.748627', 0);
INSERT INTO `cms_city` VALUES ('101280207', 'nanxiong', '南雄', 'guangdong', '广东', 'China', '中国', 'shaoguan', '韶关', '25.115328', '114.311231', 0);
INSERT INTO `cms_city` VALUES ('101280208', 'xinfeng', '新丰', 'guangdong', '广东', 'China', '中国', 'shaoguan', '韶关', '24.055412', '114.207034', 0);
INSERT INTO `cms_city` VALUES ('101280209', 'qujiang', '曲江', 'guangdong', '广东', 'China', '中国', 'shaoguan', '韶关', '24.680195', '113.605582', 0);
INSERT INTO `cms_city` VALUES ('101280210', 'zhenjiang', '浈江', 'guangdong', '广东', 'China', '中国', 'shaoguan', '韶关', '24.803977', '113.599224', 0);
INSERT INTO `cms_city` VALUES ('101280211', 'wujiang', '武江', 'guangdong', '广东', 'China', '中国', 'shaoguan', '韶关', '24.80016', '113.588289', 0);
INSERT INTO `cms_city` VALUES ('101280301', 'huizhou', '惠州', 'guangdong', '广东', 'China', '中国', 'huizhou', '惠州', '23.079404', '114.412599', 0);
INSERT INTO `cms_city` VALUES ('101280302', 'boluo', '博罗', 'guangdong', '广东', 'China', '中国', 'huizhou', '惠州', '23.167575', '114.284254', 0);
INSERT INTO `cms_city` VALUES ('101280303', 'huiyang', '惠阳', 'guangdong', '广东', 'China', '中国', 'huizhou', '惠州', '22.78851', '114.469444', 0);
INSERT INTO `cms_city` VALUES ('101280304', 'huidong', '惠东', 'guangdong', '广东', 'China', '中国', 'huizhou', '惠州', '22.983036', '114.723092', 0);
INSERT INTO `cms_city` VALUES ('101280305', 'longmen', '龙门', 'guangdong', '广东', 'China', '中国', 'huizhou', '惠州', '23.723894', '114.259986', 0);
INSERT INTO `cms_city` VALUES ('101280306', 'huicheng', '惠城', 'guangdong', '广东', 'China', '中国', 'huizhou', '惠州', '23.079883', '114.413978', 0);
INSERT INTO `cms_city` VALUES ('101280401', 'meizhou', '梅州', 'guangdong', '广东', 'China', '中国', 'meizhou', '梅州', '24.299112', '116.117582', 0);
INSERT INTO `cms_city` VALUES ('101280402', 'xingning', '兴宁', 'guangdong', '广东', 'China', '中国', 'meizhou', '梅州', '24.138077', '115.731648', 0);
INSERT INTO `cms_city` VALUES ('101280403', 'jiaoling', '蕉岭', 'guangdong', '广东', 'China', '中国', 'meizhou', '梅州', '24.653313', '116.170531', 0);
INSERT INTO `cms_city` VALUES ('101280404', 'dabu', '大埔', 'guangdong', '广东', 'China', '中国', 'meizhou', '梅州', '24.351587', '116.69552', 0);
INSERT INTO `cms_city` VALUES ('101280405', 'meijiang', '梅江', 'guangdong', '广东', 'China', '中国', 'meizhou', '梅州', '24.302593', '116.12116', 0);
INSERT INTO `cms_city` VALUES ('101280406', 'fengshun', '丰顺', 'guangdong', '广东', 'China', '中国', 'meizhou', '梅州', '23.752771', '116.184419', 0);
INSERT INTO `cms_city` VALUES ('101280407', 'pingyuan', '平远', 'guangdong', '广东', 'China', '中国', 'meizhou', '梅州', '24.569651', '115.891729', 0);
INSERT INTO `cms_city` VALUES ('101280408', 'wuhua', '五华', 'guangdong', '广东', 'China', '中国', 'meizhou', '梅州', '23.925424', '115.775004', 0);
INSERT INTO `cms_city` VALUES ('101280409', 'meixian', '梅县', 'guangdong', '广东', 'China', '中国', 'meizhou', '梅州', '24.267825', '116.083482', 0);
INSERT INTO `cms_city` VALUES ('101280501', 'shantou', '汕头', 'guangdong', '广东', 'China', '中国', 'shantou', '汕头', '23.37102', '116.708463', 0);
INSERT INTO `cms_city` VALUES ('101280502', 'chaoyang', '潮阳', 'guangdong', '广东', 'China', '中国', 'shantou', '汕头', '23.262336', '116.602602', 0);
INSERT INTO `cms_city` VALUES ('101280503', 'chenghai', '澄海', 'guangdong', '广东', 'China', '中国', 'shantou', '汕头', '23.46844', '116.76336', 0);
INSERT INTO `cms_city` VALUES ('101280504', 'nanao', '南澳', 'guangdong', '广东', 'China', '中国', 'shantou', '汕头', '23.419562', '117.027105', 0);
INSERT INTO `cms_city` VALUES ('101280505', 'longhu', '龙湖', 'guangdong', '广东', 'China', '中国', 'shantou', '汕头', '23.373754', '116.732015', 0);
INSERT INTO `cms_city` VALUES ('101280506', 'jinping', '金平', 'guangdong', '广东', 'China', '中国', 'shantou', '汕头', '23.367071', '116.703583', 0);
INSERT INTO `cms_city` VALUES ('101280507', 'haojiang', '濠江', 'guangdong', '广东', 'China', '中国', 'shantou', '汕头', '23.279345', '116.729528', 0);
INSERT INTO `cms_city` VALUES ('101280508', 'chaonan', '潮南', 'guangdong', '广东', 'China', '中国', 'shantou', '汕头', '23.249798', '116.423607', 0);
INSERT INTO `cms_city` VALUES ('101280601', 'shenzhen', '深圳', 'guangdong', '广东', 'China', '中国', 'shenzhen', '深圳', '22.547', '114.085947', 1);
INSERT INTO `cms_city` VALUES ('101280602', 'luohu', '罗湖', 'guangdong', '广东', 'China', '中国', 'shenzhen', '深圳', '22.555341', '114.123885', 0);
INSERT INTO `cms_city` VALUES ('101280603', 'futian', '福田', 'guangdong', '广东', 'China', '中国', 'shenzhen', '深圳', '22.541009', '114.05096', 0);
INSERT INTO `cms_city` VALUES ('101280604', 'nanshan', '南山', 'guangdong', '广东', 'China', '中国', 'shenzhen', '深圳', '22.531221', '113.92943', 0);
INSERT INTO `cms_city` VALUES ('101280605', 'baoan', '宝安', 'guangdong', '广东', 'China', '中国', 'shenzhen', '深圳', '22.754741', '113.828671', 0);
INSERT INTO `cms_city` VALUES ('101280606', 'longgang', '龙岗', 'guangdong', '广东', 'China', '中国', 'shenzhen', '深圳', '22.721511', '114.251372', 0);
INSERT INTO `cms_city` VALUES ('101280607', 'yantian', '盐田', 'guangdong', '广东', 'China', '中国', 'shenzhen', '深圳', '22.555069', '114.235366', 0);
INSERT INTO `cms_city` VALUES ('101280701', 'zhuhai', '珠海', 'guangdong', '广东', 'China', '中国', 'zhuhai', '珠海', '22.224979', '113.553986', 0);
INSERT INTO `cms_city` VALUES ('101280702', 'doumen', '斗门', 'guangdong', '广东', 'China', '中国', 'zhuhai', '珠海', '22.209117', '113.297739', 0);
INSERT INTO `cms_city` VALUES ('101280703', 'jinwan', '金湾', 'guangdong', '广东', 'China', '中国', 'zhuhai', '珠海', '22.139122', '113.345071', 0);
INSERT INTO `cms_city` VALUES ('101280704', 'xiangzhou', '香洲', 'guangdong', '广东', 'China', '中国', 'zhuhai', '珠海', '22.271249', '113.55027', 0);
INSERT INTO `cms_city` VALUES ('101280800', 'foshan', '佛山', 'guangdong', '广东', 'China', '中国', 'foshan', '佛山', '23.028762', '113.122717', 0);
INSERT INTO `cms_city` VALUES ('101280801', 'shunde', '顺德', 'guangdong', '广东', 'China', '中国', 'foshan', '佛山', '22.75851', '113.281826', 0);
INSERT INTO `cms_city` VALUES ('101280802', 'sanshui', '三水', 'guangdong', '广东', 'China', '中国', 'foshan', '佛山', '23.16504', '112.899414', 0);
INSERT INTO `cms_city` VALUES ('101280803', 'nanhai', '南海', 'guangdong', '广东', 'China', '中国', 'foshan', '佛山', '23.031562', '113.145577', 0);
INSERT INTO `cms_city` VALUES ('101280804', 'gaoming', '高明', 'guangdong', '广东', 'China', '中国', 'foshan', '佛山', '22.893855', '112.882123', 0);
INSERT INTO `cms_city` VALUES ('101280805', 'chancheng', '禅城', 'guangdong', '广东', 'China', '中国', 'foshan', '佛山', '23.019643', '113.112414', 0);
INSERT INTO `cms_city` VALUES ('101280901', 'zhaoqing', '肇庆', 'guangdong', '广东', 'China', '中国', 'zhaoqing', '肇庆', '23.051546', '112.472529', 0);
INSERT INTO `cms_city` VALUES ('101280902', 'guangning', '广宁', 'guangdong', '广东', 'China', '中国', 'zhaoqing', '肇庆', '23.631486', '112.440419', 0);
INSERT INTO `cms_city` VALUES ('101280903', 'sihui', '四会', 'guangdong', '广东', 'China', '中国', 'zhaoqing', '肇庆', '23.340324', '112.695028', 0);
INSERT INTO `cms_city` VALUES ('101280904', 'duanzhou', '端州', 'guangdong', '广东', 'China', '中国', 'zhaoqing', '肇庆', '23.052662', '112.472329', 0);
INSERT INTO `cms_city` VALUES ('101280905', 'deqing', '德庆', 'guangdong', '广东', 'China', '中国', 'zhaoqing', '肇庆', '23.141711', '111.78156', 0);
INSERT INTO `cms_city` VALUES ('101280906', 'huaiji', '怀集', 'guangdong', '广东', 'China', '中国', 'zhaoqing', '肇庆', '23.913072', '112.182466', 0);
INSERT INTO `cms_city` VALUES ('101280907', 'fengkai', '封开', 'guangdong', '广东', 'China', '中国', 'zhaoqing', '肇庆', '23.434731', '111.502973', 0);
INSERT INTO `cms_city` VALUES ('101280908', 'gaoyao', '高要', 'guangdong', '广东', 'China', '中国', 'zhaoqing', '肇庆', '23.027694', '112.460846', 0);
INSERT INTO `cms_city` VALUES ('101280909', 'dinghu', '鼎湖', 'guangdong', '广东', 'China', '中国', 'zhaoqing', '肇庆', '23.155822', '112.565249', 0);
INSERT INTO `cms_city` VALUES ('101281001', 'zhanjiang', '湛江', 'guangdong', '广东', 'China', '中国', 'zhanjiang', '湛江', '21.274898', '110.364977', 0);
INSERT INTO `cms_city` VALUES ('101281002', 'wuchuan', '吴川', 'guangdong', '广东', 'China', '中国', 'zhanjiang', '湛江', '21.428453', '110.780508', 0);
INSERT INTO `cms_city` VALUES ('101281003', 'leizhou', '雷州', 'guangdong', '广东', 'China', '中国', 'zhanjiang', '湛江', '20.908523', '110.088275', 0);
INSERT INTO `cms_city` VALUES ('101281004', 'xuwen', '徐闻', 'guangdong', '广东', 'China', '中国', 'zhanjiang', '湛江', '20.326083', '110.175718', 0);
INSERT INTO `cms_city` VALUES ('101281005', 'lianjiang', '廉江', 'guangdong', '广东', 'China', '中国', 'zhanjiang', '湛江', '21.611281', '110.284961', 0);
INSERT INTO `cms_city` VALUES ('101281006', 'chikan', '赤坎', 'guangdong', '广东', 'China', '中国', 'zhanjiang', '湛江', '21.273365', '110.361634', 0);
INSERT INTO `cms_city` VALUES ('101281007', 'suixi', '遂溪', 'guangdong', '广东', 'China', '中国', 'zhanjiang', '湛江', '21.376915', '110.255321', 0);
INSERT INTO `cms_city` VALUES ('101281008', 'potou', '坡头', 'guangdong', '广东', 'China', '中国', 'zhanjiang', '湛江', '21.24441', '110.455632', 0);
INSERT INTO `cms_city` VALUES ('101281009', 'xiashan', '霞山', 'guangdong', '广东', 'China', '中国', 'zhanjiang', '湛江', '21.194229', '110.406382', 0);
INSERT INTO `cms_city` VALUES ('101281010', 'mazhang', '麻章', 'guangdong', '广东', 'China', '中国', 'zhanjiang', '湛江', '21.265997', '110.329167', 0);
INSERT INTO `cms_city` VALUES ('101281101', 'jiangmen', '江门', 'guangdong', '广东', 'China', '中国', 'jiangmen', '江门', '22.590431', '113.094942', 0);
INSERT INTO `cms_city` VALUES ('101281103', 'kaiping', '开平', 'guangdong', '广东', 'China', '中国', 'jiangmen', '江门', '22.366286', '112.692262', 0);
INSERT INTO `cms_city` VALUES ('101281104', 'xinhui', '新会', 'guangdong', '广东', 'China', '中国', 'jiangmen', '江门', '22.520247', '113.038584', 0);
INSERT INTO `cms_city` VALUES ('101281105', 'enping', '恩平', 'guangdong', '广东', 'China', '中国', 'jiangmen', '江门', '22.182956', '112.314051', 0);
INSERT INTO `cms_city` VALUES ('101281106', 'taishan', '台山', 'guangdong', '广东', 'China', '中国', 'jiangmen', '江门', '22.250713', '112.793414', 0);
INSERT INTO `cms_city` VALUES ('101281107', 'pengjiang', '蓬江', 'guangdong', '广东', 'China', '中国', 'jiangmen', '江门', '22.59677', '113.07859', 0);
INSERT INTO `cms_city` VALUES ('101281108', 'heshan', '鹤山', 'guangdong', '广东', 'China', '中国', 'jiangmen', '江门', '22.768104', '112.961795', 0);
INSERT INTO `cms_city` VALUES ('101281109', 'jianghai', '江海', 'guangdong', '广东', 'China', '中国', 'jiangmen', '江门', '22.572211', '113.120601', 0);
INSERT INTO `cms_city` VALUES ('101281201', 'heyuan', '河源', 'guangdong', '广东', 'China', '中国', 'heyuan', '河源', '23.746266', '114.697802', 0);
INSERT INTO `cms_city` VALUES ('101281202', 'zijin', '紫金', 'guangdong', '广东', 'China', '中国', 'heyuan', '河源', '23.633744', '115.184383', 0);
INSERT INTO `cms_city` VALUES ('101281203', 'lianping', '连平', 'guangdong', '广东', 'China', '中国', 'heyuan', '河源', '24.364227', '114.495952', 0);
INSERT INTO `cms_city` VALUES ('101281204', 'heping', '和平', 'guangdong', '广东', 'China', '中国', 'heyuan', '河源', '24.44318', '114.941473', 0);
INSERT INTO `cms_city` VALUES ('101281205', 'longchuan', '龙川', 'guangdong', '广东', 'China', '中国', 'heyuan', '河源', '24.101174', '115.256415', 0);
INSERT INTO `cms_city` VALUES ('101281206', 'dongyuan', '东源', 'guangdong', '广东', 'China', '中国', 'heyuan', '河源', '23.789093', '114.742711', 0);
INSERT INTO `cms_city` VALUES ('101281207', 'yuancheng', '源城', 'guangdong', '广东', 'China', '中国', 'heyuan', '河源', '23.746255', '114.696828', 0);
INSERT INTO `cms_city` VALUES ('101281301', 'qingyuan', '清远', 'guangdong', '广东', 'China', '中国', 'qingyuan', '清远', '23.685022', '113.051227', 0);
INSERT INTO `cms_city` VALUES ('101281302', 'liannan', '连南', 'guangdong', '广东', 'China', '中国', 'qingyuan', '清远', '24.719097', '112.290808', 0);
INSERT INTO `cms_city` VALUES ('101281303', 'lianzhou', '连州', 'guangdong', '广东', 'China', '中国', 'qingyuan', '清远', '24.783966', '112.379271', 0);
INSERT INTO `cms_city` VALUES ('101281304', 'lianshan', '连山', 'guangdong', '广东', 'China', '中国', 'qingyuan', '清远', '24.567271', '112.086555', 0);
INSERT INTO `cms_city` VALUES ('101281305', 'yangshan', '阳山', 'guangdong', '广东', 'China', '中国', 'qingyuan', '清远', '24.470286', '112.634019', 0);
INSERT INTO `cms_city` VALUES ('101281306', 'fogang', '佛冈', 'guangdong', '广东', 'China', '中国', 'qingyuan', '清远', '23.866739', '113.534094', 0);
INSERT INTO `cms_city` VALUES ('101281307', 'yingde', '英德', 'guangdong', '广东', 'China', '中国', 'qingyuan', '清远', '24.18612', '113.405404', 0);
INSERT INTO `cms_city` VALUES ('101281308', 'qingxin', '清新', 'guangdong', '广东', 'China', '中国', 'qingyuan', '清远', '23.736949', '113.015203', 0);
INSERT INTO `cms_city` VALUES ('101281309', 'qingcheng', '清城', 'guangdong', '广东', 'China', '中国', 'qingyuan', '清远', '23.688976', '113.048698', 0);
INSERT INTO `cms_city` VALUES ('101281401', 'yunfu', '云浮', 'guangdong', '广东', 'China', '中国', 'yunfu', '云浮', '22.929801', '112.044439', 0);
INSERT INTO `cms_city` VALUES ('101281402', 'luoding', '罗定', 'guangdong', '广东', 'China', '中国', 'yunfu', '云浮', '22.765415', '111.578201', 0);
INSERT INTO `cms_city` VALUES ('101281403', 'xinxing', '新兴', 'guangdong', '广东', 'China', '中国', 'yunfu', '云浮', '22.703204', '112.23083', 0);
INSERT INTO `cms_city` VALUES ('101281404', 'yunan', '郁南', 'guangdong', '广东', 'China', '中国', 'yunfu', '云浮', '23.237709', '111.535921', 0);
INSERT INTO `cms_city` VALUES ('101281405', 'yuncheng', '云城', 'guangdong', '广东', 'China', '中国', 'yunfu', '云浮', '22.930827', '112.04471', 0);
INSERT INTO `cms_city` VALUES ('101281406', 'yunan', '云安', 'guangdong', '广东', 'China', '中国', 'yunfu', '云浮', '23.073152', '112.005609', 0);
INSERT INTO `cms_city` VALUES ('101281501', 'chaozhou', '潮州', 'guangdong', '广东', 'China', '中国', 'chaozhou', '潮州', '23.661701', '116.632301', 0);
INSERT INTO `cms_city` VALUES ('101281502', 'raoping', '饶平', 'guangdong', '广东', 'China', '中国', 'chaozhou', '潮州', '23.668171', '117.00205', 0);
INSERT INTO `cms_city` VALUES ('101281503', 'chaoan', '潮安', 'guangdong', '广东', 'China', '中国', 'chaozhou', '潮州', '23.461012', '116.67931', 0);
INSERT INTO `cms_city` VALUES ('101281504', 'xiangqiao', '湘桥', 'guangdong', '广东', 'China', '中国', 'chaozhou', '潮州', '23.664675', '116.63365', 0);
INSERT INTO `cms_city` VALUES ('101281601', 'dongguan', '东莞', 'guangdong', '广东', 'China', '中国', 'dongguan', '东莞', '23.046237', '113.746262', 0);
INSERT INTO `cms_city` VALUES ('101281701', 'zhongshan', '中山', 'guangdong', '广东', 'China', '中国', 'zhongshan', '中山', '22.521113', '113.382391', 0);
INSERT INTO `cms_city` VALUES ('101281801', 'yangjiang', '阳江', 'guangdong', '广东', 'China', '中国', 'yangjiang', '阳江', '21.859222', '111.975107', 0);
INSERT INTO `cms_city` VALUES ('101281802', 'yangchun', '阳春', 'guangdong', '广东', 'China', '中国', 'yangjiang', '阳江', '22.169598', '111.7905', 0);
INSERT INTO `cms_city` VALUES ('101281803', 'yangdong', '阳东', 'guangdong', '广东', 'China', '中国', 'yangjiang', '阳江', '21.864728', '112.011267', 0);
INSERT INTO `cms_city` VALUES ('101281804', 'yangxi', '阳西', 'guangdong', '广东', 'China', '中国', 'yangjiang', '阳江', '21.75367', '111.617556', 0);
INSERT INTO `cms_city` VALUES ('101281805', 'jiangcheng', '江城', 'guangdong', '广东', 'China', '中国', 'yangjiang', '阳江', '21.859182', '111.968909', 0);
INSERT INTO `cms_city` VALUES ('101281901', 'jieyang', '揭阳', 'guangdong', '广东', 'China', '中国', 'jieyang', '揭阳', '23.543778', '116.355733', 0);
INSERT INTO `cms_city` VALUES ('101281902', 'jiexi', '揭西', 'guangdong', '广东', 'China', '中国', 'jieyang', '揭阳', '23.4273', '115.838708', 0);
INSERT INTO `cms_city` VALUES ('101281903', 'puning', '普宁', 'guangdong', '广东', 'China', '中国', 'jieyang', '揭阳', '23.29788', '116.165082', 0);
INSERT INTO `cms_city` VALUES ('101281904', 'huilai', '惠来', 'guangdong', '广东', 'China', '中国', 'jieyang', '揭阳', '23.029834', '116.295832', 0);
INSERT INTO `cms_city` VALUES ('101281905', 'jiedong', '揭东', 'guangdong', '广东', 'China', '中国', 'jieyang', '揭阳', '23.569887', '116.412947', 0);
INSERT INTO `cms_city` VALUES ('101281906', 'rongcheng', '榕城', 'guangdong', '广东', 'China', '中国', 'jieyang', '揭阳', '23.535524', '116.357045', 0);
INSERT INTO `cms_city` VALUES ('101282001', 'maoming', '茂名', 'guangdong', '广东', 'China', '中国', 'maoming', '茂名', '21.659751', '110.919229', 0);
INSERT INTO `cms_city` VALUES ('101282002', 'gaozhou', '高州', 'guangdong', '广东', 'China', '中国', 'maoming', '茂名', '21.915153', '110.853251', 0);
INSERT INTO `cms_city` VALUES ('101282003', 'huazhou', '化州', 'guangdong', '广东', 'China', '中国', 'maoming', '茂名', '21.654953', '110.63839', 0);
INSERT INTO `cms_city` VALUES ('101282004', 'dianbai', '电白', 'guangdong', '广东', 'China', '中国', 'maoming', '茂名', '21.507219', '111.007264', 0);
INSERT INTO `cms_city` VALUES ('101282005', 'xinyi', '信宜', 'guangdong', '广东', 'China', '中国', 'maoming', '茂名', '22.352681', '110.941656', 0);
INSERT INTO `cms_city` VALUES ('101282007', 'maonan', '茂南', 'guangdong', '广东', 'China', '中国', 'maoming', '茂名', '21.660425', '110.920542', 0);
INSERT INTO `cms_city` VALUES ('101282101', 'shanwei', '汕尾', 'guangdong', '广东', 'China', '中国', 'shanwei', '汕尾', '22.774485', '115.364238', 0);
INSERT INTO `cms_city` VALUES ('101282102', 'haifeng', '海丰', 'guangdong', '广东', 'China', '中国', 'shanwei', '汕尾', '22.971042', '115.337324', 0);
INSERT INTO `cms_city` VALUES ('101282103', 'lufeng', '陆丰', 'guangdong', '广东', 'China', '中国', 'shanwei', '汕尾', '22.946104', '115.644203', 0);
INSERT INTO `cms_city` VALUES ('101282104', 'luhe', '陆河', 'guangdong', '广东', 'China', '中国', 'shanwei', '汕尾', '23.302682', '115.657565', 0);
INSERT INTO `cms_city` VALUES ('101290101', 'kunming', '昆明', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '25.040609', '102.712251', 0);
INSERT INTO `cms_city` VALUES ('101290102', 'wuhua', '五华', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '25.042165', '102.704412', 0);
INSERT INTO `cms_city` VALUES ('101290103', 'dongchuan', '东川', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '26.08349', '103.182', 0);
INSERT INTO `cms_city` VALUES ('101290104', 'xundian', '寻甸', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '25.559474', '103.257588', 0);
INSERT INTO `cms_city` VALUES ('101290105', 'jinning', '晋宁', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '24.666944', '102.594987', 0);
INSERT INTO `cms_city` VALUES ('101290106', 'yiliang', '宜良', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '24.918215', '103.145989', 0);
INSERT INTO `cms_city` VALUES ('101290107', 'shilin', '石林', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '24.754545', '103.271962', 0);
INSERT INTO `cms_city` VALUES ('101290108', 'chenggong', '呈贡', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '24.889275', '102.801382', 0);
INSERT INTO `cms_city` VALUES ('101290109', 'fumin', '富民', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '25.219667', '102.497888', 0);
INSERT INTO `cms_city` VALUES ('101290110', 'songming', '嵩明', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '25.335087', '103.038777', 0);
INSERT INTO `cms_city` VALUES ('101290111', 'luquan', '禄劝', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '25.556533', '102.46905', 0);
INSERT INTO `cms_city` VALUES ('101290112', 'anning', '安宁', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '24.921785', '102.485544', 0);
INSERT INTO `cms_city` VALUES ('101290114', 'panlong', '盘龙', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '25.070239', '102.729044', 0);
INSERT INTO `cms_city` VALUES ('101290115', 'guandu', '官渡', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '25.021211', '102.723437', 0);
INSERT INTO `cms_city` VALUES ('101290116', 'xishan', '西山', 'yunnan', '云南', 'China', '中国', 'kunming', '昆明', '25.02436', '102.705904', 0);
INSERT INTO `cms_city` VALUES ('101290201', 'dali', '大理', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '25.589449', '100.225668', 0);
INSERT INTO `cms_city` VALUES ('101290202', 'yunlong', '云龙', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '25.884955', '99.369402', 0);
INSERT INTO `cms_city` VALUES ('101290203', 'yangbi', '漾濞', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '25.669543', '99.95797', 0);
INSERT INTO `cms_city` VALUES ('101290204', 'yongping', '永平', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '25.461281', '99.533536', 0);
INSERT INTO `cms_city` VALUES ('101290205', 'binchuan', '宾川', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '25.825904', '100.578957', 0);
INSERT INTO `cms_city` VALUES ('101290206', 'midu', '弥渡', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '25.342594', '100.490669', 0);
INSERT INTO `cms_city` VALUES ('101290207', 'xiangyun', '祥云', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '25.477072', '100.554025', 0);
INSERT INTO `cms_city` VALUES ('101290208', 'weishan', '巍山', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '25.230909', '100.30793', 0);
INSERT INTO `cms_city` VALUES ('101290209', 'jianchuan', '剑川', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '26.530066', '99.905887', 0);
INSERT INTO `cms_city` VALUES ('101290210', 'eryuan', '洱源', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '26.111184', '99.951708', 0);
INSERT INTO `cms_city` VALUES ('101290211', 'heqing', '鹤庆', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '26.55839', '100.173375', 0);
INSERT INTO `cms_city` VALUES ('101290212', 'nanjian', '南涧', 'yunnan', '云南', 'China', '中国', 'dali', '大理', '25.041279', '100.518683', 0);
INSERT INTO `cms_city` VALUES ('101290301', 'honghe', '红河', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '23.366775', '103.384182', 0);
INSERT INTO `cms_city` VALUES ('101290302', 'shiping', '石屏', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '23.712569', '102.484469', 0);
INSERT INTO `cms_city` VALUES ('101290303', 'jianshui', '建水', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '23.618387', '102.820493', 0);
INSERT INTO `cms_city` VALUES ('101290304', 'mile', '弥勒', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '24.40837', '103.436988', 0);
INSERT INTO `cms_city` VALUES ('101290305', 'yuanyang', '元阳', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '23.219773', '102.837056', 0);
INSERT INTO `cms_city` VALUES ('101290306', 'lvchun', '绿春', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '22.99352', '102.39286', 0);
INSERT INTO `cms_city` VALUES ('101290307', 'kaiyuan', '开远', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '23.713832', '103.258679', 0);
INSERT INTO `cms_city` VALUES ('101290308', 'gejiu', '个旧', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '23.360383', '103.154752', 0);
INSERT INTO `cms_city` VALUES ('101290309', 'mengzi', '蒙自', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '23.366843', '103.385005', 0);
INSERT INTO `cms_city` VALUES ('101290310', 'pingbian', '屏边', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '22.987013', '103.687229', 0);
INSERT INTO `cms_city` VALUES ('101290311', 'luxi', '泸西', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '24.532368', '103.759622', 0);
INSERT INTO `cms_city` VALUES ('101290312', 'jinping', '金平', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '22.779982', '103.228359', 0);
INSERT INTO `cms_city` VALUES ('101290313', 'hekou', '河口', 'yunnan', '云南', 'China', '中国', 'honghe', '红河', '22.507563', '103.961593', 0);
INSERT INTO `cms_city` VALUES ('101290401', 'qujing', '曲靖', 'yunnan', '云南', 'China', '中国', 'qujing', '曲靖', '25.501557', '103.797851', 0);
INSERT INTO `cms_city` VALUES ('101290402', 'zhanyi', '沾益', 'yunnan', '云南', 'China', '中国', 'qujing', '曲靖', '25.600878', '103.819262', 0);
INSERT INTO `cms_city` VALUES ('101290403', 'luliang', '陆良', 'yunnan', '云南', 'China', '中国', 'qujing', '曲靖', '25.022878', '103.655233', 0);
INSERT INTO `cms_city` VALUES ('101290404', 'fuyuan', '富源', 'yunnan', '云南', 'China', '中国', 'qujing', '曲靖', '25.67064', '104.25692', 0);
INSERT INTO `cms_city` VALUES ('101290405', 'malong', '马龙', 'yunnan', '云南', 'China', '中国', 'qujing', '曲靖', '25.429451', '103.578755', 0);
INSERT INTO `cms_city` VALUES ('101290406', 'shizong', '师宗', 'yunnan', '云南', 'China', '中国', 'qujing', '曲靖', '24.825681', '103.993808', 0);
INSERT INTO `cms_city` VALUES ('101290407', 'luoping', '罗平', 'yunnan', '云南', 'China', '中国', 'qujing', '曲靖', '24.885708', '104.309263', 0);
INSERT INTO `cms_city` VALUES ('101290408', 'huize', '会泽', 'yunnan', '云南', 'China', '中国', 'qujing', '曲靖', '26.412861', '103.300041', 0);
INSERT INTO `cms_city` VALUES ('101290409', 'xuanwei', '宣威', 'yunnan', '云南', 'China', '中国', 'qujing', '曲靖', '26.227777', '104.09554', 0);
INSERT INTO `cms_city` VALUES ('101290410', 'qilin', '麒麟', 'yunnan', '云南', 'China', '中国', 'qujing', '曲靖', '25.501269', '103.798054', 0);
INSERT INTO `cms_city` VALUES ('101290501', 'baoshan', '保山', 'yunnan', '云南', 'China', '中国', 'baoshan', '保山', '25.111802', '99.167133', 0);
INSERT INTO `cms_city` VALUES ('101290502', 'longyang', '隆阳', 'yunnan', '云南', 'China', '中国', 'baoshan', '保山', '25.112144', '99.165825', 0);
INSERT INTO `cms_city` VALUES ('101290503', 'longling', '龙陵', 'yunnan', '云南', 'China', '中国', 'baoshan', '保山', '24.591912', '98.693567', 0);
INSERT INTO `cms_city` VALUES ('101290504', 'sidian', '施甸', 'yunnan', '云南', 'China', '中国', 'baoshan', '保山', '24.730847', '99.183758', 0);
INSERT INTO `cms_city` VALUES ('101290505', 'changning', '昌宁', 'yunnan', '云南', 'China', '中国', 'baoshan', '保山', '24.823662', '99.612344', 0);
INSERT INTO `cms_city` VALUES ('101290506', 'tengchong', '腾冲', 'yunnan', '云南', 'China', '中国', 'baoshan', '保山', '25.01757', '98.497292', 0);
INSERT INTO `cms_city` VALUES ('101290601', 'wenshan', '文山', 'yunnan', '云南', 'China', '中国', 'wenshan', '文山', '23.36951', '104.24401', 0);
INSERT INTO `cms_city` VALUES ('101290602', 'xichou', '西畴', 'yunnan', '云南', 'China', '中国', 'wenshan', '文山', '23.437439', '104.675711', 0);
INSERT INTO `cms_city` VALUES ('101290603', 'maguan', '马关', 'yunnan', '云南', 'China', '中国', 'wenshan', '文山', '23.011723', '104.398619', 0);
INSERT INTO `cms_city` VALUES ('101290604', 'malipo', '麻栗坡', 'yunnan', '云南', 'China', '中国', 'wenshan', '文山', '23.124202', '104.701899', 0);
INSERT INTO `cms_city` VALUES ('101290605', 'yanshan', '砚山', 'yunnan', '云南', 'China', '中国', 'wenshan', '文山', '23.612301', '104.343989', 0);
INSERT INTO `cms_city` VALUES ('101290606', 'qiubei', '丘北', 'yunnan', '云南', 'China', '中国', 'wenshan', '文山', '24.040982', '104.194366', 0);
INSERT INTO `cms_city` VALUES ('101290607', 'guangnan', '广南', 'yunnan', '云南', 'China', '中国', 'wenshan', '文山', '24.050272', '105.056684', 0);
INSERT INTO `cms_city` VALUES ('101290608', 'funing', '富宁', 'yunnan', '云南', 'China', '中国', 'wenshan', '文山', '23.626494', '105.62856', 0);
INSERT INTO `cms_city` VALUES ('101290701', 'yuxi', '玉溪', 'yunnan', '云南', 'China', '中国', 'yuxi', '玉溪', '24.350461', '102.543907', 0);
INSERT INTO `cms_city` VALUES ('101290702', 'chengjiang', '澄江', 'yunnan', '云南', 'China', '中国', 'yuxi', '玉溪', '24.669679', '102.916652', 0);
INSERT INTO `cms_city` VALUES ('101290703', 'jiangchuan', '江川', 'yunnan', '云南', 'China', '中国', 'yuxi', '玉溪', '24.291006', '102.749839', 0);
INSERT INTO `cms_city` VALUES ('101290704', 'tonghai', '通海', 'yunnan', '云南', 'China', '中国', 'yuxi', '玉溪', '24.112205', '102.760039', 0);
INSERT INTO `cms_city` VALUES ('101290705', 'huaning', '华宁', 'yunnan', '云南', 'China', '中国', 'yuxi', '玉溪', '24.189807', '102.928982', 0);
INSERT INTO `cms_city` VALUES ('101290706', 'xinping', '新平', 'yunnan', '云南', 'China', '中国', 'yuxi', '玉溪', '24.0664', '101.990903', 0);
INSERT INTO `cms_city` VALUES ('101290707', 'yimen', '易门', 'yunnan', '云南', 'China', '中国', 'yuxi', '玉溪', '24.669598', '102.16211', 0);
INSERT INTO `cms_city` VALUES ('101290708', 'eshan', '峨山', 'yunnan', '云南', 'China', '中国', 'yuxi', '玉溪', '24.173256', '102.404358', 0);
INSERT INTO `cms_city` VALUES ('101290709', 'yuanjiang', '元江', 'yunnan', '云南', 'China', '中国', 'yuxi', '玉溪', '23.597618', '101.999658', 0);
INSERT INTO `cms_city` VALUES ('101290710', 'hongta', '红塔', 'yunnan', '云南', 'China', '中国', 'yuxi', '玉溪', '24.350753', '102.543468', 0);
INSERT INTO `cms_city` VALUES ('101290801', 'chuxiong', '楚雄', 'yunnan', '云南', 'China', '中国', 'chuxiong', '楚雄', '25.041988', '101.546046', 0);
INSERT INTO `cms_city` VALUES ('101290802', 'dayao', '大姚', 'yunnan', '云南', 'China', '中国', 'chuxiong', '楚雄', '25.722348', '101.323602', 0);
INSERT INTO `cms_city` VALUES ('101290803', 'yuanmou', '元谋', 'yunnan', '云南', 'China', '中国', 'chuxiong', '楚雄', '25.703313', '101.870837', 0);
INSERT INTO `cms_city` VALUES ('101290804', 'yaoan', '姚安', 'yunnan', '云南', 'China', '中国', 'chuxiong', '楚雄', '25.505403', '101.238399', 0);
INSERT INTO `cms_city` VALUES ('101290805', 'mouding', '牟定', 'yunnan', '云南', 'China', '中国', 'chuxiong', '楚雄', '25.312111', '101.543044', 0);
INSERT INTO `cms_city` VALUES ('101290806', 'nanhua', '南华', 'yunnan', '云南', 'China', '中国', 'chuxiong', '楚雄', '25.192408', '101.274991', 0);
INSERT INTO `cms_city` VALUES ('101290807', 'wuding', '武定', 'yunnan', '云南', 'China', '中国', 'chuxiong', '楚雄', '25.5301', '102.406785', 0);
INSERT INTO `cms_city` VALUES ('101290808', 'lufeng', '禄丰', 'yunnan', '云南', 'China', '中国', 'chuxiong', '楚雄', '25.14327', '102.075694', 0);
INSERT INTO `cms_city` VALUES ('101290809', 'shuangbai', '双柏', 'yunnan', '云南', 'China', '中国', 'chuxiong', '楚雄', '24.685094', '101.63824', 0);
INSERT INTO `cms_city` VALUES ('101290810', 'yongren', '永仁', 'yunnan', '云南', 'China', '中国', 'chuxiong', '楚雄', '26.056316', '101.671175', 0);
INSERT INTO `cms_city` VALUES ('101290901', 'puer', '普洱', 'yunnan', '云南', 'China', '中国', 'puer', '普洱', '22.777321', '100.972344', 0);
INSERT INTO `cms_city` VALUES ('101290902', 'jinggu', '景谷', 'yunnan', '云南', 'China', '中国', 'puer', '普洱', '23.500278', '100.701425', 0);
INSERT INTO `cms_city` VALUES ('101290903', 'jingdong', '景东', 'yunnan', '云南', 'China', '中国', 'puer', '普洱', '24.448523', '100.840011', 0);
INSERT INTO `cms_city` VALUES ('101290904', 'lancang', '澜沧', 'yunnan', '云南', 'China', '中国', 'puer', '普洱', '22.553083', '99.931201', 0);
INSERT INTO `cms_city` VALUES ('101290905', 'simao', '思茅', 'yunnan', '云南', 'China', '中国', 'puer', '普洱', '22.776595', '100.973227', 0);
INSERT INTO `cms_city` VALUES ('101290906', 'mojiang', '墨江', 'yunnan', '云南', 'China', '中国', 'puer', '普洱', '23.428165', '101.687606', 0);
INSERT INTO `cms_city` VALUES ('101290907', 'jiangcheng', '江城', 'yunnan', '云南', 'China', '中国', 'puer', '普洱', '22.58336', '101.859144', 0);
INSERT INTO `cms_city` VALUES ('101290908', 'menglian', '孟连', 'yunnan', '云南', 'China', '中国', 'puer', '普洱', '22.325924', '99.585406', 0);
INSERT INTO `cms_city` VALUES ('101290909', 'ximeng', '西盟', 'yunnan', '云南', 'China', '中国', 'puer', '普洱', '22.644423', '99.594372', 0);
INSERT INTO `cms_city` VALUES ('101290911', 'zhenyuan', '镇沅', 'yunnan', '云南', 'China', '中国', 'puer', '普洱', '24.005712', '101.108512', 0);
INSERT INTO `cms_city` VALUES ('101290912', 'ninger', '宁洱', 'yunnan', '云南', 'China', '中国', 'puer', '普洱', '23.062507', '101.04524', 0);
INSERT INTO `cms_city` VALUES ('101291001', 'zhaotong', '昭通', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '27.336999', '103.717216', 0);
INSERT INTO `cms_city` VALUES ('101291002', 'ludian', '鲁甸', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '27.191637', '103.549333', 0);
INSERT INTO `cms_city` VALUES ('101291003', 'yiliang', '彝良', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '27.627425', '104.048492', 0);
INSERT INTO `cms_city` VALUES ('101291004', 'zhenxiong', '镇雄', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '27.436267', '104.873055', 0);
INSERT INTO `cms_city` VALUES ('101291005', 'weixin', '威信', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '27.843381', '105.04869', 0);
INSERT INTO `cms_city` VALUES ('101291006', 'qiaojia', '巧家', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '26.9117', '102.929284', 0);
INSERT INTO `cms_city` VALUES ('101291007', 'suijiang', '绥江', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '28.599953', '103.961095', 0);
INSERT INTO `cms_city` VALUES ('101291008', 'yongshan', '永善', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '28.231526', '103.63732', 0);
INSERT INTO `cms_city` VALUES ('101291009', 'yanjin', '盐津', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '28.106923', '104.23506', 0);
INSERT INTO `cms_city` VALUES ('101291010', 'daguan', '大关', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '27.747114', '103.891608', 0);
INSERT INTO `cms_city` VALUES ('101291011', 'shuifu', '水富', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '28.629688', '104.415376', 0);
INSERT INTO `cms_city` VALUES ('101291012', 'zhaoyang', '昭阳', 'yunnan', '云南', 'China', '中国', 'zhaotong', '昭通', '27.336636', '103.717267', 0);
INSERT INTO `cms_city` VALUES ('101291101', 'lincang', '临沧', 'yunnan', '云南', 'China', '中国', 'lincang', '临沧', '23.886567', '100.08697', 0);
INSERT INTO `cms_city` VALUES ('101291102', 'cangyuan', '沧源', 'yunnan', '云南', 'China', '中国', 'lincang', '临沧', '23.146887', '99.2474', 0);
INSERT INTO `cms_city` VALUES ('101291103', 'gengma', '耿马', 'yunnan', '云南', 'China', '中国', 'lincang', '临沧', '23.534579', '99.402495', 0);
INSERT INTO `cms_city` VALUES ('101291104', 'shuangjiang', '双江', 'yunnan', '云南', 'China', '中国', 'lincang', '临沧', '23.477476', '99.824419', 0);
INSERT INTO `cms_city` VALUES ('101291105', 'fengqing', '凤庆', 'yunnan', '云南', 'China', '中国', 'lincang', '临沧', '24.592738', '99.91871', 0);
INSERT INTO `cms_city` VALUES ('101291106', 'yongde', '永德', 'yunnan', '云南', 'China', '中国', 'lincang', '临沧', '24.028159', '99.253679', 0);
INSERT INTO `cms_city` VALUES ('101291107', 'yunxian', '云县', 'yunnan', '云南', 'China', '中国', 'lincang', '临沧', '24.439026', '100.125637', 0);
INSERT INTO `cms_city` VALUES ('101291108', 'zhenkang', '镇康', 'yunnan', '云南', 'China', '中国', 'lincang', '临沧', '23.761415', '98.82743', 0);
INSERT INTO `cms_city` VALUES ('101291109', 'linxiang', '临翔', 'yunnan', '云南', 'China', '中国', 'lincang', '临沧', '23.886562', '100.086486', 0);
INSERT INTO `cms_city` VALUES ('101291201', 'nujiang', '怒江', 'yunnan', '云南', 'China', '中国', 'nujiang', '怒江', '25.850949', '98.854304', 0);
INSERT INTO `cms_city` VALUES ('101291203', 'fugong', '福贡', 'yunnan', '云南', 'China', '中国', 'nujiang', '怒江', '26.902738', '98.867413', 0);
INSERT INTO `cms_city` VALUES ('101291204', 'lanping', '兰坪', 'yunnan', '云南', 'China', '中国', 'nujiang', '怒江', '26.453839', '99.421378', 0);
INSERT INTO `cms_city` VALUES ('101291205', 'lushui', '泸水', 'yunnan', '云南', 'China', '中国', 'nujiang', '怒江', '25.851142', '98.854063', 0);
INSERT INTO `cms_city` VALUES ('101291207', 'gongshan', '贡山', 'yunnan', '云南', 'China', '中国', 'nujiang', '怒江', '27.738054', '98.666141', 0);
INSERT INTO `cms_city` VALUES ('101291301', 'xianggelila', '香格里拉', 'yunnan', '云南', 'China', '中国', 'diqing', '迪庆', '27.825804', '99.708667', 0);
INSERT INTO `cms_city` VALUES ('101291302', 'deqin', '德钦', 'yunnan', '云南', 'China', '中国', 'diqing', '迪庆', '28.483272', '98.91506', 0);
INSERT INTO `cms_city` VALUES ('101291303', 'weixi', '维西', 'yunnan', '云南', 'China', '中国', 'diqing', '迪庆', '27.180948', '99.286355', 0);
INSERT INTO `cms_city` VALUES ('101291305', 'diqing', '迪庆', 'yunnan', '云南', 'China', '中国', 'diqing', '迪庆', '27.826853', '99.706463', 0);
INSERT INTO `cms_city` VALUES ('101291401', 'lijiang', '丽江', 'yunnan', '云南', 'China', '中国', 'lijiang', '丽江', '26.872108', '100.233026', 0);
INSERT INTO `cms_city` VALUES ('101291402', 'yongsheng', '永胜', 'yunnan', '云南', 'China', '中国', 'lijiang', '丽江', '26.685623', '100.750901', 0);
INSERT INTO `cms_city` VALUES ('101291403', 'huaping', '华坪', 'yunnan', '云南', 'China', '中国', 'lijiang', '丽江', '26.628834', '101.267796', 0);
INSERT INTO `cms_city` VALUES ('101291404', 'ninglang', '宁蒗', 'yunnan', '云南', 'China', '中国', 'lijiang', '丽江', '27.281109', '100.852427', 0);
INSERT INTO `cms_city` VALUES ('101291405', 'gucheng', '古城', 'yunnan', '云南', 'China', '中国', 'lijiang', '丽江', '26.872229', '100.234412', 0);
INSERT INTO `cms_city` VALUES ('101291406', 'yulong', '玉龙', 'yunnan', '云南', 'China', '中国', 'lijiang', '丽江', '26.830593', '100.238312', 0);
INSERT INTO `cms_city` VALUES ('101291501', 'dehong', '德宏', 'yunnan', '云南', 'China', '中国', 'dehong', '德宏', '24.436694', '98.578363', 0);
INSERT INTO `cms_city` VALUES ('101291503', 'longchuan', '陇川', 'yunnan', '云南', 'China', '中国', 'dehong', '德宏', '24.184065', '97.794441', 0);
INSERT INTO `cms_city` VALUES ('101291504', 'yingjiang', '盈江', 'yunnan', '云南', 'China', '中国', 'dehong', '德宏', '24.709541', '97.93393', 0);
INSERT INTO `cms_city` VALUES ('101291506', 'ruili', '瑞丽', 'yunnan', '云南', 'China', '中国', 'dehong', '德宏', '24.010734', '97.855883', 0);
INSERT INTO `cms_city` VALUES ('101291507', 'lianghe', '梁河', 'yunnan', '云南', 'China', '中国', 'dehong', '德宏', '24.80742', '98.298196', 0);
INSERT INTO `cms_city` VALUES ('101291508', 'mangshi', '芒市', 'yunnan', '云南', 'China', '中国', 'dehong', '德宏', '24.436699', '98.577608', 0);
INSERT INTO `cms_city` VALUES ('101291601', 'jinghong', '景洪', 'yunnan', '云南', 'China', '中国', 'xishuangbanna', '西双版纳', '22.002087', '100.797947', 0);
INSERT INTO `cms_city` VALUES ('101291602', 'xishuangbanna', '西双版纳', 'yunnan', '云南', 'China', '中国', 'xishuangbanna', '西双版纳', '22.001724', '100.797941', 0);
INSERT INTO `cms_city` VALUES ('101291603', 'menghai', '勐海', 'yunnan', '云南', 'China', '中国', 'xishuangbanna', '西双版纳', '21.955866', '100.448288', 0);
INSERT INTO `cms_city` VALUES ('101291605', 'mengla', '勐腊', 'yunnan', '云南', 'China', '中国', 'xishuangbanna', '西双版纳', '21.479449', '101.567051', 0);
INSERT INTO `cms_city` VALUES ('101300101', 'nanning', '南宁', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '22.82402', '108.320004', 0);
INSERT INTO `cms_city` VALUES ('101300102', 'xingning', '兴宁', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '22.819511', '108.320189', 0);
INSERT INTO `cms_city` VALUES ('101300103', 'yongning', '邕宁', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '22.756598', '108.484251', 0);
INSERT INTO `cms_city` VALUES ('101300104', 'hengxian', '横县', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '22.68743', '109.270987', 0);
INSERT INTO `cms_city` VALUES ('101300105', 'longan', '隆安', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '23.174763', '107.688661', 0);
INSERT INTO `cms_city` VALUES ('101300106', 'mashan', '马山', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '23.711758', '108.172903', 0);
INSERT INTO `cms_city` VALUES ('101300107', 'shanglin', '上林', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '23.431769', '108.603937', 0);
INSERT INTO `cms_city` VALUES ('101300108', 'wuming', '武鸣', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '23.157163', '108.280717', 0);
INSERT INTO `cms_city` VALUES ('101300109', 'binyang', '宾阳', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '23.216884', '108.816735', 0);
INSERT INTO `cms_city` VALUES ('101300110', 'qingxiu', '青秀', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '22.816614', '108.346113', 0);
INSERT INTO `cms_city` VALUES ('101300111', 'jiangnan', '江南', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '22.799593', '108.310478', 0);
INSERT INTO `cms_city` VALUES ('101300112', 'xixiangtang', '西乡塘', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '22.832779', '108.306903', 0);
INSERT INTO `cms_city` VALUES ('101300113', 'liangqing', '良庆', 'guangxi', '广西', 'China', '中国', 'nanning', '南宁', '22.75909', '108.322102', 0);
INSERT INTO `cms_city` VALUES ('101300201', 'chongzuo', '崇左', 'guangxi', '广西', 'China', '中国', 'chongzuo', '崇左', '22.404108', '107.353926', 0);
INSERT INTO `cms_city` VALUES ('101300202', 'tiandeng', '天等', 'guangxi', '广西', 'China', '中国', 'chongzuo', '崇左', '23.082484', '107.142441', 0);
INSERT INTO `cms_city` VALUES ('101300203', 'longzhou', '龙州', 'guangxi', '广西', 'China', '中国', 'chongzuo', '崇左', '22.343716', '106.857502', 0);
INSERT INTO `cms_city` VALUES ('101300204', 'pingxiang', '凭祥', 'guangxi', '广西', 'China', '中国', 'chongzuo', '崇左', '22.108882', '106.759038', 0);
INSERT INTO `cms_city` VALUES ('101300205', 'daxin', '大新', 'guangxi', '广西', 'China', '中国', 'chongzuo', '崇左', '22.833369', '107.200803', 0);
INSERT INTO `cms_city` VALUES ('101300206', 'fusui', '扶绥', 'guangxi', '广西', 'China', '中国', 'chongzuo', '崇左', '22.635821', '107.911533', 0);
INSERT INTO `cms_city` VALUES ('101300207', 'ningming', '宁明', 'guangxi', '广西', 'China', '中国', 'chongzuo', '崇左', '22.131353', '107.067616', 0);
INSERT INTO `cms_city` VALUES ('101300208', 'jiangzhou', '江州', 'guangxi', '广西', 'China', '中国', 'chongzuo', '崇左', '22.40469', '107.354443', 0);
INSERT INTO `cms_city` VALUES ('101300301', 'liuzhou', '柳州', 'guangxi', '广西', 'China', '中国', 'liuzhou', '柳州', '24.314617', '109.411703', 0);
INSERT INTO `cms_city` VALUES ('101300302', 'liucheng', '柳城', 'guangxi', '广西', 'China', '中国', 'liuzhou', '柳州', '24.655121', '109.245812', 0);
INSERT INTO `cms_city` VALUES ('101300303', 'chengzhong', '城中', 'guangxi', '广西', 'China', '中国', 'liuzhou', '柳州', '24.312324', '109.411749', 0);
INSERT INTO `cms_city` VALUES ('101300304', 'luzhai', '鹿寨', 'guangxi', '广西', 'China', '中国', 'liuzhou', '柳州', '24.483405', '109.740805', 0);
INSERT INTO `cms_city` VALUES ('101300305', 'liujiang', '柳江', 'guangxi', '广西', 'China', '中国', 'liuzhou', '柳州', '24.257512', '109.334503', 0);
INSERT INTO `cms_city` VALUES ('101300306', 'rongan', '融安', 'guangxi', '广西', 'China', '中国', 'liuzhou', '柳州', '25.214703', '109.403621', 0);
INSERT INTO `cms_city` VALUES ('101300307', 'rongshui', '融水', 'guangxi', '广西', 'China', '中国', 'liuzhou', '柳州', '25.068812', '109.252744', 0);
INSERT INTO `cms_city` VALUES ('101300308', 'sanjiang', '三江', 'guangxi', '广西', 'China', '中国', 'liuzhou', '柳州', '25.78553', '109.614846', 0);
INSERT INTO `cms_city` VALUES ('101300309', 'yufeng', '鱼峰', 'guangxi', '广西', 'China', '中国', 'liuzhou', '柳州', '24.303848', '109.415364', 0);
INSERT INTO `cms_city` VALUES ('101300310', 'liunan', '柳南', 'guangxi', '广西', 'China', '中国', 'liuzhou', '柳州', '24.287013', '109.395936', 0);
INSERT INTO `cms_city` VALUES ('101300311', 'liubei', '柳北', 'guangxi', '广西', 'China', '中国', 'liuzhou', '柳州', '24.359145', '109.406577', 0);
INSERT INTO `cms_city` VALUES ('101300401', 'laibin', '来宾', 'guangxi', '广西', 'China', '中国', 'laibin', '来宾', '23.733766', '109.229772', 0);
INSERT INTO `cms_city` VALUES ('101300402', 'xicheng', '忻城', 'guangxi', '广西', 'China', '中国', 'laibin', '来宾', '24.064779', '108.667361', 0);
INSERT INTO `cms_city` VALUES ('101300403', 'jinxiu', '金秀', 'guangxi', '广西', 'China', '中国', 'laibin', '来宾', '24.134941', '110.188556', 0);
INSERT INTO `cms_city` VALUES ('101300404', 'xiangzhou', '象州', 'guangxi', '广西', 'China', '中国', 'laibin', '来宾', '23.959824', '109.684555', 0);
INSERT INTO `cms_city` VALUES ('101300405', 'wuxuan', '武宣', 'guangxi', '广西', 'China', '中国', 'laibin', '来宾', '23.604162', '109.66287', 0);
INSERT INTO `cms_city` VALUES ('101300406', 'heshan', '合山', 'guangxi', '广西', 'China', '中国', 'laibin', '来宾', '23.81311', '108.88858', 0);
INSERT INTO `cms_city` VALUES ('101300407', 'xingbin', '兴宾', 'guangxi', '广西', 'China', '中国', 'laibin', '来宾', '23.732926', '109.230541', 0);
INSERT INTO `cms_city` VALUES ('101300501', 'guilin', '桂林', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.274215', '110.299121', 0);
INSERT INTO `cms_city` VALUES ('101300502', 'xiufeng', '秀峰', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.278544', '110.292445', 0);
INSERT INTO `cms_city` VALUES ('101300503', 'longsheng', '龙胜', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.796428', '110.009423', 0);
INSERT INTO `cms_city` VALUES ('101300504', 'yongfu', '永福', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '24.986692', '109.989208', 0);
INSERT INTO `cms_city` VALUES ('101300505', 'lingui', '临桂', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.246257', '110.205487', 0);
INSERT INTO `cms_city` VALUES ('101300506', 'xingan', '兴安', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.609554', '110.670783', 0);
INSERT INTO `cms_city` VALUES ('101300507', 'lingchuan', '灵川', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.408541', '110.325712', 0);
INSERT INTO `cms_city` VALUES ('101300508', 'quanzhou', '全州', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.929897', '111.072989', 0);
INSERT INTO `cms_city` VALUES ('101300509', 'guanyang', '灌阳', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.489098', '111.160248', 0);
INSERT INTO `cms_city` VALUES ('101300510', 'yangshuo', '阳朔', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '24.77534', '110.494699', 0);
INSERT INTO `cms_city` VALUES ('101300511', 'gongcheng', '恭城', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '24.833612', '110.82952', 0);
INSERT INTO `cms_city` VALUES ('101300512', 'pingle', '平乐', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '24.632216', '110.642821', 0);
INSERT INTO `cms_city` VALUES ('101300513', 'lipu', '荔浦', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '24.497786', '110.400149', 0);
INSERT INTO `cms_city` VALUES ('101300514', 'ziyuan', '资源', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '26.0342', '110.642587', 0);
INSERT INTO `cms_city` VALUES ('101300515', 'diecai', '叠彩', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.301334', '110.300783', 0);
INSERT INTO `cms_city` VALUES ('101300516', 'xiangshan', '象山', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.261986', '110.284882', 0);
INSERT INTO `cms_city` VALUES ('101300517', 'qixing', '七星', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.254339', '110.317577', 0);
INSERT INTO `cms_city` VALUES ('101300518', 'yanshan', '雁山', 'guangxi', '广西', 'China', '中国', 'guilin', '桂林', '25.077646', '110.305667', 0);
INSERT INTO `cms_city` VALUES ('101300601', 'wuzhou', '梧州', 'guangxi', '广西', 'China', '中国', 'wuzhou', '梧州', '23.474803', '111.297604', 0);
INSERT INTO `cms_city` VALUES ('101300602', 'tengxian', '藤县', 'guangxi', '广西', 'China', '中国', 'wuzhou', '梧州', '23.373963', '110.931826', 0);
INSERT INTO `cms_city` VALUES ('101300603', 'wanxiu', '万秀', 'guangxi', '广西', 'China', '中国', 'wuzhou', '梧州', '23.471318', '111.315817', 0);
INSERT INTO `cms_city` VALUES ('101300604', 'cangwu', '苍梧', 'guangxi', '广西', 'China', '中国', 'wuzhou', '梧州', '23.845097', '111.544008', 0);
INSERT INTO `cms_city` VALUES ('101300605', 'mengshan', '蒙山', 'guangxi', '广西', 'China', '中国', 'wuzhou', '梧州', '24.199829', '110.5226', 0);
INSERT INTO `cms_city` VALUES ('101300606', 'cenxi', '岑溪', 'guangxi', '广西', 'China', '中国', 'wuzhou', '梧州', '22.918406', '110.998114', 0);
INSERT INTO `cms_city` VALUES ('101300607', 'changzhou', '长洲', 'guangxi', '广西', 'China', '中国', 'wuzhou', '梧州', '23.4777', '111.275678', 0);
INSERT INTO `cms_city` VALUES ('101300608', 'longwei', '龙圩', 'guangxi', '广西', 'China', '中国', 'wuzhou', '梧州', '23.40996', '111.246035', 0);
INSERT INTO `cms_city` VALUES ('101300701', 'hezhou', '贺州', 'guangxi', '广西', 'China', '中国', 'hezhou', '贺州', '24.414141', '111.552056', 0);
INSERT INTO `cms_city` VALUES ('101300702', 'zhaoping', '昭平', 'guangxi', '广西', 'China', '中国', 'hezhou', '贺州', '24.172958', '110.810865', 0);
INSERT INTO `cms_city` VALUES ('101300703', 'fuchuan', '富川', 'guangxi', '广西', 'China', '中国', 'hezhou', '贺州', '24.81896', '111.277228', 0);
INSERT INTO `cms_city` VALUES ('101300704', 'zhongshan', '钟山', 'guangxi', '广西', 'China', '中国', 'hezhou', '贺州', '24.528566', '111.303629', 0);
INSERT INTO `cms_city` VALUES ('101300705', 'babu', '八步', 'guangxi', '广西', 'China', '中国', 'hezhou', '贺州', '24.412446', '111.551991', 0);
INSERT INTO `cms_city` VALUES ('101300706', 'pinggui', '平桂', 'guangxi', '广西', 'China', '中国', 'hezhou', '贺州', '24.417148', '111.524014', 0);
INSERT INTO `cms_city` VALUES ('101300801', 'guigang', '贵港', 'guangxi', '广西', 'China', '中国', 'guigang', '贵港', '23.0936', '109.602146', 0);
INSERT INTO `cms_city` VALUES ('101300802', 'guiping', '桂平', 'guangxi', '广西', 'China', '中国', 'guigang', '贵港', '23.382473', '110.074668', 0);
INSERT INTO `cms_city` VALUES ('101300803', 'pingnan', '平南', 'guangxi', '广西', 'China', '中国', 'guigang', '贵港', '23.544546', '110.397485', 0);
INSERT INTO `cms_city` VALUES ('101300804', 'gangbei', '港北', 'guangxi', '广西', 'China', '中国', 'guigang', '贵港', '23.107677', '109.59481', 0);
INSERT INTO `cms_city` VALUES ('101300805', 'gangnan', '港南', 'guangxi', '广西', 'China', '中国', 'guigang', '贵港', '23.067516', '109.604665', 0);
INSERT INTO `cms_city` VALUES ('101300806', 'tantang', '覃塘', 'guangxi', '广西', 'China', '中国', 'guigang', '贵港', '23.132815', '109.415697', 0);
INSERT INTO `cms_city` VALUES ('101300901', 'yulin', '玉林', 'guangxi', '广西', 'China', '中国', 'yulin', '玉林', '22.63136', '110.154393', 0);
INSERT INTO `cms_city` VALUES ('101300902', 'bobai', '博白', 'guangxi', '广西', 'China', '中国', 'yulin', '玉林', '22.271285', '109.980004', 0);
INSERT INTO `cms_city` VALUES ('101300903', 'beiliu', '北流', 'guangxi', '广西', 'China', '中国', 'yulin', '玉林', '22.701648', '110.348052', 0);
INSERT INTO `cms_city` VALUES ('101300904', 'rongxian', '容县', 'guangxi', '广西', 'China', '中国', 'yulin', '玉林', '22.856435', '110.552467', 0);
INSERT INTO `cms_city` VALUES ('101300905', 'luchuan', '陆川', 'guangxi', '广西', 'China', '中国', 'yulin', '玉林', '22.321054', '110.264842', 0);
INSERT INTO `cms_city` VALUES ('101300906', 'xingye', '兴业', 'guangxi', '广西', 'China', '中国', 'yulin', '玉林', '22.74187', '109.877768', 0);
INSERT INTO `cms_city` VALUES ('101300907', 'yuzhou', '玉州', 'guangxi', '广西', 'China', '中国', 'yulin', '玉林', '22.632132', '110.154912', 0);
INSERT INTO `cms_city` VALUES ('101300908', 'fumian', '福绵', 'guangxi', '广西', 'China', '中国', 'yulin', '玉林', '22.58163', '110.054155', 0);
INSERT INTO `cms_city` VALUES ('101301001', 'baise', '百色', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '23.897742', '106.616285', 0);
INSERT INTO `cms_city` VALUES ('101301002', 'napo', '那坡', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '23.400785', '105.833553', 0);
INSERT INTO `cms_city` VALUES ('101301003', 'tianyang', '田阳', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '23.736079', '106.904315', 0);
INSERT INTO `cms_city` VALUES ('101301004', 'debao', '德保', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '23.321464', '106.618164', 0);
INSERT INTO `cms_city` VALUES ('101301005', 'jingxi', '靖西', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '23.134766', '106.417549', 0);
INSERT INTO `cms_city` VALUES ('101301006', 'tiandong', '田东', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '23.600444', '107.12426', 0);
INSERT INTO `cms_city` VALUES ('101301007', 'pingguo', '平果', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '23.320479', '107.580403', 0);
INSERT INTO `cms_city` VALUES ('101301008', 'longlin', '隆林', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '24.774318', '105.342363', 0);
INSERT INTO `cms_city` VALUES ('101301009', 'xilin', '西林', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '24.492041', '105.095025', 0);
INSERT INTO `cms_city` VALUES ('101301010', 'leye', '乐业', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '24.782204', '106.559638', 0);
INSERT INTO `cms_city` VALUES ('101301011', 'lingyun', '凌云', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '24.345643', '106.56487', 0);
INSERT INTO `cms_city` VALUES ('101301012', 'tianlin', '田林', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '24.290262', '106.235047', 0);
INSERT INTO `cms_city` VALUES ('101301013', 'youjiang', '右江', 'guangxi', '广西', 'China', '中国', 'baise', '百色', '23.897675', '106.615727', 0);
INSERT INTO `cms_city` VALUES ('101301101', 'qinzhou', '钦州', 'guangxi', '广西', 'China', '中国', 'qinzhou', '钦州', '21.967127', '108.624175', 0);
INSERT INTO `cms_city` VALUES ('101301102', 'pubei', '浦北', 'guangxi', '广西', 'China', '中国', 'qinzhou', '钦州', '22.268335', '109.556341', 0);
INSERT INTO `cms_city` VALUES ('101301103', 'lingshan', '灵山', 'guangxi', '广西', 'China', '中国', 'qinzhou', '钦州', '22.418041', '109.293468', 0);
INSERT INTO `cms_city` VALUES ('101301104', 'qinnan', '钦南', 'guangxi', '广西', 'China', '中国', 'qinzhou', '钦州', '21.966808', '108.626629', 0);
INSERT INTO `cms_city` VALUES ('101301105', 'qinbei', '钦北', 'guangxi', '广西', 'China', '中国', 'qinzhou', '钦州', '22.132761', '108.44911', 0);
INSERT INTO `cms_city` VALUES ('101301201', 'hechi', '河池', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '24.695899', '108.062105', 0);
INSERT INTO `cms_city` VALUES ('101301202', 'tiane', '天峨', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '24.985964', '107.174939', 0);
INSERT INTO `cms_city` VALUES ('101301203', 'donglan', '东兰', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '24.509367', '107.373696', 0);
INSERT INTO `cms_city` VALUES ('101301204', 'bama', '巴马', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '24.139538', '107.253126', 0);
INSERT INTO `cms_city` VALUES ('101301205', 'huanjiang', '环江', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '24.827628', '108.258669', 0);
INSERT INTO `cms_city` VALUES ('101301206', 'luocheng', '罗城', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '24.779327', '108.902453', 0);
INSERT INTO `cms_city` VALUES ('101301207', 'yizhou', '宜州', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '24.492193', '108.653965', 0);
INSERT INTO `cms_city` VALUES ('101301208', 'fengshan', '凤山', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '24.544561', '107.044592', 0);
INSERT INTO `cms_city` VALUES ('101301209', 'nandan', '南丹', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '24.983192', '107.546605', 0);
INSERT INTO `cms_city` VALUES ('101301210', 'andu', '都安', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '23.934964', '108.102761', 0);
INSERT INTO `cms_city` VALUES ('101301211', 'dahua', '大化', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '23.739596', '107.9945', 0);
INSERT INTO `cms_city` VALUES ('101301212', 'jinchengjiang', '金城江', 'guangxi', '广西', 'China', '中国', 'hechi', '河池', '24.695625', '108.062131', 0);
INSERT INTO `cms_city` VALUES ('101301301', 'beihai', '北海', 'guangxi', '广西', 'China', '中国', 'beihai', '北海', '21.473343', '109.119254', 0);
INSERT INTO `cms_city` VALUES ('101301302', 'hepu', '合浦', 'guangxi', '广西', 'China', '中国', 'beihai', '北海', '21.663554', '109.200695', 0);
INSERT INTO `cms_city` VALUES ('101301304', 'haicheng', '海城', 'guangxi', '广西', 'China', '中国', 'beihai', '北海', '21.468443', '109.107529', 0);
INSERT INTO `cms_city` VALUES ('101301305', 'yinhai', '银海', 'guangxi', '广西', 'China', '中国', 'beihai', '北海', '21.444909', '109.118707', 0);
INSERT INTO `cms_city` VALUES ('101301306', 'tieshangang', '铁山港', 'guangxi', '广西', 'China', '中国', 'beihai', '北海', '21.5928', '109.450573', 0);
INSERT INTO `cms_city` VALUES ('101301401', 'fangchenggang', '防城港', 'guangxi', '广西', 'China', '中国', 'fangchenggang', '防城港', '21.614631', '108.345478', 0);
INSERT INTO `cms_city` VALUES ('101301402', 'shangsi', '上思', 'guangxi', '广西', 'China', '中国', 'fangchenggang', '防城港', '22.151423', '107.982139', 0);
INSERT INTO `cms_city` VALUES ('101301403', 'dongxing', '东兴', 'guangxi', '广西', 'China', '中国', 'fangchenggang', '防城港', '21.541172', '107.97017', 0);
INSERT INTO `cms_city` VALUES ('101301404', 'gangkou', '港口', 'guangxi', '广西', 'China', '中国', 'fangchenggang', '防城港', '21.614406', '108.346281', 0);
INSERT INTO `cms_city` VALUES ('101301405', 'fangcheng', '防城', 'guangxi', '广西', 'China', '中国', 'fangchenggang', '防城港', '21.764758', '108.358426', 0);
INSERT INTO `cms_city` VALUES ('101310101', 'haikou', '海口', 'hainan', '海南', 'China', '中国', 'haikou', '海口', '20.031971', '110.33119', 0);
INSERT INTO `cms_city` VALUES ('101310102', 'xiuying', '秀英', 'hainan', '海南', 'China', '中国', 'haikou', '海口', '20.008145', '110.282393', 0);
INSERT INTO `cms_city` VALUES ('101310103', 'longhua', '龙华', 'hainan', '海南', 'China', '中国', 'haikou', '海口', '20.031026', '110.330373', 0);
INSERT INTO `cms_city` VALUES ('101310104', 'qiongshan', '琼山', 'hainan', '海南', 'China', '中国', 'haikou', '海口', '20.001051', '110.354722', 0);
INSERT INTO `cms_city` VALUES ('101310105', 'meilan', '美兰', 'hainan', '海南', 'China', '中国', 'haikou', '海口', '20.03074', '110.356566', 0);
INSERT INTO `cms_city` VALUES ('101310201', 'sanya', '三亚', 'hainan', '海南', 'China', '中国', 'sanya', '三亚', '18.247872', '109.508268', 0);
INSERT INTO `cms_city` VALUES ('101310202', 'dongfang', '东方', 'hainan', '海南', 'China', '中国', 'dongfang', '东方', '19.10198', '108.653789', 0);
INSERT INTO `cms_city` VALUES ('101310203', 'lingao', '临高', 'hainan', '海南', 'China', '中国', 'lingao', '临高', '19.908293', '109.687697', 0);
INSERT INTO `cms_city` VALUES ('101310204', 'chengmai', '澄迈', 'hainan', '海南', 'China', '中国', 'chengmai', '澄迈', '19.737095', '110.007147', 0);
INSERT INTO `cms_city` VALUES ('101310205', 'danzhou', '儋州', 'hainan', '海南', 'China', '中国', 'zhanzhou', '儋州', '19.517486', '109.576782', 0);
INSERT INTO `cms_city` VALUES ('101310206', 'changjiang', '昌江', 'hainan', '海南', 'China', '中国', 'changjiang', '昌江', '19.260968', '109.053351', 0);
INSERT INTO `cms_city` VALUES ('101310207', 'baisha', '白沙', 'hainan', '海南', 'China', '中国', 'baisha', '白沙', '19.224584', '109.452606', 0);
INSERT INTO `cms_city` VALUES ('101310208', 'qiongzhong', '琼中', 'hainan', '海南', 'China', '中国', 'qiongzhong', '琼中', '19.03557', '109.839996', 0);
INSERT INTO `cms_city` VALUES ('101310209', 'dingan', '定安', 'hainan', '海南', 'China', '中国', 'dingan', '定安', '19.684966', '110.349235', 0);
INSERT INTO `cms_city` VALUES ('101310210', 'tunchang', '屯昌', 'hainan', '海南', 'China', '中国', 'tunchang', '屯昌', '19.362916', '110.102773', 0);
INSERT INTO `cms_city` VALUES ('101310211', 'qionghai', '琼海', 'hainan', '海南', 'China', '中国', 'qionghai', '琼海', '19.246011', '110.466785', 0);
INSERT INTO `cms_city` VALUES ('101310212', 'wenchang', '文昌', 'hainan', '海南', 'China', '中国', 'wenchang', '文昌', '19.612986', '110.753975', 0);
INSERT INTO `cms_city` VALUES ('101310213', 'haitang', '海棠', 'hainan', '海南', 'China', '中国', 'sanya', '三亚', '18.407516', '109.760778', 0);
INSERT INTO `cms_city` VALUES ('101310214', 'baoting', '保亭', 'hainan', '海南', 'China', '中国', 'baoting', '保亭', '18.636371', '109.70245', 0);
INSERT INTO `cms_city` VALUES ('101310215', 'wanning', '万宁', 'hainan', '海南', 'China', '中国', 'wanning', '万宁', '18.796216', '110.388793', 0);
INSERT INTO `cms_city` VALUES ('101310216', 'lingshui', '陵水', 'hainan', '海南', 'China', '中国', 'lingshui', '陵水', '18.505006', '110.037218', 0);
INSERT INTO `cms_city` VALUES ('101310218', 'jiyang', '吉阳', 'hainan', '海南', 'China', '中国', 'sanya', '三亚', '18.247436', '109.512081', 0);
INSERT INTO `cms_city` VALUES ('101310219', 'tianya', '天涯', 'hainan', '海南', 'China', '中国', 'sanya', '三亚', '18.24734', '109.506357', 0);
INSERT INTO `cms_city` VALUES ('101310221', 'ledong', '乐东', 'hainan', '海南', 'China', '中国', 'ledong', '乐东', '18.74758', '109.175444', 0);
INSERT INTO `cms_city` VALUES ('101310222', 'wuzhishan', '五指山', 'hainan', '海南', 'China', '中国', 'wuzhishan', '五指山', '18.776921', '109.516662', 0);
INSERT INTO `cms_city` VALUES ('101310223', 'yazhou', '崖州', 'hainan', '海南', 'China', '中国', 'sanya', '三亚', '18.352192', '109.174306', 0);
INSERT INTO `cms_city` VALUES ('101310301', 'sansha', '三沙', 'hainan', '海南', 'China', '中国', 'sansha', '三沙', '16.831039', '112.34882', 0);
INSERT INTO `cms_city` VALUES ('101310302', 'xisha', '西沙', 'hainan', '海南', 'China', '中国', 'sansha', '三沙', '16.204546', '111.792944', 0);
INSERT INTO `cms_city` VALUES ('101310303', 'zhongsha', '中沙', 'hainan', '海南', 'China', '中国', 'sansha', '三沙', '15.112856', '117.740071', 0);
INSERT INTO `cms_city` VALUES ('101310304', 'nansha', '南沙', 'hainan', '海南', 'China', '中国', 'sansha', '三沙', '11.471888', '116.749998', 0);
INSERT INTO `cms_city` VALUES ('101320101', 'hongkong', '香港', 'hongkong', '香港', 'China', '中国', 'hongkong', '香港', '22.307', '114.177', 0);
INSERT INTO `cms_city` VALUES ('101320102', 'jiulong', '九龙', 'hongkong', '香港', 'China', '中国', 'hongkong', '香港', '22.312373', '114.193047', 0);
INSERT INTO `cms_city` VALUES ('101320103', 'xinjie', '新界', 'hongkong', '香港', 'China', '中国', 'hongkong', '香港', '22.381', '114.188', 0);
INSERT INTO `cms_city` VALUES ('101330101', 'macao', '澳门', 'macao', '澳门', 'China', '中国', 'macao', '澳门', '22.202', '113.544', 0);
INSERT INTO `cms_city` VALUES ('101330102', 'dangzidao', '氹仔岛', 'macao', '澳门', 'China', '中国', 'macao', '澳门', '22.202', '113.544', 0);
INSERT INTO `cms_city` VALUES ('101330103', 'luhuandao', '路环岛', 'macao', '澳门', 'China', '中国', 'macao', '澳门', '22.202', '113.544', 0);
INSERT INTO `cms_city` VALUES ('101340101', 'taibeixian', '台北', 'taiwan', '台湾', 'China', '中国', 'taibei', '台北', '25.04', '121.516', 0);
INSERT INTO `cms_city` VALUES ('101340102', 'taoyuan', '桃园', 'taiwan', '台湾', 'China', '中国', 'taibei', '台北', '24.998', '121.306', 0);
INSERT INTO `cms_city` VALUES ('101340103', 'xinzhu', '新竹', 'taiwan', '台湾', 'China', '中国', 'taibei', '台北', '24.809', '120.958', 0);
INSERT INTO `cms_city` VALUES ('101340104', 'yilan', '宜兰', 'taiwan', '台湾', 'China', '中国', 'taibei', '台北', '24.757', '121.741', 0);
INSERT INTO `cms_city` VALUES ('101340201', 'gaoxiong', '高雄', 'taiwan', '台湾', 'China', '中国', 'gaoxiong', '高雄', '22.619', '120.276', 0);
INSERT INTO `cms_city` VALUES ('101340202', 'jiayi', '嘉义', 'taiwan', '台湾', 'China', '中国', 'gaoxiong', '高雄', '23.487', '120.441', 0);
INSERT INTO `cms_city` VALUES ('101340203', 'tainan', '台南', 'taiwan', '台湾', 'China', '中国', 'gaoxiong', '高雄', '23.004', '120.2', 0);
INSERT INTO `cms_city` VALUES ('101340204', 'taidong', '台东', 'taiwan', '台湾', 'China', '中国', 'gaoxiong', '高雄', '22.764', '121.151', 0);
INSERT INTO `cms_city` VALUES ('101340205', 'pingdong', '屏东', 'taiwan', '台湾', 'China', '中国', 'gaoxiong', '高雄', '22.682', '120.485', 0);
INSERT INTO `cms_city` VALUES ('101340401', 'taizhong', '台中', 'taiwan', '台湾', 'China', '中国', 'taizhong', '台中', '24.144', '120.67', 0);
INSERT INTO `cms_city` VALUES ('101340402', 'miaoli', '苗栗', 'taiwan', '台湾', 'China', '中国', 'taizhong', '台中', '24.558', '120.812', 0);
INSERT INTO `cms_city` VALUES ('101340403', 'zhanghua', '彰化', 'taiwan', '台湾', 'China', '中国', 'taizhong', '台中', '24.077', '120.535', 0);
INSERT INTO `cms_city` VALUES ('101340404', 'nantou', '南投', 'taiwan', '台湾', 'China', '中国', 'taizhong', '台中', '23.916', '120.685', 0);
INSERT INTO `cms_city` VALUES ('101340405', 'hualian', '花莲', 'taiwan', '台湾', 'China', '中国', 'taizhong', '台中', '23.983', '121.603', 0);
INSERT INTO `cms_city` VALUES ('101340406', 'yunlin', '云林', 'taiwan', '台湾', 'China', '中国', 'taizhong', '台中', '23.718', '120.538', 0);

-- ----------------------------
-- Table structure for cms_collection
-- ----------------------------
DROP TABLE IF EXISTS `cms_collection`;
CREATE TABLE `cms_collection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '类型：1是文章，2族谱，3话题',
  `theme_id` int(11) NOT NULL COMMENT '被收藏的文章id或话题id等',
  `uid` int(11) NOT NULL COMMENT '收藏用户的id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cms_collection
-- ----------------------------
INSERT INTO `cms_collection` VALUES (5, 1, 24, 6, '2019-11-17 18:15:49', '2019-11-17 18:15:49');
INSERT INTO `cms_collection` VALUES (15, 2, 4, 6, '2019-11-20 22:20:41', '2019-11-20 22:20:41');
INSERT INTO `cms_collection` VALUES (14, 2, 11, 6, '2019-11-18 13:32:21', '2019-11-18 13:32:21');

-- ----------------------------
-- Table structure for cms_column
-- ----------------------------
DROP TABLE IF EXISTS `cms_column`;
CREATE TABLE `cms_column`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `update_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `deleted` tinyint(255) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_column
-- ----------------------------
INSERT INTO `cms_column` VALUES (1, '生活趣事', 'admin', 'admin', 0, '2019-07-04 01:35:06', '2019-07-04 05:08:00');
INSERT INTO `cms_column` VALUES (4, '神话传说', NULL, 'admin', 0, '2019-07-04 05:08:14', '2019-07-04 05:08:14');
INSERT INTO `cms_column` VALUES (6, '人物传记', NULL, 'admin', 0, '2019-07-04 05:24:12', '2019-07-04 05:24:12');
INSERT INTO `cms_column` VALUES (10, '新闻资讯', NULL, 'admin', 0, '2019-11-08 19:38:22', '2019-11-08 19:38:22');
INSERT INTO `cms_column` VALUES (11, '黄历', NULL, 'admin', 0, '2019-11-23 14:47:12', '2019-11-23 14:47:12');
INSERT INTO `cms_column` VALUES (12, '啊啊撒', NULL, 'admin', 0, '2019-11-23 14:48:54', '2019-11-23 14:48:54');
INSERT INTO `cms_column` VALUES (13, '阿信啊', NULL, 'admin', 0, '2019-11-23 14:54:30', '2019-11-23 14:54:30');
INSERT INTO `cms_column` VALUES (14, 'AS', NULL, 'admin', 0, '2019-11-23 14:59:37', '2019-11-23 14:59:37');
INSERT INTO `cms_column` VALUES (15, 'zax', NULL, 'admin', 0, '2019-11-23 15:00:38', '2019-11-23 15:00:38');
INSERT INTO `cms_column` VALUES (16, 'saxax', NULL, 'admin', 0, '2019-11-23 15:01:38', '2019-11-23 15:01:38');

-- ----------------------------
-- Table structure for cms_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '类型：1是文章，2族谱，3话题',
  `theme_id` int(11) NOT NULL COMMENT '被评论的文章id或话题id等',
  `uid` int(11) NOT NULL COMMENT '评论人',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '无限评论的评论ID，子评论',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `msgType` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1文本，2图片',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `created_at` datetime NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
INSERT INTO `cms_comment` VALUES (1, 1, 24, 6, 0, 'aa', 1, 0, '2019-11-16 14:36:46', '2019-11-16 14:36:46');
INSERT INTO `cms_comment` VALUES (2, 1, 24, 6, 0, 'ass', 1, 0, '2019-11-16 14:39:32', '2019-11-16 14:39:32');
INSERT INTO `cms_comment` VALUES (3, 1, 24, 6, 0, '66666', 1, 0, '2019-11-16 14:40:22', '2019-11-16 14:40:22');
INSERT INTO `cms_comment` VALUES (4, 1, 24, 6, 0, '活得很好', 1, 0, '2019-11-16 15:08:00', '2019-11-16 15:08:00');
INSERT INTO `cms_comment` VALUES (5, 1, 24, 6, 0, '666', 1, 0, '2019-11-16 15:15:47', '2019-11-16 15:15:47');
INSERT INTO `cms_comment` VALUES (6, 1, 24, 6, 0, '666', 1, 0, '2019-11-16 15:16:43', '2019-11-16 15:16:43');
INSERT INTO `cms_comment` VALUES (7, 1, 24, 6, 0, '撒', 1, 0, '2019-11-16 15:17:06', '2019-11-16 15:17:06');
INSERT INTO `cms_comment` VALUES (8, 1, 24, 6, 0, '赞一个', 1, 0, '2019-11-16 15:17:14', '2019-11-16 15:17:14');
INSERT INTO `cms_comment` VALUES (9, 1, 24, 6, 0, '非常赞', 1, 0, '2019-11-16 15:17:48', '2019-11-16 15:17:48');
INSERT INTO `cms_comment` VALUES (10, 1, 24, 6, 0, '我说两句', 1, 0, '2019-11-16 15:18:02', '2019-11-16 15:18:02');
INSERT INTO `cms_comment` VALUES (11, 1, 24, 10, 0, '6666', 1, 0, '2019-11-16 15:30:17', '2019-11-16 15:30:17');
INSERT INTO `cms_comment` VALUES (12, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:35', '2019-11-16 15:31:35');
INSERT INTO `cms_comment` VALUES (13, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:37', '2019-11-16 15:31:37');
INSERT INTO `cms_comment` VALUES (14, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:38', '2019-11-16 15:31:38');
INSERT INTO `cms_comment` VALUES (15, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:38', '2019-11-16 15:31:38');
INSERT INTO `cms_comment` VALUES (16, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:39', '2019-11-16 15:31:39');
INSERT INTO `cms_comment` VALUES (17, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:39', '2019-11-16 15:31:39');
INSERT INTO `cms_comment` VALUES (18, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:46', '2019-11-16 15:31:46');
INSERT INTO `cms_comment` VALUES (19, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:47', '2019-11-16 15:31:47');
INSERT INTO `cms_comment` VALUES (20, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:47', '2019-11-16 15:31:47');
INSERT INTO `cms_comment` VALUES (21, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:47', '2019-11-16 15:31:47');
INSERT INTO `cms_comment` VALUES (22, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:48', '2019-11-16 15:31:48');
INSERT INTO `cms_comment` VALUES (23, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:48', '2019-11-16 15:31:48');
INSERT INTO `cms_comment` VALUES (24, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:49', '2019-11-16 15:31:49');
INSERT INTO `cms_comment` VALUES (25, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:53', '2019-11-16 15:31:53');
INSERT INTO `cms_comment` VALUES (26, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:53', '2019-11-16 15:31:53');
INSERT INTO `cms_comment` VALUES (27, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:53', '2019-11-16 15:31:53');
INSERT INTO `cms_comment` VALUES (28, 1, 24, 10, 0, '47766', 1, 0, '2019-11-16 15:31:54', '2019-11-16 15:31:54');
INSERT INTO `cms_comment` VALUES (29, 1, 24, 10, 0, '666', 1, 0, '2019-11-16 15:32:08', '2019-11-16 15:32:08');
INSERT INTO `cms_comment` VALUES (30, 1, 24, 10, 0, '666', 1, 0, '2019-11-16 15:32:31', '2019-11-16 15:32:31');
INSERT INTO `cms_comment` VALUES (31, 1, 24, 10, 0, '79499595', 1, 0, '2019-11-16 15:32:43', '2019-11-16 15:32:43');
INSERT INTO `cms_comment` VALUES (32, 1, 24, 10, 0, '真好', 1, 0, '2019-11-16 15:32:53', '2019-11-16 15:32:53');
INSERT INTO `cms_comment` VALUES (33, 1, 24, 6, 0, '好好', 1, 0, '2019-11-16 15:34:59', '2019-11-16 15:34:59');
INSERT INTO `cms_comment` VALUES (34, 1, 24, 6, 0, 'asfsssnfasnfnc', 1, 0, '2019-11-16 15:35:21', '2019-11-16 15:35:21');
INSERT INTO `cms_comment` VALUES (35, 1, 24, 6, 0, '111', 1, 0, '2019-11-16 15:35:57', '2019-11-16 15:35:57');
INSERT INTO `cms_comment` VALUES (36, 1, 24, 6, 0, '赞一个', 1, 0, '2019-11-16 15:37:01', '2019-11-16 15:37:01');
INSERT INTO `cms_comment` VALUES (37, 1, 24, 6, 0, '11', 1, 0, '2019-11-16 15:37:56', '2019-11-16 15:37:56');
INSERT INTO `cms_comment` VALUES (38, 1, 24, 6, 0, '赞一个', 1, 0, '2019-11-16 15:38:21', '2019-11-16 15:38:21');
INSERT INTO `cms_comment` VALUES (39, 1, 24, 6, 0, '111', 1, 0, '2019-11-16 15:44:44', '2019-11-16 15:44:44');
INSERT INTO `cms_comment` VALUES (40, 1, 24, 6, 0, '111', 1, 0, '2019-11-16 15:46:42', '2019-11-16 15:46:42');
INSERT INTO `cms_comment` VALUES (41, 1, 24, 6, 0, 'aaa', 1, 0, '2019-11-16 15:47:28', '2019-11-16 15:47:28');
INSERT INTO `cms_comment` VALUES (42, 1, 24, 6, 41, 'ssss', 1, 0, '2019-11-16 15:48:29', '2019-11-16 15:48:29');
INSERT INTO `cms_comment` VALUES (43, 1, 24, 6, 38, 'asa', 1, 0, '2019-11-16 15:52:02', '2019-11-16 15:52:02');
INSERT INTO `cms_comment` VALUES (44, 1, 24, 6, 0, 'daasd', 1, 0, '2019-11-16 15:52:06', '2019-11-16 15:52:06');
INSERT INTO `cms_comment` VALUES (45, 1, 24, 6, 40, '666', 1, 0, '2019-11-16 15:52:50', '2019-11-16 15:52:50');
INSERT INTO `cms_comment` VALUES (46, 1, 24, 6, 40, '真厉害', 1, 0, '2019-11-16 15:53:04', '2019-11-16 15:53:04');
INSERT INTO `cms_comment` VALUES (47, 1, 24, 6, 40, '牛逼啊', 1, 0, '2019-11-16 15:53:12', '2019-11-16 15:53:12');
INSERT INTO `cms_comment` VALUES (48, 1, 24, 6, 34, '牛逼', 1, 0, '2019-11-16 15:54:15', '2019-11-16 15:54:15');
INSERT INTO `cms_comment` VALUES (49, 1, 24, 6, 0, '啊啊撒', 1, 0, '2019-11-17 12:19:20', '2019-11-17 12:19:20');
INSERT INTO `cms_comment` VALUES (50, 1, 24, 6, 47, 'as', 1, 0, '2019-11-17 12:21:56', '2019-11-17 12:21:56');
INSERT INTO `cms_comment` VALUES (51, 1, 24, 6, 0, '还不错', 1, 0, '2019-11-17 12:22:13', '2019-11-17 12:22:13');
INSERT INTO `cms_comment` VALUES (52, 1, 24, 6, 47, '777', 1, 0, '2019-11-17 12:22:22', '2019-11-17 12:22:22');
INSERT INTO `cms_comment` VALUES (53, 1, 24, 6, 47, '怎么样啊', 1, 0, '2019-11-17 12:22:33', '2019-11-17 12:22:33');
INSERT INTO `cms_comment` VALUES (54, 1, 24, 6, 53, '666', 1, 0, '2019-11-17 12:32:28', '2019-11-17 12:32:28');
INSERT INTO `cms_comment` VALUES (55, 1, 24, 6, 54, 'rrr', 1, 0, '2019-11-17 12:43:08', '2019-11-17 12:43:08');
INSERT INTO `cms_comment` VALUES (56, 1, 24, 6, 0, 'rrrrrr', 1, 0, '2019-11-17 12:43:12', '2019-11-17 12:43:12');
INSERT INTO `cms_comment` VALUES (57, 1, 24, 6, 54, '日日', 1, 0, '2019-11-17 12:43:22', '2019-11-17 12:43:22');
INSERT INTO `cms_comment` VALUES (58, 1, 24, 6, 54, '吱吱吱吱', 1, 0, '2019-11-17 12:43:31', '2019-11-17 12:43:31');
INSERT INTO `cms_comment` VALUES (59, 1, 24, 6, 54, '有有有由于', 1, 0, '2019-11-17 12:43:38', '2019-11-17 12:43:38');
INSERT INTO `cms_comment` VALUES (60, 1, 24, 6, 0, 'aa', 1, 0, '2019-11-17 15:19:32', '2019-11-17 15:19:32');
INSERT INTO `cms_comment` VALUES (61, 1, 16, 6, 0, 'ujj', 1, 0, '2019-11-17 15:50:52', '2019-11-17 15:50:52');
INSERT INTO `cms_comment` VALUES (62, 1, 16, 6, 0, 'kkkk', 1, 0, '2019-11-17 15:51:00', '2019-11-17 15:51:00');
INSERT INTO `cms_comment` VALUES (63, 1, 23, 6, 0, 'dd', 1, 0, '2019-11-18 13:08:25', '2019-11-18 13:08:25');
INSERT INTO `cms_comment` VALUES (64, 1, 23, 6, 0, 'eee', 1, 0, '2019-11-18 13:08:32', '2019-11-18 13:08:32');
INSERT INTO `cms_comment` VALUES (65, 1, 23, 6, 0, 'rr', 1, 0, '2019-11-18 13:08:37', '2019-11-18 13:08:37');
INSERT INTO `cms_comment` VALUES (66, 2, 11, 6, 0, 'as', 1, 0, '2019-11-18 15:11:36', '2019-11-18 15:11:36');
INSERT INTO `cms_comment` VALUES (67, 2, 11, 6, 0, 'asd', 1, 0, '2019-11-18 15:13:02', '2019-11-18 15:13:02');
INSERT INTO `cms_comment` VALUES (68, 2, 11, 6, 0, 'add', 1, 0, '2019-11-18 15:14:29', '2019-11-18 15:14:29');
INSERT INTO `cms_comment` VALUES (69, 2, 11, 6, 0, 'fggg', 1, 0, '2019-11-18 15:14:34', '2019-11-18 15:14:34');
INSERT INTO `cms_comment` VALUES (70, 2, 11, 6, 0, 'kkkk', 1, 0, '2019-11-18 15:14:44', '2019-11-18 15:14:44');
INSERT INTO `cms_comment` VALUES (71, 2, 11, 6, 0, '8888', 1, 0, '2019-11-18 15:14:50', '2019-11-18 15:14:50');
INSERT INTO `cms_comment` VALUES (72, 2, 11, 6, 0, '666666666', 1, 0, '2019-11-18 15:14:55', '2019-11-18 15:14:55');
INSERT INTO `cms_comment` VALUES (73, 2, 11, 6, 0, '11111', 1, 0, '2019-11-18 15:15:00', '2019-11-18 15:15:00');
INSERT INTO `cms_comment` VALUES (74, 2, 11, 6, 0, 'ass', 1, 0, '2019-11-18 15:16:22', '2019-11-18 15:16:22');
INSERT INTO `cms_comment` VALUES (75, 2, 11, 6, 0, 'ass', 1, 0, '2019-11-18 15:16:22', '2019-11-18 15:16:22');
INSERT INTO `cms_comment` VALUES (76, 2, 11, 6, 0, 'add', 1, 0, '2019-11-18 15:16:59', '2019-11-18 15:16:59');
INSERT INTO `cms_comment` VALUES (77, 2, 11, 6, 0, 'aaaaaaaaaaaaaaaaaa', 1, 0, '2019-11-18 15:24:06', '2019-11-18 15:24:06');
INSERT INTO `cms_comment` VALUES (78, 2, 11, 6, 0, '33333', 1, 0, '2019-11-18 15:24:28', '2019-11-18 15:24:28');
INSERT INTO `cms_comment` VALUES (79, 2, 11, 6, 0, '66666666666666666666666666666666666666666666666666', 1, 0, '2019-11-18 15:25:30', '2019-11-18 15:25:30');
INSERT INTO `cms_comment` VALUES (80, 2, 11, 6, 0, '我们热爱分享和开源，崇尚用工程师的方式解决问题，因此造了很多工具来解决我们遇到的问题，目前我们维护的开源产品有：', 1, 0, '2019-11-18 15:26:12', '2019-11-18 15:26:12');
INSERT INTO `cms_comment` VALUES (81, 2, 11, 6, 80, '我们热爱分享和开源，崇尚用工程师的方式解决问题，因此造了很多工具来解决我们遇到的问题，目前我们维护的开源产品有：', 1, 0, '2019-11-18 15:27:18', '2019-11-18 15:27:18');
INSERT INTO `cms_comment` VALUES (82, 2, 11, 6, 79, 'ggg', 1, 0, '2019-11-18 15:27:48', '2019-11-18 15:27:48');
INSERT INTO `cms_comment` VALUES (83, 3, 5, 6, 0, 'aas', 1, 0, '2019-11-18 18:21:05', '2019-11-18 18:21:05');
INSERT INTO `cms_comment` VALUES (84, 3, 5, 6, 0, '6666', 1, 0, '2019-11-18 18:22:04', '2019-11-18 18:22:04');
INSERT INTO `cms_comment` VALUES (85, 3, 5, 6, 0, 'gggg', 1, 0, '2019-11-18 18:22:11', '2019-11-18 18:22:11');
INSERT INTO `cms_comment` VALUES (86, 3, 5, 6, 85, 'hhh', 1, 0, '2019-11-18 18:26:46', '2019-11-18 18:26:46');
INSERT INTO `cms_comment` VALUES (87, 3, 5, 6, 0, 'kkk', 1, 0, '2019-11-18 18:27:05', '2019-11-18 18:27:05');
INSERT INTO `cms_comment` VALUES (88, 3, 6, 6, 0, '6666', 1, 0, '2019-11-18 18:30:34', '2019-11-18 18:30:34');

-- ----------------------------
-- Table structure for cms_config
-- ----------------------------
DROP TABLE IF EXISTS `cms_config`;
CREATE TABLE `cms_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置名称',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置内容',
  `deleted` tinyint(255) NOT NULL COMMENT '是否删除',
  `created_at` datetime NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique`(`config_name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_conversation
-- ----------------------------
DROP TABLE IF EXISTS `cms_conversation`;
CREATE TABLE `cms_conversation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `imgs` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `uid` int(11) NULL DEFAULT NULL COMMENT '创建人ID',
  `browse_volume` int(11) NOT NULL DEFAULT 0 COMMENT '浏览量',
  `deleted` tinyint(255) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_conversation
-- ----------------------------
INSERT INTO `cms_conversation` VALUES (2, '发布的内容', '发布的图片', 8, 5, 0, '2019-11-18 17:00:43', '2019-11-14 23:54:29');
INSERT INTO `cms_conversation` VALUES (3, '希望香港青年通过天津这个窗口，更加深刻认识新中国走过的不平凡道路和取得的巨大成就，更加深刻理解“一国两制”与坚持和发展中国特色社会主义、实现中华民族伟大复兴中国梦的内在联系，进一步增强国家认同、民族认同、文化认同。同时，希望各位青年朋友能够成为津港友谊的使者，为促进两地交流合作作出积极贡献。', NULL, 6, 0, 0, '2019-11-16 19:46:57', '2019-11-16 19:46:57');
INSERT INTO `cms_conversation` VALUES (4, NULL, '\\/uploads\\/20191116/3mIYEpihDYr8KViLQb4dAVPFObbpOlVkPeKsAnNv.png', 6, 1, 0, '2019-11-16 19:47:55', '2019-11-16 19:47:55');
INSERT INTO `cms_conversation` VALUES (5, NULL, '\\/uploads\\/20191116/rQHuqoiOWzSH9uT5XQfRiWyAVtYRZ4A57Rgbapqu.jpeg,\\/uploads\\/20191116/eKut8BwzsNQzUvDRgc8dDusfQBBe4FULnZcAIcBL.jpeg,\\/uploads\\/20191116/ujNpXo4qlTeBprPBxrnAgnYrxJp6wK8hgXMpp4m3.jpeg', 6, 35, 0, '2019-11-18 17:23:55', '2019-11-16 19:48:09');
INSERT INTO `cms_conversation` VALUES (6, NULL, '\\/uploads\\/20191118/FDFXZxSEcTCdaQmF6xx3Fl1wtpLorvM5x1xjWq8T.jpeg', 6, 30, 0, '2019-11-18 17:38:18', '2019-11-18 17:28:51');

-- ----------------------------
-- Table structure for cms_customer
-- ----------------------------
DROP TABLE IF EXISTS `cms_customer`;
CREATE TABLE `cms_customer`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  `orgroot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '顶级机构',
  `orgcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '机构号',
  `orgname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '机构名/昵称/企业',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名-登录名',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `tel` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `headUrl` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '头像',
  `lat` decimal(10, 7) NULL DEFAULT NULL COMMENT '经度',
  `lng` decimal(10, 7) NULL DEFAULT NULL COMMENT '纬度',
  `remark` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `isusing` tinyint(4) NULL DEFAULT 0 COMMENT '是否禁',
  `deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除，0否，1是',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `deleted_user` int(11) NULL DEFAULT NULL COMMENT '删除人',
  `isusing_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '禁用人',
  `update_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新人',
  `login_at` datetime NULL DEFAULT NULL COMMENT '最近一次登录时间',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '最近一次登录的ip',
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信openid',
  `wx_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信昵称名',
  `wx_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信头像',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cms_customer_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `cms_customer_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `cms_customer_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_customer
-- ----------------------------
INSERT INTO `cms_customer` VALUES (1, 1, '200001', '200001', '楼主', '管理员', 'admin', '15655569098@163.com', '$2y$10$S7E0u5Y5Pg0faxBr3rf.Ouduu/VVwghmRa.kxcFdEnC3.F1L81Zw6', '15655569098', NULL, '\\/uploads\\/20190629/42JVMxfV4nKwPPWDIHwRNbxsuVA6s99UhGWOIPQL.jpeg', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-11-26 23:06:49', '127.0.0.1', NULL, NULL, NULL, '2019-06-24 19:52:03', '2019-11-26 23:06:49');
INSERT INTO `cms_customer` VALUES (3, 1, '200001', '20000101', '姑苏蓝氏', NULL, 'linyang', '1228380958@qq.com', '$2y$10$Tn/SE2dJ./a134sTO.TZ8.kDwh88KxTZyLSj1bJFUTyZ1UBM0TxtC', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '2019-06-29 02:48:59', '127.0.0.1', NULL, NULL, NULL, '2019-06-28 07:37:14', '2019-11-10 08:47:43');

-- ----------------------------
-- Table structure for cms_fabulous
-- ----------------------------
DROP TABLE IF EXISTS `cms_fabulous`;
CREATE TABLE `cms_fabulous`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '类型：1是文章，2族谱，3话题,4评论',
  `theme_id` int(11) NOT NULL COMMENT '被点赞的文章id或话题id等',
  `uid` int(11) NOT NULL COMMENT '点赞用户的id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of cms_fabulous
-- ----------------------------
INSERT INTO `cms_fabulous` VALUES (1, 1, 24, 6, '2019-11-17 15:23:33', '2019-11-17 15:23:33');
INSERT INTO `cms_fabulous` VALUES (2, 1, 21, 6, '2019-11-17 15:41:10', '2019-11-17 15:41:10');
INSERT INTO `cms_fabulous` VALUES (3, 1, 16, 6, '2019-11-17 15:43:42', '2019-11-17 15:43:42');
INSERT INTO `cms_fabulous` VALUES (4, 1, 11, 6, '2019-11-17 15:59:47', '2019-11-17 15:59:47');
INSERT INTO `cms_fabulous` VALUES (5, 1, 12, 6, '2019-11-17 16:01:24', '2019-11-17 16:01:24');
INSERT INTO `cms_fabulous` VALUES (6, 4, 41, 6, '2019-11-17 16:02:19', '2019-11-17 16:02:19');
INSERT INTO `cms_fabulous` VALUES (7, 4, 60, 6, '2019-11-17 16:02:37', '2019-11-17 16:02:37');
INSERT INTO `cms_fabulous` VALUES (8, 4, 56, 6, '2019-11-17 16:02:38', '2019-11-17 16:02:38');
INSERT INTO `cms_fabulous` VALUES (9, 4, 51, 6, '2019-11-17 16:02:40', '2019-11-17 16:02:40');
INSERT INTO `cms_fabulous` VALUES (10, 4, 49, 6, '2019-11-17 16:02:41', '2019-11-17 16:02:41');
INSERT INTO `cms_fabulous` VALUES (11, 4, 44, 6, '2019-11-17 16:02:42', '2019-11-17 16:02:42');
INSERT INTO `cms_fabulous` VALUES (12, 4, 41, 7, '2019-11-17 16:02:19', '2019-11-17 16:02:19');
INSERT INTO `cms_fabulous` VALUES (13, 4, 60, 7, '2019-11-17 16:02:37', '2019-11-17 16:02:37');
INSERT INTO `cms_fabulous` VALUES (14, 4, 56, 7, '2019-11-17 16:02:38', '2019-11-17 16:02:38');
INSERT INTO `cms_fabulous` VALUES (15, 4, 51, 7, '2019-11-17 16:02:40', '2019-11-17 16:02:40');
INSERT INTO `cms_fabulous` VALUES (16, 4, 49, 7, '2019-11-17 16:02:41', '2019-11-17 16:02:41');
INSERT INTO `cms_fabulous` VALUES (17, 4, 44, 7, '2019-11-17 16:02:42', '2019-11-17 16:02:42');
INSERT INTO `cms_fabulous` VALUES (18, 4, 40, 6, '2019-11-17 16:57:56', '2019-11-17 16:57:56');
INSERT INTO `cms_fabulous` VALUES (19, 4, 39, 6, '2019-11-17 16:57:59', '2019-11-17 16:57:59');
INSERT INTO `cms_fabulous` VALUES (20, 1, 47, 6, '2019-11-17 17:00:34', '2019-11-17 17:00:34');
INSERT INTO `cms_fabulous` VALUES (21, 1, 46, 6, '2019-11-17 17:00:38', '2019-11-17 17:00:38');
INSERT INTO `cms_fabulous` VALUES (22, 1, 45, 6, '2019-11-17 17:00:49', '2019-11-17 17:00:49');
INSERT INTO `cms_fabulous` VALUES (23, 1, 47, 6, '2019-11-17 17:02:51', '2019-11-17 17:02:51');
INSERT INTO `cms_fabulous` VALUES (24, 1, 46, 6, '2019-11-17 17:02:52', '2019-11-17 17:02:52');
INSERT INTO `cms_fabulous` VALUES (25, 1, 45, 6, '2019-11-17 17:02:54', '2019-11-17 17:02:54');
INSERT INTO `cms_fabulous` VALUES (26, 1, 47, 6, '2019-11-17 17:03:55', '2019-11-17 17:03:55');
INSERT INTO `cms_fabulous` VALUES (27, 4, 47, 6, '2019-11-17 17:05:37', '2019-11-17 17:05:37');
INSERT INTO `cms_fabulous` VALUES (28, 4, 46, 6, '2019-11-17 17:05:38', '2019-11-17 17:05:38');
INSERT INTO `cms_fabulous` VALUES (29, 4, 45, 6, '2019-11-17 17:05:40', '2019-11-17 17:05:40');
INSERT INTO `cms_fabulous` VALUES (30, 1, 10, 6, '2019-11-17 17:24:32', '2019-11-17 17:24:32');
INSERT INTO `cms_fabulous` VALUES (31, 1, 19, 6, '2019-11-17 17:24:47', '2019-11-17 17:24:47');
INSERT INTO `cms_fabulous` VALUES (32, 4, 35, 6, '2019-11-17 17:25:25', '2019-11-17 17:25:25');
INSERT INTO `cms_fabulous` VALUES (33, 4, 34, 6, '2019-11-17 17:25:26', '2019-11-17 17:25:26');
INSERT INTO `cms_fabulous` VALUES (34, 4, 33, 6, '2019-11-17 17:25:27', '2019-11-17 17:25:27');
INSERT INTO `cms_fabulous` VALUES (35, 4, 36, 6, '2019-11-17 17:25:28', '2019-11-17 17:25:28');
INSERT INTO `cms_fabulous` VALUES (36, 4, 37, 6, '2019-11-17 17:25:30', '2019-11-17 17:25:30');
INSERT INTO `cms_fabulous` VALUES (37, 4, 38, 6, '2019-11-17 17:25:31', '2019-11-17 17:25:31');
INSERT INTO `cms_fabulous` VALUES (38, 4, 4, 6, '2019-11-17 17:25:35', '2019-11-17 17:25:35');
INSERT INTO `cms_fabulous` VALUES (39, 4, 5, 6, '2019-11-17 17:25:36', '2019-11-17 17:25:36');
INSERT INTO `cms_fabulous` VALUES (40, 4, 6, 6, '2019-11-17 17:25:37', '2019-11-17 17:25:37');
INSERT INTO `cms_fabulous` VALUES (41, 4, 2, 6, '2019-11-17 17:25:39', '2019-11-17 17:25:39');
INSERT INTO `cms_fabulous` VALUES (42, 4, 3, 6, '2019-11-17 17:25:40', '2019-11-17 17:25:40');
INSERT INTO `cms_fabulous` VALUES (43, 4, 1, 6, '2019-11-17 17:25:42', '2019-11-17 17:25:42');
INSERT INTO `cms_fabulous` VALUES (44, 2, 11, 6, '2019-11-18 13:18:09', '2019-11-18 13:18:09');
INSERT INTO `cms_fabulous` VALUES (45, 4, 80, 6, '2019-11-18 15:27:33', '2019-11-18 15:27:33');
INSERT INTO `cms_fabulous` VALUES (46, 4, 82, 6, '2019-11-18 15:27:50', '2019-11-18 15:27:50');
INSERT INTO `cms_fabulous` VALUES (47, 4, 81, 6, '2019-11-18 15:35:57', '2019-11-18 15:35:57');
INSERT INTO `cms_fabulous` VALUES (48, 3, 5, 6, '2019-11-18 16:14:01', '2019-11-18 16:14:01');
INSERT INTO `cms_fabulous` VALUES (49, 4, 85, 6, '2019-11-18 18:27:12', '2019-11-18 18:27:12');
INSERT INTO `cms_fabulous` VALUES (50, 4, 87, 6, '2019-11-18 18:27:26', '2019-11-18 18:27:26');
INSERT INTO `cms_fabulous` VALUES (51, 4, 84, 6, '2019-11-18 18:27:27', '2019-11-18 18:27:27');
INSERT INTO `cms_fabulous` VALUES (52, 4, 83, 6, '2019-11-18 18:27:29', '2019-11-18 18:27:29');
INSERT INTO `cms_fabulous` VALUES (53, 3, 6, 6, '2019-11-18 18:30:30', '2019-11-18 18:30:30');
INSERT INTO `cms_fabulous` VALUES (54, 2, 4, 6, '2019-11-20 22:18:09', '2019-11-20 22:18:09');

-- ----------------------------
-- Table structure for cms_history_today
-- ----------------------------
DROP TABLE IF EXISTS `cms_history_today`;
CREATE TABLE `cms_history_today`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `year` int(255) NOT NULL,
  `month` int(255) NOT NULL,
  `day` int(255) NOT NULL,
  `des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lunar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_history_today
-- ----------------------------
INSERT INTO `cms_history_today` VALUES (1, '西班牙女王伊莎贝尔一世逝世', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/201108/4/6D01131193.jpg', 1504, 11, 26, '在515年前的今天，1504年11月26日 (农历十月二十)，西班牙女王伊莎贝尔一世逝世。', '甲子年十月二十', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (2, '晚清重臣曾国藩出生', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/201111/28/79233926637.jpg', 1811, 11, 26, '在208年前的今天，1811年11月26日 (农历十月十一)，晚清重臣曾国藩出生。', '辛未年十月十一', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (3, '拿破仑强渡别列津纳河', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/201111/28/FB235944651.jpg', 1812, 11, 26, '在207年前的今天，1812年11月26日 (农历十月廿三)，拿破仑强渡别列津纳河。', '壬申年十月廿三', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (4, '波兰诗人、革命家密茨凯维支逝世', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/201111/28/4A234436446.jpg', 1855, 11, 26, '在164年前的今天，1855年11月26日 (农历十月十七)，波兰诗人、革命家密茨凯维支逝世。', '乙卯年十月十七', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (5, '空调发明人威利斯·开利出生', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/201111/28/31235044685.jpg', 1876, 11, 26, '在143年前的今天，1876年11月26日 (农历十月十一)，空调发明人威利斯·开利出生。', '丙子年十月十一', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (6, '罗荣桓元帅诞辰', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/201411/26/121122273.jpg', 1902, 11, 26, '在117年前的今天，1902年11月26日 (农历十月廿七)，罗荣桓元帅诞辰。', '壬寅年十月廿七', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (7, '中国同盟会机关报《民报》创刊', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/200411/26/842349218.jpg', 1905, 11, 26, '在114年前的今天，1905年11月26日 (农历十月三十)，中国同盟会机关报《民报》创刊。', '乙巳年十月三十', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (8, '吉林边务督办陈昭常派兵将天宝山银矿收归官有', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/201111/29/1E0202683.jpg', 1907, 11, 26, '在112年前的今天，1907年11月26日 (农历十月廿一)，吉林边务督办陈昭常派兵将天宝山银矿收归官有。', '丁未年十月廿一', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (9, '青年共产国际成立', '', 1919, 11, 26, '在100年前的今天，1919年11月26日 (农历十月初五)，青年共产国际成立。', '己未年十月初五', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (10, '德国将华沙的犹太人驱进犹太人居住区', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/200905/17/81231458816.jpg', 1940, 11, 26, '在79年前的今天，1940年11月26日 (农历十月廿七)，德国将华沙的犹太人驱进犹太人居住区。', '庚辰年十月廿七', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (11, '陈若克英勇就义', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/201111/29/F601546232.jpg', 1941, 11, 26, '在78年前的今天，1941年11月26日 (农历十月初八)，陈若克英勇就义。', '辛巳年十月初八', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (12, '法国发射第一个人造地球卫星', '', 1965, 11, 26, '1965年11月26日 (农历冬月初四)，法国发射第一个人造地球卫星。', '乙巳年冬月初四', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (13, '美国把两艘核动力舰投入侵越战争', '', 1965, 11, 26, '1965年11月26日 (农历冬月初四)，美国把两艘核动力舰投入侵越战争。', '乙巳年冬月初四', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (14, '日本首相田中角荣辞职', '', 1974, 11, 26, '1974年11月26日 (农历十月十三)，日本首相田中角荣辞职。', '甲寅年十月十三', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (15, '亚洲奥林匹克理事会成立', '', 1981, 11, 26, '1981年11月26日 (农历冬月初一)，亚洲奥林匹克理事会成立。', '辛酉年冬月初一', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (16, '国务院批准首批博士硕士学位授予单位', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/201111/28/8023429403.jpg', 1981, 11, 26, '1981年11月26日 (农历冬月初一)，国务院批准首批博士硕士学位授予单位。', '辛酉年冬月初一', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (17, '岳阳楼大修工程开始', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/200911/22/2214498274.jpg', 1982, 11, 26, '1982年11月26日 (农历十月十二)，岳阳楼大修工程开始。', '壬戌年十月十二', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (18, '意大利同意部署美国导弹', '', 1983, 11, 26, '1983年11月26日 (农历十月廿二)，意大利同意部署美国导弹。', '癸亥年十月廿二', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (19, '英国发生历史上最大的抢劫案', '', 1983, 11, 26, '1983年11月26日 (农历十月廿二)，英国发生历史上最大的抢劫案。', '癸亥年十月廿二', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (20, '美驻哥伦比亚大使馆被炸', '', 1984, 11, 26, '1984年11月26日 (农历闰十月初四)，美驻哥伦比亚大使馆被炸。', '甲子年闰十月初四', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (21, '美航天飞机“阿特兰蒂斯”号升空', '', 1985, 11, 26, '1985年11月26日 (农历十月十五)，美航天飞机“阿特兰蒂斯”号升空。', '乙丑年十月十五', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (22, '深圳首次有偿出让土地使用权', '', 1987, 11, 26, '1987年11月26日 (农历十月初六)，深圳首次有偿出让土地使用权。', '丁卯年十月初六', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (23, '学者冯友兰逝世', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/200905/17/2D23555597.jpg', 1990, 11, 26, '1990年11月26日 (农历十月初十)，学者冯友兰逝世。', '庚午年十月初十', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (24, '上海证券交易所开业', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/200905/17/B623556234.jpg', 1990, 11, 26, '1990年11月26日 (农历十月初十)，上海证券交易所开业。', '庚午年十月初十', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (25, '瀛海威大辞职', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/200905/17/1A23115836.jpg', 1998, 11, 26, '1998年11月26日 (农历十月初八)，瀛海威大辞职。', '戊寅年十月初八', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (26, '中国移动成为全球最大移动通信运营商', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/201312/15/3220487813.jpg', 2001, 11, 26, '2001年11月26日 (农历十月十二)，中国移动成为全球最大移动通信运营商。', '辛巳年十月十二', '2019-11-26 16:11:41', '0000-00-00 00:00:00');
INSERT INTO `cms_history_today` VALUES (27, '中国海军护航舰队今天起锚赴索马里海域', 'http://juheimg.oss-cn-hangzhou.aliyuncs.com/toh/201011/9/1211362010277425.jpg', 2008, 11, 26, '2008年11月26日 (农历十月廿九)，中国海军护航舰队今天起锚赴索马里海域。', '戊子年十月廿九', '2019-11-26 16:11:41', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for cms_home_menu
-- ----------------------------
DROP TABLE IF EXISTS `cms_home_menu`;
CREATE TABLE `cms_home_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图标',
  `sort` tinyint(1) NOT NULL DEFAULT 0 COMMENT '排序',
  `router` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '前端路由',
  `deleted` tinyint(1) NOT NULL COMMENT '是否删除',
  `created_at` datetime NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_home_menu
-- ----------------------------
INSERT INTO `cms_home_menu` VALUES (1, '宗祠', '\\/uploads\\/20191126/OZUeV7eyLXna4ATzzN0VtHMERs7RBHbi4NwDJJzw.png', 0, 'aa', 0, '2019-11-26 23:11:15', '0000-00-00 00:00:00');
INSERT INTO `cms_home_menu` VALUES (2, '历史今日', '\\/uploads\\/20191126/Nmpade9yZCaT5oENH2AQxXUshCkEjpQcRlNzLDIT.png', 0, '', 0, '2019-11-26 23:11:15', '0000-00-00 00:00:00');
INSERT INTO `cms_home_menu` VALUES (3, '老黄历', '\\/uploads\\/20191126/UTCo3km3OjOm5FpuibntVivIg86UNOUlHXRdCvBJ.png', 0, '', 0, '2019-11-26 23:11:15', '0000-00-00 00:00:00');
INSERT INTO `cms_home_menu` VALUES (4, '名人烈士', '\\/uploads\\/20191126/nYzScxvB2J0geHN7f082pMmquVlOyNKkDqVav0CF.png', 0, '', 0, '2019-11-26 23:11:15', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for cms_member
-- ----------------------------
DROP TABLE IF EXISTS `cms_member`;
CREATE TABLE `cms_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `sex` tinyint(1) NOT NULL DEFAULT 1 COMMENT '性别0：女，1男',
  `headUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `isdead` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否过世',
  `brief_introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区/县',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '详细地址',
  `create_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '创建人',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_member
-- ----------------------------
INSERT INTO `cms_member` VALUES (1, '陆林杨', 1, '\\/uploads\\/20190630/uQqr4Myp0yWyyiIeqiUNypu41vCZ1bPEnWpjlcPs.jpeg', '15655569098', 0, '<h1 class=\"a-title\" style=\"margin: 0px; padding: 0px; list-style: none; font-size: 28px; line-height: 38px; color: rgb(25, 25, 25); font-family: &quot;\\&quot;PingFang SC\\&quot;,Arial,\\&quot;Microsoft yahei\\&quot;,simsun,\\&quot;sans-serif\\&quot;&quot;; white-space: normal; background-color: rgb(249, 249, 249);\"><strong style=\"float: none;\">特朗普与金正恩会谈持续40分钟，双方同意重启核问题谈判</strong></h1><p><span class=\"time\" style=\"margin-right: 20px;\">2019-06-30 16:16</span>&nbsp;<span class=\"original\" style=\"margin-right: 20px;\"></span><span class=\"tag\" style=\"float: right;\"></span></p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">当地时间30日下午16:45分左右，美国总统特朗普在板门店与朝鲜最高领导人金正恩以及韩国总统文在寅举行了历史性的会面，并与金正恩进行了40分钟的会谈。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">据美国有线电视新闻网报道，会谈结束后，三位领导人一起走出韩方的“自由之家”。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">报道称，特朗普陪同金正恩回到分界线朝方一侧，金正恩说：“我认为这次会议传递出的信号就是，我们现在可以随时见面。”</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">之后特朗普返回到“自由之家”和韩国总统文在寅一同接受了媒体的简短采</p><p><br/></p>', '天津市', '天津市', '河西区', ' ', 'admin', '2019-07-01 05:19:41', '2019-07-02 06:28:34', 1);
INSERT INTO `cms_member` VALUES (2, '陆林杨', 1, '\\/uploads\\/20190630/uQqr4Myp0yWyyiIeqiUNypu41vCZ1bPEnWpjlcPs.jpeg', '15655569098', 0, '<h1 class=\"a-title\" style=\"margin: 0px; padding: 0px; list-style: none; font-size: 28px; line-height: 38px; color: rgb(25, 25, 25); font-family: &quot;\\&quot;PingFang SC\\&quot;,Arial,\\&quot;Microsoft yahei\\&quot;,simsun,\\&quot;sans-serif\\&quot;&quot;; white-space: normal; background-color: rgb(249, 249, 249);\"><strong style=\"float: none;\">特朗普与金正恩会谈持续40分钟，双方同意重启核问题谈判</strong></h1><p><span class=\"time\" style=\"margin-right: 20px;\">2019-06-30 16:16</span>&nbsp;<span class=\"original\" style=\"margin-right: 20px;\"></span><span class=\"tag\" style=\"float: right;\"></span></p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">当地时间30日下午16:45分左右，美国总统特朗普在板门店与朝鲜最高领导人金正恩以及韩国总统文在寅举行了历史性的会面，并与金正恩进行了40分钟的会谈。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">据美国有线电视新闻网报道，会谈结束后，三位领导人一起走出韩方的“自由之家”。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">报道称，特朗普陪同金正恩回到分界线朝方一侧，金正恩说：“我认为这次会议传递出的信号就是，我们现在可以随时见面。”</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">之后特朗普返回到“自由之家”和韩国总统文在寅一同接受了媒体的简短采</p><p><br/></p>', '天津市', '天津市', '河西区', ' ', 'admin', '2019-07-01 05:21:44', '2019-07-02 06:28:34', 1);
INSERT INTO `cms_member` VALUES (3, '陆林杨', 1, '\\/uploads\\/20190630/uQqr4Myp0yWyyiIeqiUNypu41vCZ1bPEnWpjlcPs.jpeg', '15655569098', 0, '<h1 class=\"a-title\" style=\"margin: 0px; padding: 0px; list-style: none; font-size: 28px; line-height: 38px; color: rgb(25, 25, 25); font-family: &quot;\\&quot;PingFang SC\\&quot;,Arial,\\&quot;Microsoft yahei\\&quot;,simsun,\\&quot;sans-serif\\&quot;&quot;; white-space: normal; background-color: rgb(249, 249, 249);\"><strong style=\"float: none;\">特朗普与金正恩会谈持续40分钟，双方同意重启核问题谈判</strong></h1><p><span class=\"time\" style=\"margin-right: 20px;\">2019-06-30 16:16</span>&nbsp;<span class=\"original\" style=\"margin-right: 20px;\"></span><span class=\"tag\" style=\"float: right;\"></span></p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">当地时间30日下午16:45分左右，美国总统特朗普在板门店与朝鲜最高领导人金正恩以及韩国总统文在寅举行了历史性的会面，并与金正恩进行了40分钟的会谈。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">据美国有线电视新闻网报道，会谈结束后，三位领导人一起走出韩方的“自由之家”。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">报道称，特朗普陪同金正恩回到分界线朝方一侧，金正恩说：“我认为这次会议传递出的信号就是，我们现在可以随时见面。”</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">之后特朗普返回到“自由之家”和韩国总统文在寅一同接受了媒体的简短采</p><p><br/></p>', '天津市', '天津市', '河西区', '美唐', 'admin', '2019-07-01 05:22:12', '2019-07-02 06:28:34', 1);
INSERT INTO `cms_member` VALUES (4, '小明', 1, '\\/uploads\\/20190630/snp92gfVkdx49GQ8pUci0Tl6MO2f1SaC58YCebbK.jpeg', '15655569098', 0, '<p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; font-family: ����; font-size: 14px; white-space: normal;\">新华社北京6月29日电&nbsp;&nbsp;国家主席习近平29日签署发布特赦令，根据十三届全国人大常委会第十一次会议29日通过的全国人大常委会关于在中华人民共和国成立七十周年之际对部分服刑罪犯予以特赦的决定，对九类服刑罪犯实行特赦。</p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; font-family: ����; font-size: 14px; white-space: normal;\">　　根据国家主席特赦令，对依据2019年1月1日前人民法院作出的生效判决正在服刑的九类罪犯实行特赦：一是参加过中国人民抗日战争、中国人民解放战争的；二是中华人民共和国成立以后，参加过保卫国家主权、安全和领土完整对外作战的；三是中华人民共和国成立以后，为国家重大工程建设做过较大贡献并获得省部级以上“劳动模范”“先进工作者”“五一劳动奖章”等荣誉称号的；四是曾系现役军人并获得个人一等功以上奖励的；五是因防卫过当或者避险过当，被判处三年以下有期徒刑或者剩余刑期在一年以下的；六是年满七十五周岁、身体严重残疾且生活不能自理的；七是犯罪的时候不满十八周岁，被判处三年以下有期徒刑或者剩余刑期在一年以下的；八是丧偶且有未成年子女或者有身体严重残疾、生活不能自理的子女，确需本人抚养的女性，被判处三年以下有期徒刑或者剩余刑期在一年以下的；九是被裁定假释已执行五分之一以上假释考验期的，或者被判处管制的。</p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; font-family: ����; font-size: 14px; white-space: normal;\">　　国家主席特赦令同时明确，上述九类对象中，具有以下情形之一的，不得特赦：一是第二、三、四、七、八、九类对象中系贪污受贿犯罪，军人违反职责犯罪，故意杀人、强奸、抢劫、绑架、放火、爆炸、投放危险物质或者有组织的暴力性犯罪，黑社会性质的组织犯罪，贩卖毒品犯罪，危害国家安全犯罪，恐怖活动犯罪的罪犯，其他有组织犯罪的主犯，累犯的；二是第二、三、四、九类对象中剩余刑期在十年以上的和仍处于无期徒刑、死刑缓期执行期间的；三是曾经被特赦又因犯罪被判处刑罚的；四是不认罪悔改的；五是经评估具有现实社会危险性的。</p><p style=\"margin-top: 10px; margin-bottom: 10px; padding: 0px; font-family: ����; font-size: 14px; white-space: normal;\">　　国家主席特赦令指示，对2019年6月29日符合上述条件的服刑罪犯，经人民法院依法作出裁定后，予以释放。</p><p><br/></p>', '天津市', '天津市', '和平区', '美唐', 'admin', '2019-07-01 05:26:05', '2019-07-02 06:28:34', 1);
INSERT INTO `cms_member` VALUES (5, '小芳', 0, '\\/uploads\\/20190701/HhL3OMnMJnaCuwA6P0VdUf9yFybRty6GoIG0o3XK.jpeg', '', 0, '<p>阿三</p>', '', '', '', '', 'admin', '2019-07-02 05:21:09', '2019-07-02 06:28:34', 0);
INSERT INTO `cms_member` VALUES (6, '小红', 0, '\\/uploads\\/20190701/HhL3OMnMJnaCuwA6P0VdUf9yFybRty6GoIG0o3XK.jpeg', '', 0, '<p>阿三</p>', '', '', '', '', 'admin', '2019-07-02 05:21:21', '2019-07-02 06:28:34', 0);
INSERT INTO `cms_member` VALUES (7, '刘邦', 1, '\\/uploads\\/20190701/OyqPsBmNYwlQnUY7oZmHRodwAZw5DmSIdtFnYl4E.jpeg', '', 1, NULL, '', '', '', '', 'admin', '2019-07-02 05:25:13', '2019-07-02 06:28:34', 0);
INSERT INTO `cms_member` VALUES (8, '吕雉', 0, '\\/uploads\\/20190701/FbsSYUybUorBHvLbUIVGwI95spAeoqifpddgYzXu.jpeg', '', 1, NULL, '', '', '', ' ', 'admin', '2019-07-02 05:25:39', '2019-07-02 06:28:34', 0);
INSERT INTO `cms_member` VALUES (9, '刘盈', 1, '\\/uploads\\/20190701/EoBq85dqSKCIxTiqn2w3J5l5gK7g0BnF4rVC2G02.jpeg', '', 1, NULL, '', '', '', '', 'admin', '2019-07-02 05:27:34', '2019-07-02 06:28:34', 0);
INSERT INTO `cms_member` VALUES (10, '刘恭', 1, '\\/uploads\\/20190701/KYavy2GtlRWVurnaN7QLFjLl0TyOmUuFXVLB4zp7.jpeg', '', 1, NULL, '', '', '', '', 'admin', '2019-07-02 05:34:22', '2019-07-02 06:28:34', 0);
INSERT INTO `cms_member` VALUES (11, '刘恒', 1, '\\/uploads\\/20190701/Nis1YwhnDFGnHNtqREti9cn8OgAAev4vfjCHOgzt.jpeg', '', 1, NULL, '', '', '', '', 'admin', '2019-07-02 05:35:02', '2019-07-02 06:28:34', 0);
INSERT INTO `cms_member` VALUES (12, '窦绮恒', 0, '\\/uploads\\/20190701/VU5dzaPJUIgI3MO1XUF1EsgfhD4eG1MIkWcFYh24.jpeg', '', 0, NULL, '', '', '', '', 'admin', '2019-07-02 05:35:53', '2019-07-02 06:28:34', 0);
INSERT INTO `cms_member` VALUES (13, '小明', 1, '\\/uploads\\/20190702/v2DeFi2gIh6qcWLzEjA5Amnu4CUynoMTE90ueCiD.jpeg', '', 0, NULL, '', '', '', '', 'admin', '2019-07-03 04:02:20', '2019-07-03 04:02:20', 0);
INSERT INTO `cms_member` VALUES (14, '魏无羡', 1, '\\/uploads\\/20190702/hY07CIMhk2uxE0DEbW8n9vaXkMk5Mjr3kNWzmXnY.jpeg', '', 0, NULL, '', '', '', '', 'admin', '2019-07-03 04:08:53', '2019-07-03 04:08:53', 0);
INSERT INTO `cms_member` VALUES (15, '小苹果', 0, '\\/uploads\\/20190702/fZl8xXuPgghEQebxWluboaBZWrBUz8FNotXtmbZA.jpeg', '', 0, NULL, '', '', '', '', 'admin', '2019-07-03 04:16:04', '2019-07-03 04:16:04', 0);
INSERT INTO `cms_member` VALUES (16, '李四', 1, '\\/uploads\\/20190703/vBm8TfU6vY2Km0HEQ4twaEJTjb9zCCuuzItY0RsW.jpeg', '666667', 0, '<h1 class=\"a-title\" style=\"margin: 0px; padding: 0px; list-style: none; font-size: 28px; line-height: 38px; color: rgb(25, 25, 25); font-family: &quot;\\&quot;PingFang SC\\&quot;,Arial,\\&quot;Microsoft yahei\\&quot;,simsun,\\&quot;sans-serif\\&quot;&quot;; white-space: normal; background-color: rgb(249, 249, 249);\"><strong style=\"float: none;\">商务部回应G20后中美经贸磋商最新动向</strong></h1><p><span class=\"time\" style=\"margin-right: 20px;\">2019-07-04 18:24</span>&nbsp;<span class=\"original\" style=\"margin-right: 20px;\">倪浩</span><span class=\"tag\" style=\"float: right;\"></span></p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">【环球时报-环球网报道 记者 倪浩】6月29日，G20大阪峰会中美元首会晤后，双方同意在平等和相互尊重的基础上重启经贸磋商。美方表示不再对中国出口产品加征新的关税。两国经贸团队将就具体问题进行讨论。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">7月4日，商务部新闻发言人高峰在新闻发布会上说，目前中美双方经贸团队一直保持着沟通。高峰强调说，中美经贸摩擦最终要通过平等对话和协商来解决。美方不再对中国产品加征新的关税，避免经贸摩擦进一步升级，中方对此表示欢迎。高峰说，希望双方按照两国元首会晤的重要指示，在平等和相互尊重的基础上照顾彼此合理关切，寻求达成互利共赢的解决办法。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\"><img src=\"/ueditor/php/upload/image/20190704/1562242809.jpg\" alt=\"\" width=\"570\" height=\"472\"/></p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">商务部新闻发言人高峰</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">高峰表示，美国对中国输美商品单方面加征关税是中美经贸摩擦的起点，如果达成协议，应该是双向平衡、平等互利的，中方的核心关切必须得到妥善解决。美对中国商品加征的关税必须全部取消。中方对此的态度是明确的、一贯的。</p><p style=\"margin-top: 10px; margin-bottom: 20px; padding: 0px; list-style: none; line-height: 30px; word-break: break-all;\">G20大阪峰会上美国总统特朗普表示将允许美国企业向华为销售产品，但随后几天，多个白宫官员发表言论说，华为仍在美国黑名单上，美国只会允许向华为出售普通商品。对此，高峰回应说：“我们注意到，特朗普总统在G20领导人峰会发布会上称，美方将允许美国企业向华为公司出售产品。我们希望美方能够落实这一承诺，并尽快停止动用国家力量打压中国企业的错误做法。”</p><p><br/></p>', '北京市', '北京市', '东城区', '天安门', 'admin', '2019-07-04 07:29:35', '2019-11-08 18:45:15', 0);
INSERT INTO `cms_member` VALUES (17, 'aaa', 1, '\\/uploads\\/20191108/58ONTBmpvCuIfEAvvvqiPdeKxvdoCDZVFIFl3ZS6.png', '15655569098', 0, '<p>ssss</p>', '北京市', '北京市', '东城区', 'aaa', 'admin', '2019-11-08 18:08:08', '2019-11-08 18:20:16', 1);
INSERT INTO `cms_member` VALUES (18, 'assd', 1, '\\/uploads\\/20191108/K59NCkzOPKfaSrdn2NLyBNNIOeJR1Eu9ohJYdoxD.gif', 'aaaa', 0, '<p>ss</p>', '天津市', '天津市', '和平区', 'asss', 'admin', '2019-11-08 18:09:02', '2019-11-08 18:20:13', 1);
INSERT INTO `cms_member` VALUES (19, 'ass', 1, '\\/uploads\\/20191108/w2HzkuBEnYj7fLsdy3iC97SxStaWCpklCgV0qIHs.png', 'aaa', 0, '<p>aaa</p>', '天津市', '天津市', '和平区', 'aaa', 'admin', '2019-11-08 18:10:22', '2019-11-08 18:20:10', 1);
INSERT INTO `cms_member` VALUES (20, '小芳', 0, '\\/uploads\\/20190701/HhL3OMnMJnaCuwA6P0VdUf9yFybRty6GoIG0o3XK.jpeg', '', 0, '<p>阿三</p>', '', '', '', '', 'admin', '2019-11-08 18:12:50', '2019-11-08 18:20:07', 1);
INSERT INTO `cms_member` VALUES (21, '小芳', 0, '\\/uploads\\/20190701/HhL3OMnMJnaCuwA6P0VdUf9yFybRty6GoIG0o3XK.jpeg', '', 0, '<p>阿三</p>', '', '', '', '', 'admin', '2019-11-08 18:13:10', '2019-11-08 18:20:04', 1);
INSERT INTO `cms_member` VALUES (22, '小芳', 0, '\\/uploads\\/20190701/HhL3OMnMJnaCuwA6P0VdUf9yFybRty6GoIG0o3XK.jpeg', '', 0, '<p>阿三</p>', '', '', '', '', 'admin', NULL, NULL, 0);
INSERT INTO `cms_member` VALUES (23, '小芳', 0, '\\/uploads\\/20190701/HhL3OMnMJnaCuwA6P0VdUf9yFybRty6GoIG0o3XK.jpeg', '', 0, '<p>阿三</p>', '', '', '', '', 'admin', NULL, NULL, 0);
INSERT INTO `cms_member` VALUES (24, '小芳', 0, '\\/uploads\\/20190701/HhL3OMnMJnaCuwA6P0VdUf9yFybRty6GoIG0o3XK.jpeg', '', 0, '<p>阿三</p>', '', '', '', '', 'admin', NULL, NULL, 0);
INSERT INTO `cms_member` VALUES (25, '小芳', 0, '\\/uploads\\/20190701/HhL3OMnMJnaCuwA6P0VdUf9yFybRty6GoIG0o3XK.jpeg', '', 0, '<p>阿三</p>', '', '', '', '', 'admin', NULL, NULL, 0);
INSERT INTO `cms_member` VALUES (26, '小芳', 0, '\\/uploads\\/20190701/HhL3OMnMJnaCuwA6P0VdUf9yFybRty6GoIG0o3XK.jpeg', '', 0, '<p>阿三</p>', '', '', '', '', 'admin', '2019-11-08 18:18:47', '2019-11-08 18:20:02', 1);
INSERT INTO `cms_member` VALUES (27, 'asa', 1, '\\/uploads\\/20191108/3pWiblwuY0zvAlTYUjcqy3Sc6NhLWx1RoTLuE8QP.png', 'sss', 0, '<p>aaaa</p>', '天津市', '天津市', '和平区', 'ssaaaa', 'admin', '2019-11-08 18:19:13', '2019-11-08 18:19:24', 1);

-- ----------------------------
-- Table structure for cms_orgcode
-- ----------------------------
DROP TABLE IF EXISTS `cms_orgcode`;
CREATE TABLE `cms_orgcode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orgcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构号',
  `orgnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '记录子机构后两位',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_orgcode
-- ----------------------------
INSERT INTO `cms_orgcode` VALUES (1, '200001', '3', '2019-06-28 05:28:58', NULL);
INSERT INTO `cms_orgcode` VALUES (3, '20000101', '0', NULL, NULL);
INSERT INTO `cms_orgcode` VALUES (4, '20000102', '4', NULL, NULL);
INSERT INTO `cms_orgcode` VALUES (5, '2000010201', '0', NULL, NULL);
INSERT INTO `cms_orgcode` VALUES (6, '2000010202', '0', NULL, NULL);
INSERT INTO `cms_orgcode` VALUES (7, '2000010203', '0', NULL, NULL);
INSERT INTO `cms_orgcode` VALUES (8, '2000010204', '0', NULL, NULL);
INSERT INTO `cms_orgcode` VALUES (9, '20000103', '0', NULL, NULL);

-- ----------------------------
-- Table structure for cms_permissions
-- ----------------------------
DROP TABLE IF EXISTS `cms_permissions`;
CREATE TABLE `cms_permissions`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名称',
  `router` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '路由',
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '前端路由',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图标',
  `description` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父ID 0-顶级',
  `level` tinyint(4) NULL DEFAULT 0 COMMENT '权限级别：0-顶级 1-一级',
  `top` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1置顶，0默认',
  `sort` int(10) NOT NULL DEFAULT 0 COMMENT '排序，值越大排的越靠前，top优先',
  `deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除，0否，1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_permissions
-- ----------------------------
INSERT INTO `cms_permissions` VALUES (1, '后台用户中心', '', 'user', 'el-icon-user-solid', '', 0, 0, 0, 11, 0, '2019-06-27 03:16:12', '2019-11-23 14:10:14');
INSERT INTO `cms_permissions` VALUES (2, '文章管理', '', 'article', 'el-icon-document-copy', '', 0, 0, 0, 1, 0, '2019-06-27 03:17:27', '2019-07-04 04:48:10');
INSERT INTO `cms_permissions` VALUES (3, '用户管理', '/api/getUserList', 'user-list', NULL, '', 1, 1, 0, 0, 0, '2019-06-27 03:17:46', '2019-06-29 02:52:45');
INSERT INTO `cms_permissions` VALUES (4, '角色管理', '/api/getRolesAll', 'role-list', NULL, '', 1, 1, 0, 0, 0, '2019-06-27 03:18:16', '2019-06-29 22:21:25');
INSERT INTO `cms_permissions` VALUES (5, '权限管理', '/api/getNodesGetTree', 'power-list', NULL, '', 1, 1, 0, 0, 0, '2019-06-27 03:18:41', '2019-06-28 07:20:46');
INSERT INTO `cms_permissions` VALUES (6, '系统首页', '', 'home', 'el-icon-s-home', '', 0, 0, 1, 0, 0, '2019-06-29 21:09:35', '2019-11-06 21:16:13');
INSERT INTO `cms_permissions` VALUES (7, '族谱管理', '', 'genealogy', 'el-icon-mobile', '', 0, 0, 0, 2, 0, '2019-06-29 21:14:55', '2019-07-04 04:48:26');
INSERT INTO `cms_permissions` VALUES (8, '族谱列表', '', 'genealogy-list', NULL, '', 7, 1, 0, 0, 0, '2019-06-30 22:31:48', '2019-06-30 22:49:36');
INSERT INTO `cms_permissions` VALUES (10, '成员管理', '', 'member-list', NULL, '', 7, 1, 0, 0, 0, '2019-07-01 03:24:37', '2019-07-01 03:24:37');
INSERT INTO `cms_permissions` VALUES (11, '文章列表', '', 'article-list', NULL, '', 2, 1, 0, 0, 0, '2019-07-03 05:35:21', '2019-07-04 03:29:42');
INSERT INTO `cms_permissions` VALUES (13, '栏目管理', '', 'column-list', NULL, '', 2, 1, 0, 0, 0, '2019-07-03 05:35:59', '2019-07-04 03:30:29');
INSERT INTO `cms_permissions` VALUES (14, '基础设置', '', 'setting', 'el-icon-s-tools', '', 0, 0, 0, 0, 0, '2019-11-23 14:11:02', '2019-11-23 14:11:48');
INSERT INTO `cms_permissions` VALUES (15, '默认头像', '', 'default-head', NULL, '', 14, 1, 0, 0, 0, '2019-11-23 14:13:57', '2019-11-23 14:13:57');
INSERT INTO `cms_permissions` VALUES (17, '用户管理', '', 'user-management', 'el-icon-user-solid', '', 0, 0, 0, 0, 0, '2019-11-23 14:16:48', '2019-11-23 14:16:48');
INSERT INTO `cms_permissions` VALUES (18, '话题管理', '', 'topic-management', 'el-icon-bangzhu', '', 0, 0, 0, 0, 0, '2019-11-23 14:19:33', '2019-11-23 14:19:33');
INSERT INTO `cms_permissions` VALUES (19, '首页配置', '', 'home-setting', NULL, '', 14, 1, 0, 0, 0, '2019-11-25 11:50:53', '2019-11-25 11:50:53');

-- ----------------------------
-- Table structure for cms_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_roles`;
CREATE TABLE `cms_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名',
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色描述',
  `permission_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '权限ID',
  `deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除，0否，1是',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_roles
-- ----------------------------
INSERT INTO `cms_roles` VALUES (1, '超级管理员', '拥有所有权限，慎重使用', '6,1,3,4,5,7,8,10', 0, '2019-06-25 22:08:07', '2019-11-06 21:15:17');
INSERT INTO `cms_roles` VALUES (2, '管理员', '普通管理员', '6,3,7,8,9,10,2,11,12,13,1', 0, '2019-07-05 05:30:58', '2019-07-07 02:42:54');
INSERT INTO `cms_roles` VALUES (4, '普通用户', '', NULL, 0, '2019-11-06 21:14:27', '2019-11-06 21:14:27');

-- ----------------------------
-- Table structure for cms_surname
-- ----------------------------
DROP TABLE IF EXISTS `cms_surname`;
CREATE TABLE `cms_surname`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_surname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域姓氏',
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `brief_introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '创建人ID',
  `orgname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人所属机构',
  `orgcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人所属机构号',
  `browse_volume` int(11) NOT NULL DEFAULT 0 COMMENT '浏览量',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_surname
-- ----------------------------
INSERT INTO `cms_surname` VALUES (4, '吴郡陆氏', '\\/uploads\\/20190630/7gNBsnhixu9aTvEAKfb4brqxVOQ9UdHdQeMud7mG.jpeg', 'SSSassssss杀死', '<p>任何唯我独尊、自我优先、损人利己的做法都是不得人心、不受欢迎的。这次中美重启磋商，必须建立在平等和相互尊重基础上，这是化解分歧的前提和路径。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">新华社大阪6月29日电 题：重启中美经贸磋商尤需诚意和行动</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">新华社记者韩洁　刘春燕</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">6月29日，雨后放晴的日本大阪见证了本次二十国集团（G20）领导人峰会上最受瞩目的一刻：经过1个多小时会晤，中国国家主席习近平和美国总统特朗普同意，在平等和相互尊重基础上重启经贸磋商，美方不再对中国产品加征新的关税。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">这一结果给阴云笼罩的世界经济带来新的曙光：重启磋商就意味着中美经贸问题将回到正常轨道上进行，更稳定的中美关系有利于中国，有利于美国，也有利于全世界。磋商总是要讨论分歧的，分歧是客观存在的，我们希望通过磋商解决分歧，但也要保持平常心看待重启磋商，解决中美经贸问题需要更多诚意和行动。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">中美合则两利、斗则俱伤，以对话而非对抗方式解决分歧，始终是正确选择。此次会晤伊始，习近平主席以48年前发生在日本名古屋的中美“乒乓外交”开场，颇有深意。当前，中美关系遇到一些困难，这不符合双方利益，也背离了中美建交40年来的发展大势。双边贸易从不足25亿美元到超过6300亿美元，每天平均1.4万人乘坐航班往返于太平洋两岸……历史和事实证明，中美利益高度交融，合作领域广阔，不应该落入所谓冲突对抗的陷阱。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">重启经贸磋商，需要更多诚意——</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">去年底在阿根廷举行的G20峰会犹在眼前。今年以来，双方经贸团队落实中美元首共识重启磋商几个月后，美方又大搞极限施压、漫天要价，并不断推动中美经贸摩擦升级。任何唯我独尊、自我优先、损人利己的做法都是不得人心、不受欢迎的。这次中美重启磋商，必须建立在平等和相互尊重基础上，这是化解分歧的前提和路径。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">重启经贸磋商，需要更多行动——</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">行胜于言。越到关键时刻，越考验彼此智慧，越需要化解分歧的务实行动。如果没有平等和相互尊重的具体行动，依然反复“变脸”、漫天要价，重启的磋商也不会有结果。越到关键时刻，越要坚守原则底线，只有尊重彼此的核心关切，中美合作的道路才能越走越宽。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">在中国共产党坚强领导下，近14亿中国人民有志气、有能力实现“两个一百年”奋斗目标，不论发生什么问题，中国人民都必将风雨无阻前进。不论重启磋商结果如何，中国都必将走好自己的路、办好自己的事。此次G20峰会上，习近平主席又宣布了五项扩大开放新举措，中国深化改革开放的脚步更加坚定、从容，时与势始终在我们一边。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">中国人民期待，美方能同中方一道，顺应开放合作的时代潮流，积极搭建对话沟通的桥梁，以务实行动管控好分歧，推进以协调、合作、稳定为基调的中美关系，更好造福两国人民、更多惠及世界各国人民。（完）</p><p><br/></p>', 'admin', 1, '顶级机构', '200001', 16, 0, '2019-11-23 12:36:14', '2019-07-01 02:53:09');
INSERT INTO `cms_surname` VALUES (5, '清河崔氏', '\\/uploads\\/20190630/zXg1MjL59hX7ea0fQ5QfThAfjDj0dWCq4iQzspfc.jpeg', '啊啊啊', '<p><span style=\"color: #9cdcfe;\"></span></p><p>任何唯我独尊、自我优先、损人利己的做法都是不得人心、不受欢迎的。这次中美重启磋商，必须建立在平等和相互尊重基础上，这是化解分歧的前提和路径。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">新华社大阪6月29日电 题：重启中美经贸磋商尤需诚意和行动</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">新华社记者韩洁　刘春燕</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">6月29日，雨后放晴的日本大阪见证了本次二十国集团（G20）领导人峰会上最受瞩目的一刻：经过1个多小时会晤，中国国家主席习近平和美国总统特朗普同意，在平等和相互尊重基础上重启经贸磋商，美方不再对中国产品加征新的关税。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">这一结果给阴云笼罩的世界经济带来新的曙光：重启磋商就意味着中美经贸问题将回到正常轨道上进行，更稳定的中美关系有利于中国，有利于美国，也有利于全世界。磋商总是要讨论分歧的，分歧是客观存在的，我们希望通过磋商解决分歧，但也要保持平常心看待重启磋商，解决中美经贸问题需要更多诚意和行动。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">中美合则两利、斗则俱伤，以对话而非对抗方式解决分歧，始终是正确选择。此次会晤伊始，习近平主席以48年前发生在日本名古屋的中美“乒乓外交”开场，颇有深意。当前，中美关系遇到一些困难，这不符合双方利益，也背离了中美建交40年来的发展大势。双边贸易从不足25亿美元到超过6300亿美元，每天平均1.4万人乘坐航班往返于太平洋两岸……历史和事实证明，中美利益高度交融，合作领域广阔，不应该落入所谓冲突对抗的陷阱。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">重启经贸磋商，需要更多诚意——</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">去年底在阿根廷举行的G20峰会犹在眼前。今年以来，双方经贸团队落实中美元首共识重启磋商几个月后，美方又大搞极限施压、漫天要价，并不断推动中美经贸摩擦升级。任何唯我独尊、自我优先、损人利己的做法都是不得人心、不受欢迎的。这次中美重启磋商，必须建立在平等和相互尊重基础上，这是化解分歧的前提和路径。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">重启经贸磋商，需要更多行动——</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">行胜于言。越到关键时刻，越考验彼此智慧，越需要化解分歧的务实行动。如果没有平等和相互尊重的具体行动，依然反复“变脸”、漫天要价，重启的磋商也不会有结果。越到关键时刻，越要坚守原则底线，只有尊重彼此的核心关切，中美合作的道路才能越走越宽。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">在中国共产党坚强领导下，近14亿中国人民有志气、有能力实现“两个一百年”奋斗目标，不论发生什么问题，中国人民都必将风雨无阻前进。不论重启磋商结果如何，中国都必将走好自己的路、办好自己的事。此次G20峰会上，习近平主席又宣布了五项扩大开放新举措，中国深化改革开放的脚步更加坚定、从容，时与势始终在我们一边。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">中国人民期待，美方能同中方一道，顺应开放合作的时代潮流，积极搭建对话沟通的桥梁，以务实行动管控好分歧，推进以协调、合作、稳定为基调的中美关系，更好造福两国人民、更多惠及世界各国人民。（完）</p><p><span style=\"color: #9cdcfe;\"></span><br/></p><p><br/></p>', 'admin', 1, '顶级机构', '200001', 0, 0, '2019-07-01 02:57:13', '2019-07-01 02:56:13');
INSERT INTO `cms_surname` VALUES (6, '陇西李氏', '\\/uploads\\/20190630/AjqCmyGq8xFtLQrqPgwsTZDJq9RjIl4GkFNwxH1g.jpeg', '阿达大大', '<p>任何唯我独尊、自我优先、损人利己的做法都是不得人心、不受欢迎的。这次中美重启磋商，必须建立在平等和相互尊重基础上，这是化解分歧的前提和路径。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">新华社大阪6月29日电 题：重启中美经贸磋商尤需诚意和行动</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">新华社记者韩洁　</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">6月29日，雨后放晴的日本大阪见证了本次二十国集团（G20）领导人峰会上最受瞩目的一刻：经过1个多小时会晤，中国国家主席习近平和美国总统特朗普同意，在平等和相互尊重基础上重启经贸磋商，美方不再对中国产品加征新的关税。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">这一结果给阴云笼罩的世界经济带来新的曙光：重启磋商就意味着中美经贸问题将回到正常轨道上进行，更稳定的中美关系有利于中国，有利于美国，也有利于全世界。磋商总是要讨论分歧的，分歧是客观存在的，我们希望通过磋商解决分歧，但也要保持平常心看待重启磋商，解决中美经贸问题需要更多诚意和行动。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">中美合则两利、斗则俱伤，以对话而非对抗方式解决分歧，始终是正确选择。此次会晤伊始，习近平主席以48年前发生在日本名古屋的中美“乒乓外交”开场，颇有深意。当前，中美关系遇到一些困难，这不符合双方利益，也背离了中美建交40年来的发展大势。双边贸易从不足25亿美元到超过6300亿美元，每天平均1.4万人乘坐航班往返于太平洋两岸……历史和事实证明，中美利益高度交融，合作领域广阔，不应该落入所谓冲突对抗的陷阱。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">重启经贸磋商，需要更多诚意——</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">去年底在阿根廷举行的G20峰会犹在眼前。今年以来，双方经贸团队落实中美元首共识重启磋商几个月后，美方又大搞极限施压、漫天要价，并不断推动中美经贸摩擦升级。任何唯我独尊、自我优先、损人利己的做法都是不得人心、不受欢迎的。这次中美重启磋商，必须建立在平等和相互尊重基础上，这是化解分歧的前提和路径。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">重启经贸磋商，需要更多行动——</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">行胜于言。越到关键时刻，越考验彼此智慧，越需要化解分歧的务实行动。如果没有平等和相互尊重的具体行动，依然反复“变脸”、漫天要价，重启的磋商也不会有结果。越到关键时刻，越要坚守原则底线，只有尊重彼此的核心关切，中美合作的道路才能越走越宽。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">在中国共产党坚强领导下，近14亿中国人民有志气、有能力实现“两个一百年”奋斗目标，不论发生什么问题，中国人民都必将风雨无阻前进。不论重启磋商结果如何，中国都必将走好自己的路、办好自己的事。此次G20峰会上，习近平主席又宣布了五项扩大开放新举措，中国深化改革开放的脚步更加坚定、从容，时与势始终在我们一边。</p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">中国人民期待，美方能同中方一道，顺应开放合作的时代潮流，积极搭建对话沟通的桥梁，以务实行动管控好分歧，推进以协调、合作、稳定为基调的中美关系，更好造福两国人民、更多惠及世界各国人民。（完）</p><p><br/></p>', 'admin', 1, '顶级机构', '200001', 0, 0, '2019-11-08 17:33:12', '2019-11-08 17:33:12');
INSERT INTO `cms_surname` VALUES (7, '云梦江氏', '\\/uploads\\/20191108/qT76XFGSGGXSlNh5zoPeYS7UihMsZbpMvCqsP4jr.jpeg', '云梦江氏', '<p><span style=\"color: #333333; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: #FFFFFF;\">仙门世家四大家族之一，家族所在为莲花坞，家徽为九瓣莲。先祖江迟为游侠出身，立“明知不可为而为之”为唯一家训。</span></p>', 'admin', 1, '顶级机构', '200001', 0, 0, '2019-11-08 17:58:29', '2019-11-08 17:58:29');
INSERT INTO `cms_surname` VALUES (8, '姑苏蓝氏', '\\/uploads\\/20191108/ka4aQloJmuvnIrPYmUQtqpxIP3TAqmggI6teJ1uZ.png', '姑苏蓝氏', '<p><span style=\"color: #333333; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: #FFFFFF;\">仙门世家四大家族之一，家族所在为云深不知处，雅正为训，精通音律。家徽为卷云纹，共有四千多条家规。先祖蓝安出身庙宇，后为遇一人而入红尘，还俗为乐师。</span></p>', 'admin', 1, '顶级机构', '200001', 0, 0, '2019-11-08 17:58:20', '2019-11-08 17:58:20');
INSERT INTO `cms_surname` VALUES (11, '岐山温氏', '\\/uploads\\/20191116/Ev8YM30R4rXtrl1rkqXupe6WsYV8cpyA10xhkWZh.jpeg', '仙门世家五大家族之首（曾经），家族所在岐山不夜天城，家徽为太阳。（意喻：“与日争辉，与日同寿”）先祖为温卯（灭门派兴家族第一人）', '<p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 0em;\"><span class=\"bjh-p\"></span></p><p style=\"text-align: center\"><img src=\"http://api.com\\/uploads\\/20191116/Bw8O1YBeyfxiM0GkVkIJ0HSip3xsbDaaCaC828hR.jpeg\" width=\"444\" height=\"180\" style=\"width: 444px; height: 180px;\"/></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 0em;\"><span class=\"bjh-p\"></span></p><p style=\"text-align:center\"><img src=\"http://api.com\\/uploads\\/20191116/xHrOtY9gUMLvfGnnKzU902KbegkVIDmVGwLzJtt4.jpeg\" width=\"400\" height=\"240\" style=\"width: 400px; height: 240px;\"/></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 0em;\"><span class=\"bjh-p\">在番中我们可以看到魔道祖师前尘篇主要以五大家族为背景，围绕各个家族年轻翘楚展开的一段故事，俗话说，有人的地方就有江湖，番中也不例外，五大家族为了各自的家族利益和江湖地位也有一番较量。<span class=\"bjh-br\"></span></span><br/></p><p style=\"text-align:center\"><img class=\"large\" src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2235694002,3414904109&fm=173&app=25&f=JPEG?w=639&h=383&s=B695528104324D9C95A040F30300D0B2\" style=\"border: 0px; display: block; width: 388px; height: 227px;\" width=\"388\" height=\"227\" alt=\"\"/></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 0em;\"><span class=\"bjh-p\">云梦江氏：<span class=\"bjh-br\"></span>江氏家族位于云梦莲花坞，家族纹案为九瓣莲花，家族衣服颜色是紫色，家主是江枫眠，为人和善，多情，其实认真看番的小伙伴应该能发现，在番中有讲家主江枫眠的夫人与江枫眠属于家族联姻，首先江家就是五大家族之一，那么能和江家联姻的家族也不会弱到哪里去，而且江家家训为“明知不可而为之”却也是在最后前尘篇的末尾实在被逼急了联合另外三大家族一起讨伐岐山温家，由此可见岐山温氏的家族实力。</span><br/></p><p><img class=\"large\" src=\"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1516039382,1233026716&fm=173&app=25&f=JPEG?w=640&h=303&s=1E16C3055C60A51FDB0011CA0300A0B3\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 0em;\"><span class=\"bjh-p\"><span class=\"bjh-br\"></span>姑苏蓝氏：<span class=\"bjh-br\"></span>蓝氏家族位于姑苏云深不知处，家族纹案为卷云，家族衣服颜色是白色，代理家主是蓝启仁，同时也是云深不知处书屋的老师，为人正直，教导弟子也是以“雅正”为名，族中弟子擅长音律，所以蓝氏辈出美男子，而且云深不知处招收门生也是不招收“五官不整者”，根据番中给到的信息，云深不知处也算是“桃李满天下”就算与世无争，在云深不知处守得那一份静也是可以的，但是却也是被岐山温氏一直在打压，甚至把明明可以击杀的水祟故意驱赶到姑苏地界。</span></p><p><img class=\"large\" src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3772843450,3596666060&fm=173&app=25&f=JPEG?w=640&h=373&s=9B922FC94E2A7B15728C68580300C0D2\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 0em;\"><span class=\"bjh-p\">兰陵金氏：<span class=\"bjh-br\"></span>金氏家族位于兰陵金麟台，家族纹案为牡丹，家族衣服颜色是金色，家主是金光善，喜奢靡，喜精致奢华，金家算是五大家族最有钱并且奢侈的家族了，常言说，有钱能使鬼推磨，但是却还是推不动岐山温氏这块儿大石头，被压在头上喘不过气来。</span></p><p><img class=\"large\" src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2559067668,1707092022&fm=173&app=25&f=JPEG?w=640&h=308&s=8A83FA05AA332403CC251D170300E090\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 0em;\"><span class=\"bjh-p\"><span class=\"bjh-br\"></span>清河聂氏：<span class=\"bjh-br\"></span>聂氏家族位于清河不净世，家族纹案为兽头，家族衣服颜色是黑色，家主是聂明玦，嫉恶如仇，最后却被温家暗算。</span></p><p><img class=\"large\" src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1927396533,3833803449&fm=173&app=25&f=JPEG?w=640&h=397&s=723B1CC7413C2D3EEA44D0AD03006043\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 0em;\"><span class=\"bjh-p\">岐山温氏：<span class=\"bjh-br\"></span>温氏家族位于岐山不夜天城，家族纹案为太阳，家族衣服颜色是红色，家主是温若寒，为人心狠手辣，一直想统一仙门，唯我独尊，在番中，火烧姑苏、莲花坞、杀害蓝启仁、江氏宗主夫妇、聂氏宗主，震慑仙家百门，可谓是无恶不作，虽然这样非常的不人道，但是壮大宗门，想统一仙门，武力是最好的解决方法，重点是温若寒实力非常强，所以在前尘篇中，温家一家独大是有一定理由的，虽然在最后被四大家族讨伐灭门，但是也算是辉煌过并且统一过仙家百门的一个家族了。</span></p><p><br/></p>', 'admin', 1, '楼主', '200001', 0, 0, '2019-11-16 16:57:11', '2019-11-16 16:57:11');

-- ----------------------------
-- Table structure for cms_topological_graph
-- ----------------------------
DROP TABLE IF EXISTS `cms_topological_graph`;
CREATE TABLE `cms_topological_graph`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `surname_id` int(11) NOT NULL COMMENT '关联surnameID',
  `pid` int(11) NOT NULL,
  `level` int(11) NOT NULL COMMENT '级别',
  `member_id` int(255) NOT NULL COMMENT '成员id',
  `mate_id` int(11) NULL DEFAULT NULL COMMENT '配偶id',
  `top` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否置顶',
  `sort` int(255) NOT NULL DEFAULT 0 COMMENT '排序',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '更新人',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_topological_graph
-- ----------------------------
INSERT INTO `cms_topological_graph` VALUES (1, '刘邦-吕雉', 6, 0, 0, 7, 8, 0, 0, 1, 1, '2019-07-02 06:53:28', '2019-11-16 16:27:45');
INSERT INTO `cms_topological_graph` VALUES (2, '刘盈-小芳', 6, 1, 1, 9, 5, 0, 1, 1, 1, '2019-07-02 07:12:08', '2019-11-16 16:27:34');
INSERT INTO `cms_topological_graph` VALUES (3, '刘恭-窦绮恒', 6, 2, 2, 10, 12, 0, 0, 1, NULL, '2019-07-02 07:30:37', '2019-07-02 07:30:37');
INSERT INTO `cms_topological_graph` VALUES (4, '刘恒-小红', 6, 3, 3, 11, 6, 0, 0, 1, NULL, '2019-07-02 07:31:01', '2019-07-02 07:45:33');
INSERT INTO `cms_topological_graph` VALUES (7, '小明', 6, 2, 2, 13, NULL, 0, 0, 1, NULL, '2019-07-03 04:04:24', '2019-07-03 04:04:24');
INSERT INTO `cms_topological_graph` VALUES (8, '魏无羡', 6, 3, 3, 14, NULL, 0, 0, 1, NULL, '2019-07-03 04:09:28', '2019-07-03 04:09:28');
INSERT INTO `cms_topological_graph` VALUES (9, '小苹果', 6, 1, 1, 15, NULL, 0, 0, 1, NULL, '2019-07-03 04:16:19', '2019-07-03 04:16:19');
INSERT INTO `cms_topological_graph` VALUES (18, '小芳-刘邦', 6, 7, 3, 5, 7, 0, 0, 1, NULL, '2019-11-16 16:33:17', '2019-11-16 16:33:17');

-- ----------------------------
-- Table structure for cms_user
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `sex` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0女，1男',
  `headUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `lat` decimal(10, 7) NULL DEFAULT NULL COMMENT '纬度',
  `lng` decimal(10, 7) NULL DEFAULT NULL COMMENT '经度',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `用户名`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_user
-- ----------------------------
INSERT INTO `cms_user` VALUES (6, '15655569098', '$2y$10$FrX54fIHtGIdDrURv5g7uu98Utj5okTkMqC9Y/3v0lRBcXdtfyUdi', '鲁班', 1, '\\/uploads\\/20191119/AhBDVlsxb1so9A57trSVervrJwDrxyvuuxhaOoGt.jpeg', 0, 39.0909082, 117.2059136, '2019-11-14 19:14:19', '2019-11-19 11:05:49');

-- ----------------------------
-- Table structure for cms_weather
-- ----------------------------
DROP TABLE IF EXISTS `cms_weather`;
CREATE TABLE `cms_weather`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL COMMENT '城市ID',
  `city_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市名称',
  `cityEn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `week` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '星期',
  `wea` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '天气状态',
  `tem` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '当前温度',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '天气内容',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `created_at` datetime NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_weather
-- ----------------------------
INSERT INTO `cms_weather` VALUES (27, 101031300, '河西', 'hexi', '星期三', '晴', '0℃', '{\"cityid\":\"101031300\",\"update_time\":\"2019-11-27 18:00:00\",\"city\":\"\\u6cb3\\u897f\",\"cityEn\":\"hexi\",\"country\":\"\\u4e2d\\u56fd\",\"countryEn\":\"China\",\"data\":[{\"day\":\"27\\u65e5\\uff08\\u4eca\\u5929\\uff09\",\"date\":\"2019-11-27\",\"week\":\"\\u661f\\u671f\\u4e09\",\"wea\":\"\\u6674\",\"wea_img\":\"qing\",\"air\":0,\"humidity\":40,\"air_level\":\"\\u4f18\",\"air_tips\":\"\\u7a7a\\u6c14\\u5f88\\u597d\\uff0c\\u53ef\\u4ee5\\u5916\\u51fa\\u6d3b\\u52a8\\uff0c\\u547c\\u5438\\u65b0\\u9c9c\\u7a7a\\u6c14\\uff0c\\u62e5\\u62b1\\u5927\\u81ea\\u7136\\uff01\",\"alarm\":{\"alarm_type\":\"\",\"alarm_level\":\"\",\"alarm_content\":\"\"},\"tem1\":\"5\\u2103\",\"tem2\":\"-2\\u2103\",\"tem\":\"0\\u2103\",\"win\":[\"\\u4e1c\\u5317\\u98ce\"],\"win_speed\":\"<3\\u7ea7\",\"hours\":[{\"day\":\"27\\u65e520\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"0\\u2103\",\"win\":\"\\u4e1c\\u5317\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"27\\u65e523\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"0\\u2103\",\"win\":\"\\u4e1c\\u5317\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"28\\u65e502\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"0\\u2103\",\"win\":\"\\u4e1c\\u5317\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"28\\u65e505\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"-1\\u2103\",\"win\":\"\\u4e1c\\u5317\\u98ce\",\"win_speed\":\"<3\\u7ea7\"}],\"index\":[{\"title\":\"\\u7d2b\\u5916\\u7ebf\\u6307\\u6570\",\"level\":\"\\u5f31\",\"desc\":\"\\u8f90\\u5c04\\u8f83\\u5f31\\uff0c\\u6d82\\u64e6SPF12-15\\u3001PA+\\u62a4\\u80a4\\u54c1\\u3002\"},{\"title\":\"<\\/em><em><\\/em><em><\\/em><em>\",\"level\":null,\"desc\":\"\\u5929\\u51c9\\u5ba4\\u5185\\u53ef\\u5065\\u8eab\\uff0c\\u6237\\u5916\\u8fd0\\u52a8\\u9700\\u4fdd\\u6696\\u3002\"},{\"title\":\"\\u5065\\u81fb\\u00b7\\u8840\\u7cd6\\u6307\\u6570\",\"level\":\"\\u4e0d\\u6613\\u6ce2\\u52a8\",\"desc\":\"\\u5929\\u6c14\\u6761\\u4ef6\\u597d\\uff0c\\u8840\\u7cd6\\u4e0d\\u6613\\u6ce2\\u52a8\\uff0c\\u53ef\\u9002\\u65f6\\u8fdb\\u884c\\u6237\\u5916\\u953b\\u70bc\\u3002\"},{\"title\":\"\\u7a7f\\u8863\\u6307\\u6570\",\"level\":\"\\u5bd2\\u51b7\",\"desc\":\"\\u5efa\\u8bae\\u7740\\u539a\\u7fbd\\u7ed2\\u670d\\u7b49\\u9686\\u51ac\\u670d\\u88c5\\u3002\"},{\"title\":\"\\u6d17\\u8f66\\u6307\\u6570\",\"level\":\"\\u9002\\u5b9c\",\"desc\":\"\\u5929\\u6c14\\u8f83\\u597d\\uff0c\\u9002\\u5408\\u64e6\\u6d17\\u6c7d\\u8f66\\u3002\"},{\"title\":\"\\u7a7a\\u6c14\\u6c61\\u67d3\\u6269\\u6563\\u6307\\u6570\",\"level\":\"\\u4e2d\",\"desc\":\"\\u6613\\u611f\\u4eba\\u7fa4\\u5e94\\u9002\\u5f53\\u51cf\\u5c11\\u5ba4\\u5916\\u6d3b\\u52a8\\u3002\"}]},{\"day\":\"28\\u65e5\\uff08\\u660e\\u5929\\uff09\",\"date\":\"2019-11-28\",\"week\":\"\\u661f\\u671f\\u56db\",\"wea\":\"\\u6674\",\"wea_img\":\"qing\",\"tem1\":\"5\\u2103\",\"tem2\":\"-1\\u2103\",\"tem\":\"0\\u2103\",\"win\":[\"\\u897f\\u5357\\u98ce\",\"\\u5357\\u98ce\"],\"win_speed\":\"<3\\u7ea7\",\"hours\":[{\"day\":\"28\\u65e508\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"0\\u2103\",\"win\":\"\\u4e1c\\u5317\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"28\\u65e511\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"3\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"28\\u65e514\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"4\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"28\\u65e517\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"3\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"28\\u65e520\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"1\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"28\\u65e523\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"1\\u2103\",\"win\":\"\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"29\\u65e502\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"0\\u2103\",\"win\":\"\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"29\\u65e505\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"0\\u2103\",\"win\":\"\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"}],\"index\":[{\"title\":\"\\u7d2b\\u5916\\u7ebf\\u6307\\u6570\",\"level\":\"\\u4e2d\\u7b49\",\"desc\":\"\\u6d82\\u64e6SPF\\u5927\\u4e8e15\\u3001PA+\\u9632\\u6652\\u62a4\\u80a4\\u54c1\\u3002\"},{\"title\":\"<\\/em><em><\\/em><em><\\/em><em>\",\"level\":null,\"desc\":\"\\u5929\\u51c9\\u5ba4\\u5185\\u53ef\\u5065\\u8eab\\uff0c\\u6237\\u5916\\u8fd0\\u52a8\\u9700\\u4fdd\\u6696\\u3002\"},{\"title\":\"\\u5065\\u81fb\\u00b7\\u8840\\u7cd6\\u6307\\u6570\",\"level\":\"\\u4e0d\\u6613\\u6ce2\\u52a8\",\"desc\":\"\\u5929\\u6c14\\u6761\\u4ef6\\u597d\\uff0c\\u8840\\u7cd6\\u4e0d\\u6613\\u6ce2\\u52a8\\uff0c\\u53ef\\u9002\\u65f6\\u8fdb\\u884c\\u6237\\u5916\\u953b\\u70bc\\u3002\"},{\"title\":\"\\u7a7f\\u8863\\u6307\\u6570\",\"level\":\"\\u51b7\",\"desc\":\"\\u5efa\\u8bae\\u7740\\u68c9\\u8863\\u52a0\\u7f8a\\u6bdb\\u886b\\u7b49\\u51ac\\u5b63\\u670d\\u88c5\\u3002\"},{\"title\":\"\\u6d17\\u8f66\\u6307\\u6570\",\"level\":\"\\u8f83\\u9002\\u5b9c\",\"desc\":\"\\u65e0\\u96e8\\u4e14\\u98ce\\u529b\\u8f83\\u5c0f\\uff0c\\u6613\\u4fdd\\u6301\\u6e05\\u6d01\\u5ea6\\u3002\"},{\"title\":\"\\u7a7a\\u6c14\\u6c61\\u67d3\\u6269\\u6563\\u6307\\u6570\",\"level\":\"\\u4e2d\",\"desc\":\"\\u6613\\u611f\\u4eba\\u7fa4\\u5e94\\u9002\\u5f53\\u51cf\\u5c11\\u5ba4\\u5916\\u6d3b\\u52a8\\u3002\"}]},{\"day\":\"29\\u65e5\\uff08\\u540e\\u5929\\uff09\",\"date\":\"2019-11-29\",\"week\":\"\\u661f\\u671f\\u4e94\",\"wea\":\"\\u9634\\u8f6c\\u5c0f\\u96ea\",\"wea_img\":\"xue\",\"tem1\":\"5\\u2103\",\"tem2\":\"-1\\u2103\",\"tem\":\"1\\u2103\",\"win\":[\"\\u897f\\u5357\\u98ce\",\"\\u897f\\u5357\\u98ce\"],\"win_speed\":\"<3\\u7ea7\",\"hours\":[{\"day\":\"29\\u65e508\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"1\\u2103\",\"win\":\"\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"29\\u65e511\\u65f6\",\"wea\":\"\\u9634\",\"tem\":\"4\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"29\\u65e514\\u65f6\",\"wea\":\"\\u9634\",\"tem\":\"4\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"29\\u65e517\\u65f6\",\"wea\":\"\\u9634\",\"tem\":\"3\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"29\\u65e520\\u65f6\",\"wea\":\"\\u9634\",\"tem\":\"2\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"29\\u65e523\\u65f6\",\"wea\":\"\\u9634\",\"tem\":\"0\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"30\\u65e502\\u65f6\",\"wea\":\"\\u9634\",\"tem\":\"0\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"30\\u65e505\\u65f6\",\"wea\":\"\\u5c0f\\u96ea\",\"tem\":\"0\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"}],\"index\":[{\"title\":\"\\u7d2b\\u5916\\u7ebf\\u6307\\u6570\",\"level\":\"\\u6700\\u5f31\",\"desc\":\"\\u8f90\\u5c04\\u5f31\\uff0c\\u6d82\\u64e6SPF8-12\\u9632\\u6652\\u62a4\\u80a4\\u54c1\\u3002\"},{\"title\":\"<\\/em><em><\\/em><em><\\/em><em>\",\"level\":null,\"desc\":\"\\u5929\\u51c9\\u5ba4\\u5185\\u53ef\\u5065\\u8eab\\uff0c\\u6237\\u5916\\u8fd0\\u52a8\\u9700\\u4fdd\\u6696\\u3002\"},{\"title\":\"\\u5065\\u81fb\\u00b7\\u8840\\u7cd6\\u6307\\u6570\",\"level\":\"\\u4e0d\\u6613\\u6ce2\\u52a8\",\"desc\":\"\\u5929\\u6c14\\u6761\\u4ef6\\u597d\\uff0c\\u8840\\u7cd6\\u4e0d\\u6613\\u6ce2\\u52a8\\uff0c\\u53ef\\u9002\\u65f6\\u8fdb\\u884c\\u6237\\u5916\\u953b\\u70bc\\u3002\"},{\"title\":\"\\u7a7f\\u8863\\u6307\\u6570\",\"level\":\"\\u51b7\",\"desc\":\"\\u5efa\\u8bae\\u7740\\u68c9\\u8863\\u52a0\\u7f8a\\u6bdb\\u886b\\u7b49\\u51ac\\u5b63\\u670d\\u88c5\\u3002\"},{\"title\":\"\\u6d17\\u8f66\\u6307\\u6570\",\"level\":\"\\u4e0d\\u5b9c\",\"desc\":\"\\u6709\\u96ea\\uff0c\\u96ea\\u6c34\\u548c\\u6ce5\\u6c34\\u4f1a\\u5f04\\u810f\\u7231\\u8f66\\u3002\"},{\"title\":\"\\u7a7a\\u6c14\\u6c61\\u67d3\\u6269\\u6563\\u6307\\u6570\",\"level\":\"\\u8f83\\u5dee\",\"desc\":\"\\u6c14\\u8c61\\u6761\\u4ef6\\u8f83\\u4e0d\\u5229\\u4e8e\\u7a7a\\u6c14\\u6c61\\u67d3\\u7269\\u6269\\u6563\\u3002\\u3002\"}]},{\"day\":\"30\\u65e5\\uff08\\u5468\\u516d\\uff09\",\"date\":\"2019-11-30\",\"week\":\"\\u661f\\u671f\\u516d\",\"wea\":\"\\u9634\\u8f6c\\u591a\\u4e91\",\"wea_img\":\"yun\",\"tem1\":\"4\\u2103\",\"tem2\":\"-2\\u2103\",\"tem\":\"-1\\u2103\",\"win\":[\"\\u897f\\u98ce\",\"\\u5317\\u98ce\"],\"win_speed\":\"<3\\u7ea7\",\"hours\":[{\"day\":\"30\\u65e508\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"0\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"30\\u65e511\\u65f6\",\"wea\":\"\\u9634\",\"tem\":\"2\\u2103\",\"win\":\"\\u897f\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"30\\u65e514\\u65f6\",\"wea\":\"\\u591a\\u4e91\",\"tem\":\"3\\u2103\",\"win\":\"\\u897f\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"30\\u65e517\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"2\\u2103\",\"win\":\"\\u897f\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"30\\u65e520\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"1\\u2103\",\"win\":\"\\u897f\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"01\\u65e502\\u65f6\",\"wea\":\"\\u591a\\u4e91\",\"tem\":\"-1\\u2103\",\"win\":\"\\u5317\\u98ce\",\"win_speed\":\"<3\\u7ea7\"}],\"index\":[{\"title\":\"\\u7d2b\\u5916\\u7ebf\\u6307\\u6570\",\"level\":\"\\u6700\\u5f31\",\"desc\":\"\\u8f90\\u5c04\\u5f31\\uff0c\\u6d82\\u64e6SPF8-12\\u9632\\u6652\\u62a4\\u80a4\\u54c1\\u3002\"},{\"title\":\"<\\/em><em><\\/em><em><\\/em><em>\",\"level\":null,\"desc\":\"\\u5929\\u51c9\\u5ba4\\u5185\\u53ef\\u5065\\u8eab\\uff0c\\u6237\\u5916\\u8fd0\\u52a8\\u9700\\u4fdd\\u6696\\u3002\"},{\"title\":\"\\u5065\\u81fb\\u00b7\\u8840\\u7cd6\\u6307\\u6570\",\"level\":\"\\u4e0d\\u6613\\u6ce2\\u52a8\",\"desc\":\"\\u5929\\u6c14\\u6761\\u4ef6\\u597d\\uff0c\\u8840\\u7cd6\\u4e0d\\u6613\\u6ce2\\u52a8\\uff0c\\u53ef\\u9002\\u65f6\\u8fdb\\u884c\\u6237\\u5916\\u953b\\u70bc\\u3002\"},{\"title\":\"\\u7a7f\\u8863\\u6307\\u6570\",\"level\":\"\\u5bd2\\u51b7\",\"desc\":\"\\u5efa\\u8bae\\u7740\\u539a\\u7fbd\\u7ed2\\u670d\\u7b49\\u9686\\u51ac\\u670d\\u88c5\\u3002\"},{\"title\":\"\\u6d17\\u8f66\\u6307\\u6570\",\"level\":\"\\u9002\\u5b9c\",\"desc\":\"\\u5929\\u6c14\\u8f83\\u597d\\uff0c\\u9002\\u5408\\u64e6\\u6d17\\u6c7d\\u8f66\\u3002\"},{\"title\":\"\\u7a7a\\u6c14\\u6c61\\u67d3\\u6269\\u6563\\u6307\\u6570\",\"level\":\"\\u8f83\\u5dee\",\"desc\":\"\\u6c14\\u8c61\\u6761\\u4ef6\\u8f83\\u4e0d\\u5229\\u4e8e\\u7a7a\\u6c14\\u6c61\\u67d3\\u7269\\u6269\\u6563\\u3002\\u3002\"}]},{\"day\":\"1\\u65e5\\uff08\\u5468\\u65e5\\uff09\",\"date\":\"2019-12-01\",\"week\":\"\\u661f\\u671f\\u65e5\",\"wea\":\"\\u6674\",\"wea_img\":\"qing\",\"tem1\":\"4\\u2103\",\"tem2\":\"-3\\u2103\",\"tem\":\"0\\u2103\",\"win\":[\"\\u897f\\u5317\\u98ce\",\"\\u897f\\u5317\\u98ce\"],\"win_speed\":\"4-5\\u7ea7\",\"hours\":[{\"day\":\"01\\u65e508\\u65f6\",\"wea\":\"\\u591a\\u4e91\",\"tem\":\"-1\\u2103\",\"win\":\"\\u5317\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"01\\u65e514\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"4\\u2103\",\"win\":\"\\u897f\\u5317\\u98ce\",\"win_speed\":\"4-5\\u7ea7\"},{\"day\":\"01\\u65e520\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"0\\u2103\",\"win\":\"\\u897f\\u5317\\u98ce\",\"win_speed\":\"4-5\\u7ea7\"},{\"day\":\"02\\u65e502\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"0\\u2103\",\"win\":\"\\u897f\\u5317\\u98ce\",\"win_speed\":\"4-5\\u7ea7\"}],\"index\":[{\"title\":\"\\u7d2b\\u5916\\u7ebf\\u6307\\u6570\",\"level\":\"\\u5f31\",\"desc\":\"\\u8f90\\u5c04\\u8f83\\u5f31\\uff0c\\u6d82\\u64e6SPF12-15\\u3001PA+\\u62a4\\u80a4\\u54c1\\u3002\"},{\"title\":\"<\\/em><em><\\/em><em><\\/em><em>\",\"level\":null,\"desc\":\"\\u5929\\u6709\\u70b9\\u51b7\\u98ce\\u8f83\\u5927\\uff0c\\u4e0d\\u59a8\\u5ba4\\u5185\\u8fd0\\u52a8\\u4e0b\\u3002\"},{\"title\":\"\\u5065\\u81fb\\u00b7\\u8840\\u7cd6\\u6307\\u6570\",\"level\":\"\\u4e0d\\u6613\\u6ce2\\u52a8\",\"desc\":\"\\u5929\\u6c14\\u6761\\u4ef6\\u4e0d\\u6613\\u5f15\\u8d77\\u8840\\u7cd6\\u6ce2\\u52a8\\u3002\"},{\"title\":\"\\u7a7f\\u8863\\u6307\\u6570\",\"level\":\"\\u5bd2\\u51b7\",\"desc\":\"\\u5efa\\u8bae\\u7740\\u539a\\u7fbd\\u7ed2\\u670d\\u7b49\\u9686\\u51ac\\u670d\\u88c5\\u3002\"},{\"title\":\"\\u6d17\\u8f66\\u6307\\u6570\",\"level\":\"\\u9002\\u5b9c\",\"desc\":\"\\u5929\\u6c14\\u8f83\\u597d\\uff0c\\u9002\\u5408\\u64e6\\u6d17\\u6c7d\\u8f66\\u3002\"},{\"title\":\"\\u7a7a\\u6c14\\u6c61\\u67d3\\u6269\\u6563\\u6307\\u6570\",\"level\":\"\\u826f\",\"desc\":\"\\u6c14\\u8c61\\u6761\\u4ef6\\u6709\\u5229\\u4e8e\\u7a7a\\u6c14\\u6c61\\u67d3\\u7269\\u6269\\u6563\\u3002\"}]},{\"day\":\"2\\u65e5\\uff08\\u5468\\u4e00\\uff09\",\"date\":\"2019-12-02\",\"week\":\"\\u661f\\u671f\\u4e00\",\"wea\":\"\\u6674\",\"wea_img\":\"qing\",\"tem1\":\"4\\u2103\",\"tem2\":\"-3\\u2103\",\"tem\":\"-1\\u2103\",\"win\":[\"\\u897f\\u5357\\u98ce\",\"\\u897f\\u5357\\u98ce\"],\"win_speed\":\"3-4\\u7ea7\\u8f6c<3\\u7ea7\",\"hours\":[{\"day\":\"02\\u65e508\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"-2\\u2103\",\"win\":\"\\u897f\\u5317\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"02\\u65e514\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"3\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"3-4\\u7ea7\"},{\"day\":\"02\\u65e520\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"0\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"03\\u65e502\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"-1\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"}],\"index\":[{\"title\":\"\\u7d2b\\u5916\\u7ebf\\u6307\\u6570\",\"level\":\"\\u5f31\",\"desc\":\"\\u8f90\\u5c04\\u8f83\\u5f31\\uff0c\\u6d82\\u64e6SPF12-15\\u3001PA+\\u62a4\\u80a4\\u54c1\\u3002\"},{\"title\":\"<\\/em><em><\\/em><em><\\/em><em>\",\"level\":null,\"desc\":\"\\u5929\\u6709\\u70b9\\u51b7\\u98ce\\u8f83\\u5927\\uff0c\\u4e0d\\u59a8\\u5ba4\\u5185\\u8fd0\\u52a8\\u4e0b\\u3002\"},{\"title\":\"\\u5065\\u81fb\\u00b7\\u8840\\u7cd6\\u6307\\u6570\",\"level\":\"\\u4e0d\\u6613\\u6ce2\\u52a8\",\"desc\":\"\\u5929\\u6c14\\u6761\\u4ef6\\u597d\\uff0c\\u8840\\u7cd6\\u4e0d\\u6613\\u6ce2\\u52a8\\uff0c\\u53ef\\u9002\\u65f6\\u8fdb\\u884c\\u6237\\u5916\\u953b\\u70bc\\u3002\"},{\"title\":\"\\u7a7f\\u8863\\u6307\\u6570\",\"level\":\"\\u5bd2\\u51b7\",\"desc\":\"\\u5efa\\u8bae\\u7740\\u539a\\u7fbd\\u7ed2\\u670d\\u7b49\\u9686\\u51ac\\u670d\\u88c5\\u3002\"},{\"title\":\"\\u6d17\\u8f66\\u6307\\u6570\",\"level\":\"\\u9002\\u5b9c\",\"desc\":\"\\u5929\\u6c14\\u8f83\\u597d\\uff0c\\u9002\\u5408\\u64e6\\u6d17\\u6c7d\\u8f66\\u3002\"},{\"title\":\"\\u7a7a\\u6c14\\u6c61\\u67d3\\u6269\\u6563\\u6307\\u6570\",\"level\":\"\\u826f\",\"desc\":\"\\u6c14\\u8c61\\u6761\\u4ef6\\u6709\\u5229\\u4e8e\\u7a7a\\u6c14\\u6c61\\u67d3\\u7269\\u6269\\u6563\\u3002\"}]},{\"day\":\"3\\u65e5\\uff08\\u5468\\u4e8c\\uff09\",\"date\":\"2019-12-03\",\"week\":\"\\u661f\\u671f\\u4e8c\",\"wea\":\"\\u6674\",\"wea_img\":\"qing\",\"tem1\":\"7\\u2103\",\"tem2\":\"-3\\u2103\",\"tem\":\"1\\u2103\",\"win\":[\"\\u897f\\u98ce\",\"\\u897f\\u5317\\u98ce\"],\"win_speed\":\"<3\\u7ea7\",\"hours\":[{\"day\":\"03\\u65e508\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"-2\\u2103\",\"win\":\"\\u897f\\u5357\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"03\\u65e514\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"6\\u2103\",\"win\":\"\\u897f\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"03\\u65e520\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"0\\u2103\",\"win\":\"\\u897f\\u98ce\",\"win_speed\":\"<3\\u7ea7\"},{\"day\":\"04\\u65e502\\u65f6\",\"wea\":\"\\u6674\",\"tem\":\"1\\u2103\",\"win\":\"\\u897f\\u5317\\u98ce\",\"win_speed\":\"<3\\u7ea7\"}],\"index\":[{\"title\":\"\\u7d2b\\u5916\\u7ebf\\u6307\\u6570\",\"level\":\"\\u4e2d\\u7b49\",\"desc\":\"\\u6d82\\u64e6SPF\\u5927\\u4e8e15\\u3001PA+\\u9632\\u6652\\u62a4\\u80a4\\u54c1\\u3002\"},{\"title\":\"<\\/em><em>\",\"level\":null,\"desc\":\"\\u5929\\u6c14\\u8f83\\u8212\\u9002\\uff0c\\u51cf\\u80a5\\u6b63\\u5f53\\u65f6\\u3002\"},{\"title\":\"\\u5065\\u81fb\\u00b7\\u8840\\u7cd6\\u6307\\u6570\",\"level\":\"\\u4e0d\\u6613\\u6ce2\\u52a8\",\"desc\":\"\\u5929\\u6c14\\u6761\\u4ef6\\u597d\\uff0c\\u8840\\u7cd6\\u4e0d\\u6613\\u6ce2\\u52a8\\uff0c\\u53ef\\u9002\\u65f6\\u8fdb\\u884c\\u6237\\u5916\\u953b\\u70bc\\u3002\"},{\"title\":\"\\u7a7f\\u8863\\u6307\\u6570\",\"level\":\"\\u51b7\",\"desc\":\"\\u5efa\\u8bae\\u7740\\u68c9\\u8863\\u52a0\\u7f8a\\u6bdb\\u886b\\u7b49\\u51ac\\u5b63\\u670d\\u88c5\\u3002\"},{\"title\":\"\\u6d17\\u8f66\\u6307\\u6570\",\"level\":\"\\u9002\\u5b9c\",\"desc\":\"\\u5929\\u6c14\\u8f83\\u597d\\uff0c\\u9002\\u5408\\u64e6\\u6d17\\u6c7d\\u8f66\\u3002\"},{\"title\":\"\\u7a7a\\u6c14\\u6c61\\u67d3\\u6269\\u6563\\u6307\\u6570\",\"level\":\"\\u4e2d\",\"desc\":\"\\u6613\\u611f\\u4eba\\u7fa4\\u5e94\\u9002\\u5f53\\u51cf\\u5c11\\u5ba4\\u5916\\u6d3b\\u52a8\\u3002\"}]}]}', 0, '2019-11-27 23:38:33', '2019-11-27 23:38:33');

-- ----------------------------
-- Table structure for cms_yellow_calendar
-- ----------------------------
DROP TABLE IF EXISTS `cms_yellow_calendar`;
CREATE TABLE `cms_yellow_calendar`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yangli` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '阳历',
  `yinli` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '	阴历',
  `wuxing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '五行',
  `chongsha` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '冲煞',
  `baiji` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '彭祖百忌',
  `jishen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '吉神宜趋',
  `yi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宜',
  `xiongshen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '凶神宜忌',
  `ji` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '忌',
  `created_at` datetime NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_yellow_calendar
-- ----------------------------
INSERT INTO `cms_yellow_calendar` VALUES (1, '2019-11-26', '己亥(猪)年十一月初一', '炉中火 定执位', '冲鸡(辛酉)煞西', '丁不剃头头必生疮 卯不穿井水泉不香', '阴德 民日 三合 时阴 五合 鸣犬对', '祭祀 祈福 订盟 纳采 裁衣 拆卸 修造 动土 起基 安床 移徙 入宅 安香 入殓 移柩 安葬 谢土 赴任 进人口 会亲友', '元武', '作灶 治病', '2019-11-26 15:11:27', '2019-11-26 15:49:27');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (8, '2018_12_04_124307_create_customer_table', 1);
INSERT INTO `migrations` VALUES (9, '2018_12_04_125801_create_lly_roles_table', 1);
INSERT INTO `migrations` VALUES (10, '2018_12_04_130535_create_lly_permissions_table', 1);
INSERT INTO `migrations` VALUES (11, '2018_12_04_132025_create_role_permissions_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('e9ff0cd2424019ce62bc9dad01e95f86240cebdae7fa8e7f976ddb5d547eebff56b1cd44eb3c0114', 1, 2, NULL, '[]', 0, '2019-06-24 19:54:13', '2019-06-24 19:54:13', '2019-07-09 11:54:13');
INSERT INTO `oauth_access_tokens` VALUES ('a17c33d4790de1c4caa9a86499baf50233526d3c352d4371eea38d3249a840c2095919d484698ec4', 1, 2, NULL, '[]', 0, '2019-06-24 20:04:39', '2019-06-24 20:04:39', '2019-07-09 12:04:39');
INSERT INTO `oauth_access_tokens` VALUES ('62dda3182fc9a2d25891743a5c2297e3b5712c21d914a81fbafab3de72ad62e9e6fd484b5fca707e', 1, 2, NULL, '[]', 0, '2019-06-24 20:13:05', '2019-06-24 20:13:05', '2019-07-09 12:13:05');
INSERT INTO `oauth_access_tokens` VALUES ('8ee9c47009d339053e8dc2cf7130d57c5764cf812039397016f3bbda5bc73c5513dd9964ab990b06', 1, 2, NULL, '[]', 0, '2019-06-24 20:13:45', '2019-06-24 20:13:45', '2019-07-09 12:13:45');
INSERT INTO `oauth_access_tokens` VALUES ('48e2112628673a7b85f77e69c20b7c400d7c2e2337256997ba6efcf533ba98eaf9ae4cf25607e689', 1, 2, NULL, '[]', 0, '2019-06-24 20:14:16', '2019-06-24 20:14:16', '2019-07-09 12:14:16');
INSERT INTO `oauth_access_tokens` VALUES ('8c26635599d5bce9f4ed81c0b5e2950e6a8a87c10aef62285977c8c6418d28a417e419e7fe670a5e', 1, 2, NULL, '[]', 0, '2019-06-24 20:16:05', '2019-06-24 20:16:05', '2019-07-09 12:16:05');
INSERT INTO `oauth_access_tokens` VALUES ('7b47bce9e79ff1d1aedf82abae7255faeebd724a6de07272a3338519df6f5854271797042f3d3b24', 1, 2, NULL, '[]', 0, '2019-06-24 20:24:05', '2019-06-24 20:24:05', '2019-07-09 12:24:05');
INSERT INTO `oauth_access_tokens` VALUES ('cec182abb4f4f1e5ac39ad8a9fe7b2a87e6600938c0eed4f1442c5c62159899874d15925fab32333', 1, 2, NULL, '[]', 0, '2019-06-24 20:25:16', '2019-06-24 20:25:16', '2019-07-09 12:25:16');
INSERT INTO `oauth_access_tokens` VALUES ('f7fbe21b2753549c37eb39fe03f278b5702d2a3a319300723a2aa9bb82d9ddf3c9302ea8a1afda50', 1, 2, NULL, '[]', 0, '2019-06-24 20:27:57', '2019-06-24 20:27:57', '2019-07-09 12:27:57');
INSERT INTO `oauth_access_tokens` VALUES ('ee9003fb4c058970b56fcef50f3b302d0f48ff30eae9831f83cd6b7cd8fab759fe3dd65572177749', 1, 2, NULL, '[]', 0, '2019-06-24 20:29:58', '2019-06-24 20:29:58', '2019-07-09 12:29:58');
INSERT INTO `oauth_access_tokens` VALUES ('c10ddda0281136b1c56a5b4a966c0903025e79d86e9672f6a183f0acb7f1aa8e3d53cd43975e85a2', 1, 2, NULL, '[]', 0, '2019-06-24 20:40:11', '2019-06-24 20:40:11', '2019-07-09 12:40:11');
INSERT INTO `oauth_access_tokens` VALUES ('7884e986f38766d59a92797d28856d8bff431369e5c9213cb7b723874795f9410486eb0c12e0e010', 1, 2, NULL, '[]', 0, '2019-06-24 20:51:05', '2019-06-24 20:51:05', '2019-07-09 12:51:05');
INSERT INTO `oauth_access_tokens` VALUES ('53f2ad16bd74653c87b3379037894664595852f21425704b5e252b2cab5ef9141dcb4f0c9263df4a', 1, 2, NULL, '[]', 0, '2019-06-24 20:52:15', '2019-06-24 20:52:15', '2019-07-09 12:52:15');
INSERT INTO `oauth_access_tokens` VALUES ('fde5261a393f85302b64d40f83e4ce25a4163df83c10e9456fabde8bf93a632abf7d8d6d4bf83379', 1, 2, NULL, '[]', 0, '2019-06-24 20:52:42', '2019-06-24 20:52:42', '2019-07-09 12:52:42');
INSERT INTO `oauth_access_tokens` VALUES ('6a57c6cb909f1f3966050cbba5c89c2d73bc5242f35e6d2ee71616eb55b4bd3b45de59a0bfcb3554', 1, 2, NULL, '[]', 0, '2019-06-24 21:04:19', '2019-06-24 21:04:19', '2019-07-09 13:04:19');
INSERT INTO `oauth_access_tokens` VALUES ('f7f6c84c4c5fccb5f68270afc29c1a4b8d06a8107cf092f6caa7dc72064c84eb4a41d9d7a80d28a7', 1, 2, NULL, '[]', 0, '2019-06-24 21:04:35', '2019-06-24 21:04:35', '2019-07-09 13:04:35');
INSERT INTO `oauth_access_tokens` VALUES ('ab9bf721c08e9186561e3dcdb210f9bcc511e9e81d054cc52c12146364c2281fa63dfe57c4fd23f0', 1, 2, NULL, '[]', 0, '2019-06-24 21:05:19', '2019-06-24 21:05:19', '2019-07-09 13:05:19');
INSERT INTO `oauth_access_tokens` VALUES ('36fbc1a4cf1dce00328110d4487e39e7fb45e6394060a67f2d45c21a6a09ecafff58eb4b4385cb95', 1, 2, NULL, '[]', 0, '2019-06-24 21:07:51', '2019-06-24 21:07:51', '2019-07-09 13:07:51');
INSERT INTO `oauth_access_tokens` VALUES ('812ebcafd585f32e93ca9ddccbc3fcb6344d298ecf8b45e0311afad5237fbd411a35dc7b7deed5ce', 1, 2, NULL, '[]', 0, '2019-06-24 21:10:54', '2019-06-24 21:10:54', '2019-07-09 13:10:53');
INSERT INTO `oauth_access_tokens` VALUES ('405e180b6a0ac6148fa6022ebfc33429feae7c215fd130ae02afb76aa6f665b48b856ac2bc91911c', 1, 2, NULL, '[]', 0, '2019-06-24 21:12:13', '2019-06-24 21:12:13', '2019-07-09 13:12:13');
INSERT INTO `oauth_access_tokens` VALUES ('2c6882bb042474240631dcf324535034d19c26822c7a3f3c629e84761eaf462c516f7985bde119ae', 1, 2, NULL, '[]', 0, '2019-06-24 21:19:46', '2019-06-24 21:19:46', '2019-07-09 13:19:46');
INSERT INTO `oauth_access_tokens` VALUES ('f945cde743941ffbf4bb54d91350a35aac8c6806fb9e6f4a2943e553746976b507fe28a884053275', 1, 2, NULL, '[]', 0, '2019-06-24 21:23:57', '2019-06-24 21:23:57', '2019-07-09 13:23:57');
INSERT INTO `oauth_access_tokens` VALUES ('58abd998262d2973ae1f735c698a5b94798aed7e51980849e72339375b259ebfa3b2014a4a63655e', 1, 2, NULL, '[]', 0, '2019-06-24 21:31:00', '2019-06-24 21:31:00', '2019-07-09 13:31:00');
INSERT INTO `oauth_access_tokens` VALUES ('28befd258acfcb3cb8620919d7f1076f7117d509828066969f7a9193a5c323dff7a7eff4ac49619d', 1, 2, NULL, '[]', 0, '2019-06-24 21:31:33', '2019-06-24 21:31:33', '2019-07-09 13:31:33');
INSERT INTO `oauth_access_tokens` VALUES ('646a1c47461c5406f11123611a9f18967b3e30165ab41c679985b52b528440a1dd77b69161cbb26c', 1, 2, NULL, '[]', 0, '2019-06-24 21:33:15', '2019-06-24 21:33:15', '2019-07-09 13:33:15');
INSERT INTO `oauth_access_tokens` VALUES ('77f64cf3f161a98f550c7f2aea64aaf60b740d1627c0cfc310173684120a4d3688e0178a2bdefd80', 1, 2, NULL, '[]', 0, '2019-06-24 21:35:00', '2019-06-24 21:35:00', '2019-07-09 13:35:00');
INSERT INTO `oauth_access_tokens` VALUES ('40c1bda135eac3feec54d9e265e4139f089bded6e38603c4f0b38217ec1eda42b71e0b209226c850', 1, 2, NULL, '[]', 0, '2019-06-24 21:37:17', '2019-06-24 21:37:17', '2019-07-09 13:37:17');
INSERT INTO `oauth_access_tokens` VALUES ('b11639ffb07df38d223cbde8eae693b95e4e42dfb4125d8b99d5a531c027c98feca24a9d5d594b31', 1, 2, NULL, '[]', 0, '2019-06-24 21:40:07', '2019-06-24 21:40:07', '2019-07-09 13:40:07');
INSERT INTO `oauth_access_tokens` VALUES ('b79c3551fb0ce55ded80f1151215cb34453197fb006a032d4e02a2d4c56cdb66a3808b7a6d029fb0', 1, 2, NULL, '[]', 0, '2019-06-24 21:40:56', '2019-06-24 21:40:56', '2019-07-09 13:40:56');
INSERT INTO `oauth_access_tokens` VALUES ('3fc8fa4fcc541baa2ee6449e85a433b2fae699cab177adb281299d60364e4eea5ba7e3150447adf4', 1, 2, NULL, '[]', 0, '2019-06-24 21:42:23', '2019-06-24 21:42:23', '2019-07-09 13:42:23');
INSERT INTO `oauth_access_tokens` VALUES ('ca42278dc7f352411662de10860c41be53b47fffad14f105ee04f6a5391ee6fcb08032613c7507b2', 1, 2, NULL, '[]', 0, '2019-06-24 21:42:25', '2019-06-24 21:42:25', '2019-07-09 13:42:25');
INSERT INTO `oauth_access_tokens` VALUES ('0a04fdf8985f5e353ac30794e39db2bb3192aa062f2c19513109417e8e5832fe6bf43d29b64e1de4', 1, 2, NULL, '[]', 0, '2019-06-24 21:42:27', '2019-06-24 21:42:27', '2019-07-09 13:42:27');
INSERT INTO `oauth_access_tokens` VALUES ('8e201703301b190c0344e5385b65a3daa4987dce6715d5a0c041ac5d65c6e3fd12bb97fc61edc9cd', 1, 2, NULL, '[]', 0, '2019-06-24 21:42:27', '2019-06-24 21:42:27', '2019-07-09 13:42:27');
INSERT INTO `oauth_access_tokens` VALUES ('b0db36e404dba25d763394b87f4db0400e29dcb9c95e0aded43463c1d55357ab900a1a3503a1671b', 1, 2, NULL, '[]', 0, '2019-06-24 21:42:28', '2019-06-24 21:42:28', '2019-07-09 13:42:28');
INSERT INTO `oauth_access_tokens` VALUES ('173894179578766adbf70b0528dfacceeab173d2f9653e6892e4fc86d2f1bacbb690c42c29e2a7fd', 1, 2, NULL, '[]', 0, '2019-06-24 21:42:28', '2019-06-24 21:42:28', '2019-07-09 13:42:28');
INSERT INTO `oauth_access_tokens` VALUES ('ab8e91395a80f0136241d65871f35cd32f3b7439a14ef9265a1f3ec4cca39a9a0ec0f26535f8956a', 1, 2, NULL, '[]', 0, '2019-06-24 21:42:29', '2019-06-24 21:42:29', '2019-07-09 13:42:29');
INSERT INTO `oauth_access_tokens` VALUES ('869cfd60ff4801f51a18d288563aee22768259067bfb6a8912d9cf9c8c6a9abcc95a6e649006412e', 1, 2, NULL, '[]', 0, '2019-06-24 21:42:29', '2019-06-24 21:42:29', '2019-07-09 13:42:29');
INSERT INTO `oauth_access_tokens` VALUES ('1113b40388aefa9053ed81b81173d779f8f217822f711975b2fcd86950138aecbb837a1fbd13f038', 1, 2, NULL, '[]', 0, '2019-06-24 21:42:30', '2019-06-24 21:42:30', '2019-07-09 13:42:30');
INSERT INTO `oauth_access_tokens` VALUES ('f448904793ac2e5e5a73833ea0abb76350bc7879cc2758f3e3fba237004cf2feb23bb77dd77c3b18', 1, 2, NULL, '[]', 0, '2019-06-24 21:43:03', '2019-06-24 21:43:03', '2019-07-09 13:43:03');
INSERT INTO `oauth_access_tokens` VALUES ('16cd5e8b8314db6b074e436b895659bc29b09468747d25e093b51d1321f5a27bbd63abb1895abef0', 1, 2, NULL, '[]', 0, '2019-06-24 21:43:03', '2019-06-24 21:43:03', '2019-07-09 13:43:03');
INSERT INTO `oauth_access_tokens` VALUES ('1a89894da4ff2387c886de003827603f7e496d9908e993e963e1748b1b7806db829c431945a80869', 1, 2, NULL, '[]', 0, '2019-06-24 21:43:04', '2019-06-24 21:43:04', '2019-07-09 13:43:04');
INSERT INTO `oauth_access_tokens` VALUES ('5f130bed350ac7b8812bf994d51296ae43bccc6d53eb67cbbecd23556ee424189bf5fe3ebd2d886f', 1, 2, NULL, '[]', 0, '2019-06-24 21:45:19', '2019-06-24 21:45:19', '2019-07-09 13:45:19');
INSERT INTO `oauth_access_tokens` VALUES ('69edc8acbc591c457fe024c18bfd8f92aeaf9597cb2324030560e6306764675bca13b3b4d1144928', 1, 2, NULL, '[]', 0, '2019-06-24 21:45:57', '2019-06-24 21:45:57', '2019-07-09 13:45:57');
INSERT INTO `oauth_access_tokens` VALUES ('4edae49e0c7161a5c92aab5dfb660c365688c6757c79bc98fdee0b6273b840b41d28dbdd1a733372', 1, 2, NULL, '[]', 0, '2019-06-24 21:48:07', '2019-06-24 21:48:07', '2019-07-09 13:48:07');
INSERT INTO `oauth_access_tokens` VALUES ('f17ccb5da5db3a648bb15485c1ed1ff493fb72e2e9c1fec7f488f703f6d95be18d24b6b3dd7bf7ab', 1, 2, NULL, '[]', 0, '2019-06-24 21:49:03', '2019-06-24 21:49:03', '2019-07-09 13:49:03');
INSERT INTO `oauth_access_tokens` VALUES ('9e71ef7146d6fd88c3ce773e5ff6f149d5c0b1a08b609bec291ffda12f8d123c00108504512dcd24', 1, 2, NULL, '[]', 0, '2019-06-24 21:49:59', '2019-06-24 21:49:59', '2019-07-09 13:49:59');
INSERT INTO `oauth_access_tokens` VALUES ('c0dd0f9bbf1b4d80073fda0b85cb0ef9592723f1bf9c7c62e92073185614ffdb539786a7e8ba10e9', 1, 2, NULL, '[]', 0, '2019-06-24 21:53:45', '2019-06-24 21:53:45', '2019-07-09 13:53:45');
INSERT INTO `oauth_access_tokens` VALUES ('773fe4ed60114fb47b8cce93599d9c5e0eab07c10fd603835afd54309e86947d1095d214a24115fa', 1, 2, NULL, '[]', 0, '2019-06-24 22:01:27', '2019-06-24 22:01:27', '2019-07-09 14:01:27');
INSERT INTO `oauth_access_tokens` VALUES ('c9e64f77ba5676bf8d788e6e645f8056be5eb02cdc4796dd22498f110c3fb82e36793a85aa5f945d', 1, 2, NULL, '[]', 0, '2019-06-24 22:01:56', '2019-06-24 22:01:56', '2019-07-09 14:01:56');
INSERT INTO `oauth_access_tokens` VALUES ('12049639288502d9060124fc1d5d82af343c0020a6de117954b5ca33ad5694c3e38a9833b2427440', 1, 2, NULL, '[]', 0, '2019-06-24 22:06:21', '2019-06-24 22:06:21', '2019-07-09 14:06:20');
INSERT INTO `oauth_access_tokens` VALUES ('8ceb4dfeb47a10f4f8962a4606a5d15bf5c12d3d9457e4890fe2f256d2a1a2e009394276f1fc422a', 1, 2, NULL, '[]', 0, '2019-06-24 22:07:57', '2019-06-24 22:07:57', '2019-07-09 14:07:57');
INSERT INTO `oauth_access_tokens` VALUES ('33438c1f5831089187be9e67e5cd396517e525cd284668004d078ac70c5c491025e7d91d56d5e003', 1, 2, NULL, '[]', 0, '2019-06-24 22:08:15', '2019-06-24 22:08:15', '2019-07-09 14:08:15');
INSERT INTO `oauth_access_tokens` VALUES ('5cc2ae90d3d7bc074ab9446e482e5a9ee508efebbda726bf693d5007d016d9aa7430fa7b7c930423', 1, 2, NULL, '[]', 0, '2019-06-24 22:08:54', '2019-06-24 22:08:54', '2019-07-09 14:08:54');
INSERT INTO `oauth_access_tokens` VALUES ('b86456f2f14f0de18c15fe86ee2cd39b6031b206a2ecb98961b6f431fba0a8b380067436252f099c', 1, 2, NULL, '[]', 0, '2019-06-24 22:11:55', '2019-06-24 22:11:55', '2019-07-09 14:11:55');
INSERT INTO `oauth_access_tokens` VALUES ('4c6c1dbb583ed16141eef81113da087bdfdd87d31512ff562e325a2832730454f859c680c1425687', 1, 2, NULL, '[]', 0, '2019-06-24 22:12:22', '2019-06-24 22:12:22', '2019-07-09 14:12:22');
INSERT INTO `oauth_access_tokens` VALUES ('78f898b4897ab22e171d169a3b34b93bbe1574d0800e236580509bfd762ca7048951ed59beda8bee', 1, 2, NULL, '[]', 0, '2019-06-24 22:12:33', '2019-06-24 22:12:33', '2019-07-09 14:12:33');
INSERT INTO `oauth_access_tokens` VALUES ('c75bde1ca558ad6c60a1f2ab4e7686342501fd5ca9364cde07a07fd4904ec2757bf218ac1be52cf7', 1, 2, NULL, '[]', 0, '2019-06-24 22:14:49', '2019-06-24 22:14:49', '2019-07-09 14:14:49');
INSERT INTO `oauth_access_tokens` VALUES ('591595b4ec8ba1b8f4ec8be9c31fd27e0a2910a37b0f7b845c69e73b699aac3616383146d55f5f6f', 1, 2, NULL, '[]', 0, '2019-06-24 22:15:14', '2019-06-24 22:15:14', '2019-07-09 14:15:14');
INSERT INTO `oauth_access_tokens` VALUES ('fee5a3172d5c009e7d1af2cc8ab0307f2f650fc8aef6662b5a8c80ab60a9d0bbfe6cca4d6dc57339', 1, 2, NULL, '[]', 0, '2019-06-24 22:15:30', '2019-06-24 22:15:30', '2019-07-09 14:15:30');
INSERT INTO `oauth_access_tokens` VALUES ('f6560beb6df36eef1c4e07d5bf45c9323b1fd1f914104156eef73a4c13306bb6d75a6aeff2f7f400', 1, 2, NULL, '[]', 0, '2019-06-24 22:16:10', '2019-06-24 22:16:10', '2019-07-09 14:16:10');
INSERT INTO `oauth_access_tokens` VALUES ('35b2d415e4b20f098275594c42ad1e5c0c1fbaf072440fbed0846c6b9c1d339ced52c2ea3c70914a', 1, 2, NULL, '[]', 0, '2019-06-24 22:16:36', '2019-06-24 22:16:36', '2019-07-09 14:16:36');
INSERT INTO `oauth_access_tokens` VALUES ('2ce8b0ecca89eb7ea5ec77e04b074eca329fc3f4a75e4a12258f0012f738abdbdbfe1b6a3114c9aa', 1, 2, NULL, '[]', 0, '2019-06-24 22:17:07', '2019-06-24 22:17:07', '2019-07-09 14:17:07');
INSERT INTO `oauth_access_tokens` VALUES ('242596aaea8c7b835b070d026663fcb915bfbc65f696360d61a304978200fa712122cd3dfb065509', 1, 2, NULL, '[]', 0, '2019-06-24 22:18:02', '2019-06-24 22:18:02', '2019-07-09 14:18:02');
INSERT INTO `oauth_access_tokens` VALUES ('1a20632ecea1fd790dfcf7940d20efe502865b33ee0a4ecb4a8efe8e5431abd32be5610394054b2c', 1, 2, NULL, '[]', 0, '2019-06-24 22:18:34', '2019-06-24 22:18:34', '2019-07-09 14:18:34');
INSERT INTO `oauth_access_tokens` VALUES ('fac7ca04c18d5ecc8f5655e9b178088c2af8709f4db0aca80f61631c1bb6ffc0c8af0b8a60c0683f', 1, 2, NULL, '[]', 0, '2019-06-24 22:20:55', '2019-06-24 22:20:55', '2019-07-09 14:20:55');
INSERT INTO `oauth_access_tokens` VALUES ('41c0ca6f2905f2b5724a420df538a8ed25f3082fbe48f7d591003e653ce8849cbf491eb4a0029ad6', 1, 2, NULL, '[]', 0, '2019-06-24 22:23:47', '2019-06-24 22:23:47', '2019-07-09 14:23:47');
INSERT INTO `oauth_access_tokens` VALUES ('98c61b30a4c270637a83ad4431684eccaeaf19b372ba676787a6bf72b981a862edfc5d8c572d9dd3', 1, 2, NULL, '[]', 0, '2019-06-24 22:24:51', '2019-06-24 22:24:51', '2019-07-09 14:24:51');
INSERT INTO `oauth_access_tokens` VALUES ('8b926a7ae5a3a2ad19ef372e1dd6e1dfe83dab0fd5baa4b9a91fb53a19a6e7825197e2f274253377', 1, 2, NULL, '[]', 0, '2019-06-24 22:25:02', '2019-06-24 22:25:02', '2019-07-09 14:25:02');
INSERT INTO `oauth_access_tokens` VALUES ('6f511252fb7b5548dc401766b09dd48958525c271de73e6e4967629e6a455fa109d4ce5fde52d245', 1, 2, NULL, '[]', 0, '2019-06-24 22:25:35', '2019-06-24 22:25:35', '2019-07-09 14:25:35');
INSERT INTO `oauth_access_tokens` VALUES ('1d3cc0cfb4b37b32aabd39902668e3c687c113dce27ce26330bb2d7fe5cfa71a2b524d79a1f046b0', 1, 2, NULL, '[]', 0, '2019-06-24 22:31:51', '2019-06-24 22:31:51', '2019-07-09 14:31:51');
INSERT INTO `oauth_access_tokens` VALUES ('ea44101ef565e4f8b669e053a2947da594af3c7665ba7ac74f335b5d26f9a893acd43a37d6de8acb', 1, 2, NULL, '[]', 0, '2019-06-24 22:32:22', '2019-06-24 22:32:22', '2019-07-09 14:32:22');
INSERT INTO `oauth_access_tokens` VALUES ('edeef3a9903d69cb1692e1337a28a2a6bef7cd4b83c5560a8150fe5d34ecbe25eeda0add17d8d10f', 1, 2, NULL, '[]', 0, '2019-06-24 22:33:13', '2019-06-24 22:33:13', '2019-07-09 14:33:13');
INSERT INTO `oauth_access_tokens` VALUES ('7d0ca72a89a0b18b89b2768b0d6e675954fb0d22ecb9909e33284971e30d58b8540cd3cfabab3bf5', 1, 2, NULL, '[]', 0, '2019-06-24 22:34:08', '2019-06-24 22:34:08', '2019-07-09 14:34:08');
INSERT INTO `oauth_access_tokens` VALUES ('786f2d9810b746deef714904d2153af9c532f28b4df5d14f2e9d858bdc412ab9240925309a3ab320', 1, 2, NULL, '[]', 0, '2019-06-24 22:34:14', '2019-06-24 22:34:14', '2019-07-09 14:34:14');
INSERT INTO `oauth_access_tokens` VALUES ('96a6e4a34c75e30ce76ad4d4918d3b7d1a22954e6d1e25c19876516279ec5af3ae38080342359897', 1, 2, NULL, '[]', 0, '2019-06-24 22:35:48', '2019-06-24 22:35:48', '2019-07-09 14:35:48');
INSERT INTO `oauth_access_tokens` VALUES ('03f5986938a416a246d1d42b9f69193c44f94c5f3d5a77823880f661203c4ee7741aab11cc3a3af3', 1, 2, NULL, '[]', 0, '2019-06-24 22:38:14', '2019-06-24 22:38:14', '2019-07-09 14:38:14');
INSERT INTO `oauth_access_tokens` VALUES ('1cb1dac5373855b68b7798d0ff473b47ccc4c5461d29f8c49bc8719327aa56b4a7ba2fefbf079d5f', 1, 2, NULL, '[]', 0, '2019-06-24 22:38:20', '2019-06-24 22:38:20', '2019-07-09 14:38:20');
INSERT INTO `oauth_access_tokens` VALUES ('3e9591faf6bc6cf874a2ce90fde9ae040e1dac1f49bc30523c065fa6ec055204ef4d78085a88fbab', 1, 2, NULL, '[]', 0, '2019-06-24 22:39:55', '2019-06-24 22:39:55', '2019-07-09 14:39:55');
INSERT INTO `oauth_access_tokens` VALUES ('97bbc58f43e867e7d0e54719adf79f5ccfa06d9a093fb64d527d56adef4b54bbbd64a27e662a79dd', 1, 2, NULL, '[]', 0, '2019-06-24 22:40:00', '2019-06-24 22:40:00', '2019-07-09 14:40:00');
INSERT INTO `oauth_access_tokens` VALUES ('65ff8c2a99033492aa72ff69a1eaf81e1ef75d81eb5da0ca14b688c10590fc5b25abb65db0b6b01b', 1, 2, NULL, '[]', 0, '2019-06-24 22:40:04', '2019-06-24 22:40:04', '2019-07-09 14:40:04');
INSERT INTO `oauth_access_tokens` VALUES ('b9ee8a7ee053b0c88799025ef0447dd1a580d3394a60e4696881341b084d4367d368f40243d6b0d4', 1, 2, NULL, '[]', 0, '2019-06-24 22:40:09', '2019-06-24 22:40:09', '2019-07-09 14:40:09');
INSERT INTO `oauth_access_tokens` VALUES ('6aa2e0efbdb10c63321478c1ed2bc44296c9cf22797041aa6b8e56a28798ae7754e28a817425ebf3', 1, 2, NULL, '[]', 0, '2019-06-24 22:40:12', '2019-06-24 22:40:12', '2019-07-09 14:40:12');
INSERT INTO `oauth_access_tokens` VALUES ('515d211ef6042c9ea9179c0684fe18d1cc2cb921a435f3e0bd7d0b45cdd4bc5639e04da5019f8c35', 1, 2, NULL, '[]', 0, '2019-06-24 22:40:41', '2019-06-24 22:40:41', '2019-07-09 14:40:41');
INSERT INTO `oauth_access_tokens` VALUES ('92bc1b9da908cf0e8168472bc421e7acdbdcba981c309f4850fb13cd4ed82b3198f6df760c85a664', 1, 2, NULL, '[]', 0, '2019-06-24 22:40:47', '2019-06-24 22:40:47', '2019-07-09 14:40:47');
INSERT INTO `oauth_access_tokens` VALUES ('33579b7065bb985d8c32b28faf44a8c4dd4519a2b1e96a5c18efb8884613e4bd5029b042861dd0ca', 1, 2, NULL, '[]', 0, '2019-06-24 22:41:23', '2019-06-24 22:41:23', '2019-07-09 14:41:23');
INSERT INTO `oauth_access_tokens` VALUES ('99a9d7c8b0eaf17a2a2f24ee3e98518037a1f3ecbf8912a3a2c16ff5015ea4956f2db71757f053a3', 1, 2, NULL, '[]', 0, '2019-06-24 22:41:48', '2019-06-24 22:41:48', '2019-07-09 14:41:48');
INSERT INTO `oauth_access_tokens` VALUES ('fdea6e49a7a135e6438a66342c026f837a1819f6612e522afc53a10e4e933a222ea47c961d4a5d81', 1, 2, NULL, '[]', 0, '2019-06-24 22:43:56', '2019-06-24 22:43:56', '2019-07-09 14:43:56');
INSERT INTO `oauth_access_tokens` VALUES ('c5309cd29d4ecb854f48fbb4d8379e177b203f447bb5469eeba70a7a42c838c59a68f317ac0fdc3a', 1, 2, NULL, '[]', 0, '2019-06-24 22:44:51', '2019-06-24 22:44:51', '2019-07-09 14:44:51');
INSERT INTO `oauth_access_tokens` VALUES ('b5b9271fa07b7ac3d527e090f7f76b344bc767f83dfec3575b017a22dbfe138d2b9080e81c7c00ea', 1, 2, NULL, '[]', 0, '2019-06-24 22:46:08', '2019-06-24 22:46:08', '2019-07-09 14:46:08');
INSERT INTO `oauth_access_tokens` VALUES ('72572ac59c83e1e2329b4143305413814ecfba1fa583736ef757659c49b318ebae328774eaa07624', 1, 2, NULL, '[]', 0, '2019-06-24 22:46:48', '2019-06-24 22:46:48', '2019-07-09 14:46:48');
INSERT INTO `oauth_access_tokens` VALUES ('8a36b0b1a718f4469fec990786a7cdc01ebec441d4d1e6be503791f708a35019e5dada854469688b', 1, 2, NULL, '[]', 0, '2019-06-24 22:47:19', '2019-06-24 22:47:19', '2019-07-09 14:47:19');
INSERT INTO `oauth_access_tokens` VALUES ('6720274bf3375b28cb8c0764ab832ef7b9789fb23d82efca9f967b449c7bcd986a8f6a739476cdcb', 1, 2, NULL, '[]', 0, '2019-06-24 22:48:38', '2019-06-24 22:48:38', '2019-07-09 14:48:38');
INSERT INTO `oauth_access_tokens` VALUES ('8701d079a44d32103a566bf6b117f7cb95f73544c5dc22725100f93b7c65c443e780b059f8ab4a46', 1, 2, NULL, '[]', 0, '2019-06-24 23:14:59', '2019-06-24 23:14:59', '2019-07-09 15:14:59');
INSERT INTO `oauth_access_tokens` VALUES ('99a261a29887153d87b9e249452e913577d836e38ac692a1bd945bdfb47204039d21e4e6ba23f3c5', 1, 2, NULL, '[]', 0, '2019-06-25 19:01:41', '2019-06-25 19:01:41', '2019-07-10 11:01:40');
INSERT INTO `oauth_access_tokens` VALUES ('9296e4a00986b6c9ba66673222db402c1fb4b12ed3d522a853de6187eb6f4ace43d23fb9c009db6e', 1, 2, NULL, '[]', 0, '2019-06-27 03:12:52', '2019-06-27 03:12:52', '2019-07-11 19:12:51');
INSERT INTO `oauth_access_tokens` VALUES ('0233ebf2e888d725186e983a97c80675bbab31ea91cb365c146b18e42c849a914da883cec355e68d', 1, 2, NULL, '[]', 0, '2019-06-28 03:01:58', '2019-06-28 03:01:58', '2019-07-12 19:01:58');
INSERT INTO `oauth_access_tokens` VALUES ('687e682dbc5fdb6674dc5dcdf2dd1d04062acaa3b7c5ce7b7922c99be98ceed7b6f9f0d2a9940de5', 1, 2, NULL, '[]', 0, '2019-06-28 18:24:01', '2019-06-28 18:24:01', '2019-07-13 10:24:00');
INSERT INTO `oauth_access_tokens` VALUES ('286fbe58113cd07116d37e6a744df94d4060f75fffdb4386694f86019f5134f5e114ac63c31c3d80', 1, 2, NULL, '[]', 0, '2019-06-28 23:49:32', '2019-06-28 23:49:32', '2019-07-13 15:49:32');
INSERT INTO `oauth_access_tokens` VALUES ('a645b81146e7e4f100bc43234ba0542153b97678917e8084d30dd045ec20fcc3018235deedda8ca1', 1, 2, NULL, '[]', 0, '2019-06-29 00:23:54', '2019-06-29 00:23:54', '2019-07-13 16:23:54');
INSERT INTO `oauth_access_tokens` VALUES ('b2d0735285085d3a321a2933c41fca70c5e9bdb6b69a957297e5685542953881401ccba19f5df227', 1, 2, NULL, '[]', 0, '2019-06-29 00:27:16', '2019-06-29 00:27:16', '2019-07-13 16:27:16');
INSERT INTO `oauth_access_tokens` VALUES ('35932b67053525002611d681e7e22977bb6881d5b204ab6b781f61a0a69ac0594f1ef2e2da9042ec', 1, 2, NULL, '[]', 0, '2019-06-29 00:37:05', '2019-06-29 00:37:05', '2019-07-13 16:37:05');
INSERT INTO `oauth_access_tokens` VALUES ('4e94373fe90cbc80027fd2b9e1e13d894fc6c6a3743ccad163f79e673a54172ae075181c050f8845', 1, 2, NULL, '[]', 0, '2019-06-29 00:39:20', '2019-06-29 00:39:20', '2019-07-13 16:39:20');
INSERT INTO `oauth_access_tokens` VALUES ('274f5193bed9c8506df01dea6bdb06eb6e08d95b33d927cd80bbdde715d32ea7bb76be5e2c2fee1e', 1, 2, NULL, '[]', 0, '2019-06-29 00:40:37', '2019-06-29 00:40:37', '2019-07-13 16:40:37');
INSERT INTO `oauth_access_tokens` VALUES ('1b8062832746ebe9d2660813226a011811f1b9bb2305970bbe5251bdf6b9eb465c4f5f33fc196049', 1, 2, NULL, '[]', 0, '2019-06-29 00:42:12', '2019-06-29 00:42:12', '2019-07-13 16:42:12');
INSERT INTO `oauth_access_tokens` VALUES ('d35af70fd2fa5b853a31ad662f6f4fded4428afe3d1f633858bb5bf1a0d4870bcc5d77316b419a8a', 1, 2, NULL, '[]', 0, '2019-06-29 00:50:46', '2019-06-29 00:50:46', '2019-07-13 16:50:46');
INSERT INTO `oauth_access_tokens` VALUES ('78fe0348ea4af8d6650ff3c6676ffc8f820312a38c14cf6e6e7808037fecb2fde58993ddaa6dee38', 1, 2, NULL, '[]', 0, '2019-06-29 00:52:39', '2019-06-29 00:52:39', '2019-07-13 16:52:39');
INSERT INTO `oauth_access_tokens` VALUES ('34553cbceaaece1ff338fa09c765aa0846a009b3e2d3851d559aaec701645593e1de0ec12a6db6f4', 1, 2, NULL, '[]', 0, '2019-06-29 03:02:53', '2019-06-29 03:02:53', '2019-07-13 19:02:52');
INSERT INTO `oauth_access_tokens` VALUES ('b0ac2823598953bb81f8348dc45e0cc4a9554e63a056c3b6f4d3d096cd8c944f79079278b7441509', 1, 2, NULL, '[]', 0, '2019-06-29 04:39:56', '2019-06-29 04:39:56', '2019-07-13 20:39:56');
INSERT INTO `oauth_access_tokens` VALUES ('554a740325810dba5293dbc4014af3fd457c3737125d26a9d79b782858300507000e05e2b02ee426', 1, 2, NULL, '[]', 0, '2019-06-29 04:40:17', '2019-06-29 04:40:17', '2019-07-13 20:40:17');
INSERT INTO `oauth_access_tokens` VALUES ('3f9de0c97ddf08c848d77920911c3d3bb328f90f893c37e371eba2bb90374bdb990ea35dba420674', 3, 2, NULL, '[]', 0, '2019-06-29 04:40:47', '2019-06-29 04:40:47', '2019-07-13 20:40:47');
INSERT INTO `oauth_access_tokens` VALUES ('0cd7d41e53506edb122debf25ccb6a542d87bb417a9a94d64faf6ce7b4d91bf877689e7ea4b348e5', 1, 2, NULL, '[]', 0, '2019-06-29 04:58:01', '2019-06-29 04:58:01', '2019-07-13 20:58:01');
INSERT INTO `oauth_access_tokens` VALUES ('143a44a752122b7a36097fbc9153c58250c4e1cfd6bb57e2fc235b14473250e9afc27cb5d533d7e2', 1, 2, NULL, '[]', 0, '2019-06-29 05:02:08', '2019-06-29 05:02:08', '2019-07-13 21:02:08');
INSERT INTO `oauth_access_tokens` VALUES ('bc166b64ce5f4093e6624ae53f8b96a2032ce690bfe61e49410c786b451dae1f4eadc68ea09d25a9', 1, 2, NULL, '[]', 0, '2019-06-29 05:03:05', '2019-06-29 05:03:05', '2019-07-13 21:03:05');
INSERT INTO `oauth_access_tokens` VALUES ('e211573f8b1d91bbbcdd0f97df38d9aa7cc09469d70d77f063ff1f8983d2b98a193c118630c1096b', 3, 2, NULL, '[]', 0, '2019-06-29 05:07:21', '2019-06-29 05:07:21', '2019-07-13 21:07:21');
INSERT INTO `oauth_access_tokens` VALUES ('d444ca4aad65b519f5b52b8212bdd90e2ce25159bbcfee4e3a1ec06b009462a668a226153315acda', 1, 2, NULL, '[]', 0, '2019-06-29 05:07:42', '2019-06-29 05:07:42', '2019-07-13 21:07:42');
INSERT INTO `oauth_access_tokens` VALUES ('42254850cad69a8d863528ed711ee7c1a361c35c538cce2c14e4268763b989017c4a7fa836598081', 1, 2, NULL, '[]', 0, '2019-06-29 05:33:14', '2019-06-29 05:33:14', '2019-07-13 21:33:14');
INSERT INTO `oauth_access_tokens` VALUES ('7f2632576c2932efaf1481fa8ac41f600b7f286a5bc0141633dd37e727caa77c4919cf109b386c3d', 1, 2, NULL, '[]', 0, '2019-06-29 06:33:02', '2019-06-29 06:33:02', '2019-07-13 22:33:02');
INSERT INTO `oauth_access_tokens` VALUES ('8e0bdad56e03047857dfca75c0edb0d2858af63b1a77986330c4deeba6373e99a92d45cdd7ad5881', 1, 2, NULL, '[]', 0, '2019-06-29 08:13:05', '2019-06-29 08:13:05', '2019-07-14 00:13:05');
INSERT INTO `oauth_access_tokens` VALUES ('154127f1cc0b4caf604631fd66a5348cc0d1c86915c67dc940952828f9b33fc92ba624c101c646bd', 1, 2, NULL, '[]', 0, '2019-06-29 09:52:46', '2019-06-29 09:52:46', '2019-07-14 01:52:46');
INSERT INTO `oauth_access_tokens` VALUES ('c1211bc43e19d3a7c40e0912d9e62d3628761cb72685b1822a1b1453a6d32b3ce765d188a00116c8', 1, 2, NULL, '[]', 0, '2019-06-29 10:02:29', '2019-06-29 10:02:29', '2019-07-14 02:02:29');
INSERT INTO `oauth_access_tokens` VALUES ('fe5ce5cbb64b9d9186d9f937f46f2c30d881f6955fd542fb40e677d6dcd6b24152bc79c99e0dbcab', 1, 2, NULL, '[]', 0, '2019-06-29 10:02:44', '2019-06-29 10:02:44', '2019-07-14 02:02:44');
INSERT INTO `oauth_access_tokens` VALUES ('42e7fcc821e0122ca027ce2378bff7b6d472438103b41b4f246fea573670f4cd931157df664b149b', 1, 2, NULL, '[]', 0, '2019-06-29 10:27:15', '2019-06-29 10:27:15', '2019-07-14 02:27:15');
INSERT INTO `oauth_access_tokens` VALUES ('87c98c7b2c42f7f31476a0857f9f4e7e69004bf61c14cd652f05a834d2fe00029476668d143b177a', 3, 2, NULL, '[]', 0, '2019-06-29 10:27:27', '2019-06-29 10:27:27', '2019-07-14 02:27:27');
INSERT INTO `oauth_access_tokens` VALUES ('513c97c795150650d95258c501ae48176f110beefd91c377bc0336511e9974535b93735f6d47bfc9', 3, 2, NULL, '[]', 0, '2019-06-29 10:31:12', '2019-06-29 10:31:12', '2019-07-14 02:31:12');
INSERT INTO `oauth_access_tokens` VALUES ('009c7e05def52ac518d753a9fcbdc8725d9de9037042793e778afee260f2f801585e051aec252914', 1, 2, NULL, '[]', 0, '2019-06-29 10:31:25', '2019-06-29 10:31:25', '2019-07-14 02:31:25');
INSERT INTO `oauth_access_tokens` VALUES ('99f3bbdbd3821690856226f368083abc914516d1101b251f798475865ba7c23bc45bd63aae148dad', 3, 2, NULL, '[]', 0, '2019-06-29 10:32:03', '2019-06-29 10:32:03', '2019-07-14 02:32:03');
INSERT INTO `oauth_access_tokens` VALUES ('af060d4505883bd4c919348cb592847ea12ca87ab78c3ef064dd571940810f01af79ad3266bdea3e', 1, 2, NULL, '[]', 0, '2019-06-29 10:49:25', '2019-06-29 10:49:25', '2019-07-14 02:49:25');
INSERT INTO `oauth_access_tokens` VALUES ('41a78006860a38b8ee4168d242ea0cdecb2e2271e02c4e2ec233675b265cee10c4ff18a8dbd11fa9', 1, 2, NULL, '[]', 0, '2019-06-29 10:53:15', '2019-06-29 10:53:15', '2019-07-14 02:53:15');
INSERT INTO `oauth_access_tokens` VALUES ('11e41d20ad97eb1ee9cf771c28bbf67a73cec75fbda5141ef132146b88823863a729bed03ec8c3e0', 1, 2, NULL, '[]', 0, '2019-06-29 21:12:01', '2019-06-29 21:12:01', '2019-07-14 13:12:00');
INSERT INTO `oauth_access_tokens` VALUES ('9dbf1806c73026a29f2cd6eaccd51803df1ea2167123878ea87f657ad8fe604ba4782bfe4ffd685d', 1, 2, NULL, '[]', 0, '2019-06-29 21:59:44', '2019-06-29 21:59:44', '2019-07-14 13:59:44');
INSERT INTO `oauth_access_tokens` VALUES ('41539529516e51de1b459d1d54816b6c196b7dbaa0e447ec4a0c7637ce405eafe081e37568cf438c', 1, 2, NULL, '[]', 0, '2019-06-30 00:09:20', '2019-06-30 00:09:20', '2019-07-14 16:09:20');
INSERT INTO `oauth_access_tokens` VALUES ('fd77e94e4094d2bdb257a05741125a182be2b64639146c2d0c1d10aaacf529a7074090e9ea484b4c', 1, 2, NULL, '[]', 0, '2019-06-30 03:00:54', '2019-06-30 03:00:54', '2019-07-14 19:00:54');
INSERT INTO `oauth_access_tokens` VALUES ('d835f7ea64cbcfca6e4df9b452ba98c719529e7b366e451e861a884bd86f106c4c66f3a6623f1ef0', 1, 2, NULL, '[]', 0, '2019-06-30 03:27:52', '2019-06-30 03:27:52', '2019-07-14 19:27:52');
INSERT INTO `oauth_access_tokens` VALUES ('cc5206d323ebc43065c71ab1e980857bd52bcdb7a292ceb892b49aef44e2a8ce28b6f56abf0fb120', 1, 2, NULL, '[]', 0, '2019-06-30 23:54:06', '2019-06-30 23:54:06', '2019-07-15 15:54:06');
INSERT INTO `oauth_access_tokens` VALUES ('d51eb926d0a9d704c20cc1a9098349f7cf52ef1759b550a7cdfb5a46e3178afd37b0d649212251b0', 1, 2, NULL, '[]', 0, '2019-07-01 00:17:02', '2019-07-01 00:17:02', '2019-07-15 16:17:02');
INSERT INTO `oauth_access_tokens` VALUES ('038da55759954f9743d3edeeee6911bebbea5a8c5d41c791fa0c79ebced0fba71e37afe9f3b26079', 1, 2, NULL, '[]', 0, '2019-07-02 03:31:07', '2019-07-02 03:31:07', '2019-07-16 19:31:07');
INSERT INTO `oauth_access_tokens` VALUES ('2dc0c8dae92234cb308f3e1e7b185ab68511f270ca9b65e0cf9981c43789657dba2b21cf680f94ea', 1, 2, NULL, '[]', 0, '2019-07-02 04:20:57', '2019-07-02 04:20:57', '2019-07-16 20:20:57');
INSERT INTO `oauth_access_tokens` VALUES ('46a5cc184d084a1bb3d2521b2851767e43ccd7090528f92385c77daeca5712d79f230cfab6deb670', 1, 2, NULL, '[]', 0, '2019-07-03 02:37:44', '2019-07-03 02:37:44', '2019-07-17 18:37:44');
INSERT INTO `oauth_access_tokens` VALUES ('8703960e8e37f6832a4a5845c41a3dae6da2ca12117a25aa1df9d9559baa25ee5ce7862f20f74fd9', 1, 2, NULL, '[]', 0, '2019-07-03 02:49:40', '2019-07-03 02:49:40', '2019-07-17 18:49:40');
INSERT INTO `oauth_access_tokens` VALUES ('19c3fc4b32be78c8220a9760248f0566fc887e9a601680c77777c955e11aa7148711928991a89f8d', 1, 2, NULL, '[]', 0, '2019-07-04 03:07:48', '2019-07-04 03:07:48', '2019-07-18 19:07:47');
INSERT INTO `oauth_access_tokens` VALUES ('0ca0fee989420920c8071b94dfeac5a7db1e5bb0826fdcb852ebae0662d89797f8e29efc41c97058', 1, 2, NULL, '[]', 0, '2019-07-04 03:21:41', '2019-07-04 03:21:41', '2019-07-18 19:21:41');
INSERT INTO `oauth_access_tokens` VALUES ('3d57249d5251eb62f52290bc6e9dd95c4989cbf75621f237bb6f82b9d79d50f58dbdd1187df81dd5', 1, 2, NULL, '[]', 0, '2019-07-05 03:22:57', '2019-07-05 03:22:57', '2019-07-19 19:22:57');
INSERT INTO `oauth_access_tokens` VALUES ('ca5a09fd00b0e4b84e73dace4dc5c897914a681ee687d1fbd0bdae07886ae8181469c2e8da89a713', 1, 2, NULL, '[]', 0, '2019-07-05 05:58:59', '2019-07-05 05:58:59', '2019-07-19 21:58:59');
INSERT INTO `oauth_access_tokens` VALUES ('b171851fdbb8876f047ae27cb7723792d684e6d56b4fee4686ed660f1a33e8fd6e41d2dc4def282e', 1, 2, NULL, '[]', 0, '2019-07-05 06:17:33', '2019-07-05 06:17:33', '2019-07-19 22:17:33');
INSERT INTO `oauth_access_tokens` VALUES ('28070deaf34cdfb3c57cf453ad8aebbbaf45df914e3110e25d3065bd69826a7e28a142f87c5a8956', 1, 2, NULL, '[]', 0, '2019-07-05 06:20:32', '2019-07-05 06:20:32', '2019-07-19 22:20:32');
INSERT INTO `oauth_access_tokens` VALUES ('5c82f70aebc3661deda7f1095b089ee140530e585ba821c3c2ab95ac752694c9eb82096eaffe70d5', 1, 2, NULL, '[]', 0, '2019-07-05 06:25:31', '2019-07-05 06:25:31', '2019-07-19 22:25:31');
INSERT INTO `oauth_access_tokens` VALUES ('bf9554756aed027e51a968579f1babf47682f5794e53b3de698c8e5197424bbfcaefd168e5ec71b9', 1, 2, NULL, '[]', 0, '2019-07-05 06:27:09', '2019-07-05 06:27:09', '2019-07-19 22:27:09');
INSERT INTO `oauth_access_tokens` VALUES ('0e649bf822e35f85f047f57068cb13b09ea86bd84721b81dee966f8213722a154be899e560a4b8ca', 1, 2, NULL, '[]', 0, '2019-07-05 06:38:06', '2019-07-05 06:38:06', '2019-07-19 22:38:06');
INSERT INTO `oauth_access_tokens` VALUES ('054b2c4b6f70b4867af486d0133849fe49a9b966c0d0c0f73d32eeef72dace9a19830286c8f811db', 1, 2, NULL, '[]', 0, '2019-07-05 06:46:25', '2019-07-05 06:46:25', '2019-07-19 22:46:24');
INSERT INTO `oauth_access_tokens` VALUES ('c08b6f0f9d8b2865750ac1b2908f50aa8903bc4091abb4da8c7165733af28e914e15afd7772f4060', 1, 2, NULL, '[]', 0, '2019-07-05 06:47:04', '2019-07-05 06:47:04', '2019-07-19 22:47:04');
INSERT INTO `oauth_access_tokens` VALUES ('72ae902bf383dac91e05f8b10f3aba6f8721ef4bff0684e16613e8d319c53ebd0c0e7f4e61898a2b', 1, 2, NULL, '[]', 0, '2019-07-05 07:30:14', '2019-07-05 07:30:14', '2019-07-19 23:30:14');
INSERT INTO `oauth_access_tokens` VALUES ('b59d140083ca6bc07fedaf82c25bd58b0c73ed61cb553f7b5722e125a51dc7273277bd3a0d05138b', 3, 2, NULL, '[]', 0, '2019-07-06 07:17:32', '2019-07-06 07:17:32', '2019-07-20 23:17:32');
INSERT INTO `oauth_access_tokens` VALUES ('f640aaa42fc43b454be49c95f62ad94894051c06ac2cf0eb0ef644bd3bc11786cd2ebf63938d6f7a', 1, 2, NULL, '[]', 0, '2019-07-07 02:42:39', '2019-07-07 02:42:39', '2019-07-21 18:42:38');
INSERT INTO `oauth_access_tokens` VALUES ('b6bfe6f1377d897de4ac34d6bf9ed9dab894b14ec239e7c97516832e9920318d7b1b82d124bb7a20', 4, 2, NULL, '[]', 0, '2019-07-07 03:28:33', '2019-07-07 03:28:33', '2019-07-21 19:28:33');
INSERT INTO `oauth_access_tokens` VALUES ('c1a23692003f02f8859e5f3bbfa7e2ce1ebb6969dfe27b6ed294fc24e98e99f6d3150279c8b3abac', 4, 2, NULL, '[]', 0, '2019-07-07 03:36:45', '2019-07-07 03:36:45', '2019-07-21 19:36:45');
INSERT INTO `oauth_access_tokens` VALUES ('175acc0fd7c114928bfb57cfa4ee107c1da59ecd0fe6bab90901899c5e820395fa38f5a369c5250f', 4, 2, NULL, '[]', 0, '2019-07-07 03:38:40', '2019-07-07 03:38:40', '2019-07-21 19:38:40');
INSERT INTO `oauth_access_tokens` VALUES ('580096340d4905c47baae5967c2dacbf9686b40fd551a1cd2496e45ff943418846e6ce02aa575e1e', 4, 2, NULL, '[]', 0, '2019-07-07 03:42:31', '2019-07-07 03:42:31', '2019-07-21 19:42:31');
INSERT INTO `oauth_access_tokens` VALUES ('f86da700bdec695c6841f96a43acc4faeea12908548c0fd03dc1f570b5143111e5cafbd46aea4df7', 4, 2, NULL, '[]', 0, '2019-07-07 05:01:41', '2019-07-07 05:01:41', '2019-07-21 21:01:41');
INSERT INTO `oauth_access_tokens` VALUES ('c61efba40ec31966f124b8dde423045b4eade0baeba9135f7a2d5a8db398df6545fdec62aad21bd8', 4, 2, NULL, '[]', 0, '2019-07-07 05:04:44', '2019-07-07 05:04:44', '2019-07-21 21:04:44');
INSERT INTO `oauth_access_tokens` VALUES ('b0b691233336e01d41e6201e36be060df62347424652f19a37a782f5f4e7597a41a99ae1a86a4677', 4, 2, NULL, '[]', 0, '2019-07-07 05:18:26', '2019-07-07 05:18:26', '2019-07-21 21:18:26');
INSERT INTO `oauth_access_tokens` VALUES ('3d0eb3e6813a69cbb84739c1750007ee60e5efbdc9b845a89d1ebaf71d232a03797af11acac277eb', 4, 2, NULL, '[]', 0, '2019-07-07 05:52:03', '2019-07-07 05:52:03', '2019-07-21 21:52:03');
INSERT INTO `oauth_access_tokens` VALUES ('1ae5b750eeb2e69bbf1c509c99237b92ffda372d7ee8639386a1015d27fde0f5d8f8af3579128fbf', 4, 2, NULL, '[]', 0, '2019-07-07 05:55:52', '2019-07-07 05:55:52', '2019-07-21 21:55:52');
INSERT INTO `oauth_access_tokens` VALUES ('c04899001de6b525f43bdaeede297cc9223c56933d4128ba1cd98098fdc3984a3142cfaca03c74f5', 1, 2, NULL, '[]', 0, '2019-11-05 18:10:52', '2019-11-05 18:10:52', '2019-11-20 10:10:52');
INSERT INTO `oauth_access_tokens` VALUES ('67daabd2bd41469a3a341c203406c3392e2d213d4b8850a4cb4063273e15fa7406a3d447c0dd9fc9', 1, 2, NULL, '[]', 0, '2019-11-05 18:14:32', '2019-11-05 18:14:32', '2019-11-20 10:14:32');
INSERT INTO `oauth_access_tokens` VALUES ('a5a08f651c72e0f1d7dcbca84787bfaea17be32c6cbd6f544684369eed59963e23b502182617978d', 1, 2, NULL, '[]', 0, '2019-11-05 19:23:30', '2019-11-05 19:23:30', '2019-11-20 11:23:30');
INSERT INTO `oauth_access_tokens` VALUES ('1fcae3c8f89d97b695dde926317057da4e10ba7c3b95bb01441730b90201549c2dde2b0767bc40a7', 1, 2, NULL, '[]', 0, '2019-11-05 19:24:30', '2019-11-05 19:24:30', '2019-11-20 11:24:30');
INSERT INTO `oauth_access_tokens` VALUES ('fdbf4421638490c66eaf8f443b7f11dfc245b89926ccf77dad985cad8ad2c89a65a4309039fc7cff', 1, 2, NULL, '[]', 0, '2019-11-05 19:30:52', '2019-11-05 19:30:52', '2019-11-20 11:30:52');
INSERT INTO `oauth_access_tokens` VALUES ('9e30f297109ff8538f83c1f09bb99f607b554aba41f3d6d3bfaca6d0018b5a0f52740363b521d8fd', 1, 2, NULL, '[]', 0, '2019-11-05 23:20:52', '2019-11-05 23:20:52', '2019-11-20 15:20:52');
INSERT INTO `oauth_access_tokens` VALUES ('67e4b03aadb1a315d4f298151a023585fb280151207708bb58074064e2198e13e0b933292a9e8bb6', 1, 2, NULL, '[]', 0, '2019-11-05 23:21:46', '2019-11-05 23:21:46', '2019-11-20 15:21:46');
INSERT INTO `oauth_access_tokens` VALUES ('6f40624d13cfcdffe0286552bf9ac25bf42030ac21bbaf2ba6ec3a2e44d563754b8705071b172067', 1, 2, NULL, '[]', 0, '2019-11-05 23:22:59', '2019-11-05 23:22:59', '2019-11-20 15:22:59');
INSERT INTO `oauth_access_tokens` VALUES ('e6293c7392ad55655eed7fcd572010d9c553aabfd6a17eb87c8e0451d3fde8642816c0a0bd572390', 1, 2, NULL, '[]', 0, '2019-11-06 21:52:24', '2019-11-06 21:52:24', '2019-11-21 13:52:23');
INSERT INTO `oauth_access_tokens` VALUES ('5640e55fcd2e1876fb46b50b445b8766e851368069767d6a2d801ba27469b9561bef059f89909191', 1, 2, NULL, '[]', 0, '2019-11-06 21:53:42', '2019-11-06 21:53:42', '2019-11-21 13:53:42');
INSERT INTO `oauth_access_tokens` VALUES ('3993fc1d81c9d21f90e103fabd3a287788c8d8512d6cb60b2109ca37c1cfc2ae874922aca66dd754', 1, 2, NULL, '[]', 0, '2019-11-06 21:54:24', '2019-11-06 21:54:24', '2019-11-21 13:54:24');
INSERT INTO `oauth_access_tokens` VALUES ('60c4f4df6c232151fa94287130a04ca0e0f5c28679ec64277f8622bc8409baf2e89fbafba1944383', 1, 2, NULL, '[]', 0, '2019-11-08 17:00:50', '2019-11-08 17:00:50', '2019-11-23 09:00:49');
INSERT INTO `oauth_access_tokens` VALUES ('58708ab54bc012f7d539b762a13720d9abcc7670250d2811af6d436ba3bda44a9b610bec70b3abd8', 1, 2, NULL, '[]', 0, '2019-11-08 17:47:46', '2019-11-08 17:47:46', '2019-11-23 09:47:46');
INSERT INTO `oauth_access_tokens` VALUES ('fd1a17c21f9be72a9e21430fd0afd84fea01cb8e1481853da8c35a79691c0c29de3362c01dd2fe23', 1, 2, NULL, '[]', 0, '2019-11-10 01:48:30', '2019-11-10 01:48:30', '2019-11-24 17:48:29');
INSERT INTO `oauth_access_tokens` VALUES ('a31f32f4cf0868180a80c4cb306aaccb24b51aee5e0af5289a231ee9760313dc0d77237a3f83d726', 1, 2, NULL, '[]', 0, '2019-11-10 04:17:33', '2019-11-10 04:17:33', '2019-11-24 20:17:33');
INSERT INTO `oauth_access_tokens` VALUES ('6734dfb4dd8b66339810599838b9c43a83dd81b3dadbbb1f8306d6df739d3838df97b3773af9e64e', 1, 2, NULL, '[]', 0, '2019-11-10 04:21:34', '2019-11-10 04:21:34', '2019-11-24 20:21:34');
INSERT INTO `oauth_access_tokens` VALUES ('3aaba4bfe523d26a70188f535bb372997e18397a73335b1d9fb9ac5355b0bf3c61799dc14ec2e92e', 1, 2, NULL, '[]', 0, '2019-11-16 13:27:56', '2019-11-16 13:27:56', '2019-12-01 13:27:55');
INSERT INTO `oauth_access_tokens` VALUES ('eeac0c78585a1b7716f5380b20caf5b5ff8cf41cc380bf4bd2d02b168c52ae1448dee0fc6e91631d', 1, 2, NULL, '[]', 0, '2019-11-23 14:08:44', '2019-11-23 14:08:44', '2019-12-08 14:08:44');
INSERT INTO `oauth_access_tokens` VALUES ('70813b9ba6ff9c5ef39432c02604af37c065ea4fed39aa6562115ec0169d710840608bfb3fe4f804', 1, 2, NULL, '[]', 0, '2019-11-25 09:59:17', '2019-11-25 09:59:17', '2019-12-10 09:59:17');
INSERT INTO `oauth_access_tokens` VALUES ('9982252446782e349f6e672469303760354fafcd79430354f6a176115c296a8dc5f02f245c42a86d', 1, 2, NULL, '[]', 0, '2019-11-26 20:15:09', '2019-11-26 20:15:09', '2019-12-11 20:15:09');
INSERT INTO `oauth_access_tokens` VALUES ('c8a56fa425913ce851fbc303120e336661065692cf922309d70c067cdf0b392b0edaaa3017addafb', 1, 2, NULL, '[]', 0, '2019-11-26 20:25:58', '2019-11-26 20:25:58', '2019-12-11 20:25:58');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', 'DQhHGRXCxXKZqHVeITKOmq7Wq0C19dIasjXZ8hCM', 'http://localhost', 1, 0, 0, '2019-06-24 19:48:27', '2019-06-24 19:48:27');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', 'iSqQiR68eFhYnYQ1CwZJgCxdnUMNdqJiUcIHq4Gg', 'http://localhost', 0, 1, 0, '2019-06-24 19:48:27', '2019-06-24 19:48:27');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2019-06-24 19:48:27', '2019-06-24 19:48:27');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('092baebff052cc00bd42fb33b62b333f424b127f40603424d1299edd6a732d5ffeaa93ea32d3bddb', 'e9ff0cd2424019ce62bc9dad01e95f86240cebdae7fa8e7f976ddb5d547eebff56b1cd44eb3c0114', 0, '2019-07-24 11:54:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('965ee6b22cde24fec68b5702788c5c9dfefc9976344af8af7d0d5c666769b355a5e139202f9da8b7', 'a17c33d4790de1c4caa9a86499baf50233526d3c352d4371eea38d3249a840c2095919d484698ec4', 0, '2019-07-24 12:04:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('bccd418f5f122440c6425c321de2d3fcb7ba7fed0653eafefb8d1a663a7a5a45340bfaed15cda45b', '62dda3182fc9a2d25891743a5c2297e3b5712c21d914a81fbafab3de72ad62e9e6fd484b5fca707e', 0, '2019-07-24 12:13:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('d5fcb7fe5bd8427cdb7369bd01ca1bb6af8215e396d2c7c8188ca522b08bd39aa2c9db29847384ea', '8ee9c47009d339053e8dc2cf7130d57c5764cf812039397016f3bbda5bc73c5513dd9964ab990b06', 0, '2019-07-24 12:13:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('7191347b9dec09ec37f3dbda0023515fef7d9188af8167f05a10ec256100b3e4889d36513dff6c62', '48e2112628673a7b85f77e69c20b7c400d7c2e2337256997ba6efcf533ba98eaf9ae4cf25607e689', 0, '2019-07-24 12:14:16');
INSERT INTO `oauth_refresh_tokens` VALUES ('5e6cd0fb6641c8cc1db36dd7cc735f6861ba60ea7f702de71db24ffedde7df6846980869566f75d0', '8c26635599d5bce9f4ed81c0b5e2950e6a8a87c10aef62285977c8c6418d28a417e419e7fe670a5e', 0, '2019-07-24 12:16:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('171f17939bea25b235236d97a031386c13836a82aeae857307461fc68044273d5065448ae2f58cc8', '7b47bce9e79ff1d1aedf82abae7255faeebd724a6de07272a3338519df6f5854271797042f3d3b24', 0, '2019-07-24 12:24:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('051dd017577def26a2b00f5731b1029ce1dfeca2736d88ad2c591873aeebaa530a03c064f8e4f54e', 'cec182abb4f4f1e5ac39ad8a9fe7b2a87e6600938c0eed4f1442c5c62159899874d15925fab32333', 0, '2019-07-24 12:25:16');
INSERT INTO `oauth_refresh_tokens` VALUES ('f9e61dab2dbe2e742a433f3502662b7a4bf5e80985066fa2d1152ae58144ce82bb6ebe36d0ba9006', 'f7fbe21b2753549c37eb39fe03f278b5702d2a3a319300723a2aa9bb82d9ddf3c9302ea8a1afda50', 0, '2019-07-24 12:27:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('3c898c2ff68b2318404591bcd4d0df112dffa3863a4518003f8e8afdc303eb97c047924f1558daaf', 'ee9003fb4c058970b56fcef50f3b302d0f48ff30eae9831f83cd6b7cd8fab759fe3dd65572177749', 0, '2019-07-24 12:29:58');
INSERT INTO `oauth_refresh_tokens` VALUES ('3d66c7b046fddfe9e2eb5e222427bdce948bb0ce93d9f59a0e8230d905e5d4926da948d1e38a2ef6', 'c10ddda0281136b1c56a5b4a966c0903025e79d86e9672f6a183f0acb7f1aa8e3d53cd43975e85a2', 0, '2019-07-24 12:40:11');
INSERT INTO `oauth_refresh_tokens` VALUES ('827b768b5bcb66090bcd37efc1ddac8f1ab1e44abd985e1970ef2b564a489342f91282a24653f4f7', '7884e986f38766d59a92797d28856d8bff431369e5c9213cb7b723874795f9410486eb0c12e0e010', 0, '2019-07-24 12:51:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('b9611e4d68ede8957b9d30857264e9d524c55bd7dd4f2ec73b66f47f7ff7d556cbd241c0e733bf19', '53f2ad16bd74653c87b3379037894664595852f21425704b5e252b2cab5ef9141dcb4f0c9263df4a', 0, '2019-07-24 12:52:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('e7903f3400bfc445968db3981abd79c41a9214c421d74a1a7f5b987161d41bcaeb24d3425f69a214', 'fde5261a393f85302b64d40f83e4ce25a4163df83c10e9456fabde8bf93a632abf7d8d6d4bf83379', 0, '2019-07-24 12:52:42');
INSERT INTO `oauth_refresh_tokens` VALUES ('41e4776c36028836041efdfad6a53e120d7bb3b1c86ce9ca27ce33e3c7efa12889e3914062f151b4', '6a57c6cb909f1f3966050cbba5c89c2d73bc5242f35e6d2ee71616eb55b4bd3b45de59a0bfcb3554', 0, '2019-07-24 13:04:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('f630ad735dc22195a38f99b0af57b8dcb19ab17de9f2e3bb6f1ad01c276fc6e6812f8ad7e3b8afe2', 'f7f6c84c4c5fccb5f68270afc29c1a4b8d06a8107cf092f6caa7dc72064c84eb4a41d9d7a80d28a7', 0, '2019-07-24 13:04:35');
INSERT INTO `oauth_refresh_tokens` VALUES ('e1484c2a9ea7a684f052057a95da0ba878151b4d5e2f2ffc276d2ceabb9fad2e000e0625d1acfaad', 'ab9bf721c08e9186561e3dcdb210f9bcc511e9e81d054cc52c12146364c2281fa63dfe57c4fd23f0', 0, '2019-07-24 13:05:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('866c260f1c161acfeb2d5a82825e191a96e58aa5d6dafd8b440971bfae327453b688884dd6a497ea', '36fbc1a4cf1dce00328110d4487e39e7fb45e6394060a67f2d45c21a6a09ecafff58eb4b4385cb95', 0, '2019-07-24 13:07:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('9a02f154a48cfc67b21ac66a523331dae786588ec4754eef320eb1fdde748db980535605494b9dc2', '812ebcafd585f32e93ca9ddccbc3fcb6344d298ecf8b45e0311afad5237fbd411a35dc7b7deed5ce', 0, '2019-07-24 13:10:53');
INSERT INTO `oauth_refresh_tokens` VALUES ('5edc400810bbaaf4784141d6c28ea526e90afaee86b2f4213c2d5d165d44c0fa33ab8ab655fe5de1', '405e180b6a0ac6148fa6022ebfc33429feae7c215fd130ae02afb76aa6f665b48b856ac2bc91911c', 0, '2019-07-24 13:12:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('71fe337b09b0f7469d4c9ebdada14f6207e4b49e820ded1098d262a483d4602c5e49de1a2f69240f', '2c6882bb042474240631dcf324535034d19c26822c7a3f3c629e84761eaf462c516f7985bde119ae', 0, '2019-07-24 13:19:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('785827e351e4e808d912f064ab96dd226c6089bbacba12cb9a118dd2af58453e217976ffc1cf0326', 'f945cde743941ffbf4bb54d91350a35aac8c6806fb9e6f4a2943e553746976b507fe28a884053275', 0, '2019-07-24 13:23:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('c6436842bc75385d74090c313c5259a3b4a4205588d2f981f66e93eee4316d26ecf3f7edc93b4233', '58abd998262d2973ae1f735c698a5b94798aed7e51980849e72339375b259ebfa3b2014a4a63655e', 0, '2019-07-24 13:31:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('17bcc986dc27ffbd91ce6dcf9a1dfc0a92d983ea29b38d6f2295bf6337492f20f77d7525adf9092f', '28befd258acfcb3cb8620919d7f1076f7117d509828066969f7a9193a5c323dff7a7eff4ac49619d', 0, '2019-07-24 13:31:33');
INSERT INTO `oauth_refresh_tokens` VALUES ('5aaf64080a5b04ffb6b0198b70b8828d7ebac69c110ab43c9f1b9d19eeb20c2fdc581eb74e4d50a7', '646a1c47461c5406f11123611a9f18967b3e30165ab41c679985b52b528440a1dd77b69161cbb26c', 0, '2019-07-24 13:33:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('ae3c13ea106a201021391dc0f537315eafa7dccb518ba15b482699071be0c94b43b8a68944811ca0', '77f64cf3f161a98f550c7f2aea64aaf60b740d1627c0cfc310173684120a4d3688e0178a2bdefd80', 0, '2019-07-24 13:35:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('40ae7507e496e15aedb57d432489d8a53caf66b7d76ee43a40768a19102fbbdf1d21ed5682527e8a', '40c1bda135eac3feec54d9e265e4139f089bded6e38603c4f0b38217ec1eda42b71e0b209226c850', 0, '2019-07-24 13:37:17');
INSERT INTO `oauth_refresh_tokens` VALUES ('caf61f88939b0b45c4bba2f4fb430f4010e735f4e73b1c86efa1f88ee674738d90cf7d376a0ac374', 'b11639ffb07df38d223cbde8eae693b95e4e42dfb4125d8b99d5a531c027c98feca24a9d5d594b31', 0, '2019-07-24 13:40:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('1e4f82a88627bb9b308eb5b56e2e9ba6489e6aa9f6b80396ff480bb6f97a4f3c52115ffc9cae3ad6', 'b79c3551fb0ce55ded80f1151215cb34453197fb006a032d4e02a2d4c56cdb66a3808b7a6d029fb0', 0, '2019-07-24 13:40:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('5f7f5181f1164b8ac0e6ffe0d3a8529830656a635ec57f720fad001fcbbdfe6516dd883362716b53', '3fc8fa4fcc541baa2ee6449e85a433b2fae699cab177adb281299d60364e4eea5ba7e3150447adf4', 0, '2019-07-24 13:42:23');
INSERT INTO `oauth_refresh_tokens` VALUES ('51cca7583a94fa5fea98c6a800ce4b5eb225782a6cdf1ec589f0b2794d3ca7c387e63ec4cbb47be6', 'ca42278dc7f352411662de10860c41be53b47fffad14f105ee04f6a5391ee6fcb08032613c7507b2', 0, '2019-07-24 13:42:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('3085a16da7f17648ea36eb621c0394a8de9919172f5f8a731e2499957efeae2ddf49942479f2b3a0', '0a04fdf8985f5e353ac30794e39db2bb3192aa062f2c19513109417e8e5832fe6bf43d29b64e1de4', 0, '2019-07-24 13:42:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('73b43364ea3296783ecef05eddc346d17e2b268064d16fed8659abb0b53c4251dd48e0c988b0d0f0', '8e201703301b190c0344e5385b65a3daa4987dce6715d5a0c041ac5d65c6e3fd12bb97fc61edc9cd', 0, '2019-07-24 13:42:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('9a6514435b0493c2752193065f7695e6a7dadb5dfff72862a051e930d8a914759a9c7e98446396d8', 'b0db36e404dba25d763394b87f4db0400e29dcb9c95e0aded43463c1d55357ab900a1a3503a1671b', 0, '2019-07-24 13:42:28');
INSERT INTO `oauth_refresh_tokens` VALUES ('f312d4a68514f784326eaec485423dbf1cf4d9ccf220c2dc5bc6e1832f6f65f4b1c32686a0b10a2d', '173894179578766adbf70b0528dfacceeab173d2f9653e6892e4fc86d2f1bacbb690c42c29e2a7fd', 0, '2019-07-24 13:42:28');
INSERT INTO `oauth_refresh_tokens` VALUES ('6e3d45c8dec5149467638b66f2e2e8ed5051a310417dcb27f5c2b02fc6e1f2f7aa7795b20bd4a05c', 'ab8e91395a80f0136241d65871f35cd32f3b7439a14ef9265a1f3ec4cca39a9a0ec0f26535f8956a', 0, '2019-07-24 13:42:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('1769be253fbdf73b91610c5a769e4297cc85fae06d8267524e0b5f7b09385567ed9b97a89bdaf1b0', '869cfd60ff4801f51a18d288563aee22768259067bfb6a8912d9cf9c8c6a9abcc95a6e649006412e', 0, '2019-07-24 13:42:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('d581e6c83256c1e9c8654b24843b2de3d715335af63163409b5702bf1a5e0ba7c29ca5c00abdb6e5', '1113b40388aefa9053ed81b81173d779f8f217822f711975b2fcd86950138aecbb837a1fbd13f038', 0, '2019-07-24 13:42:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('634b4bf57710f13c598a5a306b0fbac610ce93867ef234b982cd2b23ceffa2b05f895749195ac54e', 'f448904793ac2e5e5a73833ea0abb76350bc7879cc2758f3e3fba237004cf2feb23bb77dd77c3b18', 0, '2019-07-24 13:43:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('ff70ac475f530a1f15363b31039b073acf4e1d818911da3f809ac0fe3d0e44ea150609483e44328c', '16cd5e8b8314db6b074e436b895659bc29b09468747d25e093b51d1321f5a27bbd63abb1895abef0', 0, '2019-07-24 13:43:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('0c83d6ba6818408cda623d7b3f7639c824b0cb8e987fbe1e66bfce9fa8ad3f459bfd27bc0340e667', '1a89894da4ff2387c886de003827603f7e496d9908e993e963e1748b1b7806db829c431945a80869', 0, '2019-07-24 13:43:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('d81ad6fbb66bd853dec69be8b990f19cd02a53d52ac16210a40afab82550316d7552b3d980742111', '5f130bed350ac7b8812bf994d51296ae43bccc6d53eb67cbbecd23556ee424189bf5fe3ebd2d886f', 0, '2019-07-24 13:45:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('8dd9d85aa0d73879c65920a269cc7e7ffab804d5f40b405aab618f84bf7cc5b2360c1b4bde4b08ba', '69edc8acbc591c457fe024c18bfd8f92aeaf9597cb2324030560e6306764675bca13b3b4d1144928', 0, '2019-07-24 13:45:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('f9a2fa07d70f5196795b1168412c7a336f4a0458baae10a2a451c03934ba8869065496c47d6f02d5', '4edae49e0c7161a5c92aab5dfb660c365688c6757c79bc98fdee0b6273b840b41d28dbdd1a733372', 0, '2019-07-24 13:48:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('4ae320149d9266e2a8eacd88109ea42bb16b41a80f31890ffb6bcf7077674413de90036257182d2f', 'f17ccb5da5db3a648bb15485c1ed1ff493fb72e2e9c1fec7f488f703f6d95be18d24b6b3dd7bf7ab', 0, '2019-07-24 13:49:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('396c26b22342ae0452da2480ee27495aa4ddc4200e29fd0fd7ef83ea312f0bbc641492c8410afcc1', '9e71ef7146d6fd88c3ce773e5ff6f149d5c0b1a08b609bec291ffda12f8d123c00108504512dcd24', 0, '2019-07-24 13:49:59');
INSERT INTO `oauth_refresh_tokens` VALUES ('a31ca452e667fdbf0c3155cb7011da9708421d69e1c18f12538b9194249111a6c39d470bf0482173', 'c0dd0f9bbf1b4d80073fda0b85cb0ef9592723f1bf9c7c62e92073185614ffdb539786a7e8ba10e9', 0, '2019-07-24 13:53:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('bd3c85f9557f991e64c5e06dcba0d66a3d0f3724a8c526c4c365f115aab33b3aadb59a00f3215cf1', '773fe4ed60114fb47b8cce93599d9c5e0eab07c10fd603835afd54309e86947d1095d214a24115fa', 0, '2019-07-24 14:01:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('85f46d20583c84eefec1d847f67d82db4001238d341da0d843cf40eea005397dfa3b0537178db7b6', 'c9e64f77ba5676bf8d788e6e645f8056be5eb02cdc4796dd22498f110c3fb82e36793a85aa5f945d', 0, '2019-07-24 14:01:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('a44136cd7e4769be56169311ac51aa3cd3ed8fd614103fc2cb6bb1f3a6bf4f9daaac5b91cac54d46', '12049639288502d9060124fc1d5d82af343c0020a6de117954b5ca33ad5694c3e38a9833b2427440', 0, '2019-07-24 14:06:20');
INSERT INTO `oauth_refresh_tokens` VALUES ('b98fc77071bec932fc9a7cc39e52c70d0a8bca0fbe093a81fa8f3099c1dc784bf562eda85f9d1e85', '8ceb4dfeb47a10f4f8962a4606a5d15bf5c12d3d9457e4890fe2f256d2a1a2e009394276f1fc422a', 0, '2019-07-24 14:07:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('d2a61de14c74f93f8351bdec03f6bc2be83ec6b202b8c8f0e2ed1e06478988b3a75831cc8fdfc45e', '33438c1f5831089187be9e67e5cd396517e525cd284668004d078ac70c5c491025e7d91d56d5e003', 0, '2019-07-24 14:08:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('ea4b58a6ce83635b4c5c0496f82e2a5d411203110a4f6cbf9df72d7f1bd85f75077ffb9e2d3accfd', '5cc2ae90d3d7bc074ab9446e482e5a9ee508efebbda726bf693d5007d016d9aa7430fa7b7c930423', 0, '2019-07-24 14:08:54');
INSERT INTO `oauth_refresh_tokens` VALUES ('abe0f7ddf2a35f5dd25daa364e884f5363be8900120eb929d11a085011297eb86fddfa2caadfa569', 'b86456f2f14f0de18c15fe86ee2cd39b6031b206a2ecb98961b6f431fba0a8b380067436252f099c', 0, '2019-07-24 14:11:55');
INSERT INTO `oauth_refresh_tokens` VALUES ('8a60fea3d83123f0cc52416670d915badbc9ce5ee89cf0dfab360bc9864f5a27105390b49b4f2945', '4c6c1dbb583ed16141eef81113da087bdfdd87d31512ff562e325a2832730454f859c680c1425687', 0, '2019-07-24 14:12:22');
INSERT INTO `oauth_refresh_tokens` VALUES ('b9d9835c200efe4b2ec930c1b73f47f46a910813978d6aa48192ac9938c9a7b229da1896214c7bca', '78f898b4897ab22e171d169a3b34b93bbe1574d0800e236580509bfd762ca7048951ed59beda8bee', 0, '2019-07-24 14:12:33');
INSERT INTO `oauth_refresh_tokens` VALUES ('d6b82d2982c3afc0c41e1cb01f4085cfc61326b56522b36cd72407ed31bee29f8cad8188dcf29fc5', 'c75bde1ca558ad6c60a1f2ab4e7686342501fd5ca9364cde07a07fd4904ec2757bf218ac1be52cf7', 0, '2019-07-24 14:14:49');
INSERT INTO `oauth_refresh_tokens` VALUES ('4bc1d5e66bc5980f5ca6df2ab9fcfba14e7830f111744b8a44bed7972a0f9d952bcc9bdd41caa06a', '591595b4ec8ba1b8f4ec8be9c31fd27e0a2910a37b0f7b845c69e73b699aac3616383146d55f5f6f', 0, '2019-07-24 14:15:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('b9846a6c55721a194b4f05ed31e10d1b265fe0a7a439ab077cb3b9b1ff6c4831687acc89f6f223e7', 'fee5a3172d5c009e7d1af2cc8ab0307f2f650fc8aef6662b5a8c80ab60a9d0bbfe6cca4d6dc57339', 0, '2019-07-24 14:15:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('ed4c5acc5450e170c1ee5bcab2ab9095938e054744354d2b24e610ef2eeb708dcdbb14ad70bef75c', 'f6560beb6df36eef1c4e07d5bf45c9323b1fd1f914104156eef73a4c13306bb6d75a6aeff2f7f400', 0, '2019-07-24 14:16:10');
INSERT INTO `oauth_refresh_tokens` VALUES ('aa99bfe4cd68410bd8cc241774afed6aa84d9f5a2d4fe7f3ea020765363a462418d6beb22c299071', '35b2d415e4b20f098275594c42ad1e5c0c1fbaf072440fbed0846c6b9c1d339ced52c2ea3c70914a', 0, '2019-07-24 14:16:36');
INSERT INTO `oauth_refresh_tokens` VALUES ('b4b6cc48b43d76b22f79f633cd7c702735015fea75aa1682fbf4f697edbc708e259726f31fd2026f', '2ce8b0ecca89eb7ea5ec77e04b074eca329fc3f4a75e4a12258f0012f738abdbdbfe1b6a3114c9aa', 0, '2019-07-24 14:17:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('35b1015dd4b496861e95eeeb76d28eee3134f6825c8489d5e4b5b48bf0e184f4a4b64eb823611a9d', '242596aaea8c7b835b070d026663fcb915bfbc65f696360d61a304978200fa712122cd3dfb065509', 0, '2019-07-24 14:18:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('ee37ae6c88e098c6163ab9681371b4318803ee0e577b4658fa7547f95145b056b911a87a1802206b', '1a20632ecea1fd790dfcf7940d20efe502865b33ee0a4ecb4a8efe8e5431abd32be5610394054b2c', 0, '2019-07-24 14:18:34');
INSERT INTO `oauth_refresh_tokens` VALUES ('5bce52d0477eaefccf16a8f0da89edf7e58ad87c373209fb79f44f57116faf71d3218dfd95eabdcc', 'fac7ca04c18d5ecc8f5655e9b178088c2af8709f4db0aca80f61631c1bb6ffc0c8af0b8a60c0683f', 0, '2019-07-24 14:20:55');
INSERT INTO `oauth_refresh_tokens` VALUES ('cddf68ad7dc4da5cf82ad3b066e54e3c5246494b41bed0f5ad8cceaf6704a3570ef6ce4bb39b4df2', '41c0ca6f2905f2b5724a420df538a8ed25f3082fbe48f7d591003e653ce8849cbf491eb4a0029ad6', 0, '2019-07-24 14:23:47');
INSERT INTO `oauth_refresh_tokens` VALUES ('2178ae7c1e9734804e6b74ac370cf222d2369404192e15b0a30392f9978b2c21cfbef674af24e2ad', '98c61b30a4c270637a83ad4431684eccaeaf19b372ba676787a6bf72b981a862edfc5d8c572d9dd3', 0, '2019-07-24 14:24:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('9f03566a2c5208092a3d9f362ed6986dc3da6e6d6749590ecc5845f3769eb84098226a64879c440d', '8b926a7ae5a3a2ad19ef372e1dd6e1dfe83dab0fd5baa4b9a91fb53a19a6e7825197e2f274253377', 0, '2019-07-24 14:25:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('a346b1e6f02e914b139de1633db3641b49c285b8388eb79d400d4289cfeb3eb9a5912822595bd3b5', '6f511252fb7b5548dc401766b09dd48958525c271de73e6e4967629e6a455fa109d4ce5fde52d245', 0, '2019-07-24 14:25:35');
INSERT INTO `oauth_refresh_tokens` VALUES ('1e73e0f1aeeb79dbd703e7bfa6001f2269c3340944e586b3cd8e159486518bf72682ebe820ece194', '1d3cc0cfb4b37b32aabd39902668e3c687c113dce27ce26330bb2d7fe5cfa71a2b524d79a1f046b0', 0, '2019-07-24 14:31:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('11524b84df4aa39de451e6d7a4c213e423afb1371cbde2b2745872b981cb1d6824ddeb9c618f81ea', 'ea44101ef565e4f8b669e053a2947da594af3c7665ba7ac74f335b5d26f9a893acd43a37d6de8acb', 0, '2019-07-24 14:32:22');
INSERT INTO `oauth_refresh_tokens` VALUES ('d1e84db8c61436cdc666cf571467d11c5d765f612b7ef7fa23ec1f425317f0c5a845d9a7cbaf48fb', 'edeef3a9903d69cb1692e1337a28a2a6bef7cd4b83c5560a8150fe5d34ecbe25eeda0add17d8d10f', 0, '2019-07-24 14:33:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('0ca7e606d64445e23108137903ad054394ddd1035e2d3507a820967b3102f4e61ff4b529157067b3', '7d0ca72a89a0b18b89b2768b0d6e675954fb0d22ecb9909e33284971e30d58b8540cd3cfabab3bf5', 0, '2019-07-24 14:34:08');
INSERT INTO `oauth_refresh_tokens` VALUES ('b31fe700465ba27c6ee52e3924f8059a7138b761d2c55251a1f1ac3a592946e4c61be56b8ed47217', '786f2d9810b746deef714904d2153af9c532f28b4df5d14f2e9d858bdc412ab9240925309a3ab320', 0, '2019-07-24 14:34:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('3fda127bd4fda748c3d9c24982b5d8e32b328a2bdac9f89a776492bc8690b3459cc1a311eb483e5f', '96a6e4a34c75e30ce76ad4d4918d3b7d1a22954e6d1e25c19876516279ec5af3ae38080342359897', 0, '2019-07-24 14:35:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('f31bb75f8855dfba51ec677405715b30ddb9d4cb87bb1155b9af3b52edf37ed561782eb8791dd544', '03f5986938a416a246d1d42b9f69193c44f94c5f3d5a77823880f661203c4ee7741aab11cc3a3af3', 0, '2019-07-24 14:38:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('bd0ff833ddeababef35948731dc4dffdd73d970c52ccdbd360808613f4d0c62456bcc7fdea3cdd40', '1cb1dac5373855b68b7798d0ff473b47ccc4c5461d29f8c49bc8719327aa56b4a7ba2fefbf079d5f', 0, '2019-07-24 14:38:20');
INSERT INTO `oauth_refresh_tokens` VALUES ('7b2d56c483184f36819b16838b726caf35adeb47f81661e17475641d1f9b54b3507209bd196b29c4', '3e9591faf6bc6cf874a2ce90fde9ae040e1dac1f49bc30523c065fa6ec055204ef4d78085a88fbab', 0, '2019-07-24 14:39:55');
INSERT INTO `oauth_refresh_tokens` VALUES ('a81526e7fed0915f8dc7a359a620333f17f81f8acedd6e72a5211d19cfefc6ae83556ebfe4271756', '97bbc58f43e867e7d0e54719adf79f5ccfa06d9a093fb64d527d56adef4b54bbbd64a27e662a79dd', 0, '2019-07-24 14:40:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('5d5f54b93e214ad74ecd970782a4b42b276edd31af3bc0491f0be6e4db2ae0ad2d57ae1109b29f9b', '65ff8c2a99033492aa72ff69a1eaf81e1ef75d81eb5da0ca14b688c10590fc5b25abb65db0b6b01b', 0, '2019-07-24 14:40:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('e2da490096bb25e33f5c2838f3e57fabeca4da00c0cffb801bfbbc548f5a99a17bd04d6e126ab812', 'b9ee8a7ee053b0c88799025ef0447dd1a580d3394a60e4696881341b084d4367d368f40243d6b0d4', 0, '2019-07-24 14:40:09');
INSERT INTO `oauth_refresh_tokens` VALUES ('bc3d59e251e2b614327f04ea06d4e9401c9cfaeb39e5283143bb8f3c1e6ecaa42a4d60f4b6055191', '6aa2e0efbdb10c63321478c1ed2bc44296c9cf22797041aa6b8e56a28798ae7754e28a817425ebf3', 0, '2019-07-24 14:40:12');
INSERT INTO `oauth_refresh_tokens` VALUES ('227a2218566e35c540a5d56da91201785f33b73d722c5a1e7d8abea28bdf72cb0449c74490870618', '515d211ef6042c9ea9179c0684fe18d1cc2cb921a435f3e0bd7d0b45cdd4bc5639e04da5019f8c35', 0, '2019-07-24 14:40:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('829607ad44bb329ff29b6fbfc278ecf344ccc6f3b42d5058326a1f7c510b1aa972817591afff3ae7', '92bc1b9da908cf0e8168472bc421e7acdbdcba981c309f4850fb13cd4ed82b3198f6df760c85a664', 0, '2019-07-24 14:40:47');
INSERT INTO `oauth_refresh_tokens` VALUES ('9ca64e5e021c2e0f1321171ccbe5867a8f2d28fb005716244cbcd16e6a9ec688b49ae220dfcc7678', '33579b7065bb985d8c32b28faf44a8c4dd4519a2b1e96a5c18efb8884613e4bd5029b042861dd0ca', 0, '2019-07-24 14:41:23');
INSERT INTO `oauth_refresh_tokens` VALUES ('eac700225a69c55805c655ef331f9427597417412570c3e836913ac10f5002a1b3e2f53ee6cb2a4c', '99a9d7c8b0eaf17a2a2f24ee3e98518037a1f3ecbf8912a3a2c16ff5015ea4956f2db71757f053a3', 0, '2019-07-24 14:41:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('f37b69c5befa02f37f2768304c6463a7618dfefd5e836a5cc8e869f05d18d13aff44a172925a8094', 'fdea6e49a7a135e6438a66342c026f837a1819f6612e522afc53a10e4e933a222ea47c961d4a5d81', 0, '2019-07-24 14:43:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('719a5e70bee2dab86e850be28084cb9023781aca06deafeeedf6180b1bc6f64ec6f94b73a2756019', 'c5309cd29d4ecb854f48fbb4d8379e177b203f447bb5469eeba70a7a42c838c59a68f317ac0fdc3a', 0, '2019-07-24 14:44:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('5fef9c03bec7f8660dc52e005ebe9b8914c4484833a228c85a115c84375cb88a211a25ae717638df', 'b5b9271fa07b7ac3d527e090f7f76b344bc767f83dfec3575b017a22dbfe138d2b9080e81c7c00ea', 0, '2019-07-24 14:46:08');
INSERT INTO `oauth_refresh_tokens` VALUES ('a91fd26695e21d8bce308b896fd0929c2f378973571539a929d363ee200008824c799a341d3153c9', '72572ac59c83e1e2329b4143305413814ecfba1fa583736ef757659c49b318ebae328774eaa07624', 0, '2019-07-24 14:46:48');
INSERT INTO `oauth_refresh_tokens` VALUES ('4a47c024faac0655a35f75ee777c1b9ed7ddbc73274658de061f4be8e1b0cdda13d607306983a148', '8a36b0b1a718f4469fec990786a7cdc01ebec441d4d1e6be503791f708a35019e5dada854469688b', 0, '2019-07-24 14:47:19');
INSERT INTO `oauth_refresh_tokens` VALUES ('040ff02a746d186a2b70b72cba9eaa640aa70f7b3d2a18ce4e6e69502e52dffde1c82c64ddc19a22', '6720274bf3375b28cb8c0764ab832ef7b9789fb23d82efca9f967b449c7bcd986a8f6a739476cdcb', 0, '2019-07-24 14:48:38');
INSERT INTO `oauth_refresh_tokens` VALUES ('60e7ab42287bcf3351f934efaeeecf23863cc3b32d701e62420226af7e0a5af7a4973eeaa35047d6', '8701d079a44d32103a566bf6b117f7cb95f73544c5dc22725100f93b7c65c443e780b059f8ab4a46', 0, '2019-07-24 15:14:59');
INSERT INTO `oauth_refresh_tokens` VALUES ('3f77b35f99e6cb5473ab1d56302818eacf6ca2b2635e8c62b866e48d530dffbf29deca4603c914aa', '99a261a29887153d87b9e249452e913577d836e38ac692a1bd945bdfb47204039d21e4e6ba23f3c5', 0, '2019-07-25 11:01:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('e2234aba6c0c44e496ee1b42008b20104053019ba5062ddade79e8ff72b8c9b308ba19a527d7a483', '9296e4a00986b6c9ba66673222db402c1fb4b12ed3d522a853de6187eb6f4ace43d23fb9c009db6e', 0, '2019-07-26 19:12:51');
INSERT INTO `oauth_refresh_tokens` VALUES ('bc49641577f4fb2b75fb714007f20bdeaa3ee3a146b3a224b589e86d402278844a34751dbcce08f7', '0233ebf2e888d725186e983a97c80675bbab31ea91cb365c146b18e42c849a914da883cec355e68d', 0, '2019-07-27 19:01:58');
INSERT INTO `oauth_refresh_tokens` VALUES ('39f312298993a7197fd5ea84619ebe59b572a3b8f14e33ed6d8f7ff7f9f695415e6fea310c4c2e91', '687e682dbc5fdb6674dc5dcdf2dd1d04062acaa3b7c5ce7b7922c99be98ceed7b6f9f0d2a9940de5', 0, '2019-07-28 10:24:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('4ea795aea81bd1e1abdf30ea7a74ae8a3ea045eb82463d22b7ed031daeaa600f116766dc52bf0487', '286fbe58113cd07116d37e6a744df94d4060f75fffdb4386694f86019f5134f5e114ac63c31c3d80', 0, '2019-07-28 15:49:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('8fbde8acc06b1e5a584958d50810fcc179d62070861a97fc5e0cccd476923203961d75b22b006065', 'a645b81146e7e4f100bc43234ba0542153b97678917e8084d30dd045ec20fcc3018235deedda8ca1', 0, '2019-07-28 16:23:54');
INSERT INTO `oauth_refresh_tokens` VALUES ('1df3c41baeb80765f3a3f901340a82c1c394717f2d33a76c8b015bfebf035b3c4efdcdc0c0dadb18', 'b2d0735285085d3a321a2933c41fca70c5e9bdb6b69a957297e5685542953881401ccba19f5df227', 0, '2019-07-28 16:27:16');
INSERT INTO `oauth_refresh_tokens` VALUES ('b875e857459ff8b6d16507dcf3baf07a5dc0ffad896807b0f159b92b22749a1149ab07b61e4d3240', '35932b67053525002611d681e7e22977bb6881d5b204ab6b781f61a0a69ac0594f1ef2e2da9042ec', 0, '2019-07-28 16:37:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('0a668b8f22afbcf849a571469076b3d1b4fc8ecc8e6b98b6206e12400b215d8d0e0a5606e42c9ed5', '4e94373fe90cbc80027fd2b9e1e13d894fc6c6a3743ccad163f79e673a54172ae075181c050f8845', 0, '2019-07-28 16:39:20');
INSERT INTO `oauth_refresh_tokens` VALUES ('80b347579af209e3f2149aab788c62fa39937dea1cafb318233ca0e17ea3f78c047f22f6a36110fa', '274f5193bed9c8506df01dea6bdb06eb6e08d95b33d927cd80bbdde715d32ea7bb76be5e2c2fee1e', 0, '2019-07-28 16:40:37');
INSERT INTO `oauth_refresh_tokens` VALUES ('963f4609fd717d1a21bda776aaf55f48b224b4ae4c5589e19d5a0984f4abb8f58096279d7bcad5af', '1b8062832746ebe9d2660813226a011811f1b9bb2305970bbe5251bdf6b9eb465c4f5f33fc196049', 0, '2019-07-28 16:42:12');
INSERT INTO `oauth_refresh_tokens` VALUES ('b73e7e6adbb72d5eedf8e1986da34dd21fbcfecc46a6e3119772cae0ddd4b4c5ab4f1734f776fb26', 'd35af70fd2fa5b853a31ad662f6f4fded4428afe3d1f633858bb5bf1a0d4870bcc5d77316b419a8a', 0, '2019-07-28 16:50:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('2c89125a30be2947d3fec44168074c7a8ba6bb3b523db2d9a71d9bfa6df31a730451e36c9a0aa9ae', '78fe0348ea4af8d6650ff3c6676ffc8f820312a38c14cf6e6e7808037fecb2fde58993ddaa6dee38', 0, '2019-07-28 16:52:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('7d7fcaa12d23b12e059cddfa8c086f8f9df34c660b01b362908a90b187c6cfc93b9d23147898a69b', '34553cbceaaece1ff338fa09c765aa0846a009b3e2d3851d559aaec701645593e1de0ec12a6db6f4', 0, '2019-07-28 19:02:53');
INSERT INTO `oauth_refresh_tokens` VALUES ('62fd2772b68c7553eebc19344d3e11a0825186a69140397504c29dd332cc3e5756bf1523f5ce1eb6', 'b0ac2823598953bb81f8348dc45e0cc4a9554e63a056c3b6f4d3d096cd8c944f79079278b7441509', 0, '2019-07-28 20:39:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('f43b4eaeef7b46f6eb39e2ec2e0a379232e0bf1392034bd5ba22e0ac0cd04920634bd283d339dbcf', '554a740325810dba5293dbc4014af3fd457c3737125d26a9d79b782858300507000e05e2b02ee426', 0, '2019-07-28 20:40:17');
INSERT INTO `oauth_refresh_tokens` VALUES ('cf9941269664ab97efd49b178c3354a3099ceb8cd2a1749d72ed0fa8778c08ff004a118080e2bb6d', '3f9de0c97ddf08c848d77920911c3d3bb328f90f893c37e371eba2bb90374bdb990ea35dba420674', 0, '2019-07-28 20:40:47');
INSERT INTO `oauth_refresh_tokens` VALUES ('21f413d80fc85dea6f00660341ff11a1c43397189cb9139bc81b548f783fc8b58feda41c3b9c0fa4', '0cd7d41e53506edb122debf25ccb6a542d87bb417a9a94d64faf6ce7b4d91bf877689e7ea4b348e5', 0, '2019-07-28 20:58:01');
INSERT INTO `oauth_refresh_tokens` VALUES ('ab209d9aa99104f00f8251323ffd1a61a16628333fec48698e2c6e24284db92ade11fcbe6a979f2f', '143a44a752122b7a36097fbc9153c58250c4e1cfd6bb57e2fc235b14473250e9afc27cb5d533d7e2', 0, '2019-07-28 21:02:08');
INSERT INTO `oauth_refresh_tokens` VALUES ('bf7fde5d0dde5898d6278d7ddeb3506000ac4bb66e8d6b62fac4faddf58cf74e8fd279a402d2e282', 'bc166b64ce5f4093e6624ae53f8b96a2032ce690bfe61e49410c786b451dae1f4eadc68ea09d25a9', 0, '2019-07-28 21:03:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('d0e71ab6815e3a64f5ed81408e0602e713517e633a6aa8002c328c344090b087dd7379d2dfdd4ea4', 'e211573f8b1d91bbbcdd0f97df38d9aa7cc09469d70d77f063ff1f8983d2b98a193c118630c1096b', 0, '2019-07-28 21:07:21');
INSERT INTO `oauth_refresh_tokens` VALUES ('a514526538e9a02b7002a42e92839c86846c07cc740778adab892c0b0f43cbf273b66ae99b59040a', 'd444ca4aad65b519f5b52b8212bdd90e2ce25159bbcfee4e3a1ec06b009462a668a226153315acda', 0, '2019-07-28 21:07:42');
INSERT INTO `oauth_refresh_tokens` VALUES ('4db07a39c4c9bae42bea579cc5dba4d51313016984f114a380936ea3c3650ed911d0ba4046de9f4a', '42254850cad69a8d863528ed711ee7c1a361c35c538cce2c14e4268763b989017c4a7fa836598081', 0, '2019-07-28 21:33:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('2b36995a4a4548f0717ee0e641ffd5a89a60b525dbaa4eb02f5b71c549f81b93c143e45867571133', '7f2632576c2932efaf1481fa8ac41f600b7f286a5bc0141633dd37e727caa77c4919cf109b386c3d', 0, '2019-07-28 22:33:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('2368c6dd128f46be3218d0daa86fa4aa9ece9a87d9b3665669c74257daeb4d58db8479b332fe2d9f', '8e0bdad56e03047857dfca75c0edb0d2858af63b1a77986330c4deeba6373e99a92d45cdd7ad5881', 0, '2019-07-29 00:13:05');
INSERT INTO `oauth_refresh_tokens` VALUES ('1f2e95e1117cb3caf250633a9d496c32c11ecde889b75a35027964b3bf42a91903842278b5c4c718', '154127f1cc0b4caf604631fd66a5348cc0d1c86915c67dc940952828f9b33fc92ba624c101c646bd', 0, '2019-07-29 01:52:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('54b90ff8aea87bedf44166d13143a9839e7fd2e52a7157b872c23f9b684d4fda29382b3ee470c3ea', 'c1211bc43e19d3a7c40e0912d9e62d3628761cb72685b1822a1b1453a6d32b3ce765d188a00116c8', 0, '2019-07-29 02:02:29');
INSERT INTO `oauth_refresh_tokens` VALUES ('667cfd4444772144e7a5edcfb7be9768b7d41510b279fee5d693bca2ae8da1bbda80496300cb6322', 'fe5ce5cbb64b9d9186d9f937f46f2c30d881f6955fd542fb40e677d6dcd6b24152bc79c99e0dbcab', 0, '2019-07-29 02:02:44');
INSERT INTO `oauth_refresh_tokens` VALUES ('704ef91e7b6a3f7c2b499d13660a393231341c6fb65d87ccb30d67e28a1b58cfb31ab39c0e5e2036', '42e7fcc821e0122ca027ce2378bff7b6d472438103b41b4f246fea573670f4cd931157df664b149b', 0, '2019-07-29 02:27:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('3291da8b23ee5b3bb15706f1e4d80cdf874eec06dd83878d64ae1515ce1a055a1533f2fd40e057d5', '87c98c7b2c42f7f31476a0857f9f4e7e69004bf61c14cd652f05a834d2fe00029476668d143b177a', 0, '2019-07-29 02:27:27');
INSERT INTO `oauth_refresh_tokens` VALUES ('70432487433b7b80e56c30b1d76baf0a9df123b2250f450a97c3525042ab6f01d84ec336c9f6ca06', '513c97c795150650d95258c501ae48176f110beefd91c377bc0336511e9974535b93735f6d47bfc9', 0, '2019-07-29 02:31:12');
INSERT INTO `oauth_refresh_tokens` VALUES ('1b83131ef49cc5bb82a8bd8cc4d1257d2ae4928b81a9780cc2aa000b9c11f7c8dc7eb009091f8354', '009c7e05def52ac518d753a9fcbdc8725d9de9037042793e778afee260f2f801585e051aec252914', 0, '2019-07-29 02:31:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('e6debce4dae1d29c4d787d5b5ae0cf81c0d566ac1dddfa9b9f6bab2c7344168b00844742e0dba27f', '99f3bbdbd3821690856226f368083abc914516d1101b251f798475865ba7c23bc45bd63aae148dad', 0, '2019-07-29 02:32:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('6a0c18a52c9ed4dbdd3993e6a3606fff2a3f39c292e1f75a8d94166e34838f2637e42af1226fa635', 'af060d4505883bd4c919348cb592847ea12ca87ab78c3ef064dd571940810f01af79ad3266bdea3e', 0, '2019-07-29 02:49:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('cdf1a56e157675a5e3128de5e7762596e88fc43f8f2f8b027a66d046d0957a2542c7fe8ded06c652', '41a78006860a38b8ee4168d242ea0cdecb2e2271e02c4e2ec233675b265cee10c4ff18a8dbd11fa9', 0, '2019-07-29 02:53:15');
INSERT INTO `oauth_refresh_tokens` VALUES ('1635d05bfe2ce5fba377df889018e7b251bee95a4714561402c81e6f860467fc52b525eb263c2f58', '11e41d20ad97eb1ee9cf771c28bbf67a73cec75fbda5141ef132146b88823863a729bed03ec8c3e0', 0, '2019-07-29 13:12:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('c2807647dfe44fb89e55fcb2cc9c592203f81057e14723e08a5cbbf4cddcd63aa0992af9d5f18dd1', '9dbf1806c73026a29f2cd6eaccd51803df1ea2167123878ea87f657ad8fe604ba4782bfe4ffd685d', 0, '2019-07-29 13:59:44');
INSERT INTO `oauth_refresh_tokens` VALUES ('b8c1f5c7953ae2c39ea77b2e26e2e693aa1a6d60bfa2d6a5eb739636f85c4bec19808496b37f5cce', '41539529516e51de1b459d1d54816b6c196b7dbaa0e447ec4a0c7637ce405eafe081e37568cf438c', 0, '2019-07-29 16:09:20');
INSERT INTO `oauth_refresh_tokens` VALUES ('0df2f9846e12b4e639ee49f3ac7d42c443ab5a44700a3537296a008885a3fa627bb3558fe5a3de7f', 'fd77e94e4094d2bdb257a05741125a182be2b64639146c2d0c1d10aaacf529a7074090e9ea484b4c', 0, '2019-07-29 19:00:54');
INSERT INTO `oauth_refresh_tokens` VALUES ('3b499a85109a2ee2f661de10ac01406c6ec8d3ff5cd86dbe18dd8d9cc5949d3eebbbd20a7b19ebfb', 'd835f7ea64cbcfca6e4df9b452ba98c719529e7b366e451e861a884bd86f106c4c66f3a6623f1ef0', 0, '2019-07-29 19:27:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('e63a7c3399f52f2d4490b7015b155126d5f520a74a06a7b95cb91c60f0664073a53a1f0c432c703e', 'cc5206d323ebc43065c71ab1e980857bd52bcdb7a292ceb892b49aef44e2a8ce28b6f56abf0fb120', 0, '2019-07-30 15:54:06');
INSERT INTO `oauth_refresh_tokens` VALUES ('93407d5f077c7b79f205f96e60943e054b4dfcc59321bdfaf30e37e6e92bb97ade814230b5940144', 'd51eb926d0a9d704c20cc1a9098349f7cf52ef1759b550a7cdfb5a46e3178afd37b0d649212251b0', 0, '2019-07-30 16:17:02');
INSERT INTO `oauth_refresh_tokens` VALUES ('d938de4db422658323259ff3528b2f058f06b2fc540a0e6e4888865ffd47796c6c58dd57eedc65ec', '038da55759954f9743d3edeeee6911bebbea5a8c5d41c791fa0c79ebced0fba71e37afe9f3b26079', 0, '2019-07-31 19:31:07');
INSERT INTO `oauth_refresh_tokens` VALUES ('ca2f5a6adfd3db24b02ceaf66254d15582325ffa2fc8ec85d1a647aeffad06a89f4a9fe9b43f5cb9', '2dc0c8dae92234cb308f3e1e7b185ab68511f270ca9b65e0cf9981c43789657dba2b21cf680f94ea', 0, '2019-07-31 20:20:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('06b6a23ffa4cf66231846ddaed4386538e522ffe7791c382adb699ac4ebcde423bb2c72965e9efda', '46a5cc184d084a1bb3d2521b2851767e43ccd7090528f92385c77daeca5712d79f230cfab6deb670', 0, '2019-08-01 18:37:44');
INSERT INTO `oauth_refresh_tokens` VALUES ('ea8883f014084f5b024cdf0bec4c7e1e025679495bf3887ac1017178bd865fd18fec44b702a120ad', '8703960e8e37f6832a4a5845c41a3dae6da2ca12117a25aa1df9d9559baa25ee5ce7862f20f74fd9', 0, '2019-08-01 18:49:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('16ef81e5dd7662dcdd27c604be03cbc61747596b893051ffb9dd065aa3b679a0a4affa1c3bc9d54a', '19c3fc4b32be78c8220a9760248f0566fc887e9a601680c77777c955e11aa7148711928991a89f8d', 0, '2019-08-02 19:07:47');
INSERT INTO `oauth_refresh_tokens` VALUES ('c45b56cfb4818e729e9db302024f7ca9c41ece2e72c2f488e983bf3ff531a5bb98972cb0f1cdeabd', '0ca0fee989420920c8071b94dfeac5a7db1e5bb0826fdcb852ebae0662d89797f8e29efc41c97058', 0, '2019-08-02 19:21:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('d7320b1100f1dbf8ae2d6cc9c8a29f26cf8d3c3d9b02317dcf88c2ad8a264c90a019470879b6ec36', '3d57249d5251eb62f52290bc6e9dd95c4989cbf75621f237bb6f82b9d79d50f58dbdd1187df81dd5', 0, '2019-08-03 19:22:57');
INSERT INTO `oauth_refresh_tokens` VALUES ('0079ae89b4892d736a3b82f3c5f8346e71793c2312201c437094d72feda129279a54e368868b4120', 'ca5a09fd00b0e4b84e73dace4dc5c897914a681ee687d1fbd0bdae07886ae8181469c2e8da89a713', 0, '2019-08-03 21:58:59');
INSERT INTO `oauth_refresh_tokens` VALUES ('040164ecb3d232fe760d739b32fda9a32438baa5cb33f6a7569e1b8b27314dccd4d6c862ad753054', 'b171851fdbb8876f047ae27cb7723792d684e6d56b4fee4686ed660f1a33e8fd6e41d2dc4def282e', 0, '2019-08-03 22:17:33');
INSERT INTO `oauth_refresh_tokens` VALUES ('e15e5f3192771c2d364cf706eba29f65d21040ab5ccccf3a12f382f16fcda99804af218c93b0ad10', '28070deaf34cdfb3c57cf453ad8aebbbaf45df914e3110e25d3065bd69826a7e28a142f87c5a8956', 0, '2019-08-03 22:20:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('99803a46ad60e93d5bce15f07e770a7a35a2a385db03a3dad3abfd7c8b8b8c9eb29d74c33c2a7c8b', '5c82f70aebc3661deda7f1095b089ee140530e585ba821c3c2ab95ac752694c9eb82096eaffe70d5', 0, '2019-08-03 22:25:31');
INSERT INTO `oauth_refresh_tokens` VALUES ('d24651841f78f1161c2b4cb57abf679a419ff139c7ee748b3725354cda397717e574a8f2e616c43a', 'bf9554756aed027e51a968579f1babf47682f5794e53b3de698c8e5197424bbfcaefd168e5ec71b9', 0, '2019-08-03 22:27:09');
INSERT INTO `oauth_refresh_tokens` VALUES ('59428376cb8b4271b132c70e6d63c92a76e1b010cc6d351a1f976922f9d5f4ce5599d2155c284c91', '0e649bf822e35f85f047f57068cb13b09ea86bd84721b81dee966f8213722a154be899e560a4b8ca', 0, '2019-08-03 22:38:06');
INSERT INTO `oauth_refresh_tokens` VALUES ('28b019c96ea16119aceb105f64d527f5a8eab51cf1131f7eed503703f5cd30b3c468e9b23add75a6', '054b2c4b6f70b4867af486d0133849fe49a9b966c0d0c0f73d32eeef72dace9a19830286c8f811db', 0, '2019-08-03 22:46:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('63a753b7d16445306b023193fa8d205e471858560d0c230ef4ac0621c65c97c2449f515280e81891', 'c08b6f0f9d8b2865750ac1b2908f50aa8903bc4091abb4da8c7165733af28e914e15afd7772f4060', 0, '2019-08-03 22:47:04');
INSERT INTO `oauth_refresh_tokens` VALUES ('cdbc963dc9b8b62b7825df1d61a9d3292bc676dd030faebe8340023cb222050f09ff3c7b7a212440', '72ae902bf383dac91e05f8b10f3aba6f8721ef4bff0684e16613e8d319c53ebd0c0e7f4e61898a2b', 0, '2019-08-03 23:30:14');
INSERT INTO `oauth_refresh_tokens` VALUES ('162c46e19d22783b34118736055fc1033fce52cdf992d7b5f76a5c4b6270a478ab5643b6f7969088', 'b59d140083ca6bc07fedaf82c25bd58b0c73ed61cb553f7b5722e125a51dc7273277bd3a0d05138b', 0, '2019-08-04 23:17:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('cb474cb8a945c6318f124dce90ab86161c605e5e039b9da932fac4ac5bf35495a4dea70f1001a481', 'f640aaa42fc43b454be49c95f62ad94894051c06ac2cf0eb0ef644bd3bc11786cd2ebf63938d6f7a', 0, '2019-08-05 18:42:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('fdf89ae91fbb3ae56df8b4f99f99899d18c8d05457e28991d816a7a6def60b10f706d70534d297e2', 'b6bfe6f1377d897de4ac34d6bf9ed9dab894b14ec239e7c97516832e9920318d7b1b82d124bb7a20', 0, '2019-08-05 19:28:33');
INSERT INTO `oauth_refresh_tokens` VALUES ('237f1bfde963f1858f404980459b8eaba8d276aa1cbf9c9ffc6681258263357437b3665cefe00fc4', 'c1a23692003f02f8859e5f3bbfa7e2ce1ebb6969dfe27b6ed294fc24e98e99f6d3150279c8b3abac', 0, '2019-08-05 19:36:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('7e27b3a58ce9417eef47b51c5d7b6473ee4d1d56c72c772617bdfa35388231471d10e1333f086d73', '175acc0fd7c114928bfb57cfa4ee107c1da59ecd0fe6bab90901899c5e820395fa38f5a369c5250f', 0, '2019-08-05 19:38:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('04180694505af7a7fb9f1ea24756992399972fd92a7e17142c4c199d3690deafcb9713e7ec4795fb', '580096340d4905c47baae5967c2dacbf9686b40fd551a1cd2496e45ff943418846e6ce02aa575e1e', 0, '2019-08-05 19:42:31');
INSERT INTO `oauth_refresh_tokens` VALUES ('af8386d59e9ec10ca4b6c07b6000ddd9bd2af6be4d01faab32ce72dce5a59be565228d086ee26322', 'f86da700bdec695c6841f96a43acc4faeea12908548c0fd03dc1f570b5143111e5cafbd46aea4df7', 0, '2019-08-05 21:01:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('42a99becd899c316e40bee501b279188f4ef155314c549689c7d1201b33959dbcc0696f7b0dda65e', 'c61efba40ec31966f124b8dde423045b4eade0baeba9135f7a2d5a8db398df6545fdec62aad21bd8', 0, '2019-08-05 21:04:44');
INSERT INTO `oauth_refresh_tokens` VALUES ('7f1d78e3b043c7f906d06de5816c4832ee3e6221a96a2219bf6f408f910c1fc5b9f3545497ce4132', 'b0b691233336e01d41e6201e36be060df62347424652f19a37a782f5f4e7597a41a99ae1a86a4677', 0, '2019-08-05 21:18:26');
INSERT INTO `oauth_refresh_tokens` VALUES ('b55fa3c48368bc0c3e7efa100bb28d6d6a5baf4ac85438cdb799e6e1435bad6c0138034b6f3ce2e2', '3d0eb3e6813a69cbb84739c1750007ee60e5efbdc9b845a89d1ebaf71d232a03797af11acac277eb', 0, '2019-08-05 21:52:03');
INSERT INTO `oauth_refresh_tokens` VALUES ('5d4ba5cbcfd080ecf55fae87d54e68fabdae4b6430ca6d162b9b1512f558a4a7846ea842ff808e23', '1ae5b750eeb2e69bbf1c509c99237b92ffda372d7ee8639386a1015d27fde0f5d8f8af3579128fbf', 0, '2019-08-05 21:55:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('ffd4e2e244e4253a8ac52a193ac28f6d8de1c0a0ecdf8be78c0afdaa2a595633892c801ed36429b0', 'c04899001de6b525f43bdaeede297cc9223c56933d4128ba1cd98098fdc3984a3142cfaca03c74f5', 0, '2019-12-05 10:10:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('91922e7fc67c01a8913f5aaad27081a0952a62658a686ef2dfbf8a44595ddd39e9ebb97f56117e43', '67daabd2bd41469a3a341c203406c3392e2d213d4b8850a4cb4063273e15fa7406a3d447c0dd9fc9', 0, '2019-12-05 10:14:32');
INSERT INTO `oauth_refresh_tokens` VALUES ('808d2fd7eb11ddddbf5c41281022977a5e3c72b281cd4e401dc321ee4e77299cd50567a7fefb15e5', 'a5a08f651c72e0f1d7dcbca84787bfaea17be32c6cbd6f544684369eed59963e23b502182617978d', 0, '2019-12-05 11:23:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('e2338ed2da051b915d4d709a21f6fa984f4e24bc77749a99cafb5fae3c69fa070341e24a17dca19c', '1fcae3c8f89d97b695dde926317057da4e10ba7c3b95bb01441730b90201549c2dde2b0767bc40a7', 0, '2019-12-05 11:24:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('5294f19fb2c84073790f0e453eaa0f815bebae96534ae4db13bb74ac85fb9587475c3bb1e322d3f5', 'fdbf4421638490c66eaf8f443b7f11dfc245b89926ccf77dad985cad8ad2c89a65a4309039fc7cff', 0, '2019-12-05 11:30:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('2c0bd27ce867e30069d41d6093bb8c48ccc0f5ecc70152abcf191159398abc47e61c6155086c4dbf', '9e30f297109ff8538f83c1f09bb99f607b554aba41f3d6d3bfaca6d0018b5a0f52740363b521d8fd', 0, '2019-12-05 15:20:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('c403a4db55f255c0f3ed6f8c871acab1e07d9c0399c129febd8e5e401a8d58016c31612561528eb2', '67e4b03aadb1a315d4f298151a023585fb280151207708bb58074064e2198e13e0b933292a9e8bb6', 0, '2019-12-05 15:21:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('714fd5b96c3264fbc2538e04dbfd898f018ac9462f44898996ea21dae5391a135d4f8a2c40d0efba', '6f40624d13cfcdffe0286552bf9ac25bf42030ac21bbaf2ba6ec3a2e44d563754b8705071b172067', 0, '2019-12-05 15:22:59');
INSERT INTO `oauth_refresh_tokens` VALUES ('f08fb3e0a95580cfd7cc5912ce2e1270ea68d98b64c3036219d9fd939603c6d1dc21a4173ace5b06', 'e6293c7392ad55655eed7fcd572010d9c553aabfd6a17eb87c8e0451d3fde8642816c0a0bd572390', 0, '2019-12-06 13:52:23');
INSERT INTO `oauth_refresh_tokens` VALUES ('633b734d4bf5768576c3afdfadfb9bbcc185b5cbe3dd817d682ac378f7d96b873970a153c2454626', '5640e55fcd2e1876fb46b50b445b8766e851368069767d6a2d801ba27469b9561bef059f89909191', 0, '2019-12-06 13:53:42');
INSERT INTO `oauth_refresh_tokens` VALUES ('d5480330f89d28d61ff1f9f918af8ee9a72b895482544a745c0148deb283395b183490dfa620e7ef', '3993fc1d81c9d21f90e103fabd3a287788c8d8512d6cb60b2109ca37c1cfc2ae874922aca66dd754', 0, '2019-12-06 13:54:24');
INSERT INTO `oauth_refresh_tokens` VALUES ('683fcbea860ada409511850f5ade1967993d6ec3b73f88fe9c738259f05da2b1c6585c38fe10b3fd', '60c4f4df6c232151fa94287130a04ca0e0f5c28679ec64277f8622bc8409baf2e89fbafba1944383', 0, '2019-12-08 09:00:49');
INSERT INTO `oauth_refresh_tokens` VALUES ('2246d6ce83edd160e8c5c999822cef967275d0c8790847e831faecd4850f014c68b3eb217a47fafb', '58708ab54bc012f7d539b762a13720d9abcc7670250d2811af6d436ba3bda44a9b610bec70b3abd8', 0, '2019-12-08 09:47:46');
INSERT INTO `oauth_refresh_tokens` VALUES ('4c0857964a10a32834e8f845902e2d68a189fe9f215d80d0a72c650a6008e5ae552f629ae5b4a55b', 'fd1a17c21f9be72a9e21430fd0afd84fea01cb8e1481853da8c35a79691c0c29de3362c01dd2fe23', 0, '2019-12-09 17:48:30');
INSERT INTO `oauth_refresh_tokens` VALUES ('e950853dbc29b65b4b26555ede136eed316ac83ae35c2cf605d6a9ae27dd2f27ce50610e413ec999', 'a31f32f4cf0868180a80c4cb306aaccb24b51aee5e0af5289a231ee9760313dc0d77237a3f83d726', 0, '2019-12-09 20:17:33');
INSERT INTO `oauth_refresh_tokens` VALUES ('9bfee9142ed5f68083bf126dc2fa6d47b629915222dd91b4b2ddb636e53b81860fd03a88afc8ab80', '6734dfb4dd8b66339810599838b9c43a83dd81b3dadbbb1f8306d6df739d3838df97b3773af9e64e', 0, '2019-12-09 20:21:34');
INSERT INTO `oauth_refresh_tokens` VALUES ('e126750e2b8effe5f74111f82c5a6e59ea95d1b3bb2eedf8127b4b272599d42b0134983d89a5755b', '3aaba4bfe523d26a70188f535bb372997e18397a73335b1d9fb9ac5355b0bf3c61799dc14ec2e92e', 0, '2019-12-16 13:27:55');
INSERT INTO `oauth_refresh_tokens` VALUES ('3c7949f25b62e1d6ae32a6737588a58c02159de8bc96f8d2989b892a637c775de814786e7b48a75a', 'eeac0c78585a1b7716f5380b20caf5b5ff8cf41cc380bf4bd2d02b168c52ae1448dee0fc6e91631d', 0, '2019-12-23 14:08:44');
INSERT INTO `oauth_refresh_tokens` VALUES ('fc709055e2c28c0ec772edc9e6862ea91cf611affcaad8b3a21cb74cdbf80599adce60cd00bda80c', '70813b9ba6ff9c5ef39432c02604af37c065ea4fed39aa6562115ec0169d710840608bfb3fe4f804', 0, '2019-12-25 09:59:17');
INSERT INTO `oauth_refresh_tokens` VALUES ('55167b0ddcd6688b19ca8ec21d33649d22ff2d6346828f999b7665fafc1e4cdb5c40c29574c8de81', '9982252446782e349f6e672469303760354fafcd79430354f6a176115c296a8dc5f02f245c42a86d', 0, '2019-12-26 20:15:09');
INSERT INTO `oauth_refresh_tokens` VALUES ('e9360cfb1cf2a47505ac8b0cf99603239fab03b3c22b1965a7a4a02461190e3497fb9f9244733590', 'c8a56fa425913ce851fbc303120e336661065692cf922309d70c067cdf0b392b0edaaa3017addafb', 0, '2019-12-26 20:25:58');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
