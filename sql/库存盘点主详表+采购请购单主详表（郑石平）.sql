/* 库存盘点主表*/
CREATE TABLE t_Stock_Inventory(Billno varchar2(20) primary key,adjustdate date,Maker  varchar2(20) ,Permitter varchar2(20) ,Udef1 varchar2(20) ,Udef2 varchar2(20) ,Remark varchar2(20) ,WareId varchar2(20) ,Sumqty NUMBER(20) ,Sumcost NUMBER(*,2) ,Salesid varchar2(20) ,DepartId varchar2(20) ,Memo varchar2(255) ,Zerofilter number(1) ,Sumcurqty NUMBER(20) ,Sumcheckqty NUMBER(20),Makersign varchar2(20) ,Permittersign varchar2(20));
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129001',sysdate,'制单人','复核人员','自定栏1','自定栏2','备注','001',200,500.56,'001','002','备注',1,500,200,'制单人签名','复核人签名');
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129002',sysdate,'制单人','复核人员','自定栏1','自定栏2','备注','001',200,500.56,'001','002','备注',1,500,200,'制单人签名','复核人签名');
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129003',sysdate,'制单人','复核人员','自定栏1','自定栏2','备注','001',200,500.56,'001','002','备注',1,500,200,'制单人签名','复核人签名');
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129004',sysdate,'制单人','复核人员','自定栏1','自定栏2','备注','001',200,500.56,'001','002','备注',1,500,200,'制单人签名','复核人签名');
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129005',sysdate,'制单人','复核人员','自定栏1','自定栏2','备注','001',200,500.56,'001','002','备注',1,500,200,'制单人签名','复核人签名');
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129006',sysdate,'制单人','复核人员','自定栏1','自定栏2','备注','001',200,500.56,'001','002','备注',1,500,200,'制单人签名','复核人签名');
select * from t_Stock_Inventory
alter table t_Stock_Inventory add (static number(1));
/*
COMMENT ON table t_Stock_Inventory IS '库存盘点表主表';
comment on column t1.Billno is '盘点单的主键';
comment on column t1.adjustdate is '盘点的时间';
comment on column t1.Maker is '制单人员';
comment on column t1.Permitter is '盘点的复核人员';
comment on column t1.Udef1 is '自定栏1';
comment on column t1.Udef2 is '自定栏2';
comment on column t1.Remark is '备注';
comment on column t1.WareId is '外键仓库表的主键';
comment on column t1.Sumqty is '盈亏数量合计';
comment on column t1.Sumcost is '盈亏金额合计';
comment on column t1.Salesid is '盘点人员的编号';
comment on column t1.DepartId is '所属部门的编号';
comment on column t1.Memo is '备注';
comment on column t1.Zerofilter is '账面数量为0载入';
comment on column t1.Sumcurqty is '账面数量合计';
comment on column t1.Sumcheckqty is '盘点数量合计';
comment on column t1.Makersign is '制单人签名';
comment on column t1.Permittersign is '复核人签名';*/




/*库存盘点详表*/
CREATE TABLE t_Stock_Inventory_details(detailsId varchar2(20) primary key,billno varchar2(20) ,Prodid varchar2(20) ,Prodsire varchar2(20) ,stdunitid varchar2(20) ,Bookquantity NUMBER(20),InventoryNumber NUMBER(20),Profitandloss NUMBER(20) ,UnitPrice number(*,2),Profitandlossamount number(*,2) ,Batchnumber varchar2(20) ,Reason varchar2(20) );
select * from t_Stock_Inventory_details
insert into t_Stock_Inventory_details(detailsId,billno,Prodid,Prodsire,stdunitid,Bookquantity,InventoryNumber,Profitandloss,UnitPrice,Profitandlossamount,Batchnumber,Reason)values('004','20181129002',001,'规格型号','001',200,22,10,2.12,200.66,'001','不知道');
/**/
COMMENT ON table t_Stock_Inventory_details_details IS '库存盘点表详表';
comment on column t_Stock_Inventory_details_details.detailsId is '盘点单详表的主键';
comment on column t_Stock_Inventory_details_details.billno is '盘点单主表主键';
comment on column t_Stock_Inventory_details_details.Prodid is '物料编号';
comment on column t_Stock_Inventory_details_details.Prodsire is '规格型号';
comment on column t_Stock_Inventory_details_details.stdunitid is '单位';
comment on column t_Stock_Inventory_details_details.Bookquantity is '账面数量';
comment on column t_Stock_Inventory_details_details.InventoryNumber is '盘点数量';
comment on column t_Stock_Inventory_details_details.Profitandloss is '盈亏数量';
comment on column t_Stock_Inventory_details_details.UnitPrice is '单价';
comment on column t_Stock_Inventory_details_details.Profitandlossamount is '盈亏金额';
comment on column t_Stock_Inventory_details_details.Batchnumber is '批号';
comment on column t_Stock_Inventory_details_details.Reason is '原因';








CREATE TABLE t_Purchase_purchase(billno varchar2(20) primary key,billDate date ,BillstyleId  varchar2(20) ,Billstatus number(1) ,Departid  varchar2(20) ,Maker varchar2(20) ,Permitter varchar2(20) ,Remark varchar2(255) ,Sumqty  NUMBER(20) ,Headerid varchar2(20) ,Headername varchar2(20) ,Footerid  varchar2(20) ,Footername  varchar2(20) , Userdef1 varchar2(20) , Userdef2  varchar2(20) , Makersign varchar2(20) , Permittersign varchar2(20) ,Salesid  varchar2(20));
select * from t_Purchase_purchase;
insert into t_Purchase_purchase(billno,billDate,BillstyleId,Billstatus,Departid,Maker,Permitter,Remark,Sumqty,Headerid,Headername,Footerid,Footername,Userdef1,Userdef2,Makersign,Permittersign,salesid)values('20181129001',sysdate,'20181129001',1,'20181129001','zsp','zsp','beiz','11','1','表头条文名称','2','表尾条文名称','自定栏1','自定栏2','制单人签名','复核人签名','001');
insert into t_Purchase_purchase(billno,billDate,BillstyleId,Billstatus,Departid,Maker,Permitter,Remark,Sumqty,Headerid,Headername,Footerid,Footername,Userdef1,Userdef2,Makersign,Permittersign,salesid)values('20181129002',sysdate,'20181129002',1,'20181129002','zsp','zsp','beiz','11','1','表头条文名称','2','表尾条文名称','自定栏1','自定栏2','制单人签名','复核人签名','002');
insert into t_Purchase_purchase(billno,billDate,BillstyleId,Billstatus,Departid,Maker,Permitter,Remark,Sumqty,Headerid,Headername,Footerid,Footername,Userdef1,Userdef2,Makersign,Permittersign,salesid)values('20181129003',sysdate,'20181129003',2,'20181129001','zsp','zsp','beiz','11','1','表头条文名称','2','表尾条文名称','自定栏1','自定栏2','制单人签名','复核人签名','003');
insert into t_Purchase_purchase(billno,billDate,BillstyleId,Billstatus,Departid,Maker,Permitter,Remark,Sumqty,Headerid,Headername,Footerid,Footername,Userdef1,Userdef2,Makersign,Permittersign,salesid)values('20181129004',sysdate,'20181129004',1,'20181129004','zsp','zsp','beiz','11','1','表头条文名称','2','表尾条文名称','自定栏1','自定栏2','制单人签名','复核人签名','004');


alter table t_Purchase_purchase add (static number(1));
select * from t_Purchase_purchase


CREATE TABLE t_Purchase_purchase_details( billno varchar2(20) primary key, purchaseid varchar2(20),Prodid varchar2(20),Sum1 NUMBER(20), Demanddate date, Procurementdate date, Purchasevolume  NUMBER(20), Entrynotes varchar2(255),Sourcelist varchar2(20),Sourcenumber varchar2(20));


select * from t_Purchase_purchase_details

insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129001','20181129001','20181129001',200,sysdate,sysdate,200,'555','20181129001','销售订单');
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129002','20181129001','20181129001',200,sysdate,sysdate,200,'555',null,null);
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129003','20181129001','20181129001',200,sysdate,sysdate,200,'555','20181129001','销售订单');
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129004','20181129001','20181129001',200,sysdate,sysdate,200,'555',null,null);
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129005','20181129002','20181129002',200,sysdate,sysdate,200,'555','20181129001','销售订单');
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129006','20181129003','20181129003',200,sysdate,sysdate,200,'555',null,null);
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129007','20181129002','20181129003',200,sysdate,sysdate,200,'555','20181129001','销售订单');
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129008','20181129002','20181129002',200,sysdate,sysdate,200,'555',null,null);
delete from t_Purchase_purchase_details where 1 = 1
/*,

,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber*/