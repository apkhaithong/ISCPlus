unit Spprn32;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Quickrpt, StdCtrls, ExtCtrls, DB, Qrctrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFSpprn32 = class(TForm)
    QPnsp21: TFDQuery;
    Query2: TFDQuery;
    QPnsp22: TFDQuery;
    QPnsp22INVNO: TStringField;
    QPnsp22JOBNO: TStringField;
    QPnsp22LOCAT: TStringField;
    QPnsp22CODE: TStringField;
    QPnsp22DESC1: TStringField;
    QPnsp22UCOST: TFloatField;
    QPnsp22UPRICE: TFloatField;
    QPnsp22QTY: TFloatField;
    QPnsp22TOTPRIC: TFloatField;
    QPnsp22REDU: TFloatField;
    QPnsp22NETPRIC: TFloatField;
    QPnsp22TOTCOST: TFloatField;
    QPnsp22SERVCOD: TStringField;
    QPnsp22SERTIME: TFloatField;
    QPnsp22OTTIME: TFloatField;
    QPnsp22JOBTYP: TStringField;
    QPnsp22FLAG: TStringField;
    QPnsp22USERID: TStringField;
    QPnsp22TIME1: TDateTimeField;
    QJobtrn: TFDQuery;
    QJobtrnPARTNO: TStringField;
    QJobtrnDESC: TStringField;
    QJobtrnLOCAT: TStringField;
    QJobtrnMAX: TFloatField;
    QJobtrnMIN: TFloatField;
    QJobtrnONHN: TFloatField;
    QJobtrnORDER: TFloatField;
    QJobtrnAVGDEMN: TFloatField;
    QJobtrnDEMN_1: TFloatField;
    QJobtrnDEMN_2: TFloatField;
    QJobtrnDEMN_3: TFloatField;
    QJobtrnDEMN_4: TFloatField;
    QJobtrnDEMN_5: TFloatField;
    QJobtrnDEMN_6: TFloatField;
    QJobtrnJOBNO: TStringField;
    QJobtrnMODEL: TStringField;
    QJobtrnGROUP1: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    NETPAY : double;
    { Public declarations }
  end;

var
  FSpprn32: TFSpprn32;
  SumQty,Sum1,Sum : double;
  Count   : Integer;

implementation
uses Functn01,Spprn30, Payoth;
{$R *.DFM}

procedure TFSpprn32.FormCreate(Sender: TObject);
begin
   Count := 0;
{   QuickReport.PaperSize   := QrpCustom;
   QuickReport.PaperLength := 2780;
   QuickReport.PaperWidth  := 4100;}
  With QPnsp21 Do
  begin
    Close;
    Sql.clear;
    Sql.Add('SELECT A.JOBNO,A.INVNO,A.INVDATE,A.CUSCOD,A.STRNO, '+
            'A.TAXNO,A.TAXDT,A.BALANE,A.VATAMT,A.NETPRC,A.LOCAT, '+
            'C.SNAM,C.NAME1,C.NAME2,C.ADDR1,C.ADDR2,C.TUMB,C.AUMP, '+
            'C.PROV,C.ZIP,C.TELP,C.FAX,A.LOCAT,A.VAT,B.DISAMT,B.NETTOT, '+
            'E.TYPE,E.STRNO,E.MDLCOD,E.REGNO,E.ENGNO,F.RLKILOMT,F.RECVCOD, '+
            'B.PAYTYP,B.IDCARD FROM OTHINVOI A,ARMAST C,ARPAYTRN B,SVMAST E,JOBORDER F '+
            'WHERE A.INVNO =:XJOB AND A.TAXNO =:XBILL AND A.CUSCOD=C.CUSCOD '+
            'AND A.TAXNO = B.BILLNO AND  A.STRNO = E.STRNO AND A.JOBNO = F.JOBNO');
    params[0].asString  := FPayoth.DBEdit6.text;
    params[1].asString  := FPayoth.DBEdit17.text;
    OPEN;
  end;

  With Query2 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('Select * FROM LOCATMST Where (LOCATCOD =:Jobno) ');
    Params[0].AsString := QPnsp21.FieldByName('LOCAT').AsString;
    Open;
  End;

  With QPnsp22 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('Select * FROM OTHTRAN Where (INVNO =:XINVNO) ');
    Params[0].AsString := QPnsp21.FieldByName('INVNO').AsString;
    Open;
  End;
end;

procedure TFSpprn32.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{  QuickReport.PaperSize   := qrpDefault;
  QuickReport.PaperLength := 0;
  QuickReport.PaperWidth  := 0;}
  Action := Cafree ;
end;

procedure TFSpprn32.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var WORDAMT : String;
    VNETPAY,NNETPAY : DOUBLE;
begin
   IF QPnsp21.FieldByname('Paytyp').AsString = '01' then
   begin
      QRlabel3.Enabled := true;
      QRlabel4.Enabled := False;
      QRlabel5.Enabled := False;
   end
   Else
   IF QPnsp21.FieldByname('Paytyp').AsString = '11' then
   begin
      QRlabel3.Enabled := False;
      QRlabel4.Enabled := True;
      QRlabel5.Enabled := True;
      QRlabel5.Caption := QPnsp21.FieldByname('Idcard').AsString;
   end;

   IF QJobtrn.Eof then
   begin
      NETPAY := QPnsp21.FieldByname('NETTOT').AsFloat;
      NNETPAY := NETPAY*100/(QPnsp21.FieldByname('VAT').AsFloat+100);
      VNETPAY := NETPAY-NNETPAY;
      QRlabel1.Caption := FloattostrF(QPnsp21.FieldByname('DISAMT').AsFloat,ffnumber,15,2);
      QRlabel7.Caption := FloattostrF(NNETPAY,ffnumber,15,2);
      QRlabel8.Caption := FloattostrF(VNETPAY,ffnumber,15,2);
      QRlabel9.Caption := FloattostrF(NETPAY,ffnumber,15,2);
      MainChg(WordAmt,NETPAY);
      QRLabel6.Caption := WordAmt;
    end
    else
    BEGIN
      QRlabel1.Caption := '*******มีต่อ*******';
      QRlabel6.Caption := '';
      QRlabel7.Caption := '';
      QRlabel8.Caption := '';
      QRlabel9.Caption := '';
    END;
end;

procedure TFSpprn32.DetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   if Count >= 13 then
      QuickReport.Newpage
   else
      Count := 0;
end;

procedure TFSpprn32.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Count := Count + 1;
end;

procedure TFSpprn32.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption := QPnsp21.fieldByName('Snam').AsString+
                       QPnsp21.fieldByName('Name1').AsString+'   '+
                       QPnsp21.fieldByName('Name2').AsString;
  QRLabel13.Caption := QPnsp21.fieldByName('ADDR1').AsString+'  ถ.'+
                       QPnsp21.fieldByName('ADDR2').AsString+'  ต.'+
                       QPnsp21.fieldByName('Tumb').AsString+
                       '  อ.'+QPnsp21.fieldByName('Aump').AsString;
  QRLabel2.Caption  := 'จ.'+QPnsp21.fieldByName('Prov').AsString+
                       '  [ '+QPnsp21.fieldByName('Zip').AsString+ ' ] '+
                       '  โทร. '+QPnsp21.fieldByName('Telp').AsString+
                       '  Fax. '+QPnsp21.fieldByName('Fax').AsString;
end;



end.
