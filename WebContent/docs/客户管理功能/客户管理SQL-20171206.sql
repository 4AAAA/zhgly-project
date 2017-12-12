--客户管理表

CREATE TABLE `erp_company` (
  `COMPANY_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '姓名',
  `PHONE` varchar(100) NOT NULL COMMENT '手机',
  `ADDRESS` varchar(1000) DEFAULT NULL COMMENT '地址',
  `WEIXIN` varchar(100) DEFAULT NULL COMMENT '门店',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '建档时间',
  `MONEY` double(11,2) NOT NULL COMMENT '订单总金额',
  `INCOME` double(11,2) NOT NULL COMMENT '实收金额',
  `OUTMONEY` double(11,2) NOT NULL COMMENT '欠费金额',
  `LEVEL` varchar(100) DEFAULT NULL COMMENT '客户级别',
  `REMARKS1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`COMPANY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--新增编码

ALTER TABLE zhgly_prod.erp_company ADD CODE varchar(100) NULL COMMENT '编码' ;

--去除数据库的表的notnull
ALTER TABLE zhgly_prod.erp_company MODIFY COLUMN MONEY double(11,2) NULL COMMENT '订单总金额' ;

ALTER TABLE zhgly_prod.erp_company MODIFY COLUMN INCOME double(11,2) NULL COMMENT '实收金额' ;

ALTER TABLE zhgly_prod.erp_company MODIFY COLUMN OUTMONEY double(11,2) NULL COMMENT '欠费金额' ;

ALTER TABLE zhgly_prod.erp_company MODIFY COLUMN PHONE varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '手机' ;


--订单对接客户
ALTER TABLE zhgly_prod.erp_customer ADD COMPANY_ID varchar(100) NULL COMMENT '客户ID' ;



--客户管理新增一个客户类型

CREATE TABLE `erp_companytype` (
  `LEVEL_ID` varchar(100) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL COMMENT '客户类别',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LEVEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--订单管理增加字段：

--实收金额
ALTER TABLE zhgly_prod.erp_customer ADD INCOME varchar(100) NULL COMMENT '实收金额' ;
--欠费金额
ALTER TABLE zhgly_prod.erp_customer ADD OUTMONEY varchar(100) NULL COMMENT '欠费金额' ;
--利润
ALTER TABLE zhgly_prod.erp_customer ADD BILLFEE double(11,2) NULL COMMENT '利润' ;


--客户管理增加‘累计利润’
ALTER TABLE zhgly_prod.erp_company ADD BILLFEE double(11,2) NULL COMMENT '累计利润' ;

--客户管理增加‘累计订单数量’
ALTER TABLE zhgly_prod.erp_company ADD COUNTBILL INT NULL COMMENT '累计订单数量' ;

--客户管理增加‘累计订单成本’
ALTER TABLE zhgly_prod.erp_company ADD BASEMONEY double(11,2) NULL COMMENT '累计订单成本' ;



--财务分析-订单管理-增加结算状态字段
ALTER TABLE zhgly_prod.erp_customer ADD BILLSTATUS varchar(100) NULL COMMENT '结算状态' ;