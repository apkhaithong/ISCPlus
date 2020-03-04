unit uSrcDLG;
                             
interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, cxGraphics, Menus,
  cxLookAndFeelPainters, ComCtrls, AdvShapeButton, cxTextEdit, cxButtons,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, AdvGlowButton,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel, cxGridCardView,
  cxGridDBCardView, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxLookAndFeels,
  dxDateRanges, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxNavigator, cxImageComboBox, cxGridCustomLayoutView;

type
  TfSrcDLG = class(TForm)
    DataSource: TDataSource;
    Panel3: TPanel;
    Panel2: TPanel;
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
    Bevel1: TBevel;
    DBGrid1: TcxGrid;
    DBGrid1DBTableView1: TcxGridDBTableView;
    DBGrid1DBCardView1: TcxGridDBCardView;
    cxGridLevel1: TcxGridLevel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxCheckBox1: TcxCheckBox;
    cbViewdata: TcxImageComboBox;
    Label1: TLabel;
    qrFindDat: TFDQuery;
    procedure SearchButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdPropertiesChange(Sender: TObject);
    procedure OrderComboPropertiesChange(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
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
    Flag_a,Key_a,SqlText: string;
    XSrLocat,XDepart,XCuscod,xSaltype,nChkRtnAmt,nSvColor,nPaytyp,xgrouptyp : string;
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
    function ShowModalJob: Integer;
    function ShowModalPk: Integer;
    function ShowModalOdsv: Integer;  //ใบขอเบิกจากศูนย์
    function ShowModalPktrn: Integer;
    function ShowModalBak: Integer;
    function ShowModalMODEL: Integer;
    function ShowModalTAXNO: Integer;
    function ShowModalRcinv: Integer;
    function ShowModalSALTYPE: Integer;
    function ShowModalARGROUP: Integer;
    function ShowModalOthIc: Integer;
    function ShowModalQuata: Integer;
    function ShowModalCHKSTK: Integer;
    function ShowModalInvmast: Integer;
    function ShowModalIcinv: Integer;
    function ShowModalRtinv: Integer;
    function ShowModalMoveto: Integer;
    function ShowModalMovefm: Integer;
    function ShowModalQainv: Integer;
    function ShowModalAdjust: Integer;
    function ShowModalAllJob: Integer;
    function ShowModalCampn: Integer;
    function ShowModalPtkit: Integer;
    function ShowModalChqPy: Integer;
    function ShowModalDetailCar: Integer;
    function ShowModalShopSv: Integer;
    function ShowModalApbyPart: Integer;
    function ShowModalDeposit: Integer;
    function ShowModalCatalog: Integer;
    function ShowModalbarcode: Integer;
    function ShowModalBook: Integer;
    function ShowModalApOth: Integer;
    function ShowModalApTaxno: Integer;
    function ShowModalCRDNO: Integer;
    function ShowModalSvmst :Integer;
    function ShowModalARSVMAST: Integer;
    function ShowModalRcinvRt: Integer;
    function ShowModalPartInventor: Integer;
    function ShowModalDepositSV: Integer;
    function ShowModalSubject: Integer;
    function ShowModalFirstSv: Integer;
    function ShowModalOutJob: Integer;
    function ShowModalWarning: Integer;
    function ShowModalBankbook: Integer;
    function ShowModalAfterSv: Integer;
    function ShowModalSetPromotion : Integer;
    function ShowModalQueue : Integer;
    function ShowModalPktrnSV: Integer;
  end;

var
  fSrcDlg: TfSrcDlg;

  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;
  SelectFld : String;

implementation
uses USoftFirm, Dmsec;



{$R *.DFM}

function TfSrcDlg.ShowModalCust: Integer;
begin
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add('Company');
  OrderCombo.Properties.Items.Add('CustNo');
  OrderCombo.ItemIndex := 0;
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalParts: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 0;
  Title[0]  := 'สาขา';
  Title[1]  := 'รหัสสินค้า';
  Title[2]  := 'ชื่อสินค้า';
  Title[3]  := 'รุ่นสินค้า';
  Title[4]  := 'เบอร์แทน';
  Title[5]  := 'กลุ่ม';
  Title[6]  := 'ราคาขาย';
  Title[7]  := 'ยอดจ่ายได้';
  Title[8]  := 'ชั้นเก็บ';
  Title[9]  := 'Barcode';

  Fldgrd[0]  :='LOCAT';
  Fldgrd[1] := 'Partno';
  Fldgrd[2] := 'Desc1';
  Fldgrd[3] := 'Model';
  Fldgrd[4] := 'Code_T';
  Fldgrd[5] := 'Group1';
  Fldgrd[6] := 'Price1';
  Fldgrd[7] := 'Allo_12';
  Fldgrd[8] := 'SHELF';
  Fldgrd[9] := 'BARCODE';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[9]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalLocat: Integer;
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
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalGroup: Integer;
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

function TfSrcDlg.ShowModalType: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 3;
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

function TfSrcDlg.ShowModalAP: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 4;
  Title[0]  := 'รหัสเจ้าหนี้';
  Title[1]  := 'ชื่อเจ้าหนี้';
  Title[2]  := 'รหัสบัญชี';

  Fldgrd[0] := 'APCODE';
  Fldgrd[1] := 'APNAME';
  Fldgrd[2] := 'ACC_CODE';

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

function TfSrcDlg.ShowModalAR: Integer;
begin
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
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalPAYTYP: Integer;
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
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalOffic: Integer;
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
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalPO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 8;
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
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalJob: Integer;
begin
  OrderCombo.Tag := 9;
  Title[0]  := 'เลขที่อ้างอิง';
  Title[1]  := 'เลขตัวถัง';
  Title[2]  := 'เลขเครื่อง';
  Title[3]  := 'เลขทะเบียน';
  Title[4]  := 'ชื่อ';
  Title[5]  := 'นามสกุล';
  Title[6]  := 'สาขา';
  Title[7]  := 'วันที่';

  Fldgrd[0] := 'JOBNO';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'ENGNO';
  Fldgrd[3] := 'REGNO';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'LOCAT';
  Fldgrd[7] := 'RECVDATE';

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
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalPk: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 10;
  Title[0]  := 'สาขาที่เบิก';
  Title[1]  := 'เลขที่ใบเบิก';
  Title[2]  := 'วันที่';
  Title[3]  := 'รหัสลูกค้า';
  Title[4]  := 'ชื่อลูกค้า';
  Title[5]  := 'นามสกุล';
  Title[6]  := 'เลขที่อ้างอิง';
  Title[7]  := 'เลขที่ใบกำกับ';
  Title[8]  := 'ยอดเงิน';
  Title[9]  := 'ประเภทการขาย';

  Fldgrd[0] := 'PKLOCAT';
  Fldgrd[1] := 'PKNO';
  Fldgrd[2] := 'PKDATE';
  Fldgrd[3] := 'CUSCOD';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'JOBNO';
  Fldgrd[7] := 'REFNO';
  Fldgrd[8] := 'NETTOTAL';
  Fldgrd[9] := 'SALTYPE';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 5;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalOdsv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 11;
  Title[0]  := 'ใบขอเบิก';
  Title[1]  := 'ใบแจ้งซ่อม';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'สาขา';
  Title[4]  := 'วันที่';
  Title[5]  := 'ชื่อ';
  Title[6]  := 'นามสกุล';

  Fldgrd[0] := 'ORDNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'ORDLOCAT';
  Fldgrd[4] := 'ORDDATE';
  Fldgrd[5] := 'NAME1';
  Fldgrd[6] := 'NAME2';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 5;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalPktrn: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 12;
  Title[0]  := 'รหัสสินค้า';
  Title[1]  := 'ชื่อสินค้า';
  Title[2]  := 'ใบแจ้งซ่อม';
  Title[3]  := 'เลขที่เบิก';
  Title[4]  := 'จำนวน';

  Fldgrd[0] := 'PARTNO';
  Fldgrd[1] := 'DESC1';
  Fldgrd[2] := 'JOBNO';
  Fldgrd[3] := 'PKNO';
  Fldgrd[4] := 'QTYOUT';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalBak: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 13;
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
end;

function TfSrcDlg.ShowModalMODEL: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 14;
  Title[0]  := 'รหัสรุ่น';
  Title[1]  := 'ชื่อรุ่น';
  Title[2]  := 'รุ่นฝ่ายขาย';
  Title[3]  := 'รุ่นศูนย์บริการ';
  Title[4]  := 'ยี่ห้อ';

  Fldgrd[0] := 'MODELCOD';
  Fldgrd[1] := 'MODELDES';
  Fldgrd[2] := 'SUBMODEL';
  Fldgrd[3] := 'MODELSV';
  Fldgrd[4] := 'TYPECOD';
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

function TfSrcDlg.ShowModalTAXNO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 15;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'เลขที่อ้างอิง';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อลูกค้า';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'วันที่';
  Title[6]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'TAXDATE';
  Fldgrd[6] := 'CANCELID';
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

function TfSrcDlg.ShowModalRcinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 16;
  Title[0]  := 'เลขที่ใบรับ';
  Title[1]  := 'สาขาที่รับ';
  Title[2]  := 'รหัสเจ้าหนี้';
  Title[3]  := 'บริษัทเจ้าหนี้';
  Title[4]  := 'เลขที่ใบส่งของ';
  Title[5]  := 'อ้างอิงใบเบิก';
  Title[6]  := 'เลขที่สั่งซื้อ';
  Title[7]  := 'วันที่รับ';
  Title[8]  := 'ยอดเงิน';
  Title[9]  := 'ประเภทการรับ';

  Fldgrd[0] := 'RECVNO';
  Fldgrd[1] := 'RECVLOC';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'APNAME';
  Fldgrd[4] := 'INVNO';
  Fldgrd[5] := 'REFNO';
  Fldgrd[6] := 'PONO';
  Fldgrd[7] := 'RECVDT';
  Fldgrd[8] := 'TOTCOST';
  Fldgrd[9] := 'PAYTYP';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;
function TfSrcDlg.ShowModalSALTYPE: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 17;
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
function TfSrcDlg.ShowModalArgroup: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 18;
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

function TfSrcDlg.ShowModalOthIc: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 19;
  Title[0]  := 'ใบกำกับ';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'จำนวนเงิน';

  Fldgrd[0] := 'OTHIVNO';
  Fldgrd[1] := 'OTHDATE';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NETTOTAL';
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

function TfSrcDlg.ShowModalQuata: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 20;
  Title[0]  := 'เลขใบประเมิน';
  Title[1]  := 'เลขตัวถัง';
  Title[2]  := 'เลขทะเบียน';
  Title[3]  := 'วันที่';
  Title[4]  := 'สาขา';

  Fldgrd[0] := 'QUOTNO';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'REGNO';
  Fldgrd[3] := 'QDATE';
  Fldgrd[4] := 'LOCAT';
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

function TfSrcDlg.ShowModalCHKSTK: Integer;
begin
  OrderCombo.Tag := 21;
  Title[0]  := 'เลขที่ปรับปรุง';
  Title[1]  := 'สาขาปรับปรุง';

  Fldgrd[0] := 'ADJNO';
  Fldgrd[1] := 'ADJLOC';

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

function TfSrcDlg.ShowModalinvmast: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 22;
  Title[0]  := 'รหัสสินค้า';
  Title[1]  := 'ชื่อสินค้า';
  Title[2]  := 'รุ่นสินค้า';
  Title[3]  := 'เบอร์แทน';
  Title[4]  := 'กลุ่ม';
  Title[5]  := 'ราคาขาย';
  Title[6]  := 'Barcode';

  Fldgrd[0] := 'Partno';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'Model';
  Fldgrd[3] := 'Code_T';
  Fldgrd[4] := 'Group1';
  Fldgrd[5] := 'Price1';
  Fldgrd[6] := 'BARCODE';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalICinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 23;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขที่ใบกำกับ';
  Title[2]  := 'วันที่';
  Title[3]  := 'เลขที่ใบเสร็จ';
  Title[4]  := 'เลขที่ใบเบิก';
  Title[5]  := 'ชื่อลูกค้า';
  Title[6]  := 'นามสกุล';
  Title[7]  := 'ผู้ยกเลิก';
  Title[8]  := 'วันที่ยกเลิก';
  Title[9]  := 'ยอดเงิน';

  Fldgrd[0] := 'INVLOC';
  Fldgrd[1] := 'INVNO';
  Fldgrd[2] := 'INVDATE';
  Fldgrd[3] := 'TAXREFNO';
  Fldgrd[4] := 'PKNO';
  Fldgrd[5] := 'NAME1';
  Fldgrd[6] := 'NAME2';
  Fldgrd[7] := 'CANCELID';
  Fldgrd[8] := 'CANDAT';
  Fldgrd[9] := 'NETPRC';
  
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add('All field...');

  OrderCombo.ItemIndex := 5;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalRtinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 24;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขที่ใบคืน';
  Title[2]  := 'วันที่คืน';
  Title[3]  := 'เลขที่ใบกำกับ';
  Title[4]  := 'เลขที่ใบลดหนี้';
  Title[5]  := 'รหัสลูกค้า';
  Title[6]  := 'ชื่อ';
  Title[7]  := 'นามสกุล';
  Title[8]  := 'จำนวนเงิน';

  Fldgrd[0] := 'RTNLOC';
  Fldgrd[1] := 'RTNNO';
  Fldgrd[2] := 'RTNDT';
  Fldgrd[3] := 'TAXREFNO';
  Fldgrd[4] := 'CREDNO';
  Fldgrd[5] := 'APCODE';
  Fldgrd[6] := 'NAME1';
  Fldgrd[7] := 'NAME2';
  Fldgrd[8] := 'TOTAL';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalMoveto: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 25;
  Title[0]  := 'เลขที่ใบโอนย้าย';
  Title[1]  := 'วันที่โอนย้าย';
  Title[2]  := 'จากสาขา';
  Title[3]  := 'ไปยังสาขา';
  Title[4]  := 'มูลค่าโอน';
  Title[5]  := 'สถานะ';

  Fldgrd[0] := 'MOVNO';
  Fldgrd[1] := 'MOVDT';
  Fldgrd[2] := 'MOVFRM';
  Fldgrd[3] := 'MOVTO';
  Fldgrd[4] := 'TOTPRC';
  Fldgrd[5] := 'FLAG';

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

function TfSrcDlg.ShowModalMovefm: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 26;
  Title[0]  := 'เลขที่รับโอน';
  Title[1]  := 'วันที่รับโอน';
  Title[2]  := 'เลขที่ใบโอนย้าย';
  Title[3]  := 'จากสาขา';
  Title[4]  := 'ไปยังสาขา';


  Fldgrd[0] := 'RECVNO';
  Fldgrd[1] := 'RECVDT';
  Fldgrd[2] := 'INVNO' ;
  Fldgrd[3] := 'APCODE';
  Fldgrd[4] := 'RECVLOC';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;
function TfSrcDlg.ShowModalQainv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 27;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขที่ใบเสนอราคา';
  Title[2]  := 'วันที่';
  Title[3]  := 'รหัสลูกค้า';
  Title[4]  := 'ชื่อลูกค้า';
  Title[5]  := 'นามสกุล';
  Title[6]  := 'รหัสสาขา';

  Fldgrd[0] := 'QALOCAT';
  Fldgrd[1] := 'QANO';
  Fldgrd[2] := 'QADATE';
  Fldgrd[3] := 'CUSCOD';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'QALOCAT';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalAdjust: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 28;
  Title[0]  := 'เลขที่ปรับปรุง';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสพนักงาน';
  Title[3]  := 'รหัสสาขา';
  Title[4]  := 'ต้นทุนปรับปรุง';

  Fldgrd[0] := 'ADJNO';
  Fldgrd[1] := 'ADJDATE';
  Fldgrd[2] := 'OFFICCOD';
  Fldgrd[3] := 'ADJLOC';
  Fldgrd[4] := 'TOTCOST';
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

function TfSrcDlg.ShowModalAllJob: Integer;
begin
  OrderCombo.Tag := 29;
  Title[0]  := 'เลขที่ใบแจ้งซ่อม';
  Title[1]  := 'เลขตัวถัง';
  Title[2]  := 'เลขเครื่อง';
  Title[3]  := 'เลขทะเบียน';
  Title[4]  := 'ชื่อ';
  Title[5]  := 'นามสกุล';
  Title[6]  := 'สาขา';
  Title[7]  := 'วันที่';

  Fldgrd[0] := 'JOBNO';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'ENGNO';
  Fldgrd[3] := 'REGNO';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'LOCAT';
  Fldgrd[7] := 'RECVDATE';

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
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;
function TfSrcDlg.ShowModalCampn: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 30;
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

function TfSrcDlg.ShowModalPtkit: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 31;
  Title[0]  := 'รหัสชุด Kit';
  Title[1]  := 'ชื่อชุด Kit';

  Fldgrd[0] := 'KITCODE';
  Fldgrd[1] := 'KITNAME';

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

function TfSrcDlg.ShowModalChqPy: Integer;
begin
  OrderCombo.Tag := 32;
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

function TfSrcDlg.ShowModalDetailCar: Integer;
begin
  OrderCombo.Tag := 33;
  Title[0]  := 'เลขถัง';
  Title[1]  := 'เลขทะเบียน';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อลุกค้า';
  Title[4]  := 'นามสกุล';

  Fldgrd[0] := 'STRNO';
  Fldgrd[1] := 'REGNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
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

function TfSrcDlg.ShowModalShopSv: Integer;
begin
  OrderCombo.Tag := 34;
  Title[0]  := 'รหัสร้าน';
  Title[1]  := 'ชื่อร้าน';

  Fldgrd[0] := 'CODE';
  Fldgrd[1] := 'SVNAME';

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

function TfSrcDlg.ShowModalApbyPart: Integer;
begin
  OrderCombo.Tag := 35;
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
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalDeposit: Integer;
begin
  OrderCombo.Tag := 36;
  Title[0]  := 'เลขมัดจำ';
  Title[1]  := 'วันที่มัดจำ';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'จำนวนเงินจอง';
  Title[4]  := 'ภาษี';
  Title[5]  := 'ยอดรวมภาษี';
  Title[6]  := 'ใบกำกับภาษี';
  Title[7]  := 'วันที่ใบกำกับ';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'INVDATE';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'Balance';
  Fldgrd[4] := 'Vatamt';
  Fldgrd[5] := 'Nettotal';
  Fldgrd[6] := 'TAXNO';
  Fldgrd[7] := 'TAXDATE';

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

function TfSrcDlg.ShowModalCatalog: Integer;
begin
  OrderCombo.Tag := 37;
  Title[0]  := 'รหัสสินค้า';
  Title[1]  := 'ชื่อสินค้า';
  Title[2]  := 'รหัสกลุ่ม';
  Title[3]  := 'รหัสยี่ห้อ';

  Fldgrd[0] := 'partno';
  Fldgrd[1] := 'desc1';
  Fldgrd[2] := 'group1';
  Fldgrd[3] := 'type';

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

function TfSrcDlg.ShowModalbarcode: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 38;
  Title[0]  := 'รหัส Barcode';
  Title[1]  := 'ชื่อสินค้า';
  Title[2]  := 'รหัสสินค้า';

  Fldgrd[0] := 'BARCODE';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'PARTNO';

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

function TfSrcDlg.ShowModalbook: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 39;
  Title[0]  := 'รหัสสมุดเงินฝาก';
  Title[1]  := 'ชื่อธนาคาร';
  Title[2]  := 'ชื่อสาขา';
  Title[3]  := 'เลขที่บัญชี';
  Title[4]  := 'ประเภทสมุดเงินฝาก';
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
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalApOth: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 40;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขที่อินวอยส์';
  Title[2]  := 'วันที่อินวอยส์';
  Title[3]  := 'เลขที่รับ';
  Title[4]  := 'วันที่รับ';
  Title[5]  := 'รหัสลูกค้า';
  Title[6]  := 'ชื่อ-สกุล';
  Title[7]  := 'จำนวนเงิน';
  Title[8]  := 'ยกเลิก';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'INVNO';
  Fldgrd[2] := 'INVDATE';
  Fldgrd[3] := 'RECVNO';
  Fldgrd[4] := 'RECVDT';
  Fldgrd[5] := 'APCODE';
  Fldgrd[6] := 'CUSTNAME';
  Fldgrd[7] := 'Nettotal';
  Fldgrd[8] := 'Cancelid';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalApTaxno: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 41;
  Title[0]  := 'ใบกำกับ';
  Title[1]  := 'ใบส่งของ';
  Title[2]  := 'วันที่ใบกำกับ';
  Title[3]  := 'เจ้าหนี้';
  Title[4]  := 'ยอดรวม';
  Title[5]  := 'FLAG';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'INVNO';
  Fldgrd[2] := 'TAXDATE';
  Fldgrd[3] := 'APCODE';
  Fldgrd[4] := 'NETTOTAL';
  Fldgrd[5] := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalCRDNO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 42;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขที่ใบลดหนี้';
  Title[2]  := 'เลขที่ใบกำกับ';
  Title[3]  := 'รหัสเจ้าหนี้';
  Title[4]  := 'วันที่';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'TAXNO';
  Fldgrd[2] := 'TAXREFNO';
  Fldgrd[3] := 'CUSCOD';
  Fldgrd[4] := 'TAXDATE';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
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

function tfSrcDlg.ShowModalSvmst: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 43;
  Title[0]  := 'รหัสลูกค้า';
  Title[1]  := 'เลขตัวถัง';
  Title[2]  := 'เลขทะเบียน';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'นามสกุล';

  Fldgrd[0] := 'CUSCOD';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'REGNO';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
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

function TfSrcDlg.ShowModalARSVMAST: Integer;
begin
  OrderCombo.Tag := 44;
  Title[0]  := 'รหัสลูกค้า';
  Title[1]  := 'หมายเลขถัง';
  Title[2]  := 'เลขทะเบียน';
  Title[3]  := 'คำนำหน้า';
  Title[4]  := 'ชื่อ';
  Title[5]  := 'นามสกุล';


  Fldgrd[0] := 'CUSCOD';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'REGNO';
  Fldgrd[3] := 'SNAM';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
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

function TfSrcDlg.ShowModalRcinvRt: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 45;
  Title[0]  := 'เลขที่ใบรับ';
  Title[1]  := 'รหัสเจ้าหนี้';
  Title[2]  := 'ชื่อเจ้าหนี้';
  Title[3]  := 'เลขที่ใบส่งของ';
  Title[4]  := 'เลขที่ใบกำกับ';
  Title[5]  := 'เลขที่ PO';
  Title[6]  := 'วันที่รับ';

  Fldgrd[0] := 'RECVNO';
  Fldgrd[1] := 'APCODE';
  Fldgrd[2] := 'APNAME';
  Fldgrd[3] := 'INVNO';
  Fldgrd[4] := 'TAXNO';
  Fldgrd[5] := 'PONO';
  Fldgrd[6] := 'RECVDT';

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
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalPartInventor: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 46;
  Title[0]  := 'รหัสสินค้า';
  Title[1]  := 'ชื่อสินค้า';
  Title[2]  := 'รุ่นรถ';
  Title[3]  := 'กลุ่ม';

  Fldgrd[0] := 'Partno';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'MODEL';
  Fldgrd[3] := 'GROUP1';

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

function TfSrcDlg.ShowModalDepositSV: Integer;
begin
  OrderCombo.Tag := 47;
  Title[0]  := 'เลขมัดจำ';
  Title[1]  := 'วันที่มัดจำ';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'จำนวนเงินจอง';
  Title[4]  := 'ภาษี';
  Title[5]  := 'ยอดรวมภาษี';
  Title[6]  := 'ใบกำกับภาษี';
  Title[7]  := 'วันที่ใบกำกับ';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'INVDATE';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'Balance';
  Fldgrd[4] := 'Vatamt';
  Fldgrd[5] := 'Nettotal';
  Fldgrd[6] := 'TAXNO';
  Fldgrd[7] := 'TAXDATE';

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
function TfSrcDlg.ShowModalSubject: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 48;
  Title[0]  := 'รหัสเรื่อง';
  Title[1]  := 'ชื่อเรื่อง';

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

function TfSrcDlg.ShowModalFirstSv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 49;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขเอกสาร';
  Title[2]  := 'วันที่เอกสาร';
  Title[3]  := 'รหัสเรื่อง';
  Title[4]  := 'ชื่อเรื่อง';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'DOCNO';
  Fldgrd[2] := 'DOCDATE';
  Fldgrd[3] := 'SUBJECT';
  Fldgrd[4] := 'SUBDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalOutJob: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 50;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขเอกสาร';
  Title[2]  := 'วันที่';
  Title[3]  := 'เลขที่ job';
  Title[4]  := 'ชื่อลูกค้า';
  Title[5]  := 'นามสกุล';
  Title[6]  := 'เลขถัง';
  Title[7]  := 'เลขทะเบียน';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'DOCNO';
  Fldgrd[2] := 'DOCDT';
  Fldgrd[3] := 'JOBNO';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'STRNO';
  Fldgrd[7] := 'REGNO';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 5;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalWarning: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 51;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขที่ job';
  Title[2]  := 'วันที่ job';
  Title[3]  := 'เลขถัง';
  Title[4]  := 'เลขทะเบียน';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'JOBDATE';
  Fldgrd[3] := 'STRNO';
  Fldgrd[4] := 'REGNO';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalBankbook: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 52;
  Title[0]  := 'รหัสสมุดเงินฝาก';
  Title[1]  := 'ชื่อธนาคาร';
  Title[2]  := 'ชื่อสาขา';
  Title[3]  := 'เลขที่บัญชี';
  Title[4]  := 'ประเภทสมุดเงินฝาก';
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
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalAfterSv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 53;
  Title[0]  := 'รหัสสาขา';
  Title[1]  := 'เลขเอกสาร';
  Title[2]  := 'วันที่เอกสาร';
  Title[3]  := 'รหัสเรื่อง';
  Title[4]  := 'ชื่อเรื่อง';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'DOCNO';
  Fldgrd[2] := 'DOCDATE';
  Fldgrd[3] := 'SUBJECT';
  Fldgrd[4] := 'SUBDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalSetPromotion: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 54;
  Title[0]  := 'รหัสโปรโมชั่น';
  Title[1]  := 'ชื่อโปรโมชั่น';

  Fldgrd[0] := 'PROCODE';
  Fldgrd[1] := 'PRONAME';

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

function TfSrcDlg.ShowModalQueue: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 55;
  Title[0]  := 'รหัสสาขา';
  Title[1]  := 'เลขที่คิว';
  Title[2]  := 'วันที่บัตรคิว';
  Title[3]  := 'อ้างอิง JOB';
  Title[4]  := 'สถานะ';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'QNO';
  Fldgrd[2] := 'QDT';
  Fldgrd[3] := 'JOBNO';
  Fldgrd[4] := 'FLAG';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.ShowModalPktrnSV: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 56;
  Title[0]  := 'รหัสสินค้า';
  Title[1]  := 'ชื่อสินค้า';
  Title[2]  := 'ใบแจ้งซ่อม';
  Title[3]  := 'เลขที่เบิก';
  Title[4]  := 'จำนวน';

  Fldgrd[0] := 'PARTNO';
  Fldgrd[1] := 'PARTDESC';
  Fldgrd[2] := 'JOBNO';
  Fldgrd[3] := 'PKNO';
  Fldgrd[4] := 'QTY';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg.GetKeyno: string;
begin
  If qrFindDat.Active Then
  Case OrderCombo.Tag Of
    0 :Result := qrFindDat.Fieldbyname('PARTNO').Asstring;
    1 :Result := qrFindDat.Fieldbyname('LOCATCD').Asstring;
    2 :Result := qrFindDat.Fieldbyname('GROUPCOD').Asstring;
    3 :Result := qrFindDat.Fieldbyname('TYPECOD').Asstring;
    4 :Result := qrFindDat.Fieldbyname('APCODE').Asstring;
    5 :Result := qrFindDat.Fieldbyname('CUSCOD').Asstring;
    6 :Result := qrFindDat.Fieldbyname('PAYCODE').Asstring;
    7 :Result := qrFindDat.Fieldbyname('CODE').Asstring;
    8 :Result := qrFindDat.Fieldbyname('PONO').Asstring;
    9 :Result := qrFindDat.Fieldbyname('JOBNO').Asstring;
    10:Result := qrFindDat.Fieldbyname('PKNO').Asstring;
    11:Result := qrFindDat.Fieldbyname('ORDNO').Asstring;
    12:Result := qrFindDat.Fieldbyname('PARTNO').Asstring;
    13:Result := qrFindDat.Fieldbyname('BANKCOD').Asstring;
    14:Result := qrFindDat.Fieldbyname('MODELCOD').Asstring;
    15:Result := qrFindDat.Fieldbyname('TAXNO').Asstring;
    16:Result := qrFindDat.Fieldbyname('RECVNO').Asstring;
    17:Result := qrFindDat.Fieldbyname('SLCODE').Asstring;
    18:Result := qrFindDat.Fieldbyname('ARGCOD').Asstring;
    19:Result := qrFindDat.Fieldbyname('OTHIVNO').Asstring;
    20:Result := qrFindDat.Fieldbyname('QUOTNO').Asstring;
    21:Result := qrFindDat.Fieldbyname('ADJNO').Asstring;
    22:Result := qrFindDat.Fieldbyname('PartNo').Asstring;
    23:Result := qrFindDat.Fieldbyname('INVNO').Asstring;
    24:Result := qrFindDat.Fieldbyname('RTNNO').Asstring;
    25:Result := qrFindDat.Fieldbyname('MOVNO').Asstring;
    26:Result := qrFindDat.Fieldbyname('RECVNO').Asstring;
    27:Result := qrFindDat.Fieldbyname('QANO').Asstring;
    28:Result := qrFindDat.Fieldbyname('ADJNO').Asstring;
    29:Result := qrFindDat.Fieldbyname('JOBNO').Asstring;
    30:Result := qrFindDat.Fieldbyname('Campno').Asstring;
    31:Result := qrFindDat.Fieldbyname('Kitcode').Asstring;
    32:Result := qrFindDat.Fieldbyname('CHQNO').Asstring;
    33:Result := qrFindDat.Fieldbyname('STRNO').Asstring;
    34:Result := qrFindDat.Fieldbyname('CODE').Asstring;
    35:Result := qrFindDat.Fieldbyname('APCODE').Asstring;
    36:Result := qrFindDat.Fieldbyname('INVNO').Asstring;
    37:Result := qrFindDat.Fieldbyname('PARTNO').Asstring;
    38:Result := qrFindDat.Fieldbyname('BARCODE').Asstring;
    39:Result := qrFindDat.Fieldbyname('BANKBOOKCOD').Asstring;
    40:Result := qrFindDat.Fieldbyname('INVNO').Asstring;
    41:Result := qrFindDat.Fieldbyname('TAXNO').Asstring;
    42:Result := qrFindDat.Fieldbyname('TAXNO').Asstring;
    43:Result := qrFindDat.Fieldbyname('STRNO').Asstring;
    44:Result := qrFindDat.Fieldbyname('CUSCOD').Asstring;
    45:Result := qrFindDat.Fieldbyname('INVNO').Asstring;
    46:Result := qrFindDat.fieldbyname('PARTNO').AsString;
    47:Result := qrFindDat.Fieldbyname('INVNO').Asstring;
    48:Result := qrFindDat.Fieldbyname('SUBCODE').Asstring;
    49:Result := qrFindDat.Fieldbyname('DOCNO').Asstring;
    50:Result := qrFindDat.Fieldbyname('DOCNO').Asstring;
    51:Result := qrFindDat.Fieldbyname('JOBNO').Asstring;
    52:Result := qrfindDat.fieldbyname('BANKBOOKCOD').AsString;
    53:Result := qrfindDat.fieldbyname('DOCNO').AsString;
    54:Result := qrfindDat.fieldbyname('PROCODE').AsString;
    55:Result := qrfindDat.fieldbyname('QNO').AsString;
    56:Result := qrFindDat.Fieldbyname('PARTNO').Asstring;
  end;
end;

procedure TfSrcDlg.SearchButtonClick(Sender: TObject);
Var Sqltxt,Vtext:String;
begin
  With qrFindDat Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
    0:begin
      Sqltxt :='SELECT A.PARTNO,A.DESC1,A.LOCAT,A.GROUP1,A.PRICE1,A.MODEL,A.CODE_T,B.ALLO_12,A.SHELF,A.BARCODE '+
               'FROM INVENTOR A,INVANLS B '+
               'WHERE (A.PARTNO=B.PARTNO) AND (A.LOCAT=B.LOCAT) AND (A.YEAR1=B.YEAR1) AND ';
        If OrderCombo.Itemindex=0 Then
           SQL.ADD( Sqltxt+'A.PARTNO LIKE :0 AND A.LOCAT LIKE :1 ORDER BY A.PARTNO');
        If OrderCombo.Itemindex=1 Then
           SQL.ADD( Sqltxt+'A.DESC1 LIKE :0 AND A.LOCAT LIKE :1  ORDER BY A.DESC1');
        If OrderCombo.Itemindex=2 Then
           SQL.ADD( Sqltxt+'A.MODEL LIKE :0 AND A.LOCAT LIKE :1  ORDER BY A.MODEL');
        If OrderCombo.Itemindex=3 Then
           SQL.ADD( Sqltxt+'A.BARCODE LIKE :0 AND A.LOCAT LIKE :1  ORDER BY A.MODEL');
        If OrderCombo.Itemindex=4 Then
           SQL.ADD( Sqltxt+'((A.PARTNO LIKE :0) or (A.DESC1 LIKE :1) or (A.MODEL LIKE :2) or (A.BARCODE LIKE :3)) '+
                           'AND A.LOCAT LIKE :4  ORDER BY A.MODEL');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        if OrderCombo.ItemIndex <> 4 then
          qrFindDat.Params[1].Asstring := SFMain.Xlocat+'%'
        else
        begin
          qrFindDat.Params[1].Asstring := Uppercase('%'+SearchEd.Text+'%');
          qrFindDat.Params[2].Asstring := Uppercase('%'+SearchEd.Text+'%');
          qrFindDat.Params[3].Asstring := Uppercase('%'+SearchEd.Text+'%');
          qrFindDat.Params[4].Asstring := SFMain.Xlocat+'%';
        end;
//        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;

    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM INVLOCAT WHERE LOCATCD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM INVLOCAT WHERE LOCATNM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM INVLOCAT WHERE ((LOCATCD LIKE :EDIT1) or (LOCATNM LIKE :EDIT1))');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        qrFindDat.Open;
      end;
    2:begin
        if xgrouptyp = '1' then
           sqltxt := ' AND TYPGROUP = ''1'' '
        else if xgrouptyp = '2' then
           sqltxt := ' AND TYPGROUP = ''2'' '
        else
           sqltxt := '';

        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE GROUPCOD LIKE :EDIT1'+sqltxt);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE GROUPNAM LIKE :EDIT1'+sqltxt);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE ((GROUPCOD LIKE :EDIT1) or (GROUPNAM LIKE :EDIT1))'+sqltxt);
        qrFindDat.Params[0].Asstring :=Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    3:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SETTYPE WHERE TYPECOD LIKE :0');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SETTYPE WHERE TYPEDES LIKE :0');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM SETTYPE WHERE ((TYPECOD LIKE :0) or (TYPEDES LIKE :0))');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        qrFindDat.Open;
      end;
    4:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT APCODE,APNAME,ACC_CODE FROM APMAST '+
                 'WHERE APCODE LIKE :EDIT1 ORDER BY APCODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT APCODE,APNAME,ACC_CODE FROM APMAST '+
                 'WHERE APNAME LIKE :EDIT1 ORDER BY APCODE');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT APCODE,APNAME,ACC_CODE FROM APMAST '+
                 'WHERE ((APCODE LIKE :EDIT1) or (APNAME LIKE :EDIT1)) ORDER BY APCODE');

        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    5:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM CUSTMAST WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM CUSTMAST WHERE NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM CUSTMAST WHERE NAME2 LIKE :EDIT1 ORDER BY NAME2');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT * FROM CUSTMAST WHERE ((CUSCOD LIKE :EDIT1) or (NAME1 LIKE :EDIT1) '+
                 'or (NAME2 LIKE :EDIT1)) ORDER BY CUSCOD');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    6:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE PAYCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE PAYDESC LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE ((PAYCODE LIKE :EDIT1) or (PAYDESC LIKE :EDIT1))');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        qrFindDat.Open;
      end;
    7:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE CODE LIKE :0 ORDER BY CODE ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE NAME LIKE :0 ORDER BY CODE ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE ((CODE LIKE :0) or (NAME LIKE :0)) ORDER BY CODE');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    8:Begin
        If OrderCombo.Itemindex=0 Then
           SQL.ADD( 'SELECT * FROM PO_INVOI WHERE PONO LIKE :0 AND POLOCAT LIKE :1 ORDER BY PODATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
           SQL.ADD( 'SELECT * FROM PO_INVOI WHERE APCODE LIKE :0 AND POLOCAT LIKE :1 ORDER BY PODATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
           SQL.ADD( 'SELECT * FROM PO_INVOI WHERE POLOCAT LIKE :0 AND POLOCAT LIKE :1 ORDER BY PODATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
           SQL.ADD( 'SELECT * FROM PO_INVOI WHERE ((PONO LIKE :0) or (APCODE LIKE :2) or (POLOCAT LIKE :3)) '+
                    'AND POLOCAT LIKE :4 ORDER BY PODATE DESC '+cbViewdata.EditValue);
          qrFindDat.Params[0].Asstring := Uppercase('%' + SearchEd.Text + '%');
          if OrderCombo.Itemindex <> 3 then
          begin
            qrFindDat.Params[1].Asstring := Uppercase(fSrcDlg.XSrLocat) + '%';
          end
          else
          begin
            qrFindDat.Params[1].Asstring := Uppercase('%' + SearchEd.Text + '%');
            qrFindDat.Params[2].Asstring := Uppercase('%' + SearchEd.Text + '%');
            qrFindDat.Params[3].Asstring := Uppercase(fSrcDlg.XSrLocat) + '%';
          end;
          if not qrFindDat.Prepared then
            qrFindDat.Prepare;
          qrFindDat.Open;
      end;
    9:Begin
        Sqltxt :='SELECT JOBNO,STRNO,ENGNO,REGNO,NAME1,NAME2,LOCAT,RECVDATE '+
        'FROM VIEW_JOBORD WHERE ';

        If OrderCombo.Itemindex=0 Then
        SQL.ADD( Sqltxt+'JOBNO LIKE :EDIT1 AND STATUS=''W'' AND LOCAT LIKE :EDIT2 ORDER BY JOBNO ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( Sqltxt+'STRNO LIKE :EDIT1 AND STATUS=''W'' AND LOCAT LIKE :EDIT2 ORDER BY STRNO ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( Sqltxt+'ENGNO LIKE :EDIT1 AND STATUS=''W'' AND LOCAT LIKE :EDIT2 ORDER BY ENGNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( Sqltxt+'REGNO LIKE :EDIT1 AND STATUS=''W'' AND LOCAT LIKE :EDIT2 ORDER BY REGNO');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( Sqltxt+'NAME1 LIKE :EDIT1 AND STATUS=''W'' AND LOCAT LIKE :EDIT2 ORDER BY NAME1');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( Sqltxt+'NAME2 LIKE :EDIT1 AND STATUS=''W'' AND LOCAT LIKE :EDIT2 ORDER BY NAME2');
        If OrderCombo.Itemindex=6 Then
        SQL.ADD( Sqltxt+'((JOBNO LIKE :EDIT1) or (STRNO LIKE :EDIT1) or (ENGNO LIKE :EDIT1) '+
                        'or (REGNO LIKE :EDIT1) or (NAME1 LIKE :EDIT1) or (NAME2 LIKE :EDIT1)) AND STATUS=''W'' AND LOCAT LIKE :EDIT2 ORDER BY JOBNO');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If OrderCombo.Itemindex <> 6 Then
        qrFindDat.Params[1].AsString := Uppercase(fSrcDlg.XSrLocat)+'%' else
        qrFindDat.Params[6].AsString := Uppercase(fSrcDlg.XSrLocat)+'%';
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   10:Begin
        Sqltxt :='SELECT P.PKNO,P.PKLOCAT,P.PKDATE,P.CUSCOD,C.NAME1,C.NAME2,P.JOBNO,P.REFNO,P.NETTOTAL,P.SALTYPE '+
                 'FROM PK_INVOI P LEFT JOIN CUSTMAST C ON (P.CUSCOD=C.CUSCOD) ';
        If OrderCombo.Itemindex=0 Then
          SQL.ADD( Sqltxt+'WHERE P.PKNO LIKE :EDIT1  AND P.PKLOCAT LIKE :EDIT3 AND (FLAG=''0'' OR FLAG=''2'' OR FLAG LIKE :3) AND (P.CUSCOD LIKE :EDIT4 OR P.CUSCOD IS NULL) '+
                          'AND (P.SALTYPE LIKE :EDIT5 OR P.SALTYPE IS NULL) AND (P.SVCOLOR LIKE :EDIT6) ORDER BY P.PKDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
          SQL.ADD( Sqltxt+'WHERE P.CUSCOD LIKE :EDIT1 AND P.PKLOCAT LIKE :EDIT3 AND (FLAG=''0'' OR FLAG=''2'' OR FLAG LIKE :3) AND (P.CUSCOD LIKE :EDIT4 OR P.CUSCOD IS NULL) '+
                          'AND (P.SALTYPE LIKE :EDIT5 OR P.SALTYPE IS NULL) AND (P.SVCOLOR LIKE :EDIT6) ORDER BY P.PKDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
          SQL.ADD( Sqltxt+'WHERE C.NAME1 LIKE :EDIT1  AND P.PKLOCAT LIKE :EDIT3 AND (FLAG=''0'' OR FLAG=''2'' OR FLAG LIKE :3) AND (P.CUSCOD LIKE :EDIT4 OR P.CUSCOD IS NULL) '+
                          'AND (P.SALTYPE LIKE :EDIT5 OR P.SALTYPE IS NULL) AND (P.SVCOLOR LIKE :EDIT6) ORDER BY P.PKDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
          SQL.ADD( Sqltxt+'WHERE C.NAME2 LIKE :EDIT1 AND P.PKLOCAT LIKE :EDIT3 AND (FLAG=''0'' OR FLAG=''2'' OR FLAG LIKE :3) AND (P.CUSCOD LIKE :EDIT4 OR P.CUSCOD IS NULL) '+
                          'AND (P.SALTYPE LIKE :EDIT5 OR P.SALTYPE IS NULL) AND (P.SVCOLOR LIKE :EDIT6) ORDER BY P.PKDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
          SQL.ADD( Sqltxt+'WHERE P.JOBNO LIKE :EDIT1 AND P.PKLOCAT LIKE :EDIT3 AND (FLAG=''0'' OR FLAG=''2'' OR FLAG LIKE :3) AND (P.CUSCOD LIKE :EDIT4 OR P.CUSCOD IS NULL) '+
                          'AND (P.SALTYPE LIKE :EDIT5 OR P.SALTYPE IS NULL) AND (P.SVCOLOR LIKE :EDIT6) ORDER BY P.PKDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
          SQL.ADD( Sqltxt+'WHERE ((P.PKNO LIKE :EDIT1) or (P.CUSCOD LIKE :EDIT1) or (C.NAME1 LIKE :EDIT1) '+
                          'or (C.NAME2 LIKE :EDIT1) or (P.JOBNO LIKE :EDIT1)) '+
                          'AND P.PKLOCAT LIKE :EDIT3 AND (FLAG=''0'' OR FLAG=''2'' OR FLAG LIKE :3)  AND (P.CUSCOD LIKE :EDIT4 OR P.CUSCOD IS NULL) '+
                          'AND (P.SALTYPE LIKE :EDIT5 OR P.SALTYPE IS NULL) AND (P.SVCOLOR LIKE :EDIT6) ORDER BY P.PKDATE DESC '+cbViewdata.EditValue);
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If OrderCombo.Itemindex <> 5 Then
        begin
          qrFindDat.Params[1].Asstring := Uppercase(fsrcDlg.XSrLocat)+'%';
          qrFindDat.Params[2].Asstring := Uppercase(fsrcDlg.Flag_a)+'%';
          qrFindDat.Params[3].Asstring := Uppercase(fsrcDlg.XCuscod)+'%';
          qrFindDat.Params[4].Asstring := Uppercase(fsrcDlg.xSaltype)+'%';
          qrFindDat.Params[5].Asstring := Uppercase(fsrcDlg.nSvColor)+'%';
        end else
        begin
          qrFindDat.Params[1].Asstring := Uppercase(fsrcDlg.XSrLocat)+'%';
          qrFindDat.Params[2].Asstring := Uppercase(fsrcDlg.Flag_a)+'%';
          qrFindDat.Params[3].Asstring := Uppercase(fsrcDlg.XCuscod)+'%';
          qrFindDat.Params[4].Asstring := Uppercase(fsrcDlg.xSaltype)+'%';
          qrFindDat.Params[5].Asstring := Uppercase(fsrcDlg.nSvColor)+'%';
        end;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   11:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT R.ORDNO,R.ORDLOCAT,R.ORDDATE,R.CUSCOD,C.SNAM,C.NAME1,C.NAME2,R.JOBNO  '+
                'FROM SV_ORDIV R,CUSTMAST C '+
                'WHERE R.CUSCOD=C.CUSCOD AND R.ORDNO LIKE :0 ORDER BY R.ORDDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT R.ORDNO,R.ORDLOCAT,R.ORDDATE,R.CUSCOD,C.SNAM,C.NAME1,C.NAME2,R.JOBNO  '+
                'FROM SV_ORDIV R,CUSTMAST C '+
                'WHERE R.CUSCOD=C.CUSCOD AND R.JOBNO LIKE :0 ORDER BY R.ORDDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT R.ORDNO,R.ORDLOCAT,R.ORDDATE,R.CUSCOD,C.SNAM,C.NAME1,C.NAME2,R.JOBNO  '+
                'FROM SV_ORDIV R,CUSTMAST C '+
                'WHERE R.CUSCOD=C.CUSCOD AND R.CUSCOD LIKE :0 ORDER BY R.ORDDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT R.ORDNO,R.ORDLOCAT,R.ORDDATE,R.CUSCOD,C.SNAM,C.NAME1,C.NAME2,R.JOBNO  '+
                'FROM SV_ORDIV R,CUSTMAST C '+
                'WHERE R.CUSCOD=C.CUSCOD AND C.NAME1 LIKE :0 ORDER BY R.ORDDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT R.ORDNO,R.ORDLOCAT,R.ORDDATE,R.CUSCOD,C.SNAM,C.NAME1,C.NAME2,R.JOBNO  '+
                'FROM SV_ORDIV R,CUSTMAST C '+
                'WHERE R.CUSCOD=C.CUSCOD AND C.NAME2 LIKE :0 ORDER BY R.ORDDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT R.ORDNO,R.ORDLOCAT,R.ORDDATE,R.CUSCOD,C.SNAM,C.NAME1,C.NAME2,R.JOBNO  '+
                'FROM SV_ORDIV R,CUSTMAST C '+
                'WHERE R.CUSCOD=C.CUSCOD AND ((C.NAME2 LIKE :0) or (R.ORDNO LIKE :0) or (R.JOBNO LIKE :0) '+
                'or (R.CUSCOD LIKE :0) or (C.NAME1 LIKE :0)) ORDER BY R.ORDDATE DESC '+cbViewdata.EditValue);
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        qrFindDat.Open;
      end;
   12:Begin
        Sqltxt :='SELECT A.PARTNO,A.JOBNO,B.DESC1,A.PKNO,A.QTYOUT,A.QTYBOD FROM PK_TRANS A INNER JOIN INVMAST B ON (A.PARTNO=B.PARTNO)';
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( Sqltxt+'WHERE A.PARTNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( Sqltxt+'WHERE B.DESC1 LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( Sqltxt+'WHERE A.JOBNO LIKE :EDIT1');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( Sqltxt+'WHERE A.PKNO LIKE :EDIT1');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( Sqltxt+'WHERE ((A.PKNO LIKE :EDIT1) or (B.DESC1 LIKE :EDIT1) or (A.JOBNO LIKE :EDIT1) or (A.PARTNO LIKE :EDIT1))');
        qrFindDat.Params[0].Asstring := Key_a+'%';
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   13:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM SETBANK WHERE BANKCOD LIKE :0');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM SETBANK WHERE BANKNAM LIKE :0');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM SETBANK WHERE ((BANKCOD LIKE :0) or (BANKNAM LIKE :0))');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        qrFindDat.Open;
      end;
   14:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SETMODEL WHERE MODELCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SETMODEL WHERE MODELDES LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM SETMODEL WHERE SUBMODEL LIKE :EDIT1');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT * FROM SETMODEL WHERE MODELSV LIKE :EDIT1');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( 'SELECT * FROM SETMODEL WHERE TYPECOD LIKE :EDIT1');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( 'SELECT * FROM SETMODEL WHERE ((MODELCOD LIKE :EDIT1) or (MODELDES LIKE :EDIT1) '+
                 'or (SUBMODEL LIKE :EDIT1) or (MODELSV LIKE :EDIT1) or (TYPECOD LIKE :EDIT1))');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
           qrFindDat.Open;
      end;

    15:begin
         Sqltxt :='SELECT T.TAXNO,T.JOBNO,T.CUSCOD,T.TAXDATE,T.CANCELID,T.TOTTAX,C.NAME1,C.NAME2 FROM TAXSAL T,CUSTMAST C ';
         If OrderCombo.Itemindex=0 Then
         SQL .ADD(Sqltxt+'WHERE T.CUSCOD=C.CUSCOD AND T.TAXNO LIKE :EDIT1 AND T.CANCEL IS NULL AND T.FLAG=''1'' '+
                         'ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
         If OrderCombo.Itemindex=1 Then
         SQL .ADD(Sqltxt+'WHERE T.CUSCOD=C.CUSCOD AND T.JOBNO LIKE :EDIT1 AND T.CANCEL IS NULL AND T.FLAG=''1'' '+
                         'ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
         If OrderCombo.Itemindex=2 Then
         SQL .ADD(Sqltxt+'WHERE T.CUSCOD=C.CUSCOD AND  T.CUSCOD LIKE :EDIT1 AND T.CANCEL IS NULL AND T.FLAG=''1'' '+
                         'ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
         If OrderCombo.Itemindex=3 Then
         SQL .ADD(Sqltxt+'WHERE T.CUSCOD=C.CUSCOD AND  C.NAME1 LIKE :EDIT1 AND T.CANCEL IS NULL AND T.FLAG=''1'' '+
                         'ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
         If OrderCombo.Itemindex=4 Then
         SQL .ADD(Sqltxt+'WHERE T.CUSCOD=C.CUSCOD AND  C.NAME2 LIKE :EDIT1 AND T.CANCEL IS NULL AND T.FLAG=''1'' '+
                         'ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
         If OrderCombo.Itemindex=5 Then
         SQL .ADD(Sqltxt+'WHERE T.CUSCOD=C.CUSCOD AND  ((T.TAXNO LIKE :EDIT1) or (T.JOBNO LIKE :EDIT1) '+
                         'or (T.CUSCOD LIKE :EDIT1) or (C.NAME1 LIKE :EDIT1) or (C.NAME2 LIKE :EDIT1)) '+
                         'AND T.CANCEL IS NULL AND T.FLAG=''1'' '+
                         'ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);

         qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
         If Not qrFindDat.Prepared Then qrFindDat.Prepare;
         qrFindDat.Open;
      end;
    16:begin
        if nPaytyp = 'A' then
           Vtext := ' AND I.PAYTYP IN (''A'') '
        else
           Vtext := ' AND I.PAYTYP IN (''B'',''C'') ';
           
        Sqltxt := 'SELECT I.RECVNO,I.RECVLOC,I.RECVDT,I.APCODE,I.INVNO,I.REFNO,I.PONO,I.TOTCOST,B.APNAME, '+
                  'CASE WHEN I.PAYTYP = ''A'' THEN ''จากการสั่งซื้อ'' '+
                  'WHEN I.PAYTYP = ''B'' THEN ''จากการผลิต'' ELSE ''จากการจัดชุดสินค้า'' END PAYTYP '+
                  'FROM RC_INVOI I,APMAST B WHERE I.APCODE=B.APCODE AND ';
        If OrderCombo.Itemindex=0 Then
        SQL .ADD(Sqltxt+'I.RECVNO LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') AND I.RECVLOC LIKE :EDIT2 '+Vtext+' ORDER BY I.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL .ADD(Sqltxt+'I.APCODE LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') AND I.RECVLOC LIKE :EDIT2 '+Vtext+' ORDER BY I.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL .ADD(Sqltxt+'B.APNAME LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') AND I.RECVLOC LIKE :EDIT2 '+Vtext+' ORDER BY I.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL .ADD(Sqltxt+'I.INVNO LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') AND I.RECVLOC LIKE :EDIT2 '+Vtext+' ORDER BY I.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL .ADD(Sqltxt+'I.TAXNO LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') AND I.RECVLOC LIKE :EDIT2 '+Vtext+' ORDER BY I.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL .ADD(Sqltxt+'I.PONO LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') AND I.RECVLOC LIKE :EDIT2 '+Vtext+' ORDER BY I.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL .ADD(Sqltxt+'((I.RECVNO LIKE :EDIT1) or (I.APCODE LIKE :EDIT2) or (B.APNAME LIKE :EDIT3) '+
                        'or (I.INVNO LIKE :EDIT4) or (I.TAXNO LIKE :EDIT5) or (I.PONO LIKE :EDIT6)) AND (I.FLAG=''4'' OR I.FLAG=''5'') '+
                        'AND I.RECVLOC LIKE :EDIT7 '+Vtext+' ORDER BY I.RECVDT DESC '+cbViewdata.EditValue);
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If OrderCombo.Itemindex <> 6 Then
        begin
          qrFindDat.Params[1].AsString := Uppercase(fsrcDlg.XSrLocat +'%');
        //  qrFindDat.Params[2].AsString := Uppercase(fsrcDlg.nPaytyp +'%');
        end else
        begin
          qrFindDat.Params[1].Asstring := Uppercase('%'+SearchEd.Text+'%');
          qrFindDat.Params[2].Asstring := Uppercase('%'+SearchEd.Text+'%');
          qrFindDat.Params[3].Asstring := Uppercase('%'+SearchEd.Text+'%');
          qrFindDat.Params[4].Asstring := Uppercase('%'+SearchEd.Text+'%');
          qrFindDat.Params[5].Asstring := Uppercase('%'+SearchEd.Text+'%');
          qrFindDat.Params[6].AsString := Uppercase(fsrcDlg.XSrLocat +'%');
        //  qrFindDat.Params[7].AsString := Uppercase(fsrcDlg.nPaytyp );
        end;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    17:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM SALTYPE WHERE SLCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM SALTYPE WHERE SLDESC LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM SALTYPE WHERE ((SLCODE LIKE :EDIT1) or (SLDESC LIKE :EDIT1))');

        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    18:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ARGCOD LIKE :0');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ARGDES LIKE :0');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ((ARGCOD LIKE :0) or (ARGDES LIKE :0))');

        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   19:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM ICOTHINV WHERE OTHIVNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM ICOTHINV WHERE CUSCOD LIKE :EDIT1 ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM ICOTHINV WHERE ((OTHIVNO LIKE :EDIT1) or (CUSCOD LIKE :EDIT1)) ');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      End;
    20:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE QUOTNO LIKE :EDIT1  ');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE STRNO LIKE :EDIT1  ');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE REGNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE ((QUOTNO LIKE :EDIT1) or (STRNO LIKE :EDIT1) or (REGNO LIKE :EDIT1)) ');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   21:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  * FROM TMPAJIV WHERE FLAG=''B'' AND ADJNO LIKE :0 ORDER BY ADJDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  * FROM TMPAJIV WHERE FLAG=''B'' AND ADJLOC LIKE :0  ORDER BY ADJDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT  * FROM TMPAJIV WHERE FLAG=''B'' AND ((ADJNO LIKE :0) or (ADJLOC LIKE :0))  ORDER BY ADJDATE DESC '+cbViewdata.EditValue);
        qrFindDat.Params[0].Asstring := Uppercase(SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   22:begin
        SqlTxt := 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T,BARCODE FROM INVMAST ';
        If OrderCombo.Itemindex=0 Then
        SQL.ADD(Sqltxt+'WHERE PARTNO LIKE :0 ORDER BY PARTNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD(Sqltxt+'WHERE DESC1 LIKE :0 ORDER BY DESC1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD(Sqltxt+'WHERE MODEL LIKE :0 ORDER BY MODEL');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD(Sqltxt+'WHERE BARCODE LIKE :0 ORDER BY MODEL');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD(Sqltxt+'WHERE ((PARTNO LIKE :0) or (DESC1 LIKE :0) or (MODEL LIKE :0) or (BARCODE LIKE :0)) ORDER BY MODEL');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
        TFloatField(qrFindDat.FieldByName('PRICE1')).DisplayFormat := '##,##0.00';
      end;
   23:begin
        SqlTxt := 'SELECT A.INVLOC,A.INVNO,A.INVDATE,A.TAXREFNO,A.PKNO,A.CANCELID,A.CANDAT,A.NETPRC,A.CUSCOD,C.NAME1,C.NAME2 '+
                  'FROM IC_INVOI A,CUSTMAST C WHERE A.CUSCOD=C.CUSCOD AND ';
        If OrderCombo.Itemindex=0 Then
           SQL.ADD(Sqltxt+'A.INVNO LIKE :EDIT1 AND A.INVLOC LIKE :EDIT2 ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
           SQL.ADD(Sqltxt+'A.TAXREFNO LIKE :EDIT1 AND A.INVLOC LIKE :EDIT2 ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
           SQL.ADD(Sqltxt+'A.PKNO LIKE :EDIT1 AND A.INVLOC LIKE :EDIT2 ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
           SQL.ADD(Sqltxt+'C.NAME1 LIKE :EDIT1 AND A.INVLOC LIKE :EDIT2 ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
           SQL.ADD(Sqltxt+'C.NAME2 LIKE :EDIT1 AND A.INVLOC LIKE :EDIT2 ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
           SQL.ADD(Sqltxt+'((A.INVNO LIKE :EDIT1) or (A.TAXREFNO LIKE :EDIT1) or (A.PKNO LIKE :EDIT1) '+
                          'or (C.NAME1 LIKE :EDIT1) or (C.NAME2 LIKE :EDIT1)) AND A.INVLOC LIKE :EDIT2 ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);
           qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
           if OrderCombo.Itemindex <> 5 then
           qrFindDat.Params[1].AsString := Uppercase(fSrcDlg.XSrLocat)+'%' else
           qrFindDat.Params[5].AsString := Uppercase(fSrcDlg.XSrLocat)+'%';
           If Not qrFindDat.Prepared Then qrFindDat.Prepare;
           qrFindDat.Open;
      end;
   24:begin
        Sqltxt :='SELECT A.RTNLOC,A.RTNNO,A.RTNDT,A.TAXREFNO,A.CREDNO,A.JOBNO,A.APCODE,A.TOTAL,C.NAME1,C.NAME2 '+
                 'FROM RT_INVOI A,VIEW_CUSTOM C WHERE A.APCODE=C.CUSCOD AND ';
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( Sqltxt+'A.RTNNO LIKE :EDIT1 AND A.FLAG=:EDIT2 AND A.RTNLOC LIKE :EDIT3 ORDER BY A.RTNDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( Sqltxt+'A.TAXREFNO LIKE :EDIT1 A.AND FLAG=:EDIT2 AND A.RTNLOC LIKE :EDIT3 ORDER BY A.RTNDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( Sqltxt+'A.CREDNO LIKE :EDIT1 AND A.FLAG=:EDIT2 AND A.RTNLOC LIKE :EDIT3 ORDER BY A.RTNDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( Sqltxt+'A.APCODE LIKE :EDIT1 AND A.FLAG=:EDIT2 AND A.RTNLOC LIKE :EDIT3 ORDER BY A.RTNDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( Sqltxt+'C.NAME1 LIKE :EDIT1 AND A.FLAG=:EDIT2 AND A.RTNLOC LIKE :EDIT3 ORDER BY A.RTNDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( Sqltxt+'C.NAME2 LIKE :EDIT1 AND A.FLAG=:EDIT2 AND A.RTNLOC LIKE :EDIT3 ORDER BY A.RTNDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL.ADD( Sqltxt+'((A.RTNNO LIKE :EDIT1) or (A.TAXREFNO LIKE :EDIT2) or (A.CREDNO LIKE :EDIT3) '+
                        'or (A.APCODE LIKE :EDIT4) or (C.NAME1 LIKE :EDIT5) or (C.NAME2 LIKE :EDIT6)) '+
                        'AND A.FLAG=:EDIT7 AND A.RTNLOC LIKE :EDIT8 ORDER BY A.RTNDT DESC '+cbViewdata.EditValue);

        qrFindDat.Params[0].Asstring := Uppercase('%' + SearchEd.Text + '%');
        if OrderCombo.Itemindex <> 6 then
        begin
          qrFindDat.Params[1].Asstring := Flag_a;
          qrFindDat.Params[2].AsString := Uppercase(fSrcDlg.XSrLocat) + '%';
        end
        else
        begin
          qrFindDat.Params[1].Asstring := Uppercase('%' + SearchEd.Text + '%');
          qrFindDat.Params[2].Asstring := Uppercase('%' + SearchEd.Text + '%');
          qrFindDat.Params[3].Asstring := Uppercase('%' + SearchEd.Text + '%');
          qrFindDat.Params[4].Asstring := Uppercase('%' + SearchEd.Text + '%');
          qrFindDat.Params[5].Asstring := Uppercase('%' + SearchEd.Text + '%');
          qrFindDat.Params[6].Asstring := Flag_a;
          qrFindDat.Params[7].AsString := Uppercase(fSrcDlg.XSrLocat) + '%';
        end;
        if not qrFindDat.Prepared then
          qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   25:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT MOVNO,MOVDT,MOVFRM,MOVTO,TOTPRC,FLAG FROM MV_INVOI WHERE MOVNO LIKE :EDIT1 '+
                 'AND FLAG LIKE :EDIT2 AND MOVTO LIKE :EDIT3 ORDER BY MOVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT MOVNO,MOVDT,MOVFRM,MOVTO,TOTPRC,FLAG FROM MV_INVOI WHERE MOVFRM LIKE :EDIT1 '+
                 'AND FLAG LIKE :EDIT2 AND MOVTO LIKE :EDIT3 ORDER BY MOVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT MOVNO,MOVDT,MOVFRM,MOVTO,TOTPRC,FLAG FROM MV_INVOI WHERE MOVTO LIKE :EDIT1 '+
                 'AND FLAG LIKE :EDIT2 AND MOVTO LIKE :EDIT3 ORDER BY MOVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT MOVNO,MOVDT,MOVFRM,MOVTO,TOTPRC,FLAG FROM MV_INVOI WHERE ((MOVNO LIKE :EDIT1) '+
                 'or (MOVFRM LIKE :EDIT1) or (MOVTO LIKE :EDIT1)) AND FLAG LIKE :EDIT2 AND MOVTO LIKE :EDIT3 ORDER BY MOVDT DESC '+cbViewdata.EditValue);

        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If OrderCombo.Itemindex <> 3 Then
        begin
          qrFindDat.Params[1].Asstring := Flag_a+'%';
          qrFindDat.Params[2].Asstring := Key_a+'%';
        end else
        begin
          qrFindDat.Params[1].Asstring := Flag_a+'%';
          qrFindDat.Params[2].Asstring := Key_a+'%';
        end;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   26:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT RECVNO,RECVDT,INVNO,APCODE,RECVLOC FROM RC_INVOI '+
                 'WHERE RECVNO LIKE :EDIT1 AND FLAG=''R'' ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT RECVNO,RECVDT,INVNO,APCODE,RECVLOC FROM RC_INVOI '+
                 'WHERE INVNO LIKE :EDIT1 AND FLAG=''R'' ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT RECVNO,RECVDT,INVNO,APCODE,RECVLOC FROM RC_INVOI '+
                 'WHERE APCODE LIKE :EDIT1 AND FLAG=''R'' ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT RECVNO,RECVDT,INVNO,APCODE,RECVLOC FROM RC_INVOI '+
                 'WHERE RECVLOC LIKE :EDIT1 AND FLAG=''R'' ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( 'SELECT RECVNO,RECVDT,INVNO,APCODE,RECVLOC FROM RC_INVOI '+
                 'WHERE ((RECVNO LIKE :EDIT1) or (INVNO LIKE :EDIT1) '+
                 'or (APCODE LIKE :EDIT1) or (RECVLOC LIKE :EDIT1)) AND FLAG=''R'' ORDER BY RECVDT DESC '+cbViewdata.EditValue);

        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   27:begin
        SqlTxt :='SELECT Q.QANO,Q.QADATE,Q.CUSCOD,Q.QALOCAT,C.NAME1,C.NAME2 FROM QAINVOI Q,CUSTMAST C WHERE Q.CUSCOD=C.CUSCOD ';
        If OrderCombo.Itemindex=0 Then
        SQL.ADD(sqlTxt+'AND Q.QANO LIKE :EDIT1 AND Q.QALOCAT LIKE :EDIT2 ORDER BY Q.QADATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD(sqlTxt+'AND Q.CUSCOD LIKE :EDIT1 AND Q.QALOCAT LIKE :EDIT2 ORDER BY Q.QADATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD(sqlTxt+'AND C.NAME1 LIKE :EDIT1 AND Q.QALOCAT LIKE :EDIT2 ORDER BY Q.QADATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD(sqlTxt+'AND C.NAME2 LIKE :EDIT1 AND Q.QALOCAT LIKE :EDIT2 ORDER BY Q.QADATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD(sqlTxt+'AND ((Q.QANO LIKE :EDIT1) or (Q.CUSCOD LIKE :EDIT1) or (C.NAME1 LIKE :EDIT1) '+
                       'or (C.NAME2 LIKE :EDIT1)) AND Q.QALOCAT LIKE :EDIT2 ORDER BY Q.QADATE DESC '+cbViewdata.EditValue);
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If OrderCombo.Itemindex <> 4 then
        qrFindDat.Params[1].AsString := Uppercase(fSrcDlg.XSrLocat)+'%' else
        qrFindDat.Params[4].AsString := Uppercase(fSrcDlg.XSrLocat)+'%';
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   28:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC,TOTCOST FROM ADJ_INVOI WHERE ADJNO LIKE :EDIT1  ORDER BY ADJDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC,TOTCOST FROM ADJ_INVOI WHERE OFFICCOD LIKE :EDIT1 ORDER BY ADJDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC,TOTCOST FROM ADJ_INVOI WHERE ADJLOC LIKE :EDIT1 ORDER BY ADJDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT ADJNO,ADJDATE,OFFICCOD,ADJLOC,TOTCOST FROM ADJ_INVOI WHERE ((ADJNO LIKE :EDIT1) '+
                 'or (OFFICCOD LIKE :EDIT1) or (ADJLOC LIKE :EDIT1))  ORDER BY ADJDATE DESC '+cbViewdata.EditValue);

        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   29:Begin
        Sqltxt :='SELECT A.JOBNO,A.STRNO,B.ENGNO,B.REGNO,C.NAME1,C.NAME2,A.LOCAT,A.RECVDATE '+
        'FROM JOBORDER A,SVMAST B,CUSTMAST C WHERE A.STRNO=B.STRNO  AND '+
        'A.CUSCOD=C.CUSCOD ';
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( SQLTXT+'AND A.JOBNO LIKE :EDIT1 ORDER BY JOBNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( SQLTXT+'AND A.STRNO LIKE :EDIT1 ORDER BY STRNO ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( SQLTXT+'AND B.ENGNO LIKE :EDIT1 ORDER BY ENGNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( SQLTXT+'AND B.REGNO LIKE :EDIT1 ORDER BY REGNO');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( SQLTXT+'AND C.NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( SQLTXT+'AND C.NAME2 LIKE :EDIT1 ORDER BY NAME2');
        If OrderCombo.Itemindex=6 Then
        SQL.ADD( SQLTXT+'AND ((A.JOBNO LIKE :EDIT1) or (A.STRNO LIKE :EDIT1) or (B.ENGNO LIKE :EDIT1) '+
                        'or (B.REGNO LIKE :EDIT1) or (C.NAME1 LIKE :EDIT1) or (C.NAME2 LIKE :EDIT1)) ORDER BY JOBNO');

        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
  30:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM CAMPGRP WHERE CAMPNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM CAMOGRP WHERE CAMPNAM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM CAMPGRP WHERE ((CAMPNO LIKE :EDIT1) or (CAMPNAM LIKE :EDIT1))');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;

      end;
  31:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM PTKITINV WHERE KITCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM PTKITINV WHERE KITNAME LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM PTKITINV WHERE ((KITCODE LIKE :EDIT1) or (KITNAME LIKE :EDIT1))');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;

  32:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE CHQNO LIKE :EDIT1 AND PAYTYP = ''02'' '+Key_a+' ORDER BY  CHQNO ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE BKCODE LIKE :EDIT1 AND PAYTYP = ''02''  '+Key_a+' ORDER BY  BKCODE ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE REFNO LIKE :EDIT1 AND PAYTYP = ''02''  '+Key_a+'  ORDER BY  REFNO ');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE ((CHQNO LIKE :EDIT1) or (BKCODE LIKE :EDIT1) or (REFNO LIKE :EDIT1)) '+
                'AND PAYTYP = ''02'' '+Key_a+' ORDER BY  CHQNO ');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    33:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM  VIEW_DETAILCAR WHERE STRNO NOT IN(SELECT STRNO FROM SVMAST) '+
                 'AND STRNO LIKE :0 ORDER BY STRNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM  VIEW_DETAILCAR WHERE STRNO NOT IN(SELECT STRNO FROM SVMAST) '+
                 'AND REGNO LIKE :0 ORDER BY STRNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM  VIEW_DETAILCAR WHERE STRNO NOT IN(SELECT STRNO FROM SVMAST) '+
                 'AND CUSCOD LIKE :0 ORDER BY STRNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT * FROM  VIEW_DETAILCAR WHERE STRNO NOT IN(SELECT STRNO FROM SVMAST) '+
                 'AND NAME1 LIKE :0 ORDER BY STRNO');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( 'SELECT * FROM  VIEW_DETAILCAR WHERE STRNO NOT IN(SELECT STRNO FROM SVMAST) '+
                 'AND NAME2 LIKE :0 ORDER BY STRNO');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( 'SELECT * FROM  VIEW_DETAILCAR WHERE STRNO NOT IN(SELECT STRNO FROM SVMAST) '+
                 'AND ((STRNO LIKE :0) or (REGNO LIKE :0) or (CUSCOD LIKE :0) or (NAME1 LIKE :0) or (NAME2 LIKE :0)) ORDER BY STRNO');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
        end;
    34:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT CODE,SVNAME FROM  SHOPSV WHERE CODE LIKE :EDIT1 ORDER BY CODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT CODE,SVNAME FROM  SHOPSV WHERE SVNAME LIKE :EDIT1  ORDER BY SVNAME');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT CODE,SVNAME FROM  SHOPSV WHERE ((CODE LIKE :EDIT1) or (SVNAME LIKE :EDIT1)) ORDER BY CODE');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    35:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  * FROM APBYPART WHERE APCODE LIKE :1 AND LOCAT like :2 AND PARTNO LIKE :3 ORDER BY LOCAT,PARTNO,LASTNET ');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        qrFindDat.Params[1].Asstring := SFMain.Xlocat+'%';
        qrFindDat.Params[2].Asstring := Key_a+'%';
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
       end;
   36:Begin
        IF sfmain.XLevel='1' Then
        Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE INVNO LIKE :EDIT1 AND APCODE LIKE :CUS '+
                'AND  FLAG=''E'' AND DEPOSIT=''Y'' AND CANCELID IS NULL AND KANG>0 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE APCODE LIKE :EDIT1 AND APCODE LIKE :CUS '+
                'AND  FLAG=''E'' AND DEPOSIT=''Y'' AND CANCELID IS NULL AND KANG>0 ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE ((INVNO LIKE :EDIT1) or (APCODE LIKE :EDIT1)) AND APCODE LIKE :CUS '+
                'AND  FLAG=''E'' AND DEPOSIT=''Y'' AND CANCELID IS NULL AND KANG>0 ');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If OrderCombo.Itemindex <> 2 Then
          qrFindDat.Params[1].Asstring := Key_a+'%' else
          qrFindDat.Params[2].Asstring := Key_a+'%';
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
        End Else
        Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE INVNO LIKE :EDIT1 AND APCODE LIKE :CUS '+
                'AND  FLAG=''E'' AND DEPOSIT=''Y'' AND CANCELID IS NULL AND KANG>0 AND (LOCAT=:3)');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE APCODE LIKE :EDIT1 AND APCODE LIKE :CUS '+
                'AND  FLAG=''E'' AND DEPOSIT=''Y'' AND CANCELID IS NULL AND KANG>0 AND (LOCAT=:3)');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE ((INVNO LIKE :EDIT1) or (APCODE LIKE :EDIT1)) AND APCODE LIKE :CUS '+
                'AND  FLAG=''E'' AND DEPOSIT=''Y'' AND CANCELID IS NULL AND KANG>0 AND (LOCAT=:3)');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If OrderCombo.Itemindex <> 2 Then
        begin
          qrFindDat.Params[1].Asstring := Key_a+'%';
          qrFindDat.Params[2].AsString := sfmain.Xlocat;
        end else
        begin
          qrFindDat.Params[2].Asstring := Key_a+'%';
          qrFindDat.Params[3].AsString := sfmain.Xlocat;
        end;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
        End;
      end;
   37:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PCATALOG WHERE PARTNO LIKE :0 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM PCATALOG WHERE DESC1 LIKE :0 ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM PCATALOG WHERE ((PARTNO LIKE :0) or (DESC1 LIKE :0)) ');
        qrFindDat.Params[0].Asstring := SearchEd.Text+'%';
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   38:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,BARCODE FROM INVMAST WHERE BARCODE LIKE :EDIT1 ORDER BY BARCODE');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,BARCODE FROM INVMAST WHERE DESC1 LIKE :EDIT1  ORDER BY DESC1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,BARCODE FROM INVMAST WHERE PARTNO LIKE :EDIT1 ORDER BY PARTNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,BARCODE FROM INVMAST WHERE ((BARCODE LIKE :EDIT1) '+
                 'or (DESC1 LIKE :EDIT1) or (PARTNO LIKE :EDIT1)) ORDER BY BARCODE');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
    end;
  39:Begin
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
          If OrderCombo.Itemindex=6 Then
          SQL.ADD( 'SELECT A.BANKBOOKCOD,SUBSTR(B.BANKNAM,1,25) AS BANKNAM,SUBSTR(C.BANKLOCNAM,1,25) AS BANKLOCNAM, '+
                   'A.BOOKNO,SUBSTR(D.BOOKTYPNAM,1,25) AS BOOKTYPNAM,A.BOOKNAM,A.ACCMSTCOD '+
                   'FROM BANKBOOK A,SETBANK B,BANKLOCAT C,BKBOOKTYPE D '+
                   'WHERE A.BANKCOD=B.BANKCOD AND A.BANKLOCCOD=C.BANKLOCCOD AND A.BOOKTYPCOD=D.BOOKTYPCOD '+
                   'AND ((A.BANKBOOKCOD LIKE :EDIT1) or (C.BANKLOCNAM LIKE :EDIT1) or (A.BOOKNO LIKE :EDIT1) or '+
                   '(B.BANKNAM LIKE :EDIT1) or (D.BOOKTYPNAM LIKE :EDIT1) or (A.BOOKNAM LIKE :EDIT1)) ORDER BY A.BANKBOOKCOD');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   40:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.RECVNO,A.RECVDT,A.APCODE,B.CUSTNAME,A.NETTOTAL,A.CANCELID '+
                'FROM APINVOI A LEFT JOIN VIEW_CUST B ON (A.APCODE=B.CUSCOD) '+
                'WHERE A.INVNO LIKE :EDIT1 AND  A.FLAG=''E'' AND A.LOCAT LIKE :EDIT2 '+nChkRtnAmt+' ORDER BY A.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.RECVNO,A.RECVDT,A.APCODE,B.CUSTNAME,A.NETTOTAL,A.CANCELID '+
                'FROM APINVOI A LEFT JOIN VIEW_CUST B ON (A.APCODE=B.CUSCOD) '+
                'WHERE A.RECVNO LIKE :EDIT1 AND A.FLAG=''E'' AND A.LOCAT LIKE :EDIT2 '+nChkRtnAmt+' ORDER BY A.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.RECVNO,A.RECVDT,A.APCODE,B.CUSTNAME,A.NETTOTAL,A.CANCELID '+
                'FROM APINVOI A LEFT JOIN VIEW_CUST B ON (A.APCODE=B.CUSCOD) '+
                'WHERE A.APCODE LIKE :EDIT1 AND A.FLAG=''E'' AND A.LOCAT LIKE :EDIT2 '+nChkRtnAmt+' ORDER BY A.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.RECVNO,A.RECVDT,A.APCODE,B.CUSTNAME,A.NETTOTAL,A.CANCELID '+
                'FROM APINVOI A LEFT JOIN VIEW_CUST B ON (A.APCODE=B.CUSCOD) '+
                'WHERE B.CUSTNAME LIKE :EDIT1 '+
                'AND  FLAG=''E'' AND LOCAT LIKE :EDIT2 '+nChkRtnAmt+' ORDER BY A.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.RECVNO,A.RECVDT,A.APCODE,B.CUSTNAME,A.NETTOTAL,A.CANCELID '+
                'FROM APINVOI A LEFT JOIN VIEW_CUST B ON (A.APCODE=B.CUSCOD) '+
                'WHERE ((A.INVNO LIKE :EDIT1) or (A.RECVNO LIKE :EDIT1) or (A.APCODE LIKE :EDIT1) or (B.CUSTNAME LIKE :EDIT1)) '+
                'AND  A.FLAG=''E'' AND A.LOCAT LIKE :EDIT2 '+nChkRtnAmt+' ORDER BY A.RECVDT DESC '+cbViewdata.EditValue);
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If OrderCombo.Itemindex <> 4 then
          qrFindDat.Params[1].AsString := Uppercase(fSrcDlg.XSrLocat)+'%' else
          qrFindDat.Params[4].AsString := Uppercase(fSrcDlg.XSrLocat)+'%';
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      End;
   41:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE TAXNO LIKE :EDIT1 AND FLAG NOT IN (''E'',''6'')  ORDER BY TAXNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE INVNO LIKE :EDIT1 AND FLAG NOT IN (''E'',''6'') ORDER BY INVNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE APCODE LIKE :EDIT1 AND FLAG NOT IN (''E'',''6'')  ORDER BY APCODE');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE ((TAXNO LIKE :EDIT1) or (INVNO LIKE :EDIT1) or (APCODE LIKE :EDIT1)) '+
                'AND FLAG NOT IN (''E'',''6'')  ORDER BY TAXNO');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   42:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM TAXBUY WHERE TAXNO LIKE :EDIT1 AND LOCAT LIKE :EDIT2 AND FLAG=''6'' ORDER BY TAXNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM TAXBUY WHERE TAXREFNO LIKE :EDIT1 AND LOCAT LIKE :EDIT2 AND FLAG=''6'' ORDER BY TAXREFNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM TAXBUY WHERE CUSCOD LIKE :EDIT1 AND LOCAT LIKE :EDIT2 AND FLAG=''6'' ORDER BY TAXNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT * FROM TAXBUY WHERE ((TAXNO LIKE :EDIT1) or (TAXREFNO LIKE :EDIT1) or (CUSCOD LIKE :EDIT1)) AND LOCAT LIKE :EDIT2 AND FLAG=''6'' ORDER BY TAXNO');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If OrderCombo.Itemindex <> 3 then
        qrFindDat.Params[1].AsString := Uppercase(fSrcDlg.XSrLocat)+'%' else
        qrFindDat.Params[3].AsString := Uppercase(fSrcDlg.XSrLocat)+'%';
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   43:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT A.CUSCOD,S.STRNO,S.REGNO,A.SNAM,A.NAME1,A.NAME2 FROM CUSTMAST A,SVMAST S WHERE A.CUSCOD=S.CUSCOD AND A.CUSCOD LIKE :EDIT1 ORDER BY A.CUSCOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT S.STRNO,A.CUSCOD,S.REGNO,A.SNAM,A.NAME1,A.NAME2 FROM CUSTMAST A,SVMAST S WHERE A.CUSCOD=S.CUSCOD AND S.STRNO LIKE :EDIT1 ORDER BY S.STRNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT S.REGNO,A.CUSCOD,S.STRNO,A.SNAM,A.NAME1,A.NAME2 FROM CUSTMAST A,SVMAST S WHERE A.CUSCOD=S.CUSCOD AND S.REGNO LIKE :EDIT1 ORDER BY S.REGNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT S.REGNO,A.CUSCOD,S.STRNO,A.SNAM,A.NAME1,A.NAME2 FROM CUSTMAST A,SVMAST S WHERE A.CUSCOD=S.CUSCOD AND A.NAME1 LIKE :EDIT1 ORDER BY A.NAME1');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( 'SELECT S.REGNO,A.CUSCOD,S.STRNO,A.SNAM,A.NAME1,A.NAME2 FROM CUSTMAST A,SVMAST S WHERE A.CUSCOD=S.CUSCOD AND A.NAME2 LIKE :EDIT1 ORDER BY A.NAME2');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD( 'SELECT A.CUSCOD,S.STRNO,S.REGNO,A.SNAM,A.NAME1,A.NAME2 FROM CUSTMAST A,SVMAST S '+
                 'WHERE A.CUSCOD=S.CUSCOD AND ((A.CUSCOD LIKE :EDIT1) or (S.STRNO LIKE :EDIT1) '+
                 'or (S.REGNO LIKE :EDIT1) or (A.NAME1 LIKE :EDIT1) or (A.NAME2 LIKE :EDIT1)) ORDER BY A.CUSCOD');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   44:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT A.CUSCOD,S.STRNO,S.REGNO,A.SNAM,A.NAME1,A.NAME2 '+
                 'FROM CUSTMAST A,SVMAST S WHERE A.CUSCOD=S.CUSCOD AND A.CUSCOD LIKE :EDIT1 ORDER BY A.CUSCOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT S.STRNO,A.CUSCOD,S.REGNO,A.SNAM,A.NAME1,A.NAME2 '+
                 'FROM CUSTMAST A,SVMAST S WHERE A.CUSCOD=S.CUSCOD AND S.STRNO LIKE :EDIT1 ORDER BY S.STRNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT S.REGNO,A.CUSCOD,S.STRNO,A.SNAM,A.NAME1,A.NAME2 '+
                 'FROM CUSTMAST A,SVMAST S WHERE A.CUSCOD=S.CUSCOD AND S.REGNO LIKE :EDIT1 ORDER BY S.REGNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT A.CUSCOD,S.STRNO,S.REGNO,A.SNAM,A.NAME1,A.NAME2 '+
                 'FROM CUSTMAST A,SVMAST S WHERE A.CUSCOD=S.CUSCOD AND ((A.CUSCOD LIKE :EDIT1) or (S.STRNO LIKE :EDIT1) or (S.REGNO LIKE :EDIT1)) ORDER BY A.CUSCOD');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    45:begin
        Sqltxt := 'SELECT I.RECVNO,I.RECVDT,I.APCODE,I.INVNO,I.TAXNO,I.PONO,P.APNAME FROM RC_INVOI I,APMAST P WHERE I.APCODE=P.APCODE ';
        If OrderCombo.Itemindex=0 Then
        SQL .ADD(Sqltxt+'AND I.RECVNO LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') ORDER BY I.RECVNO');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD(Sqltxt+'AND I.APCODE LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') ORDER BY I.APCODE');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD(Sqltxt+'AND P.APNAME LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') ORDER BY P.APNAME');
        If OrderCombo.Itemindex=3 Then
        SQL .ADD(Sqltxt+'AND I.INVNO LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') ORDER BY I.INVNO');
        If OrderCombo.Itemindex=4 Then
        SQL .ADD(Sqltxt+'AND I.TAXNO LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') ORDER BY I.TAXNO');
        If OrderCombo.Itemindex=5 Then
        SQL .ADD(Sqltxt+'AND I.PONO LIKE :EDIT1 AND (I.FLAG=''4'' OR I.FLAG=''5'') ORDER BY I.PONO');
        If OrderCombo.Itemindex=6 Then
        SQL .ADD(Sqltxt+'AND ((I.RECVNO LIKE :EDIT1) or (I.APCODE LIKE :EDIT1) or (P.APNAME LIKE :EDIT1) '+
                        'or (I.INVNO LIKE :EDIT1) or (I.TAXNO LIKE :EDIT1) or (I.PONO LIKE :EDIT1)) AND (I.FLAG=''4'' OR I.FLAG=''5'') ORDER BY I.RECVNO');

        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    46:begin
        Sqltxt := 'SELECT * FROM INVENTOR WHERE ';
        If OrderCombo.Itemindex=0 Then
           SQL.ADD(Sqltxt+'PARTNO LIKE :0 AND LOCAT LIKE :1 ORDER BY PARTNO');
        If OrderCombo.Itemindex=1 Then
           SQL.ADD(Sqltxt+'DESC1 LIKE :0 AND LOCAT LIKE :1 ORDER BY PARTNO');
        If OrderCombo.Itemindex=2 Then
           SQL.ADD(Sqltxt+'MODEL LIKE :0 AND LOCAT LIKE :1 ORDER BY PARTNO');
        If OrderCombo.Itemindex=3 Then
           SQL.ADD(Sqltxt+'((PARTNO LIKE :0) or (DESC1 LIKE :0) or (MODEL LIKE :0)) AND LOCAT LIKE :1 ORDER BY PARTNO');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        if OrderCombo.Itemindex <> 3 then
        qrFindDat.Params[1].Asstring := XSrLocat+'%' else
        qrFindDat.Params[3].Asstring := XSrLocat+'%';

        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   47:Begin
        If OrderCombo.Itemindex=0 Then
           SQL.ADD('SELECT * FROM APINVOI WHERE INVNO LIKE :EDIT1 AND APCODE =:CUS AND  FLAG=''E'' AND '+
                   'DEPOSIT=''Y'' AND (CANCELID IS NULL OR CANCELID = '''') AND KANG>0 AND (LOCAT=:3)');
        If OrderCombo.Itemindex=1 Then
           SQL.ADD('SELECT * FROM APINVOI WHERE APCODE LIKE :EDIT1 AND APCODE =:CUS AND FLAG=''E'' AND '+
                   'DEPOSIT=''Y'' AND (CANCELID IS NULL OR CANCELID = '''') AND KANG>0 AND (LOCAT=:3)');
        If OrderCombo.Itemindex=2 Then
           SQL.ADD('SELECT * FROM APINVOI WHERE ((INVNO LIKE :EDIT1) or (APCODE LIKE :EDIT1)) AND APCODE =:CUS AND  FLAG=''E'' AND '+
                   'DEPOSIT=''Y'' AND (CANCELID IS NULL OR CANCELID = '''') AND KANG>0 AND (LOCAT=:3)');

        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        if OrderCombo.Itemindex <> 2 then
        begin
          qrFindDat.Params[1].Asstring := Key_a;
          qrFindDat.Params[2].AsString := XSrLocat;
        end else
        begin
          qrFindDat.Params[2].Asstring := Key_a;
          qrFindDat.Params[3].AsString := XSrLocat;
        end;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    48:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM TSUBJECT WHERE SUBCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM TSUBJECT WHERE SUBDESC LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT * FROM TSUBJECT WHERE ((SUBCODE LIKE :EDIT1) or (SUBDESC LIKE :EDIT1))');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        qrFindDat.Open;
      end;
    49:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.DOCNO,A.DOCDATE,A.SUBJECT,B.SUBDESC  FROM TFIRSTSV A,TSUBJECT B '+
                'WHERE A.SUBJECT=B.SUBCODE AND A.DOCNO LIKE :0 AND A.LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.DOCNO,A.DOCDATE,A.SUBJECT,B.SUBDESC  FROM TFIRSTSV A,TSUBJECT B '+
                'WHERE A.SUBJECT=B.SUBCODE AND A.SUBJECT LIKE :0 AND A.LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.DOCNO,A.DOCDATE,A.SUBJECT,B.SUBDESC  FROM TFIRSTSV A,TSUBJECT B '+
                'WHERE A.SUBJECT=B.SUBCODE AND B.SUBDESC LIKE :0 AND A.LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.DOCNO,A.DOCDATE,A.SUBJECT,B.SUBDESC  FROM TFIRSTSV A,TSUBJECT B '+
                'WHERE A.SUBJECT=B.SUBCODE AND ((A.DOCNO LIKE :0) or (A.SUBJECT LIKE :0) '+
                'or (B.SUBDESC LIKE :0)) AND A.LOCAT LIKE :1 ');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        if OrderCombo.Itemindex <> 3 then
        qrFindDat.Params[1].AsString := XSrLocat else
        qrFindDat.Params[3].AsString := XSrLocat;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;

      end;
    50:Begin
        SqlText := 'SELECT J.DOCNO,J.DOCDT,J.LOCAT,J.JOBNO,J.STRNO,J.REGNO,'+
                   'C.NAME1,C.NAME2 '+
                   'FROM THDOUTJOB J,SVMAST S,CUSTMAST C '+
                   'WHERE J.STRNO=S.STRNO AND S.CUSCOD=C.CUSCOD ';
        If OrderCombo.Itemindex=0 Then
        SQL.ADD(SqlText+'AND J.JOBNO LIKE :0 AND J.LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD(SqlText+'AND J.NAME1 LIKE :0 AND J.LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD(SqlText+'AND J.NAME2 LIKE :0 AND J.LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD(SqlText+'AND J.STRNO LIKE :0 AND J.LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD(SqlText+'AND J.REGNO LIKE :0 AND J.LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD(SqlText+'AND ((J.JOBNO LIKE :0) or (J.NAME1 LIKE :0) or (J.NAME2 LIKE :0) '+
                        'or (J.STRNO LIKE :0) or (J.REGNO LIKE :0)) AND J.LOCAT LIKE :1 ');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        if OrderCombo.Itemindex <> 5 then
        qrFindDat.Params[1].AsString := XSrLocat else
        qrFindDat.Params[5].AsString := XSrLocat;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;

      end;
    51:Begin
        SqlText := 'SELECT * FROM TWARNING ';
        If OrderCombo.Itemindex=0 Then
        SQL.ADD(SqlText+'WHERE JOBNO LIKE :0 AND LOCAT LIKE :1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD(SqlText+'WHERE STRNO LIKE :0 LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD(SqlText+'WHERE REGNO LIKE :0 LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD(SqlText+'WHERE ((JOBNO LIKE :0) or (STRNO LIKE :0) or (REGNO LIKE :0)) AND LOCAT LIKE :1');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        if OrderCombo.Itemindex <> 3 then
        qrFindDat.Params[1].AsString := XSrLocat else
        qrFindDat.Params[3].AsString := XSrLocat;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    52:begin
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
          If OrderCombo.Itemindex=6 Then
          SQL.ADD( 'SELECT A.BANKBOOKCOD,SUBSTR(B.BANKNAM,1,25) AS BANKNAM,SUBSTR(C.BANKLOCNAM,1,25) AS BANKLOCNAM, '+
                   'A.BOOKNO,SUBSTR(D.BOOKTYPNAM,1,25) AS BOOKTYPNAM,A.BOOKNAM,A.ACCMSTCOD '+
                   'FROM BANKBOOK A,SETBANK B,BANKLOCAT C,BKBOOKTYPE D '+
                   'WHERE A.BANKCOD=B.BANKCOD AND A.BANKLOCCOD=C.BANKLOCCOD AND A.BOOKTYPCOD=D.BOOKTYPCOD '+
                   'AND ((A.BANKBOOKCOD LIKE :EDIT1) or (C.BANKLOCNAM LIKE :EDIT1) or (A.BOOKNO LIKE :EDIT1) or '+
                   '(B.BANKNAM LIKE :EDIT1) or (D.BOOKTYPNAM LIKE :EDIT1) or (A.BOOKNAM LIKE :EDIT1)) ORDER BY A.BANKBOOKCOD');
          qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
          If Not qrFindDat.Prepared Then qrFindDat.Prepare;
          qrFindDat.Open;
        end;

    53:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.DOCNO,A.DOCDATE,A.SUBJECT,B.SUBDESC  FROM TAFTERSV A,TSUBJECT B '+
                'WHERE A.SUBJECT=B.SUBCODE AND A.DOCNO LIKE :0 AND A.LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.DOCNO,A.DOCDATE,A.SUBJECT,B.SUBDESC  FROM TAFTERSV A,TSUBJECT B '+
                'WHERE A.SUBJECT=B.SUBCODE AND A.SUBJECT LIKE :0 AND A.LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.DOCNO,A.DOCDATE,A.SUBJECT,B.SUBDESC  FROM TAFTERSV A,TSUBJECT B '+
                'WHERE A.SUBJECT=B.SUBCODE AND B.SUBDESC LIKE :0 AND A.LOCAT LIKE :1 ');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.DOCNO,A.DOCDATE,A.SUBJECT,B.SUBDESC  FROM TAFTERSV A,TSUBJECT B '+
                'WHERE A.SUBJECT=B.SUBCODE AND ((A.DOCNO LIKE :0) or (A.SUBJECT LIKE :0) or (B.SUBDESC LIKE :0)) AND A.LOCAT LIKE :1 ');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        if OrderCombo.Itemindex <> 3 then
        qrFindDat.Params[1].AsString := XSrLocat else
        qrFindDat.Params[3].AsString := XSrLocat;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
       end;

  54:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM SETPROMST WHERE PROCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM SETPROMST WHERE PRONAME LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM SETPROMST WHERE ((PROCODE LIKE :EDIT1) or (PRONAME LIKE :EDIT1))');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;

    55:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.QNO,A.QDT,B.JOBNO,A.FLAG  FROM QUEUE A LEFT JOIN VIEW_ALLJOB B ON (A.QNO=B.QNO) '+
                'WHERE A.LOCAT LIKE :0 AND A.FLAG LIKE :1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.QDT DESC,A.QNO ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.QNO,A.QDT,B.JOBNO,A.FLAG  FROM QUEUE A LEFT JOIN VIEW_ALLJOB B ON (A.QNO=B.QNO) '+
                'WHERE A.QNO LIKE :0 AND A.FLAG LIKE :1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.QDT DESC,A.QNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.QNO,A.QDT,B.JOBNO,A.FLAG  FROM QUEUE A LEFT JOIN VIEW_ALLJOB B ON (A.QNO=B.QNO) '+
                'WHERE B.JOBNO LIKE :0 AND A.FLAG LIKE :1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.QDT DESC,A.QNO');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.QNO,A.QDT,B.JOBNO,A.FLAG  FROM QUEUE A LEFT JOIN VIEW_ALLJOB B ON (A.QNO=B.QNO) '+
                'WHERE ((A.LOCAT LIKE :0) or (A.QNO LIKE :0) or (B.JOBNO LIKE :0)) AND A.FLAG LIKE :1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.QDT DESC,A.QNO ');
        qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
        if OrderCombo.Itemindex <> 3 then
        begin
          qrFindDat.Params[1].AsString := Flag_a+'%';
          qrFindDat.Params[2].AsString := Uppercase(XSrLocat)+'%';
        end else
        begin
          qrFindDat.Params[3].AsString := Flag_a+'%';
          qrFindDat.Params[4].AsString := Uppercase(XSrLocat)+'%';
        end;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
       end;

   56:Begin
        Sqltxt :='SELECT LOCAT,PARTNO,PARTDESC,PKNO,PKDATE,JOBNO,QTY,GROUP1 FROM PARTTRAN ';
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( Sqltxt+'WHERE PARTNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( Sqltxt+'WHERE PARTDESC LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( Sqltxt+'WHERE JOBNO LIKE :EDIT1');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( Sqltxt+'WHERE PKNO LIKE :EDIT1');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( Sqltxt+'WHERE ((PKNO LIKE :EDIT1) or (PARTDESC LIKE :EDIT1) or (JOBNO LIKE :EDIT1) or (PARTNO LIKE :EDIT1))');
        qrFindDat.Params[0].Asstring := Key_a+'%';
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
  End;
  SFMain.Do_Show_DisplayFormat_Floating(qrFindDat);
end;
end;

procedure TfSrcDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfSrcDlg.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TfSrcDlg.CalcMax;
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

procedure TfSrcDlg.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;
end;

procedure TfSrcDLG.SearchEdPropertiesChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
  SearchButtonClick(Sender);
end;

procedure TfSrcDLG.OrderComboPropertiesChange(Sender: TObject);
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

procedure TfSrcDLG.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       SearchButtonClick(Sender);
       dbgrid1.SetFocus;
   End;
end;

procedure TfSrcDLG.DBGrid1DBTableView1CustomDrawIndicatorCell(
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

procedure TfSrcDLG.DBGrid1DBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfSrcDLG.DBGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure TfSrcDLG.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = true then
  DBGrid1DBTableView1.DataController.Groups.FullExpand else
  DBGrid1DBTableView1.DataController.Groups.FullCollapse;
end;

procedure TfSrcDLG.DBGrid1DBTableView1DataControllerGroupingChanged(
  Sender: TObject);
begin
  cxCheckBox1.Checked := False;
  cxCheckBox1.Enabled := ((qrFindDat.RecordCount>0) AND
                          (DBGrid1DBTableView1.GroupedColumnCount>0));
end;

end.
