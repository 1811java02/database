

--�ͻ�����
create table customer_type(
    ClassID  number(22) primary key ,
    ClassName  varchar(20),
    EngName  varchar(20),
    Memo  clob
  
);
--�ͻ����ļ���
create table customer_information(
    CustomerID  varchar(20) primary key,
    AccountAsignment  varchar (20),
    CustomerFllNae  varchar (20),
    ClassID  number(22),
    CustomerAbreviation  varchar (20),
    Rgion  varchar (20),
    EngFllNme  varchar (20),
    Currency  varchar (20) default 'RMB',
    EngAbreviation  varchar (20),
    Crrency  varchar (20),
    BusPrsonnel  varchar (20),
    Contacts  varchar (20),
    TaxNmber  varchar (20),
    ContactPhone1  varchar (20),
    CapitalAount  number(*,2) default 0,
    ContactPhone2  varchar (20),
    IdustryType  varchar (20),
    ContactPhone3  varchar (20),
    Email  varchar (20),
    Phone  varchar (20),
    Website  varchar (20),
    BankAcount  varchar (20),
    FaxNumber  varchar (20),
    BankDeposit  varchar (20),
    FoldingNumber number(*,2) default 0,
    PriceLevel  varchar (20),
    TaxIncluded  Number(1) default 0,
    DateCreation  Date default sysdate,
    StopTradingDay  Date,
    AmountAccount number(*,2) default 0,
    SurplusAmount number(*,2) default 0,
    ConditionsCollection  varchar (20),
    DaysCollection  number(22) default 0,
    MonthlyClosingDate  Date,
    creditRating  Char(2)  default 'A',
    AccountsReceivable  varchar (20),
    InitialCollection  number(*,2) default 0,
    InitialReceivables number(*,2) default 0,
    FinalSale  number(*,2) default 0,
    FinalAccReceivable  number(*,2) default 0,
    PrepaidSubject  varchar (20),
    SeifDefiningColumn1  varchar (20), 
    SeifDefiningColumn2  varchar (20),
    Remarks  clob
);
--�ͻ��˿���ϸ������������Ϊcus_acc_det_cus,���÷���cus_acc_det_cus.NEXTVAL��
create table customer_account_details(
    CustomerDetD  number(22) primary key,
    SourceListType  varchar (20),
    SourceListID  varchar (20),
    CustomerID  varchar (20),
    Times  Date default sysdate,
    Price  number(*,2),
    CurrentAmount  number(*,2)
);
--�����˻�������
create table sales_returns(
    BillNO  varchar (20) primary key,
    BillDate  Date  default sysdate,
    AddrID  varchar (255),
    PriceofTax  Number(1),
    CurrID  varchar (20),
    WareName  varchar (20),
    ExchRate  number(*,2) default 1,
    IsDeduct  Number(1),
    Dueto  varchar (20),
    SalesName  varchar (20),
    Maker  varchar (20),
    DepartName  varchar (20),
    Permitter  varchar (20),
    AuditedState  Number(1) default 0
);
--�����˻����������������Ϊsal_ret_det_det,���÷���sal_ret_det_det.NEXTVAL��
create table sales_returns_details(
    BillNO  varchar(20),
    DetailedListNumber  Int primary key,
    ProdID  varchar (20),
    ProdName  varchar (20),
    ProdSize  varchar (20),
    Sunit  varchar (20),
    Squantity number(22) default 0,
    OldPrice  number(*,2) default 0,
    Discount  number(*,2) default 0,
    Sprice number(*,2) default 0,
    Amount  number(*,2) default 0,
    TaxRate number(*,2) default 0,
    TaxAmt  number(*,2) default 0,
    AmountATax  number(*,2) default 0,
    HaveBatch  Number(1),
    IsGift  Number(1) default 0,
    ItemRemark  clob,
    TranType  varchar (20),
    FromNO  varchar (20)
);
--�ͻ�����������
insert all into customer_type (ClassID,ClassName,EngName,Memo)
                values ('1','��ͻ�','Key account','���Ǵ�ͻ�')
           into customer_type (ClassID,ClassName,EngName,Memo)
                values ('2','������','agent','���Ǵ�����')
           into customer_type (ClassID,ClassName,EngName,Memo)
                values ('3','����������','Other distributors','��������������')
           into customer_type (ClassID,ClassName,EngName,Memo)
                values ('99','���������û�','Other end users','�������������û�')
           select 1 from dual;
--�����ͻ�
insert into customer_information(CustomerID,CustomerFllNae,ClassID,CustomerAbreviation) 
values ('201811290001','Ƥ�ϰ�',1,'��Ƥ');


--��ѯ����      
select * from customer_type;
select * from customer_information;
select * from customer_account_details;
select * from sales_returns;
select * from sales_returns_details;
