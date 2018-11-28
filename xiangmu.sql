create table buyxun(
BillNO varchar2(20) primary key,
BilDate Date,
CustomerID int,
ValidDate Date,
PriceofTax int,
CurrID varchar2(20),
Maker varchar2(20),
Permitter varchar(20),
SalesID int,
AStatus int
);


create table buyxunxi(
BillNO varchar2(20) primary key,
BillDate date,
SerNo int,
ProdID varchar2(20),
ProdClassID int,
UnitName varchar2(20),
ProdName varchar2(20),
sQuantity int,
OldPrice int,
Discount int,
sPrice int,
Amount int,
TaxRate int,
TaxAmt int,
VFToal int,
SourceTranFlag varchar2(20),
SourceTranBi varchar2(20)
);



create table buyOrder(
BillNO varchar2(20) primary key,
BillDate Date,
BillStatus int,
CustomerID int,
AddressID int,
PriceOfTax int,
SalesName varchar2(20),
DepartID int,
Maker Varchar2(20),
Permitter varchar2(20),
AStatus int


)


create table buyOrderxi(
SerNo int primary key,
ProdID varchar2(20),
ProdClassID int,
ProdClassName varchar2(20),
UnitName varchar2(20),
sQuantity int,
OldPrice int,
Discount int,
sPrice int ,
Amount int,
TaxRate int,
TaxAmt int,
VFTotal int,
PreInDate date,
QtyRemain int,
TranType varchar2(20),
FromNO varchar(20)

);


create table wareHouse(
wareID int primary key ,
wareName varchar2(20),
contentPer varchar2(20),
contentPhone varchar2(20),
contentAdre varchar2(20),
remark varchar2(20)

);


create table unit(
unitID int primary key,
unitName int,
remark varchar(20)
)
select * from unit;
select * from buyxun;
select * from  buyxunxi;
select * from buyOrderxi;
select * from buyorder;
select * from wareHouse;
