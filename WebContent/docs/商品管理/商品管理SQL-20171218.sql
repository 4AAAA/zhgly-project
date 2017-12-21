--成色
ALTER TABLE cp_goods ADD `DEGREE` varchar(100) NULL COMMENT '成色' ;

--使用耗材
ALTER TABLE cp_goods ADD MATERIAL varchar(100) NULL COMMENT '使用耗材' ;

--进货价
ALTER TABLE cp_goods ADD INFEE DOUBLE(11,2) NULL COMMENT '进货价' ;

--出货价
ALTER TABLE cp_goods ADD OUTFEE DOUBLE(11,2) NULL COMMENT '出货价' ;

--创建时间
ALTER TABLE cp_goods ADD CTIME varchar(32) NULL COMMENT '创建时间' ;

--入库量
ALTER TABLE cp_goods ADD INCOUNT int(11) NULL COMMENT '入库量' ;

--出库量
ALTER TABLE cp_goods ADD OUTCOUNT int(11) NULL COMMENT '出库量' ;

--成色数据项表
CREATE TABLE `cp_degree` (
  `DEGREE_ID` varchar(100) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '成色',
  `BZ` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--使用耗材

CREATE TABLE `cp_material` (
  `MATERIAL_ID` varchar(100) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '使用耗材',
  `BZ` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`MATERIAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--出库表==>财务分析

--进货总价
ALTER TABLE erp_outku ADD INPRICE double(11,2) NULL COMMENT '进货总价' ;

--利润
ALTER TABLE erp_outku ADD INCOME DOUBLE(11,2) NULL COMMENT '利润' ;


