unit ArPrn11;

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
  TFmArPrn11 = class(TForm)
    TCondpay: TFDTable;
    QArbill: TFDQuery;
    QArtrn: TFDQuery;
    QArmast: TFDQuery;
    DataSource1: TDataSource;
    QJOB: TFDQuery;
    DataSource2: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmArPrn11: TFmArPrn11;
  Day1,Month1,Year1,WordAmt : String;

implementation
uses ArPrn10,Functn01;
{$R *.DFM}

procedure TFmArPrn11.FormCreate(Sender: TObject);
var Topm:double;
    N : integer;
begin
 Topm :=QuickReport.page.Topmargin;
 QuickReport.page.Topmargin := Topm+FmArPrn10.SpinEdit1.Value;

   With TCondpay Do
   Begin
     OPEN;
     QRLabel10.Caption := FieldByName('COMP_NM').Asstring;
     QRLabel12.Caption := FieldByName('COMP_ADR1').Asstring;
     QRLabel16.Caption := FieldByName('COMP_ADR2').Asstring;
     QRLabel18.Caption := 'TEL. '+FieldByName('TELP').Asstring;
     CLOSE;
   End;

   QArmast.Close;
   With QArbill Do
   Begin
     Close;
     Sql.Clear;

     Sql.Add('SELECT * FROM ARBILL WHERE ARBILNO=:Edit ');
     Params[0].AsString := FmArPrn10.Label6.caption;
     Open;
   End;
   //
   QArmast.Open;
   //

   QRLabel8.Caption  := 'เลขที่ใบวางบิล '+QArbill.FieldByName('ARBILNO').Asstring;

   ChqDatetoS(Day1,Month1,Year1,1,QArbill.fieldByName('BDATE').AsDateTime);
   QRLabel11.Caption := 'วันที่วางบิล   '+Day1+'/'+Month1+'/'+Year1;

   ChqDatetoS(Day1,Month1,Year1,1,QArbill.fieldByName('DATE1').AsDateTime);
   QRLabel4.Caption :=  'วันนัดรับเช็ค  '+Day1+'/'+Month1+'/'+Year1;
   QRLabel4.Enabled := QArbill.fieldByName('DATE1').Asstring<>'';
   
   QRLabel13.Caption :=  'ชื่อลูกค้า : '+QArmast.FieldByName('SNAM').Asstring+
                          QArmast.FieldByName('NAME1').Asstring+QArmast.FieldByName('NAME2').Asstring+
                          ' [ '+QArmast.fieldByName('CUSCOD').AsString+ ' ] ';

                          //'    เลขทะเบียน '+FieldByName('REGNO').Asstring;
   QRLabel17.Caption :='ที่อยู่    : '+QArmast.fieldByName('ADDR1').AsString+' ถ.'+
                          QArmast.fieldByName('ADDR2').AsString+' ต.'+QArmast.fieldByName('Tumb').AsString+
                          ' อ.'+QArmast.fieldByName('Aump').AsString+' จ.'+QArmast.fieldByName('Prov').AsString+
                          ' '+QArmast.fieldByName('Zip').AsString;

   QJob.Close;
   With Qartrn Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM ARBILTR WHERE ARBILNO=:Edit ');
     Params[0].AsString := FmArPrn10.Label6.caption;
     Open;
   End;
   //
   QJob.Open;
   //
   MainChg(WordAmt,QArbill.FieldByName('Amount').AsFloat);
   QRLabel36.Caption := '('+WordAmt+')';

end;

procedure TFmArPrn11.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  QRLabel3.Caption := QArbill.Fieldbyname('Desc').Asstring;

  If Qartrn.Eof Then
  begin
    QRLabel2.enabled  := False;
    QRDBText7.enabled := True;
    QRLabel36.enabled := True;
    QRLabel21.enabled := True;
    QRLabel22.enabled := True;
    QRLabel23.enabled := True;
    QRLabel24.enabled := True;
  end
  else
  begin
    QRLabel2.enabled  := True;
    QRDBText7.enabled := False;
    QRLabel36.enabled := False;
    QRLabel21.enabled := False;
    QRLabel22.enabled := False;
    QRLabel23.enabled := False;
    QRLabel24.enabled := False;
  end;
end;








end.
