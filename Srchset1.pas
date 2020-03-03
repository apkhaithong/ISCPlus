unit Srchset1;
                                       
interface                            

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCardView, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGridDBCardView, cxCheckBox, AdvShapeButton, AdvGlowButton,
  cxLookAndFeels, cxNavigator, dxDateRanges, dxBarBuiltInMenu, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridCustomLayoutView;

type
  TSearchSet = class(TForm)
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
    StatusBar2: TStatusBar;
    DBGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    DBGrid1DBCardView1: TcxGridDBCardView;
    cxGridLevel2: TcxGridLevel;
    HQuery1: TFDQuery;
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxGridDBTableView1DataControllerGroupingChanged(
      Sender: TObject);
    procedure cxGridDBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    NewKeyno,Xsrch,XSysSet,XFlag: string;
    property Keyno: string read GetKeyno;

    function ShowModalType: Integer;
    function ShowModalModel: Integer;
    function ShowModalBaab: Integer;
    function ShowModalColor: Integer;
    function ShowModalSV: Integer;
    function ShowModalsetgrp: Integer;
    function ShowModalInvmst: Integer;
    function ShowModalsetRegfg: Integer;
    function ShowModalsetRegGp: Integer;
    function ShowModalsetAp: Integer;
    function ShowModalsetFinmst: Integer;
    function ShowModalsetGarmst: Integer;
    function ShowModalsetBank: Integer;
    function ShowModalsetPaytyp: Integer;
    function ShowModalsetPayfor: Integer;
    function ShowModalsetRtchq: Integer;
    function ShowModalsetBook: Integer;
    function ShowModalBroker: Integer;
    function ShowModalsetConttyp: Integer;
    function ShowModalsettypLost: Integer;
    function ShowModalsetArgrp: Integer;
    function ShowModalsetGrade: Integer;
    function ShowModalsetLocat: Integer;
    function ShowModalsetDepmast: Integer;
    function ShowModalsetOfficer: Integer;
    function ShowModalsetAump: Integer;
    function ShowModalsetProv: Integer;
    function ShowModalCusmast: Integer;
    function ShowModalTypSale: Integer;
    function ShowModalsettyphold: Integer;
    function ShowModalPayDue : Integer;
    function ShowModalOptmas: Integer;
    function ShowModalPasswd: Integer;
    function ShowModalSVCost: Integer;
    function ShowModalsetReson: Integer;
    function ShowModalTumb: Integer;
    function ShowModalSetActi: Integer;
    function ShowModalHOptmas: Integer;
    function ShowModalTaxtran: Integer;
    function ShowModalKitOpt: Integer;
    function ShowModalAppart: Integer;
    function ShowModalApprovBp: Integer;
    function ShowModalApprovResv: Integer;
    function ShowModalInvSetmst: Integer;
    function ShowModalSetCampaign: Integer;
    function ShowModalCampaignReserv: Integer;
    function ShowModalReeLocat: Integer;
    function ShowModalBankbook   : Integer;
    function ShowModalDIVISION: Integer;
  end;

var
  SearchSet: TSearchSet;

  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;

implementation
uses USoftFirm, Dmsec;

{$R *.DFM}

function TSearchSet.ShowModalType: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 1;
  Title[0]  := 'ชื่อยี่ห้อ';

  Fldgrd[0] := 'TYPECOD';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ยี่ห้อสินค้า';
  Result := ShowModal;
end;


function TSearchSet.ShowModalModel: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 3;
  Title[0]  := 'ชื่อรุ่น';
  Title[1]  := 'รายละเอียด';
  Title[2]  := 'ชื่อรุ่นฝ่ายขาย';

  Fldgrd[0] := 'MODELCOD';
  Fldgrd[1] := 'MODELDES';
  Fldgrd[2] := 'SUBMODEL';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 1;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส รุ่นสินค้า';
  Result := ShowModal;
end;

function TSearchSet.ShowModalColor: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 4;
  Title[0]  := 'รหัสสีรถ';
  Title[1]  := 'ชื่อสีรถ';

  Fldgrd[0] := 'COLORCOD';
  Fldgrd[1] := 'COLORDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 1;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส สี ';
  Result := ShowModal;
end;


function TSearchSet.ShowModalBaab: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 6;
  Title[0]  := 'ชื่อแบบรถ';
  Title[1]  := 'รายละเอียด';

  Fldgrd[0] := 'BAABCOD';
  Fldgrd[1] := 'BAABDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 1;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส แบบ ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetgrp: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 7;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'ชื่อกลุ่ม';

  Fldgrd[0] := 'GCODE';
  Fldgrd[1] := 'GDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส กลุ่มสินค้า';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSV: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 8;
  Title[0]  := 'รหัส';
  Title[1]  := 'ชื่อบริษัท';

  Fldgrd[0] := 'CODE';
  Fldgrd[1] := 'SVNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'อู่ซ่อมรถ ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalInvmst: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 9;
  Title[0]  := 'ยี่ห้อ';
  Title[1]  := 'รุ่น';
  Title[2]  := 'แบบ';
  Title[3]  := 'สี';
  Title[4]  := 'ขนาด';
  Title[5]  := 'สถานะ';

  Fldgrd[0] := 'Type';
  Fldgrd[1] := 'Model';
  Fldgrd[2] := 'Baab';
  Fldgrd[3] := 'Color';
  Fldgrd[4] := 'CC';
  Fldgrd[5] := 'Stat';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetregfg: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 10;
  Title[0]  := 'รหัส';
  Title[1]  := 'สถานะ';

  Fldgrd[0] := 'REGCODE';
  Fldgrd[1] := 'REGDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetregGp: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 11;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'ชื่อกลุ่มรถ';

  Fldgrd[0] := 'GRPCOD';
  Fldgrd[1] := 'GRPDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;
function TSearchSet.ShowModalSetAp: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 12;
  Title[0]  := 'รหัสเจ้าหนี้';
  Title[1]  := 'ชื่อเจ้าหนี้';
  Title[2]  := 'เครดิต';

  Fldgrd[0] := 'APCODE';
  Fldgrd[1] := 'APNAME';
  Fldgrd[2] := 'CREDTM';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส เจ้าหนี้';
  Result := ShowModal;
end;
function TSearchSet.ShowModalSetFinmst: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 13;
  Title[0]  := 'รหัสไฟแนนซ์';
  Title[1]  := 'ชื่อไฟแนนซ์';

  Fldgrd[0] := 'FINCODE';
  Fldgrd[1] := 'FINNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ไฟแนนซ์ ';
  Result := ShowModal;
end;
function TSearchSet.ShowModalSetGarmst: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 14;
  Title[0]  := 'รหัสบริษัทประกัน';
  Title[1]  := 'ชื่อบริษัทประกัน';

  Fldgrd[0] := 'GARCODE';
  Fldgrd[1] := 'GARNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส บริษัทประกัน ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetBank: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 15;
  Title[0]  := 'รหัสธนาคาร';
  Title[1]  := 'ชื่อธนาคาร';

  Fldgrd[0] := 'BANKCOD';
  Fldgrd[1] := 'BANKNAM';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ธนาคาร';
  Result := ShowModal;
end;
function TSearchSet.ShowModalSetPaytyp: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 16;
  Title[0]  := 'รหัสประเภท';
  Title[1]  := 'ชื่อประเภท';

  Fldgrd[0] := 'PAYCODE';
  Fldgrd[1] := 'PAYDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;
function TSearchSet.ShowModalSetPayfor: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 17;
  Title[0]  := 'รหัสชำระ';
  Title[1]  := 'ชำระค่า';

  Fldgrd[0] := 'FORCODE';
  Fldgrd[1] := 'FORDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;
function TSearchSet.ShowModalSetRtchq: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 18;
  Title[0]  := 'รหัสการคืนเช็ค';
  Title[1]  := 'คำอธิบาย';

  Fldgrd[0] := 'RTCODE';
  Fldgrd[1] := 'RTNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetBook: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 19;
  Title[0]  := 'รหัสบัญชี';
  Title[1]  := 'คำอธิบาย';

  Fldgrd[0] := 'BANKBOOKCOD';
  Fldgrd[1] := 'BOOKNAM';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalBroker: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 20;
  Title[0]  := 'รหัสสมาชิก';
  Title[1]  := 'วันที่สมัคร';
  Title[2]  := 'ชื่อ';
  Title[3]  := 'นามสกุล';
  Title[4]  := 'พนักงานขาย';

  Fldgrd[0] := 'MEMBERID';
  Fldgrd[1] := 'MEMBERDT';
  Fldgrd[2] := 'FNAME';
  Fldgrd[3] := 'LNAME';
  Fldgrd[4] := 'SALECODE';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);

  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetConttyp: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 21;
  Title[0]  := 'รหัสสถานะสัญญา';
  Title[1]  := 'คำอธิบาย';

  Fldgrd[0] := 'CONTTYP';
  Fldgrd[1] := 'CONTDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;
function TSearchSet.ShowModalSettypLost: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 22;
  Title[0]  := 'รหัสหนี้สูญ';
  Title[1]  := 'คำอธิบาย';

  Fldgrd[0] := 'LOSTCOD';
  Fldgrd[1] := 'LOSTESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;
function TSearchSet.ShowModalSetArgrp: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 23;
  Title[0]  := 'รหัสกลุ่มลูกหนี้';
  Title[1]  := 'ชื่อกลุ่ม';

  Fldgrd[0] := 'ARGCOD';
  Fldgrd[1] := 'ARGDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetGrade: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 24;
  Title[0]  := 'เกรด';
  Title[1]  := 'รายละเอียด';
  Title[2]  := 'ชำระช้า(งวด)';

  Fldgrd[0] := 'GRDCOD';
  Fldgrd[1] := 'GRDDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetLocat: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 25;
  Title[0]  := 'รหัสสาขา';
  Title[1]  := 'ชื่อสาขา';
  Title[2]  := 'รหัสย่อ';

  Fldgrd[0] := 'LOCATCD';
  Fldgrd[1] := 'LOCATNM';
  Fldgrd[2] := 'SHORTL';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;
function TSearchSet.ShowModalSetDepmast: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 26;
  Title[0]  := 'รหัสแผนก';
  Title[1]  := 'ชื่อแผนก';

  Fldgrd[0] := 'DIVICOD';
  Fldgrd[1] := 'DIVINAM';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;
function TSearchSet.ShowModalSetOfficer: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 27;
  Title[0]  := 'รหัสพนักงาน';
  Title[1]  := 'ชื่อพนักงาน';

  Fldgrd[0] := 'CODE';
  Fldgrd[1] := 'NAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetAump: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 28;
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
  OrderCombo.ItemIndex := 1;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetProv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 29;
  Title[0]  := 'รหัสจังหวัด';
  Title[1]  := 'ชื่อจังหวัด';

  Fldgrd[0] := 'PROVCOD';
  Fldgrd[1] := 'PROVDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 1;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalCusmast: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 30;
  Title[0]  := 'รหัสลูกค้า';
  Title[1]  := 'ชื่อ';
  Title[2]  := 'นามสกุล';
  Title[3]  := 'คำนำหน้า';
  Title[4]  := 'ชื่อเล่น';
  Title[5]  := 'เลขที่บัตร';
  Title[6]  := 'เลขที่สมาชิก';


  Fldgrd[0] := 'CUSCOD';
  Fldgrd[1] := 'NAME1';
  Fldgrd[2] := 'NAME2';
  Fldgrd[3] := 'SNAM';
  Fldgrd[4] := 'NICKNM';
  Fldgrd[5] := 'IDNO';
  Fldgrd[6] := 'MEMBCOD';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;
function TSearchSet.ShowModalTypSale: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 31;
  Title[0]  := 'ประเภทการขาย';
  Title[1]  := 'คำอธิบาย';

  Fldgrd[0] := 'TSALE';
  Fldgrd[1] := 'DESC1';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;
function TSearchSet.ShowModalSettyphold: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 32;
  Title[0]  := 'รหัสสาเหตุ';
  Title[1]  := 'คำอธิบาย';

  Fldgrd[0] := 'HOLDCOD';
  Fldgrd[1] := 'HOLDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalPayDue: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 33;
  Title[0]  := 'วิธีการชำระเงิน';
  Title[1]  := 'คำอธิบาย';

  Fldgrd[0] := 'PAYCODE';
  Fldgrd[1] := 'PAYDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;
function TSearchSet.ShowModalOptmas: Integer;
begin
  OrderCombo.Tag := 34;
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
  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส';
  Result := ShowModal;
end;

function TSearchSet.ShowModalPasswd: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 35;
  Title[0]  := 'USERID';
  Title[1]  := 'รหัสพนักงาน';
  Title[2]  := 'ชื่อพนักงาน';

  Fldgrd[0] := 'USERID';
  Fldgrd[1] := 'CUSCOD';
  Fldgrd[2] := 'USERNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSVCost: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 36;
  Title[0]  := 'ทะเบียน';
  Title[1]  := 'เลขตัวถัง';
  Title[2]  := 'เลขเอกสาร';

  Fldgrd[0] := 'REGNO';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'DOCNO';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ต้นทุนซ่อม';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetreson: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 37;
  Title[0]  := 'เหตุผลในการลดหนี้';

  Fldgrd[0] := 'RESONCD';
  Fldgrd[1] := 'RESNDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส เหตุผลในการลดหนี้';
  Result := ShowModal;
end;

function TSearchSet.ShowModalTumb: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 38;
  Title[0]  := 'ตำบล';

  Fldgrd[0] := 'TUMB';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetActi: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 39;
  Title[0]  := 'รหัสกิจกรรม';
  Title[1]  := 'ชื่อกิจกรรม';

  Fldgrd[0] := 'ACTICOD';
  Fldgrd[1] := 'ACTIDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส กิจกรรม';
  Result := ShowModal;
end;

function TSearchSet.ShowModalHOptmas: Integer;
begin
  OrderCombo.Tag := 40;
  Title[0]  := 'รหัสอุปกรณ์';
  Title[1]  := 'ชื่ออุปกรณ์';
  Title[2]  := 'ราคาขาย';
  Title[3]  := 'ราคาทุน';

  Fldgrd[0] := 'OPTCODE';
  Fldgrd[1] := 'OPTNAME';
  Fldgrd[2] := 'UNITPRC';
  Fldgrd[3] := 'UNITCST';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส';
  Result := ShowModal;
end;

function TSearchSet.ShowModalTaxtran: Integer;
begin
  OrderCombo.Tag := 41;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'ประเภทการขาย';
  Title[2]  := 'เลขที่สัญญา';
  Title[3]  := 'รหัสลูกค้า';
  Title[4]  := 'ชื่อ';
  Title[5]  := 'สกุล';
  Title[6]  := 'สถานะ';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TSALE';
  Fldgrd[2] := 'CONTNO';
  Fldgrd[3] := 'CUSCOD';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'FLAG';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส';
  Result := ShowModal;
end;

function TSearchSet.ShowModalKitOpt: Integer;
begin
  OrderCombo.Tag := 42;
  Title[0] := 'รหัสชุดอุปกรณ์';
  Title[1] := 'ชื่อชุดอุปกรณ์';

  Fldgrd[0] := 'KITCODE';
  Fldgrd[1] := 'KITNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  calcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ชุดอุปกรณ์เสริม';
  Result := Showmodal;
end;

function TSearchSet.ShowModalAppart: Integer;
begin
  OrderCombo.Tag := 43;
  Title[0] := 'รหัสร้านอะไหล่';
  Title[1] := 'ชื่อร้านอะไหล่';

  Fldgrd[0] := 'APPCODE';
  Fldgrd[1] := 'APPNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ร้านอะไหล่';
  Result := ShowModal;
end;

function TSearchSet.ShowModalApprovBp: Integer;
begin
  OrderCombo.Tag := 44;
  Title[0] := 'เลขที่ใบสั่งซื้อ';

  Fldgrd[0] :='BUYNO';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส อนุมัติสั่งซื้อ';
  Result := ShowModal;
end;

function TSearchSet.ShowModalApprovResv: Integer;
begin
  OrderCombo.Tag := 45;
  Title[0] := 'เลขที่ใบจอง';

  Fldgrd[0] :='RESVNO';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส อนุมัติการจอง';
  Result := ShowModal;
end;

function TSearchSet.ShowModalInvSetmst: Integer;
begin
  OrderCombo.Tag := 46;
  Title[0] := 'รหัสชุด';
  Title[1] := 'ยี่ห้อ';
  Title[2] := 'รุ่น';
  Title[3] := 'แบบ';

  Fldgrd[0] :='INVCODE';
  Fldgrd[1] :='TYPE';
  Fldgrd[2] :='MODEL';
  Fldgrd[3] :='BAAB';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส ราคามาตรฐาน';
  Result := ShowModal;
end;

function TSearchSet.ShowModalSetCampaign: Integer;
begin
  OrderCombo.Tag := 47;
  Title[0] := 'รหัส Campaign';
  Title[1] := 'ชื่อ Campaign';
  Title[2] := 'รุ่น';

  Fldgrd[0] :='CAMPCODE';
  Fldgrd[1] :='CAMPNAME';
  Fldgrd[2] :='MODEL';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส Campaign';
  Result := ShowModal;
end;

function TSearchSet.ShowModalCampaignReserv: Integer;
begin
  OrderCombo.Tag := 48;
  Title[0] := 'รหัส Campaign';
  Title[1] := 'ชื่อ Campaign';
  Title[2] := 'รุ่น';

  Fldgrd[0] :='CAMPCODE';
  Fldgrd[1] :='CAMPNAME';
  Fldgrd[2] :='MODEL';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส Campaign';
  Result := ShowModal;
end;

function TSearchSet.ShowModalReeLocat: Integer;
begin
  OrderCombo.Tag := 49;
  Title[0] := 'รหัสสถานที่';
  Title[1] := 'สถานที่';

  Fldgrd[0] :='RLCODE';
  Fldgrd[1] :='RLNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัส สถานที่รับจอง';
  Result := ShowModal;
end;

function TSearchSet.ShowModalBankbook: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 50;
  Title[0]  := 'รหัสสมุด';
  Title[1]  := 'ชื่อธนาคาร';
  Title[2]  := 'ชื่อสาขา';
  Title[3]  := 'เลขที่บัญชี';
  Title[4]  := 'ประเภทสมุด';
  Title[5]  := 'ชื่อบัญชี';
  Title[6]  := 'รหัสบัญชี';

  Fldgrd[0] := 'BANKBOOKCOD';
  Fldgrd[1] := 'BANKNAM';
  Fldgrd[2] := 'BANKLOCNAM';
  Fldgrd[3] := 'BOOKNO';
  Fldgrd[4] := 'BOOKTYPNAM';
  Fldgrd[5] := 'BOOKNAM';
  Fldgrd[6] := 'ACCMSTCOD';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Result := ShowModal;
end;

function TSearchSet.ShowModalDIVISION: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 51;
  Title[0]  := 'รหัสแผนก';
  Title[1]  := 'ชื่อแผนก';


  Fldgrd[0] := 'DIVICOD';
  Fldgrd[1] := 'DIVINAM';


  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Result := ShowModal;
end;
function TSearchSet.GetKeyno: string;
begin
  If HQuery1.Active Then
  Case OrderCombo.Tag Of
    1 :Result := HQuery1.Fieldbyname('TYPECOD').Asstring;
    3 :Result := HQuery1.Fieldbyname('MODELCOD').Asstring;
    4 :Result := HQuery1.Fieldbyname('COLORCOD').Asstring;
    6 :Result := HQuery1.Fieldbyname('BAABCOD').Asstring;
    7 :Result := HQuery1.Fieldbyname('GCODE').Asstring;
    8 :Result := HQuery1.Fieldbyname('CODE').AsString;
    9 :Result := HQuery1.Fieldbyname('Type').Asstring;
   10 :Result := HQuery1.Fieldbyname('REGCODE').Asstring;
   11 :Result := HQuery1.Fieldbyname('GRPCOD').Asstring;
   12 :Result := HQuery1.Fieldbyname('APCODE').Asstring;
   13 :Result := HQuery1.Fieldbyname('FINCODE').Asstring;
   14 :Result := HQuery1.Fieldbyname('GARCODE').Asstring;
   15 :Result := HQuery1.Fieldbyname('BANKCOD').Asstring;
   16 :Result := HQuery1.Fieldbyname('PAYCODE').Asstring;
   17 :Result := HQuery1.Fieldbyname('FORCODE').Asstring;
   18 :Result := HQuery1.Fieldbyname('RTCODE').Asstring;
   19 :Result := HQuery1.Fieldbyname('BANKBOOKCOD').Asstring;
   20 :Result := HQuery1.Fieldbyname('MEMBERID').Asstring;
   21 :Result := HQuery1.Fieldbyname('CONTTYP').Asstring;
   22 :Result := HQuery1.Fieldbyname('LOSTCOD').Asstring;
   23 :Result := HQuery1.Fieldbyname('ARGCOD').Asstring;
   24 :Result := HQuery1.Fieldbyname('GRDCOD').Asstring;
   25 :Result := HQuery1.Fieldbyname('LOCATCD').Asstring;
   26 :Result := HQuery1.Fieldbyname('DIVICOD').Asstring;
   27 :Result := HQuery1.Fieldbyname('CODE').Asstring;
   28 :Result := HQuery1.Fieldbyname('AUMPCOD').Asstring;
   29 :Result := HQuery1.Fieldbyname('PROVCOD').Asstring;
   30 :Result := HQuery1.Fieldbyname('CUSCOD').Asstring;
   31 :Result := HQuery1.Fieldbyname('TSALE').Asstring;
   32 :Result := HQuery1.Fieldbyname('HOLDCOD').Asstring;
   33 :Result := HQuery1.Fieldbyname('PAYCODE').Asstring;
   34 :Result := HQuery1.Fieldbyname('OPTCODE').Asstring;
   35 :Result := HQuery1.Fieldbyname('USERID').Asstring;
   36 :Result := HQuery1.Fieldbyname('DOCNO').Asstring;
   37 :Result := HQuery1.Fieldbyname('RESONCD').Asstring;
   38 :Result := HQuery1.Fieldbyname('TUMB').Asstring;
   39 :Result := HQuery1.Fieldbyname('ACTICOD').Asstring;
   40 :Result := HQuery1.Fieldbyname('OPTCODE').Asstring;
   41 :Result := HQuery1.fieldbyname('TAXNO').AsString;
   42 :Result := HQuery1.fieldbyname('KITCODE').AsString;
   43 :Result := HQuery1.fieldbyname('APPCODE').AsString;
   44 :Result := HQuery1.fieldbyname('BUYNO').AsString;
   45 :Result := Hquery1.fieldbyname('RESVNO').AsString;
   46 :Result := Hquery1.fieldbyname('INVCODE').AsString;
   47 :Result := Hquery1.fieldbyname('CAMPCODE').AsString;
   48 :Result := Hquery1.fieldbyname('CAMPCODE').AsString;
   49 :Result := Hquery1.fieldbyname('RLCODE').AsString;
   50 :Result := Hquery1.fieldbyname('BANKBOOKCOD').AsString;
   51 :Result := Hquery1.fieldbyname('DIVICOD').AsString;
  end;
end;

procedure TSearchSet.SearchButtonClick(Sender: TObject);
begin
  With HQuery1 Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT TYPECOD FROM SETTYPE WHERE TYPECOD LIKE :EDIT1');
      end;
    3:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SETMODEL '+
                 'WHERE (MODELCOD LIKE :EDIT1) or (MODELDES LIKE :EDIT1) or (SUBMODEL LIKE :EDIT1) ORDER BY MODELCOD');
        If OrderCombo.ItemIndex=1 Then
        SQL.Add( 'SELECT * FROM SETMODEL '+
                 'WHERE (MODELCOD LIKE :EDIT1) or (MODELDES LIKE :EDIT1) or (SUBMODEL LIKE :EDIT1) ORDER BY MODELCOD');
        If OrderCombo.ItemIndex=2 Then
        SQL.Add( 'SELECT * FROM SETMODEL '+
                 'WHERE (MODELCOD LIKE :EDIT1) or (MODELDES LIKE :EDIT1) or (SUBMODEL LIKE :EDIT1) ORDER BY MODELCOD');
      end;
    4:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT COLORCOD,COLORDES FROM SETCOLOR WHERE (COLORCOD LIKE :EDIT1 or COLORDES LIKE :EDIT1) ORDER BY COLORCOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT COLORCOD,COLORDES FROM SETCOLOR WHERE (COLORCOD LIKE :EDIT1 or COLORDES LIKE :EDIT1) ORDER BY COLORCOD');
      end;
    6:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT BAABCOD,BAABDES FROM SETBAAB WHERE (BAABCOD LIKE :EDIT1 or BAABDES LIKE :EDIT1) order by baabcod');
        If OrderCombo.ItemIndex=1 Then
        SQL.Add( 'SELECT BAABCOD,BAABDES FROM SETBAAB WHERE (BAABCOD LIKE :EDIT1 or BAABDES LIKE :EDIT1) order by baabcod');
      end;
    7:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT GCODE,GDESC FROM SETGROUP WHERE (GCODE LIKE :EDIT1 or GDESC LIKE :EDIT1) order by gcode');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT GCODE,GDESC FROM SETGROUP WHERE (GCODE LIKE :EDIT1 or GDESC LIKE :EDIT1) order by gcode');
      end;
    8:begin
        if  OrderCombo.ItemIndex=0 then
        sql.Add('SELECT * FROM SETSV WHERE (CODE LIKE :0 or SVNAME LIKE :0) order by code');
        if  OrderCombo.ItemIndex=1 then
        sql.Add('SELECT * FROM SETSV WHERE (CODE LIKE :0 or SVNAME LIKE :0) order by code');
      end;
    9:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM INVMAST WHERE (TYPE LIKE :EDIT1 or MODEL LIKE :EDIT1 or BAAB LIKE :EDIT1) order by type');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM INVMAST WHERE (TYPE LIKE :EDIT1 or MODEL LIKE :EDIT1 or BAAB LIKE :EDIT1) order by type');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM INVMAST WHERE (TYPE LIKE :EDIT1 or MODEL LIKE :EDIT1 or BAAB LIKE :EDIT1) order by type');
      end;
   10:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT REGCODE,REGDESC FROM REGFLAG WHERE REGCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT REGCODE,REGDESC FROM REGFLAG WHERE REGDESC LIKE :EDIT1');
      end;
   11:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT GRPCOD,GRPDESC FROM INVGRPM WHERE GRPCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT GRPCOD,GRPDESC FROM INVGRPM WHERE GRPDESC LIKE :EDIT1');
      end;
   12:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT APCODE,APNAME,CREDTM FROM APMAST WHERE (APCODE LIKE :EDIT1 or APNAME LIKE :EDIT1) order by apcode');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT APCODE,APNAME,CREDTM FROM APMAST WHERE (APCODE LIKE :EDIT1 or APNAME LIKE :EDIT1) order by apcode');
      end;
   13:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT FINCODE,FINNAME FROM FINMAST WHERE (FINCODE LIKE :EDIT1 or FINNAME LIKE :EDIT1) order by fincode');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT FINCODE,FINNAME FROM FINMAST WHERE (FINCODE LIKE :EDIT1 or FINNAME LIKE :EDIT1) order by fincode');
      end;
   14:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT GARCODE,GARNAME FROM GARMAST WHERE GARCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT GARCODE,GARNAME FROM GARMAST WHERE GARNAME LIKE :EDIT1');
      end;
   15:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT BANKCOD,BANKNAM FROM SETBANK WHERE (BANKCOD LIKE :EDIT1 or BANKNAM LIKE :EDIT1) order by bankcod');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT BANKCOD,BANKNAM FROM SETBANK WHERE (BANKCOD LIKE :EDIT1 or BANKNAM LIKE :EDIT1) order by bankcod');
      end;
   16:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT PAYCODE,PAYDESC FROM PAYTYP WHERE (PAYCODE LIKE :EDIT1 or PAYDESC LIKE :EDIT1) order by paycode');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT PAYCODE,PAYDESC FROM PAYTYP WHERE (PAYCODE LIKE :EDIT1 or PAYDESC LIKE :EDIT1) order by paycode');
      end;
   17:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT FORCODE,FORDESC,TAXFL FROM PAYFOR WHERE (FORCODE LIKE :EDIT1 or FORDESC LIKE :EDIT1) AND SNCSET LIKE :EDIT2 ORDER BY FORCODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT FORCODE,FORDESC,TAXFL FROM PAYFOR WHERE (FORCODE LIKE :EDIT1 or FORDESC LIKE :EDIT1) AND SNCSET LIKE :EDIT2 ORDER BY FORCODE');
      end;
   18:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT RTCODE,RTNAME FROM RTCHQ WHERE RTCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT RTCODE,RTNAME FROM RTCHQ WHERE RTNAME LIKE :EDIT1');
      end;
   19:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM BANKBOOK WHERE (BANKBOOKCOD LIKE :EDIT1 or BOOKNAM LIKE :EDIT1) order by bankbookcod');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM BANKBOOK WHERE (BANKBOOKCOD LIKE :EDIT1 or BOOKNAM LIKE :EDIT1) order by bankbookcod');
      end;
   20:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT MEMBERID,MEMBERDT,FNAME,LNAME,SALECODE FROM TBROKER WHERE MEMBERID LIKE :0 AND FLAG LIKE :1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT MEMBERID,MEMBERDT,FNAME,LNAME,SALECODE FROM TBROKER WHERE FNAME LIKE :0 AND FLAG LIKE :1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT MEMBERID,MEMBERDT,FNAME,LNAME,SALECODE FROM TBROKER WHERE LNAME LIKE :0 AND FLAG LIKE :1');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT MEMBERID,MEMBERDT,FNAME,LNAME,SALECODE FROM TBROKER WHERE SALECODE LIKE :0 AND FLAG LIKE :1');
     end;
   21:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT CONTTYP,CONTDESC FROM TYPCONT WHERE CONTTYP LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT CONTTYP,CONTDESC FROM TYPCONT WHERE CONTDESC LIKE :EDIT1');
      end;
   22:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT LOSTCOD,LOSTESC FROM TYPLOST WHERE LOSTCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT LOSTCOD,LOSTESC FROM TYPLOST WHERE LOSTESC LIKE :EDIT1');
      end;
   23:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT ARGCOD,ARGDES FROM ARGROUP WHERE (ARGCOD LIKE :EDIT1 or ARGDES LIKE :EDIT1) order by argcod');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT ARGCOD,ARGDES FROM ARGROUP WHERE (ARGCOD LIKE :EDIT1 or ARGDES LIKE :EDIT1) order by argcod');
      end;
   24:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT GRDCOD,GRDDES,GRDCAL FROM SETGRADE WHERE (GRDCOD LIKE :EDIT1 or GRDDES LIKE :EDIT1) order by grdcod');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT GRDCOD,GRDDES,GRDCAL FROM SETGRADE WHERE (GRDCOD LIKE :EDIT1 or GRDDES LIKE :EDIT1) order by grdcod');
      end;
   25:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT LOCATCD,LOCATNM,SHORTL FROM INVLOCAT WHERE (LOCATCD LIKE :EDIT1 or LOCATNM LIKE :EDIT1) order by locatcd');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT LOCATCD,LOCATNM,SHORTL FROM INVLOCAT WHERE (LOCATCD LIKE :EDIT1 or LOCATNM LIKE :EDIT1) order by locatcd');
      end;
   26:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM DIVISION WHERE (DIVICOD LIKE :EDIT1 or DIVINAM LIKE :EDIT1) order by divicod');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM DIVISION WHERE (DIVICOD LIKE :EDIT1 or DIVINAM LIKE :EDIT1) order by divicod');
      end;
   27:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT CODE,NAME,DIVISION FROM OFFICER WHERE (CODE LIKE :EDIT1 or NAME LIKE :EDIT1) order by code');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT CODE,NAME,DIVISION FROM OFFICER WHERE (CODE LIKE :EDIT1 or NAME LIKE :EDIT1) order by code');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT CODE,NAME,DIVISION FROM OFFICER WHERE ((CODE LIKE :0) or (NAME LIKE :0)) ORDER BY CODE');
      end;
   28:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT AUMPCOD,AUMPDES,PROVCOD FROM SETAUMP WHERE (AUMPCOD LIKE :EDIT1 or AUMPDES LIKE :EDIT1 or PROVCOD LIKE :EDIT1) order by aumpcod');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT AUMPCOD,AUMPDES,PROVCOD FROM SETAUMP WHERE (AUMPCOD LIKE :EDIT1 or AUMPDES LIKE :EDIT1 or PROVCOD LIKE :EDIT1) order by aumpcod');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT AUMPCOD,AUMPDES,PROVCOD FROM SETAUMP WHERE (AUMPCOD LIKE :EDIT1 or AUMPDES LIKE :EDIT1 or PROVCOD LIKE :EDIT1) order by aumpcod');
      end;
   29:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT PROVCOD,PROVDES FROM SETPROV WHERE (PROVCOD LIKE :EDIT1 or PROVDES LIKE :EDIT1) order by provcod');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT PROVCOD,PROVDES FROM SETPROV WHERE (PROVCOD LIKE :EDIT1 or PROVDES LIKE :EDIT1) order by provcod');
      end;
   30:begin

        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST '+
                 'WHERE (CUSCOD LIKE :EDIT1) order by cuscod');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST '+
                 'WHERE (NAME1 LIKE :EDIT1) order by cuscod');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST '+
                 'WHERE (NAME2 LIKE :EDIT1) order by cuscod');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST '+
                 'WHERE (NICKNM LIKE :EDIT1) order by cuscod');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST '+
                 'WHERE (IDNO LIKE :EDIT1) order by cuscod');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST '+
                 'WHERE (MEMBCOD LIKE :EDIT1) order by cuscod');
        If OrderCombo.Itemindex=6 Then
        SQL.ADD( 'SELECT CUSCOD,SNAM,NAME1,NAME2,NICKNM,GRADE,IDNO,MEMBCOD FROM CUSTMAST '+
                 'WHERE (CUSCOD LIKE :EDIT1 or NAME1 LIKE :EDIT1 or NAME2 LIKE :EDIT1 or '+
                 'NICKNM LIKE :EDIT1 or IDNO LIKE :EDIT1 or MEMBCOD LIKE :EDIT1) order by cuscod');
      end;
   31:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT TSALE,DESC1 FROM TYPSALE WHERE TSALE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT TSALE,DESC1 FROM TYPSALE WHERE DESC1 LIKE :EDIT1');
      end;
   32:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT HOLDCOD,HOLDESC FROM TYPHOLD WHERE HOLDCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT HOLDCOD,HOLDESC FROM TYPHOLD WHERE HOLDESC LIKE :EDIT1');
      end;
   33:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT PAYCODE,PAYDESC FROM PAYDUE WHERE PAYCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT PAYCODE,PAYDESC FROM PAYDUE WHERE PAYDESC LIKE :EDIT1');
      end;
   34:begin
        If OrderCombo.Itemindex=0 Then
           Sql.add('SELECT OPTCODE,OPTNAME,LOCAT,UNITPRC,UNITCST,ONHAND FROM OPTMAST WHERE OPTCODE LIKE:EDIT1 AND LOCAT LIKE:EDIT2 ');
        If OrderCombo.Itemindex=1 Then
           Sql.add('SELECT OPTCODE,OPTNAME,LOCAT,UNITPRC,UNITCST,ONHAND FROM OPTMAST WHERE OPTNAME LIKE:EDIT1 AND LOCAT LIKE:EDIT2 ');
      end;
   35:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT USERID,CUSCOD,USERNAME FROM SECRET WHERE (USERID LIKE :EDIT1 OR CUSCOD LIKE :EDIT1 OR USERNAME LIKE :EDIT1 ORDER BY USERID');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT USERID,CUSCOD,USERNAME FROM SECRET WHERE (USERID LIKE :EDIT1 OR CUSCOD LIKE :EDIT1 OR USERNAME LIKE :EDIT1 ORDER BY USERID');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT USERID,CUSCOD,USERNAME FROM SECRET WHERE (USERID LIKE :EDIT1 OR CUSCOD LIKE :EDIT1 OR USERNAME LIKE :EDIT1 ORDER BY USERID');
      end;
   36:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM THDCOST WHERE REGNO LIKE :XREG');
        If OrderCombo.Itemindex=1 Then
        sql.Add('SELECT * FROM THDCOST WHERE STRNO LIKE :XREG');
        If OrderCombo.Itemindex=2 Then
        sql.Add('SELECT * FROM THDCOST WHERE DOCNO LIKE :XREG');
      end;
   37:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT RESONCD,RESNDES FROM SETRESON WHERE RESONCD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT RESONCD,RESNDES FROM SETRESON WHERE RESONDES LIKE :EDIT1');
      end;
   38:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT DISTINCT TUMB FROM CUSTADDR WHERE TUMB LIKE :EDIT1');
      end;
   39:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT ACTICOD,ACTIDES FROM SETACTI WHERE ACTICOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT ACTICOD,ACTIDES FROM SETACTI WHERE ACTIDES LIKE :EDIT1');
      end;
   40:begin
        If OrderCombo.Itemindex=0 Then
           Sql.add('SELECT OPTCODE,OPTNAME,UNITPRC,UNITCST FROM HOPTMAST WHERE OPTCODE LIKE:EDIT1 ');
        If OrderCombo.Itemindex=1 Then
           Sql.add('SELECT OPTCODE,OPTNAME,UNITPRC,UNITCST FROM HOPTMAST WHERE OPTNAME LIKE:EDIT1 ');
      end;
   41:begin
        If OrderCombo.ItemIndex=0 then
           Sql.Add('SELECT TAXNO,TSALE,CONTNO,CUSCOD,NAME1,NAME2,FLAG FROM TAXTRAN WHERE TAXNO LIKE :EDIT1 ');
        If OrderCombo.ItemIndex=1 then
           Sql.Add('SELECT TAXNO,TSALE,CONTNO,CUSCOD,NAME1,NAME2,FLAG FROM TAXTRAN WHERE TSALE LIKE :EDIT1 ');
        If OrderCombo.ItemIndex=2 then
           SQL.Add('SELECT TAXNO,TSALE,CONTNO,CUSCOD,NAME1,NAME2,FLAG FROM TAXTRAN WHERE CONTNO LIKE :EDIT1 ');
        If OrderCombo.ItemIndex=3 then
           SQL.Add('SELECT TAXNO,TSALE,CONTNO,CUSCOD,NAME1,NAME2,FLAG FROM TAXTRAN WHERE CUSCOD LIKE :EDIT1 ');
        If OrderCombo.ItemIndex=4 then
           SQL.Add('SELECT TAXNO,TSALE,CONTNO,CUSCOD,NAME1,NAME2.FLAG FROM TAXTRAN WHERE NAME1 LIKE :EDIT1 ');
        If OrderCombo.ItemIndex=5 then
           SQL.Add('SELECT TAXNO,TSALE,CONTNO,CUSCOD,NAME1,NAME2,FLAG FROM TAXTRAN WHERE NAME2 LIKE :EDIT1 ');
        If OrderCombo.ItemIndex=6 then
           SQL.Add('SELECT TAXNO,TSALE,CONTNO,CUSCOD,NAME1,NAME2,FLAG FROM TAXTRAN WHERE FLAG LIKE :EDIT1 ');
      end;
    42:begin
        If OrderCombo.ItemIndex=0 then
           Sql.Add('SELECT * FROM KITOPTMST WHERE KITCODE LIKE :EDIT1');
        If OrderCombo.ItemIndex=1  then
           Sql.Add('SELECT * FROM KITOPTMST WHERE KITNAME LIKE :EDIT1');
      end;
    43:begin
        If OrderCombo.ItemIndex=0 Then
           Sql.Add('SELECT APPCODE,APPNAME FROM APPART WHERE (APPCODE LIKE :EDIT1 or APPNAME LIKE :EDIT1) order by apcode');
        If OrderCombo.ItemIndex=1 Then
           Sql.Add('SELECT APPCODE,APPNAME FROM APPART WHERE (APPCODE LIKE :EDIT1 or APPNAME LIKE :EDIT1) order by apcode');
      end;
    44:begin
        If OrderCombo.ItemIndex=0 Then
           Sql.Add('SELECT BUYNO FROM APPROVBP WHERE BUYNO LIKE :EDIT1');
       end;
    45:begin
        If OrderCombo.ItemIndex=0 Then
           Sql.Add('SELECT RESVNO FROM APPROVRESV WHERE RESVNO LIKE :EDIT1');
       end;
    46:begin
        If OrderCombo.ItemIndex=0 Then
           Sql.Add('SELECT INVCODE,TYPE,MODEL,BAAB FROM INVSETMST WHERE INVCODE LIKE :EDIT1');
        If OrderCombo.ItemIndex=1 Then
           Sql.Add('SELECT INVCODE,TYPE,MODEL,BAAB FROM INVSETMST WHERE TYPE LIKE :EDIT1');
        If OrderCombo.ItemIndex=2 Then
           Sql.Add('SELECT INVCODE,TYPE,MODEL,BAAB FROM INVSETMST WHERE MODEL LIKE :EDIT1');
        If OrderCombo.ItemIndex=3 Then
           Sql.Add('SELECT INVCODE,TYPE,MODEL,BAAB FROM INVSETMST WHERE BAAB LIKE :EDIT1');   
       end;
    47:begin
        If OrderCombo.ItemIndex=0 Then
           Sql.Add('SELECT * FROM CAMPANMST WHERE CAMPCODE LIKE :EDIT1');
        If OrderCombo.ItemIndex=1 Then
           Sql.Add('SELECT * FROM CAMPANMST WHERE CAMPNAME LIKE :EDIT1');
        If OrderCombo.ItemIndex=2 Then
           Sql.Add('SELECT * FROM CAMPANMST WHERE MODELCOD LIKE :EDIT1');
      end;
     48:begin
        If OrderCombo.ItemIndex=0 Then
           Sql.Add('SELECT * FROM CAMPANMST WHERE CAMPCODE LIKE :EDIT1 AND CURRENT DATE >=FDATE AND CURRENT DATE <=LDATE');
        If OrderCombo.ItemIndex=1 Then
           Sql.Add('SELECT * FROM CAMPANMST WHERE CAMPNAME LIKE :EDIT1 AND CURRENT DATE >=FDATE AND CURRENT DATE <=LDATE');
        If OrderCombo.ItemIndex=2 Then
           Sql.Add('SELECT * FROM CAMPANMST WHERE MODELCOD LIKE :EDIT1 AND CURRENT DATE >=FDATE AND CURRENT DATE <=LDATE');
      end;
     49:begin
        If OrderCombo.ItemIndex=0 Then
           Sql.Add('SELECT * FROM REELOCAT WHERE RLCODE LIKE :EDIT1');
        If OrderCombo.ItemIndex=1 Then
           Sql.Add('SELECT * FROM REELOCAT WHERE RLNAME ILKE :EDIT1');   
      end;
     50:begin
        If OrderCombo.Itemindex=0 Then
           SQL.ADD( 'SELECT A.BANKBOOKCOD,SUBSTR(B.BANKNAM,1,25) AS BANKNAM,SUBSTR(C.BANKLOCNAM,1,25) AS BANKLOCNAM, '+
                    'A.BOOKNO,SUBSTR(D.BOOKTYPNAM,1,25) AS BOOKTYPNAM,A.BOOKNAM,A.ACCMSTCOD '+
                    'FROM BANKBOOK A,SETBANK B,BANKLOCAT C,BKBOOKTYPE D '+
                    'WHERE A.BANKCOD=B.BANKCOD AND A.BANKLOCCOD=C.BANKLOCCOD AND A.BOOKTYPCOD=D.BOOKTYPCOD '+
                    'AND A.BANKBOOKCOD LIKE :EDIT1 ORDER BY A.BANKBOOKCOD');
        If OrderCombo.Itemindex=1 Then
           SQL.ADD( 'SELECT A.BANKBOOKCOD,SUBSTR(B.BANKNAM,1,25) AS BANKNAM,SUBSTR(C.BANKLOCNAM,1,25) AS BANKLOCNAM, '+
                    'A.BOOKNO,SUBSTR(D.BOOKTYPNAM,1,25) AS BOOKTYPNAM,A.BOOKNAM,A.ACCMSTCOD '+
                    'FROM BANKBOOK A,SETBANK B,BANKLOCAT C,BKBOOKTYPE D '+
                    'WHERE A.BANKCOD=B.BANKCOD AND A.BANKLOCCOD=C.BANKLOCCOD AND A.BOOKTYPCOD=D.BOOKTYPCOD '+
                    'AND B.BANKNAM LIKE :EDIT1 ORDER BY A.BANKBOOKCOD');
        If OrderCombo.Itemindex=2 Then
           SQL.ADD( 'SELECT A.BANKBOOKCOD,SUBSTR(B.BANKNAM,1,25) AS BANKNAM,SUBSTR(C.BANKLOCNAM,1,25) AS BANKLOCNAM, '+
                    'A.BOOKNO,SUBSTR(D.BOOKTYPNAM,1,25) AS BOOKTYPNAM,A.BOOKNAM,A.ACCMSTCOD '+
                    'FROM BANKBOOK A,SETBANK B,BANKLOCAT C,BKBOOKTYPE D '+
                    'WHERE A.BANKCOD=B.BANKCOD AND A.BANKLOCCOD=C.BANKLOCCOD AND A.BOOKTYPCOD=D.BOOKTYPCOD '+
                    'AND C.BANKLOCNAM LIKE :EDIT1 ORDER BY A.BANKBOOKCOD');
        If OrderCombo.Itemindex=3 Then
           SQL.ADD( 'SELECT A.BANKBOOKCOD,SUBSTR(B.BANKNAM,1,25) AS BANKNAM,SUBSTR(C.BANKLOCNAM,1,25) AS BANKLOCNAM, '+
                    'A.BOOKNO,SUBSTR(D.BOOKTYPNAM,1,25) AS BOOKTYPNAM,A.BOOKNAM,A.ACCMSTCOD '+
                    'FROM BANKBOOK A,SETBANK B,BANKLOCAT C,BKBOOKTYPE D '+
                    'WHERE A.BANKCOD=B.BANKCOD AND A.BANKLOCCOD=C.BANKLOCCOD AND A.BOOKTYPCOD=D.BOOKTYPCOD '+
                    'AND A.BOOKNO LIKE :EDIT1 ORDER BY A.BANKBOOKCOD');
        If OrderCombo.Itemindex=4 Then
           SQL.ADD( 'SELECT A.BANKBOOKCOD,SUBSTR(B.BANKNAM,1,25) AS BANKNAM,SUBSTR(C.BANKLOCNAM,1,25) AS BANKLOCNAM, '+
                    'A.BOOKNO,SUBSTR(D.BOOKTYPNAM,1,25) AS BOOKTYPNAM,A.BOOKNAM,A.ACCMSTCOD '+
                    'FROM BANKBOOK A,SETBANK B,BANKLOCAT C,BKBOOKTYPE D '+
                    'WHERE A.BANKCOD=B.BANKCOD AND A.BANKLOCCOD=C.BANKLOCCOD AND A.BOOKTYPCOD=D.BOOKTYPCOD '+
                    'AND D.BOOKTYPNAM LIKE :EDIT1 ORDER BY A.BANKBOOKCOD');
        If OrderCombo.Itemindex=5 Then
           SQL.ADD( 'SELECT A.BANKBOOKCOD,SUBSTR(B.BANKNAM,1,25) AS BANKNAM,SUBSTR(C.BANKLOCNAM,1,25) AS BANKLOCNAM, '+
                    'A.BOOKNO,SUBSTR(D.BOOKTYPNAM,1,25) AS BOOKTYPNAM,A.BOOKNAM,A.ACCMSTCOD '+
                    'FROM BANKBOOK A,SETBANK B,BANKLOCAT C,BKBOOKTYPE D '+
                    'WHERE A.BANKCOD=B.BANKCOD AND A.BANKLOCCOD=C.BANKLOCCOD AND A.BOOKTYPCOD=D.BOOKTYPCOD '+
                    'AND A.BOOKNAM LIKE :EDIT1 ORDER BY A.BANKBOOKCOD');
        end;
     51:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM DIVISION WHERE DIVICOD LIKE :EDIT1 OR DIVINAM LIKE :EDIT1 ORDER BY DIVICOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM DIVISION WHERE DIVICOD LIKE :EDIT1 OR DIVINAM LIKE :EDIT1 ORDER BY DIVICOD');
     end;
   end;
      HQuery1.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');

   IF OrderCombo.Tag = 17 then
   begin
     HQuery1.Params[1].Asstring := Uppercase('%'+SearchEd.Text+'%');
     HQuery1.Params[2].Asstring := Uppercase(XSysSet+'%');
   end;
   IF OrderCombo.Tag = 20 then
      HQuery1.Params[1].Asstring := Uppercase(XFlag+'%');
   If OrderCombo.Tag = 34 then
      HQuery1.Params[1].AsString := SFMain.Xlocat+'%';
      HQuery1.Open;
      SFMain.Do_Show_DisplayFormat_Floating(HQuery1);
 End;
end;

procedure TSearchSet.OrderComboChange(Sender: TObject);
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
  end;
end;

procedure TSearchSet.SearchEdChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
     SearchButtonClick(Sender);
end;


procedure TSearchSet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TSearchSet.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TSearchSet.CalcMax;
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

procedure TSearchSet.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;
end;

procedure TSearchSet.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
      SearchButtonClick(Sender);
      DbGrid1.SetFocus;
   End;
end;

procedure TSearchSet.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = true then
  cxGridDBTableView1.DataController.Groups.FullExpand else
  cxGridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TSearchSet.cxGridDBTableView1DataControllerGroupingChanged(
  Sender: TObject);
begin
  if HQuery1.Active = True then
  begin
  cxCheckBox1.Checked := False;
  cxCheckBox1.Enabled := ((HQuery1.RecordCount>0) AND
                          (cxGridDBTableView1.GroupedColumnCount>0));
  end;
end;

procedure TSearchSet.cxGridDBTableView1CustomDrawIndicatorCell(
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

procedure TSearchSet.cxGridDBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSearchSet.cxGridDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    OKBtn.Click;
  End
end;

end.
