unit RpAp51;

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
  TQRpAp_51 = class(TForm)
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRep: TQuickRep;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QApbill2: TFDQuery;
    QApbill2APBILNO: TStringField;
    QApbill2LOCAT: TStringField;
    QApbill2BDATE: TDateField;
    QApbill2APCODE: TStringField;
    QApbill2DATE1: TDateField;
    QApbill2AMOUNT: TFloatField;
    TCondpay: TFDTable;
    QRShape1: TQRShape;
    PageFooter: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRSysData5: TQRSysData;
    QRDBCalc1: TQRDBCalc;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRpAp_51: TQRpAp_51;

implementation

uses RpAp50, USoftFirm;

{$R *.DFM}

procedure TQRpAp_51.FormCreate(Sender: TObject);
begin
 TCondpay.Open ;
 QRLabel4.Caption := TCondpay.FieldByName('COMP_NM').Asstring ;


 QRLabel6.caption   := 'เจ้าหนี้'+RpAp_50.EDIT1.Text+' วันที่'+RpAp_50.Edit_DateFrom.Text+' ถึงวันที่'+RpAp_50.Edit_DateTo.Text ;

  with QApbill2 do
  begin
   Close;
   Sql.Clear;
   If RpAp_50.FSortRadio.ItemIndex = 0 Then
    Sql.Add('SELECT * FROM APBILL '+
            ' WHERE APCODE LIKE :XAPCODE AND DATE1 <= :LDATE1 AND DATE1 >= :FDATE1 '+
            ' AND LOCAT LIKE :XLOC ORDER BY APCODE ');
   If RpAp_50.FSortRadio.ItemIndex = 1 Then
    Sql.Add('SELECT * FROM APBILL '+
            ' WHERE APCODE LIKE :XAPCODE AND DATE1 <= :LBDATE AND DATE1 >= :FDATE1 '+
            ' AND LOCAT LIKE :XLOC ORDER BY LOCAT ');
   If RpAp_50.FSortRadio.ItemIndex = 2 Then
       Sql.Add('SELECT * FROM APBILL '+
            ' WHERE APCODE LIKE :XAPCODE AND DATE1 <= :LDATE1 AND DATE1 >= :FDATE1 '+
            ' AND LOCAT LIKE :XLOC ORDER BY BDATE ');
   Params[0].Asstring := RpAp_50.Edit1.Text+'%' ;
   Params[1].AsDate   := RpAp_50.Edit_DateTo.Date;
   Params[2].AsDate   := RpAp_50.Edit_Datefrom.Date;
   Params[3].AsString := RpAp_50.Edit_Locat.Text+'%';
   Open;
  end;
 if QApbill2.Bof And QApbill2.Eof then
   SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');
end;

procedure TQRpAp_51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;






end.
