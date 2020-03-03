unit uFindData;

interface
                               
uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, RzDBGrid, ComCtrls, cxGraphics,
  Menus, cxLookAndFeelPainters, AdvShapeButton, cxTextEdit, cxButtons,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, AdvGlowButton,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCheckBox,
  cxGridLevel, cxGridCardView, cxGridDBCardView, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLookAndFeels, dxDateRanges, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxNavigator, cxGridCustomLayoutView, cxImageComboBox;

type
  TfFindData = class(TForm)
    DataSource: TDataSource;
    Panel1: TPanel;
    Panel3: TPanel;
    Bevel1: TBevel;
    Label5: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    SearchButton: TAdvGlowButton;
    OrderCombo: TcxComboBox;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    AdvShapeButton1: TAdvShapeButton;
    DBGrid1: TcxGrid;
    DBGrid1DBTableView1: TcxGridDBTableView;
    DBGrid1DBCardView1: TcxGridDBCardView;
    cxGridLevel1: TcxGridLevel;
    SearchEd: TcxTextEdit;
    Label3: TLabel;
    cbViewdata: TcxImageComboBox;
    Label1: TLabel;
    cxCheckBox1: TcxCheckBox;
    qrFindDat: TFDQuery;
    procedure SearchButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure OrderComboPropertiesChange(Sender: TObject);
    procedure SearchEdPropertiesChange(Sender: TObject);
    procedure DBGrid1DBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure DBGrid1DBTableView1DblClick(Sender: TObject);
    procedure DBGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure DBGrid1DBTableView1DataControllerGroupingChanged(
      Sender: TObject);
  private
    function GetKeyno: string;
    procedure CalcMax;           
  public
    NewKeyno,Xsrch,XSysSet,ClsStatus,Accflag,AccFlagUse,Accgrpcod: string;
    Flag_a,Key_a: string;
    property Keyno: string read GetKeyno;
    function ShowModalSfloct: Integer;
    function ShowModalsetOfficer: Integer;
    function ShowModalSetTYPE: Integer;
    function ShowModalGroup: Integer;
    function ShowModalPasswd: Integer;
    function ShowModalAP: Integer;
    function ShowModalBK: Integer;
    function ShowModalBooK: Integer;
    function ShowModalRtChq: Integer;    
    function ShowModalPAYTYP: Integer;
    function ShowModalInsur: Integer;
    function ShowModalCampn: Integer;
    function ShowModalReelocat: Integer;
    function ShowModalCupong: Integer;
    function ShowModalArgroup: Integer;
    function ShowModalRcinv: Integer;
    function ShowModalPO: Integer;
    function ShowModalChqPy: Integer;
    function ShowModalTAXNO: Integer;
    function ShowModalSALTYPE: Integer;    
    function ShowModalICinv: Integer;
    function ShowModalAdjust: Integer;
    function ShowModalModel: Integer;
    function ShowModalEngineer: Integer;
    function ShowModalSetDepmast: Integer;
    function ShowModalCusmast: Integer;
    function ShowModalSetAump: Integer;
    function ShowModalSetProv: Integer;
    function ShowModalSetGrade: Integer;
    function ShowModalCustVip: Integer;
    function ShowModalLostSale: Integer;
    function ShowModalGrpMenu: Integer;
    function ShowModalSetSubject: Integer;
    function ShowModalStkCoupon: Integer;
    function ShowModalTaxSal : Integer;
    function ShowModalAccmst : Integer;
    function ShowModalBanklocat  : Integer;
  end;

var
  fFindData: TfFindData;

  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;

implementation
uses USoftFirm, Dmsec;

{$R *.DFM}

function TfFindData.ShowModalSetOfficer: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 0;
  Title[0]  := 'รหัสพนักงาน';
  Title[1]  := 'ชื่อพนักงาน';
  Title[2]  := 'แผนก';

  Fldgrd[0] := 'CODE';
  Fldgrd[1] := 'NAME';
  Fldgrd[2] := 'DEPCODE';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalSetTYPE: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 1;
  Title[0]  := 'รหัสยี่ห้อ';
  Title[1]  := 'ชื่อยี่ห้อ';

  Fldgrd[0] := 'TYPECOD';
  Fldgrd[1] := 'TYPEDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;
function TfFindData.ShowModalGroup: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 2;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'ชื่อกลุ่ม';

  Fldgrd[0] := 'GROUPCOD';
  Fldgrd[1] := 'GROUPNAM';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;
function TfFindData.ShowModalPasswd: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 3;
  Title[0]  := 'รหัสประจำตัว';
  Title[1]  := 'ชื่อ-นามสกุล';
  Title[2]  := 'ประจำสาขา';
  Title[3]  := 'ระดับ';

  Fldgrd[0] := 'USERID';
  Fldgrd[1] := 'USERNAME';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'LEVEL_1';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;
function  TfFindData.ShowModalAP: Integer;
begin
  OrderCombo.Tag := 4;
  Title[0]  := 'รหัสเจ้าหนี้';
  Title[1]  := 'ชื่อเจ้าหนี้';
  Title[2]  := 'ที่อยู่ 1';
  Title[3]  := 'ที่อยู่ 2';

  Fldgrd[0] := 'APCODE';
  Fldgrd[1] := 'APNAME';
  Fldgrd[2] := 'APADDR1';
  Fldgrd[3] := 'APADDR2';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;


function  TfFindData.ShowModalSfloct: Integer;
begin
  OrderCombo.Tag := 5;
  Title[0]  := 'รหัสสาขา';
  Title[1]  := 'ชื่อบริษัท';
  Title[2]  := 'รหัสย่อ';
  Fldgrd[0] := 'LOCATCD';
  Fldgrd[1] := 'LOCATNM';
  Fldgrd[2] := 'SHORTL';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;

end;

function TfFindData.ShowModalBK: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 6;
  Title[0]  := 'รหัสธนาคาร';
  Title[1]  := 'ชื่อธนาคาร';

  Fldgrd[0] := 'BANKCOD';
  Fldgrd[1] := 'BANKNAM';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
END;

function TfFindData.ShowModalBooK: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 7;
  Title[0]  := 'รหัสบัญชี';
  Title[1]  := 'ชื่อบัญชี';
  Title[2]  := 'เลขที่บัญชี';

  Fldgrd[0] := 'BANKBOOKCOD';
  Fldgrd[1] := 'BOOKNAM';
  Fldgrd[2] := 'BOOKNO';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
END;

function TfFindData.ShowModalRtChq: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 8;
  Title[0]  := 'รหัสเช็ค';
  Title[1]  := 'ชื่อรายการ';

  Fldgrd[0] := 'RTCODE';
  Fldgrd[1] := 'RTNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
END;

function TfFindData.ShowModalPAYTYP: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 9;
  Title[0]  := 'รหัสประเภท';
  Title[1]  := 'ประเภทการชำระ';

  Fldgrd[0] := 'PAYCODE';
  Fldgrd[1] := 'PAYDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalInsur: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 10;
  Title[0]  := 'รหัสบริษัทประกัน';
  Title[1]  := 'ชื่อบริษัทประกัน';

  Fldgrd[0] := 'ISCODE';
  Fldgrd[1] := 'ISNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalCampn: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 11;
  Title[0]  := 'รหัสแคมเปญ';
  Title[1]  := 'ชื่อแคมเปญ';
  Title[2]  := 'วันเริ่ม';
  Title[3]  := 'วันสิ้นสุด';

  Fldgrd[0] := 'Campno';
  Fldgrd[1] := 'Campnam';
  Fldgrd[2] := 'Startdt';
  Fldgrd[3] := 'Enddate';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalReelocat: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 12;
  Title[0]  := 'รหัสสถานที่';
  Title[1]  := 'ชื่อสถานที่';

  Fldgrd[0] := 'RLCODE';
  Fldgrd[1] := 'RLNAME';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalCupong: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 13;
  Title[0]  := 'รหัสคูปอง';
  Title[1]  := 'ชื่อคูปอง';
  Title[2]  := 'รุ่นรถ';
  Title[3]  := 'Kind';

  Fldgrd[0] := 'CUPONGNO';
  Fldgrd[1] := 'CUPONGNM';
  Fldgrd[2] := 'MDLCOD';
  Fldgrd[3] := 'KIND';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalArgroup: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 14;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'ชื่อกลุ่ม';
  Title[2]  := '%ส่วนลด';

  Fldgrd[0] := 'ARGCOD';
  Fldgrd[1] := 'ARGDES';
  Fldgrd[2] := 'ARDISC';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalRcinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 15;
  Title[0]  := 'เลขที่ใบรับ';
  Title[1]  := 'รหัสเจ้าหนี้';
  Title[2]  := 'เลขที่ใบส่งของ';
  Title[3]  := 'เลขที่ใบกำกับ';
  Title[4]  := 'เลขที่ PO';
  Title[5]  := 'วันที่รับ';

  Fldgrd[0] := 'RECVNO';
  Fldgrd[1] := 'APCODE';
  Fldgrd[2] := 'INVNO';
  Fldgrd[3] := 'TAXNO';
  Fldgrd[4] := 'PONO';
  Fldgrd[5] := 'RECVDT';

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
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalPO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 16;
  Title[0]  := 'ใบสั่งซื้อ';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสเจ้าหนี้';
  Title[3]  := 'สาขา';

  Fldgrd[0] := 'PONO';
  Fldgrd[1] := 'PODATE';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'POLOCAT';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalChqPy: Integer;
begin
  OrderCombo.Tag := 17;
  Title[0]  := 'เลขที่เช็ค';
  Title[1]  := 'เลขที่บัญชี';
  Title[2]  := 'เลขที่อ้างอิง';
  Title[3]  := 'เลขที่ใบเสร็จ';

  Fldgrd[0] := 'CHQNO';
  Fldgrd[1] := 'BKCODE';
  Fldgrd[2] := 'REFNO';
  Fldgrd[3] := 'BILLNO';


  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalTAXNO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 18;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'JOBNO';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'วันที่';
  Title[4]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'TAXDATE';
  Fldgrd[4] := 'CANCELID';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalSALTYPE: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 19;
  Title[0]  := 'รหัสการขาย';
  Title[1]  := 'ประเภทการขาย';
  Title[2]  := 'ส่วนลด';

  Fldgrd[0] := 'SLCODE';
  Fldgrd[1] := 'SLDESC';
  Fldgrd[2] := 'SLDISC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalICinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 20;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'วันที่';
  Title[2]  := 'เลขที่ใบเสร็จ';
  Title[3]  := 'เลขที่ใบเบิก';
  Title[4]  := 'ผู้ยกเลิก';
  Title[5]  := 'วันที่ยกเลิก';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'INVDATE';
  Fldgrd[2] := 'TAXREFNO';
  Fldgrd[3] := 'PKNO';
  Fldgrd[4] := 'CANCELID';
  Fldgrd[5] := 'CANDAT';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalAdjust: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 21;
  Title[0]  := 'เลขที่ปรับปรุง';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสพนักงาน';
  Title[3]  := 'รหัสสาขา';

  Fldgrd[0] := 'ADJNO';
  Fldgrd[1] := 'ADJDATE';
  Fldgrd[2] := 'OFFICCOD';
  Fldgrd[3] := 'ADJLOC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalModel: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 22;
  Title[0]  := 'รหัสรุ่น';
  Title[1]  := 'ชื่อรุ่น';

  Fldgrd[0] := 'MODELCOD';
  Fldgrd[1] := 'MODELDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalEngineer: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 23;
  Title[0]  := 'รหัสช่าง';
  Title[1]  := 'ชื่อช่าง';
  Title[2]  := 'ตำแหน่ง';
  Title[3]  := 'ประสิทธิภาพ';

  Fldgrd[0] := 'ENCODE';
  Fldgrd[1] := 'ENNAME';
  Fldgrd[2] := 'POSITION';
  Fldgrd[3] := 'EFFICIENCY';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalSetDepmast: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 24;
  Title[0]  := 'รหัสแผนก';
  Title[1]  := 'ชื่อแผนก';

  Fldgrd[0] := 'DIVICOD';
  Fldgrd[1] := 'DIVINAM';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalCusmast: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 25;
  Title[0]  := 'รหัสลูกค้า';
  Title[1]  := 'ชื่อ';
  Title[2]  := 'นามสกุล';
  Title[3]  := 'คำนำหน้า';
  Title[4]  := 'ชื่อเล่น';
  Title[5]  := 'เลขที่บัตร';
  Title[6]  := 'กลุ่ม';
  Title[7]  := 'เลขสมาชิก';

  Fldgrd[0] := 'CUSCOD';
  Fldgrd[1] := 'NAME1';
  Fldgrd[2] := 'NAME2';
  Fldgrd[3] := 'SNAM';
  Fldgrd[4] := 'NICKNM';
  Fldgrd[5] := 'IDNO';
  Fldgrd[6] := 'GRPCUS';
  Fldgrd[7] := 'MEMBCOD';

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
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalSetAump: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 26;
  Title[0]  := 'รหัสอำเภอ';
  Title[1]  := 'ชื่ออำเภอ';
  Title[2]  := 'รหัสจังหวัด';

  Fldgrd[0] := 'AUMPCOD';
  Fldgrd[1] := 'AUMPDES';
  Fldgrd[2] := 'PROVCOD';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalSetProv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 27;
  Title[0]  := 'รหัสจังหวัด';
  Title[1]  := 'ชื่อจังหวัด';

  Fldgrd[0] := 'PROVCOD';
  Fldgrd[1] := 'PROVDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;
                      
function TfFindData.ShowModalSetGrade: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 28;
  Title[0]  := 'เกรด';
  Title[1]  := 'รายละเอียด';


  Fldgrd[0] := 'GRDCOD';
  Fldgrd[1] := 'GRDDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalCustVip: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 29;
  Title[0]  := 'เลขบัตร VIP.';
  Title[1]  := 'รหัสลูกค้า';
  Title[2]  := 'ชื่อ';
  Title[3]  := 'นามสกุล';
  Title[4]  := 'วันออกบัตร';
  Title[5]  := 'วันหมดอายุ';

  Fldgrd[0] := 'VIPNO';
  Fldgrd[1] := 'CUSCOD';
  Fldgrd[2] := 'NAME1';
  Fldgrd[3] := 'NAME2';
  Fldgrd[4] := 'BEGINDT';
  Fldgrd[5] := 'EXPIREDT';

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
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalLostSale: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 30;
  Title[0]  := 'เลขเอสาร';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสสินค้า';
  Title[3]  := 'ชื่อสินค้า';
  Title[4]  := 'กลุ่มสินค้า';

  Fldgrd[0] := 'DOCNO';
  Fldgrd[1] := 'DOCDT';
  Fldgrd[2] := 'PARTNO';
  Fldgrd[3] := 'DESCPT';
  Fldgrd[4] := 'GROUPPT';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalGrpMenu: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 31;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'ชื่อกลุ่ม';

  Fldgrd[0] := 'GRPCODE';
  Fldgrd[1] := 'GRPDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalSetSubject: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 32;
  Title[0]  := 'รหัสเรื่อง';
  Title[1]  := 'รายละเอียด/คำอธิบาย';

  Fldgrd[0] := 'SUBCODE';
  Fldgrd[1] := 'SUBDESC';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalStkCoupon: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 33;
  Title[0]  := 'รหัสหน้าเล่ม';
  Title[1]  := 'รหัสคูปอง';

  Fldgrd[0] := 'PARTNO';
  Fldgrd[1] := 'COUPONNO';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalTaxSal: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 34;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'เลขที่ Job';
  Title[2]  := 'คำอธิบายรายการ';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'DESC1';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalAccmst: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 35;
  Title[0]  := 'รหัสบัญชี';
  Title[1]  := 'ชื่อบัญชี';
  Title[2]  := 'หมวดบัญชี';
  Title[3]  := 'ประเภทการทำงาน';

  Fldgrd[0] := 'ACCMSTCOD';
  Fldgrd[1] := 'ACCMSTNAM';
  Fldgrd[2] := 'ACCGRPNAM';
  Fldgrd[3] := 'ACCTYPJOB';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfFindData.ShowModalBanklocat: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 36;
  Title[0]  := 'รหัสสาขาธนาคาร';
  Title[1]  := 'ชื่อสาขาธนาคาร';

  Fldgrd[0] := 'BANKLOCCOD';
  Fldgrd[1] := 'BANKLOCNAM';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Caption := 'ค้นหาข้อมูลรหัสสาขาธนาคาร';
  Result := ShowModal;
end;

function TfFindData.GetKeyno: string;
begin
  If qrFindDat.Active Then
  Case OrderCombo.Tag Of
   0 :Result := qrFindDat.Fieldbyname('CODE').Asstring;
   1 :Result := qrFindDat.Fieldbyname('TYPECOD').Asstring;
   2 :Result := qrFindDat.Fieldbyname('GROUPCOD').Asstring;
   3 :Result := qrFindDat.Fieldbyname('USERID').Asstring;
   4 :Result := qrFindDat.Fieldbyname('APCODE').Asstring;
   5 :Result := qrFindDat.Fieldbyname('LOCATCD').Asstring;
   6 :Result := qrFindDat.Fieldbyname('BANKCOD').Asstring;
   7 :Result := qrFindDat.Fieldbyname('BANKBOOKCOD').Asstring;
   8 :Result := qrFindDat.Fieldbyname('RTCODE').Asstring;
   9 :Result := qrFindDat.Fieldbyname('PAYCODE').Asstring;
   10 :Result := qrFindDat.Fieldbyname('ISCODE').Asstring;
   11 :Result := qrFindDat.Fieldbyname('CAMPNO').Asstring;
   12 :Result := qrFindDat.Fieldbyname('RLCODE').Asstring;
   13 :Result := qrFindDat.Fieldbyname('CUPONGNO').Asstring;
   14 :Result := qrFindDat.Fieldbyname('ARGCOD').Asstring;
   15 :Result := qrFindDat.fieldbyName('RECVNO').AsString;
   16 :Result := qrFindDat.fieldbyName('PONO').AsString;
   17 :Result := qrFindDat.fieldbyName('CHQNO').AsString;
   18 :Result := qrFindDat.fieldbyName('TAXNO').AsString;
   19 :Result := qrFindDat.fieldbyName('SLCODE').AsString;
   20 :Result := qrFindDat.fieldbyName('INVNO').AsString;
   21 :Result := qrFindDat.Fieldbyname('ADJNO').Asstring;
   22 :Result := qrFindDat.Fieldbyname('MODELCOD').Asstring;
   23 :Result := qrFindDat.Fieldbyname('ENCODE').Asstring;
   24 :Result := qrFindDat.Fieldbyname('DIVICOD').Asstring;
   25 :Result := qrFindDat.Fieldbyname('CUSCOD').Asstring;
   26 :Result := qrFindDat.Fieldbyname('AUMPCOD').Asstring;
   27 :Result := qrFindDat.Fieldbyname('PROVCOD').Asstring;
   28 :Result := qrFindDat.Fieldbyname('GRDCOD').Asstring;
   29 :Result := qrFindDat.Fieldbyname('VIPNO').Asstring;
   30 :Result := qrFindDat.Fieldbyname('DOCNO').Asstring;
   31 :Result := qrFindDat.Fieldbyname('GRPCODE').Asstring;
   32 :Result := qrFindDat.Fieldbyname('SUBCODE').Asstring;
   33 :Result := qrFindDat.Fieldbyname('PARTNO').Asstring;
   34 :Result := qrFindDat.Fieldbyname('TAXNO').Asstring;
   35 :Result := qrFindDat.Fieldbyname('ACCMSTCOD').Asstring;
   36 :Result := qrfindDat.fieldbyname('BANKLOCCOD').AsString;  
  end;
end;

procedure TfFindData.SearchButtonClick(Sender: TObject);
Var sqltxt :String;
begin
  With qrFindDat Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
   0:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE CODE LIKE :0 AND STATUS IN (''T'',''Y'')  ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE NAME LIKE :0 AND STATUS IN (''T'',''Y'') ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE ((CODE LIKE :0) or (NAME LIKE :0)) AND STATUS IN (''T'',''Y'')  ');
      end;
   1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT TYPECOD,TYPEDES FROM SETTYPE WHERE TYPECOD LIKE :EDIT1 ORDER BY TYPECOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT TYPECOD,TYPEDES FROM SETTYPE WHERE TYPEDES LIKE :EDIT1 ORDER BY TYPEDES');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT TYPECOD,TYPEDES FROM SETTYPE WHERE ((TYPECOD LIKE :EDIT1) or (TYPEDES LIKE :EDIT1))  ORDER BY TYPECOD');
      end;
   2:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE GROUPCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE GROUPNAM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE ((GROUPCOD LIKE :EDIT1) or (GROUPNAM LIKE :EDIT1))');
      end;
   3:begin
        If OrderCombo.Itemindex=0 Then
           SQL.ADD('SELECT * FROM SECRET WHERE USERID LIKE :EDIT1');
        If OrderCombo.ItemIndex=1 Then
           SQL.Add('SELECT * FROM SECRET WHERE USERNAME LIKE :EDIT1');
        If OrderCombo.ItemIndex=2 Then
           SQL.Add('SELECT * FROM SECRET WHERE LOCAT LIKE :EDIT1');
        If OrderCombo.Itemindex=3 Then
           SQL.ADD('SELECT * FROM SECRET WHERE ((USERID LIKE :EDIT1) or (USERNAME LIKE :EDIT1) or (LOCAT LIKE :EDIT1))');
      end;
   4:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APMAST WHERE APCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APMAST WHERE APNAME LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM APMAST WHERE ((APCODE LIKE :EDIT1) or (APNAME LIKE :EDIT1))');
      end;
   5:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM INVLOCAT WHERE LOCATCD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM INVLOCAT WHERE LOCATNM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM INVLOCAT WHERE ((LOCATCD LIKE :EDIT1) or (LOCATNM LIKE :EDIT1))');
      end;
   6:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM SETBANK WHERE BANKCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM SETBANK WHERE BANKNAM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM SETBANK WHERE ((BANKCOD LIKE :EDIT1) or (BANKNAM LIKE :EDIT1))');
      end;
   7:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM BANKBOOK WHERE BANKBOOKCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM BANKBOOK WHERE BOOKNAM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM BANKBOOK WHERE BOOKNO LIKE :EDIT1');
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT * FROM BANKBOOK WHERE ((BANKBOOKCOD LIKE :EDIT1) or (BOOKNAM LIKE :EDIT1) or (BOOKNO LIKE :EDIT1))');
      end;
   8:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM RTCHQ WHERE RTCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM RTCHQ WHERE RTNAME LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM RTCHQ WHERE ((RTCODE LIKE :EDIT1) or (RTNAME LIKE :EDIT1))');
      end;
   9:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE PAYCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE PAYDESC LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE ((PAYCODE LIKE :EDIT1) or (PAYCODE LIKE :EDIT1))');
      end;
  10:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM INSURAN WHERE ISCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM INSURAN WHERE ISNAME LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM INSURAN WHERE ((ISCODE LIKE :EDIT1) or (ISNAME LIKE :EDIT1))');
      end;
  11:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM CAMPGRP WHERE CAMPNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM CAMPGRP WHERE CAMPNAM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM CAMPGRP WHERE ((CAMPNO LIKE :EDIT1) or (CAMPNAM LIKE :EDIT1))');
      end;
  12:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  * FROM REELOCAT WHERE RLCODE LIKE :EDIT1 ORDER BY RLCODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  * FROM REELOCAT WHERE RLNAME LIKE :EDIT1  ORDER BY RLNAME');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT  * FROM REELOCAT WHERE ((RLCODE LIKE :EDIT1) or (RLNAME LIKE :EDIT1)) ORDER BY RLCODE');
        end;
  13:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM CUPONGGP WHERE CUPONGNO LIKE :0');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM CUPONGGP WHERE CUPONGNM LIKE :0');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM CUPONGGP WHERE ((CUPONGNO LIKE :0) or (CUPONGNM LIKE :0))');
      end;
  14:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ARGCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ARGDES LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ((ARGCOD LIKE :EDIT1) or (ARGDES LIKE :EDIT1))');
      end;
  15:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT RECVNO,RECVDT,APCODE,INVNO,TAXNO,PONO FROM RC_INVOI WHERE RECVNO LIKE :EDIT1 AND (FLAG=''4'' OR FLAG=''5'') ORDER BY RECVNO');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT RECVNO,RECVDT,APCODE,INVNO,TAXNO,PONO FROM RC_INVOI WHERE APCODE LIKE :EDIT1 AND (FLAG=''4'' OR FLAG=''5'') ORDER BY APCODE');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT RECVNO,RECVDT,APCODE,INVNO,TAXNO,PONO FROM RC_INVOI WHERE INVNO LIKE :EDIT1 AND (FLAG=''4'' OR FLAG=''5'') ORDER BY INVNO');
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT RECVNO,RECVDT,APCODE,INVNO,TAXNO,PONO FROM RC_INVOI WHERE TAXNO LIKE :EDIT1 AND (FLAG=''4'' OR FLAG=''5'') ORDER BY TAXNO');
        If OrderCombo.Itemindex=4 Then
        SQL .ADD('SELECT RECVNO,RECVDT,APCODE,INVNO,TAXNO,PONO FROM RC_INVOI WHERE PONO LIKE :EDIT1 AND (FLAG=''4'' OR FLAG=''5'') ORDER BY PONO');
        If OrderCombo.Itemindex=5 Then
        SQL .ADD('SELECT RECVNO,RECVDT,APCODE,INVNO,TAXNO,PONO FROM RC_INVOI WHERE ((RECVNO LIKE :EDIT1) '+
                 'or (APCODE LIKE :EDIT1) or (INVNO LIKE :EDIT1) or (TAXNO LIKE :EDIT1) or (PONO LIKE :EDIT1)) '+
                 'AND (FLAG=''4'' OR FLAG=''5'') ORDER BY RECVNO');
      end;
  16:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM PO_INVOI WHERE PONO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM PO_INVOI WHERE APCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM PO_INVOI WHERE ((PONO LIKE :EDIT1) or (APCODE LIKE :EDIT1))');
      end;
  17:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE CHQNO LIKE :EDIT1 AND PAYTYP = ''02'' '+Key_a+' ORDER BY  CHQNO ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE BKCODE LIKE :EDIT1 AND PAYTYP = ''02''  '+Key_a+' ORDER BY  BKCODE ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE REFNO LIKE :EDIT1 AND PAYTYP = ''02''  '+Key_a+'  ORDER BY  REFNO ');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE ((CHQNO LIKE :EDIT1) or (BKCODE LIKE :EDIT1) or (REFNO LIKE :EDIT1)) AND PAYTYP = ''02'' '+Key_a+' ORDER BY  CHQNO ');
      end;
  18:begin
         Sqltxt :='SELECT TAXNO,JOBNO,CUSCOD,TAXDATE,CANCELID FROM TAXSAL ';
         If OrderCombo.Itemindex=0 Then
         SQL .ADD(Sqltxt+'WHERE TAXNO LIKE :EDIT1 AND CANCEL IS NULL AND FLAG=''1'' ORDER BY TAXNO');
         If OrderCombo.Itemindex=1 Then
         SQL .ADD(Sqltxt+'WHERE JOBNO LIKE :EDIT1 AND CANCEL IS NULL AND FLAG=''1'' ORDER BY JOBNO');
         If OrderCombo.Itemindex=2 Then
         SQL .ADD(Sqltxt+'WHERE CUSCOD LIKE :EDIT1 AND CANCEL IS NULL AND FLAG=''1'' ORDER BY CUSCOD');
         If OrderCombo.Itemindex=3 Then
         SQL .ADD(Sqltxt+'WHERE ((TAXNO LIKE :EDIT1) or (JOBNO LIKE :EDIT1) or (CUSCOD LIKE :EDIT1)) '+
                         'AND CANCEL IS NULL AND FLAG=''1'' ORDER BY TAXNO');
      end;
  19:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM SALTYPE WHERE SLCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM SALTYPE WHERE SLDESC LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM SALTYPE WHERE ((SLCODE LIKE :EDIT1) or (SLDESC LIKE :EDIT1))');
      END;
   20:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  INVNO,INVDATE,TAXREFNO,PKNO,CANCELID,CANDAT FROM IC_INVOI WHERE INVNO LIKE :EDIT1 ORDER BY INVNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  INVNO,INVDATE,TAXREFNO,PKNO,CANCELID,CANDAT FROM IC_INVOI WHERE TAXREFNO LIKE :EDIT1 ORDER BY TAXREFNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT  INVNO,INVDATE,TAXREFNO,PKNO,CANCELID,CANDAT FROM IC_INVOI WHERE PKNO LIKE :EDIT1 ORDER BY PKNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT  INVNO,INVDATE,TAXREFNO,PKNO,CANCELID,CANDAT FROM IC_INVOI '+
                 'WHERE ((INVNO LIKE :EDIT1) or (TAXREFNO LIKE :EDIT1) or (PKNO LIKE :EDIT1)) ORDER BY INVNO');
      End;
   21:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC FROM ADJ_INVOI WHERE ADJNO LIKE :EDIT1 ORDER BY ADJNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC FROM ADJ_INVOI WHERE OFFICCOD LIKE :EDIT1 ORDER BY OFFICCOD');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC FROM ADJ_INVOI WHERE ADJLOC LIKE :EDIT1 ORDER BY ADJLOC');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC FROM ADJ_INVOI WHERE '+
                 '((ADJNO LIKE :EDIT1) or (OFFICCOD LIKE :EDIT1) or (ADJLOC LIKE :EDIT1)) ORDER BY ADJNO');
      End;
  22:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM SETMODEL WHERE MODELCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM SETMODEL WHERE MODELDES LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM SETMODEL WHERE ((MODELCOD LIKE :EDIT1) or (MODELCOD LIKE :EDIT1))');
      END;
  23:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM ENGINEER WHERE ENCODE LIKE :0 ');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM ENGINEER WHERE ENNAME LIKE :0 ');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM ENGINEER WHERE ((ENCODE LIKE :0) or (ENNAME LIKE :0)) ');
      End;
  24:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM DIVISION WHERE DIVICOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM DIVISION WHERE DIVINAM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM DIVISION WHERE ((DIVICOD LIKE :EDIT1) or (DIVINAM LIKE :EDIT1))');
      end;
  25:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRPCUS,IDNO,MEMBCOD FROM CUSTMAST WHERE CUSCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRPCUS,IDNO,MEMBCOD FROM CUSTMAST WHERE NAME1 LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRPCUS,IDNO,MEMBCOD FROM CUSTMAST WHERE NAME2 LIKE :EDIT1');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRPCUS,IDNO,MEMBCOD FROM CUSTMAST WHERE NICKNM LIKE :EDIT1');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRPCUS,IDNO,MEMBCOD FROM CUSTMAST WHERE IDNO LIKE :EDIT1');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRPCUS,IDNO,MEMBCOD FROM CUSTMAST WHERE MEMBCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=6 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRPCUS,IDNO,MEMBCOD FROM CUSTMAST WHERE '+
                 '((CUSCOD LIKE :EDIT1) or (NAME1 LIKE :EDIT1) or (NAME2 LIKE :EDIT1) '+
                 'or (NICKNM LIKE :EDIT1) or (IDNO LIKE :EDIT1) or (MEMBCOD LIKE :EDIT1))');
      end;
   26:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT AUMPCOD,AUMPDES,PROVCOD FROM SETAUMP WHERE AUMPCOD LIKE :EDIT1 ORDER BY AUMPCOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT AUMPCOD,AUMPDES,PROVCOD FROM SETAUMP WHERE AUMPDES LIKE :EDIT1 ORDER BY AUMPDES');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT AUMPCOD,AUMPDES,PROVCOD FROM SETAUMP WHERE PROVCOD LIKE :EDIT1 ORDER BY AUMPCOD');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT AUMPCOD,AUMPDES,PROVCOD FROM SETAUMP WHERE ((AUMPCOD LIKE :EDIT1) or (AUMPDES LIKE :EDIT1) or (PROVCOD LIKE :EDIT1)) ORDER BY AUMPDES');
      end;
   27:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT PROVCOD,PROVDES FROM SETPROV WHERE PROVCOD LIKE :EDIT1 order by PROVCOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT PROVCOD,PROVDES FROM SETPROV WHERE PROVDES LIKE :EDIT1 order by PROVDES');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT PROVCOD,PROVDES FROM SETPROV WHERE ((PROVCOD LIKE :EDIT1) or (PROVDES LIKE :EDIT1)) order by PROVDES');
      end;
   28:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT GRDCOD,GRDDES,GRDCAL FROM SETGRADE WHERE GRDCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT GRDCOD,GRDDES,GRDCAL FROM SETGRADE WHERE GRDDES LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT GRDCOD,GRDDES,GRDCAL FROM SETGRADE WHERE ((GRDCOD LIKE :EDIT1) or (GRDDES LIKE :EDIT1))');
      end;
  29:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT V.VIPNO,C.NAME1,C.NAME2,V.CUSCOD,V.BEGINDT,V.EXPIREDT FROM CUSTMAST C,CUSTOMVIP V '+
                'WHERE C.CUSCOD=V.CUSCOD AND V.VIPNO LIKE :0');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT V.VIPNO,C.NAME1,C.NAME2,V.CUSCOD,V.BEGINDT,V.EXPIREDT FROM CUSTMAST C,CUSTOMVIP V '+
                'WHERE C.CUSCOD=V.CUSCOD AND V.CUSCOD LIKE :0');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT V.VIPNO,C.NAME1,C.NAME2,V.CUSCOD,V.BEGINDT,V.EXPIREDT FROM CUSTMAST C,CUSTOMVIP V '+
                'WHERE C.CUSCOD=V.CUSCOD AND C.NAME1 LIKE :0');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT V.VIPNO,C.NAME1,C.NAME2,V.CUSCOD,V.BEGINDT,V.EXPIREDT FROM CUSTMAST C,CUSTOMVIP V '+
                'WHERE C.CUSCOD=V.CUSCOD AND C.NAME2 LIKE :0');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT V.VIPNO,C.NAME1,C.NAME2,V.CUSCOD,V.BEGINDT,V.EXPIREDT FROM CUSTMAST C,CUSTOMVIP V '+
                'WHERE C.CUSCOD=V.CUSCOD AND ((V.VIPNO LIKE :0) or (V.CUSCOD LIKE :0) or (C.NAME1 LIKE :0) or (C.NAME2 LIKE :0))');
    end;
   30:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT DOCNO,DOCDT,GROUPPT,PARTNO,DESCPT FROM LOSTSALE WHERE DOCNO LIKE :EDIT1 ORDER BY DOCDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT DOCNO,DOCDT,GROUPPT,PARTNO,DESCPT FROM LOSTSALE WHERE PARTNO LIKE :EDIT1 ORDER BY DOCDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT DOCNO,DOCDT,GROUPPT,PARTNO,DESCPT FROM LOSTSALE WHERE DESCPT LIKE :EDIT1 ORDER BY DOCDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT DOCNO,DOCDT,GROUPPT,PARTNO,DESCPT FROM LOSTSALE WHERE '+
                 '((DOCNO LIKE :EDIT1) or (PARTNO LIKE :EDIT1) or (DESCPT LIKE :EDIT1)) ORDER BY DOCDT DESC '+cbViewdata.EditValue);
      end;
   31:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT GRPCODE,GRPDESC FROM GRPMENUHD WHERE GRPCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT GRPCODE,GRPDESC FROM GRPMENUHD WHERE GRPDESC LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT GRPCODE,GRPDESC FROM GRPMENUHD WHERE ((GRPCODE LIKE :EDIT1) or (GRPDESC LIKE :EDIT1))');
      end;
  32:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM TSUBJECT WHERE SUBCODE LIKE :0  ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM TSUBJECT WHERE SUBDESC LIKE :0  ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM TSUBJECT WHERE ((SUBCODE LIKE :0) or (SUBDESC LIKE :0)) ');
      end;

  33:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM STK_COUPON WHERE PARTNO LIKE :0 ORDER BY PARTNO,COUPONNO ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM STK_COUPON WHERE COUPONNO LIKE :0 ORDER BY PARTNO,COUPONNO ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM STK_COUPON WHERE ((PARTNO LIKE :0) OR (COUPONNO LIKE :0)) ORDER BY PARTNO,COUPONNO ');
      end;

  34:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM TAXSAL WHERE TAXNO LIKE :0 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM TAXSAL WHERE JOBNO LIKE :0 ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM TAXSAL WHERE ((TAXNO LIKE :0) or (JOBNO LIKE :0)) ');
      end;

  35:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT A.ACCMSTCOD,SUBSTR(A.ACCMSTNAM,1,60) AS ACCMSTNAM, '+
                 'SUBSTR(G.ACCGRPNAM,1,15) AS ACCGRPNAM,A.ACCLEVEL,'+
                 '(CASE A.ACCTYPJOB WHEN ''1'' THEN ''บัญชีคุม'' ELSE ''บัญชีย่อย'' END) AS ACCTYPJOB,'+
                 'A.ACCFLAG,A.ACCFLAGUSE,A.ACCGRPCOD '+
                 'FROM ACCMST A,ACCGROUP G WHERE A.ACCGRPCOD=G.ACCGRPCOD '+
                 'AND A.ACCMSTCOD LIKE :EDIT1 AND A.ACCFLAG LIKE :EDIT2 AND '+
                 'A.ACCFLAGUSE LIKE :EDIT3 AND A.ACCGRPCOD LIKE :EDIT4 ORDER BY A.ACCMSTCOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT A.ACCMSTCOD,SUBSTR(A.ACCMSTNAM,1,60) AS ACCMSTNAM, '+
                 'SUBSTR(G.ACCGRPNAM,1,15) AS ACCGRPNAM,A.ACCLEVEL,'+
                 '(CASE A.ACCTYPJOB WHEN ''1'' THEN ''บัญชีคุม'' ELSE ''บัญชีย่อย'' END) AS ACCTYPJOB,'+
                 'A.ACCFLAG,A.ACCFLAGUSE,A.ACCGRPCOD '+
                 'FROM ACCMST A,ACCGROUP G WHERE A.ACCGRPCOD=G.ACCGRPCOD '+
                 'AND A.ACCMSTNAM LIKE :EDIT1 AND A.ACCFLAG LIKE :EDIT2 AND '+
                 'A.ACCFLAGUSE LIKE :EDIT3 AND A.ACCGRPCOD LIKE :EDIT4 ORDER BY A.ACCMSTCOD');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT A.ACCMSTCOD,SUBSTR(A.ACCMSTNAM,1,60) AS ACCMSTNAM, '+
                 'SUBSTR(G.ACCGRPNAM,1,15) AS ACCGRPNAM,A.ACCLEVEL,'+
                 '(CASE A.ACCTYPJOB WHEN ''1'' THEN ''บัญชีคุม'' ELSE ''บัญชีย่อย'' END) AS ACCTYPJOB,'+
                 'A.ACCFLAG,A.ACCFLAGUSE,A.ACCGRPCOD '+
                 'FROM ACCMST A,ACCGROUP G WHERE A.ACCGRPCOD=G.ACCGRPCOD '+
                 'AND ((A.ACCMSTCOD LIKE :EDIT0) or (A.ACCMSTNAM LIKE :EDIT1)) AND A.ACCFLAG LIKE :EDIT2 AND '+
                 'A.ACCFLAGUSE LIKE :EDIT3 AND A.ACCGRPCOD LIKE :EDIT4 ORDER BY A.ACCMSTCOD');
        if OrderCombo.ItemIndex <> 2 then
         Begin
            qrFindDat.Params[1].AsString := Accflag+'%';
            qrFindDat.Params[2].AsString := AccFlagUse+'%';
            qrFindDat.Params[3].AsString := Accgrpcod+'%';
         End else
         begin
            qrFindDat.Params[1].AsString := Uppercase('%'+SearchEd.Text+'%');
            qrFindDat.Params[2].AsString := Accflag+'%';
            qrFindDat.Params[3].AsString := AccFlagUse+'%';
            qrFindDat.Params[4].AsString := Accgrpcod+'%';
         end;
     end;

    36:begin
          If OrderCombo.Itemindex=0 Then
          SQL.ADD( 'SELECT BANKLOCCOD,BANKLOCNAM,BANKLOCENG FROM BANKLOCAT '+
                   'WHERE BANKLOCCOD LIKE :EDIT1 ORDER BY BANKLOCCOD');
          If OrderCombo.Itemindex=1 Then
          SQL.ADD( 'SELECT BANKLOCNAM,BANKLOCCOD,BANKLOCENG FROM BANKLOCAT '+
                   'WHERE BANKLOCNAM LIKE :EDIT1 ORDER BY BANKLOCNAM');
          If OrderCombo.Itemindex=2 Then
          SQL.ADD( 'SELECT BANKLOCCOD,BANKLOCNAM,BANKLOCENG FROM BANKLOCAT '+
                   'WHERE ((BANKLOCCOD LIKE :EDIT1) or (BANKLOCNAM LIKE :EDIT1)) ORDER BY BANKLOCCOD');
        end;

   end;
      qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
      qrFindDat.Open;
      SFMain.Do_Show_DisplayFormat_Floating(qrFindDat);
 End;
end;

procedure TfFindData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfFindData.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TfFindData.CalcMax;
begin
  { ** Field Name & Title** }
  I:=0;
  While I<=10 Do
  begin
    DBGrid1DBTableView1.CreateColumn.DataBinding.FieldName    := Fldgrd[I];
    Dbgrid1DBTableView1.Columns[I].Caption := Title[I];
    If Fldgrd[I]='' Then
    begin
     Max:=I-1;
     If Max<0 Then Max:=0;
     break;
    end;
    I:=I+1;
  end;
end;

procedure TfFindData.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;
end;

procedure TfFindData.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
      SearchButtonClick(Sender);
      DbGrid1.SetFocus;
   End;
end;

procedure TfFindData.OrderComboPropertiesChange(Sender: TObject);
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
  DBGrid1DBTableView1.ClearItems;
  for I:=0 To Max Do
  begin
    DBGrid1DBTableView1.CreateColumn.DataBinding.FieldName    := Fldgrd[I];
    Dbgrid1DBTableView1.Columns[I].Caption := Title[I];
    If Fldgrd[I] = 'NAME1' Then
      DBGrid1DBTableView1.Columns[I].Width := 80;
  end;
end;

procedure TfFindData.SearchEdPropertiesChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
  SearchButtonClick(Sender);
end;

procedure TfFindData.DBGrid1DBTableView1CustomDrawIndicatorCell(
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
    AStyle := sfmain.styleSelected
  else
    AStyle := sfmain.styleNormal;
    
  if AIndicatorViewInfo.GridRecord.Index + 1 = 0 then
  IndNo := '' else
  IndNo := IntToStr(AIndicatorViewInfo.GridRecord.Index + 1);

  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
    False, False, IndNo,
    AStyle.Font, AStyle.TextColor, AStyle.Color);
  ADone := True;
end;

procedure TfFindData.DBGrid1DBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfFindData.DBGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure TfFindData.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = true then
  DBGrid1DBTableView1.DataController.Groups.FullExpand else
  DBGrid1DBTableView1.DataController.Groups.FullCollapse;
end;

procedure TfFindData.DBGrid1DBTableView1DataControllerGroupingChanged(
  Sender: TObject);
begin
  cxCheckBox1.Checked := False;
  cxCheckBox1.Enabled := ((qrFindDat.RecordCount>0) AND
                          (DBGrid1DBTableView1.GroupedColumnCount>0));
end;

end.
