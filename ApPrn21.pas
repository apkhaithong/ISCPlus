unit Apprn21;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, quickrpt, Qrctrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmApPrn21 = class(TForm)
    QuickReport: TQuickRep;
    Title: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    PageFooter: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    TCondpay: TFDTable;
    QApbill: TFDQuery;
    QAptrn: TFDQuery;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QAptrnINVNO: TStringField;
    QAptrnINVDATE: TDateField;
    QAptrnDUEDATE: TDateField;
    QAptrnBALANCE: TFloatField;
    QRBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QAppaytrn: TFDQuery;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmApPrn21: TFmApPrn21;
  Day1,Month1,Year1,WordAmt : String;

implementation
uses ApPrn20,Functn01;
{$R *.DFM}

procedure TFmApPrn21.FormCreate(Sender: TObject);
var Topm:double;
    N : integer;
begin
  Topm :=QuickReport.page.Topmargin;
  QuickReport.page.Topmargin := Topm+FmApPrn20.SpinEdit1.Value;

  With QAppaytrn Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT BILLNO,BILLDT,LOCAT,APCODE,TOTAL,DISAMT,NETTOT,INVNO,Flag '+
    'FROM APPAYTRN WHERE BILLNO=:Edit ');
    Params[0].AsString := FmApPrn20.Label6.caption;
    Open;
    If Bof and Eof Then
    SFMain.RaiseException('ไม่มีเลขที่ใบเสร็จนี้');

  End;
   //
  With QApbill Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.APBILNO,A.LOCAT,A.APCODE,A.BDATE,A.AMOUNT,B.APNAME,B.ADDR1,B.ADDR2 '+
    'FROM APBILL A,APMAST B WHERE A.APCODE=B.APCODE AND A.APBILNO=:Edit ');
    Params[0].AsString := QAppaytrn.Fieldbyname('Invno').Asstring;
    Open;
  End;
   QRLabel6.Caption  := 'เลขที่ใบวางบิล '+QAPbill.FieldByName('APBILNO').Asstring;
   QRLabel8.Caption  := 'เลขที่ใบเสร็จ  '+QAppaytrn.Fieldbyname('Billno').Asstring;

   ChqDatetoS(Day1,Month1,Year1,2,QAppaytrn.fieldByName('Billdt').AsDateTime);
   QRLabel11.Caption := 'วันที่ '+Day1+' '+Month1+' '+Year1;
   QRLabel13.Caption :=  'ชื่อเจ้าหนี้ : '+QAPbill.FieldByName('Apname').Asstring;
   QRLabel17.Caption :='ที่อยู่    : '+QAPbill.fieldByName('ADDR1').AsString;
   QRLabel4.Caption :='             '+QAPbill.fieldByName('ADDR2').AsString;

   With Qaptrn Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM APBILTR WHERE APBILNO=:Edit ');
     Params[0].AsString := QAppaytrn.Fieldbyname('Invno').Asstring;
     Open;
   End;

   MainChg(WordAmt,QAppaytrn.FieldByName('Nettot').AsFloat);
   QRLabel36.Caption := '('+WordAmt+')';

end;

procedure TFmApPrn21.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel7.Enabled := QAppaytrn.FieldByName('Flag').Asstring='C';
  
  If Qaptrn.Eof Then
  begin
    QRLabel2.enabled  := False;
    QRDBText7.enabled := True;
  end
  else
  begin
    QRLabel2.enabled  := True;
    QRDBText7.enabled := False;
  end;
end;










end.
