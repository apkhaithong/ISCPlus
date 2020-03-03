unit Srchfin;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, RzDBGrid, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomPopupMenu, cxGridPopupMenu, ComCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Menus, cxLookAndFeelPainters, cxButtons, cxCheckBox,
  AdvShapeButton, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  AdvGlowButton, cxGridCardView, cxGridDBCardView, cxLookAndFeels, cxNavigator,
  dxDateRanges, dxBarBuiltInMenu, cxGridCustomLayoutView, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxImageComboBox;

type
  TSearchfin = class(TForm)
    DataSource: TDataSource;
    HQuery1: TFDQuery;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    SearchButton: TAdvGlowButton;
    OrderCombo: TcxComboBox;
    OkBtn: TcxButton;
    CancelBtn: TcxButton;
    SearchEd: TcxTextEdit;
    AdvShapeButton1: TAdvShapeButton;
    cxCheckBox1: TcxCheckBox;
    Panel1: TPanel;
    DBGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridLevel2: TcxGridLevel;
    TypeCombo: TcxComboBox;
    Label4: TLabel;
    Label1: TLabel;
    cbViewdata: TcxImageComboBox;
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TypeComboChange(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1DataControllerGroupingChanged(Sender: TObject);
    procedure TypeComboPropertiesChange(Sender: TObject);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    NewKeyno, Xsrch, Keyno2, XPayTyp, XPayfor: string;
    property Keyno: string read GetKeyno;
    function ShowModalFinall: Integer;
    function ShowModalTmbill: Integer;
  end;

var
  Searchfin: TSearchfin;
  Title: array[0..18] of string;
  Fldgrd: array[0..18] of string;
  I, Max: Word;

implementation

uses
  USoftFirm, Dmsec;

{$R *.DFM}

function TSearchfin.ShowModalFinall: Integer;
begin
  case TypeCombo.ItemIndex of
    0:
      begin
       //---ขายสด---
        Title[0] := 'เลขสัญญา';
        Title[1] := 'ชื่อ';
        Title[2] := 'นามสกุล';
        Title[3] := 'สาขา';
        Title[4] := 'เลขถัง';
        Title[5] := 'วันขาย';
        Title[6] := 'ราคาขาย';
        Title[7] := 'ชำระแล้ว';
        Title[8] := 'เช็คยังไม่ถึงดิว';
        Title[9] := 'ยอดคงเหลือ';
        Title[10] := 'เครดิต(วัน)';
        Title[11] := 'วันดิว';
        Title[12] := 'รหัสลูกค้า';
        Title[13] := 'เลขที่จอง';

        Fldgrd[0] := 'CONTNO';
        Fldgrd[1] := 'NAME1';
        Fldgrd[2] := 'NAME2';
        Fldgrd[3] := 'LOCAT';
        Fldgrd[4] := 'STRNO';
        Fldgrd[5] := 'SDATE';
        Fldgrd[6] := 'TOTPRC';
        Fldgrd[7] := 'SMPAY';
        Fldgrd[8] := 'SMCHQ';
        Fldgrd[9] := 'BALANCE';
        Fldgrd[10] := 'CREDTM';
        Fldgrd[11] := 'DUEDT';
        Fldgrd[12] := 'CUSCOD';
        Fldgrd[13] := 'RESVNO';

        OrderCombo.Properties.Items.Clear;
        OrderCombo.Properties.Items.Add(Title[0]);
        OrderCombo.Properties.Items.Add(Title[1]);
        OrderCombo.Properties.Items.Add(Title[2]);
        OrderCombo.Properties.Items.Add(Title[4]);
        OrderCombo.Properties.Items.Add(Title[12]);
        OrderCombo.Properties.Items.Add(Title[13]);
        OrderCombo.Properties.Items.Add('All field...');
        OrderCombo.ItemIndex := 6;
       { ** Field Name & Title** }
        CalcMax;
       //
        OrderComboChange(nil);
        Caption := 'Help ขายสด ';
        Result := ShowModal;
      end;
    1:
      begin                  //2
       //---ขายไฟแนนซ์--
        Title[0] := 'เลขสัญญา';
        Title[1] := 'ชื่อ';
        Title[2] := 'นามสกุล';
        Title[3] := 'สาขา';
        Title[4] := 'เลขถัง';
        Title[5] := 'วันขาย';
        Title[6] := 'จำนวนเงิน';
        Title[7] := 'ชำระแล้ว';
        Title[8] := 'เช็คยังไม่ถึงดิว';
        Title[9] := 'ยอดคงเหลือ';
        Title[10] := 'ดาวน์+จอง';
        Title[11] := 'ชำระดาวน์+จอง';
        Title[12] := 'ค้างดาวน์+จอง';
        Title[13] := 'ยอดส่งไฟแนนซ์';
        Title[14] := 'รับจากไฟแนนซ์';
        Title[15] := 'ค้างรับจากไฟแนนซ์';
        Title[16] := 'รหัสไฟแนนซ์';
        Title[17] := 'รหัสลูกค้า';

        Fldgrd[0] := 'CONTNO';
        Fldgrd[1] := 'NAME1';
        Fldgrd[2] := 'NAME2';
        Fldgrd[3] := 'LOCAT';
        Fldgrd[4] := 'STRNO';
        Fldgrd[5] := 'SDATE';
        Fldgrd[6] := 'TOTPRC';
        Fldgrd[7] := 'SMPAY';
        Fldgrd[8] := 'SMCHQ';
        Fldgrd[9] := 'BALANCE';
        Fldgrd[10] := 'TOTDWN';
        Fldgrd[11] := 'PAYDWN';
        Fldgrd[12] := 'BALDWN';
        Fldgrd[13] := 'TOTFINC';
        Fldgrd[14] := 'PAYFIN';
        Fldgrd[15] := 'BALFINC';
        Fldgrd[16] := 'FINCOD';
        Fldgrd[17] := 'CUSCOD';

        OrderCombo.Properties.Items.Clear;
        OrderCombo.Properties.Items.Add(Title[0]);
        OrderCombo.Properties.Items.Add(Title[1]);
        OrderCombo.Properties.Items.Add(Title[2]);
        OrderCombo.Properties.Items.Add(Title[4]);
        OrderCombo.Properties.Items.Add(Title[17]);
        OrderCombo.Properties.Items.Add('All field...');
        OrderCombo.ItemIndex := 5;
       { ** Field Name & Title** }
        CalcMax;
       //
        OrderComboChange(nil);
        Caption := 'Help ขายไฟแนนซ์';
        Result := ShowModal;
      end;
    2:
      begin
       //---ขายส่ง--
        Title[0] := 'เลขสัญญา';
        Title[1] := 'ชื่อ';
        Title[2] := 'นามสกุล';
        Title[3] := 'สาขา';
        Title[4] := 'วันขาย';
        Title[5] := 'จำนวนเงิน';
        Title[6] := 'ชำระแล้ว';
        Title[7] := 'เช็คยังไม่ถึงดิว';
        Title[8] := 'ยอดคงเหลือ';
        Title[9] := 'รหัสลูกค้า';

        Fldgrd[0] := 'CONTNO';
        Fldgrd[1] := 'NAME1';
        Fldgrd[2] := 'NAME2';
        Fldgrd[3] := 'LOCAT';
        Fldgrd[4] := 'SDATE';
        Fldgrd[5] := 'TOTPRC';
        Fldgrd[6] := 'SMPAY';
        Fldgrd[7] := 'SMCHQ';
        Fldgrd[8] := 'BALANCE';
        Fldgrd[9] := 'CUSCOD';

        OrderCombo.Properties.Items.Clear;
        OrderCombo.Properties.Items.Add(Title[0]);
        OrderCombo.Properties.Items.Add(Title[1]);
        OrderCombo.Properties.Items.Add(Title[2]);
        OrderCombo.Properties.Items.Add(Title[9]);
        OrderCombo.Properties.Items.Add('All field...');
        OrderCombo.ItemIndex := 4;
       { ** Field Name & Title** }
        CalcMax;
       //
        OrderComboChange(nil);
        Caption := 'Help ขายส่ง';
        Result := ShowModal;
      end;
    3:
      begin                         //4
       //---ขายอุปกรณ์--
        Title[0] := 'เลขสัญญา';
        Title[1] := 'ชื่อ';
        Title[2] := 'นามสกุล';
        Title[3] := 'สาขา';
        Title[4] := 'วันขาย';
        Title[5] := 'จำนวนเงิน';
        Title[6] := 'ชำระแล้ว';
        Title[7] := 'เช็คยังไม่ถึงดิว';
        Title[8] := 'ยอดคงเหลือ';
        Title[9] := 'รหัสลูกค้า';

        Fldgrd[0] := 'CONTNO';
        Fldgrd[1] := 'NAME1';
        Fldgrd[2] := 'NAME2';
        Fldgrd[3] := 'LOCAT';
        Fldgrd[4] := 'SDATE';
        Fldgrd[5] := 'OPTPTOT';
        Fldgrd[6] := 'SMPAY';
        Fldgrd[7] := 'SMCHQ';
        Fldgrd[8] := 'BALANCE';
        Fldgrd[9] := 'CUSCOD';

        OrderCombo.Properties.Items.Clear;
        OrderCombo.Properties.Items.Add(Title[0]);
        OrderCombo.Properties.Items.Add(Title[1]);
        OrderCombo.Properties.Items.Add(Title[2]);
        OrderCombo.Properties.Items.Add(Title[9]);
        OrderCombo.Properties.Items.Add('All field...');
        OrderCombo.ItemIndex := 4;
       { ** Field Name & Title** }
        CalcMax;
       //
        OrderComboChange(nil);
        Caption := 'Help ขายอุปกรณ์เสริม';
        Result := ShowModal;
      end;
    4:
      begin              //5
       //---เงินจอง---
        Title[0] := 'เลขที่จอง';
        Title[1] := 'ชื่อ';
        Title[2] := 'นามสกุล';
        Title[3] := 'สาขา';
        Title[4] := 'วันที่จอง';
        Title[5] := 'จำนวนเงิน';
        Title[6] := 'ชำระแล้ว';
        Title[7] := 'เช็คยังไม่ถึงดิว';
        Title[8] := 'ยอดคงเหลือ';
        Title[9] := 'รหัสลูกค้า';

        Fldgrd[0] := 'RESVNO';
        Fldgrd[1] := 'NAME1';
        Fldgrd[2] := 'NAME2';
        Fldgrd[3] := 'LOCAT';
        Fldgrd[4] := 'RESVDT';
        Fldgrd[5] := 'RESPAY';
        Fldgrd[6] := 'SMPAY';
        Fldgrd[7] := 'SMCHQ';
        Fldgrd[8] := 'BALANCE';
        Fldgrd[9] := 'CUSCOD';

        OrderCombo.Properties.Items.Clear;
        OrderCombo.Properties.Items.Add(Title[0]);
        OrderCombo.Properties.Items.Add(Title[1]);
        OrderCombo.Properties.Items.Add(Title[2]);
        OrderCombo.Properties.Items.Add(Title[9]);
        OrderCombo.Properties.Items.Add('All field...');
        OrderCombo.ItemIndex := 4;
       { ** Field Name & Title** }
        CalcMax;
       //
        OrderComboChange(nil);
        Caption := 'Help เงินจอง ';
        Result := ShowModal;
      end;
    5:
      begin                                      //6
       //---ลูกหนี้อื่น--
        Title[0] := 'เลขสัญญาลูกหนี้อื่น';
        Title[1] := 'ชื่อ';
        Title[2] := 'นามสกุล';
        Title[3] := 'สาขา';
        Title[4] := 'ชำระค่า';
        Title[5] := 'วันขาย';
        Title[6] := 'จำนวนเงิน';
        Title[7] := 'ชำระแล้ว';
        Title[8] := 'เช็คยังไม่ถึงดิว';
        Title[9] := 'ยอดคงเหลือ';
        Title[10] := 'รหัสลูกค้า';
        Title[11] := 'เลขสัญญา';

        Fldgrd[0] := 'ARCONT';
        Fldgrd[1] := 'NAME1';
        Fldgrd[2] := 'NAME2';
        Fldgrd[3] := 'LOCAT';
        Fldgrd[4] := 'PAYFOR';
        Fldgrd[5] := 'ARDATE';
        Fldgrd[6] := 'PAYAMT';
        Fldgrd[7] := 'SMPAY';
        Fldgrd[8] := 'SMCHQ';
        Fldgrd[9] := 'BALANCE';
        Fldgrd[10] := 'CUSCOD';
        Fldgrd[11] := 'CONTNO';

        OrderCombo.Properties.Items.Clear;
        OrderCombo.Properties.Items.Add(Title[0]);
        OrderCombo.Properties.Items.Add(Title[1]);
        OrderCombo.Properties.Items.Add(Title[2]);
        OrderCombo.Properties.Items.Add(Title[10]);
        OrderCombo.Properties.Items.Add(Title[11]);
        OrderCombo.Properties.Items.Add('All field...');
        OrderCombo.ItemIndex := 5;

        CalcMax;
       //
        OrderComboChange(nil);
        Caption := 'Help ลูกหนี้อื่น ๆ';
        Result := ShowModal;
      end;
  {5 :begin                     //7
       //---ลูกค่าทะเบียน--
       Title[0] := 'เลขสัญญา';
       Title[1] := 'ชื่อ';
       Title[2] := 'นามสกุล';
       Title[3] := 'เลขตัวถัง';
       Title[4] := 'เลขทะเบียน';
       Title[5] := 'วันที่แจ้งต่อ';
       Title[6] := 'ค่าทะเบียน';
       Title[7] := 'ประเภทการขาย';
       Title[8] := 'เลขที่รับแจ้ง';
       Title[9] := 'ค่าภาษี';
       Title[10] := 'รับภาษีแล้ว';

       Fldgrd[0]  := 'CONTNO';
       Fldgrd[1]  := 'NAME1';
       Fldgrd[2]  := 'NAME2';
       Fldgrd[3]  := 'STRNO';
       Fldgrd[4]  := 'REGNO';
       Fldgrd[5]  := 'ACCEPDT';
       Fldgrd[6]  := 'REGRECPAY';
       Fldgrd[7]  := 'TSALE';
       Fldgrd[8]  := 'ID_NO';
       Fldgrd[9]  := 'REGRECPAY';
       Fldgrd[10]  := 'SMPAY';


       OrderCombo.Properties.Items.Clear;
       OrderCombo.Properties.Items.Add(Title[0]);
       OrderCombo.Properties.Items.Add(Title[1]);
       OrderCombo.Properties.Items.Add(Title[2]);
       OrderCombo.Properties.Items.Add(Title[3]);
       OrderCombo.Properties.Items.Add(Title[4]);
       OrderCombo.Properties.Items.Add(Title[8]);
       OrderCombo.ItemIndex := 0;
       CalcMax;
       //
       OrderComboChange(nil);
       Caption := 'Help รับชำระค่าทะเบียน';
       Result  := ShowModal;
     End;
  6 :begin                        //8
       //---ลูกค่า พรบ.--
       Title[0] := 'เลขสัญญา';
       Title[1] := 'ชื่อ';
       Title[2] := 'นามสกุล';
       Title[3] := 'เลขตัวถัง';
       Title[4] := 'เลขทะเบียน';
       Title[5] := 'วันที่แจ้งต่อ';
       Title[6] := 'ค่าทะเบีย';
       Title[7] := 'ประเภทการขาย';
       Title[8] := 'เลขที่รับแจ้ง';
       Title[9] := 'ค่า พรบ.';
       Title[10] := 'รับค่า พรบ. แล้ว';

       Fldgrd[0]  := 'CONTNO';
       Fldgrd[1]  := 'NAME1';
       Fldgrd[2]  := 'NAME2';
       Fldgrd[3]  := 'STRNO';
       Fldgrd[4]  := 'REGNO';
       Fldgrd[5]  := 'ACCEPDT';
       Fldgrd[6]  := 'PRBPAY';
       Fldgrd[7]  := 'TSALE';
       Fldgrd[8]  := 'ID_NO';
       Fldgrd[9]  := 'PRBPAY';
       Fldgrd[10]  := 'SMPAY';

       OrderCombo.Properties.Items.Clear;
       OrderCombo.Properties.Items.Add(Title[0]);
       OrderCombo.Properties.Items.Add(Title[1]);
       OrderCombo.Properties.Items.Add(Title[2]);
       OrderCombo.Properties.Items.Add(Title[3]);
       OrderCombo.Properties.Items.Add(Title[4]);
       OrderCombo.Properties.Items.Add(Title[8]);
       OrderCombo.ItemIndex := 0;
       CalcMax;
       //
       OrderComboChange(nil);
       Caption := 'Help รับชำระค่า พรบ.';
       Result  := ShowModal;
     End;}
  end;
end;

function TSearchfin.ShowModalTmbill: Integer;
begin
  TypeCombo.Visible := False;
  Label4.Visible := False;
  OrderCombo.Tag := 1;

  Title[0] := 'ใบรับชั่วคราว';
  Title[1] := 'วันที่รับ';
  Title[2] := 'เลขใบเสร็จ';
  Title[3] := 'เลขที่ใบกำกับ';
  Title[4] := 'ชื่อ';
  Title[5] := 'นามสกุล';
  Title[6] := 'สาขา';
  Title[7] := 'จำนวนเงิน';
  Title[8] := 'เลขที่เช็ค';
  Title[9] := 'สถานะ';

  Fldgrd[0] := 'TMBILL';
  Fldgrd[1] := 'TMBILDT';
  Fldgrd[2] := 'BILLNO';
  Fldgrd[3] := 'TAXNO';
  Fldgrd[4] := 'NAME1';
  Fldgrd[5] := 'NAME2';
  Fldgrd[6] := 'LOCATRECV';
  Fldgrd[7] := 'TOTAL';
  Fldgrd[8] := 'CHQNO';
  Fldgrd[9] := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[8]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ใบรับชั่วคราว';
  Result := ShowModal;
end;

function TSearchfin.GetKeyno: string;
begin
  if HQuery1.Active then
    if (OrderCombo.Tag = 0) and (TypeCombo.Visible) then
      case TypeCombo.itemindex of
        0:
          Result := HQuery1.Fieldbyname('CONTNO').Asstring;
        1:
          Result := HQuery1.Fieldbyname('CONTNO').Asstring;
        2:
          Result := HQuery1.Fieldbyname('CONTNO').Asstring;
        3:
          Result := HQuery1.Fieldbyname('CONTNO').Asstring;
        4:
          Result := HQuery1.Fieldbyname('RESVNO').Asstring;
        5:
          Result := HQuery1.Fieldbyname('ARCONT').Asstring;
      end
    else
      case OrderCombo.Tag of
        1:
          Result := HQuery1.Fieldbyname('TMBILL').Asstring;
      end;
end;

procedure TSearchfin.SearchButtonClick(Sender: TObject);
var
  SqlText: string;
begin
  SqlText := '';
  with HQuery1 do
  begin
    Close;
    SQL.Clear;
    case TypeCombo.itemindex of
      0:
        begin
          SqlText := 'SELECT A.CONTNO,B.NAME1,B.NAME2,A.LOCAT,A.STRNO,A.SDATE,A.TOTPRC,A.SMPAY,' +
            'A.SMCHQ,A.TOTPRC-A.SMPAY-A.SMCHQ AS BALANCE,A.CREDTM,A.DUEDT,A.CUSCOD,A.RESVNO,' +
            'A.SALCOD  FROM ARCRED A,CUSTMAST B  WHERE A.CUSCOD=B.CUSCOD ';
          if OrderCombo.Itemindex = 0 then
            SQL.ADD(SqlText + ' AND A.CONTNO LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 1 then
            SQL.ADD(SqlText + ' AND B.NAME1 LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 2 then
            SQL.ADD(SqlText + ' AND B.NAME2 LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 3 then
            SQL.ADD(SqlText + ' AND A.STRNO LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 4 then
            SQL.ADD(SqlText + ' AND A.CUSCOD LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 5 then
            SQL.ADD(SqlText + ' AND A.RESVNO LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 6 then
            SQL.ADD(SqlText + ' AND ((A.RESVNO LIKE :EDIT1) or (A.CONTNO LIKE :EDIT1) or (B.NAME1 LIKE :EDIT1) ' +
              'or (B.NAME2 LIKE :EDIT1) or (A.STRNO LIKE :EDIT1) or (A.CUSCOD LIKE :EDIT1)) ' +
              'ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
        end;
      1:
        begin
          SqlText := 'SELECT A.CONTNO,A.CUSCOD,A.LOCAT,B.NAME1,B.NAME2,A.NDAWN,A.VATDWN,A.PAYDWN,A.PAYFIN,A.NFINAN,A.VATFIN, ' +
            'A.RESVNO,A.TOTPRC,A.SMPAY,(A.TOTPRC+A.PAYDWN)-(A.SMPAY+A.SMCHQ) AS BALANCE,A.SMCHQ,A.NDAWN+A.VATDWN AS TOTDWN,' +
            'CASE WHEN A.TOTDWN = 0 THEN A.TOTDWN ELSE A.PAYDWN END PAYDWN,' +
            'CASE WHEN A.TOTDWN = 0 THEN 0 ELSE A.NDAWN+A.VATDWN-A.PAYDWN END AS BALDWN,A.NFINAN+A.VATFIN AS TOTFINC,' +
            'A.PAYFIN,A.NFINAN+A.VATFIN-A.PAYFIN AS BALFINC,A.SDATE,A.STRNO,A.FINCOD ' +
            'FROM ARFINC A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD  ';
          if OrderCombo.Itemindex = 0 then
            SQL.ADD(SqlText + ' AND A.CONTNO LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 1 then
            SQL.ADD(SqlText + ' AND B.NAME1 LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 2 then
            SQL.ADD(SqlText + ' AND B.NAME2 LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 3 then
            SQL.ADD(SqlText + ' AND A.STRNO LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 4 then
            SQL.ADD(SqlText + ' AND A.CUSCOD LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 5 then
            SQL.ADD(SqlText + ' AND ((A.CONTNO LIKE :EDIT1) or (B.NAME1 LIKE :EDIT1) or (B.NAME2 LIKE :EDIT1) ' +
              'or (A.STRNO LIKE :EDIT1) or (A.CUSCOD LIKE :EDIT1)) ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
        end;
      2:
        begin
          SqlText := 'SELECT A.CONTNO,A.LOCAT,B.NAME1,B.NAME2,A.SDATE,A.TOTPRC,A.SMPAY,' +
            'A.SMCHQ,A.TOTPRC-A.SMPAY-A.SMCHQ AS BALANCE,A.CUSCOD ' +
            'FROM AR_INVOI A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD AND A.TOTPRC>A.SMPAY ';
          if OrderCombo.Itemindex = 0 then
            SQL.ADD(SqlText + ' AND A.CONTNO LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 1 then
            SQL.ADD(SqlText + ' AND B.NAME1 LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 2 then
            SQL.ADD(SqlText + ' AND B.NAME2 LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 3 then
            SQL.ADD(SqlText + ' AND A.CUSCOD LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 4 then
            SQL.ADD(SqlText + ' AND ((A.CONTNO LIKE :EDIT1) or (B.NAME1 LIKE :EDIT1) or (B.NAME2 LIKE :EDIT1) ' +
              'or (A.CUSCOD LIKE :EDIT1)) ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
        end;
      3:
        begin
          SqlText := 'SELECT A.CONTNO,A.LOCAT,B.NAME1,B.NAME2,A.SDATE,A.OPTPTOT,A.SMPAY, ' +
            'A.SMCHQ,A.OPTPTOT-A.SMPAY-A.SMCHQ AS BALANCE,A.CUSCOD FROM AROPTMST A,CUSTMAST B ' +
            'WHERE A.CUSCOD=B.CUSCOD ';
          if OrderCombo.Itemindex = 0 then
            SQL.ADD(SqlText + ' AND A.CONTNO LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 1 then
            SQL.ADD(SqlText + ' AND B.NAME1 LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 2 then
            SQL.ADD(SqlText + ' AND B.NAME2 LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 3 then
            SQL.ADD(SqlText + ' AND A.CUSCOD LIKE :EDIT1 ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 4 then
            SQL.ADD(SqlText + ' AND ((A.CONTNO LIKE :EDIT1) or (B.NAME1 LIKE :EDIT1) or (B.NAME2 LIKE :EDIT1) ' +
              'or (A.CUSCOD LIKE :EDIT1)) ORDER BY A.SDATE DESC ' + cbViewdata.EditValue);
        end;
      4:
        begin
          SqlText := 'SELECT A.RESVNO,A.LOCAT,B.NAME1,B.NAME2,A.RESVDT,A.RESPAY,' +
            'A.SMPAY,A.SMCHQ,A.RESPAY-A.SMPAY-A.SMCHQ AS BALANCE,A.CUSCOD ' +
            'FROM ARRESV A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD ';
          if OrderCombo.Itemindex = 0 then
            SQL.ADD(SqlText + ' AND A.RESVNO LIKE :EDIT1 AND A.FLCANCLE <>''C'' ORDER BY A.RESVDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 1 then
            SQL.ADD(SqlText + ' AND B.NAME1 LIKE :EDIT1 AND A.FLCANCLE <>''C'' ORDER BY A.RESVDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 2 then
            SQL.ADD(SqlText + ' AND B.NAME2 LIKE :EDIT1 AND A.FLCANCLE <>''C'' ORDER BY A.RESVDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 3 then
            SQL.ADD(SqlText + ' AND A.CUSCOD LIKE :EDIT1 AND A.FLCANCLE <>''C'' ORDER BY A.RESVDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 4 then
            SQL.ADD(SqlText + ' AND ((A.RESVNO LIKE :EDIT1) or (B.NAME1 LIKE :EDIT1) or (B.NAME2 LIKE :EDIT1) ' +
              'or (A.CUSCOD LIKE :EDIT1)) ORDER BY A.RESVDT DESC ' + cbViewdata.EditValue);
        end;
      5:
        begin
          SqlText := 'SELECT A.ARCONT,A.LOCAT,B.NAME1,B.NAME2,A.PAYFOR,A.ARDATE,A.PAYAMT,A.SMPAY, ' +
            'A.SMCHQ,A.PAYAMT-A.SMPAY-A.SMCHQ AS BALANCE,A.CUSCOD FROM AROTHR A,CUSTMAST B ' +
            'WHERE A.CUSCOD=B.CUSCOD ';
          if OrderCombo.Itemindex = 0 then
            SQL.ADD(SqlText + ' AND A.ARCONT LIKE :EDIT1 AND A.PAYFOR LIKE :ED2 ORDER BY A.ARDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 1 then
            SQL.ADD(SqlText + ' AND B.NAME1 LIKE :EDIT1 AND A.PAYFOR LIKE :ED2 ORDER BY A.ARDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 2 then
            SQL.ADD(SqlText + ' AND B.NAME2 LIKE :EDIT1 AND A.PAYFOR LIKE :ED2 ORDER BY A.ARDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 3 then
            SQL.ADD(SqlText + ' AND A.CUSCOD LIKE :EDIT1 AND A.PAYFOR LIKE :ED2 ORDER BY A.ARDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 4 then
            SQL.ADD(SqlText + ' AND A.CONTNO LIKE :EDIT1 AND A.PAYFOR LIKE :ED2 ORDER BY A.ARDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 5 then
            SQL.ADD(SqlText + ' AND ((A.ARCONT LIKE :EDIT1) or (B.NAME1 LIKE :EDIT1) or (B.NAME2 LIKE :EDIT1) ' +
              'or (A.CONTNO LIKE :EDIT1) or (A.CUSCOD LIKE :EDIT1)) AND A.PAYFOR LIKE :ED2 ORDER BY A.ARDATE DESC ' + cbViewdata.EditValue);
        end;
    {5 :begin
          sqltext :='SELECT M.STRNO,M.CONTNO,M.CUSCOD,M.NAME1,M.NAME2,M.REGNO,T.ID_NO,T.ACCEPDT,T.REGRECPAY,T.SMPAY,T.SMCHQ '+
                    'FROM  TB_REGTRN T ,REGTAB M  WHERE M.STRNO=T.STRNO AND (T.REGRECPAY-(T.SMPAY+T.SMCHQ)>0) ';
         If OrderCombo.Itemindex=0 Then
            SQL .ADD( Sqltext+'AND M.CONTNO LIKE :EDIT1');
         If OrderCombo.Itemindex=1 Then
            SQL .ADD( Sqltext+'AND M.NAME1 LIKE :EDIT1');
         If OrderCombo.Itemindex=2 Then
            SQL .ADD( Sqltext+'AND M.NAME2 LIKE :EDIT1');
         If OrderCombo.Itemindex=3 Then
            SQL .ADD( Sqltext+'AND M.STRNO LIKE :EDIT1');
         If OrderCombo.Itemindex=4 Then
            SQL .ADD( Sqltext+'AND M.REGNO LIKE :EDIT1');
         If OrderCombo.Itemindex=5 Then
            SQL .ADD( Sqltext+'AND T.ID_NO LIKE :EDIT1');
       end;
    6 :begin
          sqltext :='SELECT M.STRNO,M.CONTNO,M.CUSCOD,M.NAME1,M.NAME2,M.REGNO,T.ID_NO,T.ACCEPDT,T.PRBPAY,T.SMPAY,T.SMCHQ '+
                    'FROM  TB_PRB T ,REGTAB M  WHERE M.STRNO=T.STRNO AND (T.PRBPAY-(T.SMPAY+T.SMCHQ)>0) ';
         If OrderCombo.Itemindex=0 Then
            SQL .ADD( Sqltext+'AND M.CONTNO LIKE :EDIT1');
         If OrderCombo.Itemindex=1 Then
            SQL .ADD( Sqltext+'AND M.NAME1 LIKE :EDIT1');
         If OrderCombo.Itemindex=2 Then
            SQL .ADD( Sqltext+'AND M.NAME2 LIKE :EDIT1');
         If OrderCombo.Itemindex=3 Then
            SQL .ADD( Sqltext+'AND M.STRNO LIKE :EDIT1');
         If OrderCombo.Itemindex=4 Then
            SQL .ADD( Sqltext+'AND M.REGNO LIKE :EDIT1');
        If OrderCombo.Itemindex=5 Then
            SQL .ADD( Sqltext+'AND T.ID_NO LIKE :EDIT1');
       end;}
    end;

    case OrderCombo.Tag of
      1:
        begin
          SqlText := 'SELECT A.TMBILL,A.TMBILDT,A.BILLNO,A.CUSCOD,B.NAME1,B.NAME2,' +
            'A.LOCATRECV,A.TOTAL,A.CHQNO,A.FLAG,A.TAXNO FROM CHQMAS A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD ';
          if OrderCombo.Itemindex = 0 then
            SQL.ADD(SqlText + ' AND A.TMBILL LIKE :EDIT1 ORDER BY A.TMBILDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 1 then
            SQL.ADD(SqlText + ' AND A.BILLNO LIKE :EDIT1 ORDER BY A.TMBILDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.ItemIndex = 2 then
            SQL.Add(SqlText + ' AND A.TAXNO LIKE :EDIT1 ORDER BY A.TMBILDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 3 then
            SQL.ADD(SqlText + ' AND B.NAME1 LIKE :EDIT1 ORDER BY A.TMBILDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 4 then
            SQL.ADD(SqlText + ' AND B.NAME2 LIKE :EDIT1 ORDER BY A.TMBILDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 5 then
            SQL.ADD(SqlText + ' AND A.CHQNO LIKE :EDIT1 AND (NOT(A.CHQNO IS NULL) OR A.CHQNO<>'''') ' +
              ' ORDER BY A.TMBILDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 6 then
            SQL.ADD(SqlText + ' AND (A.CHQNO LIKE :EDIT1 AND (NOT(A.CHQNO IS NULL) OR A.CHQNO<>'''') ' +
              ' or (A.TMBILL LIKE :EDIT1) or (A.BILLNO LIKE :EDIT1) or (A.TAXNO LIKE :EDIT1) ' +
              ' or (B.NAME1 LIKE :EDIT1) or (B.NAME2 LIKE :EDIT1))' +
              ' ORDER BY A.TMBILDT DESC ' + cbViewdata.EditValue);
        end;
    end;
    //if {(TypeCombo.itemindex=1) and} (OrderCombo.Itemindex=4) then
       //HQuery1.Params[0].AsFloat := StrToFloat(SearchEd.Text)
    //else
    HQuery1.Params[0].Asstring := Uppercase('%' + SearchEd.Text + '%');
    if TypeCombo.itemindex = 5 then
    begin
      if OrderCombo.Itemindex = 5 then
        HQuery1.Params[5].Asstring := XPayfor + '%'
      else
        HQuery1.Params[1].Asstring := XPayfor + '%';
    end;

    //if OrderCombo.Tag = 1 then
       //HQuery1.Params[1].Asstring := XPayTyp+'%';
    HQuery1.Open;
    SFMain.Do_Show_DisplayFormat_Floating(HQuery1);
  end;
end;

procedure TSearchfin.OrderComboChange(Sender: TObject);
var
  I, K: word;
  T1, F1: string;
begin
  SearchEd.Text := '';
  K := 0;
  I := 0;
  while (I <= Max) do
  begin
    if (Title[I] = OrderCombo.Text) then
    begin
      K := I;
      Break;
    end;
    I := I + 1;
  end;

  T1 := Title[0];
  Title[0] := Title[K];
  Title[K] := T1;

  F1 := Fldgrd[0];
  Fldgrd[0] := Fldgrd[K];
  Fldgrd[K] := F1;
  cxGridDBTableView1.ClearItems;
  for I := 0 to Max do
  begin
    cxGridDBTableView1.CreateColumn.DataBinding.FieldName := Fldgrd[I];
    cxGridDBTableView1.Columns[I].Caption := Title[I];
    if Fldgrd[I] = 'NAME1' then
      cxGridDBTableView1.Columns[I].Width := 60;
  end;
end;

procedure TSearchfin.SearchEdChange(Sender: TObject);
begin
  if SFMain.Xsrch = 'Y' then
    SearchButtonClick(Sender);
end;

procedure TSearchfin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TSearchfin.FormShow(Sender: TObject);
begin
  SearchEd.SetFocus;
end;

procedure TSearchfin.CalcMax;
begin
{ ** Field Name & Title** }
  I := 0;
  while I <= 18 do
  begin
    cxGridDBTableView1.CreateColumn.DataBinding.FieldName := Fldgrd[I];
    cxGridDBTableView1.Columns[I].Caption := Title[I];
    if Fldgrd[I] = '' then
    begin
      Max := I - 1;
      if Max < 0 then
        Max := 0;
      break;
    end;
    I := I + 1;
  end;
end;

procedure TSearchfin.FormCreate(Sender: TObject);
begin
  I := 0;
  while I <= 18 do
  begin
    Title[I] := '';
    Fldgrd[I] := '';
    I := I + 1;
  end;
end;

procedure TSearchfin.TypeComboChange(Sender: TObject);
begin
  OrderComboChange(Sender);
  SearchButtonClick(Sender);
end;

procedure TSearchfin.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    SearchButtonClick(Sender);
    DbGrid1.SetFocus;
  end;
end;

procedure TSearchfin.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = true then
    cxGridDBTableView1.DataController.Groups.FullExpand
  else
    cxGridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TSearchfin.cxGridDBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSearchfin.cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    OKBtn.Click;
  end;
end;

procedure TSearchfin.cxGridDBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AStyle: TcxStyle;
  IndNo: string;
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
    IndNo := ''
  else
    IndNo := IntToStr(AIndicatorViewInfo.GridRecord.Index + 1);

  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
    False, False, IndNo,
    AStyle.Font, AStyle.TextColor, AStyle.Color);
  ADone := True;
end;

procedure TSearchfin.cxGridDBTableView1DataControllerGroupingChanged(Sender: TObject);
begin
  if HQuery1.Active = True then
  begin
    cxCheckBox1.Checked := False;
    cxCheckBox1.Enabled := ((HQuery1.RecordCount > 0) and
      (cxGridDBTableView1.GroupedColumnCount > 0));
  end;
end;

procedure TSearchfin.TypeComboPropertiesChange(Sender: TObject);
begin
  {OrderComboChange(Sender);
  SearchButtonClick(Sender);}
end;

end.

