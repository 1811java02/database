--prompt
--prompt Creating table T_ACCOUNTSPAYABLE_DETAILED
--prompt =========================================
--prompt
create table SCOTT.T_ACCOUNTSPAYABLE_DETAILED
(
  ID             NUMBER(9) not null,
  ORIGINALAMOUNT FLOAT,
  CURRENTAMOUNT  FLOAT,
  SOURCELIST     varchar2(50),
  SOURCENUMBER   varchar2(50),
  CUSTOMERID     varchar2(50),
  TIME           DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_ACCOUNTSPAYABLE_DETAILED
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_ADVANCECHARGE
--prompt ==============================
--prompt
create table SCOTT.T_ADVANCECHARGE
(
  FUNDBILLID        varchar2(50) not null,
  FUNDBILLDATE      DATE,
  CUSTOMERID        varchar2(50),
  CUSTOMERNAME      varchar2(50),
  CASHSTYLENAME     varchar2(50),
  CASH              FLOAT,
  VISASTYLENAME     varchar2(50),
  VISA              FLOAT,
  OTHERPAYSTYLENAME varchar2(50),
  OTHERPAY          FLOAT,
  BCURRENCYNAME     varchar2(50),
  EXCHANGERATE      FLOAT,
  DISCOUNTPER       FLOAT,
  ACCMONTHTOMONTH   DATE,
  VOUCHERNO         varchar2(50),
  DEPARTNAMEFROM    varchar2(50),
  MAKERSIGN         varchar2(50),
  PROJECTFROM       varchar2(50),
  FERMITTERSIGN     varchar2(50),
  CUSTOMCOLUMNONE   varchar2(50),
  CUSTOMCOLUMNTWO   varchar2(50),
  REMARKS           VARCHAR2(255),
  TYPE              NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_ADVANCECHARGE
  add primary key (FUNDBILLID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_ADVANCERECEIPT
--prompt ===============================
--prompt
create table SCOTT.T_ADVANCERECEIPT
(
  FUNDBILLID        varchar2(50) not null,
  FUNDBILLDATE      DATE,
  CUSTOMERID        varchar2(50),
  CUSTOMERNAME      varchar2(50),
  CASHSTYLENAME     varchar2(50),
  CASH              FLOAT,
  VISASTYLENAME     varchar2(50),
  VISA              FLOAT,
  OTHERPAYSTYLENAME varchar2(50),
  OTHERPAY          FLOAT,
  BCURRENCYNAME     varchar2(50),
  EXCHANGERATE      FLOAT,
  DISCOUNTPER       FLOAT,
  ACCMONTHTOMONTH   DATE,
  VOUCHERNO         varchar2(50),
  DEPARTNAMEFROM    varchar2(50),
  MAKERSIGN         varchar2(50),
  PROJECTFROM       varchar2(50),
  FERMITTERSIGN     varchar2(50),
  AUDITSTATUS       NUMBER(9),
  CUSTOMCOLUMNONE   varchar2(50),
  CUSTOMCOLUMNTWO   varchar2(50),
  REMARKS           VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_ADVANCERECEIPT
  add primary key (FUNDBILLID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_ADVANCERECEIPTDETAILS
--prompt ======================================
--prompt
create table SCOTT.T_ADVANCERECEIPTDETAILS
(
  FUNDBILLID   varchar2(50) not null,
  LINENUMBER   NUMBER(9),
  CURPRERECV   FLOAT,
  SOURCELIST   varchar2(50),
  SOURCENUMBER varchar2(50),
  REMARKS      VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_ADVANCERECEIPTDETAILS
  add primary key (FUNDBILLID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_BILLTYPE
--prompt =========================
--prompt
create table SCOTT.T_BILLTYPE
(
  CLASSID   varchar2(50) not null,
  CLASSNAME varchar2(50),
  BILLTYPE  varchar2(50),
  ENGNAME   varchar2(50),
  MEMO      VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SCOTT.T_BILLTYPE
  is '单据类型表';
comment on column SCOTT.T_BILLTYPE.CLASSID
  is '类型编号';
comment on column SCOTT.T_BILLTYPE.CLASSNAME
  is '类型名称';
comment on column SCOTT.T_BILLTYPE.BILLTYPE
  is '单据类别名称';
comment on column SCOTT.T_BILLTYPE.ENGNAME
  is '类型英文名称';
comment on column SCOTT.T_BILLTYPE.MEMO
  is '备注';
alter table SCOTT.T_BILLTYPE
  add primary key (CLASSID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_BUYORDER
--prompt =========================
--prompt
create table SCOTT.T_BUYORDER
(
  BILLNO     varchar2(50) not null,
  BILLDATE   DATE,
  BILLSTATUS NUMBER(9),
  CUSTOMERID varchar2(50),
  ADDRESSID  varchar2(50),
  PRICEOFTAX NUMBER(9),
  SALESNAME  varchar2(50),
  DEPARTID   varchar2(50),
  MAKER      varchar2(50),
  PERMITTER  varchar2(50),
  ASTATUS    NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_BUYORDER
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_BUYORDERXI_DETAIL
--prompt ==================================
--prompt
create table SCOTT.T_BUYORDERXI_DETAIL
(
  SERNO         NUMBER(9) not null,
  PRODID        varchar2(50),
  PRODCLASSID   varchar2(50),
  PRODCLASSNAME varchar2(50),
  UNITNAME      varchar2(50),
  SQUANTITY     NUMBER(9),
  OLDPRICE      FLOAT,
  DISCOUNT      FLOAT,
  SPRICE        FLOAT,
  AMOUNT        FLOAT,
  TAXRATE       FLOAT,
  TAXAMT        FLOAT,
  VFTOTAL       FLOAT,
  PREINDATE     DATE,
  QTYREMAIN     NUMBER(9),
  TRANTYPE      varchar2(50),
  FROMNO        varchar2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_BUYORDERXI_DETAIL
  add primary key (SERNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_BUYRETURN
--prompt ==========================
--prompt
create table SCOTT.T_BUYRETURN
(
  BILLNO          varchar2(50) not null,
  BILLDATE        DATE,
  CUSTID          varchar2(50),
  ADDRID          varchar2(50),
  CUSTADDRESS     varchar2(50),
  PRICEOFTAX      NUMBER(9),
  CURRID          varchar2(50),
  WAREID          varchar2(50),
  EXCHRATE        FLOAT,
  ISDEDUCT        NUMBER(9),
  CUSTOMBARFIRST  varchar2(50),
  CUSTOMBARSECOND varchar2(50),
  REMARK          VARCHAR2(255),
  SALESID         varchar2(50),
  DEPARTID        varchar2(50),
  MAKER           varchar2(50),
  PERMITTER       varchar2(50),
  REVIEWSTATUS    NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.T_BUYRETURN.BILLNO
  is '主键，单据号码';
comment on column SCOTT.T_BUYRETURN.BILLDATE
  is '单据日期';
comment on column SCOTT.T_BUYRETURN.CUSTID
  is '外键，供应商编号';
comment on column SCOTT.T_BUYRETURN.ADDRID
  is '外键，供应商地址';
comment on column SCOTT.T_BUYRETURN.CUSTADDRESS
  is '供应商地址名称';
comment on column SCOTT.T_BUYRETURN.PRICEOFTAX
  is '单价是否含税，0：未税，1：含税';
comment on column SCOTT.T_BUYRETURN.CURRID
  is '币别';
comment on column SCOTT.T_BUYRETURN.WAREID
  is '外键，仓库编号';
comment on column SCOTT.T_BUYRETURN.EXCHRATE
  is '汇率';
comment on column SCOTT.T_BUYRETURN.ISDEDUCT
  is '重新入库，0：否，1：是';
comment on column SCOTT.T_BUYRETURN.CUSTOMBARFIRST
  is '自定义栏一';
comment on column SCOTT.T_BUYRETURN.CUSTOMBARSECOND
  is '自定义栏二';
comment on column SCOTT.T_BUYRETURN.REMARK
  is '备注';
comment on column SCOTT.T_BUYRETURN.SALESID
  is '外键，采购人员';
comment on column SCOTT.T_BUYRETURN.DEPARTID
  is '外键，采购人员所属部门';
comment on column SCOTT.T_BUYRETURN.MAKER
  is '外键，制单人员';
comment on column SCOTT.T_BUYRETURN.PERMITTER
  is '外键，复核人员';
comment on column SCOTT.T_BUYRETURN.REVIEWSTATUS
  is '复核状态，0：未复核，1：已复核';
alter table SCOTT.T_BUYRETURN
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_BUYRETURN_DETAIL
--prompt =================================
--prompt
create table SCOTT.T_BUYRETURN_DETAIL
(
  BILLNO     varchar2(50) not null,
  PRODID     varchar2(50) not null,
  SQUANTITY  NUMBER(9) not null,
  OLDPRICE   FLOAT,
  DISCOUNT   FLOAT,
  SPRICE     FLOAT,
  AMOUNT     FLOAT,
  TAXRATE    FLOAT,
  TAXAMT     FLOAT,
  ISGIFT     NUMBER(9),
  ITEMREMARK VARCHAR2(255),
  TRANTYPE   varchar2(50),
  FORMNO     varchar2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.T_BUYRETURN_DETAIL.BILLNO
  is '外键，采购退货单号';
comment on column SCOTT.T_BUYRETURN_DETAIL.PRODID
  is '外键，物料编号';
comment on column SCOTT.T_BUYRETURN_DETAIL.SQUANTITY
  is '数量';
comment on column SCOTT.T_BUYRETURN_DETAIL.OLDPRICE
  is '折扣前单价';
comment on column SCOTT.T_BUYRETURN_DETAIL.DISCOUNT
  is '折数（%）';
comment on column SCOTT.T_BUYRETURN_DETAIL.SPRICE
  is '单价';
comment on column SCOTT.T_BUYRETURN_DETAIL.AMOUNT
  is '金额';
comment on column SCOTT.T_BUYRETURN_DETAIL.TAXRATE
  is '税率（%）';
comment on column SCOTT.T_BUYRETURN_DETAIL.TAXAMT
  is '税额';
comment on column SCOTT.T_BUYRETURN_DETAIL.ISGIFT
  is '赠品，0：不是，1：是';
comment on column SCOTT.T_BUYRETURN_DETAIL.ITEMREMARK
  is '分录备注';
comment on column SCOTT.T_BUYRETURN_DETAIL.TRANTYPE
  is '来源单别';
comment on column SCOTT.T_BUYRETURN_DETAIL.FORMNO
  is '来源单号';

--prompt
--prompt Creating table T_BUYXUN
--prompt =======================
--prompt
create table SCOTT.T_BUYXUN
(
  BILLNO     varchar2(50) not null,
  BILDATE    DATE,
  CUSTOMERID varchar2(50),
  VALIDDATE  DATE,
  PRICEOFTAX NUMBER(9),
  CURRID     varchar2(50),
  MAKER      varchar2(50),
  PERMITTER  varchar2(50),
  SALESID    varchar2(50),
  ASTATUS    NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_BUYXUN
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_BUYXUN_DETAIL
--prompt ==============================
--prompt
create table SCOTT.T_BUYXUN_DETAIL
(
  BILLNO         varchar2(50) not null,
  BILLDATE       DATE,
  SERNO          NUMBER(9),
  PRODID         varchar2(50),
  PRODCLASSID    varchar2(50),
  UNITNAME       varchar2(50),
  PRODNAME       varchar2(50),
  SQUANTITY      NUMBER(9),
  OLDPRICE       FLOAT,
  DISCOUNT       FLOAT,
  SPRICE         FLOAT,
  AMOUNT         FLOAT,
  TAXRATE        FLOAT,
  TAXAMT         FLOAT,
  VFTOAL         FLOAT,
  SOURCETRANFLAG varchar2(50),
  SOURCETRANBI   varchar2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_BUYXUN_DETAIL
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_CHANGEPRICE
--prompt ============================
--prompt
create table SCOTT.T_CHANGEPRICE
(
  BILLNO          varchar2(50),
  BILLDATE        DATE,
  REGULATING      NUMBER(9),
  CUSTOMBARFIRST  varchar2(50),
  CUSTOMBARSECOND varchar2(50),
  REMARK          VARCHAR2(255),
  MAKER           NUMBER(9),
  PERMITTER       NUMBER(9),
  REVIEWSTATUS    NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_CHANGEPRICE_DETAIL
--prompt ===================================
--prompt
create table SCOTT.T_CHANGEPRICE_DETAIL
(
  BILLNO       varchar2(50),
  PRODID       varchar2(50),
  WAREHOUSEID  NUMBER(9),
  PRICE        FLOAT,
  ADJUSTAMOUNT FLOAT,
  ITEMREMARK   varchar2(50),
  REGULATING   NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_CUSTOMERACCOUNTDETAILS
--prompt =======================================
--prompt
create table SCOTT.T_CUSTOMERACCOUNTDETAILS
(
  ID             NUMBER(9) not null,
  CUSTOMER       varchar2(50),
  SOURCELIST     varchar2(50),
  SOURCENUMBER   varchar2(50),
  FUNDBILLDATE   DATE,
  ORIGINALAMOUNT FLOAT,
  CURRENTAMOUNT  FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_CUSTOMERACCOUNTDETAILS
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_CUSTOMER_ACCOUNT_DETAILS
--prompt =========================================
--prompt
create table SCOTT.T_CUSTOMER_ACCOUNT_DETAILS
(
  CUSTOMERDETD   NUMBER(9) not null,
  SOURCELISTTYPE varchar2(50),
  SOURCELISTID   varchar2(50),
  CUSTOMERID     varchar2(50),
  TIMES          DATE default sysdate,
  PRICE          FLOAT,
  CURRENTAMOUNT  FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_CUSTOMER_ACCOUNT_DETAILS
  add primary key (CUSTOMERDETD)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_CUSTOMER_INFORMATION
--prompt =====================================
--prompt
create table SCOTT.T_CUSTOMER_INFORMATION
(
  CUSTOMERID           varchar2(50) not null,
  ACCOUNTASIGNMENT     varchar2(50),
  CUSTOMERFLLNAE       varchar2(50),
  CLASSID              NUMBER(9),
  CUSTOMERABREVIATION  varchar2(50),
  RGION                varchar2(50),
  ENGFLLNME            varchar2(50),
  CURRENCY             varchar2(50) default 'RMB',
  ENGABREVIATION       varchar2(50),
  CRRENCY              varchar2(50),
  BUSPRSONNEL          varchar2(50),
  CONTACTS             varchar2(50),
  TAXNMBER             varchar2(50),
  CONTACTPHONE1        varchar2(50),
  CAPITALAOUNT         FLOAT default 0,
  CONTACTPHONE2        varchar2(50),
  IDUSTRYTYPE          varchar2(50),
  CONTACTPHONE3        varchar2(50),
  EMAIL                varchar2(50),
  PHONE                varchar2(50),
  WEBSITE              varchar2(50),
  BANKACOUNT           varchar2(50),
  FAXNUMBER            varchar2(50),
  BANKDEPOSIT          varchar2(50),
  FOLDINGNUMBER        FLOAT default 0,
  PRICELEVEL           varchar2(50),
  TAXINCLUDED          NUMBER(9) default 0,
  DATECREATION         DATE default sysdate,
  STOPTRADINGDAY       DATE,
  AMOUNTACCOUNT        FLOAT default 0,
  SURPLUSAMOUNT        FLOAT default 0,
  CONDITIONSCOLLECTION varchar2(50),
  DAYSCOLLECTION       NUMBER(9) default 0,
  MONTHLYCLOSINGDATE   DATE,
  CREDITRATING         varchar2(50) default 'A',
  ACCOUNTSRECEIVABLE   varchar2(50),
  INITIALCOLLECTION    FLOAT default 0,
  INITIALRECEIVABLES   FLOAT default 0,
  FINALSALE            FLOAT default 0,
  FINALACCRECEIVABLE   FLOAT default 0,
  PREPAIDSUBJECT       varchar2(50),
  SEIFDEFININGCOLUMN1  varchar2(50),
  SEIFDEFININGCOLUMN2  varchar2(50),
  REMARKS              VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_CUSTOMER_INFORMATION
  add primary key (CUSTOMERID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_CUSTOMER_TYPE
--prompt ==============================
--prompt
create table SCOTT.T_CUSTOMER_TYPE
(
  CLASSID   NUMBER(9) not null,
  CLASSNAME varchar2(50),
  ENGNAME   varchar2(50),
  MEMO      VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_CUSTOMER_TYPE
  add primary key (CLASSID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_DEPARTMENT
--prompt ===========================
--prompt
create table SCOTT.T_DEPARTMENT
(
  DEPARTID   varchar2(50) not null,
  DEPARTNAME varchar2(50),
  ENGNAME    varchar2(50),
  MEMO       VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SCOTT.T_DEPARTMENT
  is '部门表';
comment on column SCOTT.T_DEPARTMENT.DEPARTID
  is '部门编号';
comment on column SCOTT.T_DEPARTMENT.DEPARTNAME
  is '部门名称';
comment on column SCOTT.T_DEPARTMENT.ENGNAME
  is '部门英文名称';
comment on column SCOTT.T_DEPARTMENT.MEMO
  is '备注';
alter table SCOTT.T_DEPARTMENT
  add primary key (DEPARTID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_DETAIL_SALESORDER
--prompt ==================================
--prompt
create table SCOTT.T_DETAIL_SALESORDER
(
  MODPRICENO    varchar2(50) not null,
  SERNO         NUMBER,
  PRODID        varchar2(50),
  PRDCLASSNAME  varchar2(50),
  PRODSIZE      varchar2(50),
  UMITNAME      varchar2(50),
  SQUANTITY     FLOAT,
  OLDPRICE      FLOAT default 0.00,
  DISCOUNT      FLOAT default 0.00,
  SPRICE        FLOAT default 0.00,
  AMOUNT        FLOAT default 0.00,
  MLAMOUNT      FLOAT default 0.00,
  TAXRATE       FLOAT default 17.00,
  TAXAMT        FLOAT default 0.00,
  MLTAXAMT      FLOAT default 0.00,
  VFTOTAL       FLOAT default 0.00,
  MLVFTOTAL     FLOAT default 0.00,
  PREINDATE     DATE,
  HASCOMBINE    varchar2(50),
  QTYREMAIN     FLOAT,
  ISGIFT        varchar2(50),
  ITEMREMARK    VARCHAR2(255),
  TRANTYPE      varchar2(50),
  FROMNO        varchar2(50),
  HEADERID      VARCHAR2(255),
  HEADERNAME    VARCHAR2(255),
  FOOTERID      VARCHAR2(255),
  FOOTERNAME    VARCHAR2(255),
  CUSTADDFIELD1 VARCHAR2(255),
  CUSTADDFIELD2 VARCHAR2(255),
  MODPRICESTATE NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_DETAIL_SALESORDER
  add primary key (MODPRICENO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_DSDATASET1
--prompt ===========================
--prompt
create table SCOTT.T_DSDATASET1
(
  ID                    varchar2(50) not null,
  FULLNAME              varchar2(50),
  SHORTNAME             varchar2(50),
  ENGFULLNAME           varchar2(50),
  ENGSHORTNAME          varchar2(50),
  FUNDSATTRIBUTION      varchar2(50),
  CLASSID               varchar2(50),
  CLASSNAME             varchar2(50),
  AREAID                varchar2(50),
  AREANAME              varchar2(50),
  CURRENCYID            varchar2(50),
  CURRENCYNAME          varchar2(50),
  CLIEFNAME             varchar2(50),
  LINKMAN               varchar2(50),
  TELEPHONE1            varchar2(50),
  TELEPHONE2            varchar2(50),
  TELEPHONE3            varchar2(50),
  MOBILETEL             varchar2(50),
  BANKACCOUNT           varchar2(50),
  BANKID                varchar2(50),
  BANKNAME              varchar2(50),
  PERSONID              varchar2(50),
  PERSONNAME            varchar2(50),
  TAXNO                 varchar2(50),
  CAPITALIZATION        FLOAT,
  INDUSTRIALCLASS       varchar2(50),
  EMAIL                 varchar2(50),
  WEBADDRESS            varchar2(50),
  FAXNO                 varchar2(50),
  EARLIESTTRADEDATE     DATE,
  FIRSTTRADEDATE        DATE,
  PRICEOFTAX            NUMBER(9),
  INVALIDDATE           DATE,
  AMOUNTQUOTA           NUMBER(9),
  RECVWAY               varchar2(50),
  DISTDAYS              NUMBER(9),
  DAYOFCLOSE            NUMBER(9),
  CREDITLEVEL           varchar2(50),
  STARTADVRECV          FLOAT,
  STARTRECEIVABLE       FLOAT,
  CURADVRECV            FLOAT,
  CURRECEIVABLE         FLOAT,
  ACCADVRECV            varchar2(50),
  ACCADVRECVNAME        varchar2(50),
  ACCRECEIVABLE         varchar2(50),
  ACCRECEIVABLENAME     varchar2(50),
  ACCRECEIVABLETEMP     varchar2(50),
  ACCRECEIVABLETEMPNAME varchar2(50),
  ADDFIELD1             varchar2(50),
  ADDFIELD2             varchar2(50),
  MEMO                  VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_DSDATASET1
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_DSDSSALEMAIN
--prompt =============================
--prompt
create table SCOTT.T_DSDSSALEMAIN
(
  BILLNO        varchar2(50) not null,
  BILLDATE      DATE,
  CUSTID        varchar2(50),
  CUSTSHORTNAME varchar2(50),
  ADDRID        varchar2(50),
  CUSTADDRESS   VARCHAR2(255),
  SALECLASSID   varchar2(50),
  SALECLASSNAME varchar2(50),
  PRICEOFTAX    NUMBER(9),
  WAREID        varchar2(50),
  WARENAME      varchar2(50),
  CURRID        varchar2(50),
  CURRNAME      varchar2(50),
  EXCHRATE      FLOAT,
  UDEF1         varchar2(50),
  UDEF2         varchar2(50),
  REMARK        VARCHAR2(255),
  SALESID       varchar2(50),
  SALESNAME     varchar2(50),
  DEPARTID      varchar2(50),
  DEPARTNAME    varchar2(50),
  PROJECTID     varchar2(50),
  PROJECTNAME   varchar2(50),
  MAKER         varchar2(50),
  MAKERNAME     varchar2(50),
  PERMITTER     varchar2(50),
  PERMITTERNAME varchar2(50),
  PERMITTYPE    NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_DSDSSALEMAIN
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_DSDSSALESUB
--prompt ============================
--prompt
create table SCOTT.T_DSDSSALESUB
(
  BILLNO       varchar2(50),
  SERNO        NUMBER(9) not null,
  PRODID       varchar2(50),
  PRODNAME     varchar2(50),
  PRODSIZE     varchar2(50),
  SUNIT        varchar2(50),
  SQUANTITY    NUMBER(9),
  OLDPRICE     FLOAT,
  DISCOUNT     FLOAT,
  SPRICE       FLOAT,
  AMOUNT       FLOAT,
  TAXRATE      FLOAT,
  TAXAMT       FLOAT,
  AMOUNTATAX   FLOAT,
  ISGIFT       NUMBER(9),
  ITEMREMARK   VARCHAR2(255),
  TRANTYPE     varchar2(50),
  TRANTYPENAME varchar2(50),
  FORMNO       varchar2(50),
  CUSTBILLNO   varchar2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_DSDSSALESUB
  add primary key (SERNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_DSDSWAREAMOUNT
--prompt ===============================
--prompt
create table SCOTT.T_DSDSWAREAMOUNT
(
  WAREHOUSEID varchar2(50),
  PRODID      varchar2(50),
  BQUANTITY   NUMBER(9),
  BAVGCOST    FLOAT,
  BALLCOST    FLOAT,
  QUANTITY    NUMBER(9),
  CAVGCOST    FLOAT,
  CALLCOST    FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_DSDSWARETRANSACTION
--prompt ====================================
--prompt
create table SCOTT.T_DSDSWARETRANSACTION
(
  TRANTYPE    varchar2(50),
  FORMNO      varchar2(50),
  LINEID      NUMBER(9),
  WAREHOUSEID varchar2(50),
  PRODID      varchar2(50),
  QUANTITY    NUMBER(9),
  PRICE       FLOAT,
  AMOUNT      FLOAT,
  BILLDATE    DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_DSPRODUCT
--prompt ==========================
--prompt
create table SCOTT.T_DSPRODUCT
(
  PRODID            varchar2(50) not null,
  CLASSID           varchar2(50),
  CLASSNAME         varchar2(50),
  PRODNAME          varchar2(50),
  UNITID            NUMBER(9),
  UNIT              varchar2(50),
  PRODSIZE          varchar2(50),
  BARCODEID         varchar2(50),
  ENGNAME           varchar2(50),
  SUGGESTPRICE      FLOAT,
  SALESPRICEA       FLOAT,
  SALESPRICEB       FLOAT,
  SALESPRICEC       FLOAT,
  SALESPRICED       FLOAT,
  SALESPRICEE       FLOAT,
  STDPRICE          FLOAT,
  CURRID            varchar2(50),
  CURRNAME          varchar2(50),
  PRODFORM          varchar2(50),
  PRICEOFTAX        NUMBER(9),
  TAXITEMSID        varchar2(50),
  TAXITEMSNAME      varchar2(50),
  BUSITAXRATE       FLOAT,
  ADVANCEDAYS       NUMBER(9),
  MAJORSUPPLIER     varchar2(50),
  MAJORSUPPLIERNAME varchar2(50),
  BATCHUSED         NUMBER(9),
  EFFECTDATEUSED    NUMBER(9),
  VALIDDATEUSED     NUMBER(9),
  DEFVAKLIDDAY      NUMBER(9),
  SAFEQTY           NUMBER(9),
  BSTDCOST          FLOAT,
  BOUTSTOCKDAY      DATE,
  BINSTOCKDAY       DATE,
  SLUGGISHDAYS      NUMBER(9),
  INVALIDDATE       DATE,
  UDEF1             varchar2(50),
  UDEF2             varchar2(50),
  PRODDESC          VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_DSPRODUCT
  add primary key (PRODID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_DSPRODUCTCLASS
--prompt ===============================
--prompt
create table SCOTT.T_DSPRODUCTCLASS
(
  CLASSID          varchar2(50) not null,
  CLASSNAME        varchar2(50),
  ENGNAEM          varchar2(50),
  ACCINVENTORYID   varchar2(50),
  ACCINVENTORYNAME varchar2(50),
  ACCSALEID        varchar2(50),
  ACCSALENAME      varchar2(50),
  ACCSALECOSTID    varchar2(50),
  ACCSALECOSTNAME  varchar2(50),
  SENDOUTWAREID    varchar2(50),
  SENDOUTWARENAME  varchar2(50),
  GIFTEXPENSEID    varchar2(50),
  GIFTEXPENSENAME  varchar2(50),
  OTHERINCOMEID    varchar2(50),
  OTHERINCOMENAME  varchar2(50),
  OTHEREXPENSEID   varchar2(50),
  OTHEREXPENSENAME varchar2(50),
  OTHERCOSTID      varchar2(50),
  OTHERCOSTNAME    varchar2(50),
  MOME             VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_DSPRODUCTCLASS
  add primary key (CLASSID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_FEECLASS
--prompt =========================
--prompt
create table SCOTT.T_FEECLASS
(
  FEECLASSID     NUMBER(9) not null,
  FEECLASSNAME   varchar2(50),
  FEECLASSREMARK VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.T_FEECLASS.FEECLASSID
  is '主键，收入费用类别编号';
comment on column SCOTT.T_FEECLASS.FEECLASSNAME
  is '名称';
comment on column SCOTT.T_FEECLASS.FEECLASSREMARK
  is '备注';
alter table SCOTT.T_FEECLASS
  add primary key (FEECLASSID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_PAYINADVANCE_DETAILED
--prompt ======================================
--prompt
create table SCOTT.T_PAYINADVANCE_DETAILED
(
  FUNDBILLID    varchar2(50) not null,
  LINENUMBER    NUMBER(9),
  SOURCELIST    varchar2(50),
  SOURCENUMBER  varchar2(50),
  PREPAIDAMOUNT FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_PAYINADVANCE_DETAILED
  add primary key (FUNDBILLID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_PERSONNEL
--prompt ==========================
--prompt
create table SCOTT.T_PERSONNEL
(
  PERSONID        varchar2(50) not null,
  DEPARTID        varchar2(50),
  PERSONNAME      varchar2(50),
  SEXDISTINCTION  NUMBER(9),
  ENGNAME         varchar2(50),
  BIRTHDAY        DATE,
  POLITY          varchar2(50),
  MARITALSTATUS   varchar2(50),
  ONJOBDATE       DATE,
  BLOODTYPE       varchar2(50),
  FORMALDATE      DATE,
  FAMILYREG       varchar2(50),
  DEPARTURETIME   DATE,
  NATIONNAME      varchar2(50),
  TECHTITLE       varchar2(50),
  PROFTITLE       varchar2(50),
  ENGPROFTITLE    varchar2(50),
  EMAIL           varchar2(50),
  ADDRESS1        varchar2(50),
  PHONEL          varchar2(50),
  MOBILEPHONE     varchar2(50),
  SCHOOLING       varchar2(50),
  MATURITYDATE    DATE,
  DEGREE          varchar2(50),
  ENTRYDATE       DATE,
  SCHOOL          varchar2(50),
  PASSPORT        varchar2(50),
  PROFESSIONAL    varchar2(50),
  BARGAINBDATE    DATE,
  BODYCHECKDATE   DATE,
  BARGAINYEARLONG varchar2(50),
  REMARKS         VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_PERSONNEL
  add primary key (PERSONID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_PREPAID_DETAILED
--prompt =================================
--prompt
create table SCOTT.T_PREPAID_DETAILED
(
  FUNDBILLID        varchar2(50) not null,
  LINENUMBER        NUMBER(9),
  SOURCELIST        varchar2(50),
  SOURCENUMBER      varchar2(50),
  SOURCEORDER       varchar2(50),
  SOURCEORDERNUMBER varchar2(50),
  CURPRERECV        FLOAT,
  PREPAIDAMOUNT     FLOAT,
  REMARKS           VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_PREPAID_DETAILED
  add primary key (FUNDBILLID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_PROCALLO
--prompt =========================
--prompt
create table SCOTT.T_PROCALLO
(
  BILLNO       varchar2(50),
  BILLDATE     DATE not null,
  ASSIGNSTYLE  NUMBER(9) not null,
  MLAMOUNT     FLOAT not null,
  MAKER        varchar2(50) not null,
  PERMITTER    varchar2(50),
  REVIEWSTATUS NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.T_PROCALLO.BILLNO
  is '主键，单据号码';
comment on column SCOTT.T_PROCALLO.BILLDATE
  is '单据日期';
comment on column SCOTT.T_PROCALLO.ASSIGNSTYLE
  is '分摊方式';
comment on column SCOTT.T_PROCALLO.MLAMOUNT
  is '待摊金额本位币';
comment on column SCOTT.T_PROCALLO.MAKER
  is '外键，制单人员编号';
comment on column SCOTT.T_PROCALLO.PERMITTER
  is '外键，复核人员编号';
comment on column SCOTT.T_PROCALLO.REVIEWSTATUS
  is '复核状态，0：未复核，1：已复核';

--prompt
--prompt Creating table T_PROCALLO_COSTDETAIL
--prompt ====================================
--prompt
create table SCOTT.T_PROCALLO_COSTDETAIL
(
  BILLNO     varchar2(50),
  CURRID     varchar2(50),
  FEECLASSID NUMBER(9),
  EXCHRATE   FLOAT,
  AMOUNT     FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.T_PROCALLO_COSTDETAIL.BILLNO
  is '外键，采购分摊单据号码';
comment on column SCOTT.T_PROCALLO_COSTDETAIL.CURRID
  is '币别';
comment on column SCOTT.T_PROCALLO_COSTDETAIL.FEECLASSID
  is '外键，费用编号，收入费用类别表';
comment on column SCOTT.T_PROCALLO_COSTDETAIL.EXCHRATE
  is '汇率';
comment on column SCOTT.T_PROCALLO_COSTDETAIL.AMOUNT
  is '金额';

--prompt
--prompt Creating table T_PROCALLO_RESULTDETAIL
--prompt ======================================
--prompt
create table SCOTT.T_PROCALLO_RESULTDETAIL
(
  BILLNO   varchar2(50) not null,
  FROMNO   varchar2(50) not null,
  PRODID   varchar2(50) not null,
  MLAMOUNT FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.T_PROCALLO_RESULTDETAIL.BILLNO
  is '外键，采购分摊单据号码';
comment on column SCOTT.T_PROCALLO_RESULTDETAIL.FROMNO
  is '外键，采购入库单号';
comment on column SCOTT.T_PROCALLO_RESULTDETAIL.PRODID
  is '外键，物料编号';
comment on column SCOTT.T_PROCALLO_RESULTDETAIL.MLAMOUNT
  is '分摊金额';

--prompt
--prompt Creating table T_PURCHASE_DETAIL
--prompt ================================
--prompt
create table SCOTT.T_PURCHASE_DETAIL
(
  LINEID     NUMBER(9) not null,
  BILLNO     varchar2(50),
  PRODID     varchar2(50),
  PRODNAME   varchar2(50),
  PRODSIZE   varchar2(50),
  SUNIT      varchar2(50),
  SQUANTITY  NUMBER(9) default 0,
  OLDPRICE   FLOAT default 0.00,
  DISCOUNT   FLOAT default 100.00,
  SPRICE     FLOAT default 0.00,
  AMOUNT     FLOAT default 0.00,
  TAXRATE    FLOAT default 17.00,
  TAXAMT     FLOAT default 0.00,
  AMOUNTATAX FLOAT default 0.00,
  ISGIFT     NUMBER(9) default 0,
  ITEMREMARK VARCHAR2(255),
  TRANTYPE   varchar2(50),
  FORMNO     varchar2(50),
  MLAMOUNT   FLOAT default 0.00
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.T_PURCHASE_DETAIL.LINEID
  is '行号';
comment on column SCOTT.T_PURCHASE_DETAIL.BILLNO
  is '主单单据号码';
comment on column SCOTT.T_PURCHASE_DETAIL.PRODID
  is '物料编号';
comment on column SCOTT.T_PURCHASE_DETAIL.PRODNAME
  is '物料名称';
comment on column SCOTT.T_PURCHASE_DETAIL.PRODSIZE
  is '物料规格';
comment on column SCOTT.T_PURCHASE_DETAIL.SUNIT
  is '物料单位';
comment on column SCOTT.T_PURCHASE_DETAIL.SQUANTITY
  is '数量';
comment on column SCOTT.T_PURCHASE_DETAIL.OLDPRICE
  is '折扣前单价';
comment on column SCOTT.T_PURCHASE_DETAIL.DISCOUNT
  is '折数(%)';
comment on column SCOTT.T_PURCHASE_DETAIL.SPRICE
  is '单价';
comment on column SCOTT.T_PURCHASE_DETAIL.AMOUNT
  is '金额';
comment on column SCOTT.T_PURCHASE_DETAIL.TAXRATE
  is '税率';
comment on column SCOTT.T_PURCHASE_DETAIL.TAXAMT
  is '税额';
comment on column SCOTT.T_PURCHASE_DETAIL.AMOUNTATAX
  is '含税金额';
comment on column SCOTT.T_PURCHASE_DETAIL.ISGIFT
  is '赠品';
comment on column SCOTT.T_PURCHASE_DETAIL.ITEMREMARK
  is '分录备注';
comment on column SCOTT.T_PURCHASE_DETAIL.TRANTYPE
  is '来源单别';
comment on column SCOTT.T_PURCHASE_DETAIL.FORMNO
  is '来源单号';
comment on column SCOTT.T_PURCHASE_DETAIL.MLAMOUNT
  is '分摊金额';
alter table SCOTT.T_PURCHASE_DETAIL
  add primary key (LINEID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_PURCHASE_MASTER
--prompt ================================
--prompt
create table SCOTT.T_PURCHASE_MASTER
(
  BILLNO        varchar2(50) not null,
  BILLDATE      DATE,
  CUSTID        varchar2(50),
  CUSTNAME      varchar2(50),
  ADDRID        varchar2(50),
  CUSTADDRESS   varchar2(50),
  SALECLASSID   varchar2(50),
  SALECLASSNAME varchar2(50),
  CURRID        varchar2(50),
  CURRNAME      varchar2(50),
  PRICEOFTAX    NUMBER(9) default 0,
  EXCHRATE      FLOAT default 0.0000,
  WAREID        varchar2(50),
  WARENAME      varchar2(50),
  SALESID       varchar2(50),
  SALESNAME     varchar2(50),
  MAKER         varchar2(50),
  MAKERNAME     varchar2(50),
  PERMITTER     varchar2(50),
  PERMITTERNAME varchar2(50),
  DEPARTID      varchar2(50),
  DEPARTNAME    varchar2(50),
  PROJECTID     varchar2(50),
  PROJECTNAME   varchar2(50),
  UDEF1         varchar2(50),
  UDEF2         varchar2(50),
  REMARK        VARCHAR2(255),
  EAMINESTATE   NUMBER(9) default 0
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SCOTT.T_PURCHASE_MASTER
  is '采购入库详表';
comment on column SCOTT.T_PURCHASE_MASTER.BILLNO
  is '单据编号';
comment on column SCOTT.T_PURCHASE_MASTER.BILLDATE
  is '单据日期';
comment on column SCOTT.T_PURCHASE_MASTER.CUSTID
  is '供应商编号';
comment on column SCOTT.T_PURCHASE_MASTER.CUSTNAME
  is '供应商名称';
comment on column SCOTT.T_PURCHASE_MASTER.ADDRID
  is '供应商地址编号';
comment on column SCOTT.T_PURCHASE_MASTER.CUSTADDRESS
  is '供应商地址名称';
comment on column SCOTT.T_PURCHASE_MASTER.SALECLASSID
  is '采购入库类型编号';
comment on column SCOTT.T_PURCHASE_MASTER.SALECLASSNAME
  is '采购入库类型名称';
comment on column SCOTT.T_PURCHASE_MASTER.CURRID
  is '币别编号';
comment on column SCOTT.T_PURCHASE_MASTER.CURRNAME
  is '币别名称';
comment on column SCOTT.T_PURCHASE_MASTER.PRICEOFTAX
  is '单价是否含税';
comment on column SCOTT.T_PURCHASE_MASTER.EXCHRATE
  is '汇率';
comment on column SCOTT.T_PURCHASE_MASTER.WAREID
  is '仓库编号';
comment on column SCOTT.T_PURCHASE_MASTER.WARENAME
  is '仓库名称';
comment on column SCOTT.T_PURCHASE_MASTER.SALESID
  is '采购人员编号';
comment on column SCOTT.T_PURCHASE_MASTER.SALESNAME
  is '采购人员名称';
comment on column SCOTT.T_PURCHASE_MASTER.MAKER
  is '制单人员编号';
comment on column SCOTT.T_PURCHASE_MASTER.MAKERNAME
  is '制单人员名称';
comment on column SCOTT.T_PURCHASE_MASTER.PERMITTER
  is '复核人员编号';
comment on column SCOTT.T_PURCHASE_MASTER.PERMITTERNAME
  is '复核人员名称';
comment on column SCOTT.T_PURCHASE_MASTER.DEPARTID
  is '所属部门编号';
comment on column SCOTT.T_PURCHASE_MASTER.DEPARTNAME
  is '所属部门名称';
comment on column SCOTT.T_PURCHASE_MASTER.PROJECTID
  is '所属项目编号';
comment on column SCOTT.T_PURCHASE_MASTER.PROJECTNAME
  is '所属项目名称';
comment on column SCOTT.T_PURCHASE_MASTER.UDEF1
  is '自定义栏一';
comment on column SCOTT.T_PURCHASE_MASTER.UDEF2
  is '自定义栏二';
comment on column SCOTT.T_PURCHASE_MASTER.REMARK
  is '备注';
comment on column SCOTT.T_PURCHASE_MASTER.EAMINESTATE
  is '审核状态';
alter table SCOTT.T_PURCHASE_MASTER
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_PURCHASE_PURCHASE
--prompt ==================================
--prompt
create table SCOTT.T_PURCHASE_PURCHASE
(
  BILLNO        varchar2(50) not null,
  BILLDATE      DATE,
  BILLSTYLEID   varchar2(50),
  BILLSTATUS    NUMBER(9),
  DEPARTID      varchar2(50),
  MAKER         varchar2(50),
  PERMITTER     varchar2(50),
  REMARK        VARCHAR2(255),
  SUMQTY        NUMBER(9),
  HEADERID      varchar2(50),
  HEADERNAME    varchar2(50),
  FOOTERID      varchar2(50),
  FOOTERNAME    varchar2(50),
  USERDEF1      varchar2(50),
  USERDEF2      varchar2(50),
  MAKERSIGN     varchar2(50),
  PERMITTERSIGN varchar2(50),
  SALESID       varchar2(50),
  AUDITSTATUS   NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_PURCHASE_PURCHASE
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_PURCHASE_PURCHASE_DETAILS
--prompt ==========================================
--prompt
create table SCOTT.T_PURCHASE_PURCHASE_DETAILS
(
  BILLNO          varchar2(50) not null,
  PURCHASEID      varchar2(50),
  PRODID          varchar2(50),
  SUM1            NUMBER(9),
  DEMANDDATE      DATE,
  PROCUREMENTDATE DATE,
  PURCHASEVOLUME  NUMBER(9),
  ENTRYNOTES      VARCHAR2(255),
  SOURCELIST      varchar2(50),
  SOURCENUMBER    varchar2(50),
  CURRENCY        varchar2(50),
  MATERIALID      varchar2(50),
  UNITPRICE       FLOAT,
  AMOUNTOFMONEY   FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_PURCHASE_PURCHASE_DETAILS
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_RECEIVABLECHARGE
--prompt =================================
--prompt
create table SCOTT.T_RECEIVABLECHARGE
(
  FUNDBILLID        varchar2(50) not null,
  FUNDBILLDATE      DATE,
  CUSTOMERID        varchar2(50),
  CUSTOMERNAME      varchar2(50),
  CASHSTYLENAME     varchar2(50),
  CASH              FLOAT,
  VISASTYLENAME     varchar2(50),
  VISA              FLOAT,
  OTHERPAYSTYLENAME varchar2(50),
  OTHERPAY          FLOAT,
  BCURRENCYNAME     varchar2(50),
  EXCHANGERATE      FLOAT,
  DISCOUNTPER       FLOAT,
  ACCMONTHTOMONTH   DATE,
  VOUCHERNO         varchar2(50),
  DEPARTNAMEFROM    varchar2(50),
  MAKERSIGN         varchar2(50),
  PROJECTFROM       varchar2(50),
  FERMITTERSIGN     varchar2(50),
  AUDITSTATUS       NUMBER(9),
  CUSTOMCOLUMNONE   varchar2(50),
  CUSTOMCOLUMNTWO   varchar2(50),
  REMARKS           VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_RECEIVABLECHARGE
  add primary key (FUNDBILLID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_RECEIVABLECHARGEDETAILS
--prompt ========================================
--prompt
create table SCOTT.T_RECEIVABLECHARGEDETAILS
(
  FUNDBILLID      varchar2(50) not null,
  LINENUMBER      NUMBER(9),
  SOURCELIST      varchar2(50),
  SOURCENUMBER    varchar2(50),
  BCURRENCYNAME   varchar2(50),
  ORIGINALAMOUNT  FLOAT,
  CURRENTAMOUNT   FLOAT,
  MONEYCHARGED    FLOAT,
  OFFSETAMOUNT    FLOAT,
  ALLOWANCEAMOUNT FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_RECEIVABLECHARGEDETAILS
  add primary key (FUNDBILLID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_RUSHPAYABLE
--prompt ============================
--prompt
create table SCOTT.T_RUSHPAYABLE
(
  FUNDBILLID        varchar2(50) not null,
  FUNDBILLDATE      DATE,
  CUSTOMERID        varchar2(50),
  CUSTOMERNAME      varchar2(50),
  CASHSTYLENAME     varchar2(50),
  CASH              FLOAT,
  VISASTYLENAME     varchar2(50),
  VISA              FLOAT,
  OTHERPAYSTYLENAME varchar2(50),
  OTHERPAY          FLOAT,
  BCURRENCYNAME     varchar2(50),
  EXCHANGERATE      FLOAT,
  DISCOUNTPER       FLOAT,
  ACCMONTHTOMONTH   DATE,
  VOUCHERNO         varchar2(50),
  DEPARTNAMEFROM    varchar2(50),
  MAKERSIGN         varchar2(50),
  PROJECTFROM       varchar2(50),
  FERMITTERSIGN     varchar2(50),
  CUSTOMCOLUMNONE   varchar2(50),
  CUSTOMCOLUMNTWO   varchar2(50),
  REMARKS           VARCHAR2(255),
  TYPE              NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_RUSHPAYABLE
  add primary key (FUNDBILLID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_RUSHPAYABLE_DETAILED
--prompt =====================================
--prompt
create table SCOTT.T_RUSHPAYABLE_DETAILED
(
  FUNDBILLID      varchar2(50) not null,
  LINENUMBER      NUMBER(9),
  SOURCELIST      varchar2(50),
  SOURCENUMBER    varchar2(50),
  BCURRENCYNAME   varchar2(50),
  ORIGINALAMOUNT  FLOAT,
  CURRENTAMOUNT   FLOAT,
  MONEYCHARGED    FLOAT,
  OFFSETAMOUNT    FLOAT,
  ALLOWANCEAMOUNT FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_RUSHPAYABLE_DETAILED
  add primary key (FUNDBILLID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_SALEPRICE
--prompt ==========================
--prompt
create table SCOTT.T_SALEPRICE
(
  BILLNO          varchar2(50) not null,
  BILLDATE        DATE,
  CUSTOMERID      varchar2(50),
  FORMALCUST      NUMBER(9),
  CUSTADDRESS     varchar2(50),
  VALIDDATE       DATE,
  PRICEOFTAX      NUMBER(9),
  CURCURRENCYNAME varchar2(50),
  EXCHRATE        FLOAT,
  SALESID         varchar2(50),
  SALESNAME       varchar2(50),
  DEPARTID        varchar2(50),
  DEPARTNAME      varchar2(50),
  MAKER           varchar2(50),
  PERMITTER       varchar2(50),
  SPHEADER        varchar2(50),
  SPFOOTER        varchar2(50),
  USERDEF         varchar2(50),
  USERDEF2        varchar2(50),
  REMARK          VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_SALEPRICE
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_SALEPRICE_DETAILS
--prompt ==================================
--prompt
create table SCOTT.T_SALEPRICE_DETAILS
(
  BILLNO     varchar2(50),
  DETAILID   varchar2(50) not null,
  PRODID     varchar2(50),
  PRODNAME   varchar2(50),
  PRODSIZE   varchar2(50),
  SUNITID    varchar2(50),
  SUNIT      varchar2(50),
  SQUANTITY  NUMBER(9),
  OLDPRICE   FLOAT,
  DISCOUNT   NUMBER(9),
  SPRICE     FLOAT,
  AMOUNT     FLOAT,
  TAXRATE    NUMBER(9),
  TAXAMT     FLOAT,
  VFTOTAL    FLOAT,
  ISGIFT     NUMBER(9),
  ITEMREMARK VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_SALEPRICE_DETAILS
  add primary key (DETAILID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_SALESORDER
--prompt ===========================
--prompt
create table SCOTT.T_SALESORDER
(
  BILLNO        varchar2(50) not null,
  BILLDATE      DATE not null,
  CUSTOMERID    varchar2(50),
  ADDRESSID     varchar2(50),
  BILLSTYLEID   varchar2(50),
  BILLSTYLENAME varchar2(50),
  CUSTBILLNO    varchar2(50),
  TAXINCLUDED   NUMBER(1),
  CURRID        varchar2(50),
  REMARK        varchar2(50),
  EXCHRATE      FLOAT,
  SALESNAME     varchar2(50),
  DEPARTID      varchar2(50),
  PROJECTID     varchar2(50),
  MAKER         varchar2(50),
  PERMITTER     varchar2(50),
  MODPRICESTATE NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_SALESORDER
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_SALES_RETURNS
--prompt ==============================
--prompt
create table SCOTT.T_SALES_RETURNS
(
  BILLNO       varchar2(50) not null,
  BILLDATE     DATE default sysdate,
  ADDRID       VARCHAR2(255),
  PRICEOFTAX   NUMBER(9),
  CURRID       varchar2(50),
  WARENAME     varchar2(50),
  EXCHRATE     FLOAT default 1,
  ISDEDUCT     NUMBER(9),
  DUETO        varchar2(50),
  SALESNAME    varchar2(50),
  MAKER        varchar2(50),
  DEPARTNAME   varchar2(50),
  PERMITTER    varchar2(50),
  AUDITEDSTATE NUMBER(9) default 0
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_SALES_RETURNS
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_SALES_RETURNS_DETAILS
--prompt ======================================
--prompt
create table SCOTT.T_SALES_RETURNS_DETAILS
(
  BILLNO             varchar2(50),
  DETAILEDLISTNUMBER NUMBER(9) not null,
  PRODID             varchar2(50),
  PRODNAME           varchar2(50),
  PRODSIZE           varchar2(50),
  SUNIT              varchar2(50),
  SQUANTITY          NUMBER(22) default 0,
  OLDPRICE           FLOAT default 0,
  DISCOUNT           FLOAT default 0,
  SPRICE             FLOAT default 0,
  AMOUNT             FLOAT default 0,
  TAXRATE            FLOAT default 0,
  TAXAMT             FLOAT default 0,
  AMOUNTATAX         FLOAT default 0,
  HAVEBATCH          NUMBER(9),
  ISGIFT             NUMBER(9) default 0,
  ITEMREMARK         VARCHAR2(255),
  TRANTYPE           varchar2(50),
  FROMNO             varchar2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_SALES_RETURNS_DETAILS
  add primary key (DETAILEDLISTNUMBER)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_STOCK_INVENTORY
--prompt ================================
--prompt
create table SCOTT.T_STOCK_INVENTORY
(
  BILLNO        varchar2(50) not null,
  ADJUSTDATE    DATE,
  MAKER         varchar2(50),
  PERMITTER     varchar2(50),
  UDEF1         varchar2(50),
  UDEF2         varchar2(50),
  REMARK        varchar2(50),
  WAREID        varchar2(50),
  SUMQTY        NUMBER(9),
  SUMCOST       FLOAT,
  SALESID       varchar2(50),
  DEPARTID      varchar2(50),
  MEMO          VARCHAR2(255),
  ZEROFILTER    NUMBER(9),
  SUMCURQTY     NUMBER(9),
  SUMCHECKQTY   NUMBER(9),
  MAKERSIGN     varchar2(50),
  PERMITTERSIGN varchar2(50),
  AUDITSTATUS   NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_STOCK_INVENTORY
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_STOCK_INVENTORY_DETAILS
--prompt ========================================
--prompt
create table SCOTT.T_STOCK_INVENTORY_DETAILS
(
  DETAILSID           varchar2(50) not null,
  BILLNO              varchar2(50),
  PRODID              varchar2(50),
  PRODSIRE            varchar2(50),
  STDUNITID           varchar2(50),
  BOOKQUANTITY        NUMBER(9),
  INVENTORYNUMBER     NUMBER(9),
  PROFITANDLOSS       NUMBER(9),
  UNITPRICE           FLOAT,
  PROFITANDLOSSAMOUNT FLOAT,
  BATCHNUMBER         varchar2(50),
  REASON              varchar2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_STOCK_INVENTORY_DETAILS
  add primary key (DETAILSID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_TAKEINADVANCE
--prompt ==============================
--prompt
create table SCOTT.T_TAKEINADVANCE
(
  FUNDBILLID        varchar2(50) not null,
  LINENUMBER        NUMBER(9),
  SOURCELIST        varchar2(50),
  SOURCENUMBER      varchar2(50),
  SOURCEORDER       varchar2(50),
  SOURCEORDERNUMBER varchar2(50),
  CURPRERECV        FLOAT,
  PREPAIDAMOUNT     FLOAT,
  REMARKS           VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_TAKEINADVANCE
  add primary key (FUNDBILLID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_UNIT
--prompt =====================
--prompt
create table SCOTT.T_UNIT
(
  UNITID   varchar2(50) not null,
  UNITNAME varchar2(50),
  REMARK   VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_UNIT
  add primary key (UNITID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_WAREHOUSE
--prompt ==========================
--prompt
create table SCOTT.T_WAREHOUSE
(
  WAREID       varchar2(50) not null,
  WARENAME     varchar2(50),
  CONTENTPER   varchar2(50),
  CONTENTPHONE varchar2(50),
  CONTENTADRE  varchar2(50),
  REMARK       VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_WAREHOUSE
  add primary key (WAREID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating sequence T_DSDSSALESUB_ID_SEQ
--prompt ======================================
--prompt
create sequence SCOTT.T_DSDSSALESUB_ID_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

--prompt
--prompt Creating sequence T_DSDSSALESUB_SERNO_SEQ
--prompt =========================================
--prompt
create sequence SCOTT.T_DSDSSALESUB_SERNO_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 41
increment by 1
cache 20;


spool off
