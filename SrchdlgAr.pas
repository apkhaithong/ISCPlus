unit SrchdlgAr;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, RzSpnEdt, RzDBGrid, RzPanel,
  cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCardView,
  cxGridDBCardView, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxCheckBox, AdvShapeButton, cxTextEdit,
  cxButtons, cxContainer, cxMaskEdit, cxDropDownEdit, AdvGlowButton,
  cxLookAndFeels, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxNavigator, dxDateRanges, dxBarBuiltInMenu,
  cxGridCustomLayoutView;

type
  TSearchDlgAr = class(TForm)
    DataSource: TDataSource;
    HQuery1: TFDQuery;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    SearchButton: TAdvGlowButton;
    OrderCombo: TcxComboBox;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    SearchEd: TcxTextEdit;
    AdvShapeButton1: TAdvShapeButton;
    cxCheckBox1: TcxCheckBox;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridLevel2: TcxGridLevel;
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DataControllerGroupingChanged(
      Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
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
  SearchDlgAr: TSearchDlgAr;
  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;
  SelectFld : String;



implementation

uses USoftFirm, Dmsec;


{$R *.DFM}

function TSearchDlgAr.ShowModalCust: Integer;
begin
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add('Company');
  OrderCombo.Properties.Items.Add('CustNo');
  OrderCombo.ItemIndex := 0;
  OrderComboChange(nil);
  Caption := 'Select a Customer';
  Result := ShowModal;
end;

function TSearchDlgAr.ShowModalParts: Integer;
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
  Caption := 'Help Part';
  Result := ShowModal;
end;

function TSearchDlgAr.ShowModalLocat: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 1;
  Title[0]  := 'รหัสสาขา';
  Title[1]  := 'ชื่อสาขา';
  Title[2]  := 'รหัสย่อ';

  Fldgrd[0] := 'LOCATCOD';
  Fldgrd[1] := 'LOCATNAM';
  Fldgrd[2] := 'LOCATDOC';
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

function TSearchDlgAr.ShowModalGroup: Integer;
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

function TSearchDlgAr.ShowModalType: Integer;
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

function TSearchDlgAr.ShowModalAP: Integer;
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
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help รหัสเจ้าหนี้';
  Result := ShowModal;
end;

function TSearchDlgAr.ShowModalAR: Integer;
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

function TSearchDlgAr.ShowModalPAYTYP: Integer;
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

function TSearchDlgAr.ShowModalOffic: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 7;
  Title[0]  := 'รหัสพนักงาน';
  Title[1]  := 'ชื่อพนักงาน';
  Title[2]  := 'แผนก';

  Fldgrd[0] := 'OFFICCOD';
  Fldgrd[1] := 'OFFICNAM';
  Fldgrd[2] := 'DEPART';
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

function TSearchDlgAr.ShowModalPO: Integer;
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
  //OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบสั่งซื้อ';
  Result := ShowModal;
end;

function TSearchDlgAr.ShowModalArinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 9;
  Title[0]  := 'เลขที่ Inv.';
  Title[1]  := 'สาขา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'เลขที่ JOB';
  Title[4]  := 'วันที่ Inv.';
  Title[5]  := 'เลขที่ใบกำกับ';
  Title[6]  := 'ค้างชำระ';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'LOCAT';
  Fldgrd[2] := 'CUSCODE';
  Fldgrd[3] := 'JOBNO';
  Fldgrd[4] := 'INVDATE';
  Fldgrd[5] := 'TAXNO';
  Fldgrd[6] := 'KANG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[5]);

  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help invoice ค้างชำระ';
  Result := ShowModal;
end;

function TSearchDlgAr.ShowModalArBil: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 10;
  Title[0]  := 'เลขที่ใบเสร็จ';
  Title[1]  := 'สาขา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'เลขที่ JOB';
  Title[4]  := 'วันที่ใบเสร็จ';
  Title[5]  := 'ยอดชำระ';
  Title[6]  := 'Cancel ID';
  Title[7]  := 'เลขที่ Inv';


  Fldgrd[0] := 'BILLNO';
  Fldgrd[1] := 'LOCAT';
  Fldgrd[2] := 'CUSCODE';
  Fldgrd[3] := 'JOBNO';
  Fldgrd[4] := 'BILLDT';
  Fldgrd[5] := 'TOTAL';
  Fldgrd[6] := 'Cancelid';
  Fldgrd[7] := 'INVNO';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);

  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบเสร็จรับเงิน';
  Result := ShowModal;
end;

function TSearchDlgAr.ShowModalBak: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 11;
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
  Caption := 'Help ธนาคาร';
  Result := ShowModal;
end;

function TSearchDlgAr.ShowModalbook: Integer;
begin
  OrderCombo.Tag := 12;
  Title[0]  := 'หมายเลขบัญชี';
  Title[1]  := 'ชื่อบัญชี';
  Title[2]  := 'รหัสบัญชีแยกประเภท';

  Fldgrd[0] := 'BKCODE';
  Fldgrd[1] := 'BKNAME';
  Fldgrd[2] := 'ACCOUNT';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help สมุดบัญชี';
  Result := ShowModal;
end;

function TSearchDlgAr.ShowModalArinv1: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 13;
  Title[0]  := 'เลขที่ Inv.';
  Title[1]  := 'สาขา';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'เลขที่ ใบกำกับ';
  Title[4]  := 'วันที่ Inv.';
  Title[5]  := 'ค้างชำระ';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'LOCAT';
  Fldgrd[2] := 'CUSCODE';
  Fldgrd[3] := 'TAXNO';
  Fldgrd[4] := 'INVDATE';
  Fldgrd[5] := 'KANG';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);

  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help invoice ';
  Result := ShowModal;
end;

function TSearchDlgAr.ShowModalTaxsal: Integer;
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

  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help TAXSALE ';
  Result := ShowModal;
end;

function TSearchDlgAr.ShowModalPAYFOR: Integer;
begin
  OrderCombo.Tag := 15;
  Title[0]  := 'รหัสชำระค่า';
  Title[1]  := 'รายละเอียด';

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
  Caption := 'Help ชำระค่า';
  Result := ShowModal;
end;

function TSearchDlgAr.GetKeyno: string;
begin
  If HQuery1.Active Then
  Case OrderCombo.Tag Of
    0 :Result := HQuery1.Fieldbyname('PartNo').Asstring;
    1 :Result := HQuery1.Fieldbyname('LOCATCOD').Asstring;
    2 :Result := HQuery1.Fieldbyname('GROUPCOD').Asstring;
    3 :Result := HQuery1.Fieldbyname('TYPECOD').Asstring;
    4 :Result := HQuery1.Fieldbyname('APCODE').Asstring;
    5 :Result := HQuery1.Fieldbyname('CUSCOD').Asstring;
    6 :Result := HQuery1.Fieldbyname('PAYCODE').Asstring;
    7 :Result := HQuery1.Fieldbyname('OFFICCOD').Asstring;
    8 :Result := HQuery1.Fieldbyname('PONO').Asstring;
    9 :Result := HQuery1.Fieldbyname('INVNO').Asstring;
   10 :Result := HQuery1.Fieldbyname('BILLNO').Asstring;
   11 :Result := HQuery1.Fieldbyname('BKCODE').Asstring;
   12 :Result := HQuery1.Fieldbyname('BKCODE').Asstring;
   13 :Result := HQuery1.Fieldbyname('INVNO').Asstring;
   14 :Result := HQuery1.Fieldbyname('TAXREFNO').Asstring;
   15 :Result := HQuery1.Fieldbyname('FORCODE').Asstring;

  end;
end;

procedure TSearchDlgAr.SearchButtonClick(Sender: TObject);
begin
  With HQuery1 Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
    0:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT  PARTNO,DESC1,GROUP1,PRICE1 FROM INVMAST WHERE PARTNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT  PARTNO,DESC1,GROUP1,PRICE1 FROM INVMAST WHERE DESC1 LIKE :EDIT1');
      end;
    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM LOCATMST WHERE LOCATCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM LOCATMST WHERE LOCATNAM LIKE :EDIT1');
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
        SQL.ADD('SELECT * FROM ARMAST WHERE CUSCOD LIKE :EDIT1 ORDER BY CUSCOD');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM ARMAST WHERE NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM ARMAST WHERE NAME2 LIKE :EDIT1 ORDER BY NAME2');
      end;
    6:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PAYTYP WHERE PAYCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM PAYTYP WHERE PAYDESC LIKE :EDIT1');
      end;
    7:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM OFFICER WHERE OFFICCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM OFFICER WHERE OFFICNAM LIKE :EDIT1');
      end;
    8:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PO_INVOI WHERE PONO LIKE :EDIT1');
      end;
    9:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM ARINVOI WHERE INVNO LIKE :EDIT1 AND KANG>0 ORDER BY INVNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM ARINVOI WHERE CUSCODE LIKE :EDIT1 AND KANG>0 ORDER BY CUSCODE');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM ARINVOI WHERE JOBNO LIKE :EDIT1 AND KANG>0 ORDER BY JOBNO ');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT * FROM ARINVOI WHERE TAXNO LIKE :EDIT1 AND KANG>0 ORDER BY TAXNO ');

      end;
   10:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM ARPAYTRN WHERE BILLNO LIKE :EDIT1 AND PAYCONT=:edit2 ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM ARPAYTRN WHERE CUSCODE LIKE :EDIT1 AND PAYCONT=:edit2 ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM ARPAYTRN WHERE JOBNO LIKE :EDIT1 AND PAYCONT=:edit2 ');
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT * FROM ARPAYTRN WHERE CANCELID LIKE :EDIT1 AND PAYCONT=:edit2 ');
        If OrderCombo.Itemindex=4 Then
        SQL.ADD('SELECT * FROM ARPAYTRN WHERE INVNO LIKE :EDIT1 AND PAYCONT=:edit2 ');


      end;
   11:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM BKMAST WHERE BKCODE LIKE :EDIT1');
      end;
   12:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM BOOK WHERE BKCODE LIKE :EDIT1 ORDER BY  BKCODE ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM BOOK WHERE BKNAME LIKE :EDIT1 ORDER BY  BKNAME ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM BOOK WHERE ACCOUNT LIKE :EDIT1 ORDER BY  ACCOUNT ');
      end;
    13:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM ARINVOI WHERE INVNO LIKE :EDIT1 '+XSC+' ORDER BY INVNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM ARINVOI WHERE CUSCODE LIKE :EDIT1 '+XSC+' ORDER BY CUSCODE');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM ARINVOI WHERE TAXNO LIKE :EDIT1 '+XSC+' ORDER BY TAXNO ');
      end;
    14:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM TAXSAL WHERE TAXREFNO LIKE :EDIT1 '+XSC+' ORDER BY TAXREFNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM TAXSAL WHERE CUSCOD LIKE :EDIT1 '+XSC+' ORDER BY CUSCOD');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM TAXSAL WHERE TAXNO LIKE :EDIT1 '+XSC+' ORDER BY TAXNO ');
      end;
    15:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PAYFOR WHERE FORCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM PAYFOR WHERE FORDESC LIKE :EDIT1');
      end;

    end;
    HQuery1.Params[0].Asstring := Uppercase('%'+SearchEd.TEXT+'%') ;
    If OrderCombo.Tag = 10 Then
    HQuery1.Params[1].Asstring := Xpaycon;

    HQuery1.Open;
    SFMain.Do_Show_DisplayFormat_Floating(HQuery1);
  End;
end;

procedure TSearchDlgAr.OrderComboChange(Sender: TObject);
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

procedure TSearchDlgAr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TSearchDlgAr.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TSearchDlgAr.CalcMax;
begin
   { ** Field Name & Title** }
  SelectFld := 'SELECT ';
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
    end
    Else
     SelectFld :=SelectFld+Fldgrd[I]+',';
    I:=I+1;
  end;
end;

procedure TSearchDlgAr.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;
end;

procedure TSearchDlgAr.SearchEdChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
  SearchButtonClick(Sender);
end;

procedure TSearchDlgAr.cxGridDBTableView1CustomDrawIndicatorCell(
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

procedure TSearchDlgAr.cxGridDBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSearchDlgAr.cxGridDBTableView1DataControllerGroupingChanged(
  Sender: TObject);
begin
  cxCheckBox1.Checked := False;
  cxCheckBox1.Enabled := ((HQuery1.RecordCount>0) AND
                          (cxGridDBTableView1.GroupedColumnCount>0));
end;

procedure TSearchDlgAr.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = true then
  cxGridDBTableView1.DataController.Groups.FullExpand else
  cxGridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TSearchDlgAr.cxGridDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   Begin
     BitBtn1.Click;
   End;
end;

procedure TSearchDlgAr.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
      SearchButtonClick(Sender);
      cxGrid1.SetFocus;
   End;
end;

end.
