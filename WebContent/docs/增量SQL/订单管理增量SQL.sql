--随机附件

CREATE TABLE `erp_attachment` (
  `ATTACHMENT_ID` varchar(100) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ATTACHMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of erp_remarks
-- ----------------------------
INSERT INTO `erp_attachment` VALUES ('295926172a884b28ad9adf454137d6eb', '电脑包', 'a1');
INSERT INTO `erp_attachment` VALUES ('b74fa2d77faf4aaca1f0ba64927e6335', '键盘', 'a1');
INSERT INTO `erp_attachment` VALUES ('cb070bac61cf46c3a1e2790a8483c1e1', '鼠标', 'a1');
INSERT INTO `erp_attachment` VALUES ('fa51fc07acb1405e9e6e3c106095d7a6', '显示器', 'a2');

--维修设备

CREATE TABLE `erp_device` (
  `DEVICE_ID` varchar(100) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DEVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of erp_remarks
-- ----------------------------
INSERT INTO `erp_device` VALUES ('295926172a884b28ad9adf454137d6eb', '电脑包', 'a1');
INSERT INTO `erp_device` VALUES ('b74fa2d77faf4aaca1f0ba64927e6335', '键盘', 'a1');
INSERT INTO `erp_device` VALUES ('cb070bac61cf46c3a1e2790a8483c1e1', '鼠标', 'a1');
INSERT INTO `erp_device` VALUES ('fa51fc07acb1405e9e6e3c106095d7a6', '显示器', 'a2');

--维修进度

CREATE TABLE `erp_plan` (
  `PLAN_ID` varchar(100) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PLAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of erp_remarks
-- ----------------------------
INSERT INTO `erp_plan` VALUES ('295926172a884b28ad9adf454137d6eb', '维修中', 'a1');
INSERT INTO `erp_plan` VALUES ('b74fa2d77faf4aaca1f0ba64927e6335', '已完成', 'a1');

--付款方式

CREATE TABLE `erp_pay` (
  `PAY_ID` varchar(100) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of erp_remarks
-- ----------------------------
INSERT INTO `erp_pay` VALUES ('295926172a884b28ad9adf454137d6eb', '维修中', 'a1');
INSERT INTO `erp_pay` VALUES ('b74fa2d77faf4aaca1f0ba64927e6335', '已完成', 'a1');


--订单表新增字段：维修设备，维修进度，付款方式


alter table zhgly_prod.erp_customer add DEVICE VARCHAR(1000);

alter table zhgly_prod.erp_customer add PLAN VARCHAR(1000);

alter table zhgly_prod.erp_customer add PAY VARCHAR(1000);






