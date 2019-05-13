/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : anni

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 06/05/2019 13:21:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for anni_bookmarks
-- ----------------------------
DROP TABLE IF EXISTS `anni_bookmarks`;
CREATE TABLE `anni_bookmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anniId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of anni_bookmarks
-- ----------------------------
BEGIN;
INSERT INTO `anni_bookmarks` VALUES (1, 1, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (2, 1, 2, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (3, 1, 3, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (4, 2, 2, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (5, 2, 3, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (6, 2, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (7, 3, 2, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (8, 3, 3, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (9, 3, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (10, 4, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (11, 4, 2, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (12, 4, 3, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (13, 4, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (14, 5, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (15, 5, 2, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (16, 5, 3, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (17, 6, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (18, 6, 3, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (19, 6, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (20, 7, 2, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (21, 7, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (22, 8, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (23, 9, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (24, 9, 2, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (25, 9, 3, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (26, 10, 3, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (27, 10, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (28, 11, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (29, 11, 3, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (30, 11, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (31, 12, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (32, 12, 2, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (33, 12, 3, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (34, 12, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (35, 13, 3, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (36, 13, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (37, 14, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (38, 14, 2, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (39, 14, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (40, 15, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (41, 15, 2, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (42, 15, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (43, 16, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (44, 16, 4, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (45, 17, 1, NULL, NULL);
INSERT INTO `anni_bookmarks` VALUES (46, 17, 2, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for anni_images
-- ----------------------------
DROP TABLE IF EXISTS `anni_images`;
CREATE TABLE `anni_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `anniId` int(11) DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of anni_images
-- ----------------------------
BEGIN;
INSERT INTO `anni_images` VALUES (1, NULL, 'xray-1.jpg', 1, NULL, NULL);
INSERT INTO `anni_images` VALUES (2, NULL, 'xray-2.jpg', 1, NULL, NULL);
INSERT INTO `anni_images` VALUES (3, NULL, 'xray-3.jpg', 1, '2019-05-06 11:34:14', NULL);
INSERT INTO `anni_images` VALUES (4, NULL, 'xray-4.jpg', 1, NULL, NULL);
INSERT INTO `anni_images` VALUES (5, NULL, 'simone-1.jpg', 2, NULL, NULL);
INSERT INTO `anni_images` VALUES (6, NULL, 'simone-2.jpg', 2, '2019-05-06 11:45:46', NULL);
INSERT INTO `anni_images` VALUES (7, NULL, 'simone-3.jpg', 2, NULL, NULL);
INSERT INTO `anni_images` VALUES (8, NULL, 'simone-4.jpg', 2, NULL, NULL);
INSERT INTO `anni_images` VALUES (9, NULL, 'simone-5.jpg', 2, NULL, NULL);
INSERT INTO `anni_images` VALUES (10, NULL, 'simone-6.jpg', 2, '2019-05-06 11:43:05', NULL);
INSERT INTO `anni_images` VALUES (11, NULL, 'martin-1.jpg', 3, '2019-05-06 11:45:54', NULL);
INSERT INTO `anni_images` VALUES (12, NULL, 'martin-2.jpg', 3, '2019-05-06 11:45:50', NULL);
INSERT INTO `anni_images` VALUES (13, NULL, 'martin-3.jpg', 3, '2019-05-06 11:45:57', NULL);
INSERT INTO `anni_images` VALUES (14, NULL, 'martin-4.jpg', 3, '2019-05-06 11:46:00', NULL);
INSERT INTO `anni_images` VALUES (15, NULL, 'martin-5.jpg', 3, '2019-05-06 11:46:06', NULL);
INSERT INTO `anni_images` VALUES (16, NULL, 'martin-6.jpg', 3, '2019-05-06 11:46:06', NULL);
INSERT INTO `anni_images` VALUES (17, NULL, 'un-1.jpg', 4, '2019-05-06 11:48:31', NULL);
INSERT INTO `anni_images` VALUES (18, NULL, 'un-2.jpg', 4, NULL, NULL);
INSERT INTO `anni_images` VALUES (19, NULL, 'un-3.jpg', 4, NULL, NULL);
INSERT INTO `anni_images` VALUES (20, NULL, 'un-4.jpg', 4, NULL, NULL);
INSERT INTO `anni_images` VALUES (21, NULL, 'un-5.jpg', 4, NULL, NULL);
INSERT INTO `anni_images` VALUES (22, NULL, 'un-6.jpg', 4, NULL, NULL);
INSERT INTO `anni_images` VALUES (24, '', 'sb-1.jpg', 5, NULL, NULL);
INSERT INTO `anni_images` VALUES (25, '', 'sb-2.jpg', 5, NULL, NULL);
INSERT INTO `anni_images` VALUES (26, '', 'sb-3.jpg', 5, NULL, NULL);
INSERT INTO `anni_images` VALUES (27, '', 'sb-4.jpg', 5, NULL, NULL);
INSERT INTO `anni_images` VALUES (28, '', 'sb-5.jpg', 5, NULL, NULL);
INSERT INTO `anni_images` VALUES (29, '', 'sb-6.jpg', 5, NULL, NULL);
INSERT INTO `anni_images` VALUES (30, '', 'val-1.jpg', 6, NULL, NULL);
INSERT INTO `anni_images` VALUES (31, '', 'val-2.jpg', 6, NULL, NULL);
INSERT INTO `anni_images` VALUES (32, '', 'val-3.jpg', 6, NULL, NULL);
INSERT INTO `anni_images` VALUES (33, '', 'val-4.jpg', 6, NULL, NULL);
INSERT INTO `anni_images` VALUES (34, '', 'val-5.jpg', 6, NULL, NULL);
INSERT INTO `anni_images` VALUES (35, '', 'val-6.jpg', 6, NULL, NULL);
INSERT INTO `anni_images` VALUES (36, '', 'iw-1.jpg', 7, NULL, NULL);
INSERT INTO `anni_images` VALUES (37, '', 'iw-2.jpg', 7, NULL, NULL);
INSERT INTO `anni_images` VALUES (38, '', 'iw-3.jpg', 7, NULL, NULL);
INSERT INTO `anni_images` VALUES (39, '', 'iw-4.jpg', 7, NULL, NULL);
INSERT INTO `anni_images` VALUES (40, '', 'iw-5.jpg', 7, NULL, NULL);
INSERT INTO `anni_images` VALUES (41, '', 'iw-6.jpg', 7, NULL, NULL);
INSERT INTO `anni_images` VALUES (42, '', 'earth-1.jpg', 8, NULL, NULL);
INSERT INTO `anni_images` VALUES (43, '', 'earth-2.jpg', 8, NULL, NULL);
INSERT INTO `anni_images` VALUES (44, '', 'earth-3.jpg', 8, NULL, NULL);
INSERT INTO `anni_images` VALUES (45, '', 'earth-4.jpg', 8, NULL, NULL);
INSERT INTO `anni_images` VALUES (46, '', 'earth-5.jpg', 8, NULL, NULL);
INSERT INTO `anni_images` VALUES (47, '', 'earth-6.jpg', 8, NULL, NULL);
INSERT INTO `anni_images` VALUES (48, '', 'gone-1.jpg', 9, NULL, NULL);
INSERT INTO `anni_images` VALUES (49, '', 'gone-2.jpg', 9, NULL, NULL);
INSERT INTO `anni_images` VALUES (50, '', 'gone-3.jpg', 9, NULL, NULL);
INSERT INTO `anni_images` VALUES (51, '', 'gone-4.jpg', 9, NULL, NULL);
INSERT INTO `anni_images` VALUES (52, '', 'gone-5.jpg', 9, NULL, NULL);
INSERT INTO `anni_images` VALUES (53, '', 'gone-6.jpg', 9, NULL, NULL);
INSERT INTO `anni_images` VALUES (54, '', 'hp-1.jpg', 10, NULL, NULL);
INSERT INTO `anni_images` VALUES (55, '', 'hp-2.jpg', 10, NULL, NULL);
INSERT INTO `anni_images` VALUES (56, '', 'hp-3.jpg', 10, NULL, NULL);
INSERT INTO `anni_images` VALUES (57, '', 'hp-4.jpg', 10, NULL, NULL);
INSERT INTO `anni_images` VALUES (58, '', 'hp-5.jpg', 10, NULL, NULL);
INSERT INTO `anni_images` VALUES (59, '', 'hp-6.jpg', 10, NULL, NULL);
INSERT INTO `anni_images` VALUES (60, '', 'dis-1.jpg', 11, NULL, NULL);
INSERT INTO `anni_images` VALUES (61, '', 'dis-2.jpg', 11, NULL, NULL);
INSERT INTO `anni_images` VALUES (62, '', 'dis-3.jpg', 11, NULL, NULL);
INSERT INTO `anni_images` VALUES (63, '', 'dis-4.jpg', 11, NULL, NULL);
INSERT INTO `anni_images` VALUES (64, '', 'dis-5.jpg', 11, NULL, NULL);
INSERT INTO `anni_images` VALUES (65, '', 'dis-6.jpg', 11, NULL, NULL);
INSERT INTO `anni_images` VALUES (66, '', 'emoji-1.jpg', 12, NULL, NULL);
INSERT INTO `anni_images` VALUES (67, '', 'emoji-2.jpg', 12, NULL, NULL);
INSERT INTO `anni_images` VALUES (68, '', 'emoji-3.jpg', 12, NULL, NULL);
INSERT INTO `anni_images` VALUES (69, '', 'emoji-4.jpg', 12, NULL, NULL);
INSERT INTO `anni_images` VALUES (70, '', 'emoji-5.jpg', 12, NULL, NULL);
INSERT INTO `anni_images` VALUES (71, '', 'emoji-6.jpg', 12, NULL, NULL);
INSERT INTO `anni_images` VALUES (72, '', 'dict-1.jpg', 13, NULL, NULL);
INSERT INTO `anni_images` VALUES (73, '', 'dict-2.jpg', 13, NULL, NULL);
INSERT INTO `anni_images` VALUES (74, '', 'dict-3.jpg', 13, NULL, NULL);
INSERT INTO `anni_images` VALUES (75, '', 'dict-4.jpg', 13, NULL, NULL);
INSERT INTO `anni_images` VALUES (76, '', 'dict-5.jpg', 13, NULL, NULL);
INSERT INTO `anni_images` VALUES (77, '', 'dict-6.jpg', 13, NULL, NULL);
INSERT INTO `anni_images` VALUES (78, '', 'cmu-1.jpg', 14, NULL, NULL);
INSERT INTO `anni_images` VALUES (79, '', 'cmu-2.jpg', 14, NULL, NULL);
INSERT INTO `anni_images` VALUES (80, '', 'cmu-3.jpg', 14, NULL, NULL);
INSERT INTO `anni_images` VALUES (81, '', 'cmu-4.jpg', 14, NULL, NULL);
INSERT INTO `anni_images` VALUES (82, '', 'cmu-5.jpg', 14, NULL, NULL);
INSERT INTO `anni_images` VALUES (83, '', 'cmu-6.jpg', 14, NULL, NULL);
INSERT INTO `anni_images` VALUES (84, '', 'how-1.jpg', 15, NULL, NULL);
INSERT INTO `anni_images` VALUES (85, '', 'how-2.jpg', 15, NULL, NULL);
INSERT INTO `anni_images` VALUES (86, '', 'how-3.jpg', 15, NULL, NULL);
INSERT INTO `anni_images` VALUES (87, '', 'how-4.jpg', 15, NULL, NULL);
INSERT INTO `anni_images` VALUES (88, '', 'how-5.jpg', 15, NULL, NULL);
INSERT INTO `anni_images` VALUES (89, '', 'how-6.jpg', 15, NULL, NULL);
INSERT INTO `anni_images` VALUES (90, '', 'flo-1.jpg', 16, NULL, NULL);
INSERT INTO `anni_images` VALUES (91, '', 'flo-2.jpg', 16, NULL, NULL);
INSERT INTO `anni_images` VALUES (92, '', 'flo-3.jpg', 16, NULL, NULL);
INSERT INTO `anni_images` VALUES (93, '', 'flo-4.jpg', 16, NULL, NULL);
INSERT INTO `anni_images` VALUES (94, '', 'flo-5.jpg', 16, NULL, NULL);
INSERT INTO `anni_images` VALUES (95, '', 'flo-6.jpg', 16, NULL, NULL);
INSERT INTO `anni_images` VALUES (96, '', 'ann-1.jpg', 17, NULL, NULL);
INSERT INTO `anni_images` VALUES (97, '', 'ann-2.jpg', 17, NULL, NULL);
INSERT INTO `anni_images` VALUES (98, '', 'ann-3.jpg', 17, NULL, NULL);
INSERT INTO `anni_images` VALUES (99, '', 'ann-4.jpg', 17, NULL, NULL);
INSERT INTO `anni_images` VALUES (100, '', 'ann-5.jpg', 17, NULL, NULL);
INSERT INTO `anni_images` VALUES (101, '', 'ann-6.jpg', 17, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for anni_likes
-- ----------------------------
DROP TABLE IF EXISTS `anni_likes`;
CREATE TABLE `anni_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anniId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of anni_likes
-- ----------------------------
BEGIN;
INSERT INTO `anni_likes` VALUES (2, 1, 2, NULL, NULL);
INSERT INTO `anni_likes` VALUES (3, 1, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (4, 1, 4, NULL, NULL);
INSERT INTO `anni_likes` VALUES (5, 2, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (6, 2, 2, NULL, NULL);
INSERT INTO `anni_likes` VALUES (7, 2, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (8, 3, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (9, 3, 2, NULL, NULL);
INSERT INTO `anni_likes` VALUES (10, 3, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (11, 3, 4, NULL, NULL);
INSERT INTO `anni_likes` VALUES (12, 4, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (13, 4, 2, NULL, NULL);
INSERT INTO `anni_likes` VALUES (14, 4, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (15, 4, 4, NULL, NULL);
INSERT INTO `anni_likes` VALUES (16, 5, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (17, 5, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (18, 5, 4, NULL, NULL);
INSERT INTO `anni_likes` VALUES (19, 6, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (20, 7, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (21, 7, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (22, 8, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (23, 8, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (24, 9, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (25, 9, 2, NULL, NULL);
INSERT INTO `anni_likes` VALUES (26, 9, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (27, 9, 4, NULL, NULL);
INSERT INTO `anni_likes` VALUES (28, 10, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (29, 10, 2, NULL, NULL);
INSERT INTO `anni_likes` VALUES (30, 10, 4, NULL, NULL);
INSERT INTO `anni_likes` VALUES (31, 11, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (32, 11, 2, NULL, NULL);
INSERT INTO `anni_likes` VALUES (33, 11, 4, NULL, NULL);
INSERT INTO `anni_likes` VALUES (34, 12, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (35, 12, 2, NULL, NULL);
INSERT INTO `anni_likes` VALUES (36, 12, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (37, 13, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (38, 13, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (39, 13, 4, NULL, NULL);
INSERT INTO `anni_likes` VALUES (40, 14, 4, NULL, NULL);
INSERT INTO `anni_likes` VALUES (41, 15, 2, NULL, NULL);
INSERT INTO `anni_likes` VALUES (42, 15, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (43, 15, 4, NULL, NULL);
INSERT INTO `anni_likes` VALUES (44, 16, 1, NULL, NULL);
INSERT INTO `anni_likes` VALUES (45, 16, 2, NULL, NULL);
INSERT INTO `anni_likes` VALUES (46, 16, 3, NULL, NULL);
INSERT INTO `anni_likes` VALUES (47, 16, 4, NULL, NULL);
INSERT INTO `anni_likes` VALUES (48, 17, 2, NULL, NULL);
INSERT INTO `anni_likes` VALUES (49, 17, 3, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for anni_marks
-- ----------------------------
DROP TABLE IF EXISTS `anni_marks`;
CREATE TABLE `anni_marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anniId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of anni_marks
-- ----------------------------
BEGIN;
INSERT INTO `anni_marks` VALUES (1, 1, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (2, 1, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (3, 1, 4, NULL, NULL);
INSERT INTO `anni_marks` VALUES (4, 2, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (5, 2, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (6, 2, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (7, 2, 4, NULL, NULL);
INSERT INTO `anni_marks` VALUES (8, 3, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (9, 3, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (10, 3, 4, NULL, NULL);
INSERT INTO `anni_marks` VALUES (11, 4, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (12, 4, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (13, 4, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (14, 5, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (15, 5, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (16, 5, 4, NULL, NULL);
INSERT INTO `anni_marks` VALUES (17, 6, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (18, 6, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (19, 7, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (20, 7, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (21, 7, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (22, 7, 4, NULL, NULL);
INSERT INTO `anni_marks` VALUES (23, 8, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (24, 8, 4, NULL, NULL);
INSERT INTO `anni_marks` VALUES (25, 9, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (26, 9, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (27, 10, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (28, 11, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (29, 11, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (30, 11, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (31, 12, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (32, 12, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (33, 12, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (34, 12, 4, NULL, NULL);
INSERT INTO `anni_marks` VALUES (35, 13, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (36, 13, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (37, 13, 4, NULL, NULL);
INSERT INTO `anni_marks` VALUES (38, 14, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (39, 14, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (40, 14, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (41, 14, 4, NULL, NULL);
INSERT INTO `anni_marks` VALUES (42, 15, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (43, 15, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (44, 15, 3, NULL, NULL);
INSERT INTO `anni_marks` VALUES (45, 16, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (46, 16, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (47, 17, 1, NULL, NULL);
INSERT INTO `anni_marks` VALUES (48, 17, 2, NULL, NULL);
INSERT INTO `anni_marks` VALUES (49, 17, 4, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for annis
-- ----------------------------
DROP TABLE IF EXISTS `annis`;
CREATE TABLE `annis` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(4097) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quote` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `year` int(4) DEFAULT '2019',
  `month` int(2) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `markType` int(2) DEFAULT '0',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of annis
-- ----------------------------
BEGIN;
INSERT INTO `annis` VALUES (1, 'Discovery of X-rays', '\"X-rays were discovered in 1895 by Wilhelm Conrad Roentgen (1845-1923) who was a Professor at Wuerzburg University in Germany. Working with a cathode-ray tube in his laboratory, Roentgen observed a fluorescent glow of crystals on a table near his tube. The tube that Roentgen was working with consisted of a glass envelope (bulb) with positive and negative electrodes encapsulated in it. The air in the tube was evacuated, and when a high voltage was applied, the tube produced a fluorescent glow. Roentgen shielded the tube with heavy black paper, and discovered a green colored fluorescent light generated by a material located a few feet away from the tube.\n\nHe concluded that a new type of ray was being emitted from the tube. This ray was capable of passing through the heavy paper covering and exciting the phosphorescent materials in the room. He found that the new ray could pass through most substances casting shadows of solid objects. Roentgen also discovered that the ray could pass through the tissue of humans, but not bones and metal objects. One of Roentgen\'s first experiments late in 1895 was a film of the hand of his wife, Bertha. It is interesting that the first use of X-rays were for an industrial (not medical) application, as Roentgen produced a radiograph of a set of weights in a box to show his colleagues.\n\nRoentgen\'s discovery was a scientific bombshell, and was received with extraordinary interest by both scientist and laymen. Scientists everywhere could duplicate his experiment because the cathode tube was very well known during this period. Many scientists dropped other lines of research to pursue the mysterious rays. Newspapers and magazines of the day provided the public with numerous stories, some true, others fanciful, about the properties of the newly discovered rays.\n\nPublic fancy was caught by this invisible ray with the ability to pass through solid matter, and, in conjunction with a photographic plate, provide a picture of bones and interior body parts. Scientific fancy was captured by the demonstration of a wavelength shorter than light. This generated new possibilities in physics, and for investigating the structure of matter. Much enthusiasm was generated about potential applications of rays as an aid in medicine and surgery. Within a month after the announcement of the discovery, several medical radiographs had been made in Europe and the United States, which were used by surgeons to guide them in their work. In June 1896, only 6 months after Roentgen announced his discovery, X-rays were being used by battlefield physicians to locate bullets in wounded soldiers.\"', 'There is much to do, and I\'m busy, very busy.', 1895, 1, 1, 1, 3, 0, 'xray-0.jpg', '2019-05-06 11:33:35', NULL);
INSERT INTO `annis` VALUES (2, 'Simone de Beauvoir\'s Birthday', '\"Simone De Beauvoir (9 January 1908 – 14 April 1986) had a significant influence on both feminist existentialism and feminist theory. She wrote novels, essays, biographies, autobiography and monographs on philosophy, politics, and social issues. She was known for her 1949 treatise The Second Sex, a detailed analysis of women\'s oppression and a foundational tract of contemporary feminism; and for her novels, including She Came to Stay and The Mandarins. She was also known for her lifelong relationship with French philosopher Jean-Paul Sartre.\n\nDe Beauvoir was one of the most preeminent French existentialist philosophers and writers. Working alongside other famous existentialists such as Jean-Paul Sartre, Albert Camus and Maurice Merleau-Ponty, de Beauvoir produced a rich corpus of writings including works on ethics, feminism, fiction, autobiography, and politics.\n\nDe Beauvoir\'s method incorporated various political and ethical dimensions. In The Ethics of Ambiguity, she developed an existentialist ethics that condemned the “spirit of seriousness” in which people too readily identify with certain abstractions at the expense of individual freedom and responsibility.  In The Second Sex, she produced an articulate attack on the fact that throughout history women have been relegated to a sphere of “immanence,” and the passive acceptance of roles assigned to them by society.  In The Mandarins, she fictionalized the struggles of existents trapped in ambiguous social and personal relationships at the closing of World War II.  The emphasis on freedom, responsibility, and ambiguity permeate all of her works and give voice to core themes of existentialist philosophy.\n\nHer philosophical approach is notably diverse. Her influences include French philosophy from Descartes to Bergson, the phenomenology of Edmund Husserl and Martin Heidegger, the historical materialism of Karl Marx and Friedrich Engels, and the idealism of Immanuel Kant and G. W. F Hegel. In addition to her philosophical pursuits, de Beauvoir was also an accomplished literary figure, and her novel, The Mandarins, received the prestigious Prix Goncourt award in 1954. Her most famous and influential philosophical work, The Second Sex (1949), heralded a feminist revolution and remains to this day a central text in the investigation of women\'s oppression and liberation.\n\n\n\n\"', 'Change your life today. Don\'t gamble on the future, act now, without delay.', 1908, 1, 9, 1, 1, 1, 'simone-0.jpg', '2019-05-06 11:38:40', NULL);
INSERT INTO `annis` VALUES (3, 'Martin Luther King\'s Birthday', '\"Martin Luther King (January 15, 1929 – April 4, 1968) became pastor of the Dexter Avenue Baptist Church in Montgomery, Alabama, 1954. Always a strong worker for civil rights for members of his race, King was, by this time, a member of the executive committee of the National Association for the Advancement of Colored People, the leading organization of its kind in the nation. He was ready, then, early in December, 1955, to accept the leadership of the first great Negro nonviolent demonstration of contemporary times in the United States, the bus boycott described by Gunnar Jahn in his presentation speech in honor of the laureate. The boycott lasted 382 days. On December 21, 1956, after the Supreme Court of the United States had declared unconstitutional the laws requiring segregation on buses, Negroes and whites rode the buses as equals. During these days of boycott, King was arrested, his home was bombed, he was subjected to personal abuse, but at the same time he emerged as a Negro leader of the first rank.\n\nIn 1957 he was elected president of the Southern Christian Leadership Conference, an organization formed to provide new leadership for the now burgeoning civil rights movement. The ideals for this organization he took from Christianity; its operational techniques from Gandhi. In the eleven-year period between 1957 and 1968, King traveled over six million miles and spoke over twenty-five hundred times, appearing wherever there was injustice, protest, and action; and meanwhile he wrote five books as well as numerous articles. In these years, he led a massive protest in Birmingham, Alabama, that caught the attention of the entire world, providing what he called a coalition of conscience. and inspiring his “Letter from a Birmingham Jail”, a manifesto of the Negro revolution; he planned the drives in Alabama for the registration of Negroes as voters; he directed the peaceful march on Washington, D.C., of 250,000 people to whom he delivered his address, “l Have a Dream”, he conferred with President John F. Kennedy and campaigned for President Lyndon B. Johnson; he was arrested upwards of twenty times and assaulted at least four times; he was awarded five honorary degrees; was named Man of the Year by Time magazine in 1963; and became not only the symbolic leader of American blacks but also a world figure.\n\nAt the age of thirty-five, Martin Luther King, Jr., was the youngest man to have received the Nobel Peace Prize. When notified of his selection, he announced that he would turn over the prize money of $54,123 to the furtherance of the civil rights movement.\n\nOn the evening of April 4, 1968, while standing on the balcony of his motel room in Memphis, Tennessee, where he was to lead a protest march in sympathy with striking garbage workers of that city, he was assassinated.\n\n\"', 'Darkness cannot drive out darkness; only light can do that. Hate cannot drive out hate; only love can do that.', 1969, 1, 15, 1, 1, 1, 'martin-0.jpg', '2019-05-06 11:44:19', NULL);
INSERT INTO `annis` VALUES (4, 'The First General Assembly of The United Nations', '\"The first General Assembly of the United Nations (10 January 1946), comprising 51 nations, convenes at Westminster Central Hall in London, England. One week later, the U.N. Security Council met for the first time and established its rules of procedure. Then, on January 24, the General Assembly adopted its first resolution, a measure calling for the peaceful uses of atomic energy and the elimination of atomic and other weapons of mass destruction.\n\nThe United Nations (UN) is an intergovernmental organization that was tasked to maintain international peace and security, develop friendly relations among nations, achieve international co-operation and be a centre for harmonizing the actions of nations. The headquarters of the UN is in Manhattan, New York City, and is subject to extraterritoriality. Further main offices are situated in Geneva, Nairobi, and Vienna. The organization is financed by assessed and voluntary contributions from its member states. Its objectives include maintaining international peace and security, protecting human rights, delivering humanitarian aid, promoting sustainable development and upholding international law. The UN is the largest, most familiar, most internationally represented and most powerful intergovernmental organization in the world. In 24 October 1945, at the end of World War II, the organization was established with the aim of preventing future wars. At its founding, the UN had 51 member states; there are now 193. The UN is the successor of the ineffective League of Nations.\n\nThe UN\'s mission to preserve world peace was complicated in its early decades during the Cold War between the United States and Soviet Union and their respective allies. Its missions have consisted primarily of unarmed military observers and lightly armed troops with primarily monitoring, reporting and confidence-building roles. The organization\'s membership grew significantly following widespread decolonization which started in the 1960s. Since then, 80 former colonies had gained independence, including 11 trust territories, which were monitored by the Trusteeship Council. By the 1970s its budget for economic and social development programmes far outstripped its spending on peacekeeping. After the end of the Cold War, the UN shifted and expanded its field operations, undertaking a wide variety of complex tasks.\n\nThe UN has six principal organs: the General Assembly; the Security Council; the Economic and Social Council; the Trusteeship Council; the International Court of Justice; and the UN Secretariat. The UN System agencies include the World Bank Group, the World Health Organization, the World Food Programme, UNESCO, and UNICEF. The UN\'s most prominent officer is the Secretary-General, an office held by Portuguese politician and diplomat António Guterres since 1 January 2017. Non-governmental organizations may be granted consultative status with ECOSOC and other agencies to participate in the UN\'s work.\"', NULL, 1946, 1, 10, 1, 6, 0, 'un-0.jpg', '2019-05-06 11:47:43', NULL);
INSERT INTO `annis` VALUES (5, 'Super Bowl Sunday', '\"Super Bowl Sunday is the day on which the Super Bowl, the National Football League (NFL)\'s annual championship game, is played. It is usually observed on the first Sunday in February and is sometimes referred to as an unofficial national holiday. The 53rd annual event, Super Bowl LIII, occurred on February 3, 2019. Festivities for Super Sunday typically involve groups of people gathering to watch the game. Both \"\"Super Sunday\"\" and \"\"Super Bowl Sunday\"\" are registered trademarks of the National Football League\n\nAlthough not an official holiday, Super Sunday is an occasion when many families and friends gather together to watch the game, including those who are not normally football fans. Although sports bars have historically been busy on Super Sunday in the past, it is becoming more common for people to watch the game from home. This is due in part to the increasing size of home televisions in the United States as well as the attempts of budget conscious consumers to save money.\n\nBecause watching the Super Bowl is so popular, stores are often empty during the game, particularly in the regions represented by the two teams playing in the Super Bowl, and water usage drops, with significant rises in use during halftime and after the game, as fans use the bathroom. Additionally, churches sometimes cancel afternoon or evening services on Super Sunday, hold football-themed charity drives, or deliver sermons designed to appeal to male members of the congregation.\n\nNFL executives have called for a three-day weekend in order to allow fans to celebrate the event, and there is thought to be a loss of productivity in the American work force on Monday after the event. The television network carrying the game (either CBS, Fox, or NBC) will usually devote the entire day\'s programming schedule to the game, with extended pregame shows, NFL Films retrospectives of the previous season, and special versions of the Sunday morning talk shows in the morning and afternoon hours leading into the game. Competing networks, due to the severe loss of viewers to the Super Bowl festivities, generally resort to low-cost counterprogramming measures like the Puppy Bowl.\"', '', 2019, 2, 3, 1, 5, 0, 'sb-0.jpg', '2019-05-06 11:50:55', NULL);
INSERT INTO `annis` VALUES (6, 'Valentine\'s Day', '\"Valentine\'s Day, also called Saint Valentine\'s Day or the Feast of Saint Valentine, is celebrated annually on February 14. It originated as a Western Christian feast day honoring one or two early saints named Valentinus. Valentine\'s Day is recognized as a significant cultural, religious, and commercial celebration of romance and romantic love in many regions around the world, although it is not a public holiday in any country.\n\nThere are numerous martyrdom stories associated with various Valentines connected to February 14, including a written account of Saint Valentine of Rome\'s imprisonment for performing weddings for soldiers who were forbidden to marry and for ministering to Christians persecuted under the Roman Empire. According to legend, Saint Valentine restored sight to the blind daughter of his judge, and he wrote her a letter signed \"\"Your Valentine\"\" as a farewell before his execution.\n\nThe Feast of Saint Valentine was established by Pope Gelasius I in AD 496 to be celebrated on February 14 in honour of the Christian martyr, Saint Valentine of Rome, who died on that date in AD 269. The day first became associated with romantic love within the circle of Geoffrey Chaucer in the 14th century, when the tradition of courtly love flourished. In 18th-century England, it grew into an occasion in which couples expressed their love for each other by presenting flowers, offering confectionery, and sending greeting cards (known as \"\"valentines\"\"). Valentine\'s Day symbols that are used today include the heart-shaped outline, doves, and the figure of the winged Cupid. Since the 19th century, handwritten valentines have given way to mass-produced greeting cards. In Europe, Saint Valentine\'s Keys are given to lovers \"\"as a romantic symbol and an invitation to unlock the giver\'s heart\"\", as well as to children to ward off epilepsy (called Saint Valentine\'s Malady).\n\nSaint Valentine\'s Day is an official feast day in the Anglican Communion and the Lutheran Church. Many parts of the Eastern Orthodox Church also celebrate Saint Valentine\'s Day on July 6 and July 30, the former date in honor of Roman presbyter Saint Valentine, and the latter date in honor of Hieromartyr Valentine, the Bishop of Interamna (modern Terni).\"', '', 2019, 2, 14, 1, 4, 0, 'val-0.jpg', '2019-05-06 12:01:04', NULL);
INSERT INTO `annis` VALUES (7, 'International Women\'s Day', '\"International Women\'s Day (IWD) is celebrated on March 8 every year. It is a focal point in the movement for women\'s rights.\n\nA New York textile factory caught on fire on 8 March 1908, with the owner trapping his female workers inside to prevent them from striking with other factory workers. He had been forcing them to work 10-hour days, making fabric of mauve and lilac color. 129 workers died in the fire. The colors of the fabric they were working on were chosen as the symbol of the international women\'s rights movement. \n\nAfter the Socialist Party of America organized a Women\'s Day on February 28, 1909, in New York. At the 1910 International Socialist Woman\'s Conference suggested German revolutionary Clara Zetkin proposed that 8 March be honored as a day annually in memory of working women. The day has been celebrated as International Women\'s Day or International Working Women\'s Day ever since. For women at that meeting, the day was about demanding the right to work without discrimination.After women gained suffrage in Soviet Russia in 1917, March 8 became a national holiday there. The day was then predominantly celebrated by the socialist movement and communist countries until it was adopted by the feminist movement in about 1967. The United Nations began celebrating the day in 1975.\"', '', 2019, 3, 8, 2, 4, 0, 'iw-0.jpg', '2019-05-06 12:01:16', NULL);
INSERT INTO `annis` VALUES (8, 'Earth Day', 'Earth Day is an annual event celebrated on April 22. Worldwide, various events are held to demonstrate support for environmental protection. First celebrated in 1970, Earth Day now includes events in more than 193 countries,which are now coordinated globally by the Earth Day Network. On Earth Day 2016, the landmark Paris Agreement was signed by the United States, China, and some 120 other countries.This signing satisfied a key requirement for the entry into force of the historic draft climate protection treaty adopted by consensus of the 195 nations present at the 2015 United Nations Climate Change Conference in Paris.', '', 2019, 4, 22, 2, 4, 0, 'earth-0.jpg', '2019-05-06 12:01:26', NULL);
INSERT INTO `annis` VALUES (9, 'Gone with the Wind Wins the Pulitzer Prize for Fiction', '\"Gone with the Wind is a novel by American writer Margaret Mitchell, first published in 1936. The story is set in Clayton County and Atlanta, both in Georgia, during the American Civil War and Reconstruction Era. It depicts the struggles of young Scarlett O\'Hara, the spoiled daughter of a well-to-do plantation owner, who must use every means at her disposal to claw her way out of poverty following Sherman\'s destructive \"\"March to the Sea\"\". This historical novel features a Bildungsroman or coming-of-age story, with the title taken from a poem written by Ernest Dowson.\n\nGone with the Wind was popular with American readers from the outset and was the top American fiction bestseller in 1936 and 1937. As of 2014, a Harris poll found it to be the second favorite book of American readers, just behind the Bible. More than 30 million copies have been printed worldwide.\n\nWritten from the perspective of the slaveholder, Gone with the Wind is Southern plantation fiction. Its portrayal of slavery and African Americans has been considered controversial, especially by succeeding generations, as well as its use of a racial epithet and ethnic slurs common to the period. However, the novel has become a reference point for subsequent writers of the South, both black and white. Scholars at American universities refer to, interpret, and study it in their writings. The novel has been absorbed into American popular culture.\n\nMitchell received the Pulitzer Prize for Fiction for the book in 1937. It was adapted into a 1939 American film. Gone with the Wind is the only novel by Mitchell published during her lifetime.\n\nMitchell used color symbolism, especially the colors red and green, which frequently are associated with Scarlett O\'Hara. Mitchell identified the primary theme as survival. She left the ending speculative for the reader. She was often asked what became of her lovers, Rhett and Scarlett. She replied, \"\"For all I know, Rhett may have found someone else who was less difficult.\"\" Two sequels authorized by Mitchell\'s estate were published more than a half century later. A parody was also produced.\"', '', 1937, 5, 3, 2, 3, 0, 'gone-0.jpg', '2019-05-06 12:01:34', NULL);
INSERT INTO `annis` VALUES (10, 'The Initial Publication of Harry Potter', '\"Harry Potter is a series of fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry\'s struggle against Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic, and subjugate all wizards and Muggles (non-magical people).\n\nSince the release of the first novel, Harry Potter and the Philosopher\'s Stone, on 26 June 1997, the books have found immense popularity, critical acclaim and commercial success worldwide. They have attracted a wide adult audience as well as younger readers and are often considered cornerstones of modern young adult literature. As of February 2018, the books have sold more than 500 million copies worldwide, making them the best-selling book series in history, and have been translated into eighty languages. The last four books consecutively set records as the fastest-selling books in history, with the final instalment selling roughly eleven million copies in the United States within twenty-four hours of its release.\"', '', 1997, 6, 26, 2, 3, 0, 'hp-0.jpg', '2019-05-06 12:01:43', NULL);
INSERT INTO `annis` VALUES (11, 'First Disneyland Opening', '\"Disneyland Park, originally Disneyland, is the first of two theme parks built at the Disneyland Resort in Anaheim, California, opened on July 17, 1955. It is the only theme park designed and built to completion under the direct supervision of Walt Disney. It was originally the only attraction on the property; its official name was changed to Disneyland Park to distinguish it from the expanding complex in the 1990s.\n\nWalt Disney came up with the concept of Disneyland after visiting various amusement parks with his daughters in the 1930s and 1940s. He initially envisioned building a tourist attraction adjacent to his studios in Burbank to entertain fans who wished to visit; however, he soon realized that the proposed site was too small. After hiring a consultant to help him determine an appropriate site for his project, Disney bought a 160-acre (65 ha) site near Anaheim in 1953. Construction began in 1954 and the park was unveiled during a special televised press event on the ABC Television Network on July 17, 1955.\n\nSince its opening, Disneyland has undergone expansions and major renovations, including the addition of New Orleans Square in 1966, Bear Country (now Critter Country) in 1972, and Mickey\'s Toontown in 1993. Star Wars: Galaxy\'s Edge is due to open in 2019. Opened in 2001, Disney California Adventure Park was built on the site of Disneyland\'s original parking lot.\n\nDisneyland has a larger cumulative attendance than any other theme park in the world, with 708 million visits since it opened (as of December 2017). In 2017, the park had approximately 18.3 million visits, making it the second most visited amusement park in the world that year, behind only Magic Kingdom.  According to a March 2005 Disney report, 65,700 jobs are supported by the Disneyland Resort, including about 20,000 direct Disney employees and 3,800 third-party employees (independent contractors or their employees). Disney Announced \"\"Project Stardust\"\" in 2019, which includes major structural renovations to the park to account for higher attendance numbers. Major renovations include widening Main Street, U.S.A. and changing the color scheme and forced perspective of Sleeping Beauty Castle.\"', '', 1955, 7, 17, 3, 6, 0, 'dis-0.jpg', '2019-05-06 12:01:48', NULL);
INSERT INTO `annis` VALUES (12, 'World Emoji Day', '\"Jeremy Burge created Emojipedia in 2013. He followed that up, by creating World Emoji Day in 2014.\nEmojis were first used in Japan in the late 1990s on mobile phones. They are fun to use. As a result, their popularity and use has grown exponentially. Today, you couldn\'t imagine a world without emojis.\n\nIn the last few years, major corporations have gotten into the act, creating an enormous assortment of emojis for us to use for almost any emotion or occasion. Retail outlets have also joined the fun. You can find emojis on all sorts of products, from stationery to T-shirts, to pillows.\n\nEmojis have their roots in the yellow smiley of the 1960s and 1970s.. Harvey Ball, a commercial artist from Worcester, Massachusetts created the smiley face in 1963. Harvey\'s smiley also gained world-wide popularity.\"', '', 2014, 7, 17, 3, 5, 0, 'emoji-0.jpg', '2019-05-06 12:01:53', NULL);
INSERT INTO `annis` VALUES (13, 'Dictionary Day', '\"Dictionary Day is in honor of Noah Webster, considered the Father of the American Dictionary. Noah Webster was born on October 16, 1758.\n\nThe objective of this day is to emphasize the importance of dictionary skills, and seeks to improve vocabulary.\n\nWebster began to write his dictionary at the age of 43. It took him 27 years to finish it! In addition to traditional English vocabulary, it contained uniquely American words.\"', '', 1758, 10, 16, 3, 5, 0, 'dict-0.jpg', '2019-05-06 12:01:58', NULL);
INSERT INTO `annis` VALUES (14, 'CMU Anniversary', '\"Carnegie Mellon University (CMU) is a private research university based in Pittsburgh, Pennsylvania. Founded in 1900 by Andrew Carnegie as the Carnegie Technical Schools, the university became the Carnegie Institute of Technology in 1912 and began granting four-year degrees. In 1967, the Carnegie Institute of Technology merged with the Mellon Institute of Industrial Research to form Carnegie Mellon University. With its main campus located 3 miles (5 km) from Downtown Pittsburgh, Carnegie Mellon has grown into an international university with over a dozen degree-granting locations in six continents, including campuses in Qatar and Silicon Valley, and more than 20 research partnerships.\n\nThe university has seven colleges and independent schools which all offer interdisciplinary programs: the College of Engineering, College of Fine Arts, Dietrich College of Humanities and Social Sciences, Mellon College of Science, Tepper School of Business, H. John Heinz III College of Information Systems and Public Policy, and the School of Computer Science.\n\nCarnegie Mellon counts 13,961 students from 109 countries, over 105,000 living alumni, and over 5,000 faculty and staff. Past and present faculty and alumni include 20 Nobel Prize laureates, 13 Turing Award winners, 23 Members of the American Academy of Arts and Sciences, 22 Fellows of the American Association for the Advancement of Science, 79 Members of the National Academies, 124 Emmy Award winners, 47 Tony Award laureates, and 10 Academy Award winners.\"', '', 1900, 11, 10, 3, 5, 0, 'cmu-0.jpg', '2019-05-06 12:02:03', NULL);
INSERT INTO `annis` VALUES (15, 'Howard Carter\'s Birthday', '\"Howard Carter (9 May 1874 – 2 March 1939) was a British archaeologist and Egyptologist who became world-famous after discovering the intact tomb (designated KV62) of the 18th Dynasty Pharaoh, Tutankhamun (colloquially known as \"\"King Tut\"\" and \"\"the boy king\"\"), in November 1922.\n\nAlthough only 17, Carter was innovative in improving the methods of copying tomb decoration. In 1892, he worked under the tutelage of Flinders Petrie for one season at Amarna, the capital founded by the pharaoh Akhenaten. From 1894 to 1899, he worked with Édouard Naville at Deir el-Bahari, where he recorded the wall reliefs in the temple of Hatshepsut.\n\nIn 1899, Carter was appointed to the position of Chief Inspector of the Egyptian Antiquities Service (EAS). He supervised a number of excavations at Thebes (now known as Luxor). In 1904, he was transferred to the Inspectorate of Lower Egypt. Carter was praised for his improvements in the protection of, and accessibility to, existing excavation sites, and his development of a grid-block system for searching for tombs. The Antiquities Service also provided funding for Carter to head his own excavation projects.\"\"Howard Carter (9 May 1874 – 2 March 1939) was a British archaeologist and Egyptologist who became world-famous after discovering the intact tomb (designated KV62) of the 18th Dynasty Pharaoh, Tutankhamun (colloquially known as \"\"King Tut\"\" and \"\"the boy king\"\"), in November 1922.\n\nAlthough only 17, Carter was innovative in improving the methods of copying tomb decoration. In 1892, he worked under the tutelage of Flinders Petrie for one season at Amarna, the capital founded by the pharaoh Akhenaten. From 1894 to 1899, he worked with Édouard Naville at Deir el-Bahari, where he recorded the wall reliefs in the temple of Hatshepsut.\n\nIn 1899, Carter was appointed to the position of Chief Inspector of the Egyptian Antiquities Service (EAS). He supervised a number of excavations at Thebes (now known as Luxor). In 1904, he was transferred to the Inspectorate of Lower Egypt. Carter was praised for his improvements in the protection of, and accessibility to, existing excavation sites, and his development of a grid-block system for searching for tombs. The Antiquities Service also provided funding for Carter to head his own excavation projects.\"', '', 1874, 5, 9, 1, 1, 1, 'how-0.jpg', '2019-05-06 12:02:10', NULL);
INSERT INTO `annis` VALUES (16, 'Florence Nightingale\'s Birthday', '\"Florence Nightingale, OM, RRC, DStJ (/ˈnaɪtɪnɡeɪl/; 12 May 1820 – 13 August 1910) was an English social reformer and statistician, and the founder of modern nursing.\n\nNightingale came to prominence while serving as a manager and trainer of nurses during the Crimean War, in which she organised care for wounded soldiers. She gave nursing a favourable reputation and became an icon of Victorian culture, especially in the persona of \"\"The Lady with the Lamp\"\" making rounds of wounded soldiers at night.\n\nRecent commentators have asserted Nightingale\'s Crimean War achievements were exaggerated by media at the time, but critics agree on the importance of her later work in professionalising nursing roles for women. In 1860, Nightingale laid the foundation of professional nursing with the establishment of her nursing school at St Thomas\' Hospital in London. It was the first secular nursing school in the world, and is now part of King\'s College London. In recognition of her pioneering work in nursing, the Nightingale Pledge taken by new nurses, and the Florence Nightingale Medal, the highest international distinction a nurse can achieve, were named in her honour, and the annual International Nurses Day is celebrated around the world on her birthday. Her social reforms included improving healthcare for all sections of British society, advocating better hunger relief in India, helping to abolish prostitution laws that were harsh for women, and expanding the acceptable forms of female participation in the workforce.\n\nNightingale was a prodigious and versatile writer. In her lifetime, much of her published work was concerned with spreading medical knowledge. Some of her tracts were written in simple English so that they could easily be understood by those with poor literary skills. She was also a pioneer in the use of infographics, effectively using graphical presentations of statistical data. Much of her writing, including her extensive work on religion and mysticism, has only been published posthumously.\"', 'I attribute my success to this:—I never gave or took an excuse.', 1820, 5, 12, 1, 1, 1, 'flo-0.jpg', '2019-05-06 12:02:16', NULL);
INSERT INTO `annis` VALUES (17, 'Anne Frank\'s Birthday', '\"Annelies Marie Frank (German: [anəˈliːs maˈʁiː ˈfʁaŋk], Dutch: [ɑnəˈlis maːˈri ˈfrɑŋk]); 12 June 1929 – February or March 1945), commonly known as Anne Frank (German: [ˈanə], Dutch: [ˈɑnə]), was a German-born Jewish diarist. One of the most discussed Jewish victims of the Holocaust, she gained fame posthumously with the publication of The Diary of a Young Girl (originally Het Achterhuis in Dutch; English: The Secret Annex), in which she documents her life in hiding from 1942 to 1944, during the German occupation of the Netherlands in World War II. It is one of the world\'s best known books and has been the basis for several plays and films.\n\nBorn in Frankfurt, Germany, she lived most of her life in or near Amsterdam, Netherlands, having moved there with her family at the age of four and a half when the Nazis gained control over Germany. Born a German national, she lost her citizenship in 1941 and thus became stateless. By May 1940, the Franks were trapped in Amsterdam by the German occupation of the Netherlands. As persecutions of the Jewish population increased in July 1942, the Franks went into hiding in some concealed rooms behind a bookcase in the building where Anne\'s father, Otto Frank, worked. From then until the family\'s arrest by the Gestapo in August 1944, she kept a diary she had received as a birthday present, and wrote in it regularly. Following their arrest, the Franks were transported to concentration camps. In October or November 1944, Anne and her sister, Margot, were transferred from Auschwitz to Bergen-Belsen concentration camp, where they died (probably of typhus) a few months later. They were originally estimated by the Red Cross to have died in March, with Dutch authorities setting 31 March as their official date of death, but research by the Anne Frank House in 2015 suggests they more likely died in February.\n\nOtto, the only survivor of the Franks, returned to Amsterdam after the war to find that her diary had been saved by his secretary, Miep Gies, and his efforts led to its publication in 1947. It was translated from its original Dutch version and first published in English in 1952 as The Diary of a Young Girl, and has since been translated into over 60 languages.\"', 'That’s something we should never forget; while others display their heroism in battle or against the Germans, our helpers prove theirs every day by their good spirits and affection.', 1929, 6, 12, 1, 1, 1, 'ann-0.jpg', '2019-05-06 12:02:22', NULL);
COMMIT;

-- ----------------------------
-- Table structure for comment_likes
-- ----------------------------
DROP TABLE IF EXISTS `comment_likes`;
CREATE TABLE `comment_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parentId` int(11) DEFAULT '0',
  `userId` int(11) DEFAULT NULL,
  `anniId` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
BEGIN;
INSERT INTO `comments` VALUES (4, 'Memory... is the diary that we all carry about with us.', 0, 2, 1, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (5, 'It is a wonderful day!', 0, 4, 1, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (6, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 1, 2, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (7, 'Science and technology revolutionize our lives, but memory, tradition and myth frame our response.', 0, 2, 2, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (8, 'I have a memory like an elephant. I remember every elephant I\'ve ever met.', 0, 3, 2, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (9, 'Science and technology revolutionize our lives, but memory, tradition and myth frame our response.', 0, 4, 2, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (10, 'Science and technology revolutionize our lives, but memory, tradition and myth frame our response.', 0, 2, 3, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (11, 'I have a memory like an elephant. I remember every elephant I\'ve ever met.', 0, 4, 3, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (12, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 1, 4, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (13, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 2, 4, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (14, 'It is a wonderful day!', 0, 3, 4, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (15, 'It is a wonderful day!', 0, 4, 4, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (16, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 1, 5, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (17, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 3, 5, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (18, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 4, 5, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (19, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 1, 6, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (20, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 2, 6, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (21, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 3, 6, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (22, 'I have a memory like an elephant. I remember every elephant I\'ve ever met.', 0, 4, 6, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (23, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 1, 7, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (24, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 2, 7, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (25, 'Science and technology revolutionize our lives, but memory, tradition and myth frame our response.', 0, 3, 7, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (26, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 4, 7, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (27, 'Science and technology revolutionize our lives, but memory, tradition and myth frame our response.', 0, 2, 8, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (28, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 4, 8, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (29, 'It is a wonderful day!', 0, 2, 9, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (30, 'Memory... is the diary that we all carry about with us.', 0, 3, 9, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (31, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 4, 9, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (32, 'Memory... is the diary that we all carry about with us.', 0, 1, 10, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (33, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 2, 10, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (34, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 3, 10, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (35, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 4, 10, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (36, 'I have a memory like an elephant. I remember every elephant I\'ve ever met.', 0, 1, 11, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (37, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 2, 11, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (38, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 3, 11, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (39, 'Science and technology revolutionize our lives, but memory, tradition and myth frame our response.', 0, 4, 11, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (40, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 3, 12, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (41, 'I have a memory like an elephant. I remember every elephant I\'ve ever met.', 0, 4, 12, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (42, 'Science and technology revolutionize our lives, but memory, tradition and myth frame our response.', 0, 1, 13, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (43, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 2, 13, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (44, 'I have a memory like an elephant. I remember every elephant I\'ve ever met.', 0, 3, 13, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (45, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 4, 13, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (46, 'It is sadder to find the past again and find it inadequate to the present than it is to have it elude you and remain forever a harmonious conception of memory.', 0, 1, 14, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (47, 'Science and technology revolutionize our lives, but memory, tradition and myth frame our response.', 0, 4, 14, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (48, 'Science and technology revolutionize our lives, but memory, tradition and myth frame our response.', 0, 3, 15, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (49, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 4, 15, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (50, 'Memory... is the diary that we all carry about with us.', 0, 1, 16, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (51, 'I have a memory like an elephant. I remember every elephant I\'ve ever met.', 0, 2, 16, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (52, 'It is a wonderful day!', 0, 3, 16, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (53, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 4, 16, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (54, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 1, 17, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (55, 'Memory... is the diary that we all carry about with us.', 0, 2, 17, NULL, NULL, NULL);
INSERT INTO `comments` VALUES (56, 'Memory is the treasure house of the mind wherein the monuments thereof are kept and preserved.', 0, 3, 17, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(2) DEFAULT NULL,
  `receiverId` int(11) DEFAULT NULL,
  `senderId` int(11) DEFAULT NULL,
  `subjectId` int(11) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `createAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Tony Stark', '$2b$10$g1mdgYx/EquJ6rtQWtFNWekrHwf.wxN90/8vQ2.fC2jczBVG/4/IW', 'tony@cmu.edu', 'Yesterday is but today\'s memory, and tomorrow is today\'s dream. — Khalil Gibran', 'avatar-1.jpg', 'default-cover.jpg', '2019-05-06 13:14:32', NULL);
INSERT INTO `users` VALUES (2, 'Peter Parker', '$2b$10$/O0OhcN/aL1kgKSTdtmEDOlyUMPMNwxKkHPfkV5dv8tFX6r5Sig6e', 'peter@cmu.edu', 'Yesterday is but today\'s memory, and tomorrow is today\'s dream. — Khalil Gibran', 'avatar-2.jpg', 'default-cover.jpg', '2019-05-06 13:14:35', NULL);
INSERT INTO `users` VALUES (3, 'Bruce Wayne', '$2b$10$rVv3SIdXb7cltHaJTF54LO8T9o7.4OzPkKZ9teYRs.ajqQ.kycfbe', 'bruce@cmu.edu', 'Yesterday is but today\'s memory, and tomorrow is today\'s dream. — Khalil Gibran', 'avatar-3.jpg', 'default-cover.jpg', '2019-05-06 13:14:39', NULL);
INSERT INTO `users` VALUES (4, 'Steve Rogers', '$2b$10$G46yZa6cDpuy/Cnk1qKdWua99.dLdCcWTVSlvai9KuMKTC4WFQoUS', 'steve@cmu.edu', 'Yesterday is but today\'s memory, and tomorrow is today\'s dream. — Khalil Gibran', 'avatar-4.jpg', 'default-cover.jpg', '2019-05-06 13:14:43', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
