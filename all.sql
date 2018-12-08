prompt PL/SQL Developer import file
prompt Created on 2018��12��8�� by Administrator
set feedback off
set define off
prompt Disabling triggers for T_ACCOUNTSPAYABLE_DETAILED...
alter table T_ACCOUNTSPAYABLE_DETAILED disable all triggers;
prompt Disabling triggers for T_ADVANCECHARGE...
alter table T_ADVANCECHARGE disable all triggers;
prompt Disabling triggers for T_ADVANCERECEIPT...
alter table T_ADVANCERECEIPT disable all triggers;
prompt Disabling triggers for T_ADVANCERECEIPTDETAILS...
alter table T_ADVANCERECEIPTDETAILS disable all triggers;
prompt Disabling triggers for T_BILLTYPE...
alter table T_BILLTYPE disable all triggers;
prompt Disabling triggers for T_BUYORDER...
alter table T_BUYORDER disable all triggers;
prompt Disabling triggers for T_BUYORDERXI_DETAIL...
alter table T_BUYORDERXI_DETAIL disable all triggers;
prompt Disabling triggers for T_BUYRETURN...
alter table T_BUYRETURN disable all triggers;
prompt Disabling triggers for T_BUYRETURN_DETAIL...
alter table T_BUYRETURN_DETAIL disable all triggers;
prompt Disabling triggers for T_BUYXUN...
alter table T_BUYXUN disable all triggers;
prompt Disabling triggers for T_BUYXUN_DETAIL...
alter table T_BUYXUN_DETAIL disable all triggers;
prompt Disabling triggers for T_CHANGEPRICE...
alter table T_CHANGEPRICE disable all triggers;
prompt Disabling triggers for T_CHANGEPRICE_DETAIL...
alter table T_CHANGEPRICE_DETAIL disable all triggers;
prompt Disabling triggers for T_CUSTOMERACCOUNTDETAILS...
alter table T_CUSTOMERACCOUNTDETAILS disable all triggers;
prompt Disabling triggers for T_CUSTOMER_ACCOUNT_DETAILS...
alter table T_CUSTOMER_ACCOUNT_DETAILS disable all triggers;
prompt Disabling triggers for T_CUSTOMER_INFORMATION...
alter table T_CUSTOMER_INFORMATION disable all triggers;
prompt Disabling triggers for T_CUSTOMER_TYPE...
alter table T_CUSTOMER_TYPE disable all triggers;
prompt Disabling triggers for T_DEPARTMENT...
alter table T_DEPARTMENT disable all triggers;
prompt Disabling triggers for T_DETAIL_SALESORDER...
alter table T_DETAIL_SALESORDER disable all triggers;
prompt Disabling triggers for T_DSDATASET1...
alter table T_DSDATASET1 disable all triggers;
prompt Disabling triggers for T_DSDSSALEMAIN...
alter table T_DSDSSALEMAIN disable all triggers;
prompt Disabling triggers for T_DSDSSALESUB...
alter table T_DSDSSALESUB disable all triggers;
prompt Disabling triggers for T_DSDSWAREAMOUNT...
alter table T_DSDSWAREAMOUNT disable all triggers;
prompt Disabling triggers for T_DSDSWARETRANSACTION...
alter table T_DSDSWARETRANSACTION disable all triggers;
prompt Disabling triggers for T_DSPRODUCT...
alter table T_DSPRODUCT disable all triggers;
prompt Disabling triggers for T_DSPRODUCTCLASS...
alter table T_DSPRODUCTCLASS disable all triggers;
prompt Disabling triggers for T_FEECLASS...
alter table T_FEECLASS disable all triggers;
prompt Disabling triggers for T_PAYINADVANCE_DETAILED...
alter table T_PAYINADVANCE_DETAILED disable all triggers;
prompt Disabling triggers for T_PERSONNEL...
alter table T_PERSONNEL disable all triggers;
prompt Disabling triggers for T_PREPAID_DETAILED...
alter table T_PREPAID_DETAILED disable all triggers;
prompt Disabling triggers for T_PROCALLO...
alter table T_PROCALLO disable all triggers;
prompt Disabling triggers for T_PROCALLO_COSTDETAIL...
alter table T_PROCALLO_COSTDETAIL disable all triggers;
prompt Disabling triggers for T_PROCALLO_RESULTDETAIL...
alter table T_PROCALLO_RESULTDETAIL disable all triggers;
prompt Disabling triggers for T_PURCHASE_DETAIL...
alter table T_PURCHASE_DETAIL disable all triggers;
prompt Disabling triggers for T_PURCHASE_MASTER...
alter table T_PURCHASE_MASTER disable all triggers;
prompt Disabling triggers for T_PURCHASE_PURCHASE...
alter table T_PURCHASE_PURCHASE disable all triggers;
prompt Disabling triggers for T_PURCHASE_PURCHASE_DETAILS...
alter table T_PURCHASE_PURCHASE_DETAILS disable all triggers;
prompt Disabling triggers for T_RECEIVABLECHARGE...
alter table T_RECEIVABLECHARGE disable all triggers;
prompt Disabling triggers for T_RECEIVABLECHARGEDETAILS...
alter table T_RECEIVABLECHARGEDETAILS disable all triggers;
prompt Disabling triggers for T_RUSHPAYABLE...
alter table T_RUSHPAYABLE disable all triggers;
prompt Disabling triggers for T_RUSHPAYABLE_DETAILED...
alter table T_RUSHPAYABLE_DETAILED disable all triggers;
prompt Disabling triggers for T_SALEPRICE...
alter table T_SALEPRICE disable all triggers;
prompt Disabling triggers for T_SALEPRICE_DETAILS...
alter table T_SALEPRICE_DETAILS disable all triggers;
prompt Disabling triggers for T_SALESORDER...
alter table T_SALESORDER disable all triggers;
prompt Disabling triggers for T_SALES_RETURNS...
alter table T_SALES_RETURNS disable all triggers;
prompt Disabling triggers for T_SALES_RETURNS_DETAILS...
alter table T_SALES_RETURNS_DETAILS disable all triggers;
prompt Disabling triggers for T_STOCK_INVENTORY...
alter table T_STOCK_INVENTORY disable all triggers;
prompt Disabling triggers for T_STOCK_INVENTORY_DETAILS...
alter table T_STOCK_INVENTORY_DETAILS disable all triggers;
prompt Disabling triggers for T_TAKEINADVANCE...
alter table T_TAKEINADVANCE disable all triggers;
prompt Disabling triggers for T_UNIT...
alter table T_UNIT disable all triggers;
prompt Disabling triggers for T_WAREHOUSE...
alter table T_WAREHOUSE disable all triggers;
prompt Deleting T_WAREHOUSE...
delete from T_WAREHOUSE;
commit;
prompt Deleting T_UNIT...
delete from T_UNIT;
commit;
prompt Deleting T_TAKEINADVANCE...
delete from T_TAKEINADVANCE;
commit;
prompt Deleting T_STOCK_INVENTORY_DETAILS...
delete from T_STOCK_INVENTORY_DETAILS;
commit;
prompt Deleting T_STOCK_INVENTORY...
delete from T_STOCK_INVENTORY;
commit;
prompt Deleting T_SALES_RETURNS_DETAILS...
delete from T_SALES_RETURNS_DETAILS;
commit;
prompt Deleting T_SALES_RETURNS...
delete from T_SALES_RETURNS;
commit;
prompt Deleting T_SALESORDER...
delete from T_SALESORDER;
commit;
prompt Deleting T_SALEPRICE_DETAILS...
delete from T_SALEPRICE_DETAILS;
commit;
prompt Deleting T_SALEPRICE...
delete from T_SALEPRICE;
commit;
prompt Deleting T_RUSHPAYABLE_DETAILED...
delete from T_RUSHPAYABLE_DETAILED;
commit;
prompt Deleting T_RUSHPAYABLE...
delete from T_RUSHPAYABLE;
commit;
prompt Deleting T_RECEIVABLECHARGEDETAILS...
delete from T_RECEIVABLECHARGEDETAILS;
commit;
prompt Deleting T_RECEIVABLECHARGE...
delete from T_RECEIVABLECHARGE;
commit;
prompt Deleting T_PURCHASE_PURCHASE_DETAILS...
delete from T_PURCHASE_PURCHASE_DETAILS;
commit;
prompt Deleting T_PURCHASE_PURCHASE...
delete from T_PURCHASE_PURCHASE;
commit;
prompt Deleting T_PURCHASE_MASTER...
delete from T_PURCHASE_MASTER;
commit;
prompt Deleting T_PURCHASE_DETAIL...
delete from T_PURCHASE_DETAIL;
commit;
prompt Deleting T_PROCALLO_RESULTDETAIL...
delete from T_PROCALLO_RESULTDETAIL;
commit;
prompt Deleting T_PROCALLO_COSTDETAIL...
delete from T_PROCALLO_COSTDETAIL;
commit;
prompt Deleting T_PROCALLO...
delete from T_PROCALLO;
commit;
prompt Deleting T_PREPAID_DETAILED...
delete from T_PREPAID_DETAILED;
commit;
prompt Deleting T_PERSONNEL...
delete from T_PERSONNEL;
commit;
prompt Deleting T_PAYINADVANCE_DETAILED...
delete from T_PAYINADVANCE_DETAILED;
commit;
prompt Deleting T_FEECLASS...
delete from T_FEECLASS;
commit;
prompt Deleting T_DSPRODUCTCLASS...
delete from T_DSPRODUCTCLASS;
commit;
prompt Deleting T_DSPRODUCT...
delete from T_DSPRODUCT;
commit;
prompt Deleting T_DSDSWARETRANSACTION...
delete from T_DSDSWARETRANSACTION;
commit;
prompt Deleting T_DSDSWAREAMOUNT...
delete from T_DSDSWAREAMOUNT;
commit;
prompt Deleting T_DSDSSALESUB...
delete from T_DSDSSALESUB;
commit;
prompt Deleting T_DSDSSALEMAIN...
delete from T_DSDSSALEMAIN;
commit;
prompt Deleting T_DSDATASET1...
delete from T_DSDATASET1;
commit;
prompt Deleting T_DETAIL_SALESORDER...
delete from T_DETAIL_SALESORDER;
commit;
prompt Deleting T_DEPARTMENT...
delete from T_DEPARTMENT;
commit;
prompt Deleting T_CUSTOMER_TYPE...
delete from T_CUSTOMER_TYPE;
commit;
prompt Deleting T_CUSTOMER_INFORMATION...
delete from T_CUSTOMER_INFORMATION;
commit;
prompt Deleting T_CUSTOMER_ACCOUNT_DETAILS...
delete from T_CUSTOMER_ACCOUNT_DETAILS;
commit;
prompt Deleting T_CUSTOMERACCOUNTDETAILS...
delete from T_CUSTOMERACCOUNTDETAILS;
commit;
prompt Deleting T_CHANGEPRICE_DETAIL...
delete from T_CHANGEPRICE_DETAIL;
commit;
prompt Deleting T_CHANGEPRICE...
delete from T_CHANGEPRICE;
commit;
prompt Deleting T_BUYXUN_DETAIL...
delete from T_BUYXUN_DETAIL;
commit;
prompt Deleting T_BUYXUN...
delete from T_BUYXUN;
commit;
prompt Deleting T_BUYRETURN_DETAIL...
delete from T_BUYRETURN_DETAIL;
commit;
prompt Deleting T_BUYRETURN...
delete from T_BUYRETURN;
commit;
prompt Deleting T_BUYORDERXI_DETAIL...
delete from T_BUYORDERXI_DETAIL;
commit;
prompt Deleting T_BUYORDER...
delete from T_BUYORDER;
commit;
prompt Deleting T_BILLTYPE...
delete from T_BILLTYPE;
commit;
prompt Deleting T_ADVANCERECEIPTDETAILS...
delete from T_ADVANCERECEIPTDETAILS;
commit;
prompt Deleting T_ADVANCERECEIPT...
delete from T_ADVANCERECEIPT;
commit;
prompt Deleting T_ADVANCECHARGE...
delete from T_ADVANCECHARGE;
commit;
prompt Deleting T_ACCOUNTSPAYABLE_DETAILED...
delete from T_ACCOUNTSPAYABLE_DETAILED;
commit;
prompt Loading T_ACCOUNTSPAYABLE_DETAILED...
prompt Table is empty
prompt Loading T_ADVANCECHARGE...
insert into T_ADVANCECHARGE (FUNDBILLID, FUNDBILLDATE, CUSTOMERID, CUSTOMERNAME, CASHSTYLENAME, CASH, VISASTYLENAME, VISA, OTHERPAYSTYLENAME, OTHERPAY, BCURRENCYNAME, EXCHANGERATE, DISCOUNTPER, ACCMONTHTOMONTH, VOUCHERNO, DEPARTNAMEFROM, MAKERSIGN, PROJECTFROM, FERMITTERSIGN, CUSTOMCOLUMNONE, CUSTOMCOLUMNTWO, REMARKS, TYPE)
values ('2018112903', to_date('29-11-2018', 'dd-mm-yyyy'), '01', '���޿Ƽε��Գ�', '�ֽ�', 1000, null, null, null, null, 'RMB', 1, 0, to_date('29-11-2018', 'dd-mm-yyyy'), null, '�ɹ���', 'ţ�ɹ�', null, '����', null, null, null, null);
commit;
prompt 1 records loaded
prompt Loading T_ADVANCERECEIPT...
insert into T_ADVANCERECEIPT (FUNDBILLID, FUNDBILLDATE, CUSTOMERID, CUSTOMERNAME, CASHSTYLENAME, CASH, VISASTYLENAME, VISA, OTHERPAYSTYLENAME, OTHERPAY, BCURRENCYNAME, EXCHANGERATE, DISCOUNTPER, ACCMONTHTOMONTH, VOUCHERNO, DEPARTNAMEFROM, MAKERSIGN, PROJECTFROM, FERMITTERSIGN, AUDITSTATUS, CUSTOMCOLUMNONE, CUSTOMCOLUMNTWO, REMARKS)
values ('20181207001', to_date('07-12-2018 02:02:57', 'dd-mm-yyyy hh24:mi:ss'), '101', '����ΰ��', '�ֽ�', 20000, 'ת��', null, null, null, '�����', 1, 17, to_date('10-12-2018 02:05:53', 'dd-mm-yyyy hh24:mi:ss'), '2018001', 'ֱ����', '����', null, 'admin', 0, null, null, null);
insert into T_ADVANCERECEIPT (FUNDBILLID, FUNDBILLDATE, CUSTOMERID, CUSTOMERNAME, CASHSTYLENAME, CASH, VISASTYLENAME, VISA, OTHERPAYSTYLENAME, OTHERPAY, BCURRENCYNAME, EXCHANGERATE, DISCOUNTPER, ACCMONTHTOMONTH, VOUCHERNO, DEPARTNAMEFROM, MAKERSIGN, PROJECTFROM, FERMITTERSIGN, AUDITSTATUS, CUSTOMCOLUMNONE, CUSTOMCOLUMNTWO, REMARKS)
values ('20181207002', to_date('07-12-2018 02:07:41', 'dd-mm-yyyy hh24:mi:ss'), '102', '��ɳѩ��', '�ֽ�', 8000, 'ת��', null, null, null, '�����', 1, 17, to_date('13-12-2018 02:08:35', 'dd-mm-yyyy hh24:mi:ss'), '2018002', 'ֱ����', '����', null, 'admin', 0, null, null, null);
commit;
prompt 2 records loaded
prompt Loading T_ADVANCERECEIPTDETAILS...
insert into T_ADVANCERECEIPTDETAILS (FUNDBILLID, LINENUMBER, CURPRERECV, SOURCELIST, SOURCENUMBER, REMARKS)
values ('20181207001', 1, 20000, '���۶���', '20181205001', null);
insert into T_ADVANCERECEIPTDETAILS (FUNDBILLID, LINENUMBER, CURPRERECV, SOURCELIST, SOURCENUMBER, REMARKS)
values ('20181207002', 2, 8000, '���۶���', '20181205002', null);
commit;
prompt 2 records loaded
prompt Loading T_BILLTYPE...
insert into T_BILLTYPE (CLASSID, CLASSNAME, BILLTYPE, ENGNAME, MEMO)
values ('01', '��Ʒ�빺', '�ɹ��빺��', null, null);
insert into T_BILLTYPE (CLASSID, CLASSNAME, BILLTYPE, ENGNAME, MEMO)
values ('02', '��Ʒ���', '�ɹ���ⵥ', null, null);
insert into T_BILLTYPE (CLASSID, CLASSNAME, BILLTYPE, ENGNAME, MEMO)
values ('03', '��Ʒѯ��', '�ɹ�ѯ�۵�', null, null);
insert into T_BILLTYPE (CLASSID, CLASSNAME, BILLTYPE, ENGNAME, MEMO)
values ('04', '��Ʒ����', '���۱��۵�', null, null);
insert into T_BILLTYPE (CLASSID, CLASSNAME, BILLTYPE, ENGNAME, MEMO)
values ('05', '��Ʒ����', '���۳��ⵥ', null, null);
commit;
prompt 5 records loaded
prompt Loading T_BUYORDER...
insert into T_BUYORDER (BILLNO, BILLDATE, BILLSTATUS, CUSTOMERID, ADDRESSID, PRICEOFTAX, SALESNAME, DEPARTID, MAKER, PERMITTER, ASTATUS)
values ('2018112901', to_date('29-11-2018', 'dd-mm-yyyy'), 0, 'HP', '��������', 0, '10018', '09', 'admin', 'admin', 0);
insert into T_BUYORDER (BILLNO, BILLDATE, BILLSTATUS, CUSTOMERID, ADDRESSID, PRICEOFTAX, SALESNAME, DEPARTID, MAKER, PERMITTER, ASTATUS)
values ('2018112902', to_date('29-11-2018', 'dd-mm-yyyy'), 1, 'HP', '����', 0, '10019', '02', 'admin', 'admin', 1);
insert into T_BUYORDER (BILLNO, BILLDATE, BILLSTATUS, CUSTOMERID, ADDRESSID, PRICEOFTAX, SALESNAME, DEPARTID, MAKER, PERMITTER, ASTATUS)
values ('2018112903', to_date('29-11-2018', 'dd-mm-yyyy'), 0, 'HP', '����', 0, '10010', '01', 'admin', 'admin', 0);
commit;
prompt 3 records loaded
prompt Loading T_BUYORDERXI_DETAIL...
insert into T_BUYORDERXI_DETAIL (SERNO, PRODID, PRODCLASSID, PRODCLASSNAME, UNITNAME, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, VFTOTAL, PREINDATE, QTYREMAIN, TRANTYPE, FROMNO)
values (1, 'C01-7900-307', '001', 'HP 307PA#AB2̨ʽ��', 'pcs', 50, 3370, 100, 3370, 3370, 17, 572.9, 3370, to_date('29-11-2018', 'dd-mm-yyyy'), 40, '���۶���', '2018111701');
insert into T_BUYORDERXI_DETAIL (SERNO, PRODID, PRODCLASSID, PRODCLASSNAME, UNITNAME, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, VFTOTAL, PREINDATE, QTYREMAIN, TRANTYPE, FROMNO)
values (2, 'C01-7900-308', '002', 'HP 307PA#AB2̨ʽ��', 'pcs', 50, 3370, 100, 3370, 3370, 17, 572.9, 3370, to_date('29-11-2018', 'dd-mm-yyyy'), 40, '���۶���', '2018111701');
insert into T_BUYORDERXI_DETAIL (SERNO, PRODID, PRODCLASSID, PRODCLASSNAME, UNITNAME, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, VFTOTAL, PREINDATE, QTYREMAIN, TRANTYPE, FROMNO)
values (3, 'C01-7900-309', '003', 'HP 307PA#AB2̨ʽ��', 'pcs', 50, 3370, 100, 3370, 3370, 17, 572.9, 3370, to_date('29-11-2018', 'dd-mm-yyyy'), 40, '���۶���', '2018111701');
commit;
prompt 3 records loaded
prompt Loading T_BUYRETURN...
prompt Table is empty
prompt Loading T_BUYRETURN_DETAIL...
prompt Table is empty
prompt Loading T_BUYXUN...
insert into T_BUYXUN (BILLNO, BILDATE, CUSTOMERID, VALIDDATE, PRICEOFTAX, CURRID, MAKER, PERMITTER, SALESID, ASTATUS)
values ('2018112701', to_date('27-11-2018', 'dd-mm-yyyy'), 'SHJJ', to_date('28-11-2018', 'dd-mm-yyyy'), 1, 'RMB', 'admin', 'admin', '10018', 0);
insert into T_BUYXUN (BILLNO, BILDATE, CUSTOMERID, VALIDDATE, PRICEOFTAX, CURRID, MAKER, PERMITTER, SALESID, ASTATUS)
values ('2018112702', to_date('27-11-2018', 'dd-mm-yyyy'), 'SHJJ', to_date('28-11-2018', 'dd-mm-yyyy'), 1, 'RMB', 'admin', 'admin', '10011', 0);
insert into T_BUYXUN (BILLNO, BILDATE, CUSTOMERID, VALIDDATE, PRICEOFTAX, CURRID, MAKER, PERMITTER, SALESID, ASTATUS)
values ('2018112703', to_date('27-11-2018', 'dd-mm-yyyy'), 'SHJJ', to_date('28-11-2018', 'dd-mm-yyyy'), 1, 'RMB', 'admin', 'admin', '10019', 0);
commit;
prompt 3 records loaded
prompt Loading T_BUYXUN_DETAIL...
insert into T_BUYXUN_DETAIL (BILLNO, BILLDATE, SERNO, PRODID, PRODCLASSID, UNITNAME, PRODNAME, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, VFTOAL, SOURCETRANFLAG, SOURCETRANBI)
values ('2018112701', to_date('27-11-2018', 'dd-mm-yyyy'), 1, 'C01-W-HP-DC7900-307', '����', 'PCS', 'HP AB2̨ʽ��', 50, 3370, 100, 3370, 3370, 17, 572.9, 3942.9, '���۶���', '2018111701');
insert into T_BUYXUN_DETAIL (BILLNO, BILLDATE, SERNO, PRODID, PRODCLASSID, UNITNAME, PRODNAME, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, VFTOAL, SOURCETRANFLAG, SOURCETRANBI)
values ('2018112702', to_date('27-11-2018', 'dd-mm-yyyy'), 1, 'C01-W-HP-DC7900-308', '����', 'PCS', 'HP AB3̨ʽ��', 50, 3370, 100, 3370, 3370, 17, 572.9, 3942.9, '�ɹ��빺��', '2018111702');
insert into T_BUYXUN_DETAIL (BILLNO, BILLDATE, SERNO, PRODID, PRODCLASSID, UNITNAME, PRODNAME, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, VFTOAL, SOURCETRANFLAG, SOURCETRANBI)
values ('2018112703', to_date('27-11-2018', 'dd-mm-yyyy'), 1, 'C01-W-HP-DC7900-309', '����', 'PCS', 'HP AB4̨ʽ��', 50, 3370, 100, 3370, 3370, 17, 572.9, 3942.9, '�ɹ�ѯ�۵�', '2018111703');
commit;
prompt 3 records loaded
prompt Loading T_CHANGEPRICE...
prompt Table is empty
prompt Loading T_CHANGEPRICE_DETAIL...
prompt Table is empty
prompt Loading T_CUSTOMERACCOUNTDETAILS...
insert into T_CUSTOMERACCOUNTDETAILS (ID, CUSTOMER, SOURCELIST, SOURCENUMBER, FUNDBILLDATE, ORIGINALAMOUNT, CURRENTAMOUNT)
values (1, '����', '���۳�����', '185500', to_date('30-11-2018 09:20:51', 'dd-mm-yyyy hh24:mi:ss'), 10000, 6000);
commit;
prompt 1 records loaded
prompt Loading T_CUSTOMER_ACCOUNT_DETAILS...
prompt Table is empty
prompt Loading T_CUSTOMER_INFORMATION...
insert into T_CUSTOMER_INFORMATION (CUSTOMERID, ACCOUNTASIGNMENT, CUSTOMERFLLNAE, CLASSID, CUSTOMERABREVIATION, RGION, ENGFLLNME, CURRENCY, ENGABREVIATION, CRRENCY, BUSPRSONNEL, CONTACTS, TAXNMBER, CONTACTPHONE1, CAPITALAOUNT, CONTACTPHONE2, IDUSTRYTYPE, CONTACTPHONE3, EMAIL, PHONE, WEBSITE, BANKACOUNT, FAXNUMBER, BANKDEPOSIT, FOLDINGNUMBER, PRICELEVEL, TAXINCLUDED, DATECREATION, STOPTRADINGDAY, AMOUNTACCOUNT, SURPLUSAMOUNT, CONDITIONSCOLLECTION, DAYSCOLLECTION, MONTHLYCLOSINGDATE, CREDITRATING, ACCOUNTSRECEIVABLE, INITIALCOLLECTION, INITIALRECEIVABLES, FINALSALE, FINALACCRECEIVABLE, PREPAIDSUBJECT, SEIFDEFININGCOLUMN1, SEIFDEFININGCOLUMN2, REMARKS)
values ('101', '101', '����ΰ�����޹�˾', 1, '����ΰ��', '����', 'zzwd', '�����', 'zzwd', '����', '��ҵ��', '������', null, '1355667128', 0, null, null, null, null, null, null, null, null, null, 0, null, 0, to_date('03-12-2018 10:23:53', 'dd-mm-yyyy hh24:mi:ss'), null, 0, 0, null, 0, null, 'A', null, 0, 0, 0, 0, null, null, null, null);
insert into T_CUSTOMER_INFORMATION (CUSTOMERID, ACCOUNTASIGNMENT, CUSTOMERFLLNAE, CLASSID, CUSTOMERABREVIATION, RGION, ENGFLLNME, CURRENCY, ENGABREVIATION, CRRENCY, BUSPRSONNEL, CONTACTS, TAXNMBER, CONTACTPHONE1, CAPITALAOUNT, CONTACTPHONE2, IDUSTRYTYPE, CONTACTPHONE3, EMAIL, PHONE, WEBSITE, BANKACOUNT, FAXNUMBER, BANKDEPOSIT, FOLDINGNUMBER, PRICELEVEL, TAXINCLUDED, DATECREATION, STOPTRADINGDAY, AMOUNTACCOUNT, SURPLUSAMOUNT, CONDITIONSCOLLECTION, DAYSCOLLECTION, MONTHLYCLOSINGDATE, CREDITRATING, ACCOUNTSRECEIVABLE, INITIALCOLLECTION, INITIALRECEIVABLES, FINALSALE, FINALACCRECEIVABLE, PREPAIDSUBJECT, SEIFDEFININGCOLUMN1, SEIFDEFININGCOLUMN2, REMARKS)
values ('102', '102', '��ɳ�ױ̹�˾', 2, '��ɳ�ױ�', '����', 'cs', '�����', 'cs', '�Ÿ���', '��ҵ��', '������', null, '1378625665', 0, null, null, null, null, null, null, null, null, null, 0, null, 0, to_date('03-12-2018 10:27:23', 'dd-mm-yyyy hh24:mi:ss'), null, 0, 0, null, 0, null, 'A', null, 0, 0, 0, 0, null, null, null, null);
insert into T_CUSTOMER_INFORMATION (CUSTOMERID, ACCOUNTASIGNMENT, CUSTOMERFLLNAE, CLASSID, CUSTOMERABREVIATION, RGION, ENGFLLNME, CURRENCY, ENGABREVIATION, CRRENCY, BUSPRSONNEL, CONTACTS, TAXNMBER, CONTACTPHONE1, CAPITALAOUNT, CONTACTPHONE2, IDUSTRYTYPE, CONTACTPHONE3, EMAIL, PHONE, WEBSITE, BANKACOUNT, FAXNUMBER, BANKDEPOSIT, FOLDINGNUMBER, PRICELEVEL, TAXINCLUDED, DATECREATION, STOPTRADINGDAY, AMOUNTACCOUNT, SURPLUSAMOUNT, CONDITIONSCOLLECTION, DAYSCOLLECTION, MONTHLYCLOSINGDATE, CREDITRATING, ACCOUNTSRECEIVABLE, INITIALCOLLECTION, INITIALRECEIVABLES, FINALSALE, FINALACCRECEIVABLE, PREPAIDSUBJECT, SEIFDEFININGCOLUMN1, SEIFDEFININGCOLUMN2, REMARKS)
values ('103', '103', '���޽����Ƽ����޹�˾', 1, '���޽���', '����', 'jk', '�����', 'jk', '������', '��ҵ��', 'ʷ����', null, '1355647124', 0, null, null, null, null, null, null, null, null, null, 0, null, 0, to_date('03-12-2018 10:29:05', 'dd-mm-yyyy hh24:mi:ss'), null, 0, 0, null, 0, null, 'A', null, 0, 0, 0, 0, null, null, null, null);
commit;
prompt 3 records loaded
prompt Loading T_CUSTOMER_TYPE...
insert into T_CUSTOMER_TYPE (CLASSID, CLASSNAME, ENGNAME, MEMO)
values (1, '��ͻ�', 'bigkehu', '�Ǹ���ͻ�');
insert into T_CUSTOMER_TYPE (CLASSID, CLASSNAME, ENGNAME, MEMO)
values (2, '���Ϳͻ�', '�пͻ�', null);
insert into T_CUSTOMER_TYPE (CLASSID, CLASSNAME, ENGNAME, MEMO)
values (3, 'С�ͻ�', 'xiaokehu', '��С�ͻ�');
insert into T_CUSTOMER_TYPE (CLASSID, CLASSNAME, ENGNAME, MEMO)
values (4, '��ͻ�', 'bigkehu', '�Ǹ���ͻ�');
insert into T_CUSTOMER_TYPE (CLASSID, CLASSNAME, ENGNAME, MEMO)
values (5, '��ͻ�', 'bigkehu', '�Ǹ���ͻ�');
commit;
prompt 5 records loaded
prompt Loading T_DEPARTMENT...
insert into T_DEPARTMENT (DEPARTID, DEPARTNAME, ENGNAME, MEMO)
values ('01', '����', null, null);
insert into T_DEPARTMENT (DEPARTID, DEPARTNAME, ENGNAME, MEMO)
values ('02', '�ɹ���', null, null);
insert into T_DEPARTMENT (DEPARTID, DEPARTNAME, ENGNAME, MEMO)
values ('03', '���۲�', null, null);
insert into T_DEPARTMENT (DEPARTID, DEPARTNAME, ENGNAME, MEMO)
values ('04', '������', null, null);
commit;
prompt 4 records loaded
prompt Loading T_DETAIL_SALESORDER...
prompt Table is empty
prompt Loading T_DSDATASET1...
insert into T_DSDATASET1 (ID, FULLNAME, SHORTNAME, ENGFULLNAME, ENGSHORTNAME, FUNDSATTRIBUTION, CLASSID, CLASSNAME, AREAID, AREANAME, CURRENCYID, CURRENCYNAME, CLIEFNAME, LINKMAN, TELEPHONE1, TELEPHONE2, TELEPHONE3, MOBILETEL, BANKACCOUNT, BANKID, BANKNAME, PERSONID, PERSONNAME, TAXNO, CAPITALIZATION, INDUSTRIALCLASS, EMAIL, WEBADDRESS, FAXNO, EARLIESTTRADEDATE, FIRSTTRADEDATE, PRICEOFTAX, INVALIDDATE, AMOUNTQUOTA, RECVWAY, DISTDAYS, DAYOFCLOSE, CREDITLEVEL, STARTADVRECV, STARTRECEIVABLE, CURADVRECV, CURRECEIVABLE, ACCADVRECV, ACCADVRECVNAME, ACCRECEIVABLE, ACCRECEIVABLENAME, ACCRECEIVABLETEMP, ACCRECEIVABLETEMPNAME, ADDFIELD1, ADDFIELD2, MEMO)
values ('001', '��ɳ�������޹�˾', '��ɳ����', 'CSXL', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into T_DSDATASET1 (ID, FULLNAME, SHORTNAME, ENGFULLNAME, ENGSHORTNAME, FUNDSATTRIBUTION, CLASSID, CLASSNAME, AREAID, AREANAME, CURRENCYID, CURRENCYNAME, CLIEFNAME, LINKMAN, TELEPHONE1, TELEPHONE2, TELEPHONE3, MOBILETEL, BANKACCOUNT, BANKID, BANKNAME, PERSONID, PERSONNAME, TAXNO, CAPITALIZATION, INDUSTRIALCLASS, EMAIL, WEBADDRESS, FAXNO, EARLIESTTRADEDATE, FIRSTTRADEDATE, PRICEOFTAX, INVALIDDATE, AMOUNTQUOTA, RECVWAY, DISTDAYS, DAYOFCLOSE, CREDITLEVEL, STARTADVRECV, STARTRECEIVABLE, CURADVRECV, CURRECEIVABLE, ACCADVRECV, ACCADVRECVNAME, ACCRECEIVABLE, ACCRECEIVABLENAME, ACCRECEIVABLETEMP, ACCRECEIVABLETEMPNAME, ADDFIELD1, ADDFIELD2, MEMO)
values ('002', '����(�й�)���޹�˾', '����', 'HP', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into T_DSDATASET1 (ID, FULLNAME, SHORTNAME, ENGFULLNAME, ENGSHORTNAME, FUNDSATTRIBUTION, CLASSID, CLASSNAME, AREAID, AREANAME, CURRENCYID, CURRENCYNAME, CLIEFNAME, LINKMAN, TELEPHONE1, TELEPHONE2, TELEPHONE3, MOBILETEL, BANKACCOUNT, BANKID, BANKNAME, PERSONID, PERSONNAME, TAXNO, CAPITALIZATION, INDUSTRIALCLASS, EMAIL, WEBADDRESS, FAXNO, EARLIESTTRADEDATE, FIRSTTRADEDATE, PRICEOFTAX, INVALIDDATE, AMOUNTQUOTA, RECVWAY, DISTDAYS, DAYOFCLOSE, CREDITLEVEL, STARTADVRECV, STARTRECEIVABLE, CURADVRECV, CURRECEIVABLE, ACCADVRECV, ACCADVRECVNAME, ACCRECEIVABLE, ACCRECEIVABLENAME, ACCRECEIVABLETEMP, ACCRECEIVABLETEMPNAME, ADDFIELD1, ADDFIELD2, MEMO)
values ('003', '�����������޹�˾', '��������', 'SZSM', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 3 records loaded
prompt Loading T_DSDSSALEMAIN...
insert into T_DSDSSALEMAIN (BILLNO, BILLDATE, CUSTID, CUSTSHORTNAME, ADDRID, CUSTADDRESS, SALECLASSID, SALECLASSNAME, PRICEOFTAX, WAREID, WARENAME, CURRID, CURRNAME, EXCHRATE, UDEF1, UDEF2, REMARK, SALESID, SALESNAME, DEPARTID, DEPARTNAME, PROJECTID, PROJECTNAME, MAKER, MAKERNAME, PERMITTER, PERMITTERNAME, PERMITTYPE)
values ('20181208001', to_date('08-12-2018', 'dd-mm-yyyy'), '����ΰ�����޹�˾', '����ΰ�����޹�˾', null, null, '05', '��Ʒ����', 0, '02', '�Ϻ�B�֣�ԭ�ϣ�', null, '�����', 1, null, null, null, '002', '�޲�', '02', '�ɹ���', null, null, '001', 'Admin', null, null, 0);
commit;
prompt 1 records loaded
prompt Loading T_DSDSSALESUB...
insert into T_DSDSSALESUB (BILLNO, SERNO, PRODID, PRODNAME, PRODSIZE, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, AMOUNTATAX, ISGIFT, ITEMREMARK, TRANTYPE, TRANTYPENAME, FORMNO, CUSTBILLNO)
values ('20181208001', 21, 'C01-302', 'HP L1710', null, 'PCS', 10, 1050, 100, 1050, 10500, 17, 1785, 12285, null, null, null, null, null, null);
commit;
prompt 1 records loaded
prompt Loading T_DSDSWAREAMOUNT...
insert into T_DSDSWAREAMOUNT (WAREHOUSEID, PRODID, BQUANTITY, BAVGCOST, BALLCOST, QUANTITY, CAVGCOST, CALLCOST)
values ('01', 'C01-302', 1, 999, 999, 1, 999, 999);
insert into T_DSDSWAREAMOUNT (WAREHOUSEID, PRODID, BQUANTITY, BAVGCOST, BALLCOST, QUANTITY, CAVGCOST, CALLCOST)
values ('02', 'C01-301', 10, 3370, 33700, 10, 3370, 33700);
insert into T_DSDSWAREAMOUNT (WAREHOUSEID, PRODID, BQUANTITY, BAVGCOST, BALLCOST, QUANTITY, CAVGCOST, CALLCOST)
values ('02', 'C01-302', 5, 999, 4995, 5, 999, 4995);
commit;
prompt 3 records loaded
prompt Loading T_DSDSWARETRANSACTION...
prompt Table is empty
prompt Loading T_DSPRODUCT...
insert into T_DSPRODUCT (PRODID, CLASSID, CLASSNAME, PRODNAME, UNITID, UNIT, PRODSIZE, BARCODEID, ENGNAME, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, CURRID, CURRNAME, PRODFORM, PRICEOFTAX, TAXITEMSID, TAXITEMSNAME, BUSITAXRATE, ADVANCEDAYS, MAJORSUPPLIER, MAJORSUPPLIERNAME, BATCHUSED, EFFECTDATEUSED, VALIDDATEUSED, DEFVAKLIDDAY, SAFEQTY, BSTDCOST, BOUTSTOCKDAY, BINSTOCKDAY, SLUGGISHDAYS, INVALIDDATE, UDEF1, UDEF2, PRODDESC)
values ('C01-301', 'A01', '����', 'HP DC7900CMT̨ʽ��', null, 'PCS', null, null, null, 3800, 3750, 3600, null, null, null, 3370, null, '�����', '�ɹ���', 0, null, null, 17, 0, null, '��������', null, null, null, null, 0, 3370, null, null, 0, null, null, null, null);
insert into T_DSPRODUCT (PRODID, CLASSID, CLASSNAME, PRODNAME, UNITID, UNIT, PRODSIZE, BARCODEID, ENGNAME, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, CURRID, CURRNAME, PRODFORM, PRICEOFTAX, TAXITEMSID, TAXITEMSNAME, BUSITAXRATE, ADVANCEDAYS, MAJORSUPPLIER, MAJORSUPPLIERNAME, BATCHUSED, EFFECTDATEUSED, VALIDDATEUSED, DEFVAKLIDDAY, SAFEQTY, BSTDCOST, BOUTSTOCKDAY, BINSTOCKDAY, SLUGGISHDAYS, INVALIDDATE, UDEF1, UDEF2, PRODDESC)
values ('C01-302', 'A02', '��ʾ��', 'HP L1710', null, 'PCS', null, null, null, 1050, 1040, 1030, null, null, null, 990, null, '�����', '�ɹ���', 0, null, null, 17, 0, null, null, null, null, null, null, 10, 990, null, null, 0, null, null, null, null);
commit;
prompt 2 records loaded
prompt Loading T_DSPRODUCTCLASS...
insert into T_DSPRODUCTCLASS (CLASSID, CLASSNAME, ENGNAEM, ACCINVENTORYID, ACCINVENTORYNAME, ACCSALEID, ACCSALENAME, ACCSALECOSTID, ACCSALECOSTNAME, SENDOUTWAREID, SENDOUTWARENAME, GIFTEXPENSEID, GIFTEXPENSENAME, OTHERINCOMEID, OTHERINCOMENAME, OTHEREXPENSEID, OTHEREXPENSENAME, OTHERCOSTID, OTHERCOSTNAME, MOME)
values ('A01', '����', null, null, '�����Ʒ', null, '��ҪӪҵ����', null, '��Ҫҵ��ɱ�', null, '������Ʒ', null, 'Ӫҵ����', null, null, null, null, null, null, null);
insert into T_DSPRODUCTCLASS (CLASSID, CLASSNAME, ENGNAEM, ACCINVENTORYID, ACCINVENTORYNAME, ACCSALEID, ACCSALENAME, ACCSALECOSTID, ACCSALECOSTNAME, SENDOUTWAREID, SENDOUTWARENAME, GIFTEXPENSEID, GIFTEXPENSENAME, OTHERINCOMEID, OTHERINCOMENAME, OTHEREXPENSEID, OTHEREXPENSENAME, OTHERCOSTID, OTHERCOSTNAME, MOME)
values ('A02', '��ʾ��', null, null, '�����Ʒ', null, '��ҪӪҵ����', null, '��Ҫҵ��ɱ�', null, '������Ʒ', null, 'Ӫҵ����', null, null, null, null, null, null, null);
insert into T_DSPRODUCTCLASS (CLASSID, CLASSNAME, ENGNAEM, ACCINVENTORYID, ACCINVENTORYNAME, ACCSALEID, ACCSALENAME, ACCSALECOSTID, ACCSALECOSTNAME, SENDOUTWAREID, SENDOUTWARENAME, GIFTEXPENSEID, GIFTEXPENSENAME, OTHERINCOMEID, OTHERINCOMENAME, OTHEREXPENSEID, OTHEREXPENSENAME, OTHERCOSTID, OTHERCOSTNAME, MOME)
values ('A03', '��ӡ��', null, null, '�����Ʒ', null, '��ҪӪҵ����', null, '��Ҫҵ��ɱ�', null, '������Ʒ', null, 'Ӫҵ����', null, null, null, null, null, null, null);
insert into T_DSPRODUCTCLASS (CLASSID, CLASSNAME, ENGNAEM, ACCINVENTORYID, ACCINVENTORYNAME, ACCSALEID, ACCSALENAME, ACCSALECOSTID, ACCSALECOSTNAME, SENDOUTWAREID, SENDOUTWARENAME, GIFTEXPENSEID, GIFTEXPENSENAME, OTHERINCOMEID, OTHERINCOMENAME, OTHEREXPENSEID, OTHEREXPENSENAME, OTHERCOSTID, OTHERCOSTNAME, MOME)
values ('A05', 'ɨ����', null, null, '�����Ʒ', null, '��ҪӪҵ����', null, '��Ҫҵ��ɱ�', null, '������Ʒ', null, 'Ӫҵ����', null, null, null, null, null, null, null);
insert into T_DSPRODUCTCLASS (CLASSID, CLASSNAME, ENGNAEM, ACCINVENTORYID, ACCINVENTORYNAME, ACCSALEID, ACCSALENAME, ACCSALECOSTID, ACCSALECOSTNAME, SENDOUTWAREID, SENDOUTWARENAME, GIFTEXPENSEID, GIFTEXPENSENAME, OTHERINCOMEID, OTHERINCOMENAME, OTHEREXPENSEID, OTHEREXPENSENAME, OTHERCOSTID, OTHERCOSTNAME, MOME)
values ('A06', '������Ʒ', null, null, '�����Ʒ', null, '��ҪӪҵ����', null, '��Ҫҵ��ɱ�', null, '������Ʒ', null, 'Ӫҵ����', null, null, null, null, null, null, null);
commit;
prompt 5 records loaded
prompt Loading T_FEECLASS...
prompt Table is empty
prompt Loading T_PAYINADVANCE_DETAILED...
insert into T_PAYINADVANCE_DETAILED (FUNDBILLID, LINENUMBER, SOURCELIST, SOURCENUMBER, PREPAIDAMOUNT)
values ('2018112903', 1, null, '2018112903', 1000);
commit;
prompt 1 records loaded
prompt Loading T_PERSONNEL...
insert into T_PERSONNEL (PERSONID, DEPARTID, PERSONNAME, SEXDISTINCTION, ENGNAME, BIRTHDAY, POLITY, MARITALSTATUS, ONJOBDATE, BLOODTYPE, FORMALDATE, FAMILYREG, DEPARTURETIME, NATIONNAME, TECHTITLE, PROFTITLE, ENGPROFTITLE, EMAIL, ADDRESS1, PHONEL, MOBILEPHONE, SCHOOLING, MATURITYDATE, DEGREE, ENTRYDATE, SCHOOL, PASSPORT, PROFESSIONAL, BARGAINBDATE, BODYCHECKDATE, BARGAINYEARLONG, REMARKS)
values ('002', '02', '�޲�', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into T_PERSONNEL (PERSONID, DEPARTID, PERSONNAME, SEXDISTINCTION, ENGNAME, BIRTHDAY, POLITY, MARITALSTATUS, ONJOBDATE, BLOODTYPE, FORMALDATE, FAMILYREG, DEPARTURETIME, NATIONNAME, TECHTITLE, PROFTITLE, ENGPROFTITLE, EMAIL, ADDRESS1, PHONEL, MOBILEPHONE, SCHOOLING, MATURITYDATE, DEGREE, ENTRYDATE, SCHOOL, PASSPORT, PROFESSIONAL, BARGAINBDATE, BODYCHECKDATE, BARGAINYEARLONG, REMARKS)
values ('001', '01', 'Admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 2 records loaded
prompt Loading T_PREPAID_DETAILED...
insert into T_PREPAID_DETAILED (FUNDBILLID, LINENUMBER, SOURCELIST, SOURCENUMBER, SOURCEORDER, SOURCEORDERNUMBER, CURPRERECV, PREPAIDAMOUNT, REMARKS)
values ('2018112901', 1, '����', '2018112802', '����', '2018112903', 1000, 300, 'ȡ��֧��30%�Ķ���');
commit;
prompt 1 records loaded
prompt Loading T_PROCALLO...
prompt Table is empty
prompt Loading T_PROCALLO_COSTDETAIL...
prompt Table is empty
prompt Loading T_PROCALLO_RESULTDETAIL...
prompt Table is empty
prompt Loading T_PURCHASE_DETAIL...
insert into T_PURCHASE_DETAIL (LINEID, BILLNO, PRODID, PRODNAME, PRODSIZE, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, AMOUNTATAX, ISGIFT, ITEMREMARK, TRANTYPE, FORMNO, MLAMOUNT)
values (2, '20181107002', 'C01-301', 'HP DC7900CMT̨ʽ��', null, 'PCS', 2, 3800, 100, 3800, 7600, 17, 1292, 8892, 1, null, null, null, 0);
insert into T_PURCHASE_DETAIL (LINEID, BILLNO, PRODID, PRODNAME, PRODSIZE, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, AMOUNTATAX, ISGIFT, ITEMREMARK, TRANTYPE, FORMNO, MLAMOUNT)
values (3, '20181107002', 'C01-302', 'HP L1710', null, 'PCS', 1, 1050, 100, 1050, 1050, 17, 178.5, 1228.5, 1, null, null, null, 0);
insert into T_PURCHASE_DETAIL (LINEID, BILLNO, PRODID, PRODNAME, PRODSIZE, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, AMOUNTATAX, ISGIFT, ITEMREMARK, TRANTYPE, FORMNO, MLAMOUNT)
values (14, '20181207001', 'C01-301', 'HP DC7900CMT̨ʽ��', null, 'PCS', 3, 3800, 100, 3800, 11400, 17, 1938, 13338, 1, null, null, null, 0);
insert into T_PURCHASE_DETAIL (LINEID, BILLNO, PRODID, PRODNAME, PRODSIZE, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, AMOUNTATAX, ISGIFT, ITEMREMARK, TRANTYPE, FORMNO, MLAMOUNT)
values (15, '20181207001', 'C01-302', 'HP L1710', null, 'PCS', 1, 1050, 100, 1050, 1050, 17, 178.5, 1228.5, 1, null, null, null, 0);
commit;
prompt 4 records loaded
prompt Loading T_PURCHASE_MASTER...
insert into T_PURCHASE_MASTER (BILLNO, BILLDATE, CUSTID, CUSTNAME, ADDRID, CUSTADDRESS, SALECLASSID, SALECLASSNAME, CURRID, CURRNAME, PRICEOFTAX, EXCHRATE, WAREID, WARENAME, SALESID, SALESNAME, MAKER, MAKERNAME, PERMITTER, PERMITTERNAME, DEPARTID, DEPARTNAME, PROJECTID, PROJECTNAME, UDEF1, UDEF2, REMARK, EAMINESTATE)
values ('20181107002', to_date('07-11-2018', 'dd-mm-yyyy'), '003', '��������', null, '��������', '02', '��Ʒ���', '01', '�����', 0, 0, '01', '�Ϻ�A�֣���Ʒ��', '002', '�޲�', null, 'Admin', null, 'Admin', null, '�ɹ���', null, null, null, null, null, 0);
insert into T_PURCHASE_MASTER (BILLNO, BILLDATE, CUSTID, CUSTNAME, ADDRID, CUSTADDRESS, SALECLASSID, SALECLASSNAME, CURRID, CURRNAME, PRICEOFTAX, EXCHRATE, WAREID, WARENAME, SALESID, SALESNAME, MAKER, MAKERNAME, PERMITTER, PERMITTERNAME, DEPARTID, DEPARTNAME, PROJECTID, PROJECTNAME, UDEF1, UDEF2, REMARK, EAMINESTATE)
values ('20181207001', to_date('07-12-2018', 'dd-mm-yyyy'), '002', '����', null, '�Ϻ�', '02', '��Ʒ���', '01', '�����', 0, 0, '03', '����A�֣���Ʒ��', '002', '�޲�', null, 'Admin', null, 'Admin', null, '�ɹ���', null, null, null, null, null, 1);
commit;
prompt 2 records loaded
prompt Loading T_PURCHASE_PURCHASE...
insert into T_PURCHASE_PURCHASE (BILLNO, BILLDATE, BILLSTYLEID, BILLSTATUS, DEPARTID, MAKER, PERMITTER, REMARK, SUMQTY, HEADERID, HEADERNAME, FOOTERID, FOOTERNAME, USERDEF1, USERDEF2, MAKERSIGN, PERMITTERSIGN, SALESID, AUDITSTATUS)
values ('20181129001', to_date('04-12-2018 09:56:15', 'dd-mm-yyyy hh24:mi:ss'), '20181129001', 1, '03', 'zsp', 'zsp', 'beiz', 11, '1', '��ͷ��������', '2', '��β��������', '�Զ���1', '�Զ���2', '�Ƶ���ǩ��', '������ǩ��', '001', null);
insert into T_PURCHASE_PURCHASE (BILLNO, BILLDATE, BILLSTYLEID, BILLSTATUS, DEPARTID, MAKER, PERMITTER, REMARK, SUMQTY, HEADERID, HEADERNAME, FOOTERID, FOOTERNAME, USERDEF1, USERDEF2, MAKERSIGN, PERMITTERSIGN, SALESID, AUDITSTATUS)
values ('20181129002', to_date('04-12-2018 09:56:20', 'dd-mm-yyyy hh24:mi:ss'), '20181129002', 1, '03', 'zsp', 'zsp', 'beiz', 11, '1', '��ͷ��������', '2', '��β��������', '�Զ���1', '�Զ���2', '�Ƶ���ǩ��', '������ǩ��', '002', null);
insert into T_PURCHASE_PURCHASE (BILLNO, BILLDATE, BILLSTYLEID, BILLSTATUS, DEPARTID, MAKER, PERMITTER, REMARK, SUMQTY, HEADERID, HEADERNAME, FOOTERID, FOOTERNAME, USERDEF1, USERDEF2, MAKERSIGN, PERMITTERSIGN, SALESID, AUDITSTATUS)
values ('20181129003', to_date('30-11-2018 17:23:25', 'dd-mm-yyyy hh24:mi:ss'), '20181129003', 2, '03', 'zsp', 'zsp', 'beiz', 11, '1', '��ͷ��������', '2', '��β��������', '�Զ���1', '�Զ���2', '�Ƶ���ǩ��', '������ǩ��', '001', null);
commit;
prompt 3 records loaded
prompt Loading T_PURCHASE_PURCHASE_DETAILS...
insert into T_PURCHASE_PURCHASE_DETAILS (BILLNO, PURCHASEID, PRODID, SUM1, DEMANDDATE, PROCUREMENTDATE, PURCHASEVOLUME, ENTRYNOTES, SOURCELIST, SOURCENUMBER, CURRENCY, MATERIALID, UNITPRICE, AMOUNTOFMONEY)
values ('20181129001', '20181129001', 'C01-301', 200, to_date('30-11-2018 17:23:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-11-2018 17:23:25', 'dd-mm-yyyy hh24:mi:ss'), 200, '555', '20181129001', '���۶���', null, null, null, null);
insert into T_PURCHASE_PURCHASE_DETAILS (BILLNO, PURCHASEID, PRODID, SUM1, DEMANDDATE, PROCUREMENTDATE, PURCHASEVOLUME, ENTRYNOTES, SOURCELIST, SOURCENUMBER, CURRENCY, MATERIALID, UNITPRICE, AMOUNTOFMONEY)
values ('20181129002', '20181129001', 'C01-301', 200, to_date('30-11-2018 17:23:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-11-2018 17:23:25', 'dd-mm-yyyy hh24:mi:ss'), 200, '555', null, null, null, null, null, null);
insert into T_PURCHASE_PURCHASE_DETAILS (BILLNO, PURCHASEID, PRODID, SUM1, DEMANDDATE, PROCUREMENTDATE, PURCHASEVOLUME, ENTRYNOTES, SOURCELIST, SOURCENUMBER, CURRENCY, MATERIALID, UNITPRICE, AMOUNTOFMONEY)
values ('20181129003', '20181129002', 'C01-301', 200, to_date('30-11-2018 17:23:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-11-2018 17:23:25', 'dd-mm-yyyy hh24:mi:ss'), 200, '555', '20181129001', '���۶���', null, null, null, null);
insert into T_PURCHASE_PURCHASE_DETAILS (BILLNO, PURCHASEID, PRODID, SUM1, DEMANDDATE, PROCUREMENTDATE, PURCHASEVOLUME, ENTRYNOTES, SOURCELIST, SOURCENUMBER, CURRENCY, MATERIALID, UNITPRICE, AMOUNTOFMONEY)
values ('20181129004', '20181129002', 'C01-301', 200, to_date('30-11-2018 17:23:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-11-2018 17:23:25', 'dd-mm-yyyy hh24:mi:ss'), 200, '555', null, null, null, null, null, null);
insert into T_PURCHASE_PURCHASE_DETAILS (BILLNO, PURCHASEID, PRODID, SUM1, DEMANDDATE, PROCUREMENTDATE, PURCHASEVOLUME, ENTRYNOTES, SOURCELIST, SOURCENUMBER, CURRENCY, MATERIALID, UNITPRICE, AMOUNTOFMONEY)
values ('20181129005', '20181129003', 'C01-301', 200, to_date('30-11-2018 17:23:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-11-2018 17:23:25', 'dd-mm-yyyy hh24:mi:ss'), 200, '555', '20181129001', '���۶���', null, null, null, null);
insert into T_PURCHASE_PURCHASE_DETAILS (BILLNO, PURCHASEID, PRODID, SUM1, DEMANDDATE, PROCUREMENTDATE, PURCHASEVOLUME, ENTRYNOTES, SOURCELIST, SOURCENUMBER, CURRENCY, MATERIALID, UNITPRICE, AMOUNTOFMONEY)
values ('20181129006', '20181129003', 'C01-301', 200, to_date('30-11-2018 17:23:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-11-2018 17:23:26', 'dd-mm-yyyy hh24:mi:ss'), 200, '555', null, null, null, null, null, null);
insert into T_PURCHASE_PURCHASE_DETAILS (BILLNO, PURCHASEID, PRODID, SUM1, DEMANDDATE, PROCUREMENTDATE, PURCHASEVOLUME, ENTRYNOTES, SOURCELIST, SOURCENUMBER, CURRENCY, MATERIALID, UNITPRICE, AMOUNTOFMONEY)
values ('20181129007', '20181129004', 'C01-301', 200, to_date('30-11-2018 17:23:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-11-2018 17:23:26', 'dd-mm-yyyy hh24:mi:ss'), 200, '555', '20181129001', '���۶���', null, null, null, null);
insert into T_PURCHASE_PURCHASE_DETAILS (BILLNO, PURCHASEID, PRODID, SUM1, DEMANDDATE, PROCUREMENTDATE, PURCHASEVOLUME, ENTRYNOTES, SOURCELIST, SOURCENUMBER, CURRENCY, MATERIALID, UNITPRICE, AMOUNTOFMONEY)
values ('20181129008', '20181129004', 'C01-301', 200, to_date('30-11-2018 17:23:26', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-11-2018 17:23:26', 'dd-mm-yyyy hh24:mi:ss'), 200, '555', null, null, null, null, null, null);
commit;
prompt 8 records loaded
prompt Loading T_RECEIVABLECHARGE...
prompt Table is empty
prompt Loading T_RECEIVABLECHARGEDETAILS...
prompt Table is empty
prompt Loading T_RUSHPAYABLE...
insert into T_RUSHPAYABLE (FUNDBILLID, FUNDBILLDATE, CUSTOMERID, CUSTOMERNAME, CASHSTYLENAME, CASH, VISASTYLENAME, VISA, OTHERPAYSTYLENAME, OTHERPAY, BCURRENCYNAME, EXCHANGERATE, DISCOUNTPER, ACCMONTHTOMONTH, VOUCHERNO, DEPARTNAMEFROM, MAKERSIGN, PROJECTFROM, FERMITTERSIGN, CUSTOMCOLUMNONE, CUSTOMCOLUMNTWO, REMARKS, TYPE)
values ('2018112901', to_date('29-11-2018', 'dd-mm-yyyy'), '01', '���޿Ƽε��Գ�', '�ֽ�', 1000, null, null, null, null, 'RMB', 1, 0, to_date('29-11-2018', 'dd-mm-yyyy'), null, '�ɹ���', 'ţ�ɹ�', null, '����', null, null, null, null);
commit;
prompt 1 records loaded
prompt Loading T_RUSHPAYABLE_DETAILED...
insert into T_RUSHPAYABLE_DETAILED (FUNDBILLID, LINENUMBER, SOURCELIST, SOURCENUMBER, BCURRENCYNAME, ORIGINALAMOUNT, CURRENTAMOUNT, MONEYCHARGED, OFFSETAMOUNT, ALLOWANCEAMOUNT)
values ('2018112901', 1, '����', '2018112902', 'RMB', 1000, 1000, 200, 0, 0);
commit;
prompt 1 records loaded
prompt Loading T_SALEPRICE...
insert into T_SALEPRICE (BILLNO, BILLDATE, CUSTOMERID, FORMALCUST, CUSTADDRESS, VALIDDATE, PRICEOFTAX, CURCURRENCYNAME, EXCHRATE, SALESID, SALESNAME, DEPARTID, DEPARTNAME, MAKER, PERMITTER, SPHEADER, SPFOOTER, USERDEF, USERDEF2, REMARK)
values ('20181204001', to_date('04-12-2018', 'dd-mm-yyyy'), '101', 1, '��������', to_date('25-12-2018', 'dd-mm-yyyy'), 0, 'RMB', 1, '1', '����', '1', '���۲�', '����', '����', '��ͷ1', '��ͷ2', '�Զ���1', '�Զ�2', '��ע1');
insert into T_SALEPRICE (BILLNO, BILLDATE, CUSTOMERID, FORMALCUST, CUSTADDRESS, VALIDDATE, PRICEOFTAX, CURCURRENCYNAME, EXCHRATE, SALESID, SALESNAME, DEPARTID, DEPARTNAME, MAKER, PERMITTER, SPHEADER, SPFOOTER, USERDEF, USERDEF2, REMARK)
values ('20181204002', to_date('04-12-2018', 'dd-mm-yyyy'), '102', 1, '1', to_date('25-12-2018', 'dd-mm-yyyy'), 1, 'RMB', 2, '1', '����', '1', '������', '����', '����', '��ͷ����', '��β����', '�Զ�1', '�Զ�2', '��ע2');
insert into T_SALEPRICE (BILLNO, BILLDATE, CUSTOMERID, FORMALCUST, CUSTADDRESS, VALIDDATE, PRICEOFTAX, CURCURRENCYNAME, EXCHRATE, SALESID, SALESNAME, DEPARTID, DEPARTNAME, MAKER, PERMITTER, SPHEADER, SPFOOTER, USERDEF, USERDEF2, REMARK)
values ('20181204003', to_date('04-12-2018', 'dd-mm-yyyy'), '103', 1, '1', to_date('25-12-2018', 'dd-mm-yyyy'), 0, 'RMB', 1, '3', '����', '1', '�ɹ���', '����', '����', '��ͷ����', '��β����', '�Զ�1', '�Զ�2', '��ע3');
commit;
prompt 3 records loaded
prompt Loading T_SALEPRICE_DETAILS...
insert into T_SALEPRICE_DETAILS (BILLNO, DETAILID, PRODID, PRODNAME, PRODSIZE, SUNITID, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, VFTOTAL, ISGIFT, ITEMREMARK)
values ('20181204001', '001', 'C01-301', 'HP DC7900CMT̨ʽ��', '��', '1', '��', 10, 100, 100, 100, 1000, 17, 17, 117, 0, '��ע1');
insert into T_SALEPRICE_DETAILS (BILLNO, DETAILID, PRODID, PRODNAME, PRODSIZE, SUNITID, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, VFTOTAL, ISGIFT, ITEMREMARK)
values ('20181204001', '002', 'C01-301', 'HP DC7900CMT̨ʽ��', '��', '1', '��', 1, 10, 10, 10, 10, 1, 1, 1, 0, '��ע2');
insert into T_SALEPRICE_DETAILS (BILLNO, DETAILID, PRODID, PRODNAME, PRODSIZE, SUNITID, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, VFTOTAL, ISGIFT, ITEMREMARK)
values ('20181204001', '003', 'C01-302', 'HP L1710', '��', '1', '��', 10, 100, 100, 100, 1000, 17, 17, 117, 0, '��ע3');
insert into T_SALEPRICE_DETAILS (BILLNO, DETAILID, PRODID, PRODNAME, PRODSIZE, SUNITID, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, VFTOTAL, ISGIFT, ITEMREMARK)
values ('20181204002', '004', 'C01-302', 'HP L1710', '��', '1', '��', 10, 100, 100, 100, 1000, 17, 17, 117, 0, '��ע4');
insert into T_SALEPRICE_DETAILS (BILLNO, DETAILID, PRODID, PRODNAME, PRODSIZE, SUNITID, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, VFTOTAL, ISGIFT, ITEMREMARK)
values ('20181204003', '005', 'C01-302', 'HP L1710', '��', '1', 'ƿ', 10, 100, 100, 100, 1000, 17, 17, 117, 0, '��ע5');
commit;
prompt 5 records loaded
prompt Loading T_SALESORDER...
insert into T_SALESORDER (BILLNO, BILLDATE, CUSTOMERID, ADDRESSID, BILLSTYLEID, BILLSTYLENAME, CUSTBILLNO, TAXINCLUDED, CURRID, REMARK, EXCHRATE, SALESNAME, DEPARTID, PROJECTID, MAKER, PERMITTER, MODPRICESTATE)
values ('20181130001', to_date('30-11-2018 08:45:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
prompt 1 records loaded
prompt Loading T_SALES_RETURNS...
insert into T_SALES_RETURNS (BILLNO, BILLDATE, ADDRID, PRICEOFTAX, CURRID, WARENAME, EXCHRATE, ISDEDUCT, DUETO, SALESNAME, MAKER, DEPARTNAME, PERMITTER, AUDITEDSTATE)
values ('1001', to_date('30-11-2018 17:02:36', 'dd-mm-yyyy hh24:mi:ss'), '�����к���������·', 0, '�����', '�����ֿ�', 1, 0, '�ɿڿ���', '��ҵ��', '���Ƶ�', '����', '�ܸ���', 0);
insert into T_SALES_RETURNS (BILLNO, BILLDATE, ADDRID, PRICEOFTAX, CURRID, WARENAME, EXCHRATE, ISDEDUCT, DUETO, SALESNAME, MAKER, DEPARTNAME, PERMITTER, AUDITEDSTATE)
values ('1023', to_date('30-11-2018 17:07:42', 'dd-mm-yyyy hh24:mi:ss'), '������Ԫ����ɽ·', 1, '�����', '��Ԫ�ֿ�', 1, 1, '�ױ�', '��ҵ��', '���Ƶ�', 'ҵ��', 'ʯ����', 0);
insert into T_SALES_RETURNS (BILLNO, BILLDATE, ADDRID, PRICEOFTAX, CURRID, WARENAME, EXCHRATE, ISDEDUCT, DUETO, SALESNAME, MAKER, DEPARTNAME, PERMITTER, AUDITEDSTATE)
values ('1003', to_date('06-12-2018 03:46:10', 'dd-mm-yyyy hh24:mi:ss'), '��ɳ������', 1, '�����', '��ɳ�ֿ�', 1, 1, '�ֲ�', '��ҵ��', '���Ƶ�', '���۲�', '������', 0);
commit;
prompt 3 records loaded
prompt Loading T_SALES_RETURNS_DETAILS...
insert into T_SALES_RETURNS_DETAILS (BILLNO, DETAILEDLISTNUMBER, PRODID, PRODNAME, PRODSIZE, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, AMOUNTATAX, HAVEBATCH, ISGIFT, ITEMREMARK, TRANTYPE, FROMNO)
values ('1001', 1, '1001', '�ױ�', '500��', 'ǧ��', 50, 0, 0, 4, 200, 0, 0, 0, null, 0, null, null, null);
insert into T_SALES_RETURNS_DETAILS (BILLNO, DETAILEDLISTNUMBER, PRODID, PRODNAME, PRODSIZE, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, AMOUNTATAX, HAVEBATCH, ISGIFT, ITEMREMARK, TRANTYPE, FROMNO)
values ('1023', 2, '1023', '��������', '27��', '��', 100, 0, 0, 3000, 300000, 0, 0, 0, null, 0, null, null, null);
insert into T_SALES_RETURNS_DETAILS (BILLNO, DETAILEDLISTNUMBER, PRODID, PRODNAME, PRODSIZE, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, TAXAMT, AMOUNTATAX, HAVEBATCH, ISGIFT, ITEMREMARK, TRANTYPE, FROMNO)
values ('1003', 3, '1003', '���ϰ�ҩ', '��', '��', 200, 0, 0, 20, 4000, 0, 0, 0, null, 0, null, null, null);
commit;
prompt 3 records loaded
prompt Loading T_STOCK_INVENTORY...
prompt Table is empty
prompt Loading T_STOCK_INVENTORY_DETAILS...
prompt Table is empty
prompt Loading T_TAKEINADVANCE...
prompt Table is empty
prompt Loading T_UNIT...
insert into T_UNIT (UNITID, UNITNAME, REMARK)
values ('01', 'PCS', '��');
insert into T_UNIT (UNITID, UNITNAME, REMARK)
values ('02', 't', '��');
insert into T_UNIT (UNITID, UNITNAME, REMARK)
values ('03', 'm', '��');
insert into T_UNIT (UNITID, UNITNAME, REMARK)
values ('04', 'cm', '����');
commit;
prompt 4 records loaded
prompt Loading T_WAREHOUSE...
insert into T_WAREHOUSE (WAREID, WARENAME, CONTENTPER, CONTENTPHONE, CONTENTADRE, REMARK)
values ('01', '�Ϻ�A�֣���Ʒ��', '��ĳĳ', '15869893674', '���޴���', '�ܺõĲֿ�');
insert into T_WAREHOUSE (WAREID, WARENAME, CONTENTPER, CONTENTPHONE, CONTENTADRE, REMARK)
values ('02', '�Ϻ�B�֣�ԭ�ϣ�', '��ĳĳ', '15869893674', '���޴��ź���', '�ܺõĲֿ�');
insert into T_WAREHOUSE (WAREID, WARENAME, CONTENTPER, CONTENTPHONE, CONTENTADRE, REMARK)
values ('03', '����A�֣���Ʒ��', '��ĳĳ', '15869893674', '���޴���', '�ܺõĲֿ�');
insert into T_WAREHOUSE (WAREID, WARENAME, CONTENTPER, CONTENTPHONE, CONTENTADRE, REMARK)
values ('04', '����B�֣�ԭ�ϣ�', '��ĳĳ', '15869893674', '���޴��ź���', '�ܺõĲֿ�');
commit;
prompt 4 records loaded
prompt Enabling triggers for T_ACCOUNTSPAYABLE_DETAILED...
alter table T_ACCOUNTSPAYABLE_DETAILED enable all triggers;
prompt Enabling triggers for T_ADVANCECHARGE...
alter table T_ADVANCECHARGE enable all triggers;
prompt Enabling triggers for T_ADVANCERECEIPT...
alter table T_ADVANCERECEIPT enable all triggers;
prompt Enabling triggers for T_ADVANCERECEIPTDETAILS...
alter table T_ADVANCERECEIPTDETAILS enable all triggers;
prompt Enabling triggers for T_BILLTYPE...
alter table T_BILLTYPE enable all triggers;
prompt Enabling triggers for T_BUYORDER...
alter table T_BUYORDER enable all triggers;
prompt Enabling triggers for T_BUYORDERXI_DETAIL...
alter table T_BUYORDERXI_DETAIL enable all triggers;
prompt Enabling triggers for T_BUYRETURN...
alter table T_BUYRETURN enable all triggers;
prompt Enabling triggers for T_BUYRETURN_DETAIL...
alter table T_BUYRETURN_DETAIL enable all triggers;
prompt Enabling triggers for T_BUYXUN...
alter table T_BUYXUN enable all triggers;
prompt Enabling triggers for T_BUYXUN_DETAIL...
alter table T_BUYXUN_DETAIL enable all triggers;
prompt Enabling triggers for T_CHANGEPRICE...
alter table T_CHANGEPRICE enable all triggers;
prompt Enabling triggers for T_CHANGEPRICE_DETAIL...
alter table T_CHANGEPRICE_DETAIL enable all triggers;
prompt Enabling triggers for T_CUSTOMERACCOUNTDETAILS...
alter table T_CUSTOMERACCOUNTDETAILS enable all triggers;
prompt Enabling triggers for T_CUSTOMER_ACCOUNT_DETAILS...
alter table T_CUSTOMER_ACCOUNT_DETAILS enable all triggers;
prompt Enabling triggers for T_CUSTOMER_INFORMATION...
alter table T_CUSTOMER_INFORMATION enable all triggers;
prompt Enabling triggers for T_CUSTOMER_TYPE...
alter table T_CUSTOMER_TYPE enable all triggers;
prompt Enabling triggers for T_DEPARTMENT...
alter table T_DEPARTMENT enable all triggers;
prompt Enabling triggers for T_DETAIL_SALESORDER...
alter table T_DETAIL_SALESORDER enable all triggers;
prompt Enabling triggers for T_DSDATASET1...
alter table T_DSDATASET1 enable all triggers;
prompt Enabling triggers for T_DSDSSALEMAIN...
alter table T_DSDSSALEMAIN enable all triggers;
prompt Enabling triggers for T_DSDSSALESUB...
alter table T_DSDSSALESUB enable all triggers;
prompt Enabling triggers for T_DSDSWAREAMOUNT...
alter table T_DSDSWAREAMOUNT enable all triggers;
prompt Enabling triggers for T_DSDSWARETRANSACTION...
alter table T_DSDSWARETRANSACTION enable all triggers;
prompt Enabling triggers for T_DSPRODUCT...
alter table T_DSPRODUCT enable all triggers;
prompt Enabling triggers for T_DSPRODUCTCLASS...
alter table T_DSPRODUCTCLASS enable all triggers;
prompt Enabling triggers for T_FEECLASS...
alter table T_FEECLASS enable all triggers;
prompt Enabling triggers for T_PAYINADVANCE_DETAILED...
alter table T_PAYINADVANCE_DETAILED enable all triggers;
prompt Enabling triggers for T_PERSONNEL...
alter table T_PERSONNEL enable all triggers;
prompt Enabling triggers for T_PREPAID_DETAILED...
alter table T_PREPAID_DETAILED enable all triggers;
prompt Enabling triggers for T_PROCALLO...
alter table T_PROCALLO enable all triggers;
prompt Enabling triggers for T_PROCALLO_COSTDETAIL...
alter table T_PROCALLO_COSTDETAIL enable all triggers;
prompt Enabling triggers for T_PROCALLO_RESULTDETAIL...
alter table T_PROCALLO_RESULTDETAIL enable all triggers;
prompt Enabling triggers for T_PURCHASE_DETAIL...
alter table T_PURCHASE_DETAIL enable all triggers;
prompt Enabling triggers for T_PURCHASE_MASTER...
alter table T_PURCHASE_MASTER enable all triggers;
prompt Enabling triggers for T_PURCHASE_PURCHASE...
alter table T_PURCHASE_PURCHASE enable all triggers;
prompt Enabling triggers for T_PURCHASE_PURCHASE_DETAILS...
alter table T_PURCHASE_PURCHASE_DETAILS enable all triggers;
prompt Enabling triggers for T_RECEIVABLECHARGE...
alter table T_RECEIVABLECHARGE enable all triggers;
prompt Enabling triggers for T_RECEIVABLECHARGEDETAILS...
alter table T_RECEIVABLECHARGEDETAILS enable all triggers;
prompt Enabling triggers for T_RUSHPAYABLE...
alter table T_RUSHPAYABLE enable all triggers;
prompt Enabling triggers for T_RUSHPAYABLE_DETAILED...
alter table T_RUSHPAYABLE_DETAILED enable all triggers;
prompt Enabling triggers for T_SALEPRICE...
alter table T_SALEPRICE enable all triggers;
prompt Enabling triggers for T_SALEPRICE_DETAILS...
alter table T_SALEPRICE_DETAILS enable all triggers;
prompt Enabling triggers for T_SALESORDER...
alter table T_SALESORDER enable all triggers;
prompt Enabling triggers for T_SALES_RETURNS...
alter table T_SALES_RETURNS enable all triggers;
prompt Enabling triggers for T_SALES_RETURNS_DETAILS...
alter table T_SALES_RETURNS_DETAILS enable all triggers;
prompt Enabling triggers for T_STOCK_INVENTORY...
alter table T_STOCK_INVENTORY enable all triggers;
prompt Enabling triggers for T_STOCK_INVENTORY_DETAILS...
alter table T_STOCK_INVENTORY_DETAILS enable all triggers;
prompt Enabling triggers for T_TAKEINADVANCE...
alter table T_TAKEINADVANCE enable all triggers;
prompt Enabling triggers for T_UNIT...
alter table T_UNIT enable all triggers;
prompt Enabling triggers for T_WAREHOUSE...
alter table T_WAREHOUSE enable all triggers;
set feedback on
set define on
prompt Done.
