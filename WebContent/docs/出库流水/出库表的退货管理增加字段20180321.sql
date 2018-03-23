
--出库表-退货数量
ALTER TABLE erp_outku ADD BACKCOUNT int(11) NULL COMMENT '退货数量' ;
--出库表-退货价
ALTER TABLE erp_outku ADD BACKPRICE double(11,2) NULL COMMENT '退货价' ;
--出库表-退货总价
ALTER TABLE erp_outku ADD BACKALLPRICE double(11,2) NULL COMMENT '退货总价' ;




