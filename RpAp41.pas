unit RpAp41;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, quickrpt, Qrctrls, Db,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TQRpAp_41 = class(TForm)
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRep: TQuickRep;
    QRBand5: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel1: TQRLabel;
    QApBill1: TFDQuery;
    QApBill1APBILNO: TStringField;
    QApBill1LOCAT: TStringField;
    QApBill1BDATE: TDateField;
    QApBill1APCODE: TStringField;
    QApBill1DATE1: TDateField;
    QApBill1AMOUNT: TFloatField;
    QApbiltr1: TFDQuery;
    QApbiltr1APBILNO: TStringField;
    QApbiltr1INVNO: TStringField;
    QApbiltr1INVDATE: TDateField;
    QApbiltr1DUEDATE: TDateField;
    QApbiltr1PAYAMT: TFloatField;
    TCondpay: TFDTable;
    QRSubDetail2: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SoQApBill1: TDataSource;
    QRLabel2: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape7: TQRShape;
    PageFooter: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRSysData5: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRpAp_41: TQRpAp_41;

implementation

uses RpAp40, USoftFirm;

{$R *.DFM}


procedure TQRpAp_41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TQRpAp_41.FormCreate(Sender: TObject);
begin
 TCondpay.Open ;
 QRLabel4.Caption := TCondpay.FieldByName('COMP_NM').Asstring ;

 QRLabel1.Caption := 'เจ้าหนี้ '+RpAp_40.EDIT1.Text+
                     'วันที่ '+RpAp_40.Edit_DateFrom.Text+
                     '  ถึงวันที่  '+RpAp_40.Edit_DateTo.Text ;

  with QApbill1 do
  begin
    Close;
    Sql.Clear;
    If RpAp_40.FSortRadio.ItemIndex = 0 Then
       Sql.Add('SELECT * FROM APBILL WHERE APCODE LIKE :XAPCODE '+
               'AND LOCAT LIKE :XLOC AND BDATE <= :LBDATE AND BDATE >= :FBDATE '+
               'ORDER BY APCODE ');
    If RpAp_40.FSortRadio.ItemIndex = 1 Then
       Sql.Add('SELECT * FROM APBILL WHERE APCODE LIKE :XAPCODE '+
               'AND LOCAT LIKE :XLOC  AND BDATE <= :LBDATE AND BDATE >= :FBDATE '+
               'ORDER BY LOCAT ');
    If RpAp_40.FSortRadio.ItemIndex = 2 Then
       Sql.Add('SELECT * FROM APBILL WHERE APCODE LIKE :XAPCODE '+
               'AND LOCAT LIKE :XLOC AND BDATE <= :LBDATE AND BDATE >= :FBDATE '+
               'ORDER BY BDATE ');
    Params[0].Asstring := RpAp_40.Edit1.Text+'%';
    Params[1].AsString := RpAp_40.Edit_Locat.Text+'%';
    Params[2].AsDate   := RpAp_40.Edit_DateTo.Date;
    Params[3].AsDate   := RpAp_40.Edit_DateFrom.Date;
    Open;
  end;
  if QApbill1.Bof And QApbill1.Eof then
     SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');

  QApbiltr1.MasterSource := SoQApBill1;
  with QApbiltr1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT  INVNO,INVDATE,DUEDATE,PAYAMT,APBILNO FROM APBILTR '+
            ' WHERE  APBILNO = :APBILNO  ');
    Open;
  end;
end;

procedure TQRpAp_41.QRBand1BeforePrint(var PrintBand: Boolean);
begin
 QRLabel1.Caption := 'เจ้าหนี้ '+RpAp_40.EDIT1.Text+'วันที่ '+RpAp_40.Edit_DateFrom.Text+ '  ถึงวันที่ '+RpAp_40.Edit_DateTo.Text ;
end;


end.
