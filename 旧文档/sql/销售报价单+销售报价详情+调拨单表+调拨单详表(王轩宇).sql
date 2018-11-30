
#1.1、  调拨单表（t_Move）
create table t_Move(
       MoveNumber VARCHAR(20) PRIMARY KEY,
       MoveDATE DATE NOT NULL,
       MoveOut VARCHAR(20) NOT NULL,
       MoveIn VARCHAR(20) NOT NULL,
       MoveMaker VARCHAR(20) NOT NULL,
       MoveChecker VARCHAR(20) NOT NULL,
       MoveDef VARCHAR(20) NOT NULL,
       MoveDef2 VARCHAR(20) NOT NULL,
       MoveRemark VARCHAR(255) NOT NULL
)

#1.1、	调拨单详表（t_Move_Details）
create table t_Move_Details(
       MoveNumber VARCHAR(20) PRIMARY KEY,
       ProdID VARCHAR(20) NOT NULL,
       ProdNAME VARCHAR(20) NOT NULL,
       ProdSize VARCHAR(20),
       sUnitID NUMBER(22) NOT NULL,
       sUnit VARCHAR(20) NOT NULL,
       sQuantity NUMBER(22)NOT NULL,
       ItemRemark VARCHAR(255) NOT NULL
)
 #2.1、	销售报价表（t_SalePrice）
create table t_SalePrice(
      BillNo VARCHAR(20) PRIMARY KEY,
      BillDate DATE NOT NULL,
      CustomerID NUMBER(22) NOT NULL,
      FormalCust NUMBER(1) NOT NULL,
      CustAddress VARCHAR(20),
      ValidDate DATE,
      PriceOfTax NUMBER(1) NOT NULL,
      CurrID NUMBER(22) NOT NULL,
      CurCurrencyName VARCHAR(20) NOT NULL,
      ExchRate NUMBER(*,4) NOT NULL,
      SalesID NUMBER(22) NOT NULL,
      SalesName VARCHAR(20) NOT NULL,
      DepartID VARCHAR(20) NOT NULL,
      DepartName VARCHAR(20)NOT NULL,
      Maker VARCHAR(20) NOT NULL,
      Permitter VARCHAR(20) NOT NULL,
      SPHeader  VARCHAR(20),
      SPFooter  VARCHAR(20),
      UserDef  VARCHAR(20),
      UserDef2  VARCHAR(20),
      Remark  VARCHAR(255)
)

# 2.1、	销售报价详情表（t_SalePrice_Details）
create table t_SalePrice_Details(
      BillNo  VARCHAR(20) primary key,
      ProdID VARCHAR(20) not null,
      ProdName VARCHAR(20) not null,
      ProdSize VARCHAR(20),
      sUnitID NUMBER(22) not null,
      sUnit VARCHAR(20) not null,
      sQuantity NUMBER(22)  not null,
      OldPrice NUMBER(*,2) not null,
      Discount NUMBER(22) not null,
      sPrice NUMBER(*,2) not null,
      Amount NUMBER(*,2) not null,
      TaxRate NUMBER(*,4) not null,
      TaxAmt NUMBER(*,2) not null,
      VFTotal  NUMBER(*,2) not null,
      IsGift NUMBER(1)  not null,
      ItemRemark VARCHAR(255)
)

