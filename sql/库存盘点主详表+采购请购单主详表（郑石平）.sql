/* ����̵�����*/
CREATE TABLE t_Stock_Inventory(Billno varchar2(20) primary key,adjustdate date,Maker  varchar2(20) ,Permitter varchar2(20) ,Udef1 varchar2(20) ,Udef2 varchar2(20) ,Remark varchar2(20) ,WareId varchar2(20) ,Sumqty NUMBER(20) ,Sumcost NUMBER(*,2) ,Salesid varchar2(20) ,DepartId varchar2(20) ,Memo varchar2(255) ,Zerofilter number(1) ,Sumcurqty NUMBER(20) ,Sumcheckqty NUMBER(20),Makersign varchar2(20) ,Permittersign varchar2(20));
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129001',sysdate,'�Ƶ���','������Ա','�Զ���1','�Զ���2','��ע','001',200,500.56,'001','002','��ע',1,500,200,'�Ƶ���ǩ��','������ǩ��');
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129002',sysdate,'�Ƶ���','������Ա','�Զ���1','�Զ���2','��ע','001',200,500.56,'001','002','��ע',1,500,200,'�Ƶ���ǩ��','������ǩ��');
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129003',sysdate,'�Ƶ���','������Ա','�Զ���1','�Զ���2','��ע','001',200,500.56,'001','002','��ע',1,500,200,'�Ƶ���ǩ��','������ǩ��');
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129004',sysdate,'�Ƶ���','������Ա','�Զ���1','�Զ���2','��ע','001',200,500.56,'001','002','��ע',1,500,200,'�Ƶ���ǩ��','������ǩ��');
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129005',sysdate,'�Ƶ���','������Ա','�Զ���1','�Զ���2','��ע','001',200,500.56,'001','002','��ע',1,500,200,'�Ƶ���ǩ��','������ǩ��');
insert into t_Stock_Inventory(Billno,adjustdate,Maker,Permitter,Udef1,Udef2,Remark,WareId,Sumqty,Sumcost,Salesid,DepartId,Memo,Zerofilter,Sumcurqty,Sumcheckqty,Makersign,Permittersign)values('20181129006',sysdate,'�Ƶ���','������Ա','�Զ���1','�Զ���2','��ע','001',200,500.56,'001','002','��ע',1,500,200,'�Ƶ���ǩ��','������ǩ��');
select * from t_Stock_Inventory
alter table t_Stock_Inventory add (static number(1));
/*
COMMENT ON table t_Stock_Inventory IS '����̵������';
comment on column t1.Billno is '�̵㵥������';
comment on column t1.adjustdate is '�̵��ʱ��';
comment on column t1.Maker is '�Ƶ���Ա';
comment on column t1.Permitter is '�̵�ĸ�����Ա';
comment on column t1.Udef1 is '�Զ���1';
comment on column t1.Udef2 is '�Զ���2';
comment on column t1.Remark is '��ע';
comment on column t1.WareId is '����ֿ�������';
comment on column t1.Sumqty is 'ӯ�������ϼ�';
comment on column t1.Sumcost is 'ӯ�����ϼ�';
comment on column t1.Salesid is '�̵���Ա�ı��';
comment on column t1.DepartId is '�������ŵı��';
comment on column t1.Memo is '��ע';
comment on column t1.Zerofilter is '��������Ϊ0����';
comment on column t1.Sumcurqty is '���������ϼ�';
comment on column t1.Sumcheckqty is '�̵������ϼ�';
comment on column t1.Makersign is '�Ƶ���ǩ��';
comment on column t1.Permittersign is '������ǩ��';*/




/*����̵����*/
CREATE TABLE t_Stock_Inventory_details(detailsId varchar2(20) primary key,billno varchar2(20) ,Prodid varchar2(20) ,Prodsire varchar2(20) ,stdunitid varchar2(20) ,Bookquantity NUMBER(20),InventoryNumber NUMBER(20),Profitandloss NUMBER(20) ,UnitPrice number(*,2),Profitandlossamount number(*,2) ,Batchnumber varchar2(20) ,Reason varchar2(20) );
select * from t_Stock_Inventory_details
insert into t_Stock_Inventory_details(detailsId,billno,Prodid,Prodsire,stdunitid,Bookquantity,InventoryNumber,Profitandloss,UnitPrice,Profitandlossamount,Batchnumber,Reason)values('004','20181129002',001,'����ͺ�','001',200,22,10,2.12,200.66,'001','��֪��');
/**/
COMMENT ON table t_Stock_Inventory_details_details IS '����̵�����';
comment on column t_Stock_Inventory_details_details.detailsId is '�̵㵥��������';
comment on column t_Stock_Inventory_details_details.billno is '�̵㵥��������';
comment on column t_Stock_Inventory_details_details.Prodid is '���ϱ��';
comment on column t_Stock_Inventory_details_details.Prodsire is '����ͺ�';
comment on column t_Stock_Inventory_details_details.stdunitid is '��λ';
comment on column t_Stock_Inventory_details_details.Bookquantity is '��������';
comment on column t_Stock_Inventory_details_details.InventoryNumber is '�̵�����';
comment on column t_Stock_Inventory_details_details.Profitandloss is 'ӯ������';
comment on column t_Stock_Inventory_details_details.UnitPrice is '����';
comment on column t_Stock_Inventory_details_details.Profitandlossamount is 'ӯ�����';
comment on column t_Stock_Inventory_details_details.Batchnumber is '����';
comment on column t_Stock_Inventory_details_details.Reason is 'ԭ��';








CREATE TABLE t_Purchase_purchase(billno varchar2(20) primary key,billDate date ,BillstyleId  varchar2(20) ,Billstatus number(1) ,Departid  varchar2(20) ,Maker varchar2(20) ,Permitter varchar2(20) ,Remark varchar2(255) ,Sumqty  NUMBER(20) ,Headerid varchar2(20) ,Headername varchar2(20) ,Footerid  varchar2(20) ,Footername  varchar2(20) , Userdef1 varchar2(20) , Userdef2  varchar2(20) , Makersign varchar2(20) , Permittersign varchar2(20) ,Salesid  varchar2(20));
select * from t_Purchase_purchase;
insert into t_Purchase_purchase(billno,billDate,BillstyleId,Billstatus,Departid,Maker,Permitter,Remark,Sumqty,Headerid,Headername,Footerid,Footername,Userdef1,Userdef2,Makersign,Permittersign,salesid)values('20181129001',sysdate,'20181129001',1,'20181129001','zsp','zsp','beiz','11','1','��ͷ��������','2','��β��������','�Զ���1','�Զ���2','�Ƶ���ǩ��','������ǩ��','001');
insert into t_Purchase_purchase(billno,billDate,BillstyleId,Billstatus,Departid,Maker,Permitter,Remark,Sumqty,Headerid,Headername,Footerid,Footername,Userdef1,Userdef2,Makersign,Permittersign,salesid)values('20181129002',sysdate,'20181129002',1,'20181129002','zsp','zsp','beiz','11','1','��ͷ��������','2','��β��������','�Զ���1','�Զ���2','�Ƶ���ǩ��','������ǩ��','002');
insert into t_Purchase_purchase(billno,billDate,BillstyleId,Billstatus,Departid,Maker,Permitter,Remark,Sumqty,Headerid,Headername,Footerid,Footername,Userdef1,Userdef2,Makersign,Permittersign,salesid)values('20181129003',sysdate,'20181129003',2,'20181129001','zsp','zsp','beiz','11','1','��ͷ��������','2','��β��������','�Զ���1','�Զ���2','�Ƶ���ǩ��','������ǩ��','003');
insert into t_Purchase_purchase(billno,billDate,BillstyleId,Billstatus,Departid,Maker,Permitter,Remark,Sumqty,Headerid,Headername,Footerid,Footername,Userdef1,Userdef2,Makersign,Permittersign,salesid)values('20181129004',sysdate,'20181129004',1,'20181129004','zsp','zsp','beiz','11','1','��ͷ��������','2','��β��������','�Զ���1','�Զ���2','�Ƶ���ǩ��','������ǩ��','004');


alter table t_Purchase_purchase add (static number(1));
select * from t_Purchase_purchase


CREATE TABLE t_Purchase_purchase_details( billno varchar2(20) primary key, purchaseid varchar2(20),Prodid varchar2(20),Sum1 NUMBER(20), Demanddate date, Procurementdate date, Purchasevolume  NUMBER(20), Entrynotes varchar2(255),Sourcelist varchar2(20),Sourcenumber varchar2(20));


select * from t_Purchase_purchase_details

insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129001','20181129001','20181129001',200,sysdate,sysdate,200,'555','20181129001','���۶���');
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129002','20181129001','20181129001',200,sysdate,sysdate,200,'555',null,null);
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129003','20181129001','20181129001',200,sysdate,sysdate,200,'555','20181129001','���۶���');
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129004','20181129001','20181129001',200,sysdate,sysdate,200,'555',null,null);
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129005','20181129002','20181129002',200,sysdate,sysdate,200,'555','20181129001','���۶���');
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129006','20181129003','20181129003',200,sysdate,sysdate,200,'555',null,null);
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129007','20181129002','20181129003',200,sysdate,sysdate,200,'555','20181129001','���۶���');
insert into t_Purchase_purchase_details(billno,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber)values('20181129008','20181129002','20181129002',200,sysdate,sysdate,200,'555',null,null);
delete from t_Purchase_purchase_details where 1 = 1
/*,

,purchaseid,Prodid,Sum1,Demanddate,Procurementdate,Purchasevolume,Entrynotes,Sourcelist,Sourcenumber*/