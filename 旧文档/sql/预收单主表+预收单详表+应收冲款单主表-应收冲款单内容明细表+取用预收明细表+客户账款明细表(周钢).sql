/*预收款单主表*/
create table t_Advancereceipt(
  FundBillID  Varchar(20) not null primary key,
  FundBillDate  Date not null,
  CustomerID  Varchar(20) not null,
  CustomerName  Varchar(20),
  CashStyleName  Varchar(20) not null,
  Cash  Number(*,2) not null,
  VisaStyleName	Varchar(20),
  Visa  Number(*,2) default 0.00,
  OtherPayStyleName	Varchar(20),
  OtherPay	Number(*,2) default 0.00,
  BCurrencyName	Varchar(20) default '人民币',
  ExchangeRate	Number(*,4) default 1.0000,
  DiscountPer	Number(*,2) default 0.00,
  AccMonthToMonth	Date not null,
  VoucherNo	Varchar(20),
  DepartNameFrom	Varchar(20),
  MakerSign	Varchar(20),
  ProjectFrom	Varchar(20),
  FermitterSign	Varchar(20),
  Auditstatus	Number(1),
  Customcolumnone	Varchar(20),
  Customcolumntwo	Varchar(20),
  Remarks	Varchar(255)

);
/*预收款单详表*/
create table t_Advancereceiptdetails(
  FundBillID	Varchar(20) not null primary key,
  Linenumber	Number(22) not null,
  CurPreRecv	Number(*,2) not null,
  Sourcelist	Varchar(20) not null,
  Sourcenumber	Varchar(20) not null,
  abstract	Varchar(255)

);

/*应收冲款主表*/
create table t_Receivablecharge(
  FundBillID	Varchar(20) not null primary key,
  FundBillDate	Date not null,
  CustomerID	Varchar(20) not null,
  CustomerName	Varchar(20),
  CashStyleName	Varchar(20) not null,
  Cash	Number(*,2) not null,
  VisaStyleName	Varchar(20),
  Visa	Number(*,2) default 0.00,
  OtherPayStyleName	Varchar(20),
  OtherPay	Number(*,2) default 0.00,
  BCurrencyName	Varchar(20) default '人民币',
  ExchangeRate	Number(*,4) default 1.0000,
  DiscountPer	Number(*,2) default 0.00,
  AccMonthToMonth	Date,
  VoucherNo	Varchar(20),
  DepartNameFrom	Varchar(20),
  MakerSign	Varchar(20),
  ProjectFrom	Varchar(20),
  FermitterSign	Varchar(20),
  Auditstatus	Number(1),
  Customcolumnone	Varchar(20),
  Customcolumntwo	Varchar(20),
  Remarks	Varchar(255)
);

/*应收冲款内容明细表*/
create table t_Receivablechargedetails(
  FundBillID	Varchar(20) not null primary key,
  Linenumber	Number(22) not null,
  Sourcelist	Varchar(20) not null,
  Sourcenumber	Varchar(20) not null,
  BCurrencyName	Varchar(20)  default '人民币',
  Originalamount	Number(*,2) not null,
  Currentamount	Number(*,2) not null,
  Moneycharged	Number(*,2) not null,
  Offsetamount	Number(*,2) not null,
  Allowanceamount	Number(*,2)
);


/*取用预收明细表*/
create table t_Takeinadvance(
  FundBillID	Varchar(20) not null primary key,
  Linenumber	Number(22) not null,
  Sourcelist	Varchar(20) not null,
  Sourcenumber	Varchar(20) not null,
  Sourceorder	Varchar(20) not null,
  Sourceordernumber	Varchar(20) not null,
  CurPreRecv	Number(*,2) not null,
  Prepaidamount	Number(*,2),
  abstract	Varchar(255)

);
/*客户账款明细表*/
create table t_CustomerAccountDetails(
  Customer	Varchar(20) not null  primary key,
  Sourcelist	Varchar(20) not null,
  Sourcenumber	Varchar(20) not null,
  FundBillDate	Date not null,
  Originalamount	Number(*,2) not null,
  Currentamount	Number(*,2) not null


);
