unit Spprn41;

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
  TFSpprn41 = class(TForm)
    QPnsp21: TFDQuery;
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
    Condpay: TFDTable;
    Query2: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSpprn41: TFSpprn41;
  SumQty,Sum1,Sum : double;

implementation
uses Spprn40;
{$R *.DFM}

procedure TFSpprn41.FormCreate(Sender: TObject);
begin
  With QPnsp21 Do
  begin
    Close;
    Sql.clear;
    Sql.Add('SELECT A.JOBNO,A.INVNO,A.INVDATE,A.CUSCOD,A.STRNO, '+
            'A.TAXNO,A.TAXDT,A.BALANE,A.VATAMT,A.NETPRC,A.LOCAT, '+
            'C.SNAM,C.NAME1,C.NAME2,C.ADDR1,C.ADDR2,C.TUMB,C.AUMP, '+
            'C.PROV,C.ZIP,C.TELP,C.FAX,A.LOCAT,B.PAYDESC '+
            'FROM OTHINVOI A,ARMAST C,PAYTYP B '+
            'WHERE A.INVNO =:XJOB AND A.CUSCOD=C.CUSCOD ');
    params[0].asString  := FSpprn40.Label6.Caption;
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

procedure TFSpprn41.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var HD1,HD2 : String;
begin
  condpay.open;
  QRLabel8.caption  := Condpay.FieldByName('COMP_NM').Asstring;

  QRLabel2.Caption  := Query2.fieldByName('ADDR1').AsString+'  ¶.'+
                       Query2.fieldByName('ADDR2').AsString+'  µ.'+
                       Query2.fieldByName('Tumb').AsString+
                       '  Í.'+Query2.fieldByName('Aump').AsString;
  QRLabel11.Caption := '¨.'+Query2.fieldByName('Prov').AsString+
                       '  [ '+Query2.fieldByName('Zip').AsString+ ' ] '+
                       '  â·Ã. '+Query2.fieldByName('Telp').AsString+
                       '  Fax. '+Query2.fieldByName('Fax').AsString;

  With QPnsp21 Do
  Begin
    IF fieldByName('Tumb').AsString<>'' Then HD1:=HD1+'  µ./á¢Ç§ '+fieldByName('Tumb').AsString;
    If fieldByName('Aump').AsString<>'' Then HD2:=HD2+'Í./à¢µ '+fieldByName('Aump').AsString;
    If fieldByName('Prov').AsString<>'' Then HD2:=HD2+'  ¨.'+fieldByName('Prov').AsString+' '+fieldByName('Zip').AsString;

    QRLabel15.Caption := FieldByName('Snam').AsString+
                         FieldByName('Name1').AsString+'   '+
                         FieldByName('Name2').AsString;
    QRLabel13.Caption := fieldByName('ADDR1').AsString+'  '+
                         fieldByName('ADDR2').AsString+HD1;
    QRLabel12.Caption := HD2+'  â·Ã. '+fieldByName('Telp').AsString;
  End;
end;








end.
