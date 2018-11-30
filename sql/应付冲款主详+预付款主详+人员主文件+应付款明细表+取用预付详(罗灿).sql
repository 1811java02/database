//Ӧ���������t_RushPayable��
create table t_RushPayable(
FundBillID  varchar2(20)  primary key,
FundBillDate date,
CustomerID varchar2(20),
CustomerName varchar2(20),
CashStyleName  varchar2(20),
Cash Number(*,2),
VisaStyleName varchar2(20),
Visa Number(*,2),
OtherPayStyleName varchar2(20),
OtherPay Number(*,2),
BCurrencyName varchar2(20),
ExchangeRate Number(*,4),
DiscountPer Number(*,4),
AccMonthToMonth date,
VoucherNo varchar2(20),
DepartNameFrom varchar2(20),
MakerSign varchar2(20),
ProjectFrom varchar2(20),
FermitterSign varchar2(20),
Remarks varchar2(255)
Type Number(1)
);
select * from RushPayable_main

INSERT into t_RushPayable(FundBillID,FundBillDate,CustomerID,CustomerName,CashStyleName,Cash,VisaStyleName,Visa,OtherPayStyleName,OtherPay,BCurrencyName,ExchangeRate,DiscountPer,AccMonthToMonth,VoucherNo,DepartNameFrom,MakerSign,ProjectFrom,FermitterSign,Remarks) 
VALUES('2018112903',TO_DATE('2018-11-29','yyyy-mm-dd hh24:mi:ss'),'01','���޿Ƽε��Գ�','�ֽ�','1000.00','','','','','RMB','1.000','0',TO_DATE('2018-11-29','yyyy-mm-dd hh24:mi:ss'),'','�ɹ���','ţ�ɹ�','','����','');
INSERT into t_RushPayable(FundBillID,FundBillDate,CustomerID,CustomerName,CashStyleName,Cash,VisaStyleName,Visa,OtherPayStyleName,OtherPay,BCurrencyName,ExchangeRate,DiscountPer,AccMonthToMonth,VoucherNo,DepartNameFrom,MakerSign,ProjectFrom,FermitterSign,Remarks) 
VALUES('2018112902',TO_DATE('2018-11-29','yyyy-mm-dd hh24:mi:ss'),'01','�����з����Գ�','�ֽ�','9999.00','','','','','RMB','1.000','0',TO_DATE('2018-11-29','yyyy-mm-dd hh24:mi:ss'),'','�ɹ���','ţ�ɹ�','','����','');



//Ӧ��������t_RushPayable_detailed��
create table t_Rushpayable_detailed(
FundBillID  varchar2(20)  primary key,
Linenumber int,
Sourcelist varchar2(20),
Sourcenumber varchar2(20),
BCurrencyName varchar2(20),
Originalamount Number(*,2),
Currentamount Number(*,2),
Moneycharged Number(*,2),
Offsetamount Number(*,2),
Allowanceamount Number(*,2)

);
select * from RushPayable_detailed

INSERT into t_RushPayable_detailed(FundBillID,Linenumber,Sourcelist,Sourcenumber,BCurrencyName,Originalamount,Currentamount,Moneycharged,Offsetamount,Allowanceamount) 
VALUES('2018112901','1','����','2018112902','RMB','1000.00','1000.00','200.00','0.00','0.00');
INSERT into t_RushPayable_detailed(FundBillID,Linenumber,Sourcelist,Sourcenumber,BCurrencyName,Originalamount,Currentamount,Moneycharged,Offsetamount,Allowanceamount) 
VALUES('2018112902','2','����','2018112903','RMB','9999.00','9999.00','1000.00','0.00','0.00');



//ȡ��Ԥ����Ӧ�����(t_Prepaid_detailed)
create table t_Prepaid_detailed(
FundBillID  varchar2(20)  primary key,
Linenumber int,
Sourcelist varchar2(20),
Sourcenumber varchar2(20),
Sourceorder varchar2(20),
Sourceordernumber varchar2(20),
CurPreRecv Number(*,2),
Prepaidamount Number(*,2),
abstract varchar2(255)

);

INSERT into t_Prepaid_detailed(FundBillID,Linenumber,Sourcelist,Sourcenumber,Sourceorder,Sourceordernumber,CurPreRecv,Prepaidamount,abstract) 
VALUES('2018112901','1','����','2018112802','����','2018112903','1000.00','300.00','ȡ��֧��30%�Ķ���');
INSERT into t_Prepaid_detailed(FundBillID,Linenumber,Sourcelist,Sourcenumber,Sourceorder,Sourceordernumber,CurPreRecv,Prepaidamount,abstract) 
VALUES('2018112902','2','����','2018112803','����','2018112904','1000.00','300.00','ȡ��֧��30%�Ķ���');


//Ԥ��������t_AdvanceCharge��
create table t_AdvanceCharge(
FundBillID  varchar2(20)  primary key,
FundBillDate date,
CustomerID varchar2(20),
CustomerName varchar2(20),
CashStyleName  varchar2(20),
Cash Number(*,2),
VisaStyleName varchar2(20),
Visa Number(*,2),
OtherPayStyleName varchar2(20),
OtherPay Number(*,2),
BCurrencyName varchar2(20),
ExchangeRate Number(*,4),
DiscountPer Number(*,4),
AccMonthToMonth date,
VoucherNo varchar2(20),
DepartNameFrom varchar2(20),
MakerSign varchar2(20),
ProjectFrom varchar2(20),
FermitterSign varchar2(20),
Remarks varchar2(255)
Type Number(1)
);
select * from RushPayable_main

INSERT into t_AdvanceCharge(FundBillID,FundBillDate,CustomerID,CustomerName,CashStyleName,Cash,VisaStyleName,Visa,OtherPayStyleName,OtherPay,BCurrencyName,ExchangeRate,DiscountPer,AccMonthToMonth,VoucherNo,DepartNameFrom,MakerSign,ProjectFrom,FermitterSign,Remarks) 
VALUES('2018112903',TO_DATE('2018-11-29','yyyy-mm-dd hh24:mi:ss'),'01','���޿Ƽε��Գ�','�ֽ�','1000.00','','','','','RMB','1.000','0',TO_DATE('2018-11-29','yyyy-mm-dd hh24:mi:ss'),'','�ɹ���','ţ�ɹ�','','����','');
INSERT into t_AdvanceCharge(FundBillID,FundBillDate,CustomerID,CustomerName,CashStyleName,Cash,VisaStyleName,Visa,OtherPayStyleName,OtherPay,BCurrencyName,ExchangeRate,DiscountPer,AccMonthToMonth,VoucherNo,DepartNameFrom,MakerSign,ProjectFrom,FermitterSign,Remarks) 
VALUES('2018112902',TO_DATE('2018-11-29','yyyy-mm-dd hh24:mi:ss'),'01','�����з����Գ�','�ֽ�','9999.00','','','','','RMB','1.000','0',TO_DATE('2018-11-29','yyyy-mm-dd hh24:mi:ss'),'','�ɹ���','ţ�ɹ�','','����','');

//Ԥ�������t_PayInAdvance_detailed��
create table t_PayInAdvance_detailed(
FundBillID  varchar2(20)  primary key,
Linenumber int,
Sourcelist varchar2(20),
Sourcenumber varchar2(20),
Prepaidamount Number(*,2),
abstract varchar2(255)

);


INSERT into t_PayInAdvance_detailed(FundBillID,Linenumber,Sourcelist,Sourcenumber,Prepaidamount,abstract) 
VALUES('2018112903','1','','2018112903','1000.00','֧��30%Ԥ����');
INSERT into t_PayInAdvance_detailed(FundBillID,Linenumber,Sourcelist,Sourcenumber,Prepaidamount,abstract) 
VALUES('2018112903','1','','2018112903','1000.00','֧��30%Ԥ����');


//Ӧ������ϸ��t_AccountsPayable_detailed��
create table t_AccountsPayable_detailed(
Originalamount Number(*,2) ,
Currentamount Number(*,2),
Sourcelist varchar2(20),
Sourcenumber varchar2(20),
CustomerID  varchar2(20),
time date
);
INSERT into t_AccountsPayable_detailed(Originalamount,Currentamount,Sourcelist,Sourcenumber,CustomerID,time) 
VALUES('1000','1000','����','2018112901','001',TO_DATE('2018-11-29','yyyy-mm-dd hh24:mi:ss'));
INSERT into t_AccountsPayable_detailed(Originalamount,Currentamount,Sourcelist,Sourcenumber,CustomerID,time) 
VALUES('9999','8000','����','2018112902','001',TO_DATE('2018-11-29','yyyy-mm-dd hh24:mi:ss'));




//��Ա���ļ���t_personnel��
create table t_personnel(
PersonID varchar2(20)  primary key,
DepartID varchar2(20),
personName varchar2(20),
SexDistinction Number(1),
EngName varchar2(20),
Birthday date,
Polity varchar2(20),
MaritalStatus varchar2(20),
OnJobDate date,
BloodType varchar2(20),
FormalDate date,
Familyreg varchar2(20),
Departuretime  date,
NationName varchar2(20),
TechTitle varchar2(20),
ProfTitle varchar2(20),
EngProfTitle varchar2(20),
Email varchar2(20),
Address1 varchar2(20),
Phonel varchar2(20),
MobilePhone varchar2(20),
Schooling varchar2(20),
MaturityDate date,
Degree varchar2(20),
EntryDate date,
School varchar2(20),
Passport varchar2(20),
Professional varchar2(20),
bargainBDate date,
bodyCheckDate date,
bargainYearLong varchar2(20),
Remarks varchar2(255)

);


