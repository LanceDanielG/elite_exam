/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50617
 Source Host           : localhost:3306
 Source Schema         : sample

 Target Server Type    : MySQL
 Target Server Version : 50617
 File Encoding         : 65001

 Date: 26/01/2024 16:36:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ref
-- ----------------------------
DROP TABLE IF EXISTS `ref`;
CREATE TABLE `ref`  (
  `Artist` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Album` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `2022 Sales` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Date Released` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Last Update` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ref
-- ----------------------------
INSERT INTO `ref` VALUES ('AB6IX', 'Complete with You: Special Album', '43058.00', '220117', '220131');
INSERT INTO `ref` VALUES ('aespa', 'Savage', '19629.00', '211005', '220430');
INSERT INTO `ref` VALUES ('Apink', 'Horn', '58641.00', '220214', '220228');
INSERT INTO `ref` VALUES ('ATEEZ', 'Zero: Fever Epilogue', '3578.00', '211210', '220131');
INSERT INTO `ref` VALUES ('BAE173', 'Intersection: Blaze', '16801.00', '220330', '220430');
INSERT INTO `ref` VALUES ('BamBam', 'B', '87540.00', '220118', '220131');
INSERT INTO `ref` VALUES ('Bang Yongguk', '2', '6933.00', '220302', '220331');
INSERT INTO `ref` VALUES ('Billlie', 'The Collective Soul and Unconscious: Chapter One', '66885.00', '220223', '220430');
INSERT INTO `ref` VALUES ('Blitzers', 'Bobbin', '17719.00', '220103', '220131');
INSERT INTO `ref` VALUES ('Bolbbalgan4', 'Seoul', '2596.00', '220420', '220430');
INSERT INTO `ref` VALUES ('Brave Girls', 'Thank You', '33605.00', '220315', '220331');
INSERT INTO `ref` VALUES ('BTOB', 'Be Together', '121528.00', '220221', '220331');
INSERT INTO `ref` VALUES ('Choi Yena', 'Smiley', '84346.00', '220117', '220331');
INSERT INTO `ref` VALUES ('Cravity', 'Liberty: In Our Cosmos Part.2', '123922.00', '220322', '220430');
INSERT INTO `ref` VALUES ('Cherry Bullet', 'Cherry Wish', '20250.00', '220302', '220331');
INSERT INTO `ref` VALUES ('Def.', 'Love', '41148.00', '220126', '220131');
INSERT INTO `ref` VALUES ('DKZ', 'Chase, Ep.2-Maum', '118583.00', '220412', '220430');
INSERT INTO `ref` VALUES ('Dreamcatcher', 'Apocalypse: Save Us', '94706.00', '220412', '220430');
INSERT INTO `ref` VALUES ('Drippin', 'Villian', '37535.00', '220117', '220430');
INSERT INTO `ref` VALUES ('E\'LAST', 'Roar', '48695.00', '220427', '220430');
INSERT INTO `ref` VALUES ('Enhypen', 'Dimension: Dilemma', '27591.00', '211012', '220430');
INSERT INTO `ref` VALUES ('Enhypen', 'Dimension: Answer', '621425.00', '220110', '220430');
INSERT INTO `ref` VALUES ('Epex', 'Book of Anxiety Chapter1. 21st Century Boys', '71584.00', '220411', '220430');
INSERT INTO `ref` VALUES ('Epik High', 'Epik High is Here', '5382.00', '220214', '220228');
INSERT INTO `ref` VALUES ('Eric Nam', 'There and Back Again', '2183.00', '220107', '220430');
INSERT INTO `ref` VALUES ('Everglow', 'Return of the Girl', '2450.00', '211201', '220131');
INSERT INTO `ref` VALUES ('fromis_9', 'Midnight Guest', '120245.00', '220117', '220331');
INSERT INTO `ref` VALUES ('(G)I-dle', 'I Never Die', '198589.00', '220314', '220430');
INSERT INTO `ref` VALUES ('Ghost9', 'Arcade: V', '9311.00', '220407', '220430');
INSERT INTO `ref` VALUES ('Ha Sungwoon', 'You', '18717.00', '220209', '220228');
INSERT INTO `ref` VALUES ('Highlight', 'Daydream', '86293.00', '220321', '220430');
INSERT INTO `ref` VALUES ('ILY:1', 'Love in Bloom', '3181.00', '220404', '220430');
INSERT INTO `ref` VALUES ('IVE', 'Eleven', '37284.00', '211201', '220430');
INSERT INTO `ref` VALUES ('IVE', 'Love Dive', '440067.00', '220405', '220430');
INSERT INTO `ref` VALUES ('Jinjin & Rocky', 'Restore', '57401.00', '220117', '220228');
INSERT INTO `ref` VALUES ('Just B', 'Just Begun', '51504.00', '220414', '220430');
INSERT INTO `ref` VALUES ('Kai', 'Peaches', '5373.00', '211130', '220131');
INSERT INTO `ref` VALUES ('Kang Hyewon', 'Winter Special Album: W', '18305.00', '220104', '220131');
INSERT INTO `ref` VALUES ('Kep1er', 'First Impact', '271048.00', '220103', '220430');
INSERT INTO `ref` VALUES ('Kihyun', 'Voyager', '141407.00', '220315', '220430');
INSERT INTO `ref` VALUES ('Kim Jaehwan', 'The Letter', '9639.00', '211228', '220131');
INSERT INTO `ref` VALUES ('Kim Junsu', 'Dimension', '55470.00', '220317', '220430');
INSERT INTO `ref` VALUES ('Kim Sungkyu', 'Savior', '28082.00', '220422', '220430');
INSERT INTO `ref` VALUES ('Kim Wooseok', 'Reve: 3rd Desire', '67957.00', '220307', '220331');
INSERT INTO `ref` VALUES ('Kim Yohan', 'Illusoin', '51754.00', '220110', '220131');
INSERT INTO `ref` VALUES ('Kingdom', 'History of Kingdom: Pt. 4: Dann', '19450.00', '220331', '220430');
INSERT INTO `ref` VALUES ('Kwon Eunbi', 'Color', '55923.00', '220404', '220430');
INSERT INTO `ref` VALUES ('Kyuhyun', 'Love Story (4 Season Project ?)', '37215.00', '220125', '220228');
INSERT INTO `ref` VALUES ('Lee Seokhoon', 'Same Spot', '7673.00', '220324', '220331');
INSERT INTO `ref` VALUES ('Lee Seungyoon', 'Even if it becomes ruins', '7640.00', '211124', '220228');
INSERT INTO `ref` VALUES ('Lisa', 'Lalisa', '73336.00', '210910', '220430');
INSERT INTO `ref` VALUES ('LUNA', 'Moonlight', '3705.00', '220117', '220131');
INSERT INTO `ref` VALUES ('Max Changmin', 'Devil', '21831.00', '220113', '220228');
INSERT INTO `ref` VALUES ('Mirae', 'Marvelous', '48067.00', '220112', '220131');
INSERT INTO `ref` VALUES ('Miyeon', 'My', '90064.00', '220427', '220430');
INSERT INTO `ref` VALUES ('Monsta X', 'No Limit', '23015.00', '211119', '220228');
INSERT INTO `ref` VALUES ('Monsta X', 'Shape of Love', '284668.00', '220426', '220430');
INSERT INTO `ref` VALUES ('Moonbin & Sanha', 'Refuge', '144205.00', '220315', '220430');
INSERT INTO `ref` VALUES ('Moonbyul', '6equence', '78120.00', '220119', '220228');
INSERT INTO `ref` VALUES ('Moonbyul', 'CITT: Cheese in the Trap', '86508.00', '220428', '220430');
INSERT INTO `ref` VALUES ('NCT 127', 'Sticker', '31194.00', '210917', '220430');
INSERT INTO `ref` VALUES ('NCT 127', 'Favorite', '30331.00', '211025', '220331');
INSERT INTO `ref` VALUES ('NCT 2021', 'Universe', '118633.00', '211214', '220430');
INSERT INTO `ref` VALUES ('NCT Dream', 'Glitch Mode', '1649993.00', '220328', '220430');
INSERT INTO `ref` VALUES ('NINE.i', 'New World', '3618.00', '220330', '220430');
INSERT INTO `ref` VALUES ('NMIXX', 'Ad Mare', '406936.00', '220222', '220430');
INSERT INTO `ref` VALUES ('NU\'EST', 'Need & Bubble: Nu\'est the Best Album', '63446.00', '220315', '220331');
INSERT INTO `ref` VALUES ('Oh My Girl', 'Real Love', '66912.00', '220328', '220430');
INSERT INTO `ref` VALUES ('Omega X', 'Love Me Like', '86941.00', '220105', '220131');
INSERT INTO `ref` VALUES ('Onew', 'Dice', '119006.00', '220411', '220430');
INSERT INTO `ref` VALUES ('ONEWE', 'Planet Nine: Voyager', '18075.00', '220104', '220228');
INSERT INTO `ref` VALUES ('ONF', 'Goosebumps', '4396.00', '211203', '220131');
INSERT INTO `ref` VALUES ('OnlyOneOf', 'Instint, Pt.2', '49362.00', '220114', '220131');
INSERT INTO `ref` VALUES ('P1Harmony', 'Disharmony: Find Out', '91969.00', '220103', '220131');
INSERT INTO `ref` VALUES ('Pentagon', 'In:Vite U', '90114.00', '220124', '220228');
INSERT INTO `ref` VALUES ('Purple Kiss', 'Memem', '32266.00', '220329', '220331');
INSERT INTO `ref` VALUES ('Ravi', 'Love & Fight', '10359.00', '220208', '220228');
INSERT INTO `ref` VALUES ('Red Velvet', 'The Reve Festival 2022: Feel My Rhythm', '560838.00', '220321', '220430');
INSERT INTO `ref` VALUES ('Rocket Punch', 'Yellow Punch', '20055.00', '220228', '220430');
INSERT INTO `ref` VALUES ('Seventeen', 'Attacca', '30049.00', '211022', '220430');
INSERT INTO `ref` VALUES ('Solar', 'Face', '43599.00', '220316', '220430');
INSERT INTO `ref` VALUES ('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '56940.00', '211227', '220131');
INSERT INTO `ref` VALUES ('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '12971.00', '211227', '220331');
INSERT INTO `ref` VALUES ('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '5974.00', '211227', '220331');
INSERT INTO `ref` VALUES ('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '74162.00', '211227', '220331');
INSERT INTO `ref` VALUES ('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '74087.00', '211227', '220331');
INSERT INTO `ref` VALUES ('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '41833.00', '211227', '220331');
INSERT INTO `ref` VALUES ('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '5265.00', '211227', '220131');
INSERT INTO `ref` VALUES ('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '62545.00', '211227', '220331');
INSERT INTO `ref` VALUES ('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '14336.00', '211227', '220131');
INSERT INTO `ref` VALUES ('SMTOWN', '2021 Winter SMTOWN: SMCU Express', '2218.00', '211227', '220131');
INSERT INTO `ref` VALUES ('Suho', 'Gray Suit', '186465.00', '220404', '220430');
INSERT INTO `ref` VALUES ('StayC', 'Young-Luv.com', '182131.00', '220221', '220430');
INSERT INTO `ref` VALUES ('Stray Kids', 'Christmas EveL', '14418.00', '211129', '220430');
INSERT INTO `ref` VALUES ('Stray Kids', 'Oddinary', '1000088.00', '220318', '220430');
INSERT INTO `ref` VALUES ('Super Junior', 'The Road: Winter for Spring', '142663.00', '220228', '220430');
INSERT INTO `ref` VALUES ('Super Junior - D&E', 'Countdown Zero (Epilogue)', '8458.00', '211209', '220131');
INSERT INTO `ref` VALUES ('Taeyeon', 'INVU', '179611.00', '220214', '220430');
INSERT INTO `ref` VALUES ('Tempest', 'It\'s Me, It\'s We', '82307.00', '220302', '220430');
INSERT INTO `ref` VALUES ('Tan', 'Limited Edition \'1TAN\'', '8870.00', '220310', '220430');
INSERT INTO `ref` VALUES ('The Boyz', 'Maverick', '5566.00', '211101', '220228');
INSERT INTO `ref` VALUES ('The Boyz', 'Webtoon Level Up Alone (OST)', '10573.00', '220318', '220331');
INSERT INTO `ref` VALUES ('Treasure', 'The Second Step: Chapter One', '668539.00', '220215', '220430');
INSERT INTO `ref` VALUES ('Trendz', 'Blue Set Chapter 1. Tracks', '6170.00', '220105', '220131');
INSERT INTO `ref` VALUES ('Twice', 'Formula of Love: OT=<3', '8293.00', '211217', '220331');
INSERT INTO `ref` VALUES ('UP10TION', 'Novella', '31415.00', '220103', '220430');
INSERT INTO `ref` VALUES ('Verivery', 'Serioues O-Round 3: Whole', '97187.00', '220425', '220430');
INSERT INTO `ref` VALUES ('Victon', 'Chronograph', '60959.00', '220118', '220228');
INSERT INTO `ref` VALUES ('Viviz', 'Beam of Prism', '43638.00', '220210', '220228');
INSERT INTO `ref` VALUES ('Weeekly', 'Play Game: Awake', '81537.00', '220307', '220331');
INSERT INTO `ref` VALUES ('WEi', 'Love Pt. 1: First Love', '119853.00', '220316', '220331');
INSERT INTO `ref` VALUES ('Wheein', 'Whee', '69470.00', '220117', '220131');
INSERT INTO `ref` VALUES ('Wonho', 'Obsession', '56627.00', '220216', '220331');
INSERT INTO `ref` VALUES ('Wonpil', 'Pilmography', '33668.00', '220210', '220228');
INSERT INTO `ref` VALUES ('WJSN Chocome', 'Super Yuppers!', '15135.00', '220105', '220131');
INSERT INTO `ref` VALUES ('Younha', 'End Theory Final Ed.', '7001.00', '220330', '220331');
INSERT INTO `ref` VALUES ('Yoon Jisung', 'Miro', '6595.00', '220427', '220430');
INSERT INTO `ref` VALUES ('Younite', 'Youni-Birth', '21927.00', '220422', '220430');
INSERT INTO `ref` VALUES ('Yuju', 'Rec.', '22970.00', '220121', '220131');

-- ----------------------------
-- Procedure structure for topten
-- ----------------------------
DROP PROCEDURE IF EXISTS `topten`;
delimiter ;;
CREATE PROCEDURE `topten`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE year_value INT;
    DECLARE cur CURSOR FOR SELECT `year` FROM (SELECT YEAR(`Date Released`) AS `year` FROM ref GROUP BY YEAR(`Date Released`)) AS years;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO year_value;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SET @sql = CONCAT('
            SELECT COUNT(Artist) AS totalAlbums,
                   Artist,
                   Album,
                   SUM(`2022 Sales`) AS peralbumsales,
                   `Date Released`,
                   YEAR(ref.`Date Released`) AS refyear,
                   yearcolumn.`year`
            FROM ref
            LEFT JOIN (SELECT YEAR(`Date Released`) AS `year` FROM ref GROUP BY YEAR(`Date Released`)) AS yearcolumn ON yearcolumn.`year` = YEAR(ref.`Date Released`)
            WHERE YEAR(ref.`Date Released`) = ', year_value, '
            GROUP BY Artist, Album, YEAR(ref.`Date Released`)
            ORDER BY YEAR(ref.`Date Released`), SUM(`2022 Sales`) DESC
            LIMIT 10;
        ');

        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;

    END LOOP;

    CLOSE cur;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for YearBasedSelect
-- ----------------------------
DROP PROCEDURE IF EXISTS `YearBasedSelect`;
delimiter ;;
CREATE PROCEDURE `YearBasedSelect`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE year_value INT;
    DECLARE cur CURSOR FOR SELECT `year` FROM (SELECT YEAR(`Date Released`) AS `year` FROM ref GROUP BY YEAR(`Date Released`)) AS years;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO year_value;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SET @sql = CONCAT('
            SELECT COUNT(Artist) AS totalAlbums,
                   Artist,
                   Album,
                   SUM(`2022 Sales`) AS peralbumsales,
                   `Date Released`,
                   YEAR(ref.`Date Released`) AS refyear,
                   yearcolumn.`year`
            FROM ref
            LEFT JOIN (SELECT YEAR(`Date Released`) AS `year` FROM ref GROUP BY YEAR(`Date Released`)) AS yearcolumn ON yearcolumn.`year` = YEAR(ref.`Date Released`)
            WHERE YEAR(ref.`Date Released`) = ', year_value, '
            GROUP BY Artist, Album, YEAR(ref.`Date Released`)
            ORDER BY YEAR(ref.`Date Released`), SUM(`2022 Sales`) DESC;
        ');

        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;

    END LOOP;

    CLOSE cur;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
