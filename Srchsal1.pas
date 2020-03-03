unit Srchsal1;
                                    
interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCardView, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, ExtCtrls,
  Menus, cxLookAndFeelPainters, cxButtons, cxGridDBCardView, cxCheckBox,
  AdvShapeButton, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  AdvGlowButton, cxLookAndFeels, dxDateRanges, dxBarBuiltInMenu,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator,
  cxGridCustomLayoutView, cxImageComboBox;

type
  TSearchSale = class(TForm)
    DataSource: TDataSource;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    SearchButton: TAdvGlowButton;
    OrderCombo: TcxComboBox;
    OkBtn: TcxButton;
    CancelBtn: TcxButton;
    SearchEd: TcxTextEdit;
    AdvShapeButton1: TAdvShapeButton;
    cxCheckBox1: TcxCheckBox;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DBGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridLevel2: TcxGridLevel;
    cbViewdata: TcxImageComboBox;
    Label1: TLabel;
    HQuery1: TFDQuery;
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DataControllerGroupingChanged(
      Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    NewKeyno,Xsrch,Xflg,XFlag,XYstat,XLocat,ResvSale,STaxDt,XCanf,XTsale,StatDep: string;
    property Keyno: string read GetKeyno;

    function ShowModalCuscod: Integer;
    function ShowModalResv: Integer;
    function ShowModalStrno: Integer;
    function ShowModalArCred: Integer;
    function ShowModalArMast: Integer;
    function ShowModalHArMast: Integer;
    function ShowModalArFinc: Integer;
    function ShowModalArAgen: Integer;
    function ShowModalArOptn: Integer;
    function ShowModalArClose: Integer;
    function ShowModalOptMas: Integer;
    function ShowmodalCallCenter: Integer;
    function ShowModalChgContStat: Integer;
    function ShowmodalCallTran : integer;
    function ShowModalResvOpt: Integer;
    function ShowModalResvEdit: Integer;
    function ShowModalAddArresv: Integer;
    function ShowModalRepDist: Integer;
    function ShowModalDisNtArresv: Integer;
    function ShowModalDisNtChqmas: Integer;
    function ShowModalSalHPCS: Integer;
    function ShowModalStkregred: Integer;
    function ShowModalStkdepred: Integer;
    function ShowModalTaxtran: Integer;
    function ShowModalArOthr: Integer;
    function ShowModalSendClaim: Integer;
    function ShowModalInvoiClaim: Integer;
    function ShowModalPaymentClaim: Integer;
  end;

var
  SearchSale: TSearchSale;


  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;

implementation
uses USoftfirm, Dmsec;


{$R *.DFM}

function TSearchSale.ShowModalCuscod: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 0;
  Title[0]  := 'รหัสลูกค้า';
  Title[1]  := 'ชื่อ';
  Title[2]  := 'นามสกุล';
  Title[3]  := 'คำนำหน้า';
  Title[4]  := 'ที่อยู่ที่';

  Fldgrd[0] := 'CUSCOD';
  Fldgrd[1] := 'NAME1';
  Fldgrd[2] := 'NAME2';
  Fldgrd[3] := 'SNAM';
  Fldgrd[4] := 'ADDRNO';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัสลูกค้า';
  Result := ShowModal;
end;

function TSearchSale.ShowModalResv: Integer;
begin
  OrderCombo.Tag := 1;
  Title[0]  := 'เลขใบจอง';
  Title[1]  := 'ชื่อ-นามสกุล';
  Title[2]  := 'เลขตัวถัง';
  Title[3]  := 'สาขา';
  Title[4]  := 'ยอดจอง';
  Title[5]  := 'ชำระแล้ว';
  Title[6]  := 'วันที่ขาย';
  Title[7]  := 'สถานะ';
  Title[8]  := 'วันที่ยกเลิก';
  Title[9]  := 'วันนัดออกรถ';


  Fldgrd[0] := 'RESVNO';
  Fldgrd[1] := 'CUSTNAME';
  Fldgrd[2] := 'STRNO';
  Fldgrd[3] := 'LOCAT';
  Fldgrd[4] := 'RESPAY';
  Fldgrd[5] := 'SMPAY';
  Fldgrd[6] := 'SDATE';
  Fldgrd[7] := 'FLCANCLE';
  Fldgrd[8] := 'FLDT';
  Fldgrd[9] := 'DATING';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help การจองรถ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalStrno: Integer;
begin
  //*** Sales  ****
  OrderCombo.Tag := 2;
  Title[0]  := 'เลขตัวถัง';
  Title[1]  := 'เลขเครื่อง';
  Title[2]  := 'เลขทะเบียน';
  Title[3]  := 'สาขา';
  Title[4]  := 'ยี่ห้อ';
  Title[5]  := 'รุ่น';
  Title[6]  := 'แบบ';
  Title[7]  := 'สี';
  Title[8]  := 'ใหม่/เก่า';
  Title[9]  := 'สถานะ';

  Fldgrd[0] := 'STRNO';
  Fldgrd[1] := 'ENGNO';
  Fldgrd[2] := 'REGNO';
  Fldgrd[3] := 'CRLOCAT';
  Fldgrd[4] := 'TYPE';
  Fldgrd[5] := 'MODEL';
  Fldgrd[6] := 'BAAB';
  Fldgrd[7] := 'COLOR';
  Fldgrd[8] := 'STAT';
  Fldgrd[9] := 'Flag';


  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add(Title[8]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 9;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help เลขตัวถังรถ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalArCred: Integer;
begin
  //*** Sales Arcred ****
  OrderCombo.Tag := 3;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขสัญญา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'สกุล';
  Title[5]  := 'เลขตัวถัง';
  Title[6]  := 'เลขใบจอง';
  Title[7]  := 'เลขทะเบียน';
  Title[8]  := 'เลขที่ใบกำกับ';
  Title[9]  := 'ยอดลดหนี้';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'CONTNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'STRNO';
  Fldgrd[6] := 'RESVNO';
  Fldgrd[7] := 'REGNO';
  Fldgrd[8] := 'TAXNO';
  Fldgrd[9] := 'CRDAMT';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add(Title[8]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 8;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help การขายสด/เชื่อ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalArMast: Integer;
begin
  //*** Sales ****
  OrderCombo.Tag := 4;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขสัญญา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'สกุล';
  Title[5]  := 'เลขตัวถัง';
  Title[6]  := 'เลขใบจอง';
  Title[7]  := 'เลขทะเบียน';
  Title[8]  := 'ค่างวด';
  Title[9]  := 'สถานะสัญญา';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'CONTNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'STRNO';
  Fldgrd[6] := 'RESVNO';
  Fldgrd[7] := 'REGNO';
  Fldgrd[8] := 'T_FUPAY';
  Fldgrd[9] := 'CONTSTAT';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add(Title[8]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help การขายผ่อน/เช่าซื้อ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalArFinc: Integer;
begin
  //*** Sales ****
  OrderCombo.Tag := 5;
  Title[0]  := 'เลขสัญญา';
  Title[1]  := 'บ.ไฟแนนซ์';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'สกุล';
  Title[5]  := 'เลขตัวถัง';
  Title[6]  := 'เลขใบจอง';
  Title[7]  := 'เลขทะเบียน';
  Title[8]  := 'เลขที่ใบกำกับ';
  Title[9] := 'ยอดลดหนี้';


  Fldgrd[0] := 'CONTNO';
  Fldgrd[1] := 'FINCOD';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'STRNO';
  Fldgrd[6] := 'RESVNO';
  Fldgrd[7] := 'REGNO';
  Fldgrd[8] := 'TAXNO';
  Fldgrd[9] := 'CRDAMT';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add(Title[8]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 9;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help สัญญาขายส่งไฟแนนซ์';
  Result := ShowModal;
end;

function TSearchSale.ShowModalArAgen: Integer;
begin
  OrderCombo.Tag := 6;
  Title[0]  := 'เลขสัญญา';
  Title[1]  := 'รหัสลูกค้า';
  Title[2]  := 'ชื่อ';
  Title[3]  := 'สกุล';
  Title[4]  := 'ทะเบียน';
  Title[5]  := 'เลขตัวถัง';
  Title[6]  := 'เลขที่ใบกำกับ';
  Title[7]  := 'ยอดลดหนี้';

  Fldgrd[0] := 'CONTNO';
  Fldgrd[1] := 'CUSCOD';
  Fldgrd[2] := 'NAME1';
  Fldgrd[3] := 'NAME2';
  Fldgrd[4] := 'REGNO';
  Fldgrd[5] := 'STRNO';
  Fldgrd[6] := 'TAXNO';
  Fldgrd[7] := 'CRDAMT';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 7;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help การขายส่งเอเยนต์';
  Result := ShowModal;
end;

function TSearchSale.ShowModalArOptn: Integer;
begin
  OrderCombo.Tag := 7;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขสัญญา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'สกุล';
  Title[5]  := 'ราคาขาย';
  
  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'CONTNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'TOTPRC';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 5;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help สัญญาขายอุปกรณ์เสริม';
  Result := ShowModal;
end;

function TSearchSale.ShowModalArClose: Integer;
begin
  //*** Sales Arcred ****
  OrderCombo.Tag := 8;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขสัญญา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'สกุล';
  Title[5]  := 'เลขตัวถัง';
  Title[6]  := 'เลขใบจอง';
  Title[7]  := 'ประเภทการขาย';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'CONTNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'STRNO';
  Fldgrd[6] := 'RESVNO';
  Fldgrd[7] := 'TSALE';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 8;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help การสัญญาที่ย้ายออกแล้ว';
  Result := ShowModal;
end;

function TSearchSale.ShowModalOptmas: Integer;
begin
  OrderCombo.Tag := 9;
  Title[0]  := 'รหัสอุปกรณ์';
  Title[1]  := 'ชื่ออุปกรณ์';
  Title[2]  := 'สถานที่เก็บ';
  Title[3]  := 'ราคา/หน่วย';
  Title[4]  := 'จำนวนคงเหลือ';

  Fldgrd[0] := 'OPTCODE';
  Fldgrd[1] := 'OPTNAME';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'UNITPRC';
  Fldgrd[4] := 'ONHAND';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 1;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help';
  Result := ShowModal;
end;

function TSearchSale.ShowModalCallCenter: Integer;
begin
  OrderCombo.Tag := 10;
  Title[0]  := 'รหัสลูกค้า';
  Title[1]  := 'คำนำหน้า';
  Title[2]  := 'ชื่อ';
  Title[3]  := 'นามสกุล';
  Title[4]  := 'ชื่อเล่น';
  Title[5]  := 'เลขที่บัตร';
  Title[6]  := 'เกรด';
  Title[7]  := 'เลขสมาชิก';
  Title[8]  := 'เลขที่สัญญา';

  Fldgrd[0] := 'CUSCOD';
  Fldgrd[1] := 'SNAM';
  Fldgrd[2] := 'NAME1';
  Fldgrd[3] := 'NAME2';
  Fldgrd[4] := 'NICKNM';
  Fldgrd[5] := 'IDNO';
  Fldgrd[6] := 'GRADE';
  Fldgrd[7] := 'MEMBCOD';
  Fldgrd[8] := 'CONTNO';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add(Title[8]);

  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalChgContstat: Integer;
begin
  OrderCombo.Tag := 11;
  Title[0]  := 'เลขที่สัญญา';
  Title[1]  := 'วันที่เปลี่ยน';
  Title[2]  := 'สถานะสัญญา';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'เลขตัวถัง';

  Fldgrd[0] := 'CONTNO';
  Fldgrd[1] := 'CHGDATE';
  Fldgrd[2] := 'STATTO';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'STRNO';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help สถานะสัญญา';
  Result := ShowModal;
end;

function TSearchSale.ShowModalCallTran: Integer;
begin
   //*** Sales ****
  OrderCombo.Tag := 12;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขสัญญา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'สกุล';


  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'CONTNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);

  OrderCombo.ItemIndex := 1;
  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;
function TSearchSale.ShowModalHArMast: Integer;
begin
  //*** Sales ****
  OrderCombo.Tag := 13;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขสัญญา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'สกุล';
  Title[5]  := 'เลขตัวถัง';
  Title[6]  := 'เลขใบจอง';
  Title[7]  := 'เลขทะเบียน';
  Title[8]  := 'ค่างวด';
  Title[9]  := 'สถานะสัญญา';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'CONTNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'STRNO';
  Fldgrd[6] := 'RESVNO';
  Fldgrd[7] := 'REGNO';
  Fldgrd[8] := 'T_FUPAY';
  Fldgrd[9] := 'CONTSTAT';
  OrderCombo.Properties.Items.Clear;
//  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add(Title[8]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help การขายผ่อน/เช่าซื้อ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalResvOpt: Integer;
begin
  //*** Sales ****
  OrderCombo.Tag := 14;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขที่ใบจอง';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'สกุล';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'RESVNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.ItemIndex := 1;
  CalcMax;
  OrderComboChange(Nil);
  caption := 'Help รายละเอียดการจองรถ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalResvEdit: Integer;
begin
  //*** Sales ****
  OrderCombo.Tag := 15;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขที่ใบเปลี่ยนแปลง';
  Title[2]  := 'เลขที่ใบจอง';
  Title[3]  := 'รหัสลูกค้า';
  Title[4]  := 'ชื่อ';
  Title[5]  := 'สกุล';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'RESVEDNO';
  Fldgrd[2] := 'RESVNO';
  Fldgrd[3] := 'CUSCOD';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.ItemIndex := 1;
  CalcMax;
  OrderComboChange(Nil);
  caption := 'Help รายละเอียดเปลี่ยนแปลงการจองรถ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalAddArresv: Integer;
begin
  //*** Sales ****
  OrderCombo.Tag := 16;
  Title[0]  := 'เลขที่เอกสาร';
  Title[1]  := 'เลขที่ใบจอง';
  Title[2]  := 'ชื่อ';
  Title[3]  := 'สกุล';

  Fldgrd[0] := 'ADDRESVNO';
  Fldgrd[1] := 'RESVNO';
  Fldgrd[2] := 'NAME1';
  Fldgrd[3] := 'NAME2';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  OrderComboChange(Nil);
  caption := 'Help รายละเอียดเพิ่มเงินจอง';
  Result := ShowModal;
end;

function TSearchSale.ShowModalRepDist: Integer;
begin
  //*** Sales ****
  OrderCombo.Tag := 17;
  Title[0]  := 'เลขที่แจ้ง';
  Title[1]  := 'เลขตัวถัง';
  Title[2]  := 'เลขเครื่อง';
  Title[3]  := 'วันที่แจ้ง';
  Title[4]  := 'Status';

  Fldgrd[0] := 'REPDISTNO';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'ENGNO';
  Fldgrd[3] := 'REPDISTDT';
  Fldgrd[4] := 'STAT';


  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  CalcMax;
  OrderComboChange(Nil);
  caption := 'Help รายละเอียดแจ้งจำหน่ายรถ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalDisNtArresv: Integer;
begin
  //*** Sales ****
  OrderCombo.Tag := 18;
  Title[0]  := 'เลขที่ใบรับชั่วคราว';
  Title[1]  := 'วันที่รับชั่วคราว';
  Title[2]  := 'เลขที่ใบเสร็จ';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'นามสกุล';

  Fldgrd[0] := 'TMBILL';
  Fldgrd[1] := 'TMBILDT';
  Fldgrd[2] := 'BILLNO';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;
  CalcMax;
  OrderComboChange(Nil);
  caption := 'Help ลดหนี้ใบเสร็จเงินจอง';
  Result := ShowModal;
end;

function TSearchSale.ShowModalDisNtChqmas: Integer;
begin
  //*** Sales ****
  OrderCombo.Tag := 19;
  Title[0]  := 'เลขที่ใบลดหนี้';
  Title[1]  := 'วันที่ใบลดหนี้';
  Title[2]  := 'เลขที่ใบเสร็จ';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'นามสกุล';

  Fldgrd[0] := 'TMBILL';
  Fldgrd[1] := 'TMBILDT';
  Fldgrd[2] := 'BILLNO';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;

  CalcMax;
  OrderComboChange(Nil);
  caption := 'Help ลดหนี้ใบเสร็จเงินจอง';
  Result := ShowModal;
end;

function TSearchSale.ShowModalSalHPCS: Integer;
begin
  //*** Sales ****
  OrderCombo.Tag := 20;
  Title[0]  := 'เลขตัวถัง';
  Title[1]  := 'รหัสลูกค้า';
  Title[2]  := 'ชื่อลูกค้า';
  Title[3]  := 'ทะเบียน';
  Title[4]  := 'เลขที่สัญญา';
  Title[5]  := 'ประเภทการขาย';

  Fldgrd[0] := 'STRNO';
  Fldgrd[1] := 'CUSCOD';
  Fldgrd[2] := 'CUSTNAME';
  Fldgrd[3] := 'REGNO';
  Fldgrd[4] := 'CONTNO';
  Fldgrd[5] := 'TSALE';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  OrderComboChange(Nil);
  caption := 'Help ข้อมูลการขาย';
  Result := ShowModal;
end;

function TSearchSale.ShowModalStkregred: Integer;
Begin
  //*** Set Up ****
  OrderCombo.Tag := 21;
  Title[0]  := 'เลขทะเบียนป้ายแดง';
  Title[1]  := 'สถานะการลดหนี้';
  Title[2]  := 'เลขที่คู่มือ';
  Title[3]  := 'เลขตัวถัง';
  Title[4]  := 'รหัสลูกค้า';
  Title[5]  := 'ชื่อ-สกุล';

  Fldgrd[0] := 'REGNO';
  Fldgrd[1] := 'STATDEP';
  Fldgrd[2] := 'REGRED';
  Fldgrd[3] := 'STRNO';
  Fldgrd[4] := 'CUSCOD';
  Fldgrd[5] := 'CUSTNAME';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหาข้อมูลบันทึกมัดจำป้ายแดง';
  Result := ShowModal;
end;

function TSearchSale.ShowModalStkdepred: Integer;
Begin
  //*** Set Up ****
  OrderCombo.Tag := 22;
  Title[0]  := 'เอกสารลดหนี้';
  Title[1]  := 'เลขตัวถังรถ';
  Title[2]  := 'เลขทะเบียน';
  Title[3]  := 'เลขที่คู่มือ';

  Fldgrd[0] := 'DEPRED';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'REGNO';
  Fldgrd[3] := 'REGRED';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหาข้อมูลลดหนี้เงินมัดจำ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalTaxtran: Integer;
Begin
  //*** Set Up ****
  OrderCombo.Tag := 23;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'วันที่ใบกำกับ';
  Title[2]  := 'เลขที่สัญญา';
  Title[3]  := 'เลขตัวถัง';
  Title[4]  := 'มูลค่า';
  Title[5]  := 'ภาษี';
  Title[6]  := 'ราคารวม';
  Title[7]  := 'สถานะ';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDT';
  Fldgrd[2] := 'CONTNO';
  Fldgrd[3] := 'STRNO';
  Fldgrd[4] := 'NETAMT';
  Fldgrd[5] := 'VATAMT';
  Fldgrd[6] := 'TOTAMT';
  Fldgrd[7] := 'FLCANCL';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหาข้อมูลลดหนี้เงินมัดจำ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalArOthr: Integer;
begin
  OrderCombo.Tag := 24;
  Title[0]  := 'สาขา';
  Title[1]  := 'ลูกหนี้อื่น';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'สกุล';
  Title[5]  := 'เลขสัญญา';
  Title[6]  := 'ประเภทการขาย';
  Title[7]  := 'จำนวนเงิน';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'ARCONT';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'CONTNO';
  Fldgrd[6] := 'TSALE';
  Fldgrd[7] := 'PAYAMT';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหาลูกหนี้อื่น ';
  Result := ShowModal;
end;

function TSearchSale.ShowModalSendClaim: Integer;
Begin
  OrderCombo.Tag := 25;
  Title[0]  := 'รหัสสาขา';
  Title[1]  := 'เลขที่สัญญา';
  Title[2]  := 'เลขที่รายงาน';
  Title[3]  := 'วันที่รายงาน';
  Title[4]  := 'รายละเอียดลูกค้า';
  Title[5]  := 'เลขตัวถัง';
  Title[6]  := 'การขาย';
  Title[7]  := 'รายละเอียดเคลม';
  Title[8]  := 'ยอดเงินเคลม';
  Title[9]  := 'สถานะ';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'CONTNO';
  Fldgrd[2] := 'REPNO';
  Fldgrd[3] := 'REPDATE';
  Fldgrd[4] := 'CUSTNAME';
  Fldgrd[5] := 'STRNO';
  Fldgrd[6] := 'TSALE';
  Fldgrd[7] := 'CLAIMDESC';
  Fldgrd[8] := 'CLAIMAMT';
  Fldgrd[9] := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหาข้อมูลขออนุมัติเคลม';
  Result := ShowModal;
end;

function TSearchSale.ShowModalInvoiClaim: Integer;
Begin
  OrderCombo.Tag := 26;
  Title[0]  := 'รหัสสาขา';
  Title[1]  := 'เลขที่ใบส่ง';
  Title[2]  := 'วันที่ใบส่ง';
  Title[3]  := 'เลขที่อนุมัติ';
  Title[4]  := 'รายละเอียดลูกค้า';
  Title[5]  := 'ยอดเคลม';
  Title[6]  := 'ยอดอนุมัติ';
  Title[7]  := 'ส่วนต่าง';
  Title[8]  := 'ชำระแล้ว';
  Title[9]  := 'สถานะ';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'INVNO';
  Fldgrd[2] := 'INVDATE';
  Fldgrd[3] := 'CLAIMNO';
  Fldgrd[4] := 'CUSTNAME';
  Fldgrd[5] := 'CLAIMAMT';
  Fldgrd[6] := 'PAYAMT';
  Fldgrd[7] := 'DIFAMT';
  Fldgrd[8] := 'SMPAY';
  Fldgrd[9] := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหาข้อมูลใบส่งสินค้าตั้งหนี้งานเคลม';
  Result := ShowModal;
end;

function TSearchSale.ShowModalPaymentClaim: Integer;
Begin
  OrderCombo.Tag := 27;
  Title[0]  := 'รหัสสาขา';
  Title[1]  := 'เลขที่ใบรับ';
  Title[2]  := 'วันที่ใบรับ';
  Title[3]  := 'เลขที่อ้างอิง';
  Title[4]  := 'รายละเอียดลูกค้า';
  Title[5]  := 'ยอดเคลม';
  Title[6]  := 'ยอดอนุมัติ';
  Title[7]  := 'หัก ณ ที่จ่าย';
  Title[8]  := 'จำนวนสุทธิ';
  Title[9]  := 'สถานะ';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'BILLNO';
  Fldgrd[2] := 'BILLDATE';
  Fldgrd[3] := 'REFNO';
  Fldgrd[4] := 'CUSTNAME';
  Fldgrd[5] := 'CLAIMAMT';
  Fldgrd[6] := 'PAYAMT';
  Fldgrd[7] := 'VAT3AMT';
  Fldgrd[8] := 'PAYMENT';
  Fldgrd[9] := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหาข้อมูลใบรับเงินตัดลูกหนี้งานเคลม';
  Result := ShowModal;
end;

function TSearchSale.GetKeyno: string;
begin
  If HQuery1.Active Then
  Case OrderCombo.Tag Of
    0 :Result := HQuery1.Fieldbyname('CUSCOD').Asstring;
    1 :Result := HQuery1.Fieldbyname('RESVNO').Asstring;
    2 :Result := HQuery1.Fieldbyname('STRNO').Asstring;
    3 :Result := HQuery1.Fieldbyname('CONTNO').Asstring;
    4 :Result := HQuery1.Fieldbyname('CONTNO').Asstring;
    5 :Result := HQuery1.Fieldbyname('CONTNO').Asstring;
    6 :Result := HQuery1.Fieldbyname('CONTNO').Asstring;
    7 :Result := HQuery1.Fieldbyname('CONTNO').Asstring;
    8 :Result := HQuery1.Fieldbyname('CONTNO').Asstring;
    9 :Result := HQuery1.Fieldbyname('OPTCODE').Asstring;
   10 :Result := HQuery1.Fieldbyname('CUSCOD').Asstring;
   11 :Result := HQuery1.Fieldbyname('CONTNO').Asstring;
   12 :Result := HQuery1.Fieldbyname('CONTNO').Asstring;
   13 :Result := HQuery1.Fieldbyname('CONTNO').Asstring;
   14 :Result := HQuery1.fieldbyname('RESVNO').AsString;
   15 :Result := HQuery1.fieldbyname('RESVEDNO').AsString;
   16 :Result := HQuery1.fieldbyname('ADDRESVNO').AsString;
   17 :Result := HQuery1.fieldbyname('REPDISTNO').AsString;
   18 :Result := HQuery1.fieldbyname('TMBILL').AsString;
   19 :Result := HQuery1.fieldbyname('TMBILL').AsString;
   20 :Result := HQuery1.fieldbyname('CONTNO').AsString;
   21 :Result := HQuery1.fieldbyname('REGRED').AsString;
   22 :Result := HQuery1.fieldbyname('DEPRED').AsString;
   23 :Result := HQuery1.fieldbyname('TAXNO').AsString;
   24 :Result := HQuery1.fieldbyname('ARCONT').AsString;
   25 :Result := HQuery1.fieldbyname('REPNO').AsString;
   26 :Result := HQuery1.fieldbyname('INVNO').AsString;
   27 :Result := HQuery1.fieldbyname('BILLNO').AsString;
  end;
end;

procedure TSearchSale.SearchButtonClick(Sender: TObject);
Var SqlTxt:String;
begin
  With HQuery1 Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
    0:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST WHERE NAME1 LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST WHERE NAME2 LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST '+
                 'WHERE ((NAME2 LIKE :EDIT1) or (CUSCOD LIKE :EDIT1) or (NAME1 LIKE :EDIT1)) ORDER BY CUSCOD');
      end;
      
    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT A.LOCAT,A.RESVNO,A.RESVDT,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.STRNO,A.SDATE,A.RESPAY,A.SMPAY,A.FLCANCLE,'+
                 'A.FLDT,A.DATING FROM ARRESV A,VIEW_CUST B '+
                 'WHERE A.RESVNO LIKE :0 AND A.LOCAT LIKE :1 AND A.CUSCOD=B.CUSCOD AND A.FLCANCLE LIKE :2 '+ResvSale+' ORDER BY A.RESVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT A.LOCAT,A.RESVNO,A.RESVDT,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.STRNO,A.SDATE,A.RESPAY,A.SMPAY,A.FLCANCLE,'+
                 'A.FLDT,A.DATING FROM ARRESV A,VIEW_CUST B '+
                 'WHERE B.CUSTNAME LIKE :0 AND A.LOCAT LIKE :1 AND A.CUSCOD=B.CUSCOD AND A.FLCANCLE LIKE :2 '+ResvSale+' ORDER BY A.RESVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT A.LOCAT,A.RESVNO,A.RESVDT,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.STRNO,A.SDATE,A.RESPAY,A.SMPAY,A.FLCANCLE,'+
                 'A.FLDT,A.DATING FROM ARRESV A,VIEW_CUST B '+
                 'WHERE A.STRNO LIKE :0 AND A.LOCAT LIKE :1 AND A.CUSCOD=B.CUSCOD  AND A.FLCANCLE LIKE :2 '+ResvSale+' ORDER BY A.RESVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT A.LOCAT,A.RESVNO,A.RESVDT,A.STRNO,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.SDATE,A.RESPAY,A.SMPAY,A.FLCANCLE,'+
                 'A.FLDT,A.DATING FROM ARRESV A,VIEW_CUST B  WHERE ((A.STRNO LIKE :0) or (B.CUSTNAME LIKE :0) '+
                 'or (A.RESVNO LIKE :0)) AND A.LOCAT LIKE :1  AND A.CUSCOD=B.CUSCOD AND A.FLCANCLE LIKE :2 '+ResvSale+' ORDER BY A.RESVDT DESC '+cbViewdata.EditValue);
      end;
    2:begin
        Sqltxt:='SELECT STRNO,ENGNO,REGNO,CRLOCAT,TYPE,MODEL,BAAB,COLOR,CC,STAT,FLAG,VATRT FROM INVTRAN WHERE ';
        If OrderCombo.Itemindex=0 Then
        SQL .ADD(Sqltxt+' STRNO LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND CRLOCAT LIKE :3 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL .ADD(Sqltxt+' ENGNO LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND CRLOCAT LIKE :3  ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL .ADD(Sqltxt+' REGNO LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND CRLOCAT LIKE :3  ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL .ADD(Sqltxt+' CRLOCAT LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND CRLOCAT LIKE :3  ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL .ADD(Sqltxt+' TYPE LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND CRLOCAT LIKE :3  ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL .ADD(Sqltxt+' MODEL LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND CRLOCAT LIKE :3  ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL .ADD(Sqltxt+' BAAB LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND CRLOCAT LIKE :3  ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=7 Then
        SQL .ADD(Sqltxt+' COLOR LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND CRLOCAT LIKE :3  ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=8 Then
        SQL .ADD(Sqltxt+' STAT LIKE :EDIT1 AND FLAG LIKE :EDIT2 AND CRLOCAT LIKE :3  ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=9 Then
        SQL .ADD(Sqltxt+' ((STAT LIKE :EDIT1) or (STRNO LIKE :EDIT1) or (ENGNO LIKE :EDIT1) or (REGNO LIKE :EDIT1) '+
                          'or (CRLOCAT LIKE :EDIT1) or (TYPE LIKE :EDIT1) or (MODEL LIKE :EDIT1) or (BAAB LIKE :EDIT1) or (COLOR LIKE :EDIT1)) '+
                          'AND FLAG LIKE :EDIT2 AND CRLOCAT LIKE :3  ORDER BY RECVDT DESC '+cbViewdata.EditValue);
      end;
    3:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARCRED A,CUSTMAST C,INVTRAN I '+
                'WHERE A.CONTNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARCRED A,CUSTMAST C,INVTRAN I '+
                'WHERE A.CUSCOD LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARCRED A,CUSTMAST C,INVTRAN I '+
                'WHERE C.NAME1 LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARCRED A,CUSTMAST C,INVTRAN I '+
                'WHERE C.NAME2 LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO FROM ARCRED A,CUSTMAST C,INVTRAN I '+
                'WHERE A.STRNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARCRED A,CUSTMAST C,INVTRAN I '+
                'WHERE A.ResvNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARCRED A,CUSTMAST C,INVTRAN I '+
                'WHERE I.REGNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.ItemIndex=7 Then
        SQL.Add('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARCRED A,CUSTMAST C,INVTRAN I '+
                'WHERE A.TAXNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.ItemIndex=8 Then
        SQL.Add('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARCRED A,CUSTMAST C,INVTRAN I '+
                'WHERE ((A.TAXNO LIKE :EDIT1) or (A.CONTNO LIKE :EDIT1) or (A.CUSCOD LIKE :EDIT1) or (C.NAME1 LIKE :EDIT1) '+
                'or (C.NAME2 LIKE :EDIT1) or (A.STRNO LIKE :EDIT1) or (A.ResvNO LIKE :EDIT1) or (I.REGNO LIKE :EDIT1)) '+
                'AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
      end;
    4:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT  FROM ARMAST A,CUSTMAST C,INVTRAN I '+
                'WHERE A.CONTNO LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT  FROM ARMAST A,CUSTMAST C,INVTRAN I '+
                'WHERE A.CUSCOD LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT  FROM ARMAST A,CUSTMAST C,INVTRAN I '+
                'WHERE C.NAME1 LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT  FROM ARMAST A,CUSTMAST C,INVTRAN I '+
                'WHERE C.NAME2 LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT FROM ARMAST A,CUSTMAST C,INVTRAN I '+
                'WHERE A.STRNO LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT  FROM ARMAST A,CUSTMAST C,INVTRAN I '+
                'WHERE A.RESVNO LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO');
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT FROM ARMAST A,CUSTMAST C,INVTRAN I '+
                'WHERE I.REGNO LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO');
        If OrderCombo.Itemindex=7 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT FROM ARMAST A,CUSTMAST C,INVTRAN I '+
                'WHERE A.T_FUPAY=:EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO');

      end;
    5:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.FINCOD,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARFINC A,CUSTMAST C,INVTRAN I '+
                'WHERE A.CONTNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.FINCOD,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARFINC A,CUSTMAST C,INVTRAN I '+
                'WHERE A.FINCOD LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.FINCOD,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARFINC A,CUSTMAST C,INVTRAN I '+
                'WHERE A.CUSCOD LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.FINCOD,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARFINC A,CUSTMAST C,INVTRAN I '+
                'WHERE C.NAME1 LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.FINCOD,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARFINC A,CUSTMAST C,INVTRAN I '+
                'WHERE C.NAME2 LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.FINCOD,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARFINC A,CUSTMAST C,INVTRAN I '+
                'WHERE A.STRNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.FINCOD,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARFINC A,CUSTMAST C,INVTRAN I '+
                'WHERE A.ResvNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO'+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=7 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.FINCOD,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARFINC A,CUSTMAST C,INVTRAN I '+
                'WHERE I.REGNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO '+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.ItemIndex=8 Then
        SQL.Add('SELECT A.LOCAT,A.CONTNO,A.FINCOD,A.CUSCOD,C.NAME1,C.NAME2, '+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARFINC A,CUSTMAST C,INVTRAN I '+
                'WHERE A.TAXNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO '+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.ItemIndex=9 Then
        SQL.Add('SELECT A.LOCAT,A.CONTNO,A.FINCOD,A.CUSCOD,C.NAME1,C.NAME2, '+
                'A.STRNO,A.RESVNO,A.CRDAMT,I.REGNO,A.TAXNO FROM ARFINC A,CUSTMAST C,INVTRAN I '+
                'WHERE ((A.TAXNO LIKE :EDIT1) or (A.CONTNO LIKE :EDIT1) or (A.FINCOD LIKE :EDIT1) or (A.CUSCOD LIKE :EDIT1) '+
                'or (C.NAME1 LIKE :EDIT1) or (C.NAME2 LIKE :EDIT1) or (A.STRNO LIKE :EDIT1) or (A.ResvNO LIKE :EDIT1) or (I.REGNO LIKE :EDIT1)) AND A.LOCAT LIKE :EDIT2 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO '+STaxDt+
                ' ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
      end;
    6:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.TOTPRC,A.CRDAMT,A.TAXNO FROM AR_INVOI A,CUSTMAST C '+
                'WHERE A.CONTNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.TOTPRC,A.CRDAMT,A.TAXNO FROM AR_INVOI A,CUSTMAST C '+
                'WHERE A.CUSCOD LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.TOTPRC,A.CRDAMT,A.TAXNO FROM AR_INVOI A,CUSTMAST C '+
                'WHERE C.NAME1 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.TOTPRC,A.CRDAMT,A.TAXNO FROM AR_INVOI A,CUSTMAST C '+
                'WHERE C.NAME2 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.TOTPRC,A.CRDAMT,I.STRNO,I.REGNO,A.TAXNO FROM AR_INVOI A,CUSTMAST C,INVTRAN I '+
                'WHERE A.CONTNO=I.CONTNO AND I.REGNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.TOTPRC,A.CRDAMT,I.STRNO,I.REGNO,A.TAXNO FROM AR_INVOI A,CUSTMAST C,INVTRAN I '+
                'WHERE A.CONTNO=I.CONTNO AND I.STRNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.ItemIndex=6 Then
        SQL.Add('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.TOTPRC,A.CRDAMT,A.TAXNO FROM AR_INVOI A,CUSTMAST C '+
                'WHERE A.TAXNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=7 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.TOTPRC,A.CRDAMT,I.STRNO,I.REGNO,A.TAXNO FROM AR_INVOI A,CUSTMAST C,INVTRAN I '+
                'WHERE A.CONTNO=I.CONTNO AND ((I.STRNO LIKE :EDIT1) or (A.TAXNO LIKE :EDIT1) or (I.REGNO LIKE :EDIT1) or (C.NAME2 LIKE :EDIT1) '+
                'or (C.NAME1 LIKE :EDIT1) or (A.CUSCOD LIKE :EDIT1) or (A.CONTNO LIKE :EDIT1)) AND A.CUSCOD=C.CUSCOD '+
                'ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
      end;
    7:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.OPTPTOT FROM AROPTMST A,CUSTMAST C '+
                'WHERE A.LOCAT LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.OPTPTOT FROM AROPTMST A,CUSTMAST C '+
                'WHERE A.CONTNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.OPTPTOT FROM AROPTMST A,CUSTMAST C '+
                'WHERE A.CUSCOD LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.OPTPTOT FROM AROPTMST A,CUSTMAST C '+
                'WHERE C.NAME1 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.OPTPTOT FROM AROPTMST A,CUSTMAST C '+
                'WHERE C.NAME2 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,'+
                'A.OPTPTOT FROM AROPTMST A,CUSTMAST C '+
                'WHERE ((C.NAME2 LIKE :EDIT1) or (A.LOCAT LIKE :EDIT1) or (A.CONTNO LIKE :EDIT1) '+
                'or (A.CUSCOD LIKE :EDIT1) or (C.NAME1 LIKE :EDIT1)) AND A.CUSCOD=C.CUSCOD ORDER BY A.SDATE DESC '+cbViewdata.EditValue);
      end;
    8:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT LOCAT,CONTNO,CUSCOD,NAME1,NAME2,'+
                'STRNO,TSALE FROM ARCLOSE '+
                'WHERE LOCAT LIKE :EDIT1 ORDER BY SDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT LOCAT,CONTNO,CUSCOD,NAME1,NAME2,'+
                'STRNO,TSALE FROM ARCLOSE '+
                'WHERE CONTNO LIKE :EDIT1 ORDER BY SDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT LOCAT,CONTNO,CUSCOD,NAME1,NAME2,'+
                'STRNO,TSALE FROM ARCLOSE '+
                'WHERE CUSCOD LIKE :EDIT1 ORDER BY SDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT LOCAT,CONTNO,CUSCOD,NAME1,NAME2,'+
                'STRNO,TSALE FROM ARCLOSE '+
                'WHERE NAME1 LIKE :EDIT1 ORDER BY SDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT LOCAT,CONTNO,CUSCOD,NAME1,NAME2,'+
                'STRNO,TSALE FROM ARCLOSE '+
                'WHERE NAME2 LIKE :EDIT1 ORDER BY SDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT LOCAT,CONTNO,CUSCOD,NAME1,NAME2,'+
                'STRNO,TSALE FROM ARCLOSE '+
                'WHERE STRNO LIKE :EDIT1 ORDER BY SDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT LOCAT,CONTNO,CUSCOD,NAME1,NAME2,'+
                'STRNO,TSALE FROM ARCLOSE  '+
                'WHERE ResvNO LIKE :EDIT1 ORDER BY SDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=7 Then
        SQL.ADD('SELECT LOCAT,CONTNO,CUSCOD,NAME1,NAME2,'+
                'STRNO,TSALE FROM ARCLOSE  '+
                'WHERE TSALE LIKE :EDIT1 ORDER BY SDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=8 Then
        SQL.ADD('SELECT LOCAT,CONTNO,CUSCOD,NAME1,NAME2,'+
                'STRNO,TSALE FROM ARCLOSE  '+
                'WHERE ((TSALE LIKE :EDIT1) or (LOCAT LIKE :EDIT1) or (CONTNO LIKE :EDIT1) '+
                'or (CUSCOD LIKE :EDIT1) or (NAME1 LIKE :EDIT1) or (NAME2 LIKE :EDIT1) or (STRNO LIKE :EDIT1) '+
                'or (ResvNO LIKE :EDIT1)) ORDER BY SDATE '+cbViewdata.EditValue);
      end;
    9:begin
        If OrderCombo.Itemindex=0 Then
           Sql.add('SELECT OPTCODE,OPTNAME,LOCAT,UNITPRC,UNITCST,ONHAND FROM OPTMAST WHERE OPTCODE LIKE:EDIT1 AND LOCAT LIKE:EDIT2');
        If OrderCombo.Itemindex=1 Then
           Sql.add('SELECT OPTCODE,OPTNAME,LOCAT,UNITPRC,UNITCST,ONHAND FROM OPTMAST WHERE OPTNAME LIKE:EDIT1 AND LOCAT LIKE:EDIT2');
      end;
   10:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST WHERE CUSCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST WHERE NAME1 LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST WHERE NAME2 LIKE :EDIT1');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST WHERE NICKNM LIKE :EDIT1');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST WHERE IDNO LIKE :EDIT1');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST WHERE MEMBCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=6 Then
        sql.Add(' Select a.cuscod,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD,a.contno'
           +' From Armast a,Custmast b '
           +' Where contno like :EDIT1 and a.cuscod=b.cuscod'

           +' union '

           +' Select a.cuscod,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD,a.contno'
           +' From HArmast a,Custmast b '
           +' Where contno like :EDIT1 and a.cuscod=b.cuscod '

           +' union '

           +' Select a.cuscod,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD,a.contno'
           +' From ArCred a,Custmast b '
           +' Where contno like :EDIT1 and a.cuscod=b.cuscod  '

           +' union '

           +' Select a.cuscod,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD,a.contno'
           +' From HArCred a,Custmast b '
           +' Where contno like :EDIT1 and a.cuscod=b.cuscod '

           +' union '

           +' Select a.cuscod,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD,a.contno'
           +' From ArFinc a,Custmast b '
           +' Where contno like :EDIT1 and a.cuscod=b.cuscod '

           +' union '

           +' Select a.cuscod,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD,a.contno'
           +' From HArFinc a,Custmast b '
           +' Where contno like :EDIT1 and a.cuscod=b.cuscod '

           +' union '

           +' Select a.cuscod,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD,a.contno'
           +' From Ar_Invoi a,Custmast b '
           +' Where contno like :EDIT1 and a.cuscod=b.cuscod '

           +' union '

           +' Select a.cuscod,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD,a.contno'
           +' From HAr_Invo a,Custmast b '
           +' Where contno like :EDIT1 and a.cuscod=b.cuscod '


           );
      end;
   11 :begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT A.CONTNO,MAX(A.CHGDATE) AS CHGDATE,A.STATFRM,A.STATTO,C.STRNO,B.NAME1,B.NAME2 FROM STATTRAN A,CUSTMAST B,ARMAST C '+
                 'WHERE A.CONTNO LIKE :EDIT1 AND A.CONTNO=C.CONTNO AND C.CUSCOD=B.CUSCOD '+
                 'GROUP BY A.CONTNO,A.STATFRM,A.STATTO,C.STRNO,B.NAME1,B.NAME2');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT A.CONTNO,MAX(A.CHGDATE) AS CHGDATE,A.STATFRM,A.STATTO,C.STRNO,B.NAME1,B.NAME2 FROM STATTRAN A,CUSTMAST B,ARMAST C '+
                 'WHERE A.STATTO LIKE :EDIT1 AND A.CONTNO=C.CONTNO AND C.CUSCOD=B.CUSCOD '+
                 'GROUP BY A.CONTNO,A.STATFRM,A.STATTO,C.STRNO,B.NAME1,B.NAME2');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT A.CONTNO,MAX(A.CHGDATE) AS CHGDATE,A.STATFRM,A.STATTO,C.STRNO,B.NAME1,B.NAME2 FROM STATTRAN A,CUSTMAST B,ARMAST C '+
                 'WHERE A.STRNO LIKE :EDIT1 AND A.CONTNO=C.CONTNO AND C.CUSCOD=B.CUSCOD '+
                 'GROUP BY A.CONTNO,A.STATFRM,A.STATTO,C.STRNO,B.NAME1,B.NAME2');
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT A.CONTNO,MAX(A.CHGDATE) AS CHGDATE,A.STATFRM,A.STATTO,C.STRNO,B.NAME1,B.NAME2 FROM STATTRAN A,CUSTMAST B,ARMAST C '+
                 'WHERE A.NAME1 LIKE :EDIT1 AND A.CONTNO=C.CONTNO AND C.CUSCOD=B.CUSCOD '+
                 'GROUP BY A.CONTNO,A.STATFRM,A.STATTO,C.STRNO,B.NAME1,B.NAME2');
      end;
    12:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARMAST A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.LOCAT LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARMAST A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.LOCAT LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARCRED A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.LOCAT LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARCRED A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.LOCAT LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARFINC A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.LOCAT LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARFINC A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.LOCAT LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM AR_INVOI A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.LOCAT LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HAR_INVO A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.LOCAT LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '


                );

        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARMAST A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CONTNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARMAST A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CONTNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARCRED A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CONTNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARCRED A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CONTNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARFINC A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CONTNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARFINC A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CONTNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM AR_INVOI A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CONTNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HAR_INVO A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CONTNO LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '


                );

        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARMAST A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CUSCOD LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARMAST A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CUSCOD LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARCRED A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CUSCOD LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARCRED A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CUSCOD LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARFINC A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CUSCOD LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARFINC A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CUSCOD LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM AR_INVOI A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CUSCOD LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HAR_INVO A,CUSTMAST C,TRANCALL T '+
                ' WHERE A.CUSCOD LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '


                );

        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARMAST A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME1 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARMAST A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME1 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARCRED A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME1 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARCRED A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME1 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARFINC A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME1 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARFINC A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME1 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM AR_INVOI A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME1 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HAR_INVO A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME1 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '


                );
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARMAST A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME2 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARMAST A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME2 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARCRED A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME2 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARCRED A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME2 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM ARFINC A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME2 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HARFINC A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME2 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM AR_INVOI A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME2 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '

               +' Union '

               +'SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2'+
                ' FROM HAR_INVO A,CUSTMAST C,TRANCALL T '+
                ' WHERE C.NAME2 LIKE :EDIT1 AND A.CUSCOD=C.CUSCOD AND A.CONTNO=T.CONTNO '
                );
      end;
     13:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT  FROM HARMAST A,CUSTMAST C,HINVTRAN I '+
                'WHERE A.CONTNO LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO AND A.CONTNO=I.CONTNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT  FROM HARMAST A,CUSTMAST C,HINVTRAN I '+
                'WHERE A.CUSCOD LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO AND A.CONTNO=I.CONTNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT  FROM HARMAST A,CUSTMAST C,HINVTRAN I '+
                'WHERE C.NAME1 LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO AND A.CONTNO=I.CONTNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT  FROM HARMAST A,CUSTMAST C,HINVTRAN I '+
                'WHERE C.NAME2 LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO AND A.CONTNO=I.CONTNO');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT FROM HARMAST A,CUSTMAST C,HINVTRAN I '+
                'WHERE A.STRNO LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO AND A.CONTNO=I.CONTNO');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT  FROM HARMAST A,CUSTMAST C,HINVTRAN I '+
                'WHERE A.RESVNO LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO AND A.CONTNO=I.CONTNO');
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT FROM HARMAST A,CUSTMAST C,HINVTRAN I '+
                'WHERE I.REGNO LIKE :EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO AND A.CONTNO=I.CONTNO');
        If OrderCombo.Itemindex=7 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.CUSCOD,C.NAME1,C.NAME2,A.T_FUPAY,'+
                'A.STRNO,A.RESVNO,I.REGNO,A.CONTSTAT FROM HARMAST A,CUSTMAST C,HINVTRAN I '+
                'WHERE A.T_FUPAY=:EDIT1 AND A.YSTAT LIKE :EDIT2 AND A.LOCAT LIKE :3 AND A.CUSCOD=C.CUSCOD AND A.STRNO=I.STRNO AND A.CONTNO=I.CONTNO');
       end;
      14:Begin
          If OrderCombo.ItemIndex=0 Then
          SQL.Add('SELECT R.LOCAT,R.RESVNO,R.RESCOD,R.SALCOD,R.GRPCOD,R.TYPE,R.MODEL,R.BAAB, '+
                  'R.COLOR,R.CC,R.TOTPRC,R.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM TRESERV R,CUSTMAST C WHERE R.LOCAT LIKE :EDIT1 AND R.FLAG LIKE :EDIT2 AND R.CUSCOD=C.CUSCOD');          //
          If OrderCombo.ItemIndex=1 Then
          SQL.Add('SELECT R.LOCAT,R.RESVNO,R.RESCOD,R.SALCOD,R.GRPCOD,R.TYPE,R.MODEL,R.BAAB, '+
                  'R.COLOR,R.CC,R.TOTPRC,R.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM TRESERV R,CUSTMAST C WHERE R.RESVNO LIKE :EDIT1 AND R.FLAG LIKE :EDIT2 AND R.CUSCOD=C.CUSCOD');
          If OrderCombo.ItemIndex=2 Then
          SQL.Add('SELECT R.LOCAT,R.RESVNO,R.RESCOD,R.SALCOD,R.GRPCOD,R.TYPE,R.MODEL,R.BAAB, '+
                  'R.COLOR,R.CC,R.TOTPRC,R.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM TRESERV R,CUSTMAST C WHERE R.CUSCOD LIKE :EDIT1 AND R.FLAG LIKE :EDIT2 AND R.CUSCOD=C.CUSCOD');
          If OrderCombo.ItemIndex=3 Then
          SQL.Add('SELECT R.LOCAT,R.RESVNO,R.RESCOD,R.SALCOD,R.GRPCOD,R.TYPE,R.MODEL,R.BAAB, '+
                  'R.COLOR,R.CC,R.TOTPRC,R.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM TRESERV R,CUSTMAST C WHERE C.NAME1 LIKE :EDIT1 AND R.FLAG LIKE :EDIT2 AND  R.CUSCOD=C.CUSCOD');
          If OrderCombo.ItemIndex=4 Then
          SQL.Add('SELECT R.LOCAT,R.RESVNO,R.RESCOD,R.SALCOD,R.GRPCOD,R.TYPE,R.MODEL,R.BAAB, '+
                  'R.COLOR,R.CC,R.TOTPRC,R.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM TRESERV R,CUSTMAST C WHERE C.NAME2 LIKE :EDIT1 AND R.FLAG LIKE :EDIT2 AND R.CUSCOD=C.CUSCOD');
         end;
      15:Begin
          If OrderCombo.ItemIndex=0 Then
          SQL.Add('SELECT T.LOCAT,T.RESVEDNO,T.RESVNO,T.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM TRESERVED T,CUSTMAST C WHERE T.LOCAT LIKE :EDIT1 AND T.CUSCOD=C.CUSCOD');
          If OrderCombo.ItemIndex=1 Then
          SQL.Add('SELECT T.LOCAT,T.RESVEDNO,T.RESVNO,T.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM TRESERVED T,CUSTMAST C WHERE T.RESVEDNO LIKE :EDIT1 AND T.CUSCOD=C.CUSCOD');
          If OrderCombo.ItemIndex=2 Then
          SQL.Add('SELECT T.LOCAT,T.RESVEDNO,T.RESVNO,T.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM TRESERVED T,CUSTMAST C WHERE T.RESVNO LIKE :EDIT1 AND T.CUSCOD=C.CUSCOD');
          If OrderCombo.ItemIndex=3 Then
          SQL.Add('SELECT T.LOCAT,T.RESVEDNO,T.RESVNO,T.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM TRESERVED T,CUSTMAST C WHERE T.CUSCOD LIKE :EDIT1 AND T.CUSCOD=C.CUSCOD');
          If OrderCombo.ItemIndex=4 Then
          SQL.Add('SELECT T.LOCAT,T.RESVEDNO,T.RESVNO,T.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM TRESERVED T,CUSTMAST C WHERE C.NAME1 LIKE :EDIT1 AND T.CUSCOD=C.CUSCOD');
          If OrderCombo.ItemIndex=5 Then
          SQL.Add('SELECT T.LOCAT,T.RESVEDNO,T.RESVNO,T.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM TRESERVED T,CUSTMAST C WHERE C.NAME2 LIKE :EDIT1 AND T.CUSCOD=C.CUSCOD');
        end;
      16:Begin
         If OrderCombo.ItemIndex=0 Then
         SQL.Add('SELECT A.ADDRESVNO,A.RESVNO,A.CUSCOD,C.NAME1,C.NAME2,A.ADDRESPAY '+
                 'FROM ADDRESERV A,CUSTMAST C WHERE A.CUSCOD=C.CUSCOD AND A.ADDRESVNO LIKE :EDIT1');
         If OrderCombo.ItemIndex=1 Then
         SQL.Add('SELECT A.ADDRESVNO,A.RESVNO,A.CUSCOD,C.NAME1,C.NAME2,A.ADDRESPAY '+
                 'FROM ADDRESERV A,CUSTMAST C WHERE A.CUSCOD=C.CUSCOD AND A.RESVNO LIKE :EDIT1');
         If OrderCombo.ItemIndex=2 Then
         SQL.Add('SELECT A.ADDRESVNO,A.RESVNO,A.CUSCOD,C.NAME1,C.NAME2,A.ADDRESPAY '+
                 'FROM ADDRESERV A,CUSTMAST C WHERE A.CUSCOD=C.CUSCOD AND C.NAME1 LIKE :EDIT1');
         If OrderCombo.ItemIndex=3 Then
         SQL.Add('SELECT A.ADDRESVNO,A.RESVNO,A.CUSCOD,C.NAME1,C.NAME2,A.ADDRESPAY '+
                 'FROM ADDRESERV A,CUSTMAST C WHERE A.CUSCOD=C.CUSCOD AND C.NAME2 LIKE :EDIT1');
        end;
      17:Begin
         If OrderCombo.ItemIndex=0 Then
         SQL.Add('SELECT REPDISTNO,STRNO,ENGNO,REPDISTDT,STAT FROM REPDIST '+
                 'WHERE REPDISTNO LIKE :EDIT1 ORDER BY REPDISTDT DESC '+cbViewdata.EditValue);
         If orderCombo.ItemIndex=1 Then
         SQL.Add('SELECT REPDISTNO,STRNO,ENGNO,REPDISTDT,STAT FROM REPDIST '+
                 'WHERE STRNO LIKE :EDIT1 ORDER BY REPDISTDT DESC '+cbViewdata.EditValue);
         If OrderCombo.ItemIndex=2 Then
         SQL.Add('SELECT REPDISTNO,STRNO,ENGNO,REPDISTDT,STAT FROM REPDIST '+
                 'WHERE ENGNO LIKE :EDIT1 ORDER BY REPDISTDT DESC '+cbViewdata.EditValue);
         If OrderCombo.ItemIndex=3 Then
         SQL.Add('SELECT REPDISTNO,STRNO,ENGNO,REPDISTDT,STAT FROM REPDIST '+
                 'WHERE ((ENGNO LIKE :EDIT1) or (REPDISTNO LIKE :EDIT1) or (STRNO LIKE :EDIT1)) '+
                 'ORDER BY REPDISTDT DESC '+cbViewdata.EditValue);
        end;
      18:Begin
         If OrderCombo.ItemIndex=0 Then
         SQL.Add('SELECT C.TMBILL,C.TMBILDT,C.BILLNO,C.LOCATRECV,C.BILLDT,C.CUSCOD,M.SNAM,M.NAME1,M.NAME2,C.PAYTYP,T.PAYFOR,T.CONTNO,T.PAYAMT, '+
                 'T.PAYINT,T.VATRTPAY,T.DISCT,T.NETPAY,C.MEMO1,C.FLAG,C.REFDOCNO '+
                 'FROM CHQMAS C,CHQTRAN T,CUSTMAST M WHERE C.TMBILL=T.TMBILL AND C.CUSCOD=M.CUSCOD '+
                 'AND T.PAYFOR=''008'' AND C.FLAG<>''C'' AND C.REFDOCNO ='''' AND C.TMBILL LIKE :EDIT1 AND C.FLAG LIKE :EDIT2 '+
                 'ORDER BY C.TMBILDT DESC '+cbViewdata.EditValue);
         If OrderCombo.ItemIndex=1 Then
         SQL.Add('SELECT C.TMBILL,C.TMBILDT,C.BILLNO,C.LOCATRECV,C.BILLDT,C.CUSCOD,M.SNAM,M.NAME1,M.NAME2,C.PAYTYP,T.PAYFOR,T.CONTNO,T.PAYAMT, '+
                 'T.PAYINT,T.VATRTPAY,T.DISCT,T.NETPAY,C.MEMO1,C.FLAG,C.REFDOCNO '+
                 'FROM CHQMAS C,CHQTRAN T,CUSTMAST M WHERE C.TMBILL=T.TMBILL AND C.CUSCOD=M.CUSCOD '+
                 'AND T.PAYFOR=''008'' AND C.FLAG<>''C''AND C.REFDOCNO =''''  AND C.BILLNO LIKE :EDIT1 AND C.FLAG LIKE :EDIT2 '+
                 'ORDER BY C.TMBILDT DESC '+cbViewdata.EditValue);
         If OrderCombo.ItemIndex=2 Then
         SQL.Add('SELECT C.TMBILL,C.TMBILDT,C.BILLNO,C.LOCATRECV,C.BILLDT,C.CUSCOD,M.SNAM,M.NAME1,M.NAME2,C.PAYTYP,T.PAYFOR,T.CONTNO,T.PAYAMT, '+
                 'T.PAYINT,T.VATRTPAY,T.DISCT,T.NETPAY,C.MEMO1,C.FLAG,C.REFDOCNO '+
                 'FROM CHQMAS C,CHQTRAN T,CUSTMAST M WHERE C.TMBILL=T.TMBILL AND C.CUSCOD=M.CUSCOD '+
                 'AND T.PAYFOR=''008'' AND C.FLAG<>''C'' AND C.REFDOCNO ='''' AND M.NAME1 LIKE :EDIT1 AND C.FLAG LIKE :EDIT2 '+
                 'ORDER BY C.TMBILDT DESC '+cbViewdata.EditValue);
         If OrderCombo.ItemIndex=3 Then
         SQL.Add('SELECT C.TMBILL,C.TMBILDT,C.BILLNO,C.LOCATRECV,C.BILLDT,C.CUSCOD,M.SNAM,M.NAME1,M.NAME2,C.PAYTYP,T.PAYFOR,T.CONTNO,T.PAYAMT, '+
                 'T.PAYINT,T.VATRTPAY,T.DISCT,T.NETPAY,C.MEMO1,C.FLAG,C.REFDOCNO '+
                 'FROM CHQMAS C,CHQTRAN T,CUSTMAST M WHERE C.TMBILL=T.TMBILL AND C.CUSCOD=M.CUSCOD '+
                 'AND T.PAYFOR=''008'' AND C.FLAG<>''C'' AND C.REFDOCNO ='''' AND M.NAME2 LIKE :EDIT1 AND C.FLAG LIKE :EDIT2 '+
                 'ORDER BY C.TMBILDT DESC '+cbViewdata.EditValue);
         If OrderCombo.ItemIndex=4 Then
         SQL.Add('SELECT C.TMBILL,C.TMBILDT,C.BILLNO,C.LOCATRECV,C.BILLDT,C.CUSCOD,M.SNAM,M.NAME1,M.NAME2,C.PAYTYP,T.PAYFOR,T.CONTNO,T.PAYAMT, '+
                 'T.PAYINT,T.VATRTPAY,T.DISCT,T.NETPAY,C.MEMO1,C.FLAG,C.REFDOCNO '+
                 'FROM CHQMAS C,CHQTRAN T,CUSTMAST M WHERE C.TMBILL=T.TMBILL AND C.CUSCOD=M.CUSCOD '+
                 'AND T.PAYFOR=''008'' AND C.FLAG<>''C'' AND C.REFDOCNO ='''' AND ((M.NAME2 LIKE :EDIT1) or (M.NAME1 LIKE :EDIT1) or '+
                 '(C.BILLNO LIKE :EDIT1) or (C.TMBILL LIKE :EDIT1)) AND C.FLAG LIKE :EDIT2 '+
                 'ORDER BY C.TMBILDT DESC '+cbViewdata.EditValue);
        end;
      19:Begin
         If OrderCombo.ItemIndex=0 Then
         SQL.Add('SELECT C.TMBILL,C.TMBILDT,C.BILLNO,C.LOCATRECV,C.BILLDT,C.CUSCOD,M.SNAM,M.NAME1,M.NAME2,C.PAYTYP, '+
                 'C.MEMO1,C.FLAG,C.REFDOCNO '+
                 'FROM CRDCHQMAS C,CUSTMAST M WHERE  C.CUSCOD=M.CUSCOD  AND C.TMBILL LIKE :EDIT1 ORDER BY C.TMBILDT DESC '+cbViewdata.EditValue);
         If orderCombo.ItemIndex=1 Then
         SQL.Add('SELECT C.TMBILL,C.TMBILDT,C.BILLNO,C.LOCATRECV,C.BILLDT,C.CUSCOD,M.SNAM,M.NAME1,M.NAME2,C.PAYTYP, '+
                 'C.MEMO1,C.FLAG,C.REFDOCNO '+
                 'FROM CRDCHQMAS C,CUSTMAST M WHERE  C.CUSCOD=M.CUSCOD AND C.BILLNO LIKE :EDIT1 ORDER BY C.TMBILDT DESC '+cbViewdata.EditValue);
         If OrderCombo.ItemIndex=2 Then
         SQL.Add('SELECT C.TMBILL,C.TMBILDT,C.BILLNO,C.LOCATRECV,C.BILLDT,C.CUSCOD,M.SNAM,M.NAME1,M.NAME2,C.TMBILDT, '+
                 'C.MEMO1,C.FLAG,C.REFDOCNO '+
                 'FROM CRDCHQMAS C,CUSTMAST M WHERE  C.CUSCOD=M.CUSCOD  AND M.NAME1 LIKE :EDIT1 ORDER BY C.TMBILDT DESC '+cbViewdata.EditValue);
         If OrderCombo.ItemIndex=3 Then
         SQL.Add('SELECT C.TMBILL,C.TMBILDT,C.BILLNO,C.LOCATRECV,C.BILLDT,C.CUSCOD,M.SNAM,M.NAME1,M.NAME2,C.PAYTYP, '+
                 'C.MEMO1,C.FLAG,C.REFDOCNO '+
                 'FROM CRDCHQMAS C,CUSTMAST M WHERE  C.CUSCOD=M.CUSCOD  AND M.NAME2 LIKE :EDIT1 ORDER BY C.TMBILDT DESC '+cbViewdata.EditValue);
         If OrderCombo.ItemIndex=4 Then
         SQL.Add('SELECT C.TMBILL,C.TMBILDT,C.BILLNO,C.LOCATRECV,C.BILLDT,C.CUSCOD,M.SNAM,M.NAME1,M.NAME2,C.PAYTYP, '+
                 'C.MEMO1,C.FLAG,C.REFDOCNO '+
                 'FROM CRDCHQMAS C,CUSTMAST M WHERE  C.CUSCOD=M.CUSCOD  '+
                 'AND ((M.NAME2 LIKE :EDIT1) or (C.TMBILL LIKE :EDIT1) or (C.BILLNO LIKE :EDIT1) '+
                 'or (M.NAME1 LIKE :EDIT1)) ORDER BY C.TMBILDT DESC '+cbViewdata.EditValue);
        end;
      20:Begin
        If OrderCombo.ItemIndex=0 Then
        SQL.Add('SELECT STRNO,CUSCOD,CUSTNAME,REGNO,CONTNO,TSALE FROM VIEW_SALHPCS WHERE STRNO LIKE :EDIT1 AND TSALE LIKE :EDIT2');
        If orderCombo.ItemIndex=1 Then
        SQL.Add('SELECT STRNO,CUSCOD,CUSTNAME,REGNO,CONTNO,TSALE FROM VIEW_SALHPCS WHERE CUSCOD LIKE :EDIT1 AND TSALE LIKE :EDIT2');
        If OrderCombo.ItemIndex=2 Then
        SQL.Add('SELECT STRNO,CUSCOD,CUSTNAME,REGNO,CONTNO,TSALE FROM VIEW_SALHPCS WHERE CUSTNAME LIKE :EDIT1 AND TSALE LIKE :EDIT2');
        If OrderCombo.ItemIndex=3 Then
        SQL.Add('SELECT STRNO,CUSCOD,CUSTNAME,REGNO,CONTNO,TSALE FROM VIEW_SALHPCS WHERE REGNO LIKE :EDIT1 AND TSALE LIKE :EDIT2');
        If OrderCombo.ItemIndex=4 Then
        SQL.Add('SELECT STRNO,CUSCOD,CUSTNAME,REGNO,CONTNO,TSALE FROM VIEW_SALHPCS  WHERE CONTNO LIKE :EDIT1 AND TSALE LIKE :EDIT2');
        end;

      21:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT A.REGNO,A.STATDEP,A.REGRED,A.STRNO,A.CUSCOD,B.CUSTNAME FROM STKREGRED A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                 'WHERE A.REGNO LIKE :EDIT1 AND A.STATDEP LIKE :EDIT2 ORDER BY A.REDDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT A.REGNO,A.STATDEP,A.REGRED,A.STRNO,A.CUSCOD,B.CUSTNAME FROM STKREGRED A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                 'WHERE A.STATDEP LIKE :EDIT1 AND A.STATDEP LIKE :EDIT2 ORDER BY A.REDDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT A.REGNO,A.STATDEP,A.REGRED,A.STRNO,A.CUSCOD,B.CUSTNAME FROM STKREGRED A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                 'WHERE A.REGRED LIKE :EDIT1 AND A.STATDEP LIKE :EDIT2 ORDER BY A.REDDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT A.REGNO,A.STATDEP,A.REGRED,A.STRNO,A.CUSCOD,B.CUSTNAME FROM STKREGRED A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                 'WHERE A.STRNO LIKE :EDIT1 AND A.STATDEP LIKE :EDIT2 ORDER BY A.REDDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( 'SELECT A.REGNO,A.STATDEP,A.REGRED,A.STRNO,A.CUSCOD,B.CUSTNAME FROM STKREGRED A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                 'WHERE A.CUSCOD LIKE :EDIT1 AND A.STATDEP LIKE :EDIT2 ORDER BY A.REDDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( 'SELECT A.REGNO,A.STATDEP,A.REGRED,A.STRNO,A.CUSCOD,B.CUSTNAME FROM STKREGRED A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                 'WHERE B.CUSTNAME LIKE :EDIT1 AND A.STATDEP LIKE :EDIT2 ORDER BY A.REDDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL.ADD( 'SELECT A.REGNO,A.STATDEP,A.REGRED,A.STRNO,A.CUSCOD,B.CUSTNAME FROM STKREGRED A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                 'WHERE ((A.REGRED LIKE :EDIT1) or (A.REGNO LIKE :EDIT1) or (A.STATDEP LIKE :EDIT1) or (A.STRNO LIKE :EDIT1) or '+
                 '(A.CUSCOD LIKE :EDIT1) or (B.CUSTNAME LIKE :EDIT1)) '+
                 'AND A.STATDEP LIKE :EDIT2 ORDER BY REDDT DESC '+cbViewdata.EditValue);
       end;
      22:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT D.DEPRED,R.STRNO,R.REGNO,R.REGRED FROM STKDEPRED D,STKREGRED R '+
                 'WHERE R.REGRED=D.REGRED AND D.DEPRED LIKE :EDIT1 ORDER BY DEPDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT D.DEPRED,R.STRNO,R.REGNO,R.REGRED FROM STKDEPRED D,STKREGRED R '+
                 'WHERE R.REGRED=D.REGRED AND R.STRNO LIKE :EDIT1 ORDER BY DEPDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT D.DEPRED,R.STRNO,R.REGNO,R.REGRED FROM STKDEPRED D,STKREGRED R '+
                 'WHERE R.REGRED=D.REGRED AND R.REGNO LIKE :EDIT1 ORDER BY DEPDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT D.DEPRED,R.STRNO,R.REGNO,R.REGRED FROM STKDEPRED D,STKREGRED R '+
                 'WHERE R.REGRED=D.REGRED AND R.REGRED LIKE :EDIT1 ORDER BY DEPDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( 'SELECT D.DEPRED,R.STRNO,R.REGNO,R.REGRED FROM STKDEPRED D,STKREGRED R '+
                 'WHERE R.REGRED=D.REGRED AND ((R.REGRED LIKE :EDIT1) or (D.DEPRED LIKE :EDIT1) '+
                 'or (R.STRNO LIKE :EDIT1) or (R.REGNO LIKE :EDIT1)) ORDER BY DEPDT DESC '+cbViewdata.EditValue);
    end;

    23:begin
        If OrderCombo.Itemindex=0 Then
           Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO LIKE:EDIT1 ORDER BY TAXNO');
        If OrderCombo.Itemindex=1 Then
           Sql.add('SELECT * FROM TAXTRAN WHERE CONTNO LIKE:EDIT1 ORDER BY CONTNO');
        If OrderCombo.Itemindex=2 Then
           Sql.add('SELECT * FROM TAXTRAN WHERE STRNO LIKE:EDIT1 ORDER BY STRNO');
        If OrderCombo.Itemindex=3 Then
           Sql.add('SELECT * FROM TAXTRAN WHERE ((STRNO LIKE:EDIT1) or (TAXNO LIKE:EDIT1) or (CONTNO LIKE:EDIT1)) ORDER BY STRNO');
      end;

    24:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.ARCONT,A.CONTNO,A.CUSCOD,A.PAYAMT,'+
                'B.SNAM,B.NAME1,B.NAME2,TSALE FROM AROTHR A,CUSTMAST B '+
                'WHERE A.LOCAT LIKE :EDIT1 AND A.CUSCOD=B.CUSCOD ORDER BY A.ARDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.ARCONT,A.CONTNO,A.CUSCOD,A.PAYAMT,'+
                'B.SNAM,B.NAME1,B.NAME2,TSALE FROM AROTHR A,CUSTMAST B '+
                'WHERE A.ARCONT LIKE :EDIT1 AND A.CUSCOD=B.CUSCOD ORDER BY A.ARDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.ARCONT,A.CONTNO,A.CUSCOD,A.PAYAMT,'+
                'B.SNAM,B.NAME1,B.NAME2,TSALE FROM AROTHR A,CUSTMAST B '+
                'WHERE A.CUSCOD LIKE :EDIT1 AND A.CUSCOD=B.CUSCOD ORDER BY A.ARDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.ARCONT,A.CONTNO,A.CUSCOD,A.PAYAMT,'+
                'B.SNAM,B.NAME1,B.NAME2,TSALE FROM AROTHR A,CUSTMAST B '+
                'WHERE B.NAME1 LIKE :EDIT1 AND A.CUSCOD=B.CUSCOD ORDER BY A.ARDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.ARCONT,A.CONTNO,A.CUSCOD,A.PAYAMT,'+
                'B.SNAM,B.NAME1,B.NAME2,TSALE FROM AROTHR A,CUSTMAST B '+
                'WHERE B.NAME2 LIKE :EDIT1 AND A.CUSCOD=B.CUSCOD ORDER BY A.ARDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT A.LOCAT,A.ARCONT,A.CONTNO,A.CUSCOD,A.PAYAMT,'+
                'B.SNAM,B.NAME1,B.NAME2,TSALE FROM AROTHR A,CUSTMAST B '+
                'WHERE A.CONTNO LIKE :EDIT1 AND A.CUSCOD=B.CUSCOD ORDER BY A.ARDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT A.LOCAT,A.ARCONT,A.CONTNO,A.CUSCOD,A.PAYAMT,'+
                'B.SNAM,B.NAME1,B.NAME2,TSALE FROM AROTHR A,CUSTMAST B '+
                'WHERE ((A.CONTNO LIKE :EDIT1) or (A.LOCAT LIKE :EDIT1) or (A.ARCONT LIKE :EDIT1) or (A.CUSCOD LIKE :EDIT1) '+
                'or (B.NAME1 LIKE :EDIT1) or (B.NAME2 LIKE :EDIT1)) AND A.CUSCOD=B.CUSCOD ORDER BY A.ARDATE DESC '+cbViewdata.EditValue);
       end;

    25:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.REPNO,A.REPDATE,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,A.STRNO,A.TSALE,'+
                'RTRIM(A.TYPECLAIM)||''-''||RTRIM(C.CLAIMDESC) CLAIMDESC,A.CLAIMAMT,A.FLAG '+
                'FROM SENDCLAIM A,VIEW_CUST B,TYPECLAIM C '+
                'WHERE A.CUSCOD=B.CUSCOD AND A.TYPECLAIM=C.CLAIMCODE '+
                'AND A.LOCAT LIKE :EDIT1 ORDER BY A.FLAG,A.REPNO '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.REPNO,A.REPDATE,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,A.STRNO,A.TSALE,'+
                'RTRIM(A.TYPECLAIM)||''-''||RTRIM(C.CLAIMDESC) CLAIMDESC,A.CLAIMAMT,A.FLAG '+
                'FROM SENDCLAIM A,VIEW_CUST B,TYPECLAIM C '+
                'WHERE A.CUSCOD=B.CUSCOD AND A.TYPECLAIM=C.CLAIMCODE '+
                'AND A.CONTNO LIKE :EDIT1 ORDER BY A.FLAG,A.REPNO '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.REPNO,A.REPDATE,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,A.STRNO,A.TSALE,'+
                'RTRIM(A.TYPECLAIM)||''-''||RTRIM(C.CLAIMDESC) CLAIMDESC,A.CLAIMAMT,A.FLAG '+
                'FROM SENDCLAIM A,VIEW_CUST B,TYPECLAIM C '+
                'WHERE A.CUSCOD=B.CUSCOD AND A.TYPECLAIM=C.CLAIMCODE '+
                'AND A.REPNO LIKE :EDIT1 ORDER BY A.FLAG,A.REPNO '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.REPNO,A.REPDATE,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,A.STRNO,A.TSALE,'+
                'RTRIM(A.TYPECLAIM)||''-''||RTRIM(C.CLAIMDESC) CLAIMDESC,A.CLAIMAMT,A.FLAG '+
                'FROM SENDCLAIM A,VIEW_CUST B,TYPECLAIM C '+
                'WHERE A.CUSCOD=B.CUSCOD AND A.TYPECLAIM=C.CLAIMCODE '+
                'AND B.CUSTNAME LIKE :EDIT1 ORDER BY A.FLAG,A.REPNO '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.REPNO,A.REPDATE,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,A.STRNO,A.TSALE,'+
                'RTRIM(A.TYPECLAIM)||''-''||RTRIM(C.CLAIMDESC) CLAIMDESC,A.CLAIMAMT,A.FLAG '+
                'FROM SENDCLAIM A,VIEW_CUST B,TYPECLAIM C '+
                'WHERE A.CUSCOD=B.CUSCOD AND A.TYPECLAIM=C.CLAIMCODE '+
                'AND A.STRNO LIKE :EDIT1 ORDER BY A.FLAG,A.REPNO '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.REPNO,A.REPDATE,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,A.STRNO,A.TSALE,'+
                'RTRIM(A.TYPECLAIM)||''-''||RTRIM(C.CLAIMDESC) CLAIMDESC,A.CLAIMAMT,A.FLAG '+
                'FROM SENDCLAIM A,VIEW_CUST B,TYPECLAIM C '+
                'WHERE A.CUSCOD=B.CUSCOD AND A.TYPECLAIM=C.CLAIMCODE '+
                'AND ((C.CLAIMDESC LIKE :EDIT1) or (A.TYPECLAIM LIKE :EDIT1)) ORDER BY A.FLAG,A.REPNO '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT A.LOCAT,A.CONTNO,A.REPNO,A.REPDATE,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,A.STRNO,A.TSALE,'+
                'RTRIM(A.TYPECLAIM)||''-''||RTRIM(C.CLAIMDESC) CLAIMDESC,A.CLAIMAMT,A.FLAG '+
                'FROM SENDCLAIM A,VIEW_CUST B,TYPECLAIM C '+
                'WHERE A.CUSCOD=B.CUSCOD AND A.TYPECLAIM=C.CLAIMCODE '+
                'AND ((A.LOCAT LIKE :EDIT1) or (A.REPNO LIKE :EDIT1) or (A.CONTNO LIKE :EDIT1) or (A.CUSCOD LIKE :EDIT1) '+
                ' or (B.CUSTNAME LIKE :EDIT1) or (A.STRNO LIKE :EDIT1) or (A.TYPECLAIM LIKE :EDIT1) or (C.CLAIMDESC LIKE :EDIT1)) ORDER BY A.FLAG,A.REPNO '+cbViewdata.EditValue);
       end;

    26:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.CLAIMNO,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,'+
                'A.CLAIMAMT,A.PAYAMT,A.DIFAMT,A.SMPAY,A.FLAG '+
                'FROM INVOICLAIM A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE A.LOCAT LIKE :EDIT1 ORDER BY A.INVDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.CLAIMNO,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,'+
                'A.CLAIMAMT,A.PAYAMT,A.DIFAMT,A.SMPAY,A.FLAG '+
                'FROM INVOICLAIM A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE A.INVNO LIKE :EDIT1 ORDER BY A.INVDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.CLAIMNO,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,'+
                'A.CLAIMAMT,A.PAYAMT,A.DIFAMT,A.SMPAY,A.FLAG '+
                'FROM INVOICLAIM A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE A.CLAIMNO LIKE :EDIT1 ORDER BY A.INVDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.CLAIMNO,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,'+
                'A.CLAIMAMT,A.PAYAMT,A.DIFAMT,A.SMPAY,A.FLAG '+
                'FROM INVOICLAIM A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE B.CUSTNAME LIKE :EDIT1 ORDER BY A.INVDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.CLAIMNO,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,'+
                'A.CLAIMAMT,A.PAYAMT,A.DIFAMT,A.SMPAY,A.FLAG '+
                'FROM INVOICLAIM A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE ((A.LOCAT LIKE :EDIT1) or (A.INVNO LIKE :EDIT1) or (A.CLAIMNO LIKE :EDIT1) '+
                'or (A.CUSCOD LIKE :EDIT1) or (B.CUSTNAME LIKE :EDIT1)) ORDER BY A.INVDATE '+cbViewdata.EditValue);
       end;


    27:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.BILLNO,A.BILLDATE,rtrim(A.CLAIMNO)||'' - ''||rtrim(A.INVNO) REFNO,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,'+
                'A.CLAIMAMT,A.PAYAMT,A.VAT3AMT,A.PAYMENT,A.FLAG '+
                'FROM PAYMENTCLAIM A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE A.LOCAT LIKE :EDIT1 ORDER BY A.BILLDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.BILLNO,A.BILLDATE,rtrim(A.CLAIMNO)||'' - ''||rtrim(A.INVNO) REFNO,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,'+
                'A.CLAIMAMT,A.PAYAMT,A.VAT3AMT,A.PAYMENT,A.FLAG '+
                'FROM PAYMENTCLAIM A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE A.INVNO LIKE :EDIT1 ORDER BY A.BILLDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.BILLNO,A.BILLDATE,rtrim(A.CLAIMNO)||'' - ''||rtrim(A.INVNO) REFNO,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,'+
                'A.CLAIMAMT,A.PAYAMT,A.VAT3AMT,A.PAYMENT,A.FLAG '+
                'FROM PAYMENTCLAIM A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE A.CLAIMNO LIKE :EDIT1 ORDER BY A.BILLDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.BILLNO,A.BILLDATE,rtrim(A.CLAIMNO)||'' - ''||rtrim(A.INVNO) REFNO,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,'+
                'A.CLAIMAMT,A.PAYAMT,A.VAT3AMT,A.PAYMENT,A.FLAG '+
                'FROM PAYMENTCLAIM A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE B.CUSTNAME LIKE :EDIT1 ORDER BY A.BILLDATE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.BILLNO,A.BILLDATE,rtrim(A.CLAIMNO)||'' - ''||rtrim(A.INVNO) REFNO,rtrim(A.CUSCOD)||'' - ''||rtrim(B.CUSTNAME) CUSTNAME,'+
                'A.CLAIMAMT,A.PAYAMT,A.VAT3AMT,A.PAYMENT,A.FLAG '+
                'FROM PAYMENTCLAIM A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE ((A.LOCAT LIKE :EDIT1) or (A.BILLNO LIKE :EDIT1) or (A.INVNO LIKE :EDIT1) or (A.CLAIMNO LIKE :EDIT1) '+
                'or (A.CUSCOD LIKE :EDIT1) or (B.CUSTNAME LIKE :EDIT1)) ORDER BY A.BILLDATE '+cbViewdata.EditValue);
       end;

    End;

    if (OrderCombo.Tag=4) and (OrderCombo.ItemIndex=7) then
       HQuery1.Params[0].AsFloat := StrTofloat(SearchEd.text)
    else
       HQuery1.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');

    If OrderCombo.Tag=1 Then
    begin
      if OrderCombo.Itemindex=3 then
      begin
        HQuery1.Params[3].Asstring := Uppercase(XLocat+'%');
        HQuery1.Params[4].AsString := XCanf+'%';
      end else
      begin
        HQuery1.Params[1].Asstring := Uppercase(XLocat+'%');
        HQuery1.Params[2].AsString := XCanf+'%';
      end;
    end;
    If OrderCombo.Tag=2 Then
    BEGIN
      if OrderCombo.ItemIndex<> 9 then
      begin
        HQuery1.Params[1].Asstring := Uppercase(Xflg+'%');
        HQuery1.Params[2].Asstring := Uppercase(XLocat+'%');
      end else
      begin
        HQuery1.Params[9].Asstring  := Uppercase(Xflg+'%');
        HQuery1.Params[10].Asstring := Uppercase(XLocat+'%');
      end;
    END;
    If OrderCombo.Tag=9 Then
        HQuery1.Params[1].Asstring := Uppercase(XLocat+'%');

    if OrderCombo.Tag=3 then
    begin
      if OrderCombo.ItemIndex=8 then
      HQuery1.Params[8].Asstring := Uppercase(XLocat+'%') else
      HQuery1.Params[1].Asstring := Uppercase(XLocat+'%');
    end;

    if OrderCombo.Tag=5 then
    begin
      if OrderCombo.ItemIndex=9 then
      HQuery1.Params[9].Asstring := Uppercase(XLocat+'%') else
      HQuery1.Params[1].Asstring := Uppercase(XLocat+'%');
    end;

    If (OrderCombo.Tag=14) then
        HQuery1.Params[1].AsString := Uppercase(XFlag+'%');
    If (OrderCombo.Tag=4) or (OrderCombo.Tag=13) Then
    Begin
       HQuery1.Params[1].Asstring := Uppercase(XYstat+'%');
       HQuery1.Params[2].Asstring := Uppercase(XLocat+'%');
    end;
    if OrderCombo.Tag = 18 then
    begin
      if OrderCombo.ItemIndex=4 then
      HQuery1.Params[4].Asstring := Uppercase(XLocat+'%') else
      HQuery1.Params[1].Asstring := Uppercase(XLocat+'%');
    end;

    if OrderCombo.Tag = 20 then
       HQuery1.Params[1].AsString := XTsale+'%';
    if OrderCombo.Tag = 21 then
    begin
      if OrderCombo.ItemIndex = 6 then
      HQuery1.Params[6].AsString := StatDep+'%' else
      HQuery1.Params[1].AsString := StatDep+'%';
    end;
    HQuery1.Open;
    SFMain.Do_Show_DisplayFormat_Floating(HQuery1);
  End;
end;

procedure TSearchSale.OrderComboChange(Sender: TObject);
Var I,K:word;
    T1,F1 :String;
begin
  SearchEd.Text := '';
  k:=0;
  I:=0;
  While (I<=Max)  Do
  begin
    If (Title[I]=OrderCombo.Text) Then
    begin
      K :=I;
      Break;
    end;
    I:=I+1;
  end;

  T1        := Title[0];
  Title[0]  := Title[K];
  Title[k]  := T1;

  F1        := Fldgrd[0];
  Fldgrd[0] := Fldgrd[K];
  Fldgrd[k] := F1;
  cxGridDBTableView1.ClearItems;
  for I:=0 To Max Do
  begin
    cxGridDBTableView1.CreateColumn.DataBinding.FieldName    := Fldgrd[I];
    cxGridDBTableView1.Columns[I].Caption := Title[I];
    If Fldgrd[I] = 'NAME1' Then
      cxGridDBTableView1.Columns[I].Width := 60;
    If Fldgrd[I] = 'NAME2' Then
      cxGridDBTableView1.Columns[I].Width := 60;
    If Fldgrd[I] = 'CUSTNAME' Then
      cxGridDBTableView1.Columns[I].Width := 250;
    If Fldgrd[I] = 'CLAIMDESC' Then
      cxGridDBTableView1.Columns[I].Width := 250;
  end;
end;

procedure TSearchSale.SearchEdChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
  SearchButtonClick(Sender);
end;


procedure TSearchSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TSearchSale.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TSearchSale.CalcMax;
begin
{ ** Field Name & Title** }
  I:=0;
  While I<=10 Do
  begin
    cxGridDBTableView1.CreateColumn.DataBinding.FieldName    := Fldgrd[I];
    cxGridDBTableView1.Columns[I].Caption := Title[I];
    If Fldgrd[I]='' Then
    begin
     Max:=I-1;
     If Max<0 Then Max:=0;
     break;
    end;
    I:=I+1;
  end;
end;

procedure TSearchSale.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;
end;

procedure TSearchSale.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
     SearchButtonClick(Sender);
     DbGrid1.SetFocus;
   End;
end;

procedure TSearchSale.DBTableView1DblClick(Sender: TObject);
begin
   ModalResult := mrOK;
end;

procedure TSearchSale.cxGridDBTableView1DataControllerGroupingChanged(
  Sender: TObject);
begin
  if HQuery1.Active = True then
  begin
  cxCheckBox1.Checked := False;
  cxCheckBox1.Enabled := ((HQuery1.RecordCount>0) AND
                          (cxGridDBTableView1.GroupedColumnCount>0));
  end;
end;

procedure TSearchSale.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = true then
  cxGridDBTableView1.DataController.Groups.FullExpand else
  cxGridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TSearchSale.cxGridDBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AStyle: TcxStyle;
  IndNo : String;
begin
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;
  ATextRect := AViewInfo.ContentBounds;
  AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
  InflateRect(ATextRect, -2, -1);
  if AIndicatorViewInfo.GridRecord.Selected then
    AStyle := SFMain.styleSelected
  else
    AStyle := SFMain.styleNormal;

  if AIndicatorViewInfo.GridRecord.Index + 1 = 0 then
  IndNo := '' else
  IndNo := IntToStr(AIndicatorViewInfo.GridRecord.Index + 1);

  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
    False, False, IndNo,
    AStyle.Font, AStyle.TextColor, AStyle.Color);
  ADone := True;

end;

procedure TSearchSale.cxGridDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    OKBtn.Click;
  End;
end;

procedure TSearchSale.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if OrderCombo.Tag = 25 then
  begin
    if AViewInfo.GridRecord.Values[9] = 'Y' then
    begin
      ACanvas.Font.Color  := clRed;
      ACanvas.Font.Style  := [fsItalic];
    end;
  end;

  if OrderCombo.Tag = 27 then
  begin
    if AViewInfo.GridRecord.Values[9] = 'C' then
    begin
      ACanvas.Font.Color  := clRed;
      ACanvas.Font.Style  := [fsItalic];
    end;
  end;
end;

end.
