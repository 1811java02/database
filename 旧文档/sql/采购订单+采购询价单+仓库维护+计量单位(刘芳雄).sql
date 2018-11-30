/*采购询价表*/
create table buyxun(
BillNO varchar(20) primary key,
BilDate Date,
CustomerID varchar(20),
ValidDate Date,
PriceofTax Number(1),
CurrID varchar(20),
Maker varchar(20),
Permitter varchar(20),
SalesID varchar(20),
AStatus Number(1)
);

/*采购询价明细表*/
create table buyxunxi(
BillNO varchar(20) primary key,
BillDate date,
SerNo number(22),
ProdID varchar(20),
ProdClassID varchar(20),
UnitName varchar(20),
ProdName varchar(20),
sQuantity number(22),
OldPrice Number(*,2),
Discount Number(*,2),
sPrice Number(*,2),
Amount Number(*,2),
TaxRate Number(*,4),
TaxAmt Number(*,2),
VFToal Number(*,2),
SourceTranFlag Varchar(20),
SourceTranBi Varchar(20)
);


/*采购订单表*/
create table buyOrder(
BillNO Varchar(20) primary key,
BillDate Date,
BillStatus Number(1),
CustomerID Varchar(20),
AddressID Varchar(20),
PriceOfTax Number(1),
SalesName Varchar(20),
DepartID Varchar(20),
Maker Varchar(20),
Permitter Varchar(20),
AStatus Number(1)


);

/*采购订单详细表*/
create table buyOrderxi(
SerNo number(22) primary key,
ProdID Varchar(20),
ProdClassID Varchar(20),
ProdClassName Varchar(20),
UnitName Varchar(20),
sQuantity number(22),
OldPrice Number(*,2),
Discount Number(*,2),
sPrice Number(*,2) ,
Amount Number(*,2),
TaxRate Number(*,4),
TaxAmt Number(*,2),
VFTotal Number(*,2),
PreInDate Date,
QtyRemain number(22),
TranType Varchar(20),
FromNO Varchar(20)

);

/*仓库维护表*/
create table wareHouse(
wareID Varchar(20) primary key ,
wareName Varchar(20),
contentPer Varchar(20),
contentPhone Varchar(20),
contentAdre Varchar(20),
remark Varchar(255)

);

/*计量单位维护表*/
create table unit(
unitID Varchar(20) primary key,
unitName Varchar(20),
remark Varchar(255) 
);
select * from unit;
select * from buyxun;
select * from  buyxunxi;
select * from buyOrderxi;
select * from buyorder;
select * from wareHouse;





insert into unit(unitID,unitName,remark)values('01','PCS','个');
insert into unit(unitID,unitName,remark)values('02','t','吨');
insert into unit(unitID,unitName,remark)values('03','m','米');
insert into unit(unitID,unitName,remark)values('04','cm','厘米');
select * from unit ;

insert into warehouse(wareID,wareName,contentPer,contentPhone,contentAdre,remark)
values('01','原料仓库','王某某','15869893674','株洲大桥','很好的仓库');
insert into warehouse(wareID,wareName,contentPer,contentPhone,contentAdre,remark)
values('02','成品仓','刘某某','15869893674','株洲大桥河西','很好的仓库');
select * from warehouse;

insert into buyxun(BillNO,BilDate,CustomerID,ValidDate,PriceofTax,CurrID,Maker,Permitter,SalesID,AStatus)
values('2018112701',to_date('20181127','yyyymmdd'),'SHJJ',to_date('20181128','yyyymmdd'),1,'RMB','admin','admin','10018',0);
insert into buyxun(BillNO,BilDate,CustomerID,ValidDate,PriceofTax,CurrID,Maker,Permitter,SalesID,AStatus)
values('2018112702',to_date('20181127','yyyymmdd'),'SHJJ',to_date('20181128','yyyymmdd'),1,'RMB','admin','admin','10011',0);
insert into buyxun(BillNO,BilDate,CustomerID,ValidDate,PriceofTax,CurrID,Maker,Permitter,SalesID,AStatus)
values('2018112703',to_date('20181127','yyyymmdd'),'SHJJ',to_date('20181128','yyyymmdd'),1,'RMB','admin','admin','10019',0);
select * from buyxun;

insert into buyxunxi(BillNO,BillDate,SerNo,ProdID,ProdClassID,UnitName,ProdName,sQuantity,OldPrice,Discount,sPrice,Amount,TaxRate,TaxAmt,VFToal,SourceTranFlag,SourceTranBi)
values('2018112701',to_date('20181127','yyyymmdd'),1,'C01-W-HP-DC7900-307','主机','PCS','HP AB2台式机',50,3370.00,100.00,3370.00,3370.00,17.00,572.90,3942.90,'销售订单','2018111701');
insert into buyxunxi(BillNO,BillDate,SerNo,ProdID,ProdClassID,UnitName,ProdName,sQuantity,OldPrice,Discount,sPrice,Amount,TaxRate,TaxAmt,VFToal,SourceTranFlag,SourceTranBi)
values('2018112702',to_date('20181127','yyyymmdd'),1,'C01-W-HP-DC7900-308','主机','PCS','HP AB3台式机',50,3370.00,100.00,3370.00,3370.00,17.00,572.90,3942.90,'采购请购单','2018111702');
insert into buyxunxi(BillNO,BillDate,SerNo,ProdID,ProdClassID,UnitName,ProdName,sQuantity,OldPrice,Discount,sPrice,Amount,TaxRate,TaxAmt,VFToal,SourceTranFlag,SourceTranBi)
values('2018112703',to_date('20181127','yyyymmdd'),1,'C01-W-HP-DC7900-309','主机','PCS','HP AB4台式机',50,3370.00,100.00,3370.00,3370.00,17.00,572.90,3942.90,'采购询价单','2018111703');
select * from buyxunxi;

insert into Buyorder(BillNO,BillDate,BillStatus,CustomerID,AddressID,PriceOfTax,SalesName,DepartID,Maker,Permitter,AStatus)values
('2018112901',to_date('20181129','yyyymmdd'),0,'HP','北大禽鸟',0,'10018','09','admin','admin',0);
insert into Buyorder(BillNO,BillDate,BillStatus,CustomerID,AddressID,PriceOfTax,SalesName,DepartID,Maker,Permitter,AStatus)values
('2018112902',to_date('20181129','yyyymmdd'),1,'HP','株洲',0,'10019','02','admin','admin',1);
insert into Buyorder(BillNO,BillDate,BillStatus,CustomerID,AddressID,PriceOfTax,SalesName,DepartID,Maker,Permitter,AStatus)values
('2018112903',to_date('20181129','yyyymmdd'),0,'HP','啦啦',0,'10010','01','admin','admin',0);
select * from Buyorder;

insert into BuyOrderxi(SerNo,ProdID,ProdClassID,ProdClassName,UnitName,sQuantity,OldPrice,Discount,sPrice,Amount,TaxRate,TaxAmt,VFTotal,PreInDate,QtyRemain,TranType,FromNO)
values(1,'C01-7900-307','001','HP 307PA#AB2台式机','pcs',50,3370.00,100.00,3370.00,3370.0,17.00,572.90,3370.00,to_date('20181129','yyyymmdd'),40,'销售订单','2018111701');
insert into BuyOrderxi(SerNo,ProdID,ProdClassID,ProdClassName,UnitName,sQuantity,OldPrice,Discount,sPrice,Amount,TaxRate,TaxAmt,VFTotal,PreInDate,QtyRemain,TranType,FromNO)
values(2,'C01-7900-308','002','HP 307PA#AB2台式机','pcs',50,3370.00,100.00,3370.00,3370.0,17.00,572.90,3370.00,to_date('20181129','yyyymmdd'),40,'销售订单','2018111701');

insert into BuyOrderxi(SerNo,ProdID,ProdClassID,ProdClassName,UnitName,sQuantity,OldPrice,Discount,sPrice,Amount,TaxRate,TaxAmt,VFTotal,PreInDate,QtyRemain,TranType,FromNO)
values(3,'C01-7900-309','003','HP 307PA#AB2台式机','pcs',50,3370.00,100.00,3370.00,3370.0,17.00,572.90,3370.00,to_date('20181129','yyyymmdd'),40,'销售订单','2018111701');
select * from BuyOrderxi;


