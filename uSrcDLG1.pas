unit uSrcDLG1;
                          
interface                                                 

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, cxGraphics, Menus,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxGridCardView, cxGridDBCardView, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox,
  AdvShapeButton, cxTextEdit, cxButtons, cxContainer, cxMaskEdit, cxDropDownEdit,
  AdvGlowButton, ComCtrls, cxLookAndFeels, dxDateRanges, dxBarBuiltInMenu,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator,
  cxGridCustomLayoutView, cxImageComboBox;

type
  TfSrcDLG1 = class(TForm)
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
    DBGrid1: TcxGrid;
    DBGrid1DBTableView1: TcxGridDBTableView;
    DBGrid1DBCardView1: TcxGridDBCardView;
    cxGridLevel1: TcxGridLevel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridLevel2: TcxGridLevel;
    cbViewdata: TcxImageComboBox;
    Label1: TLabel;
    qrFindDat: TFDQuery;
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure DBGrid1DBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure DBGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DataControllerGroupingChanged(
      Sender: TObject);
    procedure cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    XSrLocat,XClaim,XModel: string;
    NewKeyno: string;
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
    function ShowModalSvmst: Integer;
    function ShowModalModel: Integer;
    function ShowModalSVTYPE: Integer;
    function ShowModalSvcust: Integer;
    function ShowModalGrpmst: Integer;
    function ShowModalSvPart: Integer;
    function ShowModalBak: Integer;
    function ShowModalTabsv: Integer;
    function ShowModalFOrdsv: Integer;
    function ShowModalRESULT: Integer;
    function ShowModalTAXNO: Integer;
    function ShowModalJOBFNH: Integer;
    function ShowModalCRDNO: Integer;
    function ShowModalTAXJOB: Integer;
    function ShowModalOthinv: Integer;
    function ShowModalFrcod: Integer;
    function ShowModalCampn: Integer;
    function ShowModalARSERV: Integer;
    function ShowModalQuata: Integer;
    function ShowModalARGROUP: Integer;
    function ShowModalBookSV: Integer;
    function ShowModalInsur: Integer;
    function ShowModalOTHTAX: Integer;
    function ShowModalStat: Integer;
    function ShowModalClaimiv: Integer;
    function ShowModalSetgroup: Integer;
    function ShowModalClaimtax: Integer;
    function ShowModalGRPCKLIST: Integer;
    function ShowModalCKLIST: Integer;
    function ShowModalSetColor: Integer;
    function ShowModalTabsvMst: Integer;
    function ShowModalTypeClaim: Integer;
  end;

var
  fSrcDlg1: TfSrcDlg1;

  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;
  SelectFld : String;


implementation

uses USoftFirm, Dmsec;


{$R *.DFM}

function TfSrcDlg1.ShowModalCust: Integer;
begin
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add('Company');
  OrderCombo.Properties.Items.Add('CustNo');
  OrderCombo.ItemIndex := 0;
  OrderComboChange(nil);
  Caption := 'Select a Customer';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalParts: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 0;
  Title[0]  := 'รหัสอะไหล่';
  Title[1]  := 'ชื่ออะไหล่';
  Title[2]  := 'กลุ่ม';
  Title[3]  := 'ราคาขาย';

  Fldgrd[0] := 'Partno';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'Group1';
  Fldgrd[3] := 'Price1';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา Part';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalLocat: Integer;
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
  Caption := 'ค้นหา สาขา';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalGroup: Integer;
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
  Caption := 'ค้นหา กลุ่มสินค้า';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalType: Integer;
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
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ยี่ห้อสินค้า';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalAP: Integer;
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
  Caption := 'ค้นหา รหัสเจ้าหนี้';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalAR: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 5;
  Title[0]  := 'ชื่อลูกค้า';
  Title[1]  := 'รหัสลูกค้า';
  Title[2]  := 'นามสกุล';

  Fldgrd[0] := 'NAME1';
  Fldgrd[1] := 'CUSCOD';
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
  OrderComboChange(nil);
  Caption := 'ค้นหา ลูกค้า';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalPAYTYP: Integer;
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
  Caption := 'ค้นหา ประเภทการชำระ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalOffic: Integer;
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
  Caption := 'ค้นหา รหัสพนักงาน';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalSvmst: Integer;
begin
  OrderCombo.Tag := 8;
  Title[0]  := 'เลขทะเบียน';
  Title[1]  := 'เลขถัง/แคสซี';
  Title[2]  := 'หมายเลขเครื่อง';
  Title[3]  := 'รหัสลูกค้า';
  Title[4]  := 'ชื่อ';
  Title[5]  := 'นามสกุล';
  Title[6]  := 'สถานะ';

  Fldgrd[0] := 'REGNO';
  Fldgrd[1] := 'STRNO';
  Fldgrd[2] := 'ENGNO';
  Fldgrd[3] := 'CUSCOD';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'STATUS';


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
  Caption := 'ค้นหา แฟ้มประวัติรถ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalModel: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 9;
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
  OrderComboChange(nil);
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalSVTYPE: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 10;
  Title[0]  := 'รหัสซ่อมทำ';
  Title[1]  := 'ชื่อประเภทการซ่อม';

  Fldgrd[0] := 'TYPCOD';
  Fldgrd[1] := 'TYPNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ประเภทซ่อมทำ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalSvCUST: Integer;
begin
  OrderCombo.Tag := 11;
  Title[0]  := 'เลขถัง/แคสซี';
  Title[1]  := 'หมายเลขเครื่อง';
  Title[2]  := 'เลขทะเบียน';
  Title[3]  := 'รหัสลูกค้า';
  Title[4]  := 'ชื่อ';
  Title[5]  := 'นามสกุล';

  Fldgrd[0] := 'STRNO';
  Fldgrd[1] := 'ENGNO';
  Fldgrd[2] := 'REGNO';
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
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา แฟ้มประวัติรถ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalGrpmst: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 12;
  Title[0]  := 'รหัสกลุ่มงาน';
  Title[1]  := 'รหัสรุ่น';
  Title[2]  := 'รายละเอียด';

  Fldgrd[0] := 'GCODE';
  Fldgrd[1] := 'MDLCOD';
  Fldgrd[2] := 'GDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา กลุ่มงาน(Work Type)';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalSvPart: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 13;
  Title[0]  := 'รหัสสินค้า';
  Title[1]  := 'ชื่อสินค้า';
  Title[2]  := 'สาขา';
  Title[3]  := 'ราคาขาย';

  Fldgrd[0] := 'CODE';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'UPRICE';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา Part';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalBak: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 14;
  Title[0]  := 'รหัสธนาคาร';
  Title[1]  := 'ชื่อธนาคาร';

  Fldgrd[0] := 'BKCODE';
  Fldgrd[1] := 'BKNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ธนาคาร';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalTabsv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 15;
  Title[0]  := 'รหัสบริการ';
  Title[1]  := 'รุ่นรถ';
  Title[2]  := 'รายละเอียด';
  Title[3]  := 'ราคา';
  Title[4]  := 'ชั่วโมง';
  Title[5]  := 'นาที';
  Title[6]  := 'Frt.';
  Title[7]  := 'สถานะ';

  Fldgrd[0] := 'SVCODE';
  Fldgrd[1] := 'MDLCOD';
  Fldgrd[2] := 'DESCP';
  Fldgrd[3] := 'SVPRIC';
  Fldgrd[4] := 'HOUR';
  Fldgrd[5] := 'MINUTE';
  Fldgrd[6] := 'FRT';
  Fldgrd[7] := 'Status';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ตารางค่าบริการ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalFOrdsv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 16;
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
  OrderComboChange(nil);
  Caption := 'ค้นหาใบขอเบิก';
  Result  := ShowModal;
end;

function TfSrcDlg1.ShowModalRESULT: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 17;
  Title[0]  := 'รหัสเหตุผล';
  Title[1]  := 'รายละเอียด';

  Fldgrd[0] := 'RSCODE';
  Fldgrd[1] := 'RSDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา รหัสเหตุผล';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalTAXNO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 18;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'เลขที่แจ้งซ่อม';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อลูกค้า';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'วันที่';
  Title[6]  := 'จำนวนเงิน';
  Title[7]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'TAXDATE';
  Fldgrd[6] := 'TOTTAX';
  Fldgrd[7] := 'CANCELID';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ใบกำกับภาษี';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalJOBFNH: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 19;
  Title[0]  := 'เลขที่แจ้งซ่อม';
  Title[1]  := 'เลขทะเบียน';
  Title[2]  := 'ตัวถัง';
  Title[3]  := 'รหัสลูกค้า';
  Title[4]  := 'ชื่อลูกค้า';
  Title[5]  := 'นามสกุล';
  Title[6]  := 'ใบกำกับ';
  Title[7]  := 'วันที่แจ้งซ่อม';
  Title[8]  := 'ค่าอะไหล่';
  Title[9]  := 'ค่าแรง';


  Fldgrd[0] := 'JOBNO';
  Fldgrd[1] := 'REGNO';
  Fldgrd[2] := 'STRNO';
  Fldgrd[3] := 'CUSCOD';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'PTAXNO';
  Fldgrd[7] := 'RECVDATE';
  Fldgrd[8] := 'PARTNET';
  Fldgrd[9] := 'TSV_NET';

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
  Caption := 'ค้นหา Job ซ่อมเสร็จ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalCRDNO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 20;
  Title[0]  := 'เลขที่ใบลดหนี้';
  Title[1]  := 'เลขแจ้งซ่อม';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อลูกค้า';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'วันที่';
  Title[6]  := 'จำนวนเงิน';
  Title[7]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'TAXDATE';
  Fldgrd[6] := 'TOTTAX';
  Fldgrd[7] := 'CANCELID';

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
  Caption := 'ค้นหา ใบลดหนี้';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalTAXJOB: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 21;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'เลขที่แจ้งซ่อม';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อลูกค้า';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'ยอดเงิน';
  Title[6]  := 'วันที่';
  Title[7]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'TOTTAX';
  Fldgrd[6] := 'TAXDATE';
  Fldgrd[7] := 'CANCELID';
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
  Caption := 'ค้นหา ใบกำกับภาษี ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalOthinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 22;
  Title[0]  := 'เลขที่ส่งของ';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อลูกค้า';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'ใบกำกับ';
  Title[6]  := 'สาขา';
  Title[7]  := 'เลขที่แจ้งซ่อม';
  Title[8]  := 'ผู้ยกเลิก';
  Title[9]  := 'ยอดเงิน';


  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'INVDATE';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'TAXNO';
  Fldgrd[6] := 'LOCAT';
  Fldgrd[7] := 'JOBNO';
  Fldgrd[8] := 'CANCELID';
  Fldgrd[9] := 'NETPRC';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalFrcod: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 23;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'ชื่อกลุ่ม';
  Title[2]  := 'อัตราบริการ/ชม.';
  Title[3]  := 'อัตราเคลม/ชม.';

  Fldgrd[0] := 'FRCODE';
  Fldgrd[1] := 'FRDESC';
  Fldgrd[2] := 'FRRATE1';
  Fldgrd[3] := 'FRRATE2';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา อัตราค่าบริการ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalCampn: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 24;
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
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา แคมเปญ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalARSERV: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 25;
  Title[0]  := 'เลขที่บิล';
  Title[1]  := 'เลขที่แจ้งซ่อม';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อลูกค้า';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'วันที่';
  Title[6]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'DEVNO';
  Fldgrd[1] := 'JOBNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'DEVDATE';
  Fldgrd[6] := 'CANCELID';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ใบส่งสินค้า';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalQuata: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 26;
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
  OrderComboChange(nil);
  Caption := 'ค้นหา ใบประเมินราคา';
  Result := ShowModal;
end;
function TfSrcDlg1.ShowModalArgroup: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 27;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'ชื่อกลุ่ม';
  Title[2]  := '%ส่วนลด';

  Fldgrd[0] := 'ARCODE';
  Fldgrd[1] := 'ARDESC';
  Fldgrd[2] := 'ARDISC';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา รหัสกลุ่ม';
  Result := ShowModal;
end;
function TfSrcDlg1.ShowModalBookSV: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 28;
  Title[0]  := 'เลขเอกสาร';
  Title[1]  := 'วันที่';
  Title[2]  := 'สาขา';
  Title[3]  := 'ชื่อลูกค้า';
  Title[4]  := 'นามสกุล';

  Fldgrd[0] := 'BOOKNO';
  Fldgrd[1] := 'BKDATE';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ประเภทการชำระ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalInsur: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 29;
  Title[0]  := 'รหัสประหัส';
  Title[1]  := 'ชื่อบริษัท';

  Fldgrd[0] := 'ISCODE';
  Fldgrd[1] := 'ISNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา รหัสประกัน';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalOthtax: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 30;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'วันที่';
  Title[2]  := 'ชื่อ';
  Title[3]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDATE';
  Fldgrd[2] := 'NAME1';
  Fldgrd[3] := 'CANCELID';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);

  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ใบกำกับ Inv.เสริมแบบรวม';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalStat: Integer;
begin
  OrderCombo.Tag := 31;
  Title[0]  := 'รหัส Status';
  Title[1]  := 'อธิบายความหมาย';

  Fldgrd[0] := 'STATCOD';
  Fldgrd[1] := 'STATDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา รหัส Status';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalClaimiv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 32;
  Title[0]  := 'เลขรายงาน';
  Title[1]  := 'วันที่รายงาน';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อลูกค้า';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'สาขา';
  Title[6]  := 'เลขที่แจ้งซ่อม';
  Title[7]  := 'เลขตัวถัง';
  Title[8]  := 'ยอดเงิน';


  Fldgrd[0] := 'REPNO';
  Fldgrd[1] := 'REPDT';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'LOCAT';
  Fldgrd[6] := 'JOBNO';
  Fldgrd[7] := 'STRNO';
  Fldgrd[8] := 'TOTPRC';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalSetgroup: Integer;
begin
  OrderCombo.Tag := 33;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'รายละเอียด';

  Fldgrd[0]  := 'GCODE';
  Fldgrd[1]  := 'GDESC';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา กลุ่มรถ';
  Result := ShowModal;
end;
function TfSrcDlg1.ShowModalClaimtax: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 34;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อ';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'ผู้ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDATE';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'CANCELID';

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
  OrderComboChange(nil);
  Caption := 'ค้นหา ใบกำกับ เคลมสินค้า';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalGRPCKLIST: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 35;
  Title[0]  := 'รหัสกลุ่ม';
  Title[1]  := 'คำอธิบาย';

  Fldgrd[0] := 'GCODE';
  Fldgrd[1] := 'DESCP';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ประเภทซ่อมทำ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalCKLIST: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 36;
  Title[0]  := 'รหัสงาน';
  Title[1]  := 'รายละเอียด';

  Fldgrd[0] := 'SVCODE';
  Fldgrd[1] := 'DESCP';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา รหัสงาน';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalSetColor: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 37;
  Title[0]  := 'รหัสสี';
  Title[1]  := 'รายละเอียด';

  Fldgrd[0] := 'COLORCOD';
  Fldgrd[1] := 'COLORDES';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา สีสินค้า';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalTabsvMst: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 38;
  Title[0]  := 'รหัสบริการ';
  Title[1]  := 'รุ่นรถ';
  Title[2]  := 'รายละเอียด';
  Title[3]  := 'ราคา';
  Title[4]  := 'ชั่วโมง';
  Title[5]  := 'นาที';
  Title[6]  := 'Frt.';
  Title[7]  := 'สถานะ';

  Fldgrd[0] := 'SVCODE';
  Fldgrd[1] := 'MDLCOD';
  Fldgrd[2] := 'DESCP';
  Fldgrd[3] := 'SVPRIC';
  Fldgrd[4] := 'HOUR';
  Fldgrd[5] := 'MINUTE';
  Fldgrd[6] := 'FRT';
  Fldgrd[7] := 'Status';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ตารางค่าบริการ';
  Result := ShowModal;
end;

function TfSrcDlg1.ShowModalTypeClaim: Integer;
begin
  OrderCombo.Tag := 39;
  Title[0]  := 'รหัสเคลม';
  Title[1]  := 'รายละเอียด';
  Title[2]  := 'สาขา';
  Title[3]  := 'สถานะ';

  Fldgrd[0]  := 'CLAIMCODE';
  Fldgrd[1]  := 'CLAIMDESC';
  Fldgrd[2]  := 'LOCAT';
  Fldgrd[3]  := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหา ประเภทเคลมรถ';
  Result := ShowModal;
end;

function TfSrcDlg1.GetKeyno: string;
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
    8 :Result := qrFindDat.Fieldbyname('STRNO').Asstring;
    9 :Result := qrFindDat.Fieldbyname('MODELCOD').Asstring;
   10 :Result := qrFindDat.Fieldbyname('TYPCOD').Asstring;
   11 :Result := qrFindDat.Fieldbyname('STRNO').Asstring;
   12 :Result := qrFindDat.Fieldbyname('GCODE').Asstring;
   13 :Result := qrFindDat.Fieldbyname('CODE').Asstring;
   14 :Result := qrFindDat.Fieldbyname('BKCODE').Asstring;
   15 :Result := qrFindDat.Fieldbyname('SVCODE').Asstring;
   16 :Result := qrFindDat.Fieldbyname('ORDNO').Asstring;
   17 :Result := qrFindDat.Fieldbyname('RSCODE').Asstring;
   18 :Result := qrFindDat.Fieldbyname('TAXNO').Asstring;
   19 :Result := qrFindDat.Fieldbyname('JOBNO').Asstring;
   20 :Result := qrFindDat.Fieldbyname('TAXNO').Asstring;
   21 :Result := qrFindDat.Fieldbyname('TAXNO').Asstring;
   22 :Result := qrFindDat.Fieldbyname('INVNO').Asstring;
   23 :Result := qrFindDat.Fieldbyname('FRCODE').Asstring;
   24:Result := qrFindDat.Fieldbyname('Campno').Asstring;
   25 :Result := qrFindDat.Fieldbyname('DEVNO').Asstring;
   26 :Result := qrFindDat.Fieldbyname('QUOTNO').Asstring;
   27:Result := qrFindDat.Fieldbyname('ARCODE').Asstring;
   28:Result := qrFindDat.Fieldbyname('BOOKNO').Asstring;
   29:Result := qrFindDat.Fieldbyname('ISCODE').Asstring;
   30:Result := qrFindDat.Fieldbyname('TAXNO').Asstring;
   31:Result := qrFindDat.Fieldbyname('STATCOD').Asstring;
   32 :Result:= qrFindDat.Fieldbyname('REPNO').Asstring;
   33:Result := qrFindDat.Fieldbyname('GCODE').Asstring;
   34:Result := qrFindDat.Fieldbyname('TAXNO').Asstring;
   35:Result := qrFindDat.Fieldbyname('GCODE').Asstring;
   36:Result := qrFindDat.Fieldbyname('SVCODE').Asstring;
   37:Result := qrFindDat.Fieldbyname('COLORCOD').Asstring;
   38:Result := qrFindDat.Fieldbyname('SVCODE').Asstring;
   39:Result := qrFindDat.Fieldbyname('CLAIMCODE').Asstring;
  end;
end;

procedure TfSrcDlg1.SearchButtonClick(Sender: TObject);
Var SqlTxt:String;
begin
  With qrFindDat Do
  Begin
    close;
    Sql.Clear;
    Case OrderCombo.Tag Of
    0:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVENTOR WHERE PARTNO LIKE :EDIT1 AND LOCAT LIKE :EDIT2 ORDER BY PARTNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVENTOR WHERE DESC1 LIKE :EDIT1 AND LOCAT LIKE :EDIT2 ORDER BY DESC1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT  PARTNO,DESC1,GROUP1,PRICE1,MODEL,CODE_T FROM INVENTOR WHERE MODEL LIKE :EDIT1 AND LOCAT LIKE :EDIT2 ORDER BY DESC1');
      end;

    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM INVLOCAT WHERE LOCATCD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM INVLOCAT WHERE LOCATNM LIKE :EDIT1');
      end;
    2:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE GROUPCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM GROUPMST WHERE GROUPNAM LIKE :EDIT1');
      end;
    3:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SETTYPE WHERE TYPECOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SETTYPE WHERE TYPEDES LIKE :EDIT1');
      end;
    4:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM APMAST WHERE APCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM APMAST WHERE APNAME LIKE :EDIT1');
      end;
    5:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT CUSCOD,NAME1,NAME2 FROM CUSTMAST WHERE NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT CUSCOD,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT CUSCOD,NAME1,NAME2 FROM CUSTMAST WHERE NAME2 LIKE :EDIT1 ORDER BY NAME2');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT CUSCOD,NAME1,NAME2 FROM CUSTMAST '+
                 'WHERE ((NAME2 LIKE :EDIT1) or (NAME1 LIKE :EDIT1) or (CUSCOD LIKE :EDIT1)) ORDER BY NAME2');
      end;
    6:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE PAYCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM PAYTYP WHERE PAYDESC LIKE :EDIT1');
      end;
    7:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE CODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM OFFICER WHERE NAME LIKE :EDIT1');
      end;

    8:Begin
        If OrderCombo.ItemIndex = 0 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE REGNO LIKE :EDIT1 ORDER BY REGNO');
        If OrderCombo.ItemIndex = 1 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE STRNO LIKE :EDIT1 ORDER BY STRNO');
        If OrderCombo.ItemIndex = 2 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE ENGNO LIKE :EDIT1 ORDER BY ENGNO');
        If OrderCombo.ItemIndex = 3 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.ItemIndex = 4 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.ItemIndex = 5 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST WHERE NAME2 LIKE :EDIT1 ORDER BY NAME2');
        If OrderCombo.ItemIndex = 6 Then
           SQL.ADD('SELECT STRNO,ENGNO,REGNO,CUSCOD,NAME1,NAME2,STATUS FROM VIEW_SVMAST '+
                   'WHERE ((REGNO LIKE :EDIT1) or (STRNO LIKE :EDIT1) or (ENGNO LIKE :EDIT1) '+
                   'or (CUSCOD LIKE :EDIT1) or (NAME1 LIKE :EDIT1) or (NAME2 LIKE :EDIT1)) ORDER BY STRNO');
      end;
    9:begin
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
    10:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SVTYPE WHERE TYPCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SVTYPE WHERE TYPNAME LIKE :EDIT1');
      end;

    11:Begin
        SqlTxt :='SELECT A.STRNO,A.ENGNO,A.REGNO,A.CUSCOD,B.NAME1,B.NAME2 FROM SVMAST A,CUSTMAST B WHERE (A.CUSCOD=B.CUSCOD) AND ';
        If OrderCombo.ItemIndex = 0 Then
           SQL.ADD(SqlTxt+' A.STRNO LIKE :EDIT1 ORDER BY A.STRNO');
        If OrderCombo.ItemIndex = 1 Then
           SQL.ADD(SqlTxt+' A.ENGNO LIKE :EDIT1 ORDER BY A.ENGNO');
        If OrderCombo.ItemIndex = 2 Then
           SQL.ADD(SqlTxt+' A.REGNO LIKE :EDIT1 ORDER BY A.REGNO');
        If OrderCombo.ItemIndex = 3 Then
           SQL.ADD(SqlTxt+' A.CUSCOD LIKE :EDIT1 ORDER BY A.CUSCOD');
        If OrderCombo.ItemIndex = 4 Then
           SQL.ADD(SqlTxt+' B.NAME1 LIKE :EDIT1 ORDER BY B.NAME1');
        If OrderCombo.ItemIndex = 5 Then
           SQL.ADD(SqlTxt+' B.NAME2 LIKE :EDIT1 ORDER BY B.NAME2');
        If OrderCombo.ItemIndex = 6 Then
           SQL.ADD(SqlTxt+' ((B.NAME2 LIKE :EDIT1) or ( B.NAME1 LIKE :EDIT1) or (A.CUSCOD LIKE :EDIT1) '+
                          'or (A.REGNO LIKE :EDIT1) or (A.ENGNO LIKE :EDIT1) or (A.STRNO LIKE :EDIT1)) ORDER BY A.STRNO');

      end;
    12:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM GRPMST WHERE GCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM GRPMST WHERE MDLCOD LIKE :EDIT1');
      end;
    13:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SVSTOCK WHERE CODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SVSTOCK WHERE DESC1 LIKE :EDIT1');
      end;
    14:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM BKMAST WHERE BKCODE LIKE :EDIT1');
      end;
    15:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM TBLABOR WHERE SVCODE LIKE :EDIT1 AND MDLCOD LIKE :EDIT2 ORDER BY SVCODE ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM TBLABOR WHERE DESCP LIKE :EDIT1 AND MDLCOD  LIKE :EDIT2 ORDER BY MDLCOD');
      end;
    16:begin
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
      end;
    17:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM RE_SULT WHERE RSCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM RE_SULT WHERE RSDESC LIKE :EDIT1');
      end;
    18:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT B.LOCAT,B.TAXNO,B.TAXDATE,B.CUSCOD,C.SNAM,C.NAME1,C.NAME2,B.JOBNO,B.TOTTAX,B.CANCELID,B.CANDAT '+
                 'FROM TAXSAL B,CUSTMAST C WHERE B.CUSCOD=C.CUSCOD AND B.FRSV=''S'' AND B.TAXNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT B.LOCAT,B.TAXNO,B.TAXDATE,B.CUSCOD,C.SNAM,C.NAME1,C.NAME2,B.JOBNO,B.TOTTAX,B.CANCELID,B.CANDAT '+
                 'FROM TAXSAL B,CUSTMAST C WHERE B.CUSCOD=C.CUSCOD AND B.FRSV=''S'' AND B.JOBNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT B.LOCAT,B.TAXNO,B.TAXDATE,B.CUSCOD,C.SNAM,C.NAME1,C.NAME2,B.JOBNO,B.TOTTAX,B.CANCELID,B.CANDAT '+
                 'FROM TAXSAL B,CUSTMAST C WHERE B.CUSCOD=C.CUSCOD AND B.FRSV=''S'' AND B.CUSCOD LIKE :EDIT1 ');
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT B.LOCAT,B.TAXNO,B.TAXDATE,B.CUSCOD,C.SNAM,C.NAME1,C.NAME2,B.JOBNO,B.TOTTAX,B.CANCELID,B.CANDAT '+
                 'FROM TAXSAL B,CUSTMAST C WHERE B.CUSCOD=C.CUSCOD AND B.FRSV=''S'' AND C.NAME1 LIKE :EDIT1 ');
        If OrderCombo.Itemindex=4 Then
        SQL .ADD('SELECT B.LOCAT,B.TAXNO,B.TAXDATE,B.CUSCOD,C.SNAM,C.NAME1,C.NAME2,B.JOBNO,B.TOTTAX,B.CANCELID,B.CANDAT '+
                 'FROM TAXSAL B,CUSTMAST C WHERE B.CUSCOD=C.CUSCOD AND B.FRSV=''S'' AND C.NAME2 LIKE :EDIT1 ');

      end;
    19:begin
        Sqltxt := 'SELECT A.JOBNO,A.PTAXNO,A.STRNO,A.CUSCOD,C.NAME1,C.NAME2,A.RECVDATE,A.PARTNET,A.TSV_NET,A.OILNET,B.REGNO '+
                  'FROM JOBORDER A,SVMAST B,CUSTMAST C '+
                  'WHERE A.STRNO=B.STRNO AND A.CUSCOD=C.CUSCOD AND A.STATUS=''F'' AND (A.PARTNET+A.TSV_NET+A.OILNET)>0 ';
        If OrderCombo.Itemindex=0 Then
           SQL .ADD(SQLTXT+' AND A.JOBNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.RECVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
           SQL .ADD(SQLTXT+' AND B.REGNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.RECVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
           SQL .ADD(SQLTXT+' AND A.STRNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.RECVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
           SQL .ADD(SQLTXT+' AND A.CUSCOD LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.RECVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
           SQL .ADD(SQLTXT+' AND C.NAME1 LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.RECVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
           SQL .ADD(SQLTXT+' AND C.NAME2 LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.RECVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
           SQL .ADD(SQLTXT+' AND A.PTAXNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.RECVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=7 Then
           SQL .ADD(SQLTXT+' AND ((A.PTAXNO LIKE :EDIT1) or (A.JOBNO LIKE :EDIT1) or (B.REGNO LIKE :EDIT1) or (A.STRNO LIKE :EDIT1) '+
                           'or (A.CUSCOD LIKE :EDIT1) or (C.NAME1 LIKE :EDIT1) or (C.NAME2 LIKE :EDIT1)) AND A.LOCAT LIKE :EDIT2 '+
                           'ORDER BY A.RECVDATE DESC '+cbViewdata.EditValue);
      end;
    20:begin
        Sqltxt := 'SELECT B.LOCAT,B.TAXNO,B.TAXDATE,B.CUSCOD,C.SNAM,C.NAME1,C.NAME2,B.JOBNO,B.TOTTAX,B.CANCELID,B.CANDAT '+
                  'FROM TAXSAL B,CUSTMAST C WHERE B.CUSCOD=C.CUSCOD AND B.FLAG=''2'' AND ';
        If OrderCombo.Itemindex=0 Then
        SQL .ADD(SQLTXT+' B.TAXNO LIKE :EDIT1 ORDER BY B.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL .ADD(SQLTXT+' B.JOBNO LIKE :EDIT1 ORDER BY B.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL .ADD(SQLTXT+' B.CUSCOD LIKE :EDIT1 ORDER BY B.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL .ADD(SQLTXT+' C.NAME1 LIKE :EDIT1 ORDER BY B.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL .ADD(SQLTXT+' C.NAME2 LIKE :EDIT1 ORDER BY B.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL .ADD(SQLTXT+' ((C.NAME2 LIKE :EDIT1) or (B.TAXNO LIKE :EDIT1) or (B.JOBNO LIKE :EDIT1) '+
                        'or (B.CUSCOD LIKE :EDIT1) or (C.NAME1 LIKE :EDIT1)) ORDER BY B.TAXDATE DESC '+cbViewdata.EditValue);
      end;
    21:begin
        Sqltxt := 'SELECT T.TAXNO,T.TAXDATE,T.JOBNO,S.CUSCOD,S.NAME1,S.NAME2,T.TOTTAX,T.CANCELID FROM TAXSAL T,CUSTMAST S '+
                  'WHERE T.CUSCOD=S.CUSCOD AND NOT(T.JOBNO IS NULL) AND T.JOBNO<>'''' AND (T.SYSTM IS NULL OR T.SYSTM='''') AND ';
        If OrderCombo.Itemindex=0 Then
           SQL .ADD(Sqltxt+'T.TAXNO LIKE :0 AND T.LOCAT LIKE :1 ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
           SQL .ADD(Sqltxt+'T.JOBNO LIKE :0 AND T.LOCAT LIKE :1 ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
           SQL .ADD(Sqltxt+'T.CUSCOD LIKE :0 AND T.LOCAT LIKE :1 ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
           SQL .ADD(Sqltxt+'S.NAME1 LIKE :0 AND T.LOCAT LIKE :1 ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
           SQL .ADD(Sqltxt+'S.NAME2 LIKE :0 AND T.LOCAT LIKE :1 ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
           SQL .ADD(Sqltxt+'((S.NAME2 LIKE :0) or (T.TAXNO LIKE :0 ) or (T.JOBNO LIKE :0) '+
                           'or (T.CUSCOD LIKE :0) or (S.NAME1 LIKE :0)) AND T.LOCAT LIKE :1 ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
      end;
    22:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT I.INVNO,I.INVDATE,I.CUSCOD,C.NAME1,C.NAME2,I.TAXNO,I.LOCAT,I.JOBNO,'+
                 'I.FLAG,I.CANCELID,I.CANDAT,I.NETPRC  FROM OTHINVOI I,CUSTMAST C '+
                 'WHERE I.CUSCOD=C.CUSCOD AND I.INVNO LIKE :0 AND I.LOCAT LIKE :1 ORDER BY I.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT I.INVNO,I.INVDATE,I.CUSCOD,C.NAME1,C.NAME2,I.TAXNO,I.LOCAT,I.JOBNO,'+
                 'I.FLAG,I.CANCELID,I.CANDAT,I.NETPRC  FROM OTHINVOI I,CUSTMAST C '+
                 'WHERE I.CUSCOD=C.CUSCOD AND I.CUSCOD LIKE :0 AND I.LOCAT LIKE :1 ORDER BY I.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT I.INVNO,I.INVDATE,I.CUSCOD,C.NAME1,C.NAME2,I.TAXNO,I.LOCAT,I.JOBNO,'+
                 'I.FLAG,I.CANCELID,I.CANDAT,I.NETPRC  FROM OTHINVOI I,CUSTMAST C '+
                 'WHERE I.CUSCOD=C.CUSCOD AND C.NAME1 LIKE :0 AND I.LOCAT LIKE :1 ORDER BY I.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT I.INVNO,I.INVDATE,I.CUSCOD,C.NAME1,C.NAME2,I.TAXNO,I.LOCAT,I.JOBNO,'+
                 'I.FLAG,I.CANCELID,I.CANDAT,I.NETPRC  FROM OTHINVOI I,CUSTMAST C '+
                 'WHERE I.CUSCOD=C.CUSCOD AND C.NAME2 LIKE :0 AND I.LOCAT LIKE :1 ORDER BY I.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL .ADD('SELECT I.INVNO,I.INVDATE,I.CUSCOD,C.NAME1,C.NAME2,I.TAXNO,I.LOCAT,I.JOBNO,'+
                 'I.FLAG,I.CANCELID,I.CANDAT,I.NETPRC  FROM OTHINVOI I,CUSTMAST C '+
                 'WHERE I.CUSCOD=C.CUSCOD AND I.TAXNO LIKE :0 AND I.LOCAT LIKE :1 ORDER BY I.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL .ADD('SELECT I.INVNO,I.INVDATE,I.CUSCOD,C.NAME1,C.NAME2,I.TAXNO,I.LOCAT,I.JOBNO,'+
                 'I.FLAG,I.CANCELID,I.CANDAT,I.NETPRC  FROM OTHINVOI I,CUSTMAST C '+
                 'WHERE I.CUSCOD=C.CUSCOD AND I.JOBNO LIKE :0 AND I.LOCAT LIKE :1 ORDER BY I.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL .ADD('SELECT I.INVNO,I.INVDATE,I.CUSCOD,C.NAME1,C.NAME2,I.TAXNO,I.LOCAT,I.JOBNO,'+
                 'I.FLAG,I.CANCELID,I.CANDAT,I.NETPRC  FROM OTHINVOI I,CUSTMAST C '+
                 'WHERE I.CUSCOD=C.CUSCOD AND ((I.JOBNO LIKE :0) or (I.INVNO LIKE :0) or (I.CUSCOD LIKE :0) or (C.NAME1 LIKE :0) '+
                 'or (C.NAME2 LIKE :0) or (I.TAXNO LIKE :0)) AND I.LOCAT LIKE :1 ORDER BY I.INVDATE DESC '+cbViewdata.EditValue);
      end;
    23:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM FRGROUP WHERE FRCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM FRGROUP WHERE FRDESC LIKE :EDIT1');
      end;
    24:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM CAMPGRP WHERE CAMPNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM CAMOGRP WHERE CAMPNAM LIKE :EDIT1');
      end;
    25:begin
        Sqltxt :='SELECT S.DEVNO,S.JOBNO,S.CUSCOD,S.DEVDATE,S.CANCELID,C.NAME1,C.NAME2 FROM AR_SERV S,CUSTMAST C WHERE '+
                 'NOT(S.JOBNO IS NULL) AND ';
        If OrderCombo.Itemindex=0 Then
        SQL .ADD(Sqltxt+'S.CUSCOD=C.CUSCOD AND S.DEVNO LIKE :EDIT1  AND S.LOCAT LIKE :EDIT2');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD(Sqltxt+'S.CUSCOD=C.CUSCOD AND S.JOBNO LIKE :EDIT1  AND S.LOCAT LIKE :EDIT2');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD(Sqltxt+'S.CUSCOD=C.CUSCOD AND S.CUSCOD LIKE :EDIT1 AND S.LOCAT LIKE :EDIT2');
        If OrderCombo.Itemindex=3 Then
        SQL .ADD(Sqltxt+'S.CUSCOD=C.CUSCOD AND C.NAME1 LIKE :EDIT1 AND  S.LOCAT LIKE :EDIT2');
        If OrderCombo.Itemindex=4 Then
        SQL .ADD(Sqltxt+'S.CUSCOD=C.CUSCOD AND C.NAME2 LIKE :EDIT1 AND S.LOCAT LIKE :EDIT2');

      end;
    26:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE QUOTNO LIKE :EDIT1 AND LOCAT LIKE :EDIT2 ORDER BY QDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE STRNO LIKE :EDIT1 AND LOCAT LIKE :EDIT2 ORDER BY QDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE REGNO LIKE :EDIT1 AND LOCAT LIKE :EDIT2 ORDER BY QDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL .ADD('SELECT * FROM QA_INVOI WHERE ((REGNO LIKE :EDIT1) or (QUOTNO LIKE :EDIT1) or (STRNO LIKE :EDIT1)) '+
                 'AND LOCAT LIKE :EDIT2 ORDER BY QDATE DESC '+cbViewdata.EditValue);
      end;
    27:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ARCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM ARGROUP WHERE ARDESC LIKE :EDIT1');
      end;
    28:begin
        Sqltxt :='SELECT BOOKNO,BKDATE,LOCAT,NAME1,NAME2,REGNO FROM BOOKSERV ';
        If OrderCombo.Itemindex=0 Then
        SQL .ADD(Sqltxt+'WHERE BOOKNO LIKE :0 AND LOCAT LIKE :1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD(Sqltxt+'WHERE NAME1  LIKE :0 AND LOLCAT LIKE :1');
        If OrderCombo.Itemindex=2 Then
        SQL .ADD(Sqltxt+'WHERE NAME1  LIKE :0 AND LOLCAT LIKE :1');

      end;
    29:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM INSURAN WHERE ISCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM INSURAN WHERE ISNAME LIKE :EDIT1');
      end;
    30:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT A.TAXNO,A.TAXDATE,A.CANCELID,B.NAME1 FROM OTH_TXIV A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD AND A.TAXNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT A.TAXNO,A.TAXDATE,A.CANCELID,B.NAME1 FROM OTH_TXIV A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD AND B.NAME1 LIKE :EDIT1');
      end;
    31:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM STATMST WHERE STATCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM STATMST WHERE STATDES LIKE :EDIT1');
      end;
    32:begin
        SqlTxt := 'SELECT C.REPNO,C.REPDT,C.LOCAT,C.JOBNO,C.STRNO,C.REGNO,C.CUSCOD,A.NAME1,A.NAME2,'+
                  'C.TOTPRC,C.TOTVAT,C.TOTVAT,C.TOTNET,C.PTTOT,C.SVTOT,C.OTHTOT, '+
                  'C.SVNET,C.PTNET,C.OTHNET,C.OUTTNET,C.COLNET,C.SVNET,C.PTNET,C.OTHNET,C.COLNET, '+
                  'C.SVVAT,C.PTVAT,C.OUTTVAT,C.OTHVAT,C.COLVAT '+
                  'FROM CLAIMINVOI C,CUSTMAST A WHERE C.CUSCOD=A.CUSCOD'+XClaim;
        If OrderCombo.Itemindex=0 Then
          SQL.ADD(sqltxt+' AND C.REPNO LIKE :0 AND C.LOCAT LIKE :1 ORDER BY C.REPDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
          SQL.ADD(sqltxt+' AND C.CUSCOD LIKE :0 AND C.LOCAT LIKE :1 ORDER BY C.REPDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
          SQL.ADD(sqltxt+' AND A.NAME1 LIKE :0 AND C.LOCAT LIKE :1 ORDER BY C.REPDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
          SQL.ADD(sqltxt+' AND A.NAME2 LIKE :0 AND C.LOCAT LIKE :1 ORDER BY C.REPDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
          SQL.ADD(sqltxt+' AND C.JOBNO LIKE :0 AND C.LOCAT LIKE :1 ORDER BY C.REPDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
          SQL.ADD(sqltxt+' AND C.STRNO LIKE :0 AND C.LOCAT LIKE :1 ORDER BY C.REPDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
          SQL.ADD(sqltxt+' AND ((C.STRNO LIKE :0) or (C.REPNO LIKE :0) or (C.CUSCOD LIKE :0) or (A.NAME1 LIKE :0) '+
                         'or (A.NAME2 LIKE :0) or (C.JOBNO LIKE :0)) AND C.LOCAT LIKE :1 ORDER BY C.REPDT DESC '+cbViewdata.EditValue);
      end;
     33:begin
        If OrderCombo.Itemindex=0 Then
           SQL.ADD('SELECT * FROM SETGROUP WHERE GCODE LIKE :EDIT1 ORDER BY GCODE');
        If OrderCombo.Itemindex=1 Then
           SQL.ADD('SELECT * FROM SETGROUP WHERE GDESC LIKE :EDIT1 ORDER BY GCODE');
        qrFindDat.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    34:begin
        SqlTxt := 'SELECT A.LOCAT,A.TAXNO,A.TAXDATE,A.CUSCOD,B.NAME1,B.NAME2,A.CLAIMNO,A.CANCELID,A.FLAG '+
                  'FROM ARCLAIM A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD';
        If OrderCombo.Itemindex=0 Then
          SQL.ADD(sqltxt+' AND A.TAXNO LIKE :0 AND A.LOCAT LIKE :1 ORDER BY A.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
          SQL.ADD(sqltxt+' AND A.CUSCOD LIKE :0 AND A.LOCAT LIKE :1 ORDER BY A.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
          SQL.ADD(sqltxt+' AND B.NAME1 LIKE :0 AND A.LOCAT LIKE :1 ORDER BY A.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
          SQL.ADD(sqltxt+' AND B.NAME2 LIKE :0 AND A.LOCAT LIKE :1 ORDER BY A.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
          SQL.ADD(sqltxt+' AND ((B.NAME2 LIKE :0) or (A.TAXNO LIKE :0) or (A.CUSCOD LIKE :0) '+
                         'or (B.NAME1 LIKE :0)) AND A.LOCAT LIKE :1 ORDER BY A.TAXDATE DESC '+cbViewdata.EditValue);
      end;

     35:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM GRPCKLIST WHERE GCODE LIKE :0');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM GRPCKLIST WHERE DESCP LIKE :0');
      end;

     36:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM CHECKLIS WHERE SVCODE LIKE :0');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM CHECKLIS WHERE DESCP LIKE :0');
      end;
     37:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT * FROM SETCOLOR WHERE COLORCOD LIKE :0');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT * FROM SETCOLOR WHERE COLORDES LIKE :0');
      end;
     38:begin
      If OrderCombo.Itemindex=0 Then
      SQL.ADD( 'SELECT * FROM TBLABOR WHERE SVCODE LIKE :0 AND MDLCOD LIKE :1 ORDER BY SVCODE ');
      If OrderCombo.Itemindex=1 Then
      SQL.ADD( 'SELECT * FROM TBLABOR WHERE MDLCOD LIKE  :0 AND MDLCOD LIKE :1 ORDER BY MDLCOD');
      If OrderCombo.Itemindex=2 Then
      SQL.ADD( 'SELECT * FROM TBLABOR WHERE DESCP LIKE  :0  AND MDLCOD LIKE :1 ORDER BY DESCP');
    end;

    39:begin
        If OrderCombo.Itemindex=0 Then
        SQL .ADD('SELECT * FROM TYPECLAIM WHERE CLAIMCODE LIKE :EDIT1 ORDER BY CLAIMCODE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL .ADD('SELECT * FROM TYPECLAIM WHERE CLAIMDESC LIKE :EDIT1 ORDER BY CLAIMCODE '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL .ADD('SELECT * FROM TYPECLAIM WHERE ((CLAIMCODE LIKE :EDIT1) or (CLAIMDESC LIKE :EDIT1) ORDER BY CLAIMCODE DESC '+cbViewdata.EditValue);
      end;

    end;
    Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
    If (OrderCombo.Tag=0) OR  (OrderCombo.Tag=25)  Then
       Params[1].Asstring := SFMain.Xlocat+'%';
    if Ordercombo.Tag=28 then
        Params[1].AsString := Uppercase(XSrLocat)+'%';
     If (OrderCombo.Tag=15) or (OrderCombo.Tag=38)  Then
       Params[1].Asstring :=  XModel+'%';

    if OrderCombo.Tag = 19 then
    begin
      if OrderCombo.Itemindex=7 then
      Params[7].Asstring := SFMain.Xlocat+'%' else
      Params[1].Asstring := SFMain.Xlocat+'%';
    end;

    if OrderCombo.tag=21 then
    begin
      if OrderCombo.Itemindex=5 then
      Params[5].AsString := Uppercase(XSrLocat)+'%' else
      Params[1].AsString := Uppercase(XSrLocat)+'%';
    end;

    if OrderCombo.Tag = 22 then
    begin
      if OrderCombo.Itemindex=6 then
      Params[6].AsString := Uppercase(XSrLocat)+'%' else
      Params[1].AsString := Uppercase(XSrLocat)+'%';
    end;

    if OrderCombo.Tag = 26 then
    begin
      if OrderCombo.Itemindex=3 then
      Params[3].AsString := Uppercase(XSrLocat)+'%' else
      Params[1].AsString := Uppercase(XSrLocat)+'%';
    end;

    if OrderCombo.Tag = 32 then
    begin
      if OrderCombo.Itemindex=6 then
      Params[6].AsString := Uppercase(XSrLocat)+'%' else
      Params[1].AsString := Uppercase(XSrLocat)+'%';
    end;

    if OrderCombo.Tag = 34 then
    begin
      if OrderCombo.Itemindex=4 then
      Params[4].AsString := Uppercase(XSrLocat)+'%' else
      Params[1].AsString := Uppercase(XSrLocat)+'%';
    end;

    If Not qrFindDat.Prepared Then qrFindDat.Prepare;
    Open;
    SFMain.Do_Show_DisplayFormat_Floating(qrFindDat);
 END;
end;

procedure TfSrcDlg1.OrderComboChange(Sender: TObject);
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

procedure TfSrcDlg1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfSrcDlg1.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TfSrcDlg1.CalcMax;
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


procedure TfSrcDlg1.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;

end;

procedure TfSrcDlg1.SearchEdChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
     SearchButtonClick(Sender);
end;

procedure TfSrcDLG1.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure TfSrcDLG1.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
      SearchButtonClick(Sender);
      cxGrid1.SetFocus;
   End;
end;

procedure TfSrcDLG1.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = true then
  cxGridDBTableView1.DataController.Groups.FullExpand else
  cxGridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TfSrcDLG1.DBGrid1DBTableView1CustomDrawIndicatorCell(
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

procedure TfSrcDLG1.DBGrid1DBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfSrcDLG1.cxGridDBTableView1DataControllerGroupingChanged(
  Sender: TObject);
begin
  cxCheckBox1.Checked := False;
  cxCheckBox1.Enabled := ((qrFindDat.RecordCount>0) AND
                          (cxGridDBTableView1.GroupedColumnCount>0));
end;

procedure TfSrcDLG1.cxGridDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   Begin
      OKBtn.Click;
   End;
end;

end.
