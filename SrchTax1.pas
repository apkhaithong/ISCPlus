unit SrchTax1;

interface                            

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxLookAndFeels, cxContainer, cxGridCardView,
  cxGridDBCardView, cxImageComboBox, cxCheckBox, AdvShapeButton, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, AdvGlowButton, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, dxDateRanges,
  dxBarBuiltInMenu, cxGridCustomLayoutView;

type
  TSearchTax = class(TForm)
    DataSource: TDataSource;
    HQuery1: TFDQuery;
    Panel3: TPanel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    SearchButton: TAdvGlowButton;
    OrderCombo: TcxComboBox;
    OkBtn: TcxButton;
    CancelBtn: TcxButton;
    SearchEd: TcxTextEdit;
    AdvShapeButton1: TAdvShapeButton;
    cxCheckBox1: TcxCheckBox;
    cbViewdata: TcxImageComboBox;
    DBGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridLevel2: TcxGridLevel;
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DBTableView1DblClick(Sender: TObject);
    procedure DBGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DataControllerGroupingChanged(
      Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    NewKeyno,Xsrch,XCont,XTaxtyp,SqlText,XSrLocat,SC1: string;
    property Keyno: string read GetKeyno;

    function ShowModalTaxno: Integer;
    function ShowModalTaxno1: Integer;
    function ShowModalTaxCrd: Integer;
    function ShowModalTypCred: Integer;
    function ShowModalTaxFinc: Integer;
    function ShowModalTaxBuy: Integer;
    function ShowModalStrRecv: Integer;
    function ShowModalTaxCrdB1: Integer;
    function ShowModalAgnStrno: Integer;
    function ShowModalTAXPST: Integer;
  end;

var
  SearchTax: TSearchTax;


  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;

implementation

uses USoftFirm, Dmsec;


{$R *.DFM}

function TSearchTax.ShowModalTaxno: Integer;
begin
  //*** Tax ****
  OrderCombo.Tag := 0;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'วันที่ใบกำกับ';
  Title[2]  := 'ออกโดยสาขา';
  Title[3]  := 'ประเภทการขาย';
  Title[4]  := 'เลขสัญญา';
  Title[5]  := 'รหัสลูกค้า';
  Title[6]  := 'ชื่อ';
  Title[7]  := 'สกุล';
  Title[8]  := 'จำนวนเงิน';
  Title[9]  := 'ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDT';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'TSALE';
  Fldgrd[4] := 'CONTNO';
  Fldgrd[5] := 'CUSCOD';
  Fldgrd[6] := 'NAME1';
  Fldgrd[7] := 'NAME2';
  Fldgrd[8] := 'TOTAMT';
  Fldgrd[9] := 'FLAG';

   OrderCombo.Properties.Items.Clear;
   OrderCombo.Properties.Items.Add(Title[0]);
   OrderCombo.Properties.Items.Add(Title[2]);
   OrderCombo.Properties.Items.Add(Title[4]);
   OrderCombo.Properties.Items.Add(Title[5]);
   OrderCombo.Properties.Items.Add(Title[6]);
   OrderCombo.Properties.Items.Add(Title[7]);
   OrderCombo.Properties.Items.Add('All field...');
   OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบกำกับภาษีขาย';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTaxCrd: Integer;
begin
  OrderCombo.Tag := 1;
  Title[0]  := 'เลขที่ใบลดหนี้';
  Title[1]  := 'วันที่ใบลดหนี้';
  Title[2]  := 'ออกโดยสาขา';
  Title[3]  := 'อ้างถึงใบกำกับ';
  Title[4]  := 'วันที่ใบกำกับ';
  Title[5]  := 'เลขสัญญา';
  Title[6]  := 'ชื่อ';
  Title[7]  := 'สกุล';
  Title[8]  := 'จำนวนเงิน';
  Title[9]  := 'ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDT';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'REFNO';
  Fldgrd[4] := 'REFDT';
  Fldgrd[5] := 'CONTNO';
  Fldgrd[6] := 'NAME1';
  Fldgrd[7] := 'NAME2';
  Fldgrd[8] := 'TOTAMT';
  Fldgrd[9] := 'FLAG';

   OrderCombo.Properties.Items.Clear;
   OrderCombo.Properties.Items.Add(Title[0]);
   OrderCombo.Properties.Items.Add(Title[2]);
   OrderCombo.Properties.Items.Add(Title[3]);
   OrderCombo.Properties.Items.Add(Title[5]);
   OrderCombo.Properties.Items.Add(Title[6]);
   OrderCombo.Properties.Items.Add(Title[7]);
   OrderCombo.Properties.Items.Add('All field...');
   OrderCombo.ItemIndex := 6;
  // ** Field Name & Title**
  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help ใบลดหนี้ขาย ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTypcred: Integer;
begin
  OrderCombo.Tag := 2;
  Title[0]  := 'ประเภทใบลดหนี้';
  Title[1]  := 'รายการ';

  Fldgrd[0] := 'CRDTYP';
  Fldgrd[1] := 'CRDDESC';

   OrderCombo.Properties.Items.Clear;
   OrderCombo.Properties.Items.Add(Title[0]);
   OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  // ** Field Name & Title**
  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help ประเภทใบลดหนี้ ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTaxFinc: Integer;
begin
  OrderCombo.Tag := 3;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'วันที่ใบกำกับ';
  Title[2]  := 'ออกโดยสาขา';
  Title[3]  := 'บริษัทไฟแนนซ์';
  Title[4]  := 'เลขสัญญา';
  Title[5]  := 'รหัสลูกค้า';
  Title[6]  := 'ชื่อ';
  Title[7]  := 'สกุล';
  Title[8]  := 'จำนวนเงิน';
  Title[9]  := 'ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDT';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'FINCOD';
  Fldgrd[4] := 'CONTNO';
  Fldgrd[5] := 'CUSCOD';
  Fldgrd[6] := 'NAME1';
  Fldgrd[7] := 'NAME2';
  Fldgrd[8] := 'TOTAMT';
  Fldgrd[9] := 'FLAG';

   OrderCombo.Properties.Items.Clear;
   OrderCombo.Properties.Items.Add(Title[0]);
   OrderCombo.Properties.Items.Add(Title[3]);
   OrderCombo.Properties.Items.Add(Title[4]);
   OrderCombo.Properties.Items.Add(Title[5]);
   OrderCombo.Properties.Items.Add(Title[6]);
   OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.ItemIndex := 0;
  // ** Field Name & Title**
  CalcMax;
  OrderComboChange(nil);
  Caption := 'ค้นหาใบกำกับ ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTaxBuy: Integer;
begin
  OrderCombo.Tag := 4;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'วันที่ใบกำกับ';
  Title[2]  := 'เลขที่ใบรับ';
  Title[3]  := 'วันที่ตามใบรับ';
  Title[4]  := 'รหัสบ.เจ้าหนี้';
  Title[5]  := 'จำนวนเงิน';
  Title[6]  := 'ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDATE';
  Fldgrd[2] := 'TAXREFNO';
  Fldgrd[3] := 'RECVDT';
  Fldgrd[4] := 'CUSCOD';
  Fldgrd[5] := 'TOTTAX';
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
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบกำกับภาษีซื้อ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalStrRecv: Integer;
begin
  OrderCombo.Tag := 5;
  Title[0]  := 'เลขตัวถัง';
  Title[1]  := 'มูลค่าสินค้า';
  Title[2]  := 'มูลค่าภาษี';
  Title[3]  := 'รวมราคาขาย';
  Title[4]  := 'อัตราภาษี';
  Title[5]  := 'เลขใบลดหนี้';
  Title[6]  := 'ยอดลดหนี้แล้ว';

  Fldgrd[0] := 'STRNO';
  Fldgrd[1] := 'NETCOST';
  Fldgrd[2] := 'CRVAT';
  Fldgrd[3] := 'TOTCOST';
  Fldgrd[4] := 'VATRT';
  Fldgrd[5] := 'CRDTXNO';
  Fldgrd[6] := 'CRDAMT';

   OrderCombo.Properties.Items.Clear;
   OrderCombo.Properties.Items.Add(Title[0]);
   OrderCombo.Properties.Items.Add(Title[1]);
   OrderCombo.Properties.Items.Add(Title[2]);
   OrderCombo.Properties.Items.Add(Title[3]);
   OrderCombo.Properties.Items.Add(Title[4]);
   OrderCombo.Properties.Items.Add(Title[5]);
   OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.ItemIndex := 0;
  // ** Field Name & Title**
  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help เลขตัวถัง ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTaxCrdB1: Integer;
begin
  OrderCombo.Tag := 6;
  Title[0]  := 'เลขที่ใบลดหนี้';
  Title[1]  := 'วันที่ใบลดหนี้';
  Title[2]  := 'ออกโดยสาขา';
  Title[3]  := 'อ้างถึงใบกำกับ';
  Title[4]  := 'วันท่ใบกำกับ';
  Title[5]  := 'บ.เจ้าหนี้';
  Title[6]  := 'จำนวนเงิน';
  Title[7]  := 'ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDATE';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'TAXREFNO';
  Fldgrd[4] := 'RECVDT';
  Fldgrd[5] := 'CUSCOD';
  Fldgrd[6] := 'TOTTAX';
  Fldgrd[7] := 'FLAG';

   OrderCombo.Properties.Items.Clear;
   OrderCombo.Properties.Items.Add(Title[0]);
   OrderCombo.Properties.Items.Add(Title[1]);
   OrderCombo.Properties.Items.Add(Title[2]);
   OrderCombo.Properties.Items.Add(Title[3]);
   OrderCombo.Properties.Items.Add(Title[4]);
   OrderCombo.Properties.Items.Add(Title[5]);
   OrderCombo.Properties.Items.Add(Title[6]);
   OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.ItemIndex := 0;
  // ** Field Name & Title**
  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help ใบลดหนี้ซื้อ ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTaxno1: Integer;
begin
  //*** Tax ****
  OrderCombo.Tag := 7;
  Title[0]  := 'เลขที่ใบกำกับ';
  Title[1]  := 'วันที่ใบกำกับ';
  Title[2]  := 'ออกโดยสาขา';
  Title[3]  := 'ประเภทการขาย';
  Title[4]  := 'เลขสัญญา';
  Title[5]  := 'เลขตัวถัง';
  Title[6]  := 'ชื่อ';
  Title[7]  := 'สกุล';
  Title[8]  := 'จำนวนเงิน';
  Title[9]  := 'ยกเลิก';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDT';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'TSALE';
  Fldgrd[4] := 'CONTNO';
  Fldgrd[5] := 'STRNO';
  Fldgrd[6] := 'NAME1';
  Fldgrd[7] := 'NAME2';
  Fldgrd[8] := 'TOTAMT';
  Fldgrd[9] := 'FLAG';

   OrderCombo.Properties.Items.Clear;
   OrderCombo.Properties.Items.Add(Title[0]);
   OrderCombo.Properties.Items.Add(Title[2]);
   OrderCombo.Properties.Items.Add(Title[4]);
   OrderCombo.Properties.Items.Add(Title[5]);
   OrderCombo.Properties.Items.Add(Title[6]);
   OrderCombo.Properties.Items.Add(Title[7]);
   OrderCombo.Properties.Items.Add('All field...');
   OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบกำกับภาษีขาย';
  Result := ShowModal;
end;

function TSearchTax.ShowModalAgnStrno: Integer;
begin
  //*** Tax ****
  OrderCombo.Tag := 8;
  Title[0] := 'เลขตัวถัง';
  Title[1] := 'มูลค่าสินค้า';
  Title[2] := 'ภาษี';
  Title[3] := 'รวมภาษี';

  Fldgrd[0] := 'STRNO';
  Fldgrd[1] := 'NPRICE';
  Fldgrd[2] := 'VATPRC';
  Fldgrd[3] := 'TOTPRC';
   OrderCombo.Properties.Items.Clear;
   OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.ItemIndex :=0;

   { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help เลขตัวถัง';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTAXPST: Integer;
begin
  OrderCombo.Tag := 9;
  Title[0]  := 'สาขา';
  Title[1]  := 'เลขที่ใบกำกับ';
  Title[2]  := 'เลขที่อ้างอิง';
  Title[3]  := 'ชื่อ-สกุล';
  Title[4]  := 'ยอดเงิน';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'TAXNO';
  Fldgrd[2] := 'TAXREFNO';
  Fldgrd[3] := 'CUSTNAME';
  Fldgrd[4] := 'TOTTAX';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');

  OrderCombo.ItemIndex := 3;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบกำกับเงินมัดจำ';
  Result := ShowModal;
end;

function TSearchTax.GetKeyno: string;
begin
  If HQuery1.Active Then
  Case OrderCombo.Tag Of
    0 :Result := HQuery1.Fieldbyname('TAXNO').Asstring;
    1 :Result := HQuery1.Fieldbyname('TAXNO').Asstring;
    2 :Result := HQuery1.Fieldbyname('CRDTYP').Asstring;
    3 :Result := HQuery1.Fieldbyname('TAXNO').Asstring;
    4 :Result := HQuery1.Fieldbyname('TAXNO').Asstring;
    5 :Result := HQuery1.Fieldbyname('STRNO').Asstring;
    6 :Result := HQuery1.Fieldbyname('TAXNO').Asstring;
    7 :Result := HQuery1.Fieldbyname('TAXNO').Asstring;
    8 :Result := HQuery1.fieldbyname('STRNO').AsString;
    9 :Result := HQuery1.fieldbyname('TAXNO').AsString;
  end;
end;

procedure TSearchTax.SearchButtonClick(Sender: TObject);
begin
  With HQuery1 Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
    0:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE TAXNO LIKE :EDIT1 '+XTaxtyp+' ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE LOCAT LIKE :EDIT1 '+XTaxtyp+' ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE CONTNO LIKE :EDIT1  '+XTaxtyp+' ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE CUSCOD LIKE :EDIT1  '+XTaxtyp+' ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE NAME1 LIKE :EDIT1  '+XTaxtyp+' ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE NAME2 LIKE :EDIT1  '+XTaxtyp+' ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE ((STRNO LIKE :EDIT1) or (TAXNO LIKE :EDIT1) or (LOCAT LIKE :EDIT1) or (CONTNO LIKE :EDIT1) '+
                'or (CUSCOD LIKE :EDIT1) or (NAME1 LIKE :EDIT1) or (NAME2 LIKE :EDIT1))  '+XTaxtyp+' ORDER BY TAXDT DESC '+cbViewdata.EditValue);
      end;
    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE TAXNO LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND FLAG <> ''C'' ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE LOCAT LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE REFNO LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE CONTNO LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE NAME1 LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE NAME2 LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE ((TAXNO LIKE :EDIT1) or (LOCAT LIKE :EDIT1) or (REFNO LIKE :EDIT1) or '+
                '(CONTNO LIKE :EDIT1) or (NAME1 LIKE :EDIT1) or (NAME2 LIKE :EDIT1)) AND TAXTYP BETWEEN ''1'' and ''9'' '+
                'AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC '+cbViewdata.EditValue);
       end;
    2:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT CRDTYP,CRDDESC FROM TYPCRED '+
                'WHERE CRDTYP LIKE :EDIT1 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT CRDTYP,CRDDESC FROM TYPCRED '+
                'WHERE CRDDESC LIKE :EDIT1 ');
       end;
    3:begin
        SqlText :='SELECT TAXNO,TAXDT,LOCAT,FINCOD,TSALE,CONTNO,CUSCOD,NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                  'WHERE TSALE=''F'' ';
        If OrderCombo.Itemindex=0 Then
           Sql.Add(SqlText+'AND TAXNO  LIKE :0');
        If OrderCombo.Itemindex=1 Then
           Sql.Add(SqlText+'AND FINCOD LIKE :0');
        If OrderCombo.Itemindex=2 Then
           Sql.Add(SqlText+'AND CONTNO LIKE :0');
        If OrderCombo.Itemindex=3 Then
           Sql.Add(SqlText+'AND CUSCOD LIKE :0');
        If OrderCombo.Itemindex=4 Then
           Sql.Add(SqlText+'AND NAME1  LIKE :0');
        If OrderCombo.Itemindex=5 Then
           Sql.Add(SqlText+'AND NAME2  LIKE :0');
       end;
    4:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,'+
                'TOTTAX,FLAG FROM TAXBUY '+
                'WHERE TAXNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,'+
                'TOTTAX,FLAG FROM TAXBUY '+
                'WHERE TAXDATE LIKE :EDIT1 ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,'+
                'TOTTAX,FLAG FROM TAXBUY '+
                'WHERE TAXREFNO LIKE :EDIT1 ');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,'+
                'TOTTAX,FLAG FROM TAXBUY '+
                'WHERE RECVDT LIKE :EDIT1 ');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,'+
                'TOTTAX,FLAG FROM TAXBUY '+
                'WHERE CUSCOD LIKE :EDIT1 ');
      end;
    5:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT RECVNO,STRNO,NETCOST,CRVAT,TOTCOST,'+
                'VATRT,CRDTXNO,CRDAMT FROM INVTRAN '+
                'WHERE STRNO LIKE :EDIT1 AND RECVNO=:V0');
       end;
    6:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT LOCAT,TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,'+
                'TOTTAX,FLAG FROM TAXBUY '+
                'WHERE TAXNO LIKE :EDIT1  AND TAXTYP=:V0');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT LOCAT,TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,'+
                'TOTTAX,FLAG FROM TAXBUY '+
                'WHERE TAXDATE LIKE :EDIT1 AND TAXTYP=:V0');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT LOCAT,TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,'+
                'TOTTAX,FLAG FROM TAXBUY '+
                'WHERE TAXREFNO LIKE :EDIT1 AND TAXTYP=:V0');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT LOCAT,TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,'+
                'TOTTAX,FLAG FROM TAXBUY '+
                'WHERE RECVDT LIKE :EDIT1 AND TAXTYP=:V0');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT LOCAT,TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,'+
                'TOTTAX,FLAG FROM TAXBUY '+
                'WHERE CUSCOD LIKE :EDIT1 AND TAXTYP=:V0');
      end;


      7:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE TAXNO LIKE :EDIT1 ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE LOCAT LIKE :EDIT1 ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE CONTNO LIKE :EDIT1 ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE STRNO LIKE :EDIT1 ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE NAME1 LIKE :EDIT1 ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE NAME2 LIKE :EDIT1 ORDER BY TAXDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=6 Then
        SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,'+
                'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN '+
                'WHERE ((NAME2 LIKE :EDIT1) or (TAXNO LIKE :EDIT1) or (LOCAT LIKE :EDIT1) '+
                'or (TSALE LIKE :EDIT1) or (CONTNO LIKE :EDIT1) or (STRNO LIKE :EDIT1) or (NAME1 LIKE :EDIT1)) '+
                'ORDER BY TAXDT DESC '+cbViewdata.EditValue);
      end;
      8:begin
        IF OrderCombo.ItemIndex=0 Then
        SQL.Add('SELECT CONTNO,STRNO,NPRICE,VATPRC,TOTPRC FROM AR_TRANS WHERE '+
                'STRNO LIKE :EDIT1 AND CONTNO =:EDIT2');
      end;

    9:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT A.LOCAT,A.TAXNO,A.TAXREFNO,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.TOTTAX '+
                'FROM TAXSAL A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE A.TAXNO  LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2  '+SC1+' '+
                'ORDER BY  A.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT A.LOCAT,A.TAXNO,A.TAXREFNO,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.TOTTAX '+
                'FROM TAXSAL A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE A.TAXREFNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2  '+SC1+' '+
                'ORDER BY  A.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT A.LOCAT,A.TAXNO,A.TAXREFNO,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.TOTTAX '+
                'FROM TAXSAL A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE B.CUSTNAME LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2  '+SC1+' '+
                'ORDER BY  A.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT A.LOCAT,A.TAXNO,A.TAXREFNO,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.TOTTAX '+
                'FROM TAXSAL A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) '+
                'WHERE ((B.CUSTNAME LIKE :EDIT1) or (A.TAXNO  LIKE :EDIT1) or (A.TAXREFNO LIKE :EDIT1)) AND A.LOCAT LIKE :EDIT2  '+SC1+' '+
                'ORDER BY  A.TAXDATE DESC '+cbViewdata.EditValue);
      end;

    End;
    HQuery1.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');
    If  (OrderCombo.Tag = 5) or (OrderCombo.Tag = 6) or (OrderCombo.Tag=8) Then
        HQuery1.Params[1].Asstring := Xcont ;

    If  (OrderCombo.Tag = 9) Then
    begin
      if OrderCombo.Itemindex=3 Then
      HQuery1.Params[3].Asstring := XSrLocat+'%'  else
      HQuery1.Params[1].Asstring := XSrLocat+'%' ;
    end;
    HQuery1.Open;
    SFMain.Do_Show_DisplayFormat_Floating(HQuery1);
  End;
end;

procedure TSearchTax.OrderComboChange(Sender: TObject);
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

procedure TSearchTax.SearchEdChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
  SearchButtonClick(Sender);
end;


procedure TSearchTax.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TSearchTax.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TSearchTax.CalcMax;
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

procedure TSearchTax.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;
end;

procedure TSearchTax.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
     SearchButtonClick(Sender);
     DbGrid1.SetFocus;
   End;
end;

procedure TSearchTax.DBGrid1DBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSearchTax.DBGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    OKBtn.Click;
  End;
end;

procedure TSearchTax.cxGridDBTableView1CustomDrawIndicatorCell(
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

procedure TSearchTax.cxGridDBTableView1DblClick(Sender: TObject);
begin
   ModalResult := mrOK;
end;

procedure TSearchTax.cxGridDBTableView1DataControllerGroupingChanged(
  Sender: TObject);
begin
  if HQuery1.Active = True then
  begin
  cxCheckBox1.Checked := False;
  cxCheckBox1.Enabled := ((HQuery1.RecordCount>0) AND
                          (cxGridDBTableView1.GroupedColumnCount>0));
  end;
end;

procedure TSearchTax.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = true then
  cxGridDBTableView1.DataController.Groups.FullExpand else
  cxGridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TSearchTax.cxGridDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

end.
