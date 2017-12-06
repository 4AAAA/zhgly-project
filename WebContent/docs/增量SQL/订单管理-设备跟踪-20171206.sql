订单跟踪-设备跟踪修改：

主板 MAINBOARD
ALTER TABLE zhgly_prod.erp_customerimg ADD MAINBOARD varchar(100) NULL ;

显卡  DISPLAYCARD
ALTER TABLE zhgly_prod.erp_customerimg ADD DISPLAYCARD varchar(100) NULL ;

光存储 STORAGE
ALTER TABLE zhgly_prod.erp_customerimg ADD STORAGE varchar(100) NULL COMMENT '光存储' ;

CPU：
ALTER TABLE zhgly_prod.erp_customerimg ADD CPU varchar(100) NULL ;

内存：MEMORY
ALTER TABLE zhgly_prod.erp_customerimg ADD MEMORY varchar(100) NULL ;

硬盘：DISK
ALTER TABLE zhgly_prod.erp_customerimg ADD DISK varchar(100) NULL COMMENT '硬盘' ;

声卡： VOIDCARD
ALTER TABLE zhgly_prod.erp_customerimg ADD VOIDCARD varchar(100) NULL COMMENT '声卡' ;
显示器： DISPLAYER
ALTER TABLE zhgly_prod.erp_customerimg ADD DISPLAYER varchar(100) NULL COMMENT '显示器' ;
鼠标键盘 KEYBOARD
ALTER TABLE zhgly_prod.erp_customerimg ADD KEYBOARD varchar(100) NULL COMMENT '鼠标键盘' ;
散热器： RADIATOR
ALTER TABLE zhgly_prod.erp_customerimg ADD RADIATOR varchar(100) NULL COMMENT '散热器' ;

打印机：  PRINTER
ALTER TABLE zhgly_prod.erp_customerimg ADD PRINTER varchar(100) NULL COMMENT '打印机' ;
其他: OTHERS
ALTER TABLE zhgly_prod.erp_customerimg ADD `OTHERS` varchar(100) NULL COMMENT '其他' ;


备注1： REMARK1
ALTER TABLE zhgly_prod.erp_customerimg ADD REMARK1 varchar(100) NULL COMMENT '备注1' ;

备注2： REMARK2
ALTER TABLE zhgly_prod.erp_customerimg ADD REMARK2 varchar(100) NULL COMMENT '备注2' ;

设备编号： CODE

ALTER TABLE zhgly_prod.erp_customerimg ADD CODE varchar(100) NULL COMMENT '编号' ;

维修进度  STATUS

ALTER TABLE zhgly_prod.erp_customerimg ADD STATUS varchar(100) NULL COMMENT '维修状态' ;





