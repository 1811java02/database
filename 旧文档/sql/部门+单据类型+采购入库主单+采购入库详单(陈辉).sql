CREATE TABLE T_Department
(
  DepartID	Varchar(20)  NOT NULL PRIMARY KEY,
  DepartName	Varchar(20) NOT NULL,
  EngName	Varchar(20),
  Memo	Varchar(255)
);

COMMENT ON TABLE T_Department is '���ű�';
COMMENT ON  COLUMN  T_Department.DepartID   is  '���ű��';
COMMENT ON  COLUMN  T_Department.DepartName   is  '��������';
COMMENT ON  COLUMN  T_Department.EngName   is  '����Ӣ������';
COMMENT ON  COLUMN  T_Department.Memo   is  '��ע';

INSERT INTO T_Department(DepartID,DepartName)
  SELECT '01', '����' FROM dual
  UNION
  SELECT '02', '�ɹ���' FROM dual
  UNION
  SELECT '03','���۲�' FROM dual
  UNION
  SELECT '04','������' FROM dual;

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

COMMENT ON TABLE T_BillType is '�������ͱ�';
COMMENT ON  COLUMN  T_BillType.ClassID   is  '���ͱ��';
COMMENT ON  COLUMN  T_BillType.ClassName   is  '��������';
COMMENT ON  COLUMN  T_BillType.BillType   is  '�����������';
COMMENT ON  COLUMN  T_BillType.EngName   is  '����Ӣ������';
COMMENT ON  COLUMN  T_BillType.Memo   is  '��ע';

INSERT INTO T_BillType(ClassID,ClassName,BillType)
    SELECT '01','��Ʒ�빺','�ɹ��빺��' FROM dual
    UNION
    SELECT '02','��Ʒ���','�ɹ���ⵥ' FROM dual
    UNION
    SELECT '03','��Ʒѯ��','�ɹ�ѯ�۵�' FROM dual
    UNION
    SELECT '04','��Ʒ����','���۱��۵�' FROM dual
    UNION
    SELECT '05','��Ʒ����','���۳��ⵥ' FROM dual;

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

COMMENT ON TABLE T_Purchase_Master is '�ɹ��������';
COMMENT ON  COLUMN  T_Purchase_Master.BillNO   is  '���ݱ��';
COMMENT ON  COLUMN  T_Purchase_Master.BillDate   is  '��������';
COMMENT ON  COLUMN  T_Purchase_Master.CustID   is  '��Ӧ�̱��';
COMMENT ON  COLUMN  T_Purchase_Master.CustName   is  '��Ӧ������';
COMMENT ON  COLUMN  T_Purchase_Master.AddrID   is  '��Ӧ�̵�ַ���';
COMMENT ON  COLUMN  T_Purchase_Master.CustAddress   is  '��Ӧ�̵�ַ����';
COMMENT ON  COLUMN  T_Purchase_Master.SaleClassID   is  '�ɹ�������ͱ��';
COMMENT ON  COLUMN  T_Purchase_Master.SaleClassName   is  '�ɹ������������';
COMMENT ON  COLUMN  T_Purchase_Master.CurrID   is  '�ұ���';
COMMENT ON  COLUMN  T_Purchase_Master.CurrName   is  '�ұ�����';
COMMENT ON  COLUMN  T_Purchase_Master.PriceofTax   is  '�����Ƿ�˰';
COMMENT ON  COLUMN  T_Purchase_Master.ExchRate   is  '����';
COMMENT ON  COLUMN  T_Purchase_Master.WareID   is  '�ֿ���';
COMMENT ON  COLUMN  T_Purchase_Master.WareName   is  '�ֿ�����';
COMMENT ON  COLUMN  T_Purchase_Master.SalesID   is  '�ɹ���Ա���';
COMMENT ON  COLUMN  T_Purchase_Master.SalesName   is  '�ɹ���Ա����';
COMMENT ON  COLUMN  T_Purchase_Master.Maker   is  '�Ƶ���Ա���';
COMMENT ON  COLUMN  T_Purchase_Master.MakerName   is  '�Ƶ���Ա����';
COMMENT ON  COLUMN  T_Purchase_Master.Permitter   is  '������Ա���';
COMMENT ON  COLUMN  T_Purchase_Master.PermitterName   is  '������Ա����';
COMMENT ON  COLUMN  T_Purchase_Master.DepartID   is  '�������ű��';
COMMENT ON  COLUMN  T_Purchase_Master.DepartName   is  '������������';
COMMENT ON  COLUMN  T_Purchase_Master.ProjectID   is  '������Ŀ���';
COMMENT ON  COLUMN  T_Purchase_Master.ProjectName   is  '������Ŀ����';
COMMENT ON  COLUMN  T_Purchase_Master.UDef1   is  '�Զ�����һ';
COMMENT ON  COLUMN  T_Purchase_Master.UDef2   is  '�Զ�������';
COMMENT ON  COLUMN  T_Purchase_Master.Remark   is  '��ע';
COMMENT ON  COLUMN  T_Purchase_Master.EamineState   is  '���״̬';

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

COMMENT ON TABLE T_Purchase_Master is '�ɹ�������';
COMMENT ON  COLUMN  T_Purchase_Detail.LineID   is  '�к�';
COMMENT ON  COLUMN  T_Purchase_Detail.BillNO   is  '�������ݺ���';
COMMENT ON  COLUMN  T_Purchase_Detail.ProdID   is  '���ϱ��';
COMMENT ON  COLUMN  T_Purchase_Detail.ProdName   is  '��������';
COMMENT ON  COLUMN  T_Purchase_Detail.ProdSize   is  '���Ϲ��';
COMMENT ON  COLUMN  T_Purchase_Detail.SUnit   is  '���ϵ�λ';
COMMENT ON  COLUMN  T_Purchase_Detail.SQuantity   is  '����';
COMMENT ON  COLUMN  T_Purchase_Detail.OldPrice   is  '�ۿ�ǰ����';
COMMENT ON  COLUMN  T_Purchase_Detail.Discount   is  '����(%)';
COMMENT ON  COLUMN  T_Purchase_Detail.SPrice   is  '����';
COMMENT ON  COLUMN  T_Purchase_Detail.Amount   is  '���';
COMMENT ON  COLUMN  T_Purchase_Detail.TaxRate   is  '˰��';
COMMENT ON  COLUMN  T_Purchase_Detail.TaxAmt   is  '˰��';
COMMENT ON  COLUMN  T_Purchase_Detail.AmountATax   is  '��˰���';
COMMENT ON  COLUMN  T_Purchase_Detail.IsGift   is  '��Ʒ';
COMMENT ON  COLUMN  T_Purchase_Detail.ItemRemark   is  '��¼��ע';
COMMENT ON  COLUMN  T_Purchase_Detail.TranType   is  '��Դ����';
COMMENT ON  COLUMN  T_Purchase_Detail.FormNO   is  '��Դ����';
COMMENT ON  COLUMN  T_Purchase_Detail.MLAmount   is  '��̯���';

SELECT  * FROM T_Purchase_Detail;