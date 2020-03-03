unit uSrcDLGAr;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, cxGraphics, Menus,
  cxLookAndFeelPainters, AdvShapeButton, cxTextEdit, cxButtons, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, AdvGlowButton, ComCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCardView, cxGridDBCardView, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxLookAndFeels, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxDateRanges, dxBarBuiltInMenu,
  cxNavigator, cxGridCustomLayoutView, cxImageComboBox;

type
  TfSrcDLGAr = class(TForm)
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
    DataSource: TDataSource;
    qrFindDat: TFDQuery;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cbViewdata: TcxImageComboBox;
    Label1: TLabel;
    procedure SearchButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure SearchEdPropertiesChange(Sender: TObject);
    procedure OrderComboPropertiesChange(Sender: TObject);
    procedure DBGrid1DBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure DBGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DBTableView1DblClick(Sender: TObject);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    XSrLocat: string;
    Xpaycon,XSC: string;
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
    function ShowModalPO: Integer;
    function ShowModalArinv: Integer;
    function ShowModalArBil: Integer;
    function ShowModalBak: Integer;
    function ShowModalBook: Integer;
    function ShowModalArinv1: Integer;
    function ShowModalTaxsal: Integer;
    function ShowModalPAYFor: Integer;
  end;

var
  fSrcDLGAr: TfSrcDLGAr;
  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;


implementation

uses USoftFirm, Dmsec;


{$R *.DFM}

function TfSrcDLGAr.ShowModalCust: Integer;
begin
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add('Company');
  OrderCombo.Properties.Items.Add('CustNo');
  OrderCombo.ItemIndex := 0;
  OrderComboPropertiesChange(nil);
  Caption := 'Select a Customer';
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalParts: Integer;
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
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalLocat: Integer;
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
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalGroup: Integer;
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
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalType: Integer;
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
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;

end;

function TfSrcDLGAr.ShowModalAP: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 4;
  Title[0]  := 'รหัสเจ้าหนี้';
  Title[1]  := 'ชื่อเจ้าหนี้';

  Fldgrd[0] := 'APCODE';
  Fldgrd[1] := 'APNAME';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalAR: Integer;
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
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalPAYTYP: Integer;
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
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalOffic: Integer;
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
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalPO: Integer;
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
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalArinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 9;
  Title[0]  := 'เลขที่ Inv.';
  Title[1]  := 'สาขา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อลูกค้า';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'เลขที่ JOB';
  Title[6]  := 'วันที่ Inv.';
  Title[7]  := 'เลขที่ใบกำกับ';
  Title[8]  := 'ค้างชำระ';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'LOCAT';
  Fldgrd[2] := 'CUSCODE';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'JOBNO';
  Fldgrd[6] := 'INVDATE';
  Fldgrd[7] := 'TAXNO';
  Fldgrd[8] := 'KANG';

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
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalArBil: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 10;
  Title[0]  := 'เลขที่ใบเสร็จ';
  Title[1]  := 'สาขา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อลูกค้า';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'เลขที่ JOB';
  Title[6]  := 'วันที่ใบเสร็จ';
  Title[7]  := 'ยอดชำระ';
  Title[8]  := 'ผู้ยกเลิก';
  Title[9]  := 'เลขที่ Inv';


  Fldgrd[0] := 'BILLNO';
  Fldgrd[1] := 'LOCAT';
  Fldgrd[2] := 'CUSCODE';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'JOBNO';
  Fldgrd[6] := 'BILLDT';
  Fldgrd[7] := 'TOTAL';
  Fldgrd[8] := 'CANCELID';
  Fldgrd[9] := 'INVNO';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[9]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalBak: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 11;
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
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalbook: Integer;
begin
  OrderCombo.Tag := 12;
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
  OrderComboPropertiesChange(nil);;
  Result  := ShowModal;
end;

function TfSrcDLGAr.ShowModalArinv1: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 13;
  Title[0]  := 'เลขที่ Inv.';
  Title[1]  := 'สาขา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'ชื่อลูกค้า';
  Title[4]  := 'นามสกุล';
  Title[5]  := 'เลขที่ ใบกำกับ';
  Title[6]  := 'วันที่ Inv.';
  Title[7]  := 'ค้างชำระ';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'LOCAT';
  Fldgrd[2] := 'CUSCODE';
  Fldgrd[3] := 'NAME1';
  Fldgrd[4] := 'NAME2';
  Fldgrd[5] := 'TAXNO';
  Fldgrd[6] := 'INVDATE';
  Fldgrd[7] := 'KANG';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 5;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalTaxsal: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 14;
  Title[0]  := 'เลขที่ Inv.';
  Title[1]  := 'สาขา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'เลขที่ ใบกำกับ';
  Title[4]  := 'วันที่ใบกำกับ.';


  Fldgrd[0] := 'TAXREFNO';
  Fldgrd[1] := 'LOCAT';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'TAXNO';
  Fldgrd[4] := 'TAXDATE';
  
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 3;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.ShowModalPAYFOR: Integer;
begin
  OrderCombo.Tag := 15;
  Title[0]  := 'รหัสชำระค่า';
  Title[1]  := 'รายละเอียด';

  Fldgrd[0] := 'FORCODE';
  Fldgrd[1] := 'FORDESC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboPropertiesChange(nil);;
  Result := ShowModal;
end;

function TfSrcDLGAr.GetKeyno: string;
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
    9 :Result := qrFindDat.Fieldbyname('INVNO').Asstring;
   10 :Result := qrFindDat.Fieldbyname('BILLNO').Asstring;
   11 :Result := qrFindDat.Fieldbyname('BANKCOD').Asstring;
   12 :Result := qrFindDat.Fieldbyname('BANKBOOKCOD').Asstring;
   13 :Result := qrFindDat.Fieldbyname('INVNO').Asstring;
   14 :Result := qrFindDat.Fieldbyname('TAXREFNO').Asstring;
   15 :Result := qrFindDat.Fieldbyname('FORCODE').Asstring;
  end;
end;

procedure TfSrcDLGAr.SearchButtonClick(Sender: TObject);
begin
  With qrFindDat Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
    0:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT  PARTNO,DESC1,GROUP1,PRICE1 FROM INVMAST WHERE PARTNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT  PARTNO,DESC1,GROUP1,PRICE1 FROM INVMAST WHERE DESC1 LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT  PARTNO,DESC1,GROUP1,PRICE1 FROM INVMAST WHERE '+
                '((PARTNO LIKE :EDIT1) or (DESC1 LIKE :EDIT1))');
      end;
    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATCD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM INVLOCAT WHERE LOCATNM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM INVLOCAT WHERE ((LOCATCD LIKE :EDIT1) or (LOCATNM LIKE :EDIT1))');
      end;
    2:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM GROUPMST WHERE GROUPCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM GROUPMST WHERE GROUPNAM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM GROUPMST WHERE ((GROUPCOD LIKE :EDIT1) or (GROUPNAM LIKE :EDIT1))');
      end;
    3:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM TYPEMST WHERE TYPECOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM TYPEMST WHERE TYPENAM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM TYPEMST WHERE ((TYPECOD LIKE :EDIT1) or (TYPENAM LIKE :EDIT1))');
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
        SQL.ADD('SELECT * FROM CUSTMAST WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM CUSTMAST WHERE NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM CUSTMAST WHERE NAME2 LIKE :EDIT1 ORDER BY NAME2');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT * FROM CUSTMAST WHERE ((CUSCOD LIKE :EDIT1) '+
                'or (NAME1 LIKE :EDIT1) or (NAME2 LIKE :EDIT1)) ORDER BY CUSCOD');
      end;
    6:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PAYTYP WHERE PAYCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM PAYTYP WHERE PAYDESC LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM PAYTYP WHERE ((PAYCODE LIKE :EDIT1) or (PAYDESC LIKE :EDIT1))');
      end;
    7:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM OFFICER WHERE CODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM OFFICER WHERE NAME LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM OFFICER WHERE ((CODE LIKE :EDIT1) or (NAME LIKE :EDIT1))');
      end;
    8:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PO_INVOI WHERE PONO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM PO_INVOI WHERE APCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM PO_INVOI WHERE ((PONO LIKE :EDIT1) or (APCODE LIKE :EDIT1))');
      end;
    9:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2,A.JOBNO '+
                'FROM ARINVOI A,CUSTMAST B WHERE A.CUSCODE=B.CUSCOD  AND A.INVNO LIKE :EDIT1 AND KANG>0 '+
                'AND (INVNO IN (SELECT DEVNO FROM AR_SERV WHERE CANCELID IS NULL) OR '+
                    '(INVNO IN (SELECT INVNO FROM IC_INVOI WHERE CANCELID IS NULL AND CUSCOD <> '''')) OR A.FLAG = ''D'') '+
                'AND A.LOCAT LIKE :EDIT2 ORDER BY A.INVDATE DESC,A.INVNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2,A.JOBNO '+
                'FROM ARINVOI A,CUSTMAST B WHERE A.CUSCODE=B.CUSCOD  AND A.INVNO LIKE :EDIT1 AND KANG>0 '+
                'AND (INVNO IN (SELECT DEVNO FROM AR_SERV WHERE CANCELID IS NULL) OR '+
                    '(INVNO IN (SELECT INVNO FROM IC_INVOI WHERE CANCELID IS NULL AND CUSCOD <> '''')) OR A.FLAG = ''D'') '+
                'AND A.LOCAT LIKE :EDIT2 ORDER BY  A.INVDATE DESC,A.CUSCODE');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2,A.JOBNO '+
                'FROM ARINVOI A,CUSTMAST B WHERE A.CUSCODE=B.CUSCOD  AND A.INVNO LIKE :EDIT1 AND KANG>0 '+
                'AND (INVNO IN (SELECT DEVNO FROM AR_SERV WHERE CANCELID IS NULL) OR '+
                    '(INVNO IN (SELECT INVNO FROM IC_INVOI WHERE CANCELID IS NULL AND CUSCOD <> '''')) OR A.FLAG = ''D'') '+
                'AND A.LOCAT LIKE :EDIT2 ORDER BY  A.INVDATE DESC,A.CUSCODE');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2,A.JOBNO '+
                'FROM ARINVOI A,CUSTMAST B WHERE A.CUSCODE=B.CUSCOD  AND A.INVNO LIKE :EDIT1 AND KANG>0 '+
                'AND (INVNO IN (SELECT DEVNO FROM AR_SERV WHERE CANCELID IS NULL) OR '+
                    '(INVNO IN (SELECT INVNO FROM IC_INVOI WHERE CANCELID IS NULL AND CUSCOD <> '''')) OR A.FLAG = ''D'') '+
                'AND A.LOCAT LIKE :EDIT2 ORDER BY  A.INVDATE DESC,A.CUSCODE');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2,A.JOBNO '+
                'FROM ARINVOI A,CUSTMAST B WHERE A.CUSCODE=B.CUSCOD  AND A.INVNO LIKE :EDIT1 AND KANG>0 '+
                'AND (INVNO IN (SELECT DEVNO FROM AR_SERV WHERE CANCELID IS NULL) OR '+
                    '(INVNO IN (SELECT INVNO FROM IC_INVOI WHERE CANCELID IS NULL AND CUSCOD <> '''')) OR A.FLAG = ''D'') '+
                'AND A.LOCAT LIKE :EDIT2 ORDER BY  A.INVDATE DESC,A.JOBNO ');
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2,A.JOBNO '+
                'FROM ARINVOI A,CUSTMAST B WHERE A.CUSCODE=B.CUSCOD  AND A.INVNO LIKE :EDIT1 AND KANG>0 '+
                'AND (INVNO IN (SELECT DEVNO FROM AR_SERV WHERE CANCELID IS NULL) OR '+
                    '(INVNO IN (SELECT INVNO FROM IC_INVOI WHERE CANCELID IS NULL AND CUSCOD <> '''')) OR A.FLAG = ''D'') '+
                'AND A.LOCAT LIKE :EDIT2 ORDER BY  A.INVDATE DESC,A.TAXNO ');
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2,A.JOBNO '+
                'FROM ARINVOI A,CUSTMAST B WHERE A.CUSCODE=B.CUSCOD  '+
                'AND ((A.INVNO LIKE :EDIT1) or (A.CUSCODE LIKE :EDIT1) or (B.NAME1 LIKE :EDIT1) '+
                'or (B.NAME2 LIKE :EDIT1) or (A.JOBNO LIKE :EDIT1) or (A.TAXNO LIKE :EDIT1)) AND KANG>0  '+
                'AND (INVNO IN (SELECT DEVNO FROM AR_SERV WHERE CANCELID IS NULL) OR '+
                    '(INVNO IN (SELECT INVNO FROM IC_INVOI WHERE CANCELID IS NULL AND CUSCOD <> '''')) OR A.FLAG = ''D'') '+
                'AND A.LOCAT LIKE :EDIT2 ORDER BY  A.INVDATE DESC,A.INVNO');
      end;
      
   10:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.NAME1,C.NAME2,B.JOBNO,B.INVNO,B.TOTAL,B.CANCELID '+
                'FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.BILLNO LIKE :0 '+
                'AND B.LOCAT LIKE :1 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.NAME1,C.NAME2,B.JOBNO,B.INVNO,B.TOTAL,B.CANCELID '+
                'FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.CUSCODE LIKE :0 '+
                'AND B.LOCAT LIKE :1 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.NAME1,C.NAME2,B.JOBNO,B.INVNO,B.TOTAL,B.CANCELID '+
                'FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND C.NAME1 LIKE :0 '+
                'AND B.LOCAT LIKE :1 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.NAME1,C.NAME2,B.JOBNO,B.INVNO,B.TOTAL,B.CANCELID '+
                'FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND C.NAME2 LIKE :0 '+
                'AND B.LOCAT LIKE :1 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.NAME1,C.NAME2,B.JOBNO,B.INVNO,B.TOTAL,B.CANCELID '+
                'FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.JOBNO LIKE :0 '+
                'AND B.LOCAT LIKE :1 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.NAME1,C.NAME2,B.JOBNO,B.INVNO,B.TOTAL,B.CANCELID '+
                'FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.INVNO LIKE :0 '+
                'AND B.LOCAT LIKE :1 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.NAME1,C.NAME2,B.JOBNO,B.INVNO,B.TOTAL,B.CANCELID '+
                'FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD '+
                'AND ((B.BILLNO LIKE :0) or (B.CUSCODE LIKE :0) or (C.NAME1 LIKE :0) '+
                'or (C.NAME2 LIKE :0) or (B.JOBNO LIKE :0) or (B.INVNO LIKE :0)) AND B.LOCAT LIKE :1 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);;
      end;
   11:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM SETBANK WHERE BANKCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM SETBANK WHERE BANKNAM LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM SETBANK WHERE ((BANKCOD LIKE :EDIT1) or (BANKNAM LIKE :EDIT1))');
      end;
   12:Begin
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
      end;
    13:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2 '+
                'FROM ARINVOI A,CUSTMAST B WHERE A.CUSCODE=B.CUSCOD  AND A.INVNO LIKE :EDIT1 '+
                'AND A.LOCAT LIKE :EDIT2 '+XSC+' ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2 '+
                'FROM ARINVOI A,CUSTMAST B WHERE  A.CUSCODE=B.CUSCOD  AND A.CUSCODE LIKE :EDIT1 '+
                'AND A.LOCAT LIKE :EDIT2 '+XSC+' ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2 '+
                'FROM ARINVOI A,CUSTMAST B WHERE  A.CUSCODE=B.CUSCOD  AND B.NAME1 LIKE :EDIT1 '+
                'AND A.LOCAT LIKE :EDIT2 '+XSC+' ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);

        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2 '+
                'FROM ARINVOI A,CUSTMAST B WHERE  A.CUSCODE=B.CUSCOD  AND B.NAME2 LIKE :EDIT1 '+
                'AND A.LOCAT LIKE :EDIT2 '+XSC+' ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);

        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2 '+
                'FROM ARINVOI A,CUSTMAST B WHERE  A.CUSCODE=B.CUSCOD  AND A.TAXNO LIKE :EDIT1 '+
                'AND A.LOCAT LIKE :EDIT2 '+XSC+' ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.KANG,A.TAXNO,A.TAXDATE,A.CUSCODE,B.SNAM,B.NAME1,B.NAME2 '+
                'FROM ARINVOI A,CUSTMAST B WHERE A.CUSCODE=B.CUSCOD  AND ((A.INVNO LIKE :EDIT1) '+
                'or (A.CUSCODE LIKE :EDIT1) or (B.NAME1 LIKE :EDIT1) or (B.NAME2 LIKE :EDIT1) or (A.TAXNO LIKE :EDIT1)) '+
                'AND A.LOCAT LIKE :EDIT2 '+XSC+' ORDER BY A.INVDATE DESC '+cbViewdata.EditValue);
      end;
    14:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM TAXSAL WHERE TAXREFNO LIKE :EDIT1 '+XSC+' ORDER BY TAXREFNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM TAXSAL WHERE CUSCOD LIKE :EDIT1 '+XSC+' ORDER BY CUSCOD');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM TAXSAL WHERE TAXNO LIKE :EDIT1 '+XSC+' ORDER BY TAXNO ');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT * FROM TAXSAL WHERE ((TAXREFNO LIKE :EDIT1) or (CUSCOD LIKE :EDIT1) '+
                'or (TAXNO LIKE :EDIT1)) '+XSC+' ORDER BY TAXREFNO');
      end;
    15:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PAYFOR WHERE FORCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM PAYFOR WHERE FORDESC LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM PAYFOR WHERE ((FORCODE LIKE :EDIT1) or (FORDESC LIKE :EDIT1))');
      end;

    end;
    qrFindDat.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');

    if OrderCombo.Tag = 13 then
    begin
      if OrderCombo.ItemIndex <> 5 then
      qrFindDat.Params[1].AsString := Uppercase(fSrcDlgAR.XSrLocat)+'%' else
      qrFindDat.Params[5].AsString := Uppercase(fSrcDlgAR.XSrLocat)+'%';
    end;

    if OrderCombo.Tag = 9 then
    begin
      if OrderCombo.ItemIndex <> 6 then
      qrFindDat.Params[1].AsString := Uppercase(fSrcDlgAR.XSrLocat)+'%' else
      qrFindDat.Params[6].AsString := Uppercase(fSrcDlgAR.XSrLocat)+'%';
    end;

    if OrderCombo.Tag = 10 then
    begin
       if OrderCombo.ItemIndex <> 6 then
       qrFindDat.Params[1].AsString := Uppercase(fSrcDlgAR.XSrLocat)+'%' else
       qrFindDat.Params[6].AsString := Uppercase(fSrcDlgAR.XSrLocat)+'%';
    end;
      qrFindDat.Open;
  End;
end;

procedure TfSrcDLGAr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfSrcDLGAr.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TfSrcDLGAr.CalcMax;
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

procedure TfSrcDLGAr.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;
end;

procedure TfSrcDLGAr.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
      SearchButtonClick(Sender);
      DbGrid1.SetFocus;
   End;
end;

procedure TfSrcDLGAr.SearchEdPropertiesChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
  SearchButtonClick(Sender);
end;

procedure TfSrcDLGAr.OrderComboPropertiesChange(Sender: TObject);
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
  end;

end;

procedure TfSrcDLGAr.DBGrid1DBTableView1CustomDrawIndicatorCell(
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

procedure TfSrcDLGAr.DBGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure TfSrcDLGAr.DBGrid1DBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

end.
