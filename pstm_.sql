
DROP TABLE IF EXISTS `bom`;
CREATE TABLE `bom`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Product_Code` int(11) NULL DEFAULT NULL,
  `Item_ID` int(11) NULL DEFAULT NULL,
  `Quantity` decimal(11, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bom
-- ----------------------------

-- ----------------------------
-- Table structure for categiores
-- ----------------------------
DROP TABLE IF EXISTS `categiores`;
CREATE TABLE `categiores`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Cate_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cate_IMG` longblob NULL,
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IsActive` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for command_send
-- ----------------------------
DROP TABLE IF EXISTS `command_send`;
CREATE TABLE `command_send`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IP_Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Device_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Command` int(11) NULL DEFAULT NULL,
  `Date` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Not Finish',
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Start_IMG` longblob NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4298 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of command_send
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_ID` int(11) NULL DEFAULT NULL,
  `C_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `C_Card` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `C_Phone` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `C_Money` decimal(11, 2) NULL DEFAULT 0.00,
  `C_Point` int(11) NULL DEFAULT 0,
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Status` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 1, 'System Admin', '1', '01210446044', 0.00, 0, '', 1);

-- ----------------------------
-- Table structure for customer_history
-- ----------------------------
DROP TABLE IF EXISTS `customer_history`;
CREATE TABLE `customer_history`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_ID` int(11) NULL DEFAULT NULL,
  `Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Amount` float(11, 2) NULL DEFAULT NULL,
  `Date` date NULL DEFAULT NULL,
  `Time` time NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Shift_No` int(11) NULL DEFAULT NULL,
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer_history
-- ----------------------------

-- ----------------------------
-- Table structure for device_price
-- ----------------------------
DROP TABLE IF EXISTS `device_price`;
CREATE TABLE `device_price`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Device_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Device_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Game_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Hour_Price` decimal(11, 3) NULL DEFAULT NULL,
  `S_From` time(6) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of device_price
-- ----------------------------
INSERT INTO `device_price` VALUES (1, 'بلاي ستيشن', 'Room 1', 'فردي', 15.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (2, 'بلاي ستيشن', 'Room 1', 'زوجي', 20.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (3, 'بلاي ستيشن', 'Room 2', 'فردي', 15.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (4, 'بلاي ستيشن', 'Room 2', 'زوجي', 20.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (5, 'بلاي ستيشن', 'Room 3', 'فردي', 15.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (6, 'بلاي ستيشن', 'Room 3', 'زوجي', 20.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (7, 'بلاي ستيشن', 'Room 4', 'فردي', 15.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (8, 'بلاي ستيشن', 'Room 4', 'زوجي', 20.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (9, 'بلاي ستيشن', 'Room 5', 'فردي', 25.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (10, 'بلاي ستيشن', 'Room 5', 'زوجي', 30.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (11, 'بلاي ستيشن', 'Room 6', 'فردي', 25.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (12, 'بلاي ستيشن', 'Room 6', 'زوجي', 30.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (13, 'بلاي ستيشن', 'Room 7', 'فردي', 25.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (14, 'بلاي ستيشن', 'Room 7', 'زوجي', 30.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (15, 'بلاي ستيشن', 'Room 8', 'فردي', 25.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (16, 'بلاي ستيشن', 'Room 8', 'زوجي', 30.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (17, 'Table', 'Table 1', 'فردي', 0.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (18, 'Table', 'Table 1', 'زوجي', 0.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (19, 'Table', 'Table 2', 'فردي', 0.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (20, 'Table', 'Table 2', 'زوجي', 0.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (21, 'Table', 'Table 3', 'فردي', 0.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (22, 'Table', 'Table 3', 'زوجي', 0.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (23, 'Table', 'Table 4', 'فردي', 0.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (24, 'Table', 'Table 4', 'زوجي', 0.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (25, 'بلاي ستيشن', 'Room 9', 'فردي', 50.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (26, 'بلاي ستيشن', 'Room 9', 'زوجي', 60.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (27, 'بلاي ستيشن', 'Room 10', 'فردي', 50.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (28, 'بلاي ستيشن', 'Room 10', 'زوجي', 60.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (29, 'بلاي ستيشن', 'Room 11', 'فردي', 50.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (30, 'بلاي ستيشن', 'Room 11', 'زوجي', 60.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (31, 'بلاي ستيشن', 'Room 12', 'فردي', 50.000, '00:00:00.000000');
INSERT INTO `device_price` VALUES (32, 'بلاي ستيشن', 'Room 12', 'زوجي', 60.000, '00:00:00.000000');

-- ----------------------------
-- Table structure for devices
-- ----------------------------
DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Device_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Device_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IP_Address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Play_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Play_Price` decimal(11, 2) NULL DEFAULT NULL,
  `Start_Time` datetime NULL DEFAULT NULL,
  `End_Time` datetime NULL DEFAULT NULL,
  `Status_IMG` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'مغلق',
  `Status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'متاح',
  `Period` decimal(11, 2) NULL DEFAULT NULL,
  `Play_Cate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Order_No` int(11) NULL DEFAULT NULL,
  `Limit_Time` int(11) NULL DEFAULT NULL,
  `IsActive` tinyint(1) NULL DEFAULT NULL,
  `Kind` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Invitation` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MAC_Address` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Customer_ID` int(11) NULL DEFAULT NULL,
  `Deposit` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of devices
-- ----------------------------
INSERT INTO `devices` VALUES (1, 'بلاي ستيشن', 'Room 1', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 15, 1, 'Time', NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (2, 'بلاي ستيشن', 'Room 2', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 15, 1, 'Time', NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (3, 'بلاي ستيشن', 'Room 3', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 15, 1, 'Time', NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (4, 'بلاي ستيشن', 'Room 4', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 15, 1, 'Time', NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (5, 'بلاي ستيشن', 'Room 5', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 15, 1, 'Time', NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (6, 'بلاي ستيشن', 'Room 6', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 15, 1, 'Time', NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (7, 'بلاي ستيشن', 'Room 7', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 15, 1, 'Time', NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (8, 'بلاي ستيشن', 'Room 8', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 1, 1, 'Time', NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (9, 'Table', 'Table 1', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (10, 'Table', 'Table 2', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (11, 'Table', 'Table 3', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (12, 'Table', 'Table 4', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (13, 'بلاي ستيشن', 'Room 9', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 1, 1, 'Time', NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (14, 'بلاي ستيشن', 'Room 10', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 1, 1, 'Time', NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (15, 'بلاي ستيشن', 'Room 11', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 1, 1, 'Time', NULL, NULL, NULL, 0);
INSERT INTO `devices` VALUES (16, 'بلاي ستيشن', 'Room 12', '127.0.0.1', NULL, NULL, NULL, NULL, 'مغلق', 'متاح', NULL, NULL, NULL, 1, 1, 'Time', NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for discount_history
-- ----------------------------
DROP TABLE IF EXISTS `discount_history`;
CREATE TABLE `discount_history`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Invoice_No` int(11) NULL DEFAULT NULL,
  `Amount` decimal(11, 2) NULL DEFAULT NULL,
  `Reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Date` date NULL DEFAULT NULL,
  `Time` time NULL DEFAULT NULL,
  `Shift_No` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discount_history
-- ----------------------------

-- ----------------------------
-- Table structure for expenses_history
-- ----------------------------
DROP TABLE IF EXISTS `expenses_history`;
CREATE TABLE `expenses_history`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Expenses_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Expenses_Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Expenses_AMT` decimal(11, 2) NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Shift` int(11) NULL DEFAULT NULL,
  `TRX_Date` date NULL DEFAULT NULL,
  `TRX_Time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of expenses_history
-- ----------------------------

-- ----------------------------
-- Table structure for expenses_type
-- ----------------------------
DROP TABLE IF EXISTS `expenses_type`;
CREATE TABLE `expenses_type`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Expenses_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Expenses_Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of expenses_type
-- ----------------------------
INSERT INTO `expenses_type` VALUES (1, 'سلف', 'سلف موظفين');
INSERT INTO `expenses_type` VALUES (2, 'ضرائب', 'ملاهى');
INSERT INTO `expenses_type` VALUES (3, 'مصاريف تشغيل', 'كهرباء , مياه , غاز');
INSERT INTO `expenses_type` VALUES (4, 'قبض', 'قبض يومي للموظفين');

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_ID` int(11) NULL DEFAULT NULL,
  `Inv_No` int(11) NULL DEFAULT NULL,
  `Device_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Item_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Quantity` int(11) NULL DEFAULT NULL,
  `Price` decimal(11, 2) NULL DEFAULT NULL,
  `Amount` decimal(11, 2) NULL DEFAULT NULL,
  `Shift` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TRX_Date` date NULL DEFAULT NULL,
  `TRX_Time` timestamp NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of invoices
-- ----------------------------

-- ----------------------------
-- Table structure for issue_history
-- ----------------------------
DROP TABLE IF EXISTS `issue_history`;
CREATE TABLE `issue_history`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Product_ID` int(11) NULL DEFAULT NULL,
  `Item_ID` int(11) NULL DEFAULT NULL,
  `BOM_Quantity` decimal(11, 3) NULL DEFAULT NULL,
  `Order_Quantity` int(11) NULL DEFAULT NULL,
  `Issued_Quantity` decimal(11, 3) GENERATED ALWAYS AS ((`Order_Quantity` * `BOM_Quantity`)) VIRTUAL NULL,
  `TRX_Date` date NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of issue_history
-- ----------------------------

-- ----------------------------
-- Table structure for item_master
-- ----------------------------
DROP TABLE IF EXISTS `item_master`;
CREATE TABLE `item_master`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Group_ID` int(11) NULL DEFAULT NULL,
  `Code` int(11) NULL DEFAULT NULL,
  `Item_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Item_Price` decimal(10, 2) NULL DEFAULT NULL,
  `Table_Price` decimal(10, 2) NULL DEFAULT NULL,
  `Direct_Price` decimal(10, 2) NULL DEFAULT NULL,
  `IsProduct` tinyint(1) NULL DEFAULT NULL,
  `IsSales` tinyint(1) NULL DEFAULT NULL,
  `IsActive` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of item_master
-- ----------------------------

-- ----------------------------
-- Table structure for login_hist
-- ----------------------------
DROP TABLE IF EXISTS `login_hist`;
CREATE TABLE `login_hist`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NULL DEFAULT NULL,
  `UserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Date` date NULL DEFAULT NULL,
  `Time` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IPAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of login_hist
-- ----------------------------

-- ----------------------------
-- Table structure for mail_setting
-- ----------------------------
DROP TABLE IF EXISTS `mail_setting`;
CREATE TABLE `mail_setting`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mail_setting
-- ----------------------------
INSERT INTO `mail_setting` VALUES (1, 'Mail_Notification', 'True');
INSERT INTO `mail_setting` VALUES (2, 'Mail_Subject', 'تقرير الشيفت عن الفرع الأول');
INSERT INTO `mail_setting` VALUES (3, 'Mail_List', 'ahmed.nabil92@outlook.com');
INSERT INTO `mail_setting` VALUES (4, 'Discount_History', 'True');
INSERT INTO `mail_setting` VALUES (5, 'Expenses_History', 'True');
INSERT INTO `mail_setting` VALUES (6, 'Play_History', 'True');
INSERT INTO `mail_setting` VALUES (7, 'Purchasing_History', 'True');
INSERT INTO `mail_setting` VALUES (8, 'Sales_History', 'True');

-- ----------------------------
-- Table structure for market
-- ----------------------------
DROP TABLE IF EXISTS `market`;
CREATE TABLE `market`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Categories` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Item_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Item_Price` decimal(11, 2) NULL DEFAULT NULL,
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Inventory` tinyint(1) NULL DEFAULT 0,
  `IsActive` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of market
-- ----------------------------

-- ----------------------------
-- Table structure for market_history
-- ----------------------------
DROP TABLE IF EXISTS `market_history`;
CREATE TABLE `market_history`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Client_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Item_ID` int(11) NULL DEFAULT NULL,
  `Quantity` int(11) NULL DEFAULT NULL,
  `Price` decimal(11, 2) NULL DEFAULT NULL,
  `Amount` decimal(11, 2) GENERATED ALWAYS AS ((`Quantity` * `Price`)) STORED NULL,
  `TRX_Date` date NULL DEFAULT NULL,
  `TRX_Time` time NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Shift` int(11) NULL DEFAULT NULL,
  `Invoice_No` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of market_history
-- ----------------------------

-- ----------------------------
-- Table structure for offers
-- ----------------------------
DROP TABLE IF EXISTS `offers`;
CREATE TABLE `offers`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Devices` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Time_From` time NULL DEFAULT NULL,
  `Time_To` time NULL DEFAULT NULL,
  `Period` int(11) NULL DEFAULT NULL,
  `Play_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Price` decimal(11, 2) NULL DEFAULT NULL,
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IsActive` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of offers
-- ----------------------------

-- ----------------------------
-- Table structure for order_wait
-- ----------------------------
DROP TABLE IF EXISTS `order_wait`;
CREATE TABLE `order_wait`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Order_No` int(11) NULL DEFAULT NULL,
  `Device_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Item_ID` int(11) NULL DEFAULT NULL,
  `Quantity` int(11) NULL DEFAULT NULL,
  `Price` decimal(11, 2) NULL DEFAULT NULL,
  `Amount` decimal(11, 2) GENERATED ALWAYS AS ((`Price` * `Quantity`)) VIRTUAL NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_wait
-- ----------------------------

-- ----------------------------
-- Table structure for pc_info
-- ----------------------------
DROP TABLE IF EXISTS `pc_info`;
CREATE TABLE `pc_info`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PC_Serial` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BranchID` int(11) NULL DEFAULT NULL,
  `StorageID` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pc_info
-- ----------------------------
INSERT INTO `pc_info` VALUES (9, 'KE157-YPT6D-8ANG9-KWYK8-9T189-0E35B', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for per_list
-- ----------------------------
DROP TABLE IF EXISTS `per_list`;
CREATE TABLE `per_list`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ParentID` int(11) NULL DEFAULT NULL,
  `PermissionID` int(11) NULL DEFAULT NULL,
  `Permission_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Permission_Name_en-US` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `View` tinyint(1) NULL DEFAULT 1,
  `New` tinyint(1) NULL DEFAULT 1,
  `Edit` tinyint(1) NULL DEFAULT 1,
  `Delete` tinyint(1) NULL DEFAULT 1,
  `Print` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of per_list
-- ----------------------------
INSERT INTO `per_list` VALUES (1, 0, 1, 'الإعدادات', 'Setting', 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (2, 1, 11, 'إعدادات المستخدمين', 'User Setting', 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (3, 1, 12, 'التصاريح', 'Permissions', 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (4, 1, 13, 'تصاريح المستخدمين', 'User Permissions', 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (5, 1, 14, 'إعدادات الأجهزة', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (6, 1, 15, 'الأصناف و المنتجات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (7, 1, 16, 'أسعار اللعب', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (8, 1, 17, 'بنود المصروفات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (9, 0, 2, 'المبيعات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (10, 2, 21, 'التحكم في الأجهزة', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (11, 2, 22, 'الحجز', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (12, 2, 23, 'تقرير اللعب الحالي', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (13, 2, 24, 'تقرير الكافية الحالي', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (14, 2, 25, 'الشيفت الحالي', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (15, 0, 3, 'المشتريات والمخازن', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (16, 3, 31, 'تسجيل فاتورة مشتريات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (17, 3, 32, 'سجل فواتير الشراء', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (18, 3, 33, 'المخزون', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (19, 3, 34, 'سجل الخامات المسحوبة', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (20, 0, 4, 'المصروفات والشيفت', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (21, 4, 41, 'تسجيل مصروف', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (22, 4, 42, 'سجل المصروفات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (23, 4, 43, 'تقفيل الشيفت', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (24, 4, 44, 'سجل الشيفتات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (25, 0, 5, 'التقارير', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (26, 5, 51, 'سجل الفواتير', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (27, 5, 52, 'سجل اللعب', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (28, 5, 53, 'سجل المبيعات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (29, 5, 54, 'سجل الخزنة', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (30, 0, 6, 'الإحصائيات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (31, 6, 61, 'مقياس اللعب بالوقت', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (32, 6, 62, 'مقياس المبيعات بالكمية', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (33, 6, 63, 'مقياس اللعب بالجنية', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (34, 6, 64, 'مقياس المبيعات بالجنية', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (36, 1, 18, 'مكونات المنتجات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (37, 6, 65, 'مقياس المصروفات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (38, 6, 66, 'مقياس الأداء العام', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (39, 5, 55, 'سجل الدخول', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (40, 5, 56, 'سجل تشغيل البوكسات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (41, 5, 57, 'سجل التصاريح', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (42, 1, 19, 'إعدادات النظام', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (44, 2, 26, 'بيع مباشر', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (45, 21, 211, 'إضافة خصم', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (46, 21, 212, 'حذف', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (47, 5, 58, 'سجل الخصومات', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (48, 0, 7, 'العملاء', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (49, 7, 71, 'بيانات العملاء', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (51, 6, 67, 'مقياس الخامات المسحوبة', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (52, 1, 20, 'العروض', NULL, 1, 1, 1, 1, 1);
INSERT INTO `per_list` VALUES (53, 7, 72, 'سجل العملاء', NULL, 1, 1, 1, 1, 1);

-- ----------------------------
-- Table structure for permission_audit
-- ----------------------------
DROP TABLE IF EXISTS `permission_audit`;
CREATE TABLE `permission_audit`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PermissionID` int(11) NULL DEFAULT NULL,
  `Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `From` tinyint(1) NULL DEFAULT NULL,
  `To` tinyint(1) NULL DEFAULT NULL,
  `Date` date NULL DEFAULT NULL,
  `Time` time NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission_audit
-- ----------------------------

-- ----------------------------
-- Table structure for permission_type
-- ----------------------------
DROP TABLE IF EXISTS `permission_type`;
CREATE TABLE `permission_type`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ParentID` int(11) NULL DEFAULT NULL,
  `PermissionID` int(11) NULL DEFAULT NULL,
  `Permission_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `View` tinyint(1) NULL DEFAULT 0,
  `New` tinyint(1) NULL DEFAULT 0,
  `Edit` tinyint(1) NULL DEFAULT 0,
  `Delete` tinyint(1) NULL DEFAULT 0,
  `Print` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission_type
-- ----------------------------
INSERT INTO `permission_type` VALUES (1, 0, 1, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (2, 1, 11, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (3, 1, 12, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (4, 1, 13, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (5, 1, 14, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (6, 1, 15, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (7, 1, 16, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (8, 1, 17, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (9, 0, 2, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (10, 2, 21, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (11, 2, 22, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (12, 2, 23, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (13, 2, 24, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (14, 2, 25, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (15, 0, 3, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (16, 3, 31, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (17, 3, 32, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (18, 3, 33, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (19, 3, 34, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (20, 0, 4, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (21, 4, 41, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (22, 4, 42, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (23, 4, 43, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (24, 4, 44, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (25, 0, 5, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (26, 5, 51, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (27, 5, 52, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (28, 5, 53, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (29, 5, 54, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (30, 0, 6, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (31, 6, 61, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (32, 6, 62, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (33, 6, 63, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (34, 6, 64, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (35, 1, 18, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (36, 6, 65, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (37, 6, 66, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (38, 5, 55, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (39, 5, 56, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (40, 5, 57, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (41, 1, 19, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (42, 2, 26, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (43, 21, 211, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (44, 21, 212, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (45, 5, 58, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (46, 0, 7, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (47, 7, 71, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (48, 6, 67, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (49, 1, 20, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (50, 7, 72, 'مدير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (51, 0, 1, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (52, 1, 11, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (53, 1, 12, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (54, 1, 13, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (55, 1, 14, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (56, 1, 15, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (57, 1, 16, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (58, 1, 17, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (59, 0, 2, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (60, 2, 21, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (61, 2, 22, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (62, 2, 23, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (63, 2, 24, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (64, 2, 25, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (65, 0, 3, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (66, 3, 31, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (67, 3, 32, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (68, 3, 33, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (69, 3, 34, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (70, 0, 4, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (71, 4, 41, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (72, 4, 42, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (73, 4, 43, 'كاشير', 1, 1, 0, 0, 1);
INSERT INTO `permission_type` VALUES (74, 4, 44, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (75, 0, 5, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (76, 5, 51, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (77, 5, 52, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (78, 5, 53, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (79, 5, 54, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (80, 0, 6, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (81, 6, 61, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (82, 6, 62, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (83, 6, 63, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (84, 6, 64, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (85, 1, 18, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (86, 6, 65, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (87, 6, 66, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (88, 5, 55, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (89, 5, 56, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (90, 5, 57, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (91, 1, 19, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (92, 2, 26, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (93, 21, 211, 'كاشير', 0, 1, 0, 0, 0);
INSERT INTO `permission_type` VALUES (94, 21, 212, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (95, 5, 58, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (96, 0, 7, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (97, 7, 71, 'كاشير', 1, 1, 1, 1, 1);
INSERT INTO `permission_type` VALUES (98, 6, 67, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (99, 1, 20, 'كاشير', 0, 0, 0, 0, 0);
INSERT INTO `permission_type` VALUES (100, 7, 72, 'كاشير', 1, 1, 1, 1, 1);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ParentID` int(11) NULL DEFAULT NULL,
  `PermissionID` int(11) NULL DEFAULT NULL,
  `Username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `View` tinyint(1) NULL DEFAULT 0,
  `New` tinyint(1) NULL DEFAULT 0,
  `Edit` tinyint(1) NULL DEFAULT 0,
  `Delete` tinyint(1) NULL DEFAULT 0,
  `Print` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1111 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (311, 0, 1, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (312, 1, 11, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (313, 1, 12, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (314, 1, 13, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (315, 1, 14, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (316, 1, 15, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (317, 1, 16, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (318, 1, 17, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (319, 0, 2, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (320, 2, 21, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (321, 2, 22, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (322, 2, 23, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (323, 2, 24, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (324, 2, 25, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (325, 0, 3, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (326, 3, 31, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (327, 3, 32, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (328, 3, 33, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (329, 3, 34, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (330, 0, 4, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (331, 4, 41, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (332, 4, 42, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (333, 4, 43, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (334, 4, 44, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (335, 0, 5, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (336, 5, 51, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (337, 5, 52, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (338, 5, 53, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (339, 5, 54, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (340, 0, 6, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (341, 6, 61, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (342, 6, 62, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (343, 6, 63, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (344, 6, 64, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (541, 1, 19, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (543, 6, 65, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (544, 6, 66, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (643, 5, 55, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (644, 5, 56, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (645, 5, 57, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (646, 1, 18, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (685, 2, 26, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (687, 21, 211, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (688, 21, 212, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (730, 5, 58, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (836, 0, 7, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (837, 7, 71, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (838, 6, 67, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (887, 1, 20, 'System Admin', 1, 1, 1, 1, 1);
INSERT INTO `permissions` VALUES (889, 7, 72, 'System Admin', 1, 1, 1, 1, 1);

-- ----------------------------
-- Table structure for play_history
-- ----------------------------
DROP TABLE IF EXISTS `play_history`;
CREATE TABLE `play_history`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Device_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Play_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Hour_Price` decimal(11, 2) NULL DEFAULT NULL,
  `Start_Time` datetime NULL DEFAULT NULL,
  `End_Time` datetime NULL DEFAULT NULL,
  `Actual_End_Time` datetime NULL DEFAULT NULL,
  `Play_Time` int(11) NULL DEFAULT NULL,
  `Cost` decimal(11, 2) NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Shift_No` int(11) NULL DEFAULT NULL,
  `Invoice_No` int(11) NULL DEFAULT NULL,
  `TRX_Date` date NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of play_history
-- ----------------------------

-- ----------------------------
-- Table structure for play_wait
-- ----------------------------
DROP TABLE IF EXISTS `play_wait`;
CREATE TABLE `play_wait`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Order_No` int(11) NULL DEFAULT NULL,
  `Device_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Start_Time` datetime NULL DEFAULT NULL,
  `End_Time` datetime NULL DEFAULT NULL,
  `Period` int(11) NULL DEFAULT NULL,
  `Cost` decimal(11, 2) NULL DEFAULT NULL,
  `Play_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Play_Price` decimal(11, 2) NULL DEFAULT NULL,
  `User_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Shift` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of play_wait
-- ----------------------------

-- ----------------------------
-- Table structure for print_setting
-- ----------------------------
DROP TABLE IF EXISTS `print_setting`;
CREATE TABLE `print_setting`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of print_setting
-- ----------------------------
INSERT INTO `print_setting` VALUES (1, 'Printer_Status', 'False');
INSERT INTO `print_setting` VALUES (2, 'Print_Sales_Invoice', 'True');
INSERT INTO `print_setting` VALUES (3, 'Print_Direct_Sales', 'True');
INSERT INTO `print_setting` VALUES (4, 'Print_Quantity', '1');
INSERT INTO `print_setting` VALUES (5, 'Ask_For_Print_Again', 'False');

-- ----------------------------
-- Table structure for purchasing
-- ----------------------------
DROP TABLE IF EXISTS `purchasing`;
CREATE TABLE `purchasing`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `InvoiceNo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Barcode` int(11) NULL DEFAULT NULL,
  `Quantity` decimal(11, 3) NULL DEFAULT NULL,
  `Price` decimal(11, 3) NULL DEFAULT NULL,
  `Amount` decimal(11, 3) GENERATED ALWAYS AS ((`Quantity` * `Price`)) VIRTUAL NULL,
  `INV_Date` date NULL DEFAULT NULL,
  `INV_Time` time NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Shift` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of purchasing
-- ----------------------------

-- ----------------------------
-- Table structure for receipt
-- ----------------------------
DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Image` longblob NULL,
  `Footer` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
-- Table structure for reservation
-- ----------------------------
DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Device_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Start_Time` datetime NULL DEFAULT NULL,
  `Client_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Mobile_No` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reservation
-- ----------------------------

-- ----------------------------
-- Table structure for services_history
-- ----------------------------
DROP TABLE IF EXISTS `services_history`;
CREATE TABLE `services_history`  (
  `ID` int(11) NOT NULL,
  `Invoice_No` int(11) NULL DEFAULT NULL,
  `INV_AMT` decimal(11, 2) NULL DEFAULT NULL,
  `Amount` decimal(11, 2) NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Date` date NULL DEFAULT NULL,
  `Time` time NULL DEFAULT NULL,
  `Shift_No` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of services_history
-- ----------------------------

-- ----------------------------
-- Table structure for shift_mgt
-- ----------------------------
DROP TABLE IF EXISTS `shift_mgt`;
CREATE TABLE `shift_mgt`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Shift_No` int(11) NULL DEFAULT NULL,
  `Shift_Date` date NULL DEFAULT NULL,
  `Shift_From` datetime NULL DEFAULT NULL,
  `Shift_To` datetime NULL DEFAULT NULL,
  `Shift_Open` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Shift_Close` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `First_Invoice` int(11) NULL DEFAULT NULL,
  `Start_AMT` decimal(11, 2) NULL DEFAULT 0.00,
  `Purchase_AMT` decimal(11, 2) NULL DEFAULT 0.00,
  `Sales_AMT` decimal(11, 2) NULL DEFAULT 0.00,
  `Expenses_AMT` decimal(11, 2) NULL DEFAULT 0.00,
  `Playstation` decimal(11, 2) NULL DEFAULT 0.00,
  `Discount` decimal(11, 2) NULL DEFAULT 0.00,
  `Credit_AMT` decimal(11, 2) NULL DEFAULT 0.00,
  `Customer_Add` decimal(11, 2) NULL DEFAULT 0.00,
  `Remain_AMT` decimal(11, 2) GENERATED ALWAYS AS (((((`Start_AMT` + `Sales_AMT`) + `Playstation`) + `Customer_Add`) - ((((`Expenses_AMT` + `Discount`) + `Credit_AMT`) + `Customer_Minus`) + `Customer_Credit`))) STORED NULL,
  `Actual_Amt` decimal(11, 2) NULL DEFAULT 0.00,
  `Customer_Minus` decimal(11, 2) NULL DEFAULT 0.00,
  `Customer_Credit` decimal(11, 2) NULL DEFAULT 0.00,
  `Different` decimal(11, 2) GENERATED ALWAYS AS ((`Actual_Amt` - ((((`Start_AMT` + `Sales_AMT`) + `Playstation`) + `Customer_Add`) - (((`Expenses_AMT` + `Discount`) + `Customer_Minus`) + `Customer_Credit`)))) VIRTUAL NULL,
  `Status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Last_Invoice` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shift_mgt
-- ----------------------------
INSERT INTO `shift_mgt` VALUES (1, 1, '2022-11-17', '2022-11-17 21:28:38', '2022-12-26 20:30:01', 'System Admin', 'System Admin', 1, 0.00, 0.00, 0.00, 0.00, 4565.00, 0.00, 0.00, 0.00, DEFAULT, 0.00, 0.00, 0.00, DEFAULT, 'Close', 24);

-- ----------------------------
-- Table structure for stat_img
-- ----------------------------
DROP TABLE IF EXISTS `stat_img`;
CREATE TABLE `stat_img`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Dev_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Dev_Stat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Dev_IMG` longblob NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stat_img
-- ----------------------------
-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Barcode` int(11) NULL DEFAULT NULL,
  `Quantity` decimal(11, 3) NULL DEFAULT NULL,
  `Price` decimal(11, 3) GENERATED ALWAYS AS ((`Amount` / `Quantity`)) VIRTUAL NULL,
  `Amount` decimal(11, 3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stock
-- ----------------------------

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES (2, 'Alarm_System', 'True');
INSERT INTO `system_config` VALUES (6, 'Name', 'PlayStation');
INSERT INTO `system_config` VALUES (9, 'DB_Version', '2');
INSERT INTO `system_config` VALUES (11, 'Round_Time_Value', '1');
INSERT INTO `system_config` VALUES (12, 'Cancel Time', 'True');
INSERT INTO `system_config` VALUES (13, 'Round_Money_Value', '1.00');
INSERT INTO `system_config` VALUES (14, 'Round_Money_UP', 'True');
INSERT INTO `system_config` VALUES (23, 'Round_Money_Status', 'True');
INSERT INTO `system_config` VALUES (24, 'Round_Time_Status', 'True');
INSERT INTO `system_config` VALUES (25, 'Round_Time_Up', 'True');
INSERT INTO `system_config` VALUES (26, 'Backup_Direction', 'D:\\Project\\Released\\PlayStation Time Management\\Backup\\');
INSERT INTO `system_config` VALUES (27, 'Shift_Report_Direction', 'D:\\Project\\Released\\PlayStation Time Management\\Shift_Close.repx');
INSERT INTO `system_config` VALUES (28, 'Sales_Report_Direction', 'D:\\Project\\Released\\PlayStation Time Management\\Sales_Invoice.repx');
INSERT INTO `system_config` VALUES (29, 'Stock_Report_Direction', 'D:\\Project\\Released\\PlayStation Time Management\\Stock.repx');
INSERT INTO `system_config` VALUES (30, 'Services_Value', '0');

-- ----------------------------
-- Table structure for time
-- ----------------------------
DROP TABLE IF EXISTS `time`;
CREATE TABLE `time`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Time_Check` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 225417 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of time
-- ----------------------------

-- ----------------------------
-- Table structure for time_history
-- ----------------------------
DROP TABLE IF EXISTS `time_history`;
CREATE TABLE `time_history`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRX_Date` date NULL DEFAULT NULL,
  `OLD_Time` datetime NULL DEFAULT NULL,
  `New_Time` datetime NULL DEFAULT NULL,
  `Remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40221 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of time_history
-- ----------------------------

-- ----------------------------
-- Table structure for trx_history
-- ----------------------------
DROP TABLE IF EXISTS `trx_history`;
CREATE TABLE `trx_history`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRX_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TRX_Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TRX_Date` date NULL DEFAULT NULL,
  `TRX_Time` time NULL DEFAULT NULL,
  `Amount` decimal(11, 3) NULL DEFAULT NULL,
  `Shift` int(11) NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Reference` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of trx_history
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Permission_Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Skinname` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IsActive` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'System Admin', '159753', 'System Admin', 'مدير', 'WXI', 1);

-- ----------------------------
-- Procedure structure for Add_Discount
-- ----------------------------
DROP PROCEDURE IF EXISTS `Add_Discount`;
delimiter ;;
CREATE PROCEDURE `Add_Discount`(IN `Invoice_No` int,IN `I_Username` text,IN `I_Reason` text,IN `I_AMT` DECIMAL)
BEGIN
#Routine body goes here...
DECLARE O_Shift_No INT;

SELECT MAX(shift_mgt.Shift_No) INTO O_Shift_No FROM shift_mgt WHERE shift_mgt.`Status` = 'Open';

INSERT INTO discount_history (discount_history.Invoice_No, discount_history.Amount, discount_history.Reason, discount_history.Username, discount_history.Date, discount_history.Time, discount_history.Shift_No )
VALUES
(Invoice_No, I_AMT,I_Reason,I_Username,CURRENT_DATE(),CURRENT_TIME(),Check_Shift(I_Username));

INSERT INTO trx_history( trx_history.TRX_Type,trx_history.TRX_Name,trx_history.TRX_Date,trx_history.TRX_Time,trx_history.Amount,trx_history.Shift,trx_history.Username) VALUES ('خصم',I_Reason,CURRENT_DATE(),CURRENT_TIME(),I_AMT,Check_Shift(I_Username),I_Username) ;

INSERT INTO invoices (
invoices.Inv_No,
invoices.Item_Name,
invoices.Quantity,
invoices.Price,
invoices.Amount,
invoices.Shift,
invoices.TRX_Date,
invoices.TRX_Time,
invoices.Username
)
VALUES
( Invoice_No,'خصم',1,(I_AMT * -1),(I_AMT * -1),Check_Shift(I_Username),CURRENT_DATE(),CURRENT_TIME(),I_Username);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Add_Money
-- ----------------------------
DROP PROCEDURE IF EXISTS `Add_Money`;
delimiter ;;
CREATE PROCEDURE `Add_Money`(IN `I_Device_Name` text,IN `I_Money` int)
BEGIN
	#Routine body goes here...
	UPDATE devices SET devices.Deposit = devices.Deposit + I_Money WHERE devices.Device_Name = I_Device_Name;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Add_Time
-- ----------------------------
DROP PROCEDURE IF EXISTS `Add_Time`;
delimiter ;;
CREATE PROCEDURE `Add_Time`(IN `I_Device_Name` text,IN `I_Time_Minute` int,IN `I_Username` text,OUT `O_Result` text)
BEGIN

#Routine body goes here...

DECLARE O_IP_Address text;
DECLARE O_Order_No int;
DECLARE O_Play_Type text;
DECLARE O_Old_End_Time datetime;
DECLARE O_Shift_No INT;
DECLARE O_Money_Round DECIMAL(11,2);
DECLARE O_Command INT;

SELECT system_config.`Value` INTO O_Money_Round FROM system_config WHERE system_config.Description = 'Round_Money_Value';
SELECT MAX(shift_mgt.Shift_No) INTO O_Shift_No FROM shift_mgt WHERE shift_mgt.`Status` = 'Open';

SELECT devices.End_Time INTO O_Old_End_Time FROM devices WHERE devices.Device_Name = I_Device_Name;
UPDATE devices SET devices.End_Time = TIMESTAMPADD(MINUTE,I_Time_Minute,O_Old_End_Time) , devices.Period = devices.Period + I_Time_Minute WHERE devices.Device_Name = I_Device_Name;
SELECT devices.IP_Address INTO O_IP_Address FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.Order_No INTO O_Order_No FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.Play_Type INTO O_Play_Type FROM devices WHERE devices.Device_Name = I_Device_Name;

UPDATE devices SET devices.Status_IMG = O_Play_Type WHERE devices.Device_Name = I_Device_Name;

INSERT INTO play_wait (
play_wait.Order_No,
play_wait.Device_Name,
play_wait.Start_Time,
play_wait.End_Time,
play_wait.Period,
play_wait.Cost,
play_wait.Play_Type,
play_wait.Play_Price,
play_wait.User_Name,
play_wait.Shift
)
VALUES
( O_Order_No, I_Device_Name, O_Old_End_Time, TIMESTAMPADD( MINUTE, I_Time_Minute, O_Old_End_Time ), I_Time_Minute,(mround(((I_Time_Minute * Get_Play_Price(I_Device_Name, O_Play_Type,I_Time_Minute,CURRENT_TIME())) / 60), O_Money_Round)), O_Play_Type, Get_Play_Price(I_Device_Name, O_Play_Type,I_Time_Minute,CURRENT_TIME()), I_Username, Check_Shift(I_Username));

SET O_Command = PS_Control(I_Device_Name, I_Username, 'ON', 'Add Time');

SET O_Result = 'تم إضافة الوقت';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Admin_Login
-- ----------------------------
DROP PROCEDURE IF EXISTS `Admin_Login`;
delimiter ;;
CREATE PROCEDURE `Admin_Login`(IN `I_ID` int,IN `I_Password` text,OUT `O_Result` text)
BEGIN
#Routine body goes here...
SELECT users.IsActive INTO O_Result FROM users WHERE users.UserID = I_ID AND users.`Password` = I_Password AND users.Permission_Type = 'مدير';
IF(O_Result = '1') THEN
SET O_Result = O_Result;
ELSE
SET O_Result = O_Result;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Cancel_Order
-- ----------------------------
DROP PROCEDURE IF EXISTS `Cancel_Order`;
delimiter ;;
CREATE PROCEDURE `Cancel_Order`(IN `I_Order_ID` int)
BEGIN
#Routine body goes here...
DELETE FROM order_wait WHERE order_wait.ID = I_Order_ID;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Cancel_Start_Time
-- ----------------------------
DROP PROCEDURE IF EXISTS `Cancel_Start_Time`;
delimiter ;;
CREATE PROCEDURE `Cancel_Start_Time`(IN `I_Order_No` int, OUT `O_Result` text,IN `I_Username` text)
BEGIN
#Routine body goes here...

DECLARE O_Start_Time datetime;
DECLARE O_IP_Address text;
DECLARE O_Device_Name text;
DECLARE O_Command INT;

SELECT devices.Start_Time INTO O_Start_Time FROM devices WHERE devices.Order_No = I_Order_No;
SELECT devices.IP_Address INTO O_IP_Address FROM devices WHERE devices.Order_No = I_Order_No;
SELECT devices.Device_Name INTO O_Device_Name FROM devices WHERE devices.Order_No = I_Order_No;

IF(TIMESTAMPDIFF(MINUTE,O_Start_Time,CURRENT_TIMESTAMP()) <= 5) THEN
	SET O_Result = 'تم إلغاء الوقت .';

	DELETE FROM play_wait WHERE play_wait.Order_No = I_Order_No;
	DELETE FROM order_wait WHERE order_wait.Order_No = I_Order_No;

	UPDATE devices
	SET devices.Play_Type = NULL,
	devices.Play_Price = NULL,
	devices.Start_Time = NULL,
	devices.End_Time = NULL,
	devices.Status_IMG = 'مغلق',
	devices.`Status` = 'متاح',
	devices.Period = NULL,
	devices.Play_Cate = NULL,
	devices.Order_No = NULL,devices.Invitation = NULL,devices.MAC_Address = NULL,devices.Customer_ID = NULL
	WHERE	devices.Order_No = I_Order_No;

	SET O_Command = PS_Control(O_Device_Name, I_Username, 'OFF', 'Cancel Time');
ELSE
	SET O_Result = 'لا يمكن الإلغاء . مر 5 دقائق أو أكثر .';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Cancel_Time
-- ----------------------------
DROP PROCEDURE IF EXISTS `Cancel_Time`;
delimiter ;;
CREATE PROCEDURE `Cancel_Time`(IN `O_Time_ID` int,IN `I_Username` text, IN `I_Shift_No` INT)
BEGIN
#Routine body goes here...
DELETE FROM play_wait WHERE play_wait.ID = O_Time_ID;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Change_User_Password
-- ----------------------------
DROP PROCEDURE IF EXISTS `Change_User_Password`;
delimiter ;;
CREATE PROCEDURE `Change_User_Password`(IN `I_Username` text,IN `I_Old_Password` text,IN `I_New_Password` text,OUT `O_Result` text)
BEGIN
#Routine body goes here...
SELECT users.UserID INTO O_Result FROM users WHERE users.Username = I_Username AND users.`Password` = I_Old_Password;
if(ISNULL(O_Result)) THEN
SET O_Result = 'يرجي التأكد من الباسورد .';
ELSE
UPDATE users SET users.`Password` = I_New_Password WHERE users.UserID = O_Result;
SET O_Result = 'تم تغيير الباسوورد .';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Check_Close
-- ----------------------------
DROP PROCEDURE IF EXISTS `Check_Close`;
delimiter ;;
CREATE PROCEDURE `Check_Close`(IN `I_Order_No` int,IN `I_Device_Name` text,OUT `O_Result` text)
BEGIN

#Routine body goes here...

DECLARE Device_Kind text;
DECLARE Play_Kind text;
DECLARE Device_End_Time datetime;

SELECT devices.Kind INTO Device_Kind FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.Play_Cate INTO Play_Kind FROM devices WHERE devices.Device_Name = I_Device_Name;

IF(Device_Kind = 'Time') THEN
	IF(Play_Kind = 'وقت محدد') THEN
		SELECT devices.End_Time INTO Device_End_Time FROM devices WHERE devices.Device_Name = I_Device_Name;
			if(Device_End_Time > NOW()) THEN
				SET O_Result = '1';
			ELSE
				SET O_Result = '2';
			END IF;
	ELSEIF (Play_Kind = 'مفتوح') THEN
		SET O_Result = '3';
	ELSEIF(Play_Kind = 'عرض') THEN
		SET O_Result = '4';
	END IF;
ELSE
	SET O_Result = '5';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Check_Dev_Type
-- ----------------------------
DROP PROCEDURE IF EXISTS `Check_Dev_Type`;
delimiter ;;
CREATE PROCEDURE `Check_Dev_Type`(IN `I_Device_Name` text,OUT `O_Device_Type` text,OUT `O_Mac_Address` text)
BEGIN

#Routine body goes here...

SELECT devices.Device_Type INTO O_Device_Type FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.MAC_Address INTO O_Mac_Address FROM devices WHERE devices.Device_Name = I_Device_Name;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Check_Login
-- ----------------------------
DROP PROCEDURE IF EXISTS `Check_Login`;
delimiter ;;
CREATE PROCEDURE `Check_Login`(IN `C_Emp_ID` text,
IN `C_Emp_Password` text,
IN `C_IP_Address` text,
OUT `C_Result` text,
OUT `C_Username` text,
OUT `C_Position` text,
OUT `O_Skinname` text)
BEGIN

#Routine body goes here...

SELECT users.IsActive INTO C_Result FROM users Where users.UserID = C_Emp_ID AND users.`Password` = C_Emp_Password;
SELECT users.Username INTO C_Username FROM users WHERE users.UserID = C_Emp_ID;
SELECT users.Position INTO C_Position FROM users WHERE users.UserID = C_Emp_ID;
SELECT users.Skinname INTO O_Skinname FROM users WHERE users.UserID = C_Emp_ID;

IF(ISNULL(C_Result)) 	THEN
	SET	C_Result = 'خطأ في كود المستخدم أو كلمة السر يرجي التأكد والمحاولة مرة أخري' ;
	INSERT INTO login_hist
	(login_hist.UserID,login_hist.UserName, login_hist.Date,login_hist.Time,login_hist.IPAddress,login_hist.Remark)
	VALUES
	(C_Emp_ID,C_Username,CURRENT_DATE(),CURRENT_TIME,C_IP_Address,'محاولة دخول خاطئة');
ELSEIF(C_Result = '0') THEN
	Set C_Result = 'تم تعطيل الحساب , يرجي التواصل مع المدير .';
	INSERT INTO login_hist
	(login_hist.UserID,login_hist.UserName,login_hist.Date,login_hist.Time,login_hist.IPAddress,login_hist.Remark)
	VALUES
	(C_Emp_ID,C_Username,CURRENT_DATE(),CURRENT_TIME,C_IP_Address,'محاولة دخول بحساب معطل');
ELSE
	Set C_Result = 'Login';
	INSERT INTO login_hist
	(login_hist.UserID,login_hist.UserName,login_hist.Date,login_hist.Time,login_hist.IPAddress,login_hist.Remark)
	VALUES
	(C_Emp_ID,C_Username,CURRENT_DATE(),CURRENT_TIME,C_IP_Address,'تم الدخول بنجاح');
END IF ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Check_Permission
-- ----------------------------
DROP PROCEDURE IF EXISTS `Check_Permission`;
delimiter ;;
CREATE PROCEDURE `Check_Permission`(IN `I_Username` text,IN `I_Type` text,IN `I_Formname` text,OUT `O_Result` INT)
BEGIN
#Routine body goes here...

if(I_Type = 'View') THEN
	SELECT permissions.`View` INTO O_Result FROM permissions LEFT JOIN per_list ON permissions.PermissionID = per_list.PermissionID WHERE permissions.Username = I_Username AND per_list.`Permission_Name` = I_Formname;
ELSEIF(I_Type = 'New') THEN
	SELECT permissions.New INTO O_Result FROM permissions LEFT JOIN per_list ON permissions.PermissionID = per_list.PermissionID WHERE permissions.Username = I_Username AND per_list.`Permission_Name` = I_Formname;
ELSEIF(I_Type = 'Edit') THEN
	SELECT permissions.Edit INTO O_Result FROM permissions LEFT JOIN per_list ON permissions.PermissionID = per_list.PermissionID WHERE permissions.Username = I_Username AND per_list.`Permission_Name` = I_Formname;
ELSEIF(I_Type = 'Delete') THEN
	SELECT permissions.`Delete` INTO O_Result FROM permissions LEFT JOIN per_list ON permissions.PermissionID = per_list.PermissionID WHERE permissions.Username = I_Username AND per_list.`Permission_Name` = I_Formname;
ELSEIF(I_Type = 'Print') THEN
	SELECT permissions.Print INTO O_Result FROM permissions LEFT JOIN per_list ON permissions.PermissionID = per_list.PermissionID WHERE permissions.Username = I_Username AND per_list.`Permission_Name` = I_Formname;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Check_Permission_Group_Exist
-- ----------------------------
DROP PROCEDURE IF EXISTS `Check_Permission_Group_Exist`;
delimiter ;;
CREATE PROCEDURE `Check_Permission_Group_Exist`(IN `I_Group_Name` text,OUT `Result` text)
BEGIN
#Routine body goes here...

SELECT DISTINCT(permission_type.Permission_Type) INTO Result FROM permission_type WHERE permission_type.Permission_Type = I_Group_Name;
if(ISNULL(Result)) THEN
	SET Result = 'True';
ELSE
	SET Result = 'False';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Check_PS_Status
-- ----------------------------
DROP PROCEDURE IF EXISTS `Check_PS_Status`;
delimiter ;;
CREATE PROCEDURE `Check_PS_Status`(IN `I_Device_Name` text,IN `I_Username` text)
BEGIN
#Routine body goes here...

DECLARE O_Device_Status text;
DECLARE O_IP_Address text;
DECLARE O_Start_Time datetime;
DECLARE Result INT;
DECLARE O_End_Time datetime;
DECLARE O_Command INT;

SELECT devices.Start_Time INTO O_Start_Time FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.End_Time INTO O_End_Time FROM devices Where devices.Device_Name = I_Device_Name;

IF(ISNULL(O_Start_Time)) THEN
	SET Result = Reset_Device(I_Device_Name);
ELSE
	SELECT devices.Status_IMG INTO O_Device_Status FROM devices WHERE devices.Device_Name = I_Device_Name;
	SELECT devices.IP_Address INTO O_IP_Address FROM devices WHERE devices.Device_Name = I_Device_Name;
END IF;

if(O_Device_Status != 'مغلق') THEN
	SET O_Command = PS_Control(I_Device_Name, I_Username, 'ON', 'Check');
END IF;

if(ISNULL(O_End_Time)) THEN
	SET O_Command = PS_Control(I_Device_Name, I_Username, 'ON', 'Check');
END IF;

IF(O_End_Time > CURRENT_TIMESTAMP()) THEN
	SET O_Command = PS_Control(I_Device_Name, I_Username, 'ON', 'Check');
END IF;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Check_Reservation
-- ----------------------------
DROP PROCEDURE IF EXISTS `Check_Reservation`;
delimiter ;;
CREATE PROCEDURE `Check_Reservation`(IN `I_Device_Name` text,OUT `O_Result` text)
BEGIN
#Routine body goes here...
SELECT MAX(reservation.Start_Time) INTO O_Result From reservation Where reservation.Device_Name = I_Device_Name AND reservation.Start_Time > CURRENT_TIMESTAMP() LIMIT 1;
IF	(ISNULL(O_Result)) 	THEN
SET	O_Result = 'لا يوجد حجز' ;
ELSE
Set O_Result = 'يوجد حجز' ;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for Check_Shift
-- ----------------------------
DROP FUNCTION IF EXISTS `Check_Shift`;
delimiter ;;
CREATE FUNCTION `Check_Shift`(`I_Username` text)
 RETURNS int(11)
  NO SQL 
BEGIN
#Routine body goes here...
DECLARE I_Shift_No INT;
DECLARE O_Start_AMT DECIMAL(11,2);
DECLARE O_Shift_ID INT;
DECLARE O_First_Invoice INT;
SELECT MAX(invoices.Inv_No)+1 INTO O_First_Invoice FROM invoices;
IF	(ISNULL(O_First_Invoice)) 	THEN
SET	O_First_Invoice = '1' ;
ELSE
Set O_First_Invoice = O_First_Invoice ;
END IF;
SELECT MAX(shift_mgt.ID) INTO O_Shift_ID FROM shift_mgt WHERE shift_mgt.`Status` = 'Close';
SELECT shift_mgt.Shift_No INTO I_Shift_No FROM shift_mgt Where shift_mgt.`Status` = 'Open';
SELECT shift_mgt.Remain_AMT INTO O_Start_AMT FROM shift_mgt WHERE shift_mgt.ID = O_Shift_ID;
IF(ISNULL(I_Shift_No)) 	THEN
SELECT MAX(shift_mgt.Shift_No)+1 INTO I_Shift_No FROM shift_mgt;
IF	(ISNULL(I_Shift_No)) 	THEN
SET	I_Shift_No = '1' ;
ELSE
Set I_Shift_No = I_Shift_No ;
END IF;
if(ISNULL(O_Start_AMT)) THEN
SET O_Start_AMT = 0;
END IF;
INSERT INTO shift_mgt (shift_mgt.Shift_No,shift_mgt.Shift_Date,shift_mgt.Shift_From,shift_mgt.Shift_Open,shift_mgt.First_Invoice,shift_mgt.Start_AMT,shift_mgt.`Status`)
VALUES
(O_Shift_No,CURRENT_DATE(),CURRENT_TIMESTAMP(),I_Username,O_First_Invoice,O_Start_AMT,'Open');
ELSE
SET I_Shift_No = I_Shift_No;
END IF;
RETURN I_Shift_No;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Close_Shift
-- ----------------------------
DROP PROCEDURE IF EXISTS `Close_Shift`;
delimiter ;;
CREATE PROCEDURE `Close_Shift`(IN `I_Username` text,IN `I_Credit_AMT` DECIMAL(11,2),IN `Actual_AMT` DECIMAL(11,2))
BEGIN
#Routine body goes here...
DECLARE O_Playstation decimal(11,2);
DECLARE O_Drinks DECIMAL(11,2);
DECLARE O_Purchasing decimal(11,2);
DECLARE O_Expenses decimal(11,2);
DECLARE O_Shift_No INT;
DECLARE O_Credit_AMT DECIMAL(11,2);
DECLARE O_Discount DECIMAL(11,2);
DECLARE O_Customer_Add DECIMAL(11,2);
DECLARE O_Customer_Minus DECIMAL(11,2);
DECLARE O_Customer_Credit DECIMAL(11,2);
DECLARE O_Last_Invoice INT;

SET O_Credit_AMT = I_Credit_AMT;
if(ISNULL(O_Credit_AMT)) THEN
SET O_Credit_AMT = 0;
END IF;

SELECT MAX(shift_mgt.Shift_No) INTO O_Shift_No FROM shift_mgt WHERE shift_mgt.`Status` = 'Open';
SELECT SUM(market_history.Amount) INTO O_Drinks FROM market_history WHERE market_history.Shift = O_Shift_No;
SELECT SUM(play_history.Cost) INTO O_Playstation FROM play_history WHERE play_history.Shift_No = O_Shift_No;
SELECT SUM(expenses_history.Expenses_AMT) INTO O_Expenses FROM expenses_history WHERE expenses_history.Shift = O_Shift_No;
SELECT SUM(trx_history.Amount) INTO O_Discount FROM trx_history WHERE trx_history.Shift = O_Shift_No AND trx_history.TRX_Type = 'خصم';
SELECT MAX(invoices.Inv_No) INTO O_Last_Invoice FROM invoices;
SELECT SUM(trx_history.Amount) INTO O_Customer_Add FROM trx_history WHERE trx_history.Shift = O_Shift_No AND trx_history.TRX_Type = 'عملاء' AND trx_history.TRX_Name = 'إضافة رصيد';
SELECT SUM(trx_history.Amount) INTO O_Customer_Minus FROM trx_history WHERE trx_history.Shift = O_Shift_No AND trx_history.TRX_Type = 'عملاء' AND trx_history.TRX_Name = 'سحب رصيد';
SELECT SUM(trx_history.Amount) INTO O_Customer_Credit FROM trx_history WHERE trx_history.Shift = O_Shift_No AND trx_history.TRX_Type = 'عملاء' AND trx_history.TRX_Name = 'مديونية';

if(ISNULL(O_Playstation))THEN
SET O_Playstation = 0;
END IF;
IF(ISNULL(O_Drinks)) THEN
SET O_Drinks = 0;
END IF;
IF (ISNULL(O_Purchasing)) THEN
SET O_Purchasing = 0;
END IF;
IF(ISNULL(O_Expenses)) THEN
SET O_Expenses = 0;
END IF;
IF(ISNULL(O_Discount))Then
SET O_Discount = 0;
END IF;
IF(ISNULL(O_Customer_Add)) THEN
SET O_Customer_Add = 0;
END IF;
IF(ISNULL(O_Customer_Minus)) THEN
SET O_Customer_Minus = 0;
END IF;
IF(ISNULL(O_Customer_Credit)) THEN
SET O_Customer_Credit = 0;
END IF;
UPDATE shift_mgt
SET shift_mgt.Shift_To = CURRENT_TIMESTAMP (),
shift_mgt.Shift_Close = I_Username,
shift_mgt.Purchase_AMT = O_Purchasing,
shift_mgt.Sales_AMT = O_Drinks,
shift_mgt.Expenses_AMT = O_Expenses,
shift_mgt.Playstation = O_Playstation,
shift_mgt.Credit_AMT = O_Credit_AMT,
shift_mgt.Discount = O_Discount,
shift_mgt.Customer_Add = O_Customer_Add,
shift_mgt.Customer_Minus = O_Customer_Minus,
shift_mgt.Customer_Credit = O_Customer_Credit,
shift_mgt.Actual_Amt = Actual_AMT,
shift_mgt.Last_Invoice = O_Last_Invoice,
shift_mgt.`Status` = 'Close'
WHERE
shift_mgt.Shift_No = O_Shift_No;
if(O_Credit_AMT > 0 ) THEN
INSERT INTO trx_history(trx_history.TRX_Type,trx_history.TRX_Name,trx_history.TRX_Date,trx_history.TRX_Time,trx_history.Amount,trx_history.Shift,trx_history.Username) VALUES ('مسحوبات' ,'سحب من الإيراد',CURRENT_DATE(),CURRENT_TIME(),O_Credit_AMT,O_Shift_No,I_Username);
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Close_Time_Force
-- ----------------------------
DROP PROCEDURE IF EXISTS `Close_Time_Force`;
delimiter ;;
CREATE PROCEDURE `Close_Time_Force`(IN `I_Device_Name` text)
BEGIN

DECLARE O_Time_Limit INT;
DECLARE O_Order_No INT;
DECLARE O_Device_Start_Time datetime;
DECLARE O_Play_Wait_ID INT;
DECLARE O_Session_Start datetime;
DECLARE O_Session_Period INT;
DECLARE O_Min_Round INT;
DECLARE O_AMT_Round DECIMAL(11,2);
DECLARE O_Price DECIMAL(11,2);
DECLARE O_Play_Type text;
DECLARE O_Limit_Check INT;
DECLARE O_Order_Count INT;
DECLARE O_Period INT;
DECLARE O_End_Time datetime;
DECLARE O_Time_Type text;
DECLARE O_Time_End text;
DECLARE O_Before_Time INT;

SELECT devices.Play_Cate INTO O_Time_Type FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.End_Time INTO O_End_Time FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT system_config.`Value` INTO O_AMT_Round FROM system_config WHERE system_config.Description = 'Round_Money_Value';
SELECT system_config.`Value` INTO O_Min_Round FROM system_config WHERE system_config.Description = 'Round_Time_Value';
SELECT devices.Order_No INTO O_Order_No FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.Limit_Time INTO O_Time_Limit FROM devices Where devices.Device_Name = I_Device_Name;
SELECT devices.Start_Time INTO O_Device_Start_Time FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT MAX(play_wait.ID) INTO O_Play_Wait_ID FROM play_wait WHERE play_wait.Order_No = O_Order_No;
SELECT play_wait.Start_Time INTO O_Session_Start FROM play_wait WHERE play_wait.ID = O_Play_Wait_ID;
SELECT play_wait.Play_Type INTO O_Play_Type FROM play_wait WHERE play_wait.ID = O_Play_Wait_ID;
SELECT COUNT(play_wait.ID) INTO O_Order_Count FROM play_wait WHERE play_wait.Order_No = O_Order_No;

IF(O_End_Time >= CURRENT_TIMESTAMP()) THEN
	SET O_Time_End = 'False';
	SELECT 'False';
ELSE
	SET O_Time_End = 'True';
	SELECT 'True';
END IF;

SET O_Before_Time = TIMESTAMPDIFF(MINUTE,O_Device_Start_Time,O_Session_Start);
SET O_Period = TIMESTAMPDIFF(MINUTE,O_Device_Start_Time,CURRENT_TIMESTAMP); -- Play Time From BEGIN
SET O_Session_Period = TIMESTAMPDIFF(MINUTE,O_Session_Start,CURRENT_TIMESTAMP()); -- Play Time FOR current session (Switch)
SET O_Price = Get_Play_Price(I_Device_Name, O_Play_Type, O_Session_Period, O_Session_Start);
-- Check Limit Time
SET O_Limit_Check = TIMESTAMPDIFF(MINUTE,O_Device_Start_Time,CURRENT_TIMESTAMP());

-- Case 1 SPECIFIC Time 
-- Case 1.1 Limit Time Check
-- كده انا خليت دي في حالة انو لسه معداش الوقت المحدد
IF(O_Limit_Check < O_Time_Limit) THEN
	IF(O_Order_Count > 1) THEN
		UPDATE play_wait SET play_wait.Period = (O_Time_Limit - O_Before_Time) , play_wait.Play_Price = O_Price , play_wait.End_Time = CURRENT_TIMESTAMP() , play_wait.Cost = mround(((O_Time_Limit - O_Before_Time) * (O_Price / 60)), O_AMT_Round) WHERE play_wait.ID = O_Play_Wait_ID;
		SELECT 'Case1';
	ELSE
		UPDATE play_wait SET play_wait.Period = O_Time_Limit, play_wait.Play_Price = O_Price , play_wait.End_Time = CURRENT_TIMESTAMP() , play_wait.Cost = mround(((O_Time_Limit) * (O_Price / 60)), O_AMT_Round) WHERE play_wait.ID = O_Play_Wait_ID;
		SELECT 'Case2';
	END IF;
ELSE
-- من هنا اول ما يعدي الوقت المحدد
IF(O_Time_Type = 'وقت محدد') THEN
	IF(O_Time_End = 'True') THEN
		SET O_Session_Period = TIMESTAMPDIFF(MINUTE,O_Session_Start,O_End_Time);
		UPDATE play_wait SET play_wait.Period = O_Session_Period , play_wait.Play_Price = O_Price , play_wait.End_Time = O_End_Time , play_wait.Cost = mround(((O_Session_Period) * (O_Price / 60)), O_AMT_Round) WHERE play_wait.ID = O_Play_Wait_ID;
		SELECT 'Case3';
	ELSE
		UPDATE play_wait SET play_wait.Period = O_Session_Period , play_wait.Play_Price = O_Price , play_wait.End_Time = CURRENT_TIMESTAMP() , play_wait.Cost = mround(((O_Session_Period) * (O_Price / 60)), O_AMT_Round) WHERE play_wait.ID = O_Play_Wait_ID;
		SELECT 'Case4';
	END IF;
ELSE
UPDATE play_wait SET play_wait.Period = O_Session_Period , play_wait.Play_Price = O_Price , play_wait.End_Time = CURRENT_TIMESTAMP() , play_wait.Cost = mround(((O_Session_Period) * (O_Price / 60)), O_AMT_Round) WHERE play_wait.ID = O_Play_Wait_ID;
SELECT 'Case5';
END IF;
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Customer_Login
-- ----------------------------
DROP PROCEDURE IF EXISTS `Customer_Login`;
delimiter ;;
CREATE PROCEDURE `Customer_Login`(IN `I_ID` int,IN `I_Password` text,IN `I_PC_Name` text,OUT `O_Result` text,OUT `O_Remain` INT)
BEGIN
#Routine body goes here...
DECLARE Remain_Minute INT;
DECLARE PC_Status text;
SELECT devices.`Status` INTO PC_Status FROM devices WHERE devices.Device_Name = I_PC_Name;
SELECT customer.C_Minute INTO Remain_Minute FROM customer WHERE customer.C_ID = I_ID AND customer.C_Password = I_Password;
if(PC_Status = 'متاح') THEN
if(Remain_Minute > 0 ) THEN
SET O_Result = 'True';
SET O_Remain = Remain_Minute;
Else
SET O_Result = 'False';
SET O_Remain = Remain_Minute;
END IF;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Direct_Sales
-- ----------------------------
DROP PROCEDURE IF EXISTS `Direct_Sales`;
delimiter ;;
CREATE PROCEDURE `Direct_Sales`(IN `I_Item_Code` int,IN `I_Quantity` int,IN `I_Price` decimal(11,2),IN `I_Invoice_No` int,IN `I_Username` text)
BEGIN
#Routine body goes here...
DECLARE O_Shift_No INT;
DECLARE O_Item_Name text;

SELECT MAX(shift_mgt.Shift_No) INTO O_Shift_No FROM shift_mgt WHERE shift_mgt.`Status` = 'Open';
SELECT item_master.Item_Name INTO O_Item_Name FROM item_master WHERE item_master.`Code` = I_Item_Code;

INSERT INTO market_history (
market_history.Client_Name,
market_history.Item_ID,
market_history.Quantity,
market_history.Price,
market_history.TRX_Date,
market_history.TRX_Time,
market_history.Username,
market_history.Shift
)VALUES ('بيع مباشر',I_Item_Code,I_Quantity,I_Price,CURRENT_DATE(),CURRENT_TIME(),I_Username, Check_Shift(I_Username)) ;

INSERT INTO trx_history (
trx_history.TRX_Type,
trx_history.TRX_Name,
trx_history.TRX_Date,
trx_history.TRX_Time,
trx_history.Amount,
trx_history.Shift,
trx_history.Username
)
VALUES
('مبيعات',O_Item_Name,CURRENT_DATE(),CURRENT_TIME,( I_Quantity * I_Price) ,Check_Shift(I_Username),I_Username);

INSERT INTO invoices (
invoices.Inv_No,
invoices.Device_Name,
invoices.Item_Name,
invoices.Quantity,
invoices.Price,
invoices.Amount,
invoices.Shift,
invoices.TRX_Date,
invoices.TRX_Time,
invoices.Username
)
VALUES
(
I_Invoice_No,'بيع مباشر',O_Item_Name,I_Quantity,I_Price,( I_Quantity * I_Price),Check_Shift(I_Username),CURRENT_DATE(),CURRENT_TIME(),I_Username);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Finish_Invoice
-- ----------------------------
DROP PROCEDURE IF EXISTS `Finish_Invoice`;
delimiter ;;
CREATE PROCEDURE `Finish_Invoice`(IN `I_Device_Name` text,IN `I_Order_No` int,OUT `O_Result` text,IN `I_Username` text,IN `I_Shift_No` INT,OUT `O_Inv_No` INT)
BEGIN
#Routine body goes here...

DECLARE O_IP_Address text;
DECLARE Market_Check INT;
DECLARE O_Shift_No INT;
DECLARE O_Cus_ID INT;
DECLARE O_Command INT;

SELECT devices.Customer_ID INTO O_Cus_ID FROM devices Where devices.Order_No = I_Order_No;
SELECT MAX(shift_mgt.Shift_No) INTO O_Shift_No FROM shift_mgt WHERE shift_mgt.`Status` = 'Open';
SELECT SUM(order_wait.Order_No)INTO Market_Check FROM order_wait WHERE order_wait.Order_No = I_Order_No;
SELECT devices.IP_Address INTO O_IP_Address FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.Kind INTO O_Result FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT MAX(invoices.Inv_No)+1 INTO O_Inv_No FROM invoices;

IF(ISNULL(O_Inv_No))THEN
SET	O_Inv_No = '1' ;
ELSE
Set O_Inv_No = O_Inv_No ;
END IF;

-- Insert Play History INTO play_history FROM play_wait .
INSERT INTO play_history (play_history.Device_Name,play_history.Play_Type,play_history.Hour_Price,play_history.Start_Time,play_history.End_Time,play_history.Play_Time,play_history.Cost)
SELECT play_wait.Device_Name,play_wait.Play_Type,play_wait.Play_Price,play_wait.Start_Time,play_wait.End_Time,play_wait.Period,play_wait.Cost FROM play_wait LEFT JOIN devices ON play_wait.Device_Name = devices.Device_Name WHERE devices.Device_Type != 'Table' AND play_wait.Order_No = I_Order_No;

UPDATE play_history SET play_history.Username = I_Username ,play_history.Shift_No = Check_Shift(I_Username) , play_history.TRX_Date = CURRENT_DATE(),play_history.Invoice_No = O_Inv_No WHERE play_history.Username IS NULL OR play_history.Username = '';

INSERT INTO trx_history(trx_history.TRX_Name,trx_history.Amount ) SELECT devices.Device_Type, play_wait.Cost FROM play_wait LEFT JOIN devices ON play_wait.Device_Name = devices.Device_Name WHERE devices.Device_Type != 'Table' And play_wait.Order_No = I_Order_No;
UPDATE trx_history SET trx_history.TRX_Type = 'لعب' ,trx_history.TRX_Date = CURRENT_DATE() , trx_history.TRX_Time = CURRENT_TIME() , trx_history.Shift = Check_Shift(I_Username) , trx_history.Username = I_Username, trx_history.Reference = O_Inv_No WHERE trx_history.TRX_Type IS NULL OR trx_history.TRX_Type = '';
SET O_Result = Reset_Device(I_Device_Name);
-- UPDATE devices
-- SET devices.Play_Type = NULL,
-- devices.Play_Price = NULL,
-- devices.Start_Time = NULL,
-- devices.End_Time = NULL,
-- devices.Status_IMG = 'مغلق',
-- devices.`Status` = 'متاح',
-- devices.Period = NULL,
-- devices.Play_Cate = NULL,
-- devices.Order_No = NULL,
-- devices.Customer_ID = NULL
-- WHERE	devices.Order_No = I_Order_No;
if(Market_Check > 0 ) THEN
INSERT INTO market_history (
market_history.Client_Name,
market_history.Item_ID,
market_history.Quantity,
market_history.Price
)
SELECT order_wait.Device_Name,order_wait.Item_ID,order_wait.Quantity,order_wait.Price FROM order_wait WHERE order_wait.Order_No = I_Order_No;
UPDATE market_history SET market_history.TRX_Date = CURRENT_DATE(), market_history.TRX_Time = CURRENT_TIME(),market_history.Username = I_Username, market_history.Shift = Check_Shift(I_Username) , market_history.Invoice_No = O_Inv_No WHERE market_history.TRX_Date IS NULL;
INSERT INTO trx_history(trx_history.TRX_Name,trx_history.Amount ) SELECT item_master.Item_Name, order_wait.Amount FROM order_wait LEFT JOIN	item_master	ON order_wait.Item_ID = item_master.`Code` WHERE order_wait.Order_No = I_Order_No;
UPDATE trx_history SET trx_history.TRX_Type = 'مبيعات' ,trx_history.TRX_Date = CURRENT_DATE() , trx_history.TRX_Time = CURRENT_TIME() , trx_history.Shift = Check_Shift(I_Username) , trx_history.Username = I_Username , trx_history.Reference = O_Inv_No WHERE trx_history.TRX_Type IS NULL OR trx_history.TRX_Type = '';
END IF;
INSERT INTO invoices (invoices.Device_Name, invoices.Item_Name, invoices.Quantity, invoices.Price, invoices.Amount ) SELECT
play_wait.Device_Name,devices.Device_Type,play_wait.Period,play_wait.Play_Price,play_wait.Cost FROM play_wait LEFT JOIN devices ON play_wait.Device_Name = devices.Device_Name WHERE
devices.Device_Type != 'Table' And play_wait.Order_No = I_Order_No;

if(Market_Check > 0) THEN
INSERT INTO invoices ( invoices.Device_Name, invoices.Item_Name, invoices.Quantity, invoices.Price, invoices.Amount ) SELECT
order_wait.Device_Name,
item_master.Item_Name,
order_wait.Quantity,
order_wait.Price,
order_wait.Amount
FROM
order_wait
LEFT JOIN
item_master
ON
order_wait.Item_ID = item_master.`Code`
WHERE
order_wait.Order_No = I_Order_No;
END IF;
DELETE FROM play_wait WHERE play_wait.Order_No = I_Order_No;
UPDATE invoices SET invoices.Customer_ID = O_Cus_ID ,invoices.Inv_No = O_Inv_No , invoices.Shift = Check_Shift(I_Username) , invoices.TRX_Date = CURRENT_DATE(), invoices.TRX_Time = CURRENT_TIMESTAMP() , invoices.Username = I_Username WHERE invoices.Inv_No IS NULL OR invoices.Inv_No = '';
DELETE FROM order_wait WHERE order_wait.Order_No = I_Order_No;
SET O_Command = PS_Control(I_Device_Name, I_Username, 'OFF', 'Finish Time');
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_Cost_Close
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_Cost_Close`;
delimiter ;;
CREATE PROCEDURE `Get_Cost_Close`(OUT `G_Cost_Play` DECIMAL(11,2),OUT `G_Cost_Order` DECIMAL(11,2) ,OUT `O_IP_Address` text, OUT `G_Total` DECIMAL(11,2),IN `G_Order_No` INT,OUT `O_Deposit` INT)
BEGIN
#Routine body goes here...
SELECT SUM(play_wait.Cost) INTO G_Cost_Play From play_wait Where play_wait.Order_No = G_Order_No;
SELECT SUM(order_wait.Amount) INTO G_Cost_Order From order_wait Where order_wait.Order_No = G_Order_No;
SELECT devices.IP_Address INTO O_IP_Address FROM devices WHERE devices.Order_No = G_Order_No;
SELECT devices.Deposit INTO O_Deposit FROM devices WHERE devices.Order_No = G_Order_No;
IF(O_Deposit IS NULL) THEN
SET O_Deposit = 0;
END IF;
IF(ISNULL(G_Cost_Order)) THEN
SET G_Cost_Order = 0 ;
END IF;
IF(ISNULL(G_Cost_Play)) THEN
SET G_Cost_Play = 0;
END IF;
SET G_Total = G_Cost_Play + G_Cost_Order - O_Deposit;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_Customer_Data
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_Customer_Data`;
delimiter ;;
CREATE PROCEDURE `Get_Customer_Data`(IN `I_Card_No` text,OUT `O_C_Name` text,OUT `O_C_ID` int ,OUT `O_Result` text)
BEGIN
#Routine body goes here...
SELECT customer.C_ID INTO O_C_ID FROM customer WHERE customer.C_Card = I_Card_No;
SELECT customer.C_Name INTO O_C_Name FROM customer WHERE customer.C_Card = I_Card_No;
IF(ISNULL(O_C_ID)) THEN
SET O_Result = 'False';
ELSE
SET O_Result = 'True';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_Customer_Info
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_Customer_Info`;
delimiter ;;
CREATE PROCEDURE `Get_Customer_Info`(IN `I_Customer_ID` int,OUT `O_Customer_Name` text,OUT `O_Customer_Point` int)
BEGIN
#Routine body goes here...
SELECT customer.C_Name INTO O_Customer_Name FROM customer WHERE customer.C_ID = I_Customer_ID;
SELECT customer.C_Point INTO O_Customer_Point FROM customer WHERE customer.C_ID = I_Customer_ID;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_Data_For_Close_Shift
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_Data_For_Close_Shift`;
delimiter ;;
CREATE PROCEDURE `Get_Data_For_Close_Shift`(OUT `O_Beg` DECIMAL ( 11, 2 ),
OUT `O_Playstation` DECIMAL ( 11, 2 ),
OUT `O_Drinks` DECIMAL ( 11, 2 ),
OUT `O_Purchasing` DECIMAL ( 11, 2 ),
OUT `O_Expenses` DECIMAL ( 11, 2 ),
OUT `O_Discount` DECIMAL ( 11, 2 ),
OUT `O_Customer_Add` DECIMAL ( 11, 2 ),
OUT `O_Customer_Minus` DECIMAL ( 11, 2 ),
OUT `O_Customer_Credit` DECIMAL ( 11, 2 ),
OUT `O_First_Invoice` INT,
OUT `O_Last_Invoice` INT)
BEGIN
#Routine body goes here...
DECLARE O_Shift_No INT;

SELECT MAX(shift_mgt.Shift_No) INTO O_Shift_No FROM shift_mgt WHERE shift_mgt.`Status` = 'Open';
SELECT SUM(shift_mgt.Start_AMT) INTO O_Beg FROM shift_mgt WHERE shift_mgt.Shift_No = O_Shift_No;
SELECT SUM(trx_history.Amount) INTO O_Drinks FROM trx_history WHERE trx_history.Shift = O_Shift_No AND trx_history.TRX_Type = 'مبيعات';
SELECT SUM(trx_history.Amount) INTO O_Playstation FROM trx_history WHERE trx_history.Shift = O_Shift_No AND trx_history.TRX_Type = 'لعب';
SELECT SUM(trx_history.Amount) INTO O_Expenses FROM trx_history WHERE trx_history.Shift = O_Shift_No AND trx_history.TRX_Type = 'مصروفات';
SELECT SUM(trx_history.Amount) INTO O_Discount FROM trx_history WHERE trx_history.Shift = O_Shift_No AND trx_history.TRX_Type = 'خصم';
SELECT shift_mgt.First_Invoice INTO O_First_Invoice FROM shift_mgt WHERE shift_mgt.Shift_No = O_Shift_No;
SELECT MAX(invoices.Inv_No) INTO O_Last_Invoice FROM invoices;
SELECT SUM(trx_history.Amount) INTO O_Customer_Add FROM trx_history WHERE trx_history.Shift = O_Shift_No AND trx_history.TRX_Type = 'عملاء' AND trx_history.TRX_Name = 'إضافة رصيد';
SELECT SUM(trx_history.Amount) INTO O_Customer_Minus FROM trx_history WHERE trx_history.Shift = O_Shift_No AND trx_history.TRX_Type = 'عملاء' AND trx_history.TRX_Name = 'سحب رصيد';
SELECT SUM(trx_history.Amount) INTO O_Customer_Credit FROM trx_history WHERE trx_history.Shift = O_Shift_No AND trx_history.TRX_Type = 'عملاء' AND trx_history.TRX_Name = 'مديونية';

if(ISNULL(O_Playstation))THEN
SET O_Playstation = 0;
END IF;
IF(ISNULL(O_Drinks)) THEN
SET O_Drinks = 0;
END IF;
IF (ISNULL(O_Purchasing)) THEN
SET O_Purchasing = 0;
END IF;
IF(ISNULL(O_Expenses)) THEN
SET O_Expenses = 0;
END IF;
if(ISNULL(O_Beg)) THEN
SET O_Beg = 0;
END IF;
IF(ISNULL(O_Discount)) THEN
SET O_Discount = 0;
END IF;
IF(ISNULL(O_Customer_Add)) THEN
SET O_Customer_Add = 0;
END IF;
IF(ISNULL(O_Customer_Minus)) THEN
SET O_Customer_Minus = 0;
END IF;
IF(ISNULL(O_Customer_Credit)) THEN
SET O_Customer_Credit = 0;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_Invoice_No
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_Invoice_No`;
delimiter ;;
CREATE PROCEDURE `Get_Invoice_No`(OUT `G_Invoice_No` int)
BEGIN
#Routine body goes here...
SELECT MAX(invoices.Inv_No)+1 INTO G_Invoice_No FROM invoices;
IF	(ISNULL(G_Invoice_No)) 	THEN
SET	G_Invoice_No = '1' ;
ELSE
Set G_Invoice_No = G_Invoice_No ;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_Max_UserID
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_Max_UserID`;
delimiter ;;
CREATE PROCEDURE `Get_Max_UserID`(OUT `O_UserID` int)
BEGIN
#Routine body goes here...
SELECT	MAX( users.UserID )+ 1 INTO O_UserID FROM users;
IF
(
ISNULL( O_UserID )) THEN
SET O_UserID = '1';
ELSE
SET O_UserID = O_UserID;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_Notification_Data
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_Notification_Data`;
delimiter ;;
CREATE PROCEDURE `Get_Notification_Data`(OUT `O_Mail` text,OUT `O_Play_History` text,OUT `O_Sales_History` text,OUT `O_Discount_History` text,OUT `O_Purchasing_History` text,OUT `O_Expenses_History` text,OUT `O_Subject` text,OUT `O_Notification` text)
BEGIN
#Routine body goes here...
SELECT mail_setting.`Value` INTO O_Mail FROM mail_setting WHERE mail_setting.Description = 'Mail_List';
SELECT mail_setting.`Value` INTO O_Play_History FROM mail_setting WHERE mail_setting.Description = 'Play_History';
SELECT mail_setting.`Value` INTO O_Sales_History FROM mail_setting WHERE mail_setting.Description = 'Sales_History';
SELECT mail_setting.`Value` INTO O_Discount_History FROM mail_setting WHERE mail_setting.Description = 'Discount_History';
SELECT mail_setting.`Value` INTO O_Purchasing_History FROM mail_setting WHERE mail_setting.Description = 'Purchasing_History';
SELECT mail_setting.`Value` INTO O_Expenses_History FROM mail_setting WHERE mail_setting.Description = 'Expenses_History';
SELECT mail_setting.`Value` INTO O_Subject FROM mail_setting WHERE mail_setting.Description = 'Mail_Subject';
SELECT mail_setting.`Value` INTO O_Notification FROM mail_setting WHERE mail_setting.Description = 'Mail_Notification';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_PC_Data
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_PC_Data`;
delimiter ;;
CREATE PROCEDURE `Get_PC_Data`(IN `I_PC_Name` text,OUT `O_Cust_Name` text,OUT `O_Start_Time` datetime,OUT `O_End_Time` datetime,OUT `O_Period` int,OUT `O_Price` int)
BEGIN
#Routine body goes here...
SELECT devices.Start_Time INTO O_Start_Time FROM devices WHERE devices.Device_Name = I_PC_Name;
SELECT devices.End_Time INTO O_End_Time FROM devices WHERE devices.Device_Name = I_PC_Name;
SELECT devices.Period INTO O_Period FROM devices WHERE devices.Device_Name = I_PC_Name;
SELECT devices.Play_Price INTO O_Price FROM devices WHERE devices.Device_Name = I_PC_Name;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for Get_Play_Price
-- ----------------------------
DROP FUNCTION IF EXISTS `Get_Play_Price`;
delimiter ;;
CREATE FUNCTION `Get_Play_Price`(`I_Device_Name` text,`I_Play_Type` text,`I_Min` INT,`I_Time` time)
 RETURNS decimal(11,2)
  NO SQL 
BEGIN

#Routine body goes here...

DECLARE O_Price DECIMAL ( 11, 2 );

SELECT offers.Price INTO O_Price FROM offers WHERE offers.Devices LIKE CONCAT('%',I_Device_Name,'%') AND offers.Play_Type = I_Play_Type AND I_Time BETWEEN offers.Time_From AND offers.Time_To And offers.Period <= I_Min AND IsActive = 1 LIMIT 1;

IF(ISNULL(O_Price)) THEN
	SELECT device_price.Hour_Price INTO O_Price FROM device_price WHERE device_price.Device_Name = I_Device_Name AND device_price.Game_Type = I_Play_Type AND device_price.S_From < Time(CURRENT_TIME()) ORDER BY device_price.S_From DESC LIMIT 1 ;
END IF;
RETURN O_Price;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_Print_Info
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_Print_Info`;
delimiter ;;
CREATE PROCEDURE `Get_Print_Info`(OUT `O_Printer_Status` text,
OUT `O_Print_Sales_Invoice` text,
OUT `O_Print_Direct_Sales` text,
OUT `O_Print_Quantity` INT,
OUT `O_Ask_For_Print` text,
OUT `O_Receipt_Footer` text)
BEGIN
#Routine body goes here...
SELECT print_setting.`Value` INTO O_Printer_Status FROM print_setting WHERE print_setting.Description = 'Printer_Status';
SELECT print_setting.`Value` INTO O_Print_Sales_Invoice FROM print_setting WHERE print_setting.Description = 'Print_Sales_Invoice';
SELECT print_setting.`Value` INTO O_Print_Direct_Sales FROM print_setting WHERE print_setting.Description = 'Print_Direct_Sales';
SELECT print_setting.`Value` INTO O_Print_Quantity FROM print_setting WHERE print_setting.Description = 'Print_Quantity';
SELECT print_setting.`Value` INTO O_Ask_For_Print FROM print_setting WHERE print_setting.Description = 'Ask_For_Print_Againt';
SELECT receipt.Footer INTO O_Receipt_Footer FROM receipt LIMIT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_Round_Info
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_Round_Info`;
delimiter ;;
CREATE PROCEDURE `Get_Round_Info`(OUT `O_Min_Status` text,OUT `O_Min_UP` text,OUT `O_Min_Round` int,OUT `O_Mon_Status` text,OUT `O_Mon_UP` text,OUT `O_Mon_Round` decimal(11,2))
BEGIN
#Routine body goes here...
SELECT system_config.`Value` INTO O_Min_Status FROM system_config WHERE system_config.Description = 'Round_Time_Status';
SELECT system_config.`Value` INTO O_Min_UP FROM system_config WHERE system_config.Description = 'Round_Time_Up';
SELECT system_config.`Value` INTO O_Min_Round FROM system_config WHERE system_config.Description = 'Round_Time_Value';
SELECT system_config.`Value` INTO O_Mon_Status FROM system_config WHERE system_config.Description = 'Round_Money_Status';
SELECT system_config.`Value` INTO O_Mon_UP FROM system_config WHERE system_config.Description = 'Round_Money_UP';
SELECT system_config.`Value` INTO O_Mon_Round FROM system_config WHERE system_config.Description = 'Round_Money_Value';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_Sum_TRX
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_Sum_TRX`;
delimiter ;;
CREATE PROCEDURE `Get_Sum_TRX`(OUT `O_Sales` DECIMAL ( 11, 2 ),OUT `O_Play` DECIMAL ( 11, 2 ),OUT `O_Expenses` DECIMAL ( 11, 2 ),OUT `O_Purchase` DECIMAL ( 11, 2 ),OUT `O_Order_Wait` DECIMAL ( 11, 2 ),OUT `O_Play_Wait` DECIMAL ( 11, 2 ),OUT `O_PS_Online` DECIMAL ( 11, 2 ))
BEGIN
#Routine body goes here...
SELECT SUM(trx_history.Amount) INTO O_Sales FROM trx_history WHERE trx_history.TRX_Date = CURRENT_DATE() AND trx_history.TRX_Type = 'مبيعات';
SELECT SUM(trx_history.Amount) INTO O_Play FROM trx_history WHERE trx_history.TRX_Date = CURRENT_DATE() AND trx_history.TRX_Type = 'لعب';
SELECT SUM(trx_history.Amount) INTO O_Expenses FROM trx_history WHERE trx_history.TRX_Date = CURRENT_DATE() AND trx_history.TRX_Type = 'مصروفات';
SELECT SUM(trx_history.Amount) INTO O_Purchase FROM trx_history WHERE trx_history.TRX_Date = CURRENT_DATE() AND trx_history.TRX_Type = 'مشتريات';
SELECT SUM(play_wait.Cost) INTO O_Play_Wait FROM play_wait;
SELECT SUM(order_wait.Amount) INTO O_Order_Wait FROM order_wait;
SELECT COUNT(devices.Device_Name) INTO O_PS_Online FROM devices WHERE devices.Kind = 'Time' AND devices.Start_Time IS NOT NULL;
if(ISNULL(O_Sales))THEN
SET O_Sales = 0;
END IF;
if(ISNULL(O_Play))THEN
SET O_Play = 0;
END IF;
if(ISNULL(O_Expenses))THEN
SET O_Expenses = 0;
END IF;
if(ISNULL(O_Purchase))THEN
SET O_Purchase = 0;
END IF;
if(ISNULL(O_Play_Wait)) THEN
SET O_Play_Wait = 0;
END IF;
if(ISNULL(O_Order_Wait)) THEN
SET O_Order_Wait = 0;
END IF;
if(ISNULL(O_PS_Online)) THEN
SET O_PS_Online = 0;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_System_Info
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_System_Info`;
delimiter ;;
CREATE PROCEDURE `Get_System_Info`(OUT `O_Control_Box` text,OUT `O_Name` text,OUT `O_Back_Dir` text,OUT `O_Shift_Dir` text,OUT `O_Sales_Dir` text,OUT `O_Stock_Dir` text)
BEGIN
#Routine body goes here...
SELECT system_config.`Value` INTO O_Control_Box FROM system_config WHERE system_config.Description = 'Alarm_System';
SELECT system_config.`Value` INTO O_Name FROM system_config WHERE system_config.Description = 'Name';
SELECT system_config.`Value` INTO O_Back_Dir FROM system_config WHERE system_config.Description = 'Backup_Direction';
SELECT system_config.`Value` INTO O_Shift_Dir FROM system_config WHERE system_config.Description = 'Shift_Report_Direction';
SELECT system_config.`Value` INTO O_Sales_Dir FROM system_config WHERE system_config.Description = 'Sales_Report_Direction';
SELECT system_config.`Value` INTO O_Stock_Dir FROM system_config WHERE system_config.Description = 'Stock_Report_Direction';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Get_Sys_Config_Info
-- ----------------------------
DROP PROCEDURE IF EXISTS `Get_Sys_Config_Info`;
delimiter ;;
CREATE PROCEDURE `Get_Sys_Config_Info`(OUT `O_Alarm_System` text,OUT `O_Name` text,OUT `O_Print` text,OUT `O_Round` int,OUT `O_Money_Round` INT,OUT `O_Footer` text)
BEGIN
#Routine body goes here...
SELECT system_config.`Value` INTO O_Alarm_System FROM system_config WHERE system_config.Description = 'Alarm_System';
SELECT system_config.`Value` INTO O_Name FROM system_config WHERE system_config.Description = 'Name';
SELECT system_config.`Value` INTO O_Print FROM system_config WHERE system_config.Description = 'Print';
SELECT system_config.`Value` INTO O_Round FROM system_config WHERE system_config.Description = 'Round';
SELECT system_config.`Value` INTO O_Money_Round FROM system_config WHERE system_config.Description = 'Round_Money';
SELECT receipt.Footer INTO O_Footer FROM receipt LIMIT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Customer_Money
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Customer_Money`;
delimiter ;;
CREATE PROCEDURE `Insert_Customer_Money`(IN `I_Customer_ID` int,IN `I_Customer_Money` DECIMAL ( 11, 2 ),IN `I_Username` text,OUT `O_Result` text)
BEGIN
#Routine body goes here...

SELECT customer.C_Name INTO O_Result FROM customer WHERE customer.C_ID = I_Customer_ID AND customer.`Status` = 1;
IF(ISNULL(O_Result)) THEN
SET O_Result = 'حساب العميل معطل , يرجي تفعيل حساب العميل اولاً';
ELSE
INSERT INTO customer_history (customer_history.Customer_ID ,customer_history.Type,customer_history.Amount,customer_history.Date,customer_history.Time,customer_history.Username,customer_history.Shift_No,customer_history.Remark) VALUES (I_Customer_ID ,'إيداع',I_Customer_Money,CURRENT_DATE(),CURRENT_TIME(),I_Username,Check_Shift(I_Username),'');
INSERT INTO trx_history(trx_history.TRX_Type,trx_history.TRX_Name,trx_history.TRX_Date,trx_history.TRX_Time,trx_history.Amount,trx_history.Shift,trx_history.Username ) VALUES ( 'عملاء','إضافة رصيد',CURRENT_DATE(),CURRENT_TIME(),I_Customer_Money,Check_Shift(I_Username),I_Username);
UPDATE customer SET customer.C_Money = customer.C_Money = I_Customer_Money WHERE customer.C_ID = I_Customer_ID;
SET O_Result = 'تم إضافة رصيد العميل .';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Customer_Pay
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Customer_Pay`;
delimiter ;;
CREATE PROCEDURE `Insert_Customer_Pay`(IN `I_Customer_ID` int,IN `I_Invoice_No` int,IN `I_Amount` DECIMAL ( 11, 2 ),IN `I_Username` text)
BEGIN
#Routine body goes here...

DECLARE Customer_Balance DECIMAL ( 11, 2 );
DECLARE O_Customer_Name text;

SELECT customer.C_Name INTO O_Customer_Name FROM customer WHERE customer.C_Card = I_Customer_ID;
SELECT customer.C_Money INTO Customer_Balance FROM customer WHERE customer.C_ID = I_Customer_ID;

IF(ISNULL(O_Customer_Name))THEN
	SET Customer_Balance = 0;
ELSE
INSERT INTO customer_history (
customer_history.Customer_ID,
customer_history.Type,
customer_history.Amount,
customer_history.Date,
customer_history.Time,
customer_history.Username,
customer_history.Shift_No,
customer_history.Remark
)
VALUES
( I_Customer_ID,'سحب',(I_Amount * -1),CURRENT_DATE(),CURRENT_TIME(),I_Username,Check_Shift(I_Username),(CONCAT('فاتورة رقم  ',I_Invoice_No)) );
UPDATE customer SET customer.C_Money = customer.C_Money - I_Amount , customer.C_Point = customer.C_Point + I_Amount WHERE customer.C_ID = I_Customer_ID;

IF(I_Amount > Customer_Balance) THEN
INSERT INTO trx_history (
trx_history.TRX_Type,
trx_history.TRX_Name,
trx_history.TRX_Date,
trx_history.TRX_Time,
trx_history.Amount,
trx_history.Shift,
trx_history.Username
)
VALUES
('عملاء','سحب رصيد',CURRENT_DATE(),CURRENT_TIME(),Customer_Balance,Check_Shift(I_Username),I_Username );

INSERT INTO trx_history (
trx_history.TRX_Type,
trx_history.TRX_Name,
trx_history.TRX_Date,
trx_history.TRX_Time,
trx_history.Amount,
trx_history.Shift,
trx_history.Username
)
VALUES
('عملاء','مديونية',CURRENT_DATE(),CURRENT_TIME(),(I_Amount - Customer_Balance),Check_Shift(I_Username),I_Username );
ELSE
INSERT INTO trx_history (
trx_history.TRX_Type,
trx_history.TRX_Name,
trx_history.TRX_Date,
trx_history.TRX_Time,
trx_history.Amount,
trx_history.Shift,
trx_history.Username
)
VALUES
('عملاء','سحب رصيد',CURRENT_DATE(),CURRENT_TIME(),I_Amount,Check_Shift(I_Username),I_Username );
END IF;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Expenses_Record
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Expenses_Record`;
delimiter ;;
CREATE PROCEDURE `Insert_Expenses_Record`(IN `I_Expenses_Type` text,IN `I_Expenses_Remark` text,IN `I_Amount` decimal(11,2),IN `I_Username` text)
BEGIN
#Routine body goes here...
DECLARE O_Shift_No INT;

SELECT MAX(shift_mgt.Shift_No) INTO O_Shift_No FROM shift_mgt WHERE shift_mgt.`Status` = 'Open';

INSERT INTO expenses_history(expenses_history.Expenses_Type,expenses_history.Expenses_Remark,expenses_history.Expenses_AMT,expenses_history.Username,expenses_history.Shift,expenses_history.TRX_Date,expenses_history.TRX_Time) VALUES (I_Expenses_Type,I_Expenses_Remark,I_Amount,I_Username,Check_Shift(I_Username),CURRENT_DATE(),CURRENT_TIME());
INSERT INTO trx_history(trx_history.TRX_Type,trx_history.TRX_Name,trx_history.TRX_Date,trx_history.TRX_Time,trx_history.Amount,trx_history.Shift,trx_history.Username) VALUES ( 'مصروفات',I_Expenses_Type,CURRENT_DATE(),CURRENT_TIME(),I_Amount,Check_Shift(I_Username),I_Username);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_New_Customer
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_New_Customer`;
delimiter ;;
CREATE PROCEDURE `Insert_New_Customer`(IN `I_C_Name` text,IN `I_C_Phone` text,IN `I_C_Card` text,IN `I_C_Remark` text,OUT `O_Result` text)
BEGIN
#Routine body goes here...
DECLARE O_C_ID INT;
SELECT MAX(customer.C_ID)+1 INTO O_C_ID FROM customer;
IF	(ISNULL(O_C_ID)) 	THEN
SET	O_C_ID = '1' ;
ELSE
Set O_C_ID = O_C_ID ;
END IF;
SELECT customer.C_Card INTO O_Result FROM customer WHERE customer.C_Card = I_C_Card;
IF(ISNULL(O_Result)) THEN
SELECT customer.C_Phone INTO O_Result FROM customer WHERE customer.C_Phone = I_C_Phone;
IF(ISNULL(O_Result)) THEN
INSERT INTO customer (customer.C_ID,customer.C_Name ,customer.C_Card, customer.C_Phone, customer.Remark ) VALUES (O_C_ID, I_C_Name ,I_C_Card, I_C_Phone, I_C_Remark );
SET O_Result = 'تم إضافة عميل جديد .';
ELSE
SET O_Result = 'رقم العميل موجود بالفعل , يرجي التأكد والمحاولة مرة أخري .';
END IF;
ELSE
SET O_Result = 'رقم الكارت موجود بالفعل , يرجي التأكد والمحاولة مرة أخري .';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_New_Device
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_New_Device`;
delimiter ;;
CREATE PROCEDURE `Insert_New_Device`(IN `I_Dev_Type` text,IN `I_Dev_Name` text,IN `I_Dev_IP` text,IN `I_Min_Time` int,OUT `O_Result` text, IN `I_Sin_Price` DECIMAL ( 11, 2 ),IN `I_Mul_Price` DECIMAL ( 11, 2 ),IN `I_Kind` text)
BEGIN
#Routine body goes here...
SELECT devices.Device_Name INTO O_Result FROM devices WHERE devices.Device_Name = I_Dev_Name;
if(ISNULL(O_Result)) THEN
INSERT INTO devices (devices.Device_Type,devices.Device_Name,devices.IP_Address,devices.Status_IMG,devices.`Status`,devices.Limit_Time,devices.IsActive,devices.Kind) VALUES ( I_Dev_Type,I_Dev_Name,I_Dev_IP,'مغلق','متاح',I_Min_Time,1,I_Kind);
INSERT INTO device_price (device_price.Device_Type,device_price.Device_Name,device_price.Game_Type,device_price.Hour_Price,device_price.S_From) VALUES (I_Dev_Type,I_Dev_Name,'فردي',I_Sin_Price,'00:00:00') ;
INSERT INTO device_price (device_price.Device_Type,device_price.Device_Name,device_price.Game_Type,device_price.Hour_Price,device_price.S_From) VALUES (I_Dev_Type,I_Dev_Name,'زوجي',I_Mul_Price,'00:00:00') ;
SET O_Result = 'تم إضافة جهاز جديد .';
ELSE
SET O_Result = 'إسم الجهاز موجود بالفعل , يرجي التأكد والمحاولة مرة أخري .';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_New_Device_Price
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_New_Device_Price`;
delimiter ;;
CREATE PROCEDURE `Insert_New_Device_Price`(IN `I_Device_Name` text,IN `I_Game_Type` text,IN `I_From` time,IN `I_Price` DECIMAL ( 11, 2 ))
BEGIN
#Routine body goes here...
DECLARE O_Device_Type text;
SELECT devices.Device_Type INTO O_Device_Type FROM devices WHERE devices.Device_Name = I_Device_Name;
INSERT INTO device_price(device_price.Device_Type,device_price.Device_Name,device_price.Game_Type,device_price.Hour_Price,device_price.S_From) VALUES (O_Device_Type,I_Device_Name,I_Game_Type,I_Price,I_From);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_New_Expenses_Item
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_New_Expenses_Item`;
delimiter ;;
CREATE PROCEDURE `Insert_New_Expenses_Item`(IN `I_Type` text,IN `I_Description` text,OUT `O_Result` text)
BEGIN
#Routine body goes here...
DECLARE Check_Exist text;
SELECT expenses_type.Expenses_Type INTO Check_Exist FROM expenses_type WHERE expenses_type.Expenses_Type = I_Type;
IF(ISNULL(Check_Exist)) THEN
INSERT INTO expenses_type (expenses_type.Expenses_Type , expenses_type.Expenses_Remark ) VALUES (I_Type, I_Description) ;
SET O_Result = 'تم إضافة بند مصروف جديد';
ELSE
SET O_Result = 'بند المصروف موجود بالفعل , يرجي التأكد والمحاولة مرة أخري .';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_New_Offer
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_New_Offer`;
delimiter ;;
CREATE PROCEDURE `Insert_New_Offer`(IN `I_O_Name` text,
IN `I_Devices` text,
IN `I_Time_From` text,
IN `I_Time_To` text,
IN `I_Period` INT,
IN `I_Amount` DECIMAL ( 11, 2 ),
IN `I_Remark` text,
IN `I_Play_Type` text,
OUT `O_Result` text)
BEGIN

#Routine body goes here...

INSERT INTO offers (
offers.`Name`,
offers.Devices,
offers.Time_From,
offers.Time_To,
offers.Period,
offers.Play_Type,
offers.Price,
offers.Remark
)
VALUES
( I_O_Name, I_Devices, I_Time_From, I_Time_To, I_Period, I_Play_Type, I_Amount, I_Remark );
SET O_Result = 'تم إضافة العرض .';

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_New_Product
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_New_Product`;
delimiter ;;
CREATE PROCEDURE `Insert_New_Product`(IN `I_Cate_ID` INT,
IN `I_Product_Name` text,
IN `I_Product_Price` DECIMAL ( 11, 2 ),
IN `I_Product` text,
IN `I_Sales` text,
OUT `O_Result` text,
OUT `O_Product_ID` INT,
IN `I_Table_Price` DECIMAL ( 11, 2 ),
IN `I_Direct_Price` DECIMAL ( 11, 2 ))
BEGIN
#Routine body goes here...
DECLARE Product INT;
DECLARE Sales INT;
DECLARE Item_Code INT;
SELECT market.Item_Name INTO O_Result From market Where market.Item_Name = I_Product_Name;
SELECT MAX(item_master.`Code`)+1 INTO Item_Code FROM item_master;
if(ISNULL(Item_Code)) THEN
SET Item_Code = 1;
ELSE
SET Item_Code = Item_Code;
END IF;
if(I_Product = 'Checked') THEN
SET Product = 1;
ELSE
SET Product = 0;
END IF;
if(I_Sales = 'Checked') THEN
SET Sales = 1;
ELSE
SET Sales = 0;
END IF;
IF(ISNULL(O_Result)) THEN
Insert INTO item_master ( item_master.Group_ID,item_master.`Code`,item_master.Item_Name,Item_Price,item_master.Table_Price,item_master.Direct_Price,item_master.IsProduct,item_master.IsSales) VALUES (I_Cate_ID,Item_Code,I_Product_Name,I_Product_Price,I_Table_Price,I_Direct_Price,Product,Sales);
SET O_Result = 'تم إضافة صنف جديد .';
SET O_Product_ID = Item_Code;
ELSE
SET O_Result = 'الصنف موجود بالفعل يرجي التأكد !';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_New_Product_Group
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_New_Product_Group`;
delimiter ;;
CREATE PROCEDURE `Insert_New_Product_Group`(IN `I_Group_Name` text,IN `I_Group_Image` longblob, IN `I_Remark` text,OUT `O_Result` text)
BEGIN
#Routine body goes here...
SELECT categiores.Cate_Name INTO O_Result FROM categiores WHERE categiores.Cate_Name = I_Group_Name;
if(ISNULL(O_Result)) THEN
INSERT INTO categiores(categiores.Cate_Name,categiores.Cate_IMG,categiores.Remark) VALUES (I_Group_Name,I_Group_Image,I_Remark);
SET O_Result = 'تم إضافة مجموعة أصناف جديدة';
ELSE
SET O_Result = 'مجموعة الصنف موجودة بالفعل';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for Insert_New_Time
-- ----------------------------
DROP FUNCTION IF EXISTS `Insert_New_Time`;
delimiter ;;
CREATE FUNCTION `Insert_New_Time`(`Time_Type`text,`I_Play_Type` text,`I_Period` INT,`I_Device_Name` text,`I_UserName` text,`I_Cus_ID` text)
 RETURNS int(11)
  NO SQL 
BEGIN
#Routine body goes here...
 
DECLARE O_Result INT;
DECLARE O_Money_Round DECIMAL(11,2);
DECLARE O_Play_Price DECIMAL(11,2);
DECLARE O_Device_Type text;
DECLARE O_Order_No INT;
DECLARE O_IP_Address text;
DECLARE O_Period INT;
DECLARE O_Amount DECIMAL(11,2);
DECLARE O_Play_Type text;
DECLARE O_Command INT;

-- SELECT offers.Play_Type INTO O_Play_Type FROM offers WHERE offers.ID = I_Offer;
-- SELECT offers.Period INTO O_Period FROM offers WHERE offers.ID = I_Offer;
-- SELECT offers.Price INTO O_Amount FROM offers WHERE offers.ID = I_Offer;
SELECT system_config.`Value` INTO O_Money_Round FROM system_config WHERE system_config.Description = 'Round_Money_Value';

-- SELECT device_price.Hour_Price INTO O_Play_Price FROM device_price WHERE device_price.Device_Name = I_Device_Name AND device_price.Game_Type = I_Play_Type AND device_price.S_From < Time(CURRENT_TIME()) ORDER BY device_price.S_From DESC LIMIT 1 ;
SET O_Play_Price = Get_Play_Price(I_Device_Name, I_Play_Type, I_Period,CURRENT_TIME());

SELECT MAX(devices.Order_No)+1 INTO O_Order_No FROM devices;

SET O_Result = 0;
if(I_Cus_ID = 0) THEN
SET I_Cus_ID = NULL;
END IF;

IF(ISNULL(O_Order_No)) 	THEN
SET	O_Order_No = '1' ;
ELSE
Set O_Order_No = O_Order_No ;
END IF;

IF(Time_Type = 'Limited') THEN
UPDATE devices
SET devices.Play_Type = I_Play_Type,
devices.Play_Price = O_Play_Price,
devices.Start_Time = CURRENT_TIMESTAMP(),
devices.End_Time = TIMESTAMPADD(MINUTE,I_Period,CURRENT_TIMESTAMP()),
devices.Status_IMG = I_Play_Type,
devices.`Status` = 'مشغول',
devices.Period = I_Period,
devices.Play_Cate = 'وقت محدد',
devices.Order_No = O_Order_No,
devices.Customer_ID = I_Cus_ID
WHERE
devices.Device_Name = I_Device_Name;
INSERT INTO play_wait (play_wait.Order_No,
play_wait.Device_Name,
play_wait.Start_Time,
play_wait.End_Time,
play_wait.Period,
play_wait.Play_Type,
play_wait.Play_Price,
play_wait.Cost,
play_wait.User_Name,
play_wait.Shift
)
VALUES
(O_Order_No, I_Device_Name, CURRENT_TIMESTAMP(), TIMESTAMPADD(MINUTE,I_Period,CURRENT_TIMESTAMP()), I_Period, I_Play_Type, O_Play_Price,(mround(((I_Period * O_Play_Price)/60), O_Money_Round)), I_UserName, Check_Shift(I_Username) );

SET O_Result = 1;
ELSEIF(Time_Type = 'UnLimited')THEN
UPDATE devices
SET devices.Play_Type = I_Play_Type,
devices.Play_Price = O_Play_Price,
devices.Start_Time = CURRENT_TIMESTAMP(),
devices.Status_IMG = I_Play_Type,
devices.`Status` = 'مشغول',
devices.Play_Cate = 'مفتوح',
devices.Order_No = O_Order_No,
devices.Customer_ID = I_Cus_ID
WHERE
devices.Device_Name = I_Device_Name;
INSERT INTO play_wait (play_wait.Order_No,
play_wait.Device_Name,
play_wait.Start_Time,
play_wait.Play_Type,
play_wait.Play_Price,
play_wait.User_Name,
play_wait.Shift
)
VALUES
(O_Order_No, I_Device_Name, CURRENT_TIMESTAMP(), I_Play_Type, O_Play_Price, I_UserName, Check_Shift(I_Username) );

SET O_Result = 1;
END IF;
IF(O_Result = 1) THEN

SET O_Command = PS_Control(I_Device_Name, I_UserName, 'ON', 'New Time');
END IF;
RETURN O_Result;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_New_User
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_New_User`;
delimiter ;;
CREATE PROCEDURE `Insert_New_User`(IN `I_UserID` INT, IN `I_Username` text, OUT `O_Result` text,IN `I_Password` text,IN `I_Position` text,IN `I_Permission_Type` text)
BEGIN
#Routine body goes here...
DECLARE User_Exist text;
SELECT users.Username INTO User_Exist FROM users WHERE users.Username = I_Username;
IF	(ISNULL(User_Exist)) 	THEN
INSERT INTO users ( users.UserID,users.Username,users.`Password`,users.Position,users.Permission_Type)
VALUES (I_UserID,I_Username,I_Password,I_Position ,I_Permission_Type);
INSERT Into permissions (permissions.ParentID,permissions.PermissionID,permissions.`View`,permissions.New,permissions.Edit,permissions.`Delete`,permissions.Print)
SELECT ParentID,PermissionID,`View`,New,Edit,`Delete`,Print FROM permission_type WHERE permission_type.Permission_Type = I_Permission_Type;
UPDATE permissions SET Username = I_Username Where Username IS NULL OR UserName = '';
Set O_Result = 'تم إضافة بيانات الموظف الجديد .';
ELSE
SET O_Result = 'إسم المستخدم موجود بالفعل , يرجي التأكد والمحاولة مرة أخري .';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Order_Drink
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Order_Drink`;
delimiter ;;
CREATE PROCEDURE `Insert_Order_Drink`(IN `I_Device_Name` text,IN `I_Order_No` int,IN `I_Item_ID` int,IN `I_QTY` int,OUT `O_Result` text)
BEGIN
#Routine body goes here....
DECLARE O_Item_Name text;
DECLARE O_Price DECIMAL(11,2);
DECLARE O_Device_Type text;
SELECT devices.Device_Type INTO O_Device_Type FROM devices WHERE devices.Device_Name = I_Device_Name;
if(O_Device_Type = 'Table') THEN
SELECT item_master.Table_Price INTO O_Price FROM item_master WHERE item_master.`Code` = I_Item_ID;
ELSE
SELECT item_master.Item_Price INTO O_Price FROM item_master WHERE item_master.`Code` = I_Item_ID;
END IF;
INSERT INTO order_wait (order_wait.Order_No,order_wait.Device_Name,order_wait.Item_ID,order_wait.Quantity,order_wait.Price ) VALUES (I_Order_No,I_Device_Name,I_Item_ID,I_QTY,O_Price) ;
SET O_Result = 'تمت الإضافة , هل تريد إضافة أصناف أخري .';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Price
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Price`;
delimiter ;;
CREATE PROCEDURE `Insert_Price`()
BEGIN
	#Routine body goes here...
	
	DECLARE O_Price DECIMAL ( 11, 2 );

SELECT offers.Price INTO O_Price FROM offers WHERE offers.Devices = 'Room 1' AND offers.Play_Type = 'فردي' AND '21:34:52' BETWEEN offers.Time_From AND offers.Time_To And offers.Period <= 104 AND IsActive = 1 LIMIT 1;

IF(ISNULL(O_Price)) THEN
SELECT device_price.Hour_Price INTO O_Price FROM device_price WHERE device_price.Device_Name = 'Room 1' AND device_price.Game_Type = 'فردي' AND device_price.S_From < Time(CURRENT_TIME()) ORDER BY device_price.S_From DESC LIMIT 1 ;

END IF;

INSERT INTO test (test.DT,test.Price) VALUES (CURRENT_TIMESTAMP(),O_Price);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Purchsing_Invoice
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Purchsing_Invoice`;
delimiter ;;
CREATE PROCEDURE `Insert_Purchsing_Invoice`(IN `I_Invoice_No` INT,
IN `I_Item_Code` INT,
IN `I_Quantity` DECIMAL ( 11, 3 ),
IN `I_Price` DECIMAL ( 11, 2 ),
IN `I_Username` text,
IN `I_Shift` INT)
BEGIN
#Routine body goes here...
DECLARE O_Item_Name text;
SELECT item_master.Item_Name INTO O_Item_Name FROM item_master WHERE item_master.`Code` = I_Item_Code;
INSERT INTO purchasing (
purchasing.InvoiceNo,
purchasing.Barcode,
purchasing.Quantity,
purchasing.Price,
purchasing.INV_Date,
purchasing.INV_Time,
purchasing.Username,
purchasing.Shift
)
VALUES
( I_Invoice_No, I_Item_Code, I_Quantity, I_Price, CURRENT_DATE (), CURRENT_TIME (), I_Username, I_Shift );
INSERT INTO trx_history (
trx_history.TRX_Type,
trx_history.TRX_Name,
trx_history.TRX_Date,
trx_history.TRX_Time,
trx_history.Amount,
trx_history.Shift,
trx_history.Username
)
VALUES
(
'مشتريات',
O_Item_Name,CURRENT_DATE(),CURRENT_TIME(),(I_Quantity * I_Price),I_Shift,I_Username);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for mround
-- ----------------------------
DROP FUNCTION IF EXISTS `mround`;
delimiter ;;
CREATE FUNCTION `mround`(n1 decimal(11,2), n2 decimal(11,2))
 RETURNS decimal(11,2)
  NO SQL 
BEGIN

DECLARE result decimal(11,2);
DECLARE Round_Status text;
DECLARE Round_Type text;

SELECT system_config.`Value` INTO Round_Status FROM system_config WHERE system_config.Description = 'Round_Money_Status';
SELECT system_config.`Value` INTO Round_Type FROM system_config WHERE system_config.Description = 'Round_Money_UP';

IF(Round_Status != 'False') THEN
	IF(Round_Type = 'True') THEN
		SET result = (ceiling(n1 / n2) * n2);
	ELSE
		SET result = ROUND(n1/n2)*n2;
	END IF;
ELSE
	SET result = n1;
END IF;
RETURN result;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for New_Permission_Group
-- ----------------------------
DROP PROCEDURE IF EXISTS `New_Permission_Group`;
delimiter ;;
CREATE PROCEDURE `New_Permission_Group`(IN `I_Group_Name` text,
IN `I_ID` INT,
IN `I_View` text,
IN `I_New` text,
IN `I_Edit` text,
IN `I_Delete` text,
IN `I_Print` text)
BEGIN
#Routine body goes here...
DECLARE O_ParentID int;
DECLARE O_PermissionID int;
if(I_View = 'True') THEN
SET I_View = '1';
ELSE
SET I_View = '0';
END IF;
if(I_New = 'True') THEN
SET I_New = '1';
ELSE
SET I_New = '0';
END IF;
if(I_Edit = 'True') THEN
SET I_Edit = '1';
ELSE
SET I_Edit = '0';
END IF;
if(I_Delete = 'True') THEN
SET I_Delete = '1';
ELSE
SET I_Delete = '0';
END IF;
if(I_Print = 'True') THEN
SET I_Print = '1';
ELSE
SET I_Print = '0';
END IF;
SELECT per_list.ParentID INTO O_ParentID FROM per_list WHERE per_list.ID = I_ID;
SELECT per_list.PermissionID INTO O_PermissionID FROM per_list WHERE per_list.ID = I_ID;
INSERT INTO permission_type (
permission_type.ParentID,
permission_type.PermissionID,
permission_type.Permission_Type,
permission_type.`View`,
permission_type.New,
permission_type.Edit,
permission_type.`Delete`,
permission_type.Print
)
VALUES
(O_ParentID, O_PermissionID, I_Group_Name, I_View, I_New, I_Edit, I_Delete,I_Print);
END
;;
delimiter ;

-- ----------------------------
-- Function structure for PS_Control
-- ----------------------------
DROP FUNCTION IF EXISTS `PS_Control`;
delimiter ;;
CREATE FUNCTION `PS_Control`(`I_Device_Name` text,`I_User_Name` text,`I_Action` text,`I_Description` text)
 RETURNS int(11)
  NO SQL 
BEGIN
	#Routine body goes here...
	
	DECLARE O_IP_Address text;
	DECLARE O_Is_Time text;
	
	SELECT devices.IP_Address INTO O_IP_Address FROM devices WHERE devices.Device_Name = I_Device_Name;
	SELECT devices.Kind INTO O_Is_Time FROM devices WHERE devices.Device_Name = I_Device_Name;
	IF(ISNULL(O_IP_Address)) THEN
		RETURN 0;
	ELSE
		IF(O_Is_Time IS NOT NULL) THEN
			IF(I_Action = 'ON')THEN
				INSERT INTO command_send(command_send.IP_Address,command_send.Device_Name,command_send.Command,command_send.Username,command_send.Remark ) VALUES ( O_IP_Address,I_Device_Name,11,I_User_Name,I_Description);
				RETURN 1;
			ELSEIF(I_Action = 'OFF') THEN
				INSERT INTO command_send(command_send.IP_Address,command_send.Device_Name,command_send.Command,command_send.Username,command_send.Remark ) VALUES ( O_IP_Address,I_Device_Name,10,I_User_Name,I_Description);
				RETURN 1;
			END IF;
		ELSE 
			RETURN 0;
		END IF;
	END IF;

				
END
;;
delimiter ;

-- ----------------------------
-- Function structure for PS_Open
-- ----------------------------
DROP FUNCTION IF EXISTS `PS_Open`;
delimiter ;;
CREATE FUNCTION `PS_Open`(`I_Device_Name` text,`I_User_Name` text,`I_Action` text,`I_Description` text)
 RETURNS int(11)
  NO SQL 
BEGIN
	#Routine body goes here...
	
	DECLARE O_IP_Address text;
	
	SELECT devices.IP_Address INTO O_IP_Address FROM devices WHERE devices.Device_Name = I_Device_Name;
	
	IF(ISNULL(O_IP_Address)) THEN
		RETURN 0;
	ELSE
		IF(O_IP_Address != '127.0.0.1') THEN
			IF(I_Action = 'ON')THEN
				INSERT INTO command_send(command_send.IP_Address,command_send.Device_Name,command_send.Command,command_send.Username,command_send.Remark ) VALUES ( O_IP_Address,I_Device_Name,11,I_User_Name,I_Description);
				RETURN 1;
			ELSEIF(I_Action = 'OFF') THEN
				INSERT INTO command_send(command_send.IP_Address,command_send.Device_Name,command_send.Command,command_send.Username,command_send.Remark ) VALUES ( O_IP_Address,I_Device_Name,10,I_User_Name,I_Description);
				RETURN 1;
			END IF;
		END IF;
	END IF;

				
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Replace_Customer_Point
-- ----------------------------
DROP PROCEDURE IF EXISTS `Replace_Customer_Point`;
delimiter ;;
CREATE PROCEDURE `Replace_Customer_Point`(IN `I_C_ID` int,IN `I_C_Point` int,IN `I_Money_Add` DECIMAL(11,2),OUT `O_Result` text, IN `I_Username` text)
BEGIN
#Routine body goes here...
UPDATE customer SET customer.C_Point = customer.C_Point - I_C_Point , customer.C_Money = customer.C_Money + I_Money_Add WHERE customer.C_ID = I_C_ID;
INSERT INTO customer_history (
customer_history.Customer_ID,
customer_history.Type,
customer_history.Amount,
customer_history.Date,
customer_history.Time,
customer_history.Username,
customer_history.Shift_No,
customer_history.Remark
)
VALUES
(I_C_ID,'إيداع',I_Money_Add,CURRENT_DATE(),CURRENT_TIME(),I_Username,Check_Shift(I_Username),CONCAT('تحويل نقاط  ',I_C_Point));
INSERT INTO trx_history (
trx_history.TRX_Type,
trx_history.TRX_Name,
trx_history.TRX_Date,
trx_history.TRX_Time,
trx_history.Amount,
trx_history.Shift,
trx_history.Username
)
VALUES
('عملاء','إضافة رصيد',CURRENT_DATE(),CURRENT_TIME(),I_Money_Add,Check_Shift(I_Username),I_Username);
SET O_Result = 'تم تحويل نقاط العميل إلي رصيد .';
END
;;
delimiter ;

-- ----------------------------
-- Function structure for Reset_Device
-- ----------------------------
DROP FUNCTION IF EXISTS `Reset_Device`;
delimiter ;;
CREATE FUNCTION `Reset_Device`(`I_Device_Name` text)
 RETURNS int(11)
  NO SQL 
BEGIN
#Routine body goes here...
UPDATE devices
SET devices.Play_Type = NULL,
devices.Play_Price = NULL,
devices.Start_Time = NULL,
devices.End_Time = NULL,
devices.Status_IMG = 'مغلق',
devices.`Status` = 'متاح',
devices.Period = NULL,
devices.Play_Cate = NULL,
devices.Order_No = NULL,
devices.Invitation = NULL,
devices.MAC_Address = NULL,
devices.Customer_ID = NULL,
devices.Deposit = 0
WHERE
devices.Device_Name = I_Device_Name;
RETURN 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Start_2_Minute
-- ----------------------------
DROP PROCEDURE IF EXISTS `Start_2_Minute`;
delimiter ;;
CREATE PROCEDURE `Start_2_Minute`(IN `I_Device_Name` text,IN `I_Username` text,OUT `O_Result` text)
BEGIN
#Routine body goes here...
DECLARE O_IP_Address text;
DECLARE Kind text;
SELECT devices.Kind INTO Kind FROM devices WHERE devices.Device_Name = I_Device_Name;
if(Kind = 'Time') THEN
SELECT devices.IP_Address INTO O_IP_Address FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT system_config.`Value` INTO O_Result FROM system_config WHERE system_config.Description = 'Alarm_System';
if(O_Result = 'True') THEN
INSERT INTO command_send ( command_send.IP_Address, command_send.Device_Name, command_send.Command, command_send.Username, command_send.Remark )
VALUES
( O_IP_Address, I_Device_Name, 13, I_Username, '2 Minute' );
SET O_Result = 'تم تشغيل الجهاز دقيقتين .';
ELSE
SET O_Result = 'نظام البوكسات غير مفعل';
END IF;
ELSE
SET O_Result ='الجهاز المحدد لا يعمل بالوقت .';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Start_New_Time
-- ----------------------------
DROP PROCEDURE IF EXISTS `Start_New_Time`;
delimiter ;;
CREATE PROCEDURE `Start_New_Time`(IN `I_Device_Name` text,
IN `I_Play_Type` text,
IN `I_Period` INT,
IN `I_UserName` text,
OUT `O_Result` text,
IN `I_Customer_ID` text,
IN `S_Type` text)
BEGIN

#Routine body goes here...

DECLARE O_Device_Status text;
DECLARE Customer_Balance FLOAT;
DECLARE O_Customer_Minute INT;
DECLARE O_Play_Price DECIMAL(11,2);
DECLARE O_Customer_Name text;
DECLARE Result INT;

SELECT customer.C_Name INTO O_Customer_Name FROM customer WHERE customer.C_ID = I_Customer_ID;
-- SELECT device_price.Hour_Price INTO O_Play_Price FROM device_price WHERE device_price.Device_Name = I_Device_Name AND device_price.Game_Type = I_Play_Type AND device_price.S_From < Time(CURRENT_TIME()) ORDER BY device_price.S_From DESC LIMIT 1 ;
SET O_Play_Price = Get_Play_Price(I_Device_Name, I_Play_Type, I_Period, CURRENT_TIME());
SELECT customer.C_Money INTO Customer_Balance FROM customer WHERE customer.C_ID = I_Customer_ID;
SELECT devices.`Status` INTO O_Device_Status FROM devices WHERE devices.Device_Name = I_Device_Name;

IF(O_Device_Status = 'متاح') THEN
	IF(S_Type = 'Customer') THEN
		if(Customer_Balance < 0) THEN
			SET O_Result = 'يرجي التأكد من رصيد حسابك';
		ELSE
			SET O_Customer_Minute = Customer_Balance / O_Play_Price;
			SET O_Result = Insert_New_Time('Limited', I_Play_Type, O_Customer_Minute, I_Device_Name, O_Customer_Name,I_Customer_ID);
		END IF;
	ELSE
				IF(I_Period <> 0) THEN
					SET O_Result = Insert_New_Time('Limited', I_Play_Type, I_Period, I_Device_Name, I_UserName,I_Customer_ID);
				ELSE
					SET O_Result = Insert_New_Time('UnLimited', I_Play_Type, I_Period, I_Device_Name, I_UserName,I_Customer_ID);
				END IF;
			END IF;
	IF(O_Result = '1') THEN
			SET O_Result = 'تم بدأ تشغيل الجهاز';
	ELSE
			SET O_Result = 'هناك خطأ في البيانات';
		END IF;
ELSE
		SET O_Result = 'هناك خطأ في البيانات';
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Start_Shift
-- ----------------------------
DROP PROCEDURE IF EXISTS `Start_Shift`;
delimiter ;;
CREATE PROCEDURE `Start_Shift`(IN `I_Username` text,OUT `O_Shift_No` int)
BEGIN
#Routine body goes here...
DECLARE O_Start_AMT DECIMAL(11,3);
DECLARE O_Shift_ID INT;
DECLARE O_First_Invoice INT;
SELECT MAX(invoices.Inv_No)+1 INTO O_First_Invoice FROM invoices;
IF	(ISNULL(O_First_Invoice)) 	THEN
SET	O_First_Invoice = '1' ;
ELSE
Set O_First_Invoice = O_First_Invoice ;
END IF;
SELECT MAX(shift_mgt.ID) INTO O_Shift_ID FROM shift_mgt WHERE shift_mgt.`Status` = 'Close';
SELECT shift_mgt.Shift_No INTO O_Shift_No FROM shift_mgt Where shift_mgt.`Status` = 'Open';
SELECT shift_mgt.Remain_AMT INTO O_Start_AMT FROM shift_mgt WHERE shift_mgt.ID = O_Shift_ID;
IF(ISNULL(O_Shift_No)) 	THEN
SELECT MAX(shift_mgt.Shift_No)+1 INTO O_Shift_No FROM shift_mgt;
IF	(ISNULL(O_Shift_No)) 	THEN
SET	O_Shift_No = '1' ;
ELSE
Set O_Shift_No = O_Shift_No ;
END IF;
if(ISNULL(O_Start_AMT)) THEN
SET O_Start_AMT = 0;
END IF;
INSERT INTO shift_mgt (shift_mgt.Shift_No,shift_mgt.Shift_Date,shift_mgt.Shift_From,shift_mgt.Shift_Open,shift_mgt.First_Invoice,shift_mgt.Start_AMT,shift_mgt.`Status`)
VALUES
(O_Shift_No,CURRENT_DATE(),CURRENT_TIMESTAMP(),I_Username,O_First_Invoice,O_Start_AMT,'Open');
ELSE
SET O_Shift_No = O_Shift_No;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Switch_PS
-- ----------------------------
DROP PROCEDURE IF EXISTS `Switch_PS`;
delimiter ;;
CREATE PROCEDURE `Switch_PS`(IN `I_PS_Name_OLD` text,
IN `I_PS_Name_NEW` text,
IN `I_Username` text,
OUT `O_Result` text)
BEGIN

DECLARE S_Start_Time_Old datetime;-- DELETE
DECLARE S_End_Time_Old datetime;-- DELETE

DECLARE O_Play_Type text; 
DECLARE O_Play_Cat text;

DECLARE O_Play_Price_Old DECIMAL(11,2);
DECLARE O_Play_Price_New DECIMAL(11,2);

DECLARE O_Start_Time_Old datetime;
DECLARE O_End_Time_Old datetime;

DECLARE O_Status_IMG text;
DECLARE O_Period_OLD INT;

DECLARE O_Wait_ID INT;
DECLARE O_Order_No INT;

DECLARE O_Remain_Time INT;
DECLARE O_Session_Period INT;

DECLARE O_Money_Round DECIMAL(11,2);
DECLARE O_Customer_ID INT;
DECLARE O_Command INT;

DECLARE O_Deposit INT;

SELECT devices.Deposit INTO O_Deposit FROM devices WHERE devices.Device_Name = I_PS_Name_OLD;
SELECT devices.Customer_ID INTO O_Customer_ID FROM devices WHERE devices.Device_Name = I_PS_Name_OLD;
SELECT system_config.`Value` INTO O_Money_Round FROM system_config WHERE system_config.Description = 'Round_Money_Value';
SELECT devices.Order_No INTO O_Order_No FROM devices Where devices.Device_Name = I_PS_Name_OLD;
SELECT devices.Play_Type INTO O_Play_Type FROM devices WHERE devices.Device_Name = I_PS_Name_OLD;
SELECT devices.End_Time INTO O_End_Time_Old FROM devices WHERE devices.Device_Name = I_PS_Name_OLD;
SELECT devices.Status_IMG INTO O_Status_IMG FROM devices WHERE devices.Device_Name = I_PS_Name_OLD;
SELECT devices.Period INTO O_Period_OLD FROM devices WHERE devices.Device_Name = I_PS_Name_OLD;
SELECT devices.Play_Cate INTO O_Play_Cat FROM devices WHERE devices.Device_Name = I_PS_Name_OLD;
SELECT MAX(play_wait.ID) INTO O_Wait_ID FROM play_wait WHERE play_wait.Device_Name = I_PS_Name_OLD;
SELECT devices.Start_Time INTO O_Start_Time_Old FROM devices WHERE devices.Device_Name = I_PS_Name_OLD;
SELECT play_wait.Start_Time INTO S_Start_Time_Old FROM play_wait Where play_wait.ID = O_Wait_ID;

SET O_Session_Period = TIMESTAMPDIFF(MINUTE,S_Start_Time_Old,CURRENT_TIMESTAMP());
SET O_Play_Price_Old = Get_Play_Price(I_PS_Name_OLD, O_Play_Type, O_Session_Period, O_Start_Time_Old);


IF(O_Play_Cat = 'وقت محدد') THEN
	SELECT play_wait.End_Time INTO S_End_Time_Old FROM play_wait WHERE play_wait.ID = O_Wait_ID;

	IF(TIMESTAMPDIFF(MINUTE,CURRENT_TIMESTAMP(),S_End_Time_Old) > 5) THEN
		-- UPDATE play_wait SET play_wait.End_Time = CURRENT_TIMESTAMP() WHERE play_wait.ID = O_Wait_ID;
		SET O_Remain_Time = TIMESTAMPDIFF(MINUTE,CURRENT_TIMESTAMP(),S_End_Time_Old);
		SET O_Play_Price_New = Get_Play_Price(I_PS_Name_NEW, O_Play_Type, O_Remain_Time, CURRENT_TIME());
		UPDATE play_wait SET play_wait.Period = O_Session_Period , play_wait.Cost = mround(((TIMESTAMPDIFF( MINUTE, S_Start_Time_Old, CURRENT_TIMESTAMP()) * O_Play_Price_Old) / 60), O_Money_Round),play_wait.End_Time = CURRENT_TIMESTAMP() WHERE play_wait.ID = O_Wait_ID;
		INSERT INTO play_wait (
		play_wait.Order_No,
		play_wait.Device_Name,
		play_wait.Start_Time,
		play_wait.End_Time,
		play_wait.Period,
		play_wait.Cost,
		play_wait.Play_Type,
		play_wait.Play_Price,
		play_wait.User_Name,
		play_wait.Shift
		)
		VALUES
		(O_Order_No,I_PS_Name_NEW,CURRENT_TIMESTAMP(),TIMESTAMPADD(MINUTE,O_Remain_Time,CURRENT_TIMESTAMP()),O_Remain_Time,((O_Remain_Time * O_Play_Price_New)/60),O_Play_Type,O_Play_Price_New,I_Username,Check_Shift(I_Username));
		#New PS
			UPDATE devices SET Play_Type = O_Play_Type , Play_Price = O_Play_Price_New , Start_Time = O_Start_Time_Old , End_Time = O_End_Time_Old , Status_IMG = O_Status_IMG , `Status` = 'مشغول' , Period = O_Period_OLD , Play_Cate = O_Play_Cat , devices.Order_No = O_Order_No , devices.Customer_ID = O_Customer_ID , devices.Deposit = O_Deposit Where devices.Device_Name = I_PS_Name_NEW ;
		#Old PS
		SET O_Result = Reset_Device(I_PS_Name_OLD);
		SET O_Command = PS_Control(I_PS_Name_OLD, I_Username, 'OFF', 'Switch Device');
	SET O_Command = PS_Control(I_PS_Name_NEW, I_Username, 'ON', 'Switch Device');
		SET O_Result = 'تم تبديل الجهاز .';
	ELSE
		SET O_Result = 'لا يمكن تبديل الجهاز , متبقي خمس دقائق او أقل .';
	END IF;
ELSEIF(O_Play_Cat = 'مفتوح') THEN
	SET O_Play_Price_New = Get_Play_Price(I_PS_Name_NEW, O_Play_Type, 0, CURRENT_TIME());
	-- SELECT play_wait.Start_Time INTO U_Start_Time FROM play_wait Where play_wait.ID = U_Wait_ID;
	UPDATE play_wait SET play_wait.End_Time = CURRENT_TIMESTAMP(),play_wait.Period = TIMESTAMPDIFF( MINUTE, S_Start_Time_Old, CURRENT_TIMESTAMP()), play_wait.Cost = mround(((TIMESTAMPDIFF( MINUTE, S_Start_Time_Old, CURRENT_TIMESTAMP()) * O_Play_Price_Old) / 60), O_Money_Round) WHERE play_wait.ID = O_Wait_ID;
	INSERT INTO play_wait (play_wait.Order_No, play_wait.Device_Name, play_wait.Start_Time, play_wait.Play_Type, play_wait.Play_Price, play_wait.User_Name, play_wait.Shift )
	VALUES
	(O_Order_No,I_PS_Name_NEW, CURRENT_TIMESTAMP(), O_Play_Type, O_Play_Price_New, I_Username, Check_Shift(I_Username));
	#New PS
	UPDATE devices SET Play_Type = O_Play_Type , Play_Price = O_Play_Price_New , Start_Time = O_Start_Time_Old , Status_IMG = O_Status_IMG , `Status` = 'مشغول' , Play_Cate = O_Play_Cat , devices.Order_No = O_Order_No , devices.Customer_ID = O_Customer_ID, devices.Deposit = O_Deposit Where devices.Device_Name = I_PS_Name_NEW ;
	Set O_Result = Reset_Device(I_PS_Name_OLD);
	SET O_Command = PS_Control(I_PS_Name_OLD, I_Username, 'OFF', 'Switch Device');
	SET O_Command = PS_Control(I_PS_Name_NEW, I_Username, 'ON', 'Switch Device');
	SET O_Result = 'تم تبديل الجهاز بنجاح';
	
END IF;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Switch_PS_Play
-- ----------------------------
DROP PROCEDURE IF EXISTS `Switch_PS_Play`;
delimiter ;;
CREATE PROCEDURE `Switch_PS_Play`(IN `I_Device_Name` text,
IN `I_Username` text, OUT `O_Result` text)
BEGIN

DECLARE S_Start_Time_Old datetime;-- DELETE
DECLARE S_End_Time_Old datetime;-- DELETE

DECLARE O_Play_Type text; 
DECLARE O_Play_Cat text;
DECLARE O_Play_Type_New text; 

DECLARE O_Play_Price_Old DECIMAL(11,2);
DECLARE O_Play_Price_New DECIMAL(11,2);

DECLARE O_Start_Time_Old datetime;
DECLARE O_End_Time_Old datetime;

DECLARE O_Status_IMG text;
DECLARE O_Period_OLD INT;

DECLARE O_Wait_ID INT;
DECLARE O_Order_No INT;

DECLARE O_Remain_Time INT;
DECLARE O_Session_Period INT;

DECLARE O_Money_Round DECIMAL(11,2);
DECLARE O_Customer_ID INT;
DECLARE O_Command INT;

SELECT devices.Customer_ID INTO O_Customer_ID FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT system_config.`Value` INTO O_Money_Round FROM system_config WHERE system_config.Description = 'Round_Money_Value';
SELECT devices.Order_No INTO O_Order_No FROM devices Where devices.Device_Name = I_Device_Name;
SELECT devices.Play_Type INTO O_Play_Type FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.End_Time INTO O_End_Time_Old FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.Status_IMG INTO O_Status_IMG FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.Period INTO O_Period_OLD FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT devices.Play_Cate INTO O_Play_Cat FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT MAX(play_wait.ID) INTO O_Wait_ID FROM play_wait WHERE play_wait.Device_Name = I_Device_Name;
SELECT devices.Start_Time INTO O_Start_Time_Old FROM devices WHERE devices.Device_Name = I_Device_Name;
SELECT play_wait.Start_Time INTO S_Start_Time_Old FROM play_wait Where play_wait.ID = O_Wait_ID;

SET O_Session_Period = TIMESTAMPDIFF(MINUTE,S_Start_Time_Old,CURRENT_TIMESTAMP());
SET O_Play_Price_Old = Get_Play_Price(I_Device_Name, O_Play_Type, O_Session_Period, O_Start_Time_Old);

IF(O_Play_Type = 'فردي') THEN
	SET O_Play_Type_New = 'زوجي';
ELSEIF (O_Play_Type = 'زوجي') THEN
	SET O_Play_Type_New = 'فردي';
END IF;

IF(O_Play_Cat = 'وقت محدد') THEN
	SELECT play_wait.End_Time INTO S_End_Time_Old FROM play_wait WHERE play_wait.ID = O_Wait_ID;

	IF(TIMESTAMPDIFF(MINUTE,CURRENT_TIMESTAMP(),S_End_Time_Old) > 5) THEN
		-- UPDATE play_wait SET play_wait.End_Time = CURRENT_TIMESTAMP() WHERE play_wait.ID = O_Wait_ID;
		SET O_Remain_Time = TIMESTAMPDIFF(MINUTE,CURRENT_TIMESTAMP(),S_End_Time_Old);
		SET O_Play_Price_New = Get_Play_Price(I_Device_Name, O_Play_Type_New, O_Remain_Time, CURRENT_TIME());
		UPDATE play_wait SET play_wait.Period = O_Session_Period , play_wait.Cost = mround(((TIMESTAMPDIFF( MINUTE, S_Start_Time_Old, CURRENT_TIMESTAMP()) * O_Play_Price_Old) / 60), O_Money_Round),play_wait.End_Time = CURRENT_TIMESTAMP() WHERE play_wait.ID = O_Wait_ID;
		INSERT INTO play_wait (
		play_wait.Order_No,
		play_wait.Device_Name,
		play_wait.Start_Time,
		play_wait.End_Time,
		play_wait.Period,
		play_wait.Cost,
		play_wait.Play_Type,
		play_wait.Play_Price,
		play_wait.User_Name,
		play_wait.Shift
		)
		VALUES
		(O_Order_No,I_Device_Name,CURRENT_TIMESTAMP(),TIMESTAMPADD(MINUTE,O_Remain_Time,CURRENT_TIMESTAMP()),O_Remain_Time,((O_Remain_Time * O_Play_Price_New)/60),O_Play_Type_New,O_Play_Price_New,I_Username,Check_Shift(I_Username));
		#New PS
			UPDATE devices SET Play_Type = O_Play_Type_New , Play_Price = O_Play_Price_New , Status_IMG = O_Play_Type_New Where devices.Device_Name = I_Device_Name ;
		SET O_Result = 'تم تبديل اللعب .';
	ELSE
		SET O_Result = 'لا يمكن تبديل اللعب , متبقي خمس دقائق أو أقل .';
	END IF;
ELSEIF(O_Play_Cat = 'مفتوح') THEN
	SET O_Play_Price_New = Get_Play_Price(I_Device_Name, O_Play_Type_New, 0, CURRENT_TIME());
	-- SELECT play_wait.Start_Time INTO U_Start_Time FROM play_wait Where play_wait.ID = U_Wait_ID;
	UPDATE play_wait SET play_wait.End_Time = CURRENT_TIMESTAMP(),play_wait.Period = TIMESTAMPDIFF( MINUTE, S_Start_Time_Old, CURRENT_TIMESTAMP()), play_wait.Cost = mround(((TIMESTAMPDIFF( MINUTE, S_Start_Time_Old, CURRENT_TIMESTAMP()) * O_Play_Price_Old) / 60), O_Money_Round) WHERE play_wait.ID = O_Wait_ID;
	INSERT INTO play_wait (play_wait.Order_No, play_wait.Device_Name, play_wait.Start_Time, play_wait.Play_Type, play_wait.Play_Price, play_wait.User_Name, play_wait.Shift )
	VALUES
	(O_Order_No,I_Device_Name, CURRENT_TIMESTAMP(), O_Play_Type_New, O_Play_Price_New, I_Username, Check_Shift(I_Username));
	#New PS
	UPDATE devices SET Play_Type = O_Play_Type_New , Play_Price = O_Play_Price_New , Status_IMG = O_Play_Type_New Where devices.Device_Name = I_Device_Name ;
		SET O_Result = 'تم تبديل اللعب .';
	
END IF;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Time_Check
-- ----------------------------
DROP PROCEDURE IF EXISTS `Time_Check`;
delimiter ;;
CREATE PROCEDURE `Time_Check`(OUT `O_Result` INT)
BEGIN
	#Routine body goes here...
	
	DECLARE L_Time datetime;
	
	SELECT MAX(time.Time_Check) INTO L_Time FROM time;
	
	IF(L_Time <= CURRENT_TIMESTAMP()) THEN
	UPDATE time SET time.Time_Check = CURRENT_TIMESTAMP();
	SET O_Result = 1;
	ELSE
	INSERT INTO time_history(time_history.TRX_Date, time_history.OLD_Time,time_history.New_Time,time_history.Remark) VALUES (CURRENT_DATE(), L_Time,CURRENT_TIMESTAMP(),'تم تغيير الوقت');
	SET O_Result = 0;
	END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Time_Check_C
-- ----------------------------
DROP PROCEDURE IF EXISTS `Time_Check_C`;
delimiter ;;
CREATE PROCEDURE `Time_Check_C`(OUT `O_Result` INT)
BEGIN
	#Routine body goes here...
	
	DECLARE L_Time datetime;
	
	SELECT MAX(time.Time_Check) INTO L_Time FROM time;
	
	IF(L_Time < CURRENT_TIMESTAMP()) THEN
	SET O_Result = 1;
	ELSE
	SET O_Result = 0;
	END IF;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for tround
-- ----------------------------
DROP FUNCTION IF EXISTS `tround`;
delimiter ;;
CREATE FUNCTION `tround`(n1 decimal(11,2), n2 decimal(11,2))
 RETURNS decimal(11,2)
  NO SQL 
BEGIN

DECLARE result decimal(11,2);
DECLARE Round_Status text;
DECLARE Round_Type text;

SELECT system_config.`Value` INTO Round_Status FROM system_config WHERE system_config.Description = 'Round_Time_Status';
SELECT system_config.`Value` INTO Round_Type FROM system_config WHERE system_config.Description = 'Round_Time_Up';

IF(Round_Status != 'False') THEN
	IF(Round_Type = 'True') THEN
		SET result = (ceiling(n1 / n2) * n2);
	ELSE
		SET result = ROUND(n1/n2)*n2;
	END IF;
ELSE
	SET result = n1;
END IF;
RETURN result;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Update_Logo
-- ----------------------------
DROP PROCEDURE IF EXISTS `Update_Logo`;
delimiter ;;
CREATE PROCEDURE `Update_Logo`(IN `I_Image` longblob)
BEGIN
#Routine body goes here...
UPDATE receipt SET receipt.Image = I_Image;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Update_Mail_Notification
-- ----------------------------
DROP PROCEDURE IF EXISTS `Update_Mail_Notification`;
delimiter ;;
CREATE PROCEDURE `Update_Mail_Notification`(IN `I_Mail_Notf` text,IN `I_Mail_List` text,IN `I_Play_History` text,IN `I_Sales_History` text,IN `I_Discount_History` text,IN `I_Purchasing_History` text,IN `I_Expenses_History` text,IN `I_Mail_Subject` text)
BEGIN
#Routine body goes here...
UPDATE mail_setting SET mail_setting.`Value` = I_Mail_Notf WHERE mail_setting.Description = 'Mail_Notification';
UPDATE mail_setting SET mail_setting.`Value` = I_Mail_List WHERE mail_setting.Description = 'Mail_List';
UPDATE mail_setting SET mail_setting.`Value` = I_Play_History WHERE mail_setting.Description = 'Play_History';
UPDATE mail_setting SET mail_setting.`Value` = I_Sales_History WHERE mail_setting.Description = 'Sales_History';
UPDATE mail_setting SET mail_setting.`Value` = I_Discount_History WHERE mail_setting.Description = 'Discount_History';
UPDATE mail_setting SET mail_setting.`Value` = I_Purchasing_History WHERE mail_setting.Description = 'Purchasing_History';
UPDATE mail_setting SET mail_setting.`Value` = I_Expenses_History WHERE mail_setting.Description = 'Expenses_History';
UPDATE mail_setting SET mail_setting.`Value` = I_Mail_Subject WHERE mail_setting.Description = 'Mail_Subject';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Update_Printer_Info
-- ----------------------------
DROP PROCEDURE IF EXISTS `Update_Printer_Info`;
delimiter ;;
CREATE PROCEDURE `Update_Printer_Info`(IN `I_Printer_Status` text,IN `I_Sales_Print` text,IN `I_Direct_Sales_Print` text,IN `I_Print_QTY` int,IN `I_Ask_For_Print` text,IN `I_Footer` text,IN `I_Logo` LONGBLOB ,OUT `O_Result` text)
BEGIN
#Routine body goes here...
UPDATE print_setting SET print_setting.`Value` = I_Printer_Status WHERE print_setting.Description = 'Printer_Status';
UPDATE print_setting SET print_setting.`Value` = I_Sales_Print WHERE print_setting.Description = 'Print_Sales_Invoice';
UPDATE print_setting SET print_setting.`Value` = I_Direct_Sales_Print WHERE print_setting.Description = 'Print_Direct_Sales';
UPDATE print_setting SET print_setting.`Value` = I_Print_QTY WHERE print_setting.Description = 'Print_Quantity';
UPDATE print_setting SET print_setting.`Value` = I_Ask_For_Print WHERE print_setting.Description = 'Ask_For_Print_Again';
UPDATE receipt SET receipt.Footer = I_Footer WHERE receipt.ID = 1;
UPDATE receipt SET receipt.Image = I_Logo WHERE receipt.ID = 1;
SET O_Result = 'تم حفظ اللبيانات .';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Update_Round_Info
-- ----------------------------
DROP PROCEDURE IF EXISTS `Update_Round_Info`;
delimiter ;;
CREATE PROCEDURE `Update_Round_Info`(IN `I_Round_Min_Status` text,IN `I_Round_Min_UP` text,IN `I_Round_Min_Value` int,IN `I_Round_Mon_Status` text,IN `I_Round_Mon_UP` text,IN `I_Round_Mon_Value` DECIMAL(11,2),OUT `O_Result` text)
BEGIN
#Routine body goes here...
UPDATE system_config SET system_config.`Value` = I_Round_Min_Status WHERE system_config.Description = 'Round_Time_Status';
UPDATE system_config SET system_config.`Value` = I_Round_Min_UP WHERE system_config.Description = 'Round_Time_Up';
UPDATE system_config SET system_config.`Value` = I_Round_Min_Value WHERE system_config.Description = 'Round_Time_Value';
UPDATE system_config SET system_config.`Value` = I_Round_Mon_Status WHERE system_config.Description = 'Round_Money_Status';
UPDATE system_config SET system_config.`Value` = I_Round_Mon_UP WHERE system_config.Description = 'Round_Money_UP';
UPDATE system_config SET system_config.`Value` = I_Round_Mon_Value WHERE system_config.Description = 'Round_Money_Value';
SET O_Result = 'تم حفظ البيانات .';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Update_System_Info
-- ----------------------------
DROP PROCEDURE IF EXISTS `Update_System_Info`;
delimiter ;;
CREATE PROCEDURE `Update_System_Info`(IN `I_Control_Box` text,IN `I_Name` text,IN `I_BackUP` text,IN `I_Shift` text,IN `I_Sales` text,IN `I_Stock` text,OUT `O_Result` text)
BEGIN
#Routine body goes here...
UPDATE system_config SET system_config.`Value` = I_Control_Box WHERE system_config.Description = 'Alarm_System';
UPDATE system_config SET system_config.`Value` = I_Name WHERE system_config.Description = 'Name';
UPDATE system_config SET system_config.`Value` = I_BackUP WHERE system_config.Description = 'Backup_Direction';
UPDATE system_config SET system_config.`Value` = I_Shift WHERE system_config.Description = 'Shift_Report_Direction';
UPDATE system_config SET system_config.`Value` = I_Sales WHERE system_config.Description = 'Sales_Report_Direction';
UPDATE system_config SET system_config.`Value` = I_Stock WHERE system_config.Description = 'Stock_Report_Direction';
SET O_Result = 'تم حفظ البيانات .';
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table devices
-- ----------------------------
DROP TRIGGER IF EXISTS `Update_Name`;
delimiter ;;
CREATE TRIGGER `Update_Name` AFTER UPDATE ON `devices` FOR EACH ROW if(old.Device_Name != new.Device_Name) THEN
UPDATE device_price SET device_price.Device_Name = new.Device_Name WHERE device_price.Device_Name = old.Device_Name;
END IF
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table devices
-- ----------------------------
DROP TRIGGER IF EXISTS `Delete_Device`;
delimiter ;;
CREATE TRIGGER `Delete_Device` AFTER DELETE ON `devices` FOR EACH ROW Delete FROM device_price Where device_price.Device_Name = old.Device_Name
;
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table issue_history
-- ----------------------------
DROP TRIGGER IF EXISTS `Update_Stock_Issue`;
delimiter ;;
CREATE TRIGGER `Update_Stock_Issue` AFTER UPDATE ON `issue_history` FOR EACH ROW UPDATE stock SET stock.Quantity = stock.Quantity - new.Issued_Quantity , stock.Amount = stock.Amount - (new.Issued_Quantity * stock.Price) WHERE stock.Barcode = new.Item_ID
;
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table market_history
-- ----------------------------
DROP TRIGGER IF EXISTS `Insert_Issue_History`;
delimiter ;;
CREATE TRIGGER `Insert_Issue_History` AFTER INSERT ON `market_history` FOR EACH ROW if((SELECT COUNT(item_master.IsProduct) FROM item_master WHERE item_master.`Code` = new.Item_ID AND item_master.IsProduct = '1') > 0) THEN
INSERT INTO issue_history (issue_history.Product_ID,issue_history.Item_ID,issue_history.BOM_Quantity)SELECT bom.Product_Code,bom.Item_ID,bom.Quantity FROM bom WHERE bom.Product_Code = new.Item_ID;
UPDATE issue_history SET issue_history.TRX_Date = CURRENT_DATE(), issue_history.Order_Quantity = new.Quantity WHERE issue_history.Order_Quantity IS NULL OR issue_history.Order_Quantity = '';
ELSE
UPDATE stock SET stock.Quantity = stock.Quantity - new.Quantity , stock.Amount = stock.Amount - (new.Quantity * stock.Price) WHERE stock.Barcode = new.Item_ID;
END IF
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table permissions
-- ----------------------------
DROP TRIGGER IF EXISTS `Insert_Permission_History`;
delimiter ;;
CREATE TRIGGER `Insert_Permission_History` AFTER UPDATE ON `permissions` FOR EACH ROW IF(old.`View` != new.`View`) THEN
Insert INTO permission_audit ( permission_audit.PermissionID,permission_audit.Type,permission_audit.Description,permission_audit.Permission, permission_audit.`From`,permission_audit.`To`,permission_audit.Date,permission_audit.Time) VALUES (new.PermissionID,'User Permission',new.Username,'View',old.`View`,new.`View`,CURRENT_DATE(),CURRENT_TIME() ) ;
ELSEIF(old.`New` != new.`New`) THEN
Insert INTO permission_audit ( permission_audit.PermissionID,permission_audit.Type,permission_audit.Description,permission_audit.Permission,permission_audit.`From`,permission_audit.`To`,permission_audit.Date,permission_audit.Time) VALUES (new.PermissionID,'User Permission',new.Username,'New',old.`New`,new.`New`,CURRENT_DATE(),CURRENT_TIME() ) ;
ELSEIF(old.Edit != new.Edit) THEN
Insert INTO permission_audit ( permission_audit.PermissionID,permission_audit.Type,permission_audit.Description,permission_audit.Permission,permission_audit.`From`,permission_audit.`To`,permission_audit.Date,permission_audit.Time) VALUES (new.PermissionID,'User Permission',new.Username,'Edit',old.Edit,new.Edit,CURRENT_DATE(),CURRENT_TIME() ) ;
ELSEIF(old.`Delete` != new.`Delete`) THEN
Insert INTO permission_audit ( permission_audit.PermissionID,permission_audit.Type,permission_audit.Description,permission_audit.Permission,permission_audit.`From`,permission_audit.`To`,permission_audit.Date,permission_audit.Time) VALUES (new.PermissionID,'User Permission',new.Username,'Delete',old.`Delete`,new.`Delete`,CURRENT_DATE(),CURRENT_TIME() ) ;
ELSEIF(old.Print != new.Print) THEN
Insert INTO permission_audit ( permission_audit.PermissionID,permission_audit.Type,permission_audit.Description,permission_audit.Permission,permission_audit.`From`,permission_audit.`To`,permission_audit.Date,permission_audit.Time) VALUES (new.PermissionID,'User Permission',new.Username,'Print',old.Print,new.Print,CURRENT_DATE(),CURRENT_TIME() ) ;
END IF
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table purchasing
-- ----------------------------
DROP TRIGGER IF EXISTS `Insert_Stock`;
delimiter ;;
CREATE TRIGGER `Insert_Stock` AFTER INSERT ON `purchasing` FOR EACH ROW if(SELECT COUNT(stock.Barcode) FROM stock WHERE stock.Barcode = new.Barcode > 0) THEN
UPDATE stock SET stock.Amount = stock.Amount + new.Amount , stock.Quantity = stock.Quantity + new.Quantity WHERE stock.Barcode = new.Barcode;
ELSE
INSERT INTO stock (stock.Barcode,stock.Quantity,stock.Amount) VALUES ( new.Barcode,new.Quantity,new.Amount);
END IF
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table purchasing
-- ----------------------------
DROP TRIGGER IF EXISTS `Return_Stock`;
delimiter ;;
CREATE TRIGGER `Return_Stock` BEFORE DELETE ON `purchasing` FOR EACH ROW UPDATE stock SET stock.Quantity = stock.Quantity - old.Quantity , stock.Amount = stock.Amount - old.Amount WHERE stock.Barcode = old.Barcode
;
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `Update_Username`;
delimiter ;;
CREATE TRIGGER `Update_Username` AFTER UPDATE ON `users` FOR EACH ROW if(old.Username != new.Username) THEN
UPDATE permissions SET permissions.Username = new.Username WHERE permissions.Username = old.Username;
END IF
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
DROP TRIGGER IF EXISTS `Delete_Username`;
delimiter ;;
CREATE TRIGGER `Delete_Username` AFTER DELETE ON `users` FOR EACH ROW DELETE FROM permissions WHERE permissions.Username = old.Username
;
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
