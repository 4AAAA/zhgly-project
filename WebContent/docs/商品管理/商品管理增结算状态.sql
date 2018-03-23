
--调整订单类型数据项到商品管理

--出库表-结算状态
ALTER TABLE erp_outku ADD BILL varchar(100) NULL COMMENT '结算状态' ;

--订单记事本
CREATE TABLE `cp_orderbook` (
  `GOODS_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '事件',
  `BIANMA` varchar(30) DEFAULT NULL COMMENT '商品编码',
  `SPTYPE_ID` varchar(100) DEFAULT NULL COMMENT '商品类别',
  `SPBRAND_ID` varchar(100) DEFAULT NULL COMMENT '品牌',
  `SPUNIT_ID` varchar(100) DEFAULT NULL COMMENT '计量单位',
  `DESCRIPTION` varchar(5000) DEFAULT NULL COMMENT '备注',
  `SHORTDESC` varchar(500) DEFAULT NULL COMMENT '简述',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `ZCOUNT` int(11) DEFAULT NULL COMMENT '库存量',
  `DEGREE` varchar(100) DEFAULT NULL COMMENT '成色',
  `MATERIAL` varchar(100) DEFAULT NULL COMMENT '使用耗材',
  `INFEE` double(11,2) DEFAULT NULL COMMENT '价格',
  `OUTFEE` double(11,2) DEFAULT NULL COMMENT '出货价',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `INCOUNT` int(11) DEFAULT NULL COMMENT '入库量',
  `OUTCOUNT` int(11) DEFAULT NULL COMMENT '出库量',
  PRIMARY KEY (`GOODS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--商品记事本
CREATE TABLE `cp_goodbook` (
  `GOODS_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '事件',
  `BIANMA` varchar(30) DEFAULT NULL COMMENT '商品编码',
  `SPTYPE_ID` varchar(100) DEFAULT NULL COMMENT '商品类别',
  `SPBRAND_ID` varchar(100) DEFAULT NULL COMMENT '品牌',
  `SPUNIT_ID` varchar(100) DEFAULT NULL COMMENT '计量单位',
  `DESCRIPTION` varchar(5000) DEFAULT NULL COMMENT '备注',
  `SHORTDESC` varchar(500) DEFAULT NULL COMMENT '简述',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `ZCOUNT` int(11) DEFAULT NULL COMMENT '库存量',
  `DEGREE` varchar(100) DEFAULT NULL COMMENT '成色',
  `MATERIAL` varchar(100) DEFAULT NULL COMMENT '使用耗材',
  `INFEE` double(11,2) DEFAULT NULL COMMENT '价格',
  `OUTFEE` double(11,2) DEFAULT NULL COMMENT '出货价',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `INCOUNT` int(11) DEFAULT NULL COMMENT '入库量',
  `OUTCOUNT` int(11) DEFAULT NULL COMMENT '出库量',
  PRIMARY KEY (`GOODS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--商品管理-退货数量
ALTER TABLE cp_goods ADD BACKCOUNT int(11) NULL COMMENT '退货量' ;





