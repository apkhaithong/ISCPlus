unit uFindPO;
                   
interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, cxGraphics, Menus,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxGridCardView, cxGridDBCardView, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls,
  cxCheckBox, AdvShapeButton, cxTextEdit, cxButtons, cxContainer, cxMaskEdit,
  cxDropDownEdit, AdvGlowButton, cxLookAndFeels, dxDateRanges, dxBarBuiltInMenu,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator,
  cxGridCustomLayoutView, cxImageComboBox;

type
  TfFindPO = class(TForm)
    DataSource: TDataSource;
    Panel3: TPanel;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    SearchButton: TAdvGlowButton;
    OrderCombo: TcxComboBox;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    SearchEd: TcxTextEdit;
    AdvShapeButton1: TAdvShapeButton;
    cxCheckBox1: TcxCheckBox;
    Panel1: TPanel;
    DBGrid1: TcxGrid;
    DBGrid1DBTableView1: TcxGridDBTableView;
    DBGrid1DBCardView1: TcxGridDBCardView;
    cxGridLevel1: TcxGridLevel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cbViewdata: TcxImageComboBox;
    Label1: TLabel;
    qrFindDat: TFDQuery;
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid11KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure DBGrid1DBTableView1DblClick(Sender: TObject);
    procedure DBGrid1DBTableView1DataControllerGroupingChanged(
      Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure DBGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    XSrLocat: string;
    NewKeyno,SC1: string;
    property Keyno: string read GetKeyno;

    function ShowModalCust: Integer;
    function ShowModalParts: Integer;
    function ShowModalLocat: Integer;
    function ShowModalGroup: Integer;
    function ShowModalType: Integer;
    function ShowModalAP: Integer;
    function ShowModalAR: Integer;
    function ShowModalPAYTYP: Integer;
    function ShowModalOffic: Integer;
    function ShowModalPO: Integer;
    function ShowModalPOTYPE: Integer;
    function ShowModalinvmast: Integer;
    function ShowModalReelocat: Integer;
    function ShowModalTRANSPOT: Integer;
    function ShowModalCHANGRAT: Integer;
    function ShowModalTAXMAST: Integer;
    function ShowModalApbyPart: Integer;
    function ShowModalNPO: Integer;
    function ShowModalNRC: Integer;
    function ShowModalPaycode: Integer;
    function ShowModalNParts :Integer;
    function ShowModalPR: Integer;
  end;

var
  fFindPO: TfFindPO;

  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;
  SelectFld : String;

implementation

uses USoftFirm, Dmsec;


{$R *.DFM}

function TfFindPO.ShowModalCust: Integer;
begin
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add('Company');
  OrderCombo.Properties.Items.Add('CustNo');
  OrderCombo.ItemIndex := 0;
  OrderComboChange(nil);
  Caption := 'Select a Customer';
  Result := ShowModal;
end;

function TfFindPO.ShowModalParts: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 0;
  Title[0]  := 'รหัสสินค้า';
  Title[1]  := 'ชื่อสินค้า';
  Title[2]  := 'Model';
  Title[3]  := 'เบอร์แทน';
  Title[4]  := 'กลุ่ม';
  Title[5]  := 'ราคาขาย';

  Fldgrd[0] := 'Partno';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'Model';
  Fldgrd[3] := 'Code_T';
  Fldgrd[4] := 'Group1';
  Fldgrd[5] := 'Price1';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help Part';
  Result := ShowModal;
end;

function TfFindPO.ShowModalLocat: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 1;
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
  Caption := 'Help สาขา';
  Result := ShowModal;
end;

function TfFindPO.ShowModalGroup: Integer;
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
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help กลุ่มสินค้า';
  Result := ShowModal;
end;

function TfFindPO.ShowModalType: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 3;
  Title[0]  := 'รหัสยี่ห้อ';
  Title[1]  := 'ชื่อยี่ห้อ';

  Fldgrd[0] := 'TYPECOD';
  Fldgrd[1] := 'TYPENAM';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ยี่ห้อสินค้า';
  Result := ShowModal;
end;

function TfFindPO.ShowModalAP: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 4;
    Title[0]  := 'รหัสเจ้าหนี้';
  Title[1]  := 'ชื่อเจ้าหนี้';
  Title[2]  := 'ที่อยู่ 1';
  Title[3]  := 'ที่อยู่ 2';

  Fldgrd[0] := 'APCODE';
  Fldgrd[1] := 'APNAME';
  Fldgrd[2] := 'Addr1';
  Fldgrd[3] := 'Addr2';
  
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัสเจ้าหนี้';
  Result := ShowModal;
end;

function TfFindPO.ShowModalAR: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 5;
  Title[0]  := 'รหัสลูกค้า';
  Title[1]  := 'ชื่อลูกค้า';
  Title[2]  := 'นามสกุล';

  Fldgrd[0] := 'CUSCOD';
  Fldgrd[1] := 'NAME1';
  Fldgrd[2] := 'NAME2';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัสลูกค้า';
  Result := ShowModal;
end;

function TfFindPO.ShowModalPAYTYP: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 6;
  Title[0]  := 'รหัสประเภท';
  Title[1]  := 'ประเภทการชำระ';

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
  Caption := 'Help ประเภทการชำระ';
  Result := ShowModal;
end;

function TfFindPO.ShowModalOffic: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 7;
  Title[0]  := 'รหัสพนักงาน';
  Title[1]  := 'ชื่อพนักงาน';
  Title[2]  := 'แผนก';

  Fldgrd[0] := 'CODE';
  Fldgrd[1] := 'NAME';
  Fldgrd[2] := 'DEPCODE';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัสลูกค้า';
  Result := ShowModal;
end;

function TfFindPO.ShowModalPO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 8;
  Title[0]  := 'ใบสั่งซื้อ';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสเจ้าหนี้';
  Title[3]  := 'ชื่อเจ้าหนี้';
  Title[4]  := 'สาขา';

  Fldgrd[0] := 'PONO';
  Fldgrd[1] := 'PODATE';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'APNAME';
  Fldgrd[4] := 'POLOCAT';
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
  Caption := 'Help ใบสั่งซื้อ';
  Result := ShowModal;
end;

function TfFindPO.ShowModalPOTYPE: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 9;
  Title[0]  := 'รหัสประเภท';
  Title[1]  := 'ประเภทการสั่ง';

  Fldgrd[0] := 'POCODE';
  Fldgrd[1] := 'PODESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัสการสั่ง';
  Result := ShowModal;
end;

function TfFindPO.ShowModalinvmast: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 10;
  Title[0]  := 'รหัสสินค้า';
  Title[1]  := 'ชื่อสินค้า';
  Title[2]  := 'Model';
  Title[3]  := 'รหัสแทน';
  Title[4]  := 'กลุ่ม';
  Title[5]  := 'ราคาขาย';

  Fldgrd[0] := 'Partno';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'Model';
  Fldgrd[3] := 'Code_T';
  Fldgrd[4] := 'Group1';
  Fldgrd[5] := 'Price1';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help Part';
  Result := ShowModal;
end;

function TfFindPO.ShowModalReelocat: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 11;
  Title[0]  := 'รหัสสถานที่';
  Title[1]  := 'ชื่อสถานที่';

  Fldgrd[0] := 'RLCODE';
  Fldgrd[1] := 'RLNAME';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help สถานที่ส่ง';
  Result := ShowModal;
end;

function TfFindPO.ShowModalTRANSPOT: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 12;
  Title[0]  := 'รหัสเส้นทาง';
  Title[1]  := 'เส้นทาง';

  Fldgrd[0] := 'TPCODE';
  Fldgrd[1] := 'TPNAME';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help เส้นทางส่ง';
  Result := ShowModal;
end;


function TfFindPO.ShowModalCHANGRAT: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 13;
  Title[0]  := 'รหัสสกุลเงิน';
  Title[1]  := 'ชื่อสกุลเงิน';
  Title[2]  := 'อัตราแลกเปลี่ยน';
  Title[3]  := 'อ้างอิงจาก';

  Fldgrd[0] := 'CHCODE';
  Fldgrd[1] := 'CHNAME';
  Fldgrd[2] := 'CHRATE';
  Fldgrd[3] := 'REFN';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help อัตราแลกเปลี่ยนสกุลเงิน';
  Result := ShowModal;
end;


function TfFindPO.ShowModalTaxmast: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 14;
  Title[0]  := 'รหัสหมวดภาษี';
  Title[1]  := 'ชื่อหมวด';
  Title[2]  := 'อัตรา';
  Title[3]  := 'อ้างอิงจาก';

  Fldgrd[0] := 'TAXCODE';
  Fldgrd[1] := 'TAXNAME';
  Fldgrd[2] := 'TAXRATE';
  Fldgrd[3] := 'REFN';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help หมวดภาษีนำเข้า';
  Result := ShowModal;
end;

function TfFindPO.ShowModalApbyPart: Integer;
begin
  OrderCombo.Tag := 15;
  Title[0]  := 'รหัสสินค้า';
  Title[1]  := 'รหัส Vendor';
  Title[2]  := 'ราคา/หน่วย';
  Title[3]  := 'ส่วนลด';
  Title[4]  := 'ราคาสุทธิ';
  Title[5]  := 'วันล่าสุด';
  Title[6]  := 'จำนวน';

  Fldgrd[0] := 'PARTNO';
  Fldgrd[1] := 'APCODE';
  Fldgrd[2] := 'LASTPRC';
  Fldgrd[3] := 'LASTDSC';
  Fldgrd[4] := 'LASTNET';
  Fldgrd[5] := 'LASTUPD';
  Fldgrd[6] := 'LASTQTY';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ราคาสินค้าตาม Vendor';
  Result := ShowModal;
end;

function TfFindPO.ShowModalNPO: Integer;
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
  Fldgrd[3] := 'LOCAT';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);


  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบสั่งซื้อ';
  Result := ShowModal;
end;

function TfFindPO.ShowModalNRC: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 17;
  Title[0]  := 'ใบรับ';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสเจ้าหนี้';
  Title[3]  := 'สาขา';

  Fldgrd[0] := 'RECVNO';
  Fldgrd[1] := 'RECVDT';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'LOCAT';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);

  //OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบรับสินค้า';
  Result := ShowModal;
end;
function TfFindPO.ShowModalPAYCODE: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 18;
  Title[0]  := 'รหัส';
  Title[1]  := 'คำอธิบาย';


  Fldgrd[0] := 'PAYCD';
  Fldgrd[1] := 'PAYDSC';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ค่าใช้จ่าย';
  Result := ShowModal;
end;

function TfFindPO.ShowModalNParts: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 19;
  Title[0]  := 'รหัสสินค้า';
  Title[1]  := 'ชื่อสินค้า';
  Title[2]  := 'หน่วย';

  Title[3]  := 'ราคาซื้อ';
  Title[4]  := 'วันสั่งซื้อล่าสุด';

  Fldgrd[0] := 'Partno';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'Unitd';

  Fldgrd[3] := 'Cost';
  Fldgrd[4] := 'Lstbdate';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help Part';
  Result := ShowModal;
end;

function TfFindPO.ShowModalPR: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 20;
  Title[0]  := 'ใบขอสั่งซื้อ';
  Title[1]  := 'วันที่ขอสั่ง';
  Title[2]  := 'รหัสเจ้าหนี้';
  Title[3]  := 'ชื่อเจ้าหนี้';
  Title[4]  := 'สาขา';

  Fldgrd[0] := 'PRNO';
  Fldgrd[1] := 'PRDATE';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'APNAME';
  Fldgrd[4] := 'PRLOCAT';
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
  Caption := 'Help ใบขอสั่งซื้อ';
  Result := ShowModal;
end;

function TfFindPO.GetKeyno: string;
begin
  If qrFindDat.Active Then
  Case OrderCombo.Tag Of
    0 :Result := qrFindDat.Fieldbyname('PartNo').Asstring;
    1 :Result := qrFindDat.Fieldbyname('LOCATCD').Asstring;
    2 :Result := qrFindDat.Fieldbyname('GROUPCOD').Asstring;
    3 :Result := qrFindDat.Fieldbyname('TYPECOD').Asstring;
    4 :Result := qrFindDat.Fieldbyname('APCODE').Asstring;
    5 :Result := qrFindDat.Fieldbyname('CUSCOD').Asstring;
    6 :Result := qrFindDat.Fieldbyname('PAYCODE').Asstring;
    7 :Result := qrFindDat.Fieldbyname('CODE').Asstring;
    8 :Result := qrFindDat.Fieldbyname('PONO').Asstring;
    9 :Result := qrFindDat.Fieldbyname('POCODE').Asstring;
    10:Result := qrFindDat.Fieldbyname('PartNo').Asstring;
    11:Result := qrFindDat.Fieldbyname('RLCODE').Asstring;
    12:Result := qrFindDat.Fieldbyname('TPCODE').Asstring;
    13:Result := qrFindDat.Fieldbyname('CHCODE').Asstring;
    14:Result := qrFindDat.Fieldbyname('TAXCODE').Asstring;
    15:Result := qrFindDat.Fieldbyname('APCODE').Asstring;
    16:Result := qrFindDat.Fieldbyname('PONO').Asstring;
    17:Result := qrFindDat.Fieldbyname('RECVNO').Asstring;
    18:Result := qrFindDat.Fieldbyname('PAYCD').Asstring;
    19:Result := qrFindDat.Fieldbyname('PARTNO').Asstring;
    20:Result := qrFindDat.Fieldbyname('PRNO').Asstring;    
  end;
end;
procedure TfFindPO.SearchButtonClick(Sender: TObject);
begin
  With qrFindDat Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
    0:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVENTOR WHERE PARTNO LIKE :EDIT1 AND LOCAT LIKE :EDIT2 '+SC1+'  ORDER BY PARTNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVENTOR WHERE DESC1 LIKE :EDIT1 AND LOCAT LIKE :EDIT2 '+SC1+' ORDER BY DESC1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVENTOR WHERE MODEL LIKE :EDIT1 AND LOCAT LIKE :EDIT2 '+SC1+'  ORDER BY MODEL');
      end;
    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATNM LIKE :EDIT1');
      end;
    2:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM GROUPMST WHERE GROUPCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM GROUPMST WHERE GROUPNAM LIKE :EDIT1');
      end;
    3:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM TYPEMST WHERE TYPECOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM TYPEMST WHERE TYPENAM LIKE :EDIT1');
      end;
    4:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APMAST WHERE APCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APMAST WHERE APNAME LIKE :EDIT1');
      end;
    5:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM CUSTMAST WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM CUSTMAST WHERE NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM CUSTMAST WHERE NAME2 LIKE :EDIT1 ORDER BY NAME2');
      end;
    6:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PAYTYP WHERE PAYCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM PAYTYP WHERE PAYDESC LIKE :EDIT1');
      end;
    7:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM OFFICER WHERE CODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM OFFICER WHERE NAME LIKE :EDIT1');
      end;
    8:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.PONO,A.PODATE,A.APCODE,B.APNAME,A.POLOCAT FROM PO_INVOI A INNER JOIN APMAST B ON (A.APCODE=B.APCODE) '+
                'WHERE A.PONO LIKE :EDIT1 AND A.POLOCAT LIKE :EDIT2 '+SC1+' ORDER BY A.PODATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.PONO,A.PODATE,A.APCODE,B.APNAME,A.POLOCAT FROM PO_INVOI A INNER JOIN APMAST B ON (A.APCODE=B.APCODE) '+
                'WHERE A.APCODE LIKE :EDIT1 AND A.POLOCAT LIKE :EDIT2'+SC1+' ORDER BY A.PODATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.PONO,A.PODATE,A.APCODE,B.APNAME,A.POLOCAT FROM PO_INVOI A INNER JOIN APMAST B ON (A.APCODE=B.APCODE) '+
                'WHERE B.APNAME LIKE :EDIT1 AND A.POLOCAT LIKE :EDIT2'+SC1+' ORDER BY A.PODATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.PONO,A.PODATE,A.APCODE,B.APNAME,A.POLOCAT FROM PO_INVOI A INNER JOIN APMAST B ON (A.APCODE=B.APCODE) '+
                'WHERE  ((A.APCODE LIKE :EDIT1) or (A.PONO LIKE :EDIT1) or (B.APNAME LIKE :EDIT1)) AND A.POLOCAT LIKE :EDIT2'+SC1+' ORDER BY A.PODATE DESC '+cbViewdata.EditValue);
      end;
    9:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM POTYPE WHERE POCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM POTYPE WHERE PODESC LIKE :EDIT1');
      end;
    10:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVMAST WHERE PARTNO LIKE :EDIT1 ORDER BY PARTNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVMAST WHERE DESC1 LIKE :EDIT1  ORDER BY DESC1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVMAST WHERE MODEL LIKE :EDIT1  ORDER BY MODEL');
      end;

    11:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  * FROM REELOCAT WHERE RLCODE LIKE :EDIT1 ORDER BY RLCODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  * FROM REELOCAT WHERE RLNAME LIKE :EDIT1  ORDER BY RLNAME');
        end;
    12:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  * FROM TRANSPOT WHERE TPCODE LIKE :EDIT1 ORDER BY TPCODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  * FROM TRANSPOT WHERE TPNAME LIKE :EDIT1  ORDER BY TPNAME');
        end;
    13:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  * FROM CHANGRAT WHERE CHCODE LIKE :EDIT1 ORDER BY CHCODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  * FROM CHANGRAT WHERE CHNAME LIKE :EDIT1  ORDER BY CHNAME');
        end;
    14:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  * FROM TAXMAST WHERE TAXCODE LIKE :EDIT1 ORDER BY TAXCODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  * FROM TAXMAST WHERE TAXNAME LIKE :EDIT1  ORDER BY TAXNAME');
       end;
    15:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  * FROM APBYPART WHERE APCODE LIKE :1 AND LOCAT like :2 AND PARTNO LIKE :3 ORDER BY LOCAT,PARTNO,LASTNET ');
        qrFindDat.Params[1].Asstring := SFMain.Xlocat+'%';
        qrFindDat.Params[2].Asstring := NewKeyno+'%';
       end;
     16:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM NPO_INVOI WHERE PONO LIKE :EDIT1 '+SC1+' ORDER BY PONO ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM NPO_INVOI WHERE APCODE LIKE :EDIT1 '+SC1+' ORDER BY APCODE ');
      end;
     17:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM NRC_INVOI WHERE RECVNO LIKE :EDIT1 '+SC1+' ORDER BY RECVNO ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM NRC_INVOI WHERE APCODE LIKE :EDIT1 '+SC1+' ORDER BY APCODE ');
      end;

      18:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PAYCODE WHERE PAYCD  LIKE :EDIT1 '+SC1+' ORDER BY  PAYCD ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM PAYCODE WHERE PAYDSC LIKE :EDIT1 '+SC1+' ORDER BY  PAYDSC ');

      end;
     19:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM NINVMAST WHERE PARTNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM NINVMAST WHERE DESC1 LIKE :EDIT1');
      end;

    20:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.PRNO,A.PRDATE,A.APCODE,B.APNAME,A.PRLOCAT FROM PR_INVOI A INNER JOIN APMAST B ON (A.APCODE=B.APCODE) '+
                'WHERE A.PRNO LIKE :EDIT1 AND A.PRLOCAT LIKE :EDIT2 '+SC1+' ORDER BY A.PRDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.PRNO,A.PRDATE,A.APCODE,B.APNAME,A.PRLOCAT FROM PR_INVOI A INNER JOIN APMAST B ON (A.APCODE=B.APCODE) '+
                'WHERE A.APCODE LIKE :EDIT1 AND A.PRLOCAT LIKE :EDIT2'+SC1+' ORDER BY A.PRDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.PRNO,A.PRDATE,A.APCODE,B.APNAME,A.PRLOCAT FROM PR_INVOI A INNER JOIN APMAST B ON (A.APCODE=B.APCODE) '+
                'WHERE B.APNAME LIKE :EDIT1 AND A.PRLOCAT LIKE :EDIT2'+SC1+' ORDER BY A.PRDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.PRNO,A.PRDATE,A.APCODE,B.APNAME,A.PRLOCAT FROM PR_INVOI A INNER JOIN APMAST B ON (A.APCODE=B.APCODE) '+
                'WHERE  ((A.APCODE LIKE :EDIT1) or (A.PRNO LIKE :EDIT1) or (B.APNAME LIKE :EDIT1)) AND A.PRLOCAT LIKE :EDIT2'+SC1+' ORDER BY A.PRDATE DESC '+cbViewdata.EditValue);
      end;

    end;
    qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.TEXT+'%') ;
    If OrderCombo.Tag=0 Then
     qrFindDat.Params[1].Asstring := SFMain.Xlocat+'%';
    if OrderCombo.Tag=8 then
    begin
      if OrderCombo.ItemIndex = 3 then
      qrFindDat.Params[3].AsString := Uppercase(fFindPO.XSrLocat)+'%' else
      qrFindDat.Params[1].AsString := Uppercase(fFindPO.XSrLocat)+'%';
    end;

    if OrderCombo.Tag=20 then
    begin
      if OrderCombo.ItemIndex = 3 then
      qrFindDat.Params[3].AsString := Uppercase(fFindPO.XSrLocat)+'%' else
      qrFindDat.Params[1].AsString := Uppercase(fFindPO.XSrLocat)+'%';
    end;

    qrFindDat.Open;
    SFMain.Do_Show_DisplayFormat_Floating(qrFindDat);
  End;
end;

procedure TfFindPO.OrderComboChange(Sender: TObject);
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
      Dbgrid1DBTableView1.Columns[I].Width := 60;
  end;
end;

procedure TfFindPO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfFindPO.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TfFindPO.CalcMax;
begin
  { ** Field Name & Title** }
  SelectFld := 'SELECT ';
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
    end
    Else
     SelectFld :=SelectFld+Fldgrd[I]+',';
    I:=I+1;
  end;
end;

procedure TfFindPO.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;
end;

procedure TfFindPO.SearchEdChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
  SearchButtonClick(Sender);
end;


procedure TfFindPO.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       SearchButtonClick(Sender);
       DBGrid1.SetFocus;
   End;
end;

procedure TfFindPO.DBGrid11KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure TfFindPO.DBGrid1DBTableView1CustomDrawIndicatorCell(
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

procedure TfFindPO.DBGrid1DBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfFindPO.DBGrid1DBTableView1DataControllerGroupingChanged(
  Sender: TObject);
begin
  cxCheckBox1.Checked := False;
  cxCheckBox1.Enabled := ((qrFindDat.RecordCount>0) AND
                          (DBGrid1DBTableView1.GroupedColumnCount>0));
end;

procedure TfFindPO.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = true then
  DBGrid1DBTableView1.DataController.Groups.FullExpand else
  DBGrid1DBTableView1.DataController.Groups.FullCollapse;
end;

procedure TfFindPO.DBGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

end.
