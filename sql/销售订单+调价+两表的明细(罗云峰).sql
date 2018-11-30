/*调价单*/
create table t_ modifyprice
(
  ModPriceNo varchar(20) not null primary key,
  AdjustDate Date not null,
  Maker varchar(20) not null,
  Permitter varchar(20) not null,
  SumQty number(*,2) not null,
  SumCost number(*,2) default 0.00 not null,
  Memo varchar(255),
  Udef1 varchar(255),
  Udef2 varchar(255),
  Remark varchar(255),
  ModPricestate number(1)
);

/*调价明细表*/
create table t_ detail_ modifyprice
(
  ModPriceNo	Varchar(20) not null primary key,
  SerNO	number not null,
  ProdID	Varchar(20) not null,
  ProdName	Varchar(20) not null,
  ProdSize	Varchar(20) not null,
  Umit	Varchar(20) not null,
  CurQty	Number not null,
  LCostAvg	number(*,2) default 0.00 not null,
  Price	number(*,2) default 0.00 not null,
  Amount	number(*,2) default 0.00 not null,
  ItemRemark	Varchar(255) not null,
  PrdClassID	Varchar(20) not null,
  PrdClassName	Varchar(20) not null,
  PrdCurrID	Varchar(20) not null,
  PrdSuggestPrice	number(*,2) default 0.00 not null,
  PrdSalesPriceA	number(*,2) default 0.00,
  PrdSalesPriceB	number(*,2) default 0.00,
  PrdSalesPriceC	number(*,2) default 0.00,
  PrdSalesPriceD	number(*,2) default 0.00,
  PrdSalesPriceE	number(*,2) default 0.00,
  PrdStdPrice	number(*,2) default 0.00 not null,
  PrdBusiTaxRate	number(*,2) default 0.00 not null,
  PrdEffecDate	Date not null,
  PrdProdDesc	Varchar(20),
  PrdProdForm	Varchar(20),
  PrdAdvanceDays	Number,
  PrdMajorSupplier	Varchar(20) not null,
  WhShortName	Varchar(20) not null,
  WhLinkMan	Varchar(20) not null,
  WhTelephone	Varchar(20) not null,
  WhWareHouseAddres	Varchar(20) not null,
  WhMemo	Varchar(20)
);

/*销售订单表*/
create table t_ salesorder
(
  BillNO	Varchar(20) not null primary key,
  BillDate	Date not null,
  CustomerID	Varchar(20) not null,
  AddressID	Varchar(20) not null,
  BillStyleID	Varchar(20) not null,
  BillStyleName	Varchar(20) not null,
  CustBillNo	Varchar(20) not null,
  Taxincluded	Number(1) not null,
  CurrID	Varchar(20) not null,
  Remark	Varchar(20) not null,
  ExchRate	number(*,2) not null,
  SalesName	Varchar(20) not null,
  DepartID	Varchar(20) not null,
  ProjectID	Varchar(20),
  Maker	Varchar(20) not null,
  Permitter	Varchar(20) not null
);

/*销售订单明细表*/
create table t_ detail _ salesorder
(
  ModPriceNo	Varchar(20) not null primary key,
  SerNO	Number not null,
  ProdID	Varchar(20) not null,
  PrdClassName	Varchar(20) not null,
  ProdSize	Varchar(20) not null,
  UmitName	Varchar(20) not null,
  sQuantity	Number not null,
  OldPrice	number(*,2) default 0.00 not null,
  Discount	number(*,2) default 0.00 not null,
  sPrice	number(*,2) default 0.00 not null,
  Amount	number(*,2) default 0.00 not null,
  MlAmount	number(*,2) default 0.00 not null,
  TaxRate	number(*,2) default 17.00 not null,
  TaxAmt	number(*,2) default 0.00 not null,
  MlTaxAmt	number(*,2) default 0.00 not null,
  VFTotal	number(*,2) default 0.00 not null,
  MlVFTotal	number(*,2) default 0.00 not null,
  PreInDate	Date not null,
  HasCombine	Varchar(20) not null,
  QtyRemain	Number not null,
  IsGift	Varchar(20),
  ItemRemark	Varchar(255),
  TranType	Varchar(20) not null,
  FromNO	Varchar(20) not null,
  HeaderID	Varchar(255),
  HeaderName	Varchar(255),
  FooterID	Varchar(255),
  FooterName	Varchar(255),
  CustAddField1	Varchar(255),
  CustAddField2	Varchar(255)
);