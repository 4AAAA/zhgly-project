
--出库表-买家
ALTER TABLE zhgly_prod.erp_outku ADD CUSTOMER varchar(255) NULL COMMENT '买家' ;

--出库表-收款人
ALTER TABLE zhgly_prod.erp_outku ADD RECEIVER varchar(100) NULL COMMENT '收款人' ;

--收款人表
CREATE TABLE `erp_receiver` (
  `RECEIVER_ID` varchar(100) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RECEIVER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--收款人添加菜单
