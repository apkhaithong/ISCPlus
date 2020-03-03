unit Apprn11;

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
  TFmApPrn11 = class(TForm)
    TCondpay: TFDTable;
    QApbill: TFDQuery;
    QAptrn: TFDQuery;
    QAptrnINVNO: TStringField;
    QAptrnINVDATE: TDateField;
    QAptrnDUEDATE: TDateField;
    QAptrnBALANCE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmApPrn11: TFmApPrn11;
  Day1,Month1,Year1,WordAmt : String;

implementation
uses ApPrn10,Functn01;
{$R *.DFM}

procedure TFmApPrn11.FormCreate(Sender: TObject);
var Topm:double;
    N : integer;
begin
  Topm :=QuickReport.page.Topmargin;
  QuickReport.page.Topmargin := Topm+FmApPrn10.SpinEdit1.Value;

  With QApbill Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.APBILNO,A.LOCAT,A.APCODE,A.BDATE,A.AMOUNT,B.APNAME,B.ADDR1,B.ADDR2 '+
            'FROM APBILL A,APMAST B WHERE (A.APCODE=B.APCODE) and A.APBILNO=:Edit ');
    Params[0].AsString := FmApPrn10.Label6.caption;
    Open;
  End;
   //

   QRLabel8.Caption  := 'เลขที่ใบวางบิล '+QAPbill.FieldByName('APBILNO').Asstring;
   ChqDatetoS(Day1,Month1,Year1,2,QApbill.fieldByName('BDATE').AsDateTime);
   QRLabel11.Caption := 'วันที่ '+Day1+' '+Month1+' '+Year1;
   QRLabel13.Caption :=  'ชื่อเจ้าหนี้ : '+QAPbill.FieldByName('Apname').Asstring;
   QRLabel17.Caption :='ที่อยู่    : '+QAPbill.fieldByName('ADDR1').AsString;
   QRLabel4.Caption :='             '+QAPbill.fieldByName('ADDR2').AsString;

   With Qaptrn Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM APBILTR WHERE APBILNO=:Edit ');
     Params[0].AsString := FmApPrn10.Label6.caption;
     Open;
   End;

   MainChg(WordAmt,QApbill.FieldByName('Amount').AsFloat);
   QRLabel36.Caption := '('+WordAmt+')';

end;

procedure TFmApPrn11.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
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
