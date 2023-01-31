/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : carrentalsystem

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 04/10/2022 10:30:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `USER_NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ADMIN_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`USER_NAME`) USING BTREE,
  CONSTRAINT `fk_1` FOREIGN KEY (`USER_NAME`) REFERENCES `login` (`USER_NAME`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a111', '柏忠林', '452231198807048839', '993');
INSERT INTO `admin` VALUES ('a123', '戴桥林', '513101198408222899', '978');
INSERT INTO `admin` VALUES ('a222', '苏采灵', '440000199307302728', '3');
INSERT INTO `admin` VALUES ('a333', '陈贺祥', '320501200604146815', '964');
INSERT INTO `admin` VALUES ('a444', '潘亦菲', '533523199208177358', '971');
INSERT INTO `admin` VALUES ('a555', '钱淼', '520330198606133055', '961');

-- ----------------------------
-- Table structure for hirer_of_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `hirer_of_vehicle`;
CREATE TABLE `hirer_of_vehicle`  (
  `USER_NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SEX` int(0) NOT NULL,
  `ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CREDIT` int(0) NOT NULL,
  `FREQUENCY` int(0) NOT NULL,
  `EMAIL` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `TEL` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`USER_NAME`) USING BTREE,
  CONSTRAINT `fk_2` FOREIGN KEY (`USER_NAME`) REFERENCES `login` (`USER_NAME`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hirer_of_vehicle
-- ----------------------------
INSERT INTO `hirer_of_vehicle` VALUES ('a111', '郝宛桃', 0, '431129198009050844', 100, 0, 'aconlon25@state.tx.us', '13714579418');
INSERT INTO `hirer_of_vehicle` VALUES ('b111', '苗芷巧', 1, '342900200612254024', 100, 0, 'akenright3b@bizjournals.com', '13731657319');
INSERT INTO `hirer_of_vehicle` VALUES ('b123', '谢文轩', 1, '330900199208051517', 60, 6, 'aalmack37@meetup.com', '17147905627');
INSERT INTO `hirer_of_vehicle` VALUES ('b222', '伍雨泽', 1, '22068119870503789X', 100, 0, 'apendell38@bing.com', '18716918549');
INSERT INTO `hirer_of_vehicle` VALUES ('b333', '穆静露', 1, '230921201004116460', 100, 0, 'aprinne14@bing.com', '13858964789');
INSERT INTO `hirer_of_vehicle` VALUES ('b444', '黄乐巧', 1, '410711199512279805', 100, 0, 'aredmain2g@google.ca', '17046700047');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `USER_NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PASSWORD` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `LAST_TIME` datetime(0) NULL DEFAULT NULL,
  `TIMES` int(0) NOT NULL,
  `STATE` int(0) NOT NULL,
  `REGISTER_TIME` datetime(0) NOT NULL,
  `USER_TYPE` int(0) NOT NULL,
  PRIMARY KEY (`USER_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('a111', 'bbbb', '2022-07-02 10:03:01', 2, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('a123', 'bbbb', '2022-10-04 08:55:01', 50, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('a222', 'bbbb', '2021-09-29 15:44:54', 2, 1, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('a333', 'bbbb', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('a444', 'bbbb', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('a555', 'bbbb', '2022-07-02 10:03:55', 2, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('b111', 'aaaa', '2022-07-02 10:20:13', 3, 1, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('b123', 'aaaa', '2022-09-24 11:12:07', 79, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('b222', 'aaaa', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('b333', 'aaaa', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('b444', 'aaaa', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('b555', 'aaaa', '2022-07-02 10:01:59', 2, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('c111', 'cccc', '2022-09-24 11:12:19', 41, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('c123', 'cccc', '2022-07-02 10:04:08', 2, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('c222', 'cccc', '2021-09-13 22:25:41', 1, 0, '2021-09-12 22:25:56', 0);
INSERT INTO `login` VALUES ('c333', 'cccc', '2021-09-17 20:07:46', 1, 0, '2021-09-17 12:09:47', 0);
INSERT INTO `login` VALUES ('c444', 'cccc', '2021-09-17 20:07:46', 1, 0, '2021-09-17 12:09:47', 0);
INSERT INTO `login` VALUES ('c555', 'cccc', '2022-07-02 10:04:57', 2, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('dnewlandsc7', 'bb3602e1b24b562456fe0ed7937fb93a', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('douanbai', '12889c2db0b7f018270671c9935b4952', '2021-09-13 22:25:41', 1, 0, '2021-09-12 22:25:56', 0);
INSERT INTO `login` VALUES ('dpugheaz', '2434f0a01297009fd084066b79684514', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('edudbridge2e', 'c764f79980cfa0dc62bd640a4fc3b8fc', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('eflew2u', '8035cc17f4d84beff596614bccd34259', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('ekerrichbv', '331c0226ce71a97026d8ab0f20f92a8b', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('emorlingb7', '43d40a5b5805e5c5530fe8b51132ff54', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('erawstornecq', 'dff8992652bfae6a2dbf72327c4d2be2', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('glaubx', '3dbc5e81738af4932f9be56d6c15a5a7', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('glefridgec4', '8035cc17f4d84beff596614bccd34259', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('gmccriebw', '5d11ff935b0848ff0d6068dcb9334c7f', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('gpettko13', '8b52680a2138c4ca6fad86cd40959efc', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('gsyne5', '80159ce9a961ef8b344abdffc97249cb', '2021-09-17 20:07:46', 1, 0, '2021-09-17 12:09:47', 0);
INSERT INTO `login` VALUES ('gtaggerty2m', 'eec3fac079b97eacc1701a47f4c144d4', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('hsichc8', '3f8f8da10e1f35b1fada90c58a8c74c0', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('huashuhua', '7764aca363de76d30794b35edd681e44', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('huaxinxin', 'a3096bcf04af06c43bf1988cb956ccd7', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('huayuanchun', '3f20d7bb184c33967afc1f9fded3771d', '2021-10-06 10:03:47', 4, 1, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('idennettg', 'd6ac6ffab33d7b2a836ad6c397d683d7', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('ijarmynv', 'd6ac6ffab33d7b2a836ad6c397d683d7', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('jbrothwoodbf', 'f14a46973228285f191b47575b6574b6', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('jdauncey10', 'f2b0b7fd0cf783398b596db620a9bb97', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('jdrejercb', '2a3b4e1ae71bab713fadc6d752cb9b33', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('jgiller1p', '89739feb01b0d008e913ce2dfeba2382', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('jiangyixuan', 'd19cf6d833d339054c1235bbf49f8e9e', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('jkienleu', '7e06614ae28c08c18160a2c3bc51af89', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('jkonneke32', '184003850086273d881dc221905d898b', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('jlongford1q', '5e1dd075c212886f4c8bb8db9d120590', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('jstraceyc0', 'e381cd4f2160a44d2a503cd8e187d943', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('kbrunet1j', '4bb697d8981fd0c2c979781a3cc36132', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('kcamois2t', 'a8c0fd0fdc603bca382f363bd15294b4', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('kjuleffc3', 'ccbdc4d3b43a6792d83bf5113071dc6a', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('kmckennanal', 'c34805026a315456ec49eb661d3c36ca', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('kongxihan', 'e0f119d6b7a55e21da58cc648438191d', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('kongxihan2', '04676ac1e20ee2a4b5de5fd582ecd006', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('kreims2k', '51bfe8ed88a382ae074965b1e7ccd47b', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('kspinozzibr', 'bbcd3d96a8624c37737695141449cace', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('ldibdencr', '4fd9eecb3b4f82946e39564764036e1c', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('leiyanxue', '79241e2ce49e3e70adb380fafe8a79ab', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('lfossickb6', '683fec7b6551a22e9abd54767c0b4f10', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('lheighway2s', '84320faadeb889529209c944f0139709', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('lifuzi', 'ce27b804107c397e5b0a112d1be079c5', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('lihanxiang', '2aff188c988355c41215451a23db056b', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('liujiayi', '56665307e0c2609f0236dc2faf821710', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('ljedrzejewskyi', '41f7be8f8b61864d0277d91c2419dd29', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('llemarchantce', '6e683874369a695acc7196711970820e', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('lmayston36', 'e25a62499fece7d606a157528cd8eda8', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('lmoffet12', '6c8bd96777d752ab05a63e4c75f217d4', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('lstrephan1d', 'd6ac6ffab33d7b2a836ad6c397d683d7', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('luchunmei', 'c2e181e1e5501375e01716958e99334c', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('luchunmei2', 'e482810b1c0a52e45b87c37c582c5274', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('luxiangman', 'f52c1d191ab88d153d7fc817deae50f2', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('lwakelambo', '55b08765928d14bd22cf69129835fabd', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('mcasarini1m', '84320faadeb889529209c944f0139709', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('mcodringtonc5', '70e349766142c6ade5fecdbc2904bd7a', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('mcosgreavebq', 'd6ac6ffab33d7b2a836ad6c397d683d7', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('mdanahar2d', 'e08e7e214d93ab2522b41f53cc567d57', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('mdowreyp', '8035cc17f4d84beff596614bccd34259', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('mengjiale', '0e225dc00b5731fe65922c2651ff6b03', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('mgaddiebz', 'f8185b547fd5e1347ba692264cc6206f', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('miaorunli', '184003850086273d881dc221905d898b', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('miaorunli2', 'bb3602e1b24b562456fe0ed7937fb93a', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('mmariabj', 'e016b19cfe1b883ca780f0c064f786f0', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('moverillc6', 'cb073f9b5219bb389bfd3bbb9defa87b', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('mpashenco', 'e482810b1c0a52e45b87c37c582c5274', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('mpersickear', 'd1d3e187ec76906a4ea4a94d763fdc34', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('mpopplewell26', 'ac68e716fa8881647c45c7de524ac129', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('msalvatib8', '14afba93bfcfc049fe9aff39d3cd62fa', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('msheals2h', 'd3c9dcdfb6b898ebd63314059f3f35e5', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('msqueers21', '8f7c651c4949723bdaa6f3cb9cec8b51', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('mstaniford2j', '5d11ff935b0848ff0d6068dcb9334c7f', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('mstern2a', 'f8185b547fd5e1347ba692264cc6206f', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('mthurlbeckbs', '776046cae7bd453c6bedc5e0088f3110', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('mujinglu', 'd6ac6ffab33d7b2a836ad6c397d683d7', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('mwaistall1l', '8f96939f20868e4058e9b192eb31f177', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('ncromwellap', '89739feb01b0d008e913ce2dfeba2382', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('nmushawey', 'a3c85f34807489a053e632c72a16ef42', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('nrizzolo1o', '12889c2db0b7f018270671c9935b4952', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('obeardsellc1', '8b52680a2138c4ca6fad86cd40959efc', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('oberardtt', '489c46e1747c3cc825bc36f7b807ef84', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('ohaggithz', 'cb073f9b5219bb389bfd3bbb9defa87b', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('olefley9', 'dff8992652bfae6a2dbf72327c4d2be2', '2021-09-17 20:07:46', 1, 0, '2021-09-17 12:09:47', 0);
INSERT INTO `login` VALUES ('omccraineaq', '59a4204f7b8b560d87e7a0fc9bf8a023', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('panqiuyan', 'b00e64a9bdf7f28833b8ea42c1732d01', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('panyifei', '299c8f8e6e1820e138962f6314c8f069', '2021-09-13 22:29:34', 1, 0, '2021-09-12 22:30:09', 2);
INSERT INTO `login` VALUES ('pblakden6', '2891c5d029fe5d5bb585c3e644c0a235', '2021-09-17 20:07:46', 1, 0, '2021-09-17 12:09:47', 0);
INSERT INTO `login` VALUES ('penghanhan', '43d40a5b5805e5c5530fe8b51132ff54', '2021-09-13 22:27:28', 1, 0, '2021-09-12 22:28:08', 1);
INSERT INTO `login` VALUES ('ppietrowskibh', 'aa5c7d0c52b6588681b9354d50284ae4', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('qtesimonam', '8f7c651c4949723bdaa6f3cb9cec8b51', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('rblundellcs', 'a80c09992ca5d9d22e3afe4c17efdb38', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('rchoulesax', '81e45d4669a98d19402fb5bfd3f254c0', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('rdach1', 'a5251bc3dd3ffd1cc904fedbf42f7fb0', '2021-09-17 20:07:46', 1, 0, '2021-09-17 12:09:47', 0);
INSERT INTO `login` VALUES ('rgavozzib3', '43e19977c2774bffb10a1e9d10ccd102', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('rivanilovb9', '12889c2db0b7f018270671c9935b4952', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('rjoanicb0', '6c8bd96777d752ab05a63e4c75f217d4', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('rklewicp', '624b081626fedfc33f00219f7faccdf6', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('rlewry1w', 'cb073f9b5219bb389bfd3bbb9defa87b', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('rmatchittc9', 'c34805026a315456ec49eb661d3c36ca', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('rmensler1s', '3dbc5e81738af4932f9be56d6c15a5a7', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('rspennock1y', 'd6ac6ffab33d7b2a836ad6c397d683d7', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('sbrightling17', '6ac22cc7801a819a949e51b46eb92714', '2021-09-16 20:16:35', 1, 0, '2021-09-15 21:17:29', 1);
INSERT INTO `login` VALUES ('schessumm', '70342688de9683ddb45fbf605e3baf96', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('sdivellbi', '1d92a363bf9975f4f6b14fbef3ee8be4', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('seppsonby', '8851bcdaf283c5d5eff88b357cb7b1a6', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('sfoynesas', '3b9e1e65ff24cd82930bc465a12d2627', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('sgringleyc', '184003850086273d881dc221905d898b', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('shimilv', 'e0f119d6b7a55e21da58cc648438191d', '2021-09-13 22:27:28', 1, 0, '2021-09-12 22:28:08', 1);
INSERT INTO `login` VALUES ('sineson8', '505c0b2a9e7b197645aceb9bfbb2c69e', '2021-09-17 20:07:46', 1, 0, '2021-09-17 12:09:47', 0);
INSERT INTO `login` VALUES ('skintishl', '306141cb3e8bd58a135823b6cdb330a9', '2021-09-25 12:08:03', 1, 0, '2021-09-25 06:09:03', 0);
INSERT INTO `login` VALUES ('slouyscg', 'c03766afb055baa755b5153bd0080811', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('smongin4', 'ff6fb5f032c5878cea5ae9385a11c3c7', '2021-09-17 20:07:46', 1, 0, '2021-09-17 12:09:47', 0);
INSERT INTO `login` VALUES ('smurgatroydbm', '184003850086273d881dc221905d898b', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);
INSERT INTO `login` VALUES ('spears7', 'a65e32a59aba899818567ee76c70f9af', '2021-09-17 20:07:46', 1, 0, '2021-09-17 12:09:47', 0);
INSERT INTO `login` VALUES ('spiffcn', '505c0b2a9e7b197645aceb9bfbb2c69e', '2021-09-23 20:35:00', 1, 0, '2021-09-22 20:35:55', 2);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `MESSAGE_ID` int(0) NOT NULL AUTO_INCREMENT,
  `SEND_NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RECEIVE_NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DETAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SEND_TIME` datetime(0) NOT NULL,
  `STATUS` int(0) NOT NULL,
  PRIMARY KEY (`MESSAGE_ID`) USING BTREE,
  INDEX `fk_5`(`SEND_NAME`) USING BTREE,
  INDEX `fk_5_2`(`RECEIVE_NAME`) USING BTREE,
  CONSTRAINT `fk_5` FOREIGN KEY (`SEND_NAME`) REFERENCES `login` (`USER_NAME`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_5_2` FOREIGN KEY (`RECEIVE_NAME`) REFERENCES `login` (`USER_NAME`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (23, 'b123', 'a123', '分为废弃物', '2022-08-29 18:21:13', 1);
INSERT INTO `message` VALUES (24, 'b123', 'a123', 'v的深V方式vs', '2022-08-29 20:08:33', 0);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `ORDER_ID` int(0) NOT NULL AUTO_INCREMENT,
  `OWNER_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `HIRER_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `START_TIME` datetime(0) NULL DEFAULT NULL,
  `END_TIME` datetime(0) NULL DEFAULT NULL,
  `VEHICLE_TYPE` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STATUS` int(0) NOT NULL,
  `AMOUNT` double NULL DEFAULT NULL,
  `VEHICLE_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `VEHICLE_BRAND` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ORDER_ID`) USING BTREE,
  INDEX `fk_4_1`(`OWNER_NAME`) USING BTREE,
  INDEX `fk_4_2`(`HIRER_NAME`) USING BTREE,
  CONSTRAINT `fk_4_1` FOREIGN KEY (`OWNER_NAME`) REFERENCES `login` (`USER_NAME`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_4_2` FOREIGN KEY (`HIRER_NAME`) REFERENCES `login` (`USER_NAME`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (14, 'huayuanchun', 'b123', NULL, NULL, 'S1000RR', 3, NULL, '京A·0431B', '宝马');
INSERT INTO `orders` VALUES (15, 'huayuanchun', 'b123', '2021-09-28 20:13:20', '2021-09-29 20:17:50', 'S1000RR', 3, 960, '京A·0431B', '宝马');
INSERT INTO `orders` VALUES (16, 'huayuanchun', 'b123', NULL, NULL, 'S1000RR', 3, NULL, '京A·0431B', '宝马');
INSERT INTO `orders` VALUES (17, 'huayuanchun', 'b123', '2021-10-06 10:03:54', '2022-08-12 21:36:22', '卡罗拉', 2, 6616488, '京A·0431B', '宝马');
INSERT INTO `orders` VALUES (18, 'b555', 'b123', NULL, NULL, '川崎zx10rr', 3, NULL, '京A·06426', '川崎');
INSERT INTO `orders` VALUES (19, 'b555', 'b123', NULL, NULL, '川崎zx10rr', 0, NULL, '京A·06426', '川崎');

-- ----------------------------
-- Table structure for owner_of_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `owner_of_vehicle`;
CREATE TABLE `owner_of_vehicle`  (
  `USER_NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SEX` int(0) NOT NULL,
  `ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CREDIT` int(0) NOT NULL,
  `FREQUENCY` int(0) NOT NULL,
  `TEL` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EMAIL` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `INCOME` double NOT NULL,
  PRIMARY KEY (`USER_NAME`) USING BTREE,
  CONSTRAINT `fk_3` FOREIGN KEY (`USER_NAME`) REFERENCES `login` (`USER_NAME`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of owner_of_vehicle
-- ----------------------------
INSERT INTO `owner_of_vehicle` VALUES ('a222', '唐语竹', 0, '522528199004027082', 60, 0, '17756300014', 'spapaminas8a@google.com.br', 0);
INSERT INTO `owner_of_vehicle` VALUES ('a333', '魏映卉', 1, '340304199208059986', 100, 0, '18717137523', 'kdruery99@xing.com', 500);
INSERT INTO `owner_of_vehicle` VALUES ('a444', '鲍平柏', 0, '230901197208180523', 100, 0, '13740759773', 'twhisson7y@soup.io', 0);
INSERT INTO `owner_of_vehicle` VALUES ('b333', '柏水琴', 1, '370830198412046921', 100, 0, '13562072272', 'oamberger78@tmall.com', 500);
INSERT INTO `owner_of_vehicle` VALUES ('b555', '赵子璇', 0, '130731199810224739', 100, 0, '18709875886', 'sholyland7h@apache.org', 1200);
INSERT INTO `owner_of_vehicle` VALUES ('c123', '邹文杰', 1, '452626198711046354', 100, 0, '18936131750', 'smadill94@archive.org', 500);

-- ----------------------------
-- Table structure for vehicle
-- ----------------------------
DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle`  (
  `VEHICLE_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `VEHICLE_TYPE` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OWNER_ID` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DURATION` int(0) NOT NULL,
  `STATUS` int(0) NOT NULL,
  `RENTAL_PRICE` double NOT NULL,
  `DEADLINE` datetime(0) NULL DEFAULT NULL,
  `LOCATION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `VEHICLE_BRAND` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`VEHICLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle
-- ----------------------------
INSERT INTO `vehicle` VALUES ('京A·0085B', '川崎h2', 'a222', 27, 2, 555, '2022-08-30 23:22:58', '云南省西双版纳傣族自治州勐腊县', '川崎');
INSERT INTO `vehicle` VALUES ('京A·012E2', '本田cbr1000rrr', 'a333', 3, 2, 666, '2022-08-30 23:22:58', '四川省攀枝花市东区', '本田');
INSERT INTO `vehicle` VALUES ('京A·01660', '雅马哈r1m', 'a444', 3, 2, 777, '2022-08-30 23:22:58', '福建省漳州市东山县', '雅马哈');
INSERT INTO `vehicle` VALUES ('京A·06426', '川崎zx10rr', 'b555', 3, 0, 999, '2022-08-30 23:22:58', '河北省保定市雄县', '川崎');
INSERT INTO `vehicle` VALUES ('京A·07B75', 'KTMRC8', 'c123', 2, 0, 888, '2022-08-30 23:22:58', '湖南省益阳市资阳区', 'KTM');
INSERT INTO `vehicle` VALUES ('京A·08CB6', '杜卡迪v4s', 'b111', 2, 0, 777, '2022-11-30 23:22:58', '山西省临汾地区蒲县', '杜卡迪');
INSERT INTO `vehicle` VALUES ('京A·0A428', '奥古斯塔F4rr', 'b222', 2, 0, 555, '2022-11-30 23:22:58', '河北省邯郸市永年县', '奥古斯特');
INSERT INTO `vehicle` VALUES ('京A·0B9D2', '宝马s1000rr', 'b123', 2, 0, 666, '2022-11-30 23:22:58', '河北省沧州市', '宝马');
INSERT INTO `vehicle` VALUES ('京A·0BCB8', 'KTM超级公爵', 'c111', 6, 0, 777, '2022-11-30 23:22:58', '重庆市潼南县', 'KTM');
INSERT INTO `vehicle` VALUES ('京A·0C433', '本田佛沙750', 'c123', 6, 0, 888, '2022-11-30 23:22:58', '辽宁省丹东市振兴区', '本田');
INSERT INTO `vehicle` VALUES ('京A·0D2DB', '本田cb1300', 'c222', 6, 0, 999, '2022-11-30 23:22:58', '吉林省四平市市辖区', '本田');
INSERT INTO `vehicle` VALUES ('京A·0D578', '哈雷肥仔', 'luxiangman', 6, 0, 888, '2022-11-30 23:22:58', '贵州省贵阳市白云区', '哈雷');
INSERT INTO `vehicle` VALUES ('京A·0D8B3', '宝马水鸟', 'mengjiale', 6, 0, 777, '2022-11-30 23:22:58', '江西省萍乡市上栗县', '宝马');
INSERT INTO `vehicle` VALUES ('京A·0DDBF', '本田金翼', 'miaorunli', 6, 0, 666, '2022-11-30 23:22:58', '广东省湛江市麻章区', '本田');
INSERT INTO `vehicle` VALUES ('京A·0EC49', '春风450sr', 'miaorunli2', 24, 0, 555, '2022-11-30 23:22:58', '广东省阳江市阳东县', '春风');
INSERT INTO `vehicle` VALUES ('京A·0EEE3', '春风250sr', 'mujinglu', 24, 0, 444, '2022-11-30 23:22:58', '湖北省黄石市', '春风');
INSERT INTO `vehicle` VALUES ('京A·0F700', '贝纳利TNT600', 'panqiuyan', 24, 2, 333, '2022-11-30 23:22:58', '四川省成都市锦江区', '贝纳利');
INSERT INTO `vehicle` VALUES ('京A·11C0C', '贝纳利TNT899', 'panyifei', 24, 0, 555, '2022-11-30 23:22:58', '新疆维吾尔族自治区巴音郭楞蒙古自治州', '贝纳利');
INSERT INTO `vehicle` VALUES ('湘A·0431B', '铃木gsxr1000r', 'b333', 14929, 1, 888, '2022-08-30 23:22:58', '山东省济南市平阴县', '铃木');
INSERT INTO `vehicle` VALUES ('湘L5595K', '宝马s1000rr', 'c111', 0, 2, 999, '2022-08-31 15:12:00', '530', '宝马');
INSERT INTO `vehicle` VALUES ('湘L·08EC2', '阿普利亚rsv4', 'leiyanxue', 2, 0, 666, '2022-11-30 23:22:58', '湖南省长沙市望城区', '阿普利亚');

SET FOREIGN_KEY_CHECKS = 1;
