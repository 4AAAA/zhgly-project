
--财务分析-订单管理-增加结算状态字段
ALTER TABLE erp_customer ADD BILLSTATUS varchar(100) NULL COMMENT '结算状态' ;

--财务分析-订单管理-增加结算时间字段
ALTER TABLE erp_customer ADD BILLTIME varchar(32) NULL COMMENT '结算时间' ;