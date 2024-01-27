/*
 Navicat Premium Data Transfer

 Source Server         : MySQL Local 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : elite_exam_db

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 27/01/2024 08:26:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for albums
-- ----------------------------
DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `artist_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of albums
-- ----------------------------
INSERT INTO `albums` VALUES (1, 'c4935c82-8463-3583-b0fc-2332ede3fb84', 'Complete with You: Special Album', '43058.00', '220117');
INSERT INTO `albums` VALUES (2, 'ed476adc-3ef7-3e71-8c60-198744dbf3f9', 'qwe', '123', '123');
INSERT INTO `albums` VALUES (3, 'a33975db-f976-3f94-a619-c57fa9c49fff', 'Horn', '58641.00', '220214');
INSERT INTO `albums` VALUES (4, '9c9da9a4-9ce1-3475-9201-71e32534a4a0', 'Zero: Fever Epilogue', '3578.00', '211210');
INSERT INTO `albums` VALUES (5, '22bf1ce0-804b-34b7-9c59-885807b6c112', 'Intersection: Blaze', '16801.00', '220330');
INSERT INTO `albums` VALUES (6, '21325334-eae8-3e69-8356-6d282280491e', 'B', '87540.00', '220118');
INSERT INTO `albums` VALUES (7, 'e9f0a291-58e7-3236-a849-da8505df77f8', '2', '6933.00', '220302');
INSERT INTO `albums` VALUES (8, 'b5c8ae77-cc9c-3009-a492-717c12507ea5', 'The Collective Soul and Unconscious: Chapter One', '66885.00', '220223');
INSERT INTO `albums` VALUES (9, '295f4e37-8106-33e0-a084-f6dc67d2ddfe', 'Bobbin', '17719.00', '220103');
INSERT INTO `albums` VALUES (10, '3f10546f-3efa-35ad-a4cd-4e0a70f6ef16', 'Seoul', '2596.00', '220420');
INSERT INTO `albums` VALUES (11, '7dfc5fc2-9dba-3ac5-8429-66612e322fd8', 'Thank You', '33605.00', '220315');
INSERT INTO `albums` VALUES (12, '18f75771-4ed0-3591-880d-61f95daca9f5', 'Be Together', '121528.00', '220221');
INSERT INTO `albums` VALUES (13, '809af434-ca4f-356a-b0a0-b16ec2c880ed', 'Smiley', '84346.00', '220117');
INSERT INTO `albums` VALUES (14, '6cb3113e-4f48-30e2-b113-68d4e9c44d2e', 'Liberty: In Our Cosmos Part.2', '123922.00', '220322');
INSERT INTO `albums` VALUES (15, 'c39cc528-ddb3-351f-8b12-72b05e77e5e0', 'Cherry Wish', '20250.00', '220302');
INSERT INTO `albums` VALUES (16, 'b073095c-3a6f-3db4-a37c-e16d1897cd76', 'Love', '41148.00', '220126');
INSERT INTO `albums` VALUES (17, 'db719bcb-3300-34a8-84e8-841bf09a53a4', 'Chase, Ep.2-Maum', '118583.00', '220412');
INSERT INTO `albums` VALUES (18, 'c308325d-f8ce-3e48-8d15-6befe0e88517', 'Apocalypse: Save Us', '94706.00', '220412');
INSERT INTO `albums` VALUES (19, '18be9f87-5a1b-3b20-9cfb-fe6edd54302c', 'Villian', '37535.00', '220117');
INSERT INTO `albums` VALUES (20, 'e3fe6e65-3cf1-3da0-af08-db26464deef5', 'Roar', '48695.00', '220427');
INSERT INTO `albums` VALUES (21, '0cafd4da-f822-3b12-a87b-3ee97ee22d82', 'Dimension: Dilemma', '27591.00', '211012');
INSERT INTO `albums` VALUES (22, 'efb51695-bf3d-36d5-8b67-83fb8014ac18', 'Dimension: Answer', '621425.00', '220110');
INSERT INTO `albums` VALUES (23, 'cd7a7808-96fb-387c-a80c-7989ceb9d337', 'Book of Anxiety Chapter1. 21st Century Boys', '71584.00', '220411');
INSERT INTO `albums` VALUES (24, 'd84c0ca0-55c4-3af6-84ee-a68162ce8125', 'Epik High is Here', '5382.00', '220214');
INSERT INTO `albums` VALUES (25, '53e44b99-7415-3670-b3bc-d30dc2a67e62', 'There and Back Again', '2183.00', '220107');
INSERT INTO `albums` VALUES (26, '2147671c-365a-3a22-9da4-2ba6299bf646', 'Return of the Girl', '2450.00', '211201');
INSERT INTO `albums` VALUES (27, '4ea21c76-50e3-3f85-a875-7deee41e99f0', 'Midnight Guest', '120245.00', '220117');
INSERT INTO `albums` VALUES (28, 'db41b46d-d318-3681-9423-5ad2b740a937', 'I Never Die', '198589.00', '220314');
INSERT INTO `albums` VALUES (29, 'b3df5437-bd15-3ded-b5f4-bea4020539aa', 'Arcade: V', '9311.00', '220407');
INSERT INTO `albums` VALUES (30, 'bdf1c4d8-d8c5-3597-88a2-4d42976f19a4', 'You', '18717.00', '220209');
INSERT INTO `albums` VALUES (31, '956e51f2-d0f9-3038-a8b2-35a5b84d9b16', 'Daydream', '86293.00', '220321');
INSERT INTO `albums` VALUES (32, '17fae4ad-4b1c-3a05-af23-e8e5cc453674', 'Love in Bloom', '3181.00', '220404');
INSERT INTO `albums` VALUES (33, 'fd4c439c-ff84-3fae-9fee-2567a4fd9179', 'Eleven', '37284.00', '211201');
INSERT INTO `albums` VALUES (34, '1935da98-9da3-3b68-be03-96bc4c64c7af', 'Love Dive', '440067.00', '220405');
INSERT INTO `albums` VALUES (35, '6022fbc2-e3bc-3608-b07b-32b0c01d1897', 'Restore', '57401.00', '220117');
INSERT INTO `albums` VALUES (36, '8b7f1e48-6314-3959-81a8-ef33dcba0aac', 'Just Begun', '51504.00', '220414');
INSERT INTO `albums` VALUES (37, '02ee6d2e-d555-3cf4-b625-3858af5c7a6f', 'Peaches', '5373.00', '211130');
INSERT INTO `albums` VALUES (38, '4baea84e-cca0-3444-a206-70c5893776d4', 'Winter Special Album: W', '18305.00', '220104');
INSERT INTO `albums` VALUES (39, 'dbd65ec5-8cbd-34d9-a11a-2e82ab74e145', 'First Impact', '271048.00', '220103');
INSERT INTO `albums` VALUES (40, '9ce33101-ca29-38eb-848e-a76d995be2bc', 'Voyager', '141407.00', '220315');
INSERT INTO `albums` VALUES (41, '6ec7c51f-e0e8-3fdb-925b-03b5ccfaf84b', 'The Letter', '9639.00', '211228');
INSERT INTO `albums` VALUES (42, 'f4217dab-8b1b-3e9e-a332-7bc27657a400', 'Dimension', '55470.00', '220317');
INSERT INTO `albums` VALUES (43, '640a9404-8b45-3499-83f4-9416156e18fa', 'Savior', '28082.00', '220422');
INSERT INTO `albums` VALUES (44, 'afda08f8-bb36-301f-986d-d93b1a67dbf3', 'Reve: 3rd Desire', '67957.00', '220307');
INSERT INTO `albums` VALUES (45, 'b2a74043-7c7d-387f-9049-2a08396c141f', 'Illusoin', '51754.00', '220110');
INSERT INTO `albums` VALUES (46, '320e1494-8513-3592-884d-c62da66e2769', 'History of Kingdom: Pt. 4: Dann', '19450.00', '220331');
INSERT INTO `albums` VALUES (47, '5473bc4c-e82e-3ede-8335-1f904111b9b6', 'Color', '55923.00', '220404');
INSERT INTO `albums` VALUES (48, 'bff63e14-6bff-383c-8a1b-3021cfd56fd1', 'Love Story (4 Season Project 季)', '37215.00', '220125');
INSERT INTO `albums` VALUES (49, '4a3aedc0-b778-3c51-bfef-a69ed142c5d8', 'Same Spot', '7673.00', '220324');
INSERT INTO `albums` VALUES (50, '43d7c01b-56c9-31b6-a315-6076fce503b4', 'Even if it becomes ruins', '7640.00', '211124');
INSERT INTO `albums` VALUES (51, 'da827bba-8f17-3c29-8c73-4928bf106d3e', 'Lalisa', '73336.00', '210910');
INSERT INTO `albums` VALUES (52, 'b632e1fa-1a9b-3775-897d-559170a03d20', 'Moonlight', '3705.00', '220117');
INSERT INTO `albums` VALUES (53, '7e588bb5-bf47-3608-bbe4-b7316fd281a2', 'Devil', '21831.00', '220113');
INSERT INTO `albums` VALUES (54, '7236fccc-d58b-3abe-8620-8f7db370afcb', 'Marvelous', '48067.00', '220112');
INSERT INTO `albums` VALUES (55, 'd2293cb9-3919-3f01-9671-16bb9927cfbd', 'My', '90064.00', '220427');
INSERT INTO `albums` VALUES (56, 'c5674c0a-a0e0-3980-9192-aa78248b77df', 'No Limit', '23015.00', '211119');
INSERT INTO `albums` VALUES (57, '73c9f261-a8ec-3c4c-a117-c696b58cbbe6', 'Shape of Love', '284668.00', '220426');
INSERT INTO `albums` VALUES (58, '7b6676ce-8fc1-3b82-a904-f030b0d35bda', 'Refuge', '144205.00', '220315');
INSERT INTO `albums` VALUES (59, '6558d1f9-aa13-3471-b95f-6e26737c91ec', '6equence', '78120.00', '220119');
INSERT INTO `albums` VALUES (60, '6c54445e-e555-33e4-967f-7865a0afacdc', 'CITT: Cheese in the Trap', '86508.00', '220428');
INSERT INTO `albums` VALUES (61, '504a81e3-400e-3370-b488-210b814abf34', 'Sticker', '31194.00', '210917');
INSERT INTO `albums` VALUES (62, '057a5e13-2610-3e59-b71b-91836712f63b', 'Favorite', '30331.00', '211025');
INSERT INTO `albums` VALUES (63, 'e0a1177f-0ca7-388b-b8ae-b9a14ed0457a', 'Universe', '118633.00', '211214');
INSERT INTO `albums` VALUES (64, 'c7266a99-ad49-3dba-baae-8d2373ac6b9e', 'Glitch Mode', '1649993.00', '220328');
INSERT INTO `albums` VALUES (65, '6f86887c-a6f5-3097-ba99-bf5e9b9fca74', 'New World', '3618.00', '220330');
INSERT INTO `albums` VALUES (66, '8223bef4-c691-35d3-bdf9-9d5ded7f8292', 'Ad Mare', '406936.00', '220222');
INSERT INTO `albums` VALUES (67, '65556a4b-2186-3f93-ac53-6545e49d3398', 'Need & Bubble: Nu\'est the Best Album', '63446.00', '220315');
INSERT INTO `albums` VALUES (68, '1d2d9ae0-d133-303d-9d3b-0d23ebddc76b', 'Real Love', '66912.00', '220328');
INSERT INTO `albums` VALUES (69, 'e0153b15-5f7e-31d1-b0b8-571db47df065', 'Love Me Like', '86941.00', '220105');
INSERT INTO `albums` VALUES (70, '05872e12-9988-35ec-8f62-25fed9632cc5', 'Dice', '119006.00', '220411');
INSERT INTO `albums` VALUES (71, 'c1ade73a-7d57-3d63-bb82-2f55ca3141f4', 'Planet Nine: Voyager', '18075.00', '220104');
INSERT INTO `albums` VALUES (72, '66720c6d-3958-30da-9adc-b38deb14ed89', 'Goosebumps', '4396.00', '211203');
INSERT INTO `albums` VALUES (73, '72bb87bf-f4d8-3bab-8784-81e1ef791690', 'Instint, Pt.2', '49362.00', '220114');
INSERT INTO `albums` VALUES (74, 'a20ede20-0b17-3aa4-9e84-cee18ef99380', 'Disharmony: Find Out', '91969.00', '220103');
INSERT INTO `albums` VALUES (75, '0d6194c8-a981-398e-977d-0e6035017986', 'In:Vite U', '90114.00', '220124');
INSERT INTO `albums` VALUES (76, 'bb3d5a95-8cf6-395d-aa4e-ce6282b600ba', 'Memem', '32266.00', '220329');
INSERT INTO `albums` VALUES (77, 'b63258fa-02c2-3f08-9fa4-b55ddd7f5530', 'Love & Fight', '10359.00', '220208');
INSERT INTO `albums` VALUES (78, '8bd5d2fa-86d6-3fbc-9c1a-667d29eaf093', 'The Reve Festival 2022: Feel My Rhythm', '560838.00', '220321');
INSERT INTO `albums` VALUES (79, 'b122090a-4c26-3996-a71c-f6420b53b8fc', 'Yellow Punch', '20055.00', '220228');
INSERT INTO `albums` VALUES (80, 'c139d8ad-353f-3bfb-9ef0-9cc929d8a86e', 'Attacca', '30049.00', '211022');
INSERT INTO `albums` VALUES (81, '0f7aeb57-7eb7-3cdb-8ad5-fd24064e1465', 'Face', '43599.00', '220316');
INSERT INTO `albums` VALUES (82, '5d25dd27-de1e-3191-93e6-d7a4703a1c66', '2021 Winter SMTOWN: SMCU Express', '56940.00', '211227');
INSERT INTO `albums` VALUES (83, '83f78ce7-e4cd-3987-a057-50bc21ab2a79', '2021 Winter SMTOWN: SMCU Express', '12971.00', '211227');
INSERT INTO `albums` VALUES (84, '727e4511-d0af-3f8e-8caf-572dab0b771e', '2021 Winter SMTOWN: SMCU Express', '5974.00', '211227');
INSERT INTO `albums` VALUES (85, 'ed5750e9-d2b2-3d14-95e6-59765afc1e24', '2021 Winter SMTOWN: SMCU Express', '74162.00', '211227');
INSERT INTO `albums` VALUES (86, '62159533-5e11-3d4b-939b-0acca34f1683', '2021 Winter SMTOWN: SMCU Express', '74087.00', '211227');
INSERT INTO `albums` VALUES (87, '1bb13b56-e1a6-35e9-8f45-3b5173f3aadd', '2021 Winter SMTOWN: SMCU Express', '41833.00', '211227');
INSERT INTO `albums` VALUES (88, '2cde9c33-64bd-3221-b6eb-1fb2e5d0a6ea', '2021 Winter SMTOWN: SMCU Express', '5265.00', '211227');
INSERT INTO `albums` VALUES (89, '7fc5cfe7-33da-38dd-8fb4-3b0c82be90ef', '2021 Winter SMTOWN: SMCU Express', '62545.00', '211227');
INSERT INTO `albums` VALUES (90, 'c850eede-24c6-3964-bf83-b176c450b2ff', '2021 Winter SMTOWN: SMCU Express', '14336.00', '211227');
INSERT INTO `albums` VALUES (91, 'cdee281e-2f63-33a0-959a-1d2a92102f90', '2021 Winter SMTOWN: SMCU Express', '2218.00', '211227');
INSERT INTO `albums` VALUES (92, 'b6ba8465-8984-3afb-b0c2-3c2332851782', 'Gray Suit', '186465.00', '220404');
INSERT INTO `albums` VALUES (93, 'c81047c9-a94e-3067-be34-9ff2fcb826ba', 'Young-Luv.com', '182131.00', '220221');
INSERT INTO `albums` VALUES (94, 'ad3b05eb-d6ad-343d-90d3-dbbb83f7fc8b', 'Christmas EveL', '14418.00', '211129');
INSERT INTO `albums` VALUES (95, 'f2c5ca32-ffd2-359e-93b0-9dab4d30177a', 'Oddinary', '1000088.00', '220318');
INSERT INTO `albums` VALUES (96, '7e7500a5-11b5-316d-afb7-c896f35de686', 'The Road: Winter for Spring', '142663.00', '220228');
INSERT INTO `albums` VALUES (97, '7291cec3-d279-3c90-898c-71143bfc229c', 'Countdown Zero (Epilogue)', '8458.00', '211209');
INSERT INTO `albums` VALUES (98, 'd21d286c-7fed-321c-aef8-7d367b6b5bb1', 'INVU', '179611.00', '220214');
INSERT INTO `albums` VALUES (99, '7c668d01-7fa0-3182-b9e1-e179b0f8f128', 'It\'s Me, It\'s We', '82307.00', '220302');
INSERT INTO `albums` VALUES (100, 'aaae5eb3-a5bb-328a-90c7-7ac326d248fa', 'Limited Edition \'1TAN\'', '8870.00', '220310');
INSERT INTO `albums` VALUES (101, '9b2de8d8-cca1-3684-9f8d-4fd666ea52ca', 'Maverick', '5566.00', '211101');
INSERT INTO `albums` VALUES (102, '52aa88be-fad8-34a0-8e49-5931021ec6a9', 'Webtoon Level Up Alone (OST)', '10573.00', '220318');
INSERT INTO `albums` VALUES (103, '0b26be96-f3cc-301e-b328-a3b3c6e46feb', 'The Second Step: Chapter One', '668539.00', '220215');
INSERT INTO `albums` VALUES (104, '119b2550-aa6e-35d8-a1ff-9fba1b60f310', 'Blue Set Chapter 1. Tracks', '6170.00', '220105');
INSERT INTO `albums` VALUES (105, 'e66debbe-d23e-38e9-b0e7-8141fdb03f8f', 'Formula of Love: OT=<3', '8293.00', '211217');
INSERT INTO `albums` VALUES (106, '00fc691e-3e49-3547-9cc4-de312a87bfc6', 'Novella', '31415.00', '220103');
INSERT INTO `albums` VALUES (107, 'f8fcea83-87f0-3ee3-b65b-7ec6ba5ded5d', 'Serioues O-Round 3: Whole', '97187.00', '220425');
INSERT INTO `albums` VALUES (108, 'af8ed776-cfb4-323d-ab8e-7f6c042c8c7a', 'Chronograph', '60959.00', '220118');
INSERT INTO `albums` VALUES (109, '3d1748f2-b02c-333d-98a0-fa67587e54ad', 'Beam of Prism', '43638.00', '220210');
INSERT INTO `albums` VALUES (110, '109ac130-3fd6-356e-a658-420512f18d2d', 'Play Game: Awake', '81537.00', '220307');
INSERT INTO `albums` VALUES (111, 'f197ccd3-47f8-31ec-922c-197eacc98a13', 'Love Pt. 1: First Love', '119853.00', '220316');
INSERT INTO `albums` VALUES (112, '185f8a1d-e346-3137-949c-0cdf376a6ae0', 'Whee', '69470.00', '220117');
INSERT INTO `albums` VALUES (113, 'f06be508-deff-346d-9304-a68c9a5be015', 'Obsession', '56627.00', '220216');
INSERT INTO `albums` VALUES (114, 'e221c379-c0a1-33f8-9d14-5555aff54d88', 'Pilmography', '33668.00', '220210');
INSERT INTO `albums` VALUES (115, 'ddcef22c-8640-3de8-b10e-5a55f21825c4', 'Super Yuppers!', '15135.00', '220105');
INSERT INTO `albums` VALUES (116, '4335bf4e-0afd-3668-ad2e-36e22fb87b8b', 'End Theory Final Ed.', '7001.00', '220330');
INSERT INTO `albums` VALUES (117, 'c03923d7-4c06-333a-99a5-5bf9d780595e', 'Miro', '6595.00', '220427');
INSERT INTO `albums` VALUES (118, 'b6e77a15-b9a0-3204-91cb-bfe1a6b22c6b', 'Youni-Birth', '21927.00', '220422');
INSERT INTO `albums` VALUES (119, '2a01f935-3d83-3782-a448-4d1c8c7196f0', 'Rec.', '22970.00', '220121');

-- ----------------------------
-- Table structure for artists
-- ----------------------------
DROP TABLE IF EXISTS `artists`;
CREATE TABLE `artists`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artists
-- ----------------------------
INSERT INTO `artists` VALUES (27, '4ea21c76-50e3-3f85-a875-7deee41e99f0', 'fromis_9');
INSERT INTO `artists` VALUES (28, 'db41b46d-d318-3681-9423-5ad2b740a937', '(G)I-dle');
INSERT INTO `artists` VALUES (29, 'b3df5437-bd15-3ded-b5f4-bea4020539aa', 'Ghost9');
INSERT INTO `artists` VALUES (30, 'bdf1c4d8-d8c5-3597-88a2-4d42976f19a4', 'Ha Sungwoon');
INSERT INTO `artists` VALUES (31, '956e51f2-d0f9-3038-a8b2-35a5b84d9b16', 'Highlight');
INSERT INTO `artists` VALUES (32, '17fae4ad-4b1c-3a05-af23-e8e5cc453674', 'ILY:1');
INSERT INTO `artists` VALUES (33, 'fd4c439c-ff84-3fae-9fee-2567a4fd9179', 'IVE');
INSERT INTO `artists` VALUES (34, '1935da98-9da3-3b68-be03-96bc4c64c7af', 'IVE');
INSERT INTO `artists` VALUES (35, '6022fbc2-e3bc-3608-b07b-32b0c01d1897', 'Jinjin & Rocky');
INSERT INTO `artists` VALUES (36, '8b7f1e48-6314-3959-81a8-ef33dcba0aac', 'Just B');
INSERT INTO `artists` VALUES (37, '02ee6d2e-d555-3cf4-b625-3858af5c7a6f', 'Kai');
INSERT INTO `artists` VALUES (38, '4baea84e-cca0-3444-a206-70c5893776d4', 'Kang Hyewon');
INSERT INTO `artists` VALUES (39, 'dbd65ec5-8cbd-34d9-a11a-2e82ab74e145', 'Kep1er');
INSERT INTO `artists` VALUES (40, '9ce33101-ca29-38eb-848e-a76d995be2bc', 'Kihyun');
INSERT INTO `artists` VALUES (41, '6ec7c51f-e0e8-3fdb-925b-03b5ccfaf84b', 'Kim Jaehwan');
INSERT INTO `artists` VALUES (42, 'f4217dab-8b1b-3e9e-a332-7bc27657a400', 'Kim Junsu');
INSERT INTO `artists` VALUES (43, '640a9404-8b45-3499-83f4-9416156e18fa', 'Kim Sungkyu');
INSERT INTO `artists` VALUES (44, 'afda08f8-bb36-301f-986d-d93b1a67dbf3', 'Kim Wooseok');
INSERT INTO `artists` VALUES (45, 'b2a74043-7c7d-387f-9049-2a08396c141f', 'Kim Yohan');
INSERT INTO `artists` VALUES (46, '320e1494-8513-3592-884d-c62da66e2769', 'Kingdom');
INSERT INTO `artists` VALUES (47, '5473bc4c-e82e-3ede-8335-1f904111b9b6', 'Kwon Eunbi');
INSERT INTO `artists` VALUES (48, 'bff63e14-6bff-383c-8a1b-3021cfd56fd1', 'Kyuhyun');
INSERT INTO `artists` VALUES (49, '4a3aedc0-b778-3c51-bfef-a69ed142c5d8', 'Lee Seokhoon');
INSERT INTO `artists` VALUES (50, '43d7c01b-56c9-31b6-a315-6076fce503b4', 'Lee Seungyoon');
INSERT INTO `artists` VALUES (51, 'da827bba-8f17-3c29-8c73-4928bf106d3e', 'Lisa');
INSERT INTO `artists` VALUES (52, 'b632e1fa-1a9b-3775-897d-559170a03d20', 'LUNA');
INSERT INTO `artists` VALUES (53, '7e588bb5-bf47-3608-bbe4-b7316fd281a2', 'Max Changmin');
INSERT INTO `artists` VALUES (54, '7236fccc-d58b-3abe-8620-8f7db370afcb', 'Mirae');
INSERT INTO `artists` VALUES (55, 'd2293cb9-3919-3f01-9671-16bb9927cfbd', 'Miyeon');
INSERT INTO `artists` VALUES (56, 'c5674c0a-a0e0-3980-9192-aa78248b77df', 'Monsta X');
INSERT INTO `artists` VALUES (57, '73c9f261-a8ec-3c4c-a117-c696b58cbbe6', 'Monsta X');
INSERT INTO `artists` VALUES (58, '7b6676ce-8fc1-3b82-a904-f030b0d35bda', 'Moonbin & Sanha');
INSERT INTO `artists` VALUES (59, '6558d1f9-aa13-3471-b95f-6e26737c91ec', 'Moonbyul');
INSERT INTO `artists` VALUES (60, '6c54445e-e555-33e4-967f-7865a0afacdc', 'Moonbyul');
INSERT INTO `artists` VALUES (61, '504a81e3-400e-3370-b488-210b814abf34', 'NCT 127');
INSERT INTO `artists` VALUES (62, '057a5e13-2610-3e59-b71b-91836712f63b', 'NCT 127');
INSERT INTO `artists` VALUES (63, 'e0a1177f-0ca7-388b-b8ae-b9a14ed0457a', 'NCT 2021');
INSERT INTO `artists` VALUES (64, 'c7266a99-ad49-3dba-baae-8d2373ac6b9e', 'NCT Dream');
INSERT INTO `artists` VALUES (65, '6f86887c-a6f5-3097-ba99-bf5e9b9fca74', 'NINE.i');
INSERT INTO `artists` VALUES (66, '8223bef4-c691-35d3-bdf9-9d5ded7f8292', 'NMIXX');
INSERT INTO `artists` VALUES (67, '65556a4b-2186-3f93-ac53-6545e49d3398', 'NU\'EST');
INSERT INTO `artists` VALUES (68, '1d2d9ae0-d133-303d-9d3b-0d23ebddc76b', 'Oh My Girl');
INSERT INTO `artists` VALUES (69, 'e0153b15-5f7e-31d1-b0b8-571db47df065', 'Omega X');
INSERT INTO `artists` VALUES (70, '05872e12-9988-35ec-8f62-25fed9632cc5', 'Onew');
INSERT INTO `artists` VALUES (71, 'c1ade73a-7d57-3d63-bb82-2f55ca3141f4', 'ONEWE');
INSERT INTO `artists` VALUES (72, '66720c6d-3958-30da-9adc-b38deb14ed89', 'ONF');
INSERT INTO `artists` VALUES (73, '72bb87bf-f4d8-3bab-8784-81e1ef791690', 'OnlyOneOf');
INSERT INTO `artists` VALUES (74, 'a20ede20-0b17-3aa4-9e84-cee18ef99380', 'P1Harmony');
INSERT INTO `artists` VALUES (75, '0d6194c8-a981-398e-977d-0e6035017986', 'Pentagon');
INSERT INTO `artists` VALUES (76, 'bb3d5a95-8cf6-395d-aa4e-ce6282b600ba', 'Purple Kiss');
INSERT INTO `artists` VALUES (77, 'b63258fa-02c2-3f08-9fa4-b55ddd7f5530', 'Ravi');
INSERT INTO `artists` VALUES (78, '8bd5d2fa-86d6-3fbc-9c1a-667d29eaf093', 'Red Velvet');
INSERT INTO `artists` VALUES (79, 'b122090a-4c26-3996-a71c-f6420b53b8fc', 'Rocket Punch');
INSERT INTO `artists` VALUES (80, 'c139d8ad-353f-3bfb-9ef0-9cc929d8a86e', 'Seventeen');
INSERT INTO `artists` VALUES (81, '0f7aeb57-7eb7-3cdb-8ad5-fd24064e1465', 'Solar');
INSERT INTO `artists` VALUES (82, '5d25dd27-de1e-3191-93e6-d7a4703a1c66', 'SMTOWN');
INSERT INTO `artists` VALUES (83, '83f78ce7-e4cd-3987-a057-50bc21ab2a79', 'SMTOWN');
INSERT INTO `artists` VALUES (84, '727e4511-d0af-3f8e-8caf-572dab0b771e', 'SMTOWN');
INSERT INTO `artists` VALUES (85, 'ed5750e9-d2b2-3d14-95e6-59765afc1e24', 'SMTOWN');
INSERT INTO `artists` VALUES (86, '62159533-5e11-3d4b-939b-0acca34f1683', 'SMTOWN');
INSERT INTO `artists` VALUES (87, '1bb13b56-e1a6-35e9-8f45-3b5173f3aadd', 'SMTOWN');
INSERT INTO `artists` VALUES (88, '2cde9c33-64bd-3221-b6eb-1fb2e5d0a6ea', 'SMTOWN');
INSERT INTO `artists` VALUES (89, '7fc5cfe7-33da-38dd-8fb4-3b0c82be90ef', 'SMTOWN');
INSERT INTO `artists` VALUES (90, 'c850eede-24c6-3964-bf83-b176c450b2ff', 'SMTOWN');
INSERT INTO `artists` VALUES (91, 'cdee281e-2f63-33a0-959a-1d2a92102f90', 'SMTOWN');
INSERT INTO `artists` VALUES (92, 'b6ba8465-8984-3afb-b0c2-3c2332851782', 'Suho');
INSERT INTO `artists` VALUES (93, 'c81047c9-a94e-3067-be34-9ff2fcb826ba', 'StayC');
INSERT INTO `artists` VALUES (94, 'ad3b05eb-d6ad-343d-90d3-dbbb83f7fc8b', 'Stray Kids');
INSERT INTO `artists` VALUES (95, 'f2c5ca32-ffd2-359e-93b0-9dab4d30177a', 'Stray Kids');
INSERT INTO `artists` VALUES (96, '7e7500a5-11b5-316d-afb7-c896f35de686', 'Super Junior');
INSERT INTO `artists` VALUES (97, '7291cec3-d279-3c90-898c-71143bfc229c', 'Super Junior - D&E');
INSERT INTO `artists` VALUES (98, 'd21d286c-7fed-321c-aef8-7d367b6b5bb1', 'Taeyeon');
INSERT INTO `artists` VALUES (99, '7c668d01-7fa0-3182-b9e1-e179b0f8f128', 'Tempest');
INSERT INTO `artists` VALUES (100, 'aaae5eb3-a5bb-328a-90c7-7ac326d248fa', 'Tan');
INSERT INTO `artists` VALUES (101, '9b2de8d8-cca1-3684-9f8d-4fd666ea52ca', 'The Boyz');
INSERT INTO `artists` VALUES (102, '52aa88be-fad8-34a0-8e49-5931021ec6a9', 'The Boyz');
INSERT INTO `artists` VALUES (103, '0b26be96-f3cc-301e-b328-a3b3c6e46feb', 'Treasure');
INSERT INTO `artists` VALUES (104, '119b2550-aa6e-35d8-a1ff-9fba1b60f310', 'Trendz');
INSERT INTO `artists` VALUES (105, 'e66debbe-d23e-38e9-b0e7-8141fdb03f8f', 'Twice');
INSERT INTO `artists` VALUES (106, '00fc691e-3e49-3547-9cc4-de312a87bfc6', 'UP10TION');
INSERT INTO `artists` VALUES (107, 'f8fcea83-87f0-3ee3-b65b-7ec6ba5ded5d', 'Verivery');
INSERT INTO `artists` VALUES (108, 'af8ed776-cfb4-323d-ab8e-7f6c042c8c7a', 'Victon');
INSERT INTO `artists` VALUES (109, '3d1748f2-b02c-333d-98a0-fa67587e54ad', 'Viviz');
INSERT INTO `artists` VALUES (110, '109ac130-3fd6-356e-a658-420512f18d2d', 'Weeekly');
INSERT INTO `artists` VALUES (111, 'f197ccd3-47f8-31ec-922c-197eacc98a13', 'WEi');
INSERT INTO `artists` VALUES (112, '185f8a1d-e346-3137-949c-0cdf376a6ae0', 'Wheein');
INSERT INTO `artists` VALUES (113, 'f06be508-deff-346d-9304-a68c9a5be015', 'Wonho');
INSERT INTO `artists` VALUES (114, 'e221c379-c0a1-33f8-9d14-5555aff54d88', 'Wonpil');
INSERT INTO `artists` VALUES (115, 'ddcef22c-8640-3de8-b10e-5a55f21825c4', 'WJSN Chocome');
INSERT INTO `artists` VALUES (116, '4335bf4e-0afd-3668-ad2e-36e22fb87b8b', 'Younha');
INSERT INTO `artists` VALUES (117, 'c03923d7-4c06-333a-99a5-5bf9d780595e', 'Yoon Jisung');
INSERT INTO `artists` VALUES (118, 'b6e77a15-b9a0-3204-91cb-bfe1a6b22c6b', 'Younite');
INSERT INTO `artists` VALUES (119, '2a01f935-3d83-3782-a448-4d1c8c7196f0', 'Yuju');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_01_26_141611_albums', 2);
INSERT INTO `migrations` VALUES (6, '2024_01_26_141632_artists', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Lance', 'username', NULL, '$2y$10$vxCvptQz.V2hFdfLlOzzm.IhMixs.AxFyYiYWHjDkCPg/qplL6X8m', NULL, '2024-01-26 13:57:10', '2024-01-26 13:57:10');
INSERT INTO `users` VALUES (2, 'John Doe', 'john@example.com', NULL, '$2y$10$Srmy5PlbF.mAgihbYZWAheTr4ViWE6kBzFFKMS.u2ub3bpJktMXWa', NULL, '2024-01-26 15:47:32', '2024-01-26 15:47:32');

SET FOREIGN_KEY_CHECKS = 1;
