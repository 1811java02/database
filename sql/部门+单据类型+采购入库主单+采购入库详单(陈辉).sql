CREATE TABLE T_Department
(
  DepartID	Varchar(20)  NOT NULL PRIMARY KEY,
  DepartName	Varchar(20) NOT NULL,
  EngName	Varchar(20),
  Memo	Varchar(255)
);

COMMENT ON TABLE T_Department is '部门表';
COMMENT ON  COLUMN  T_Department.DepartID   is  '部门编号';
COMMENT ON  COLUMN  T_Department.DepartName   is  '部门名称';
COMMENT ON  COLUMN  T_Department.EngName   is  '部门英文名称';
COMMENT ON  COLUMN  T_Department.Memo   is  '备注';

INSERT INTO T_Department(DepartID,DepartName)
  SELECT '01', '财务部' FROM dual
  UNION
  SELECT '02', '采购部' FROM dual
  UNION
  SELECT '03','销售部' FROM dual
  UNION
  SELECT '04','生产部' FROM dual;

SELECT  * FROM T_Department;

CREATE TABLE T_BillType
(
  ClassID	Varchar(20) NOT NULL,
  ClassName	Varchar(20) NOT NULL,
  BillType	Varchar(20) NOT NULL,
  EngName	Varchar(20),
  Memo	Varchar(255),
  CONSTRAINT PK_Union_Bill_Type PRIMARY KEY (ClassID,BillType)
);

COMMENT ON TABLE T_BillType is '单据类型表';
COMMENT ON  COLUMN  T_BillType.ClassID   is  '类型编号';
COMMENT ON  COLUMN  T_BillType.ClassName   is  '类型名称';
COMMENT ON  COLUMN  T_BillType.BillType   is  '单据类别名称';
COMMENT ON  COLUMN  T_BillType.EngName   is  '类型英文名称';
COMMENT ON  COLUMN  T_BillType.Memo   is  '备注';

INSERT INTO T_BillType(ClassID,ClassName,BillType)
    SELECT '01','商品请购','采购请购单' FROM dual
    UNION
    SELECT '02','商品入库','采购入库单' FROM dual
    UNION
    SELECT '03','商品询价','采购询价单' FROM dual
    UNION
    SELECT '04','商品报价','销售报价单' FROM dual
    UNION
    SELECT '05','商品出库','销售出库单' FROM dual;

SELECT  * FROM T_BillType;

CREATE TABLE T_Purchase_Master
(
  BillNO	Varchar(20) NOT NULL PRIMARY KEY,
  BillDate	Date NOT NULL,
  CustID	Varchar(20) NOT NULL,
  CustName	Varchar(20),
  AddrID	Varchar(20),
  CustAddress	Varchar(20),
  SaleClassID	Varchar(20),
  SaleClassName	Varchar(20),
  CurrID	Varchar(20) NOT NULL,
  CurrName	Varchar(20),
  PriceofTax	NUMBER(1) DEFAULT 0 NOT NULL,
  ExchRate	Number(*,4) DEFAULT 0.0000 NOT NULL ,
  WareID	Varchar(20) NOT NULL,
  WareName	Varchar(20),
  SalesID	Varchar(20) NOT NULL,
  SalesName	Varchar(20),
  Maker	Varchar(20) NOT NULL,
  MakerName	Varchar(20),
  Permitter	Varchar(20) NOT NULL,
  PermitterName	Varchar(20),
  DepartID	Varchar(20) NOT NULL,
  DepartName	Varchar(20),
  ProjectID	Varchar(20),
  ProjectName	Varchar(20),
  UDef1	Varchar(20),
  UDef2	Varchar(20),
  Remark	Varchar(255),
  EamineState	Number(1) DEFAULT 0 NOT NULL
);

COMMENT ON TABLE T_Purchase_Master is '采购入库主表';
COMMENT ON  COLUMN  T_Purchase_Master.BillNO   is  '单据编号';
COMMENT ON  COLUMN  T_Purchase_Master.BillDate   is  '单据日期';
COMMENT ON  COLUMN  T_Purchase_Master.CustID   is  '供应商编号';
COMMENT ON  COLUMN  T_Purchase_Master.CustName   is  '供应商名称';
COMMENT ON  COLUMN  T_Purchase_Master.AddrID   is  '供应商地址编号';
COMMENT ON  COLUMN  T_Purchase_Master.CustAddress   is  '供应商地址名称';
COMMENT ON  COLUMN  T_Purchase_Master.SaleClassID   is  '采购入库类型编号';
COMMENT ON  COLUMN  T_Purchase_Master.SaleClassName   is  '采购入库类型名称';
COMMENT ON  COLUMN  T_Purchase_Master.CurrID   is  '币别编号';
COMMENT ON  COLUMN  T_Purchase_Master.CurrName   is  '币别名称';
COMMENT ON  COLUMN  T_Purchase_Master.PriceofTax   is  '单价是否含税';
COMMENT ON  COLUMN  T_Purchase_Master.ExchRate   is  '汇率';
COMMENT ON  COLUMN  T_Purchase_Master.WareID   is  '仓库编号';
COMMENT ON  COLUMN  T_Purchase_Master.WareName   is  '仓库名称';
COMMENT ON  COLUMN  T_Purchase_Master.SalesID   is  '采购人员编号';
COMMENT ON  COLUMN  T_Purchase_Master.SalesName   is  '采购人员名称';
COMMENT ON  COLUMN  T_Purchase_Master.Maker   is  '制单人员编号';
COMMENT ON  COLUMN  T_Purchase_Master.MakerName   is  '制单人员名称';
COMMENT ON  COLUMN  T_Purchase_Master.Permitter   is  '复核人员编号';
COMMENT ON  COLUMN  T_Purchase_Master.PermitterName   is  '复核人员名称';
COMMENT ON  COLUMN  T_Purchase_Master.DepartID   is  '所属部门编号';
COMMENT ON  COLUMN  T_Purchase_Master.DepartName   is  '所属部门名称';
COMMENT ON  COLUMN  T_Purchase_Master.ProjectID   is  '所属项目编号';
COMMENT ON  COLUMN  T_Purchase_Master.ProjectName   is  '所属项目名称';
COMMENT ON  COLUMN  T_Purchase_Master.UDef1   is  '自定义栏一';
COMMENT ON  COLUMN  T_Purchase_Master.UDef2   is  '自定义栏二';
COMMENT ON  COLUMN  T_Purchase_Master.Remark   is  '备注';
COMMENT ON  COLUMN  T_Purchase_Master.EamineState   is  '审核状态';

SELECT  * FROM T_Purchase_Master;

CREATE TABLE T_Purchase_Detail
(
  LineID	Number(22) NOT NULL PRIMARY KEY,
  BillNO	Varchar(20) NOT NULL,
  ProdID	Varchar(20) NOT NULL,
  ProdName	Varchar(20) NOT NULL,
  ProdSize	Varchar(20),
  SUnit	Varchar(20) NOT NULL,
  SQuantity	Number(22) DEFAULT 0 NOT NULL,
  OldPrice	Number(*,2) DEFAULT 0.00 NOT NULL,
  Discount	Number(*,2) DEFAULT 100.00 NOT NULL ,
  SPrice	Number(*,2) DEFAULT 0.00 NOT NULL,
  Amount	Number(*,2) DEFAULT 0.00 NOT NULL,
  TaxRate	Number(*,2) DEFAULT 17.00 NOT NULL,
  TaxAmt	Number(*,2) DEFAULT 0.00 NOT NULL ,
  AmountATax	Number(*,2) DEFAULT 0.00 NOT NULL,
  IsGift	Number(1) DEFAULT 0 NOT NULL,
  ItemRemark	Varchar(255),
  TranType	Varchar(20),
  FormNO	Varchar(20),
  MLAmount	Number(*,2) DEFAULT 0.00 NOT NULL
);

COMMENT ON TABLE T_Purchase_Master is '采购入库详表';
COMMENT ON  COLUMN  T_Purchase_Detail.LineID   is  '行号';
COMMENT ON  COLUMN  T_Purchase_Detail.BillNO   is  '主单单据号码';
COMMENT ON  COLUMN  T_Purchase_Detail.ProdID   is  '物料编号';
COMMENT ON  COLUMN  T_Purchase_Detail.ProdName   is  '物料名称';
COMMENT ON  COLUMN  T_Purchase_Detail.ProdSize   is  '物料规格';
COMMENT ON  COLUMN  T_Purchase_Detail.SUnit   is  '物料单位';
COMMENT ON  COLUMN  T_Purchase_Detail.SQuantity   is  '数量';
COMMENT ON  COLUMN  T_Purchase_Detail.OldPrice   is  '折扣前单价';
COMMENT ON  COLUMN  T_Purchase_Detail.Discount   is  '折数(%)';
COMMENT ON  COLUMN  T_Purchase_Detail.SPrice   is  '单价';
COMMENT ON  COLUMN  T_Purchase_Detail.Amount   is  '金额';
COMMENT ON  COLUMN  T_Purchase_Detail.TaxRate   is  '税率';
COMMENT ON  COLUMN  T_Purchase_Detail.TaxAmt   is  '税额';
COMMENT ON  COLUMN  T_Purchase_Detail.AmountATax   is  '含税金额';
COMMENT ON  COLUMN  T_Purchase_Detail.IsGift   is  '赠品';
COMMENT ON  COLUMN  T_Purchase_Detail.ItemRemark   is  '分录备注';
COMMENT ON  COLUMN  T_Purchase_Detail.TranType   is  '来源单别';
COMMENT ON  COLUMN  T_Purchase_Detail.FormNO   is  '来源单号';
COMMENT ON  COLUMN  T_Purchase_Detail.MLAmount   is  '分摊金额';

SELECT  * FROM T_Purchase_Detail;