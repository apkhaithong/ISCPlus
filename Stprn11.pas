unit Stprn11;

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
  TFmStprn11 = class(TForm)
    Query1: TFDQuery;
    QQainv: TFDQuery;
    QQatrn: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn11: TFmStprn11;

implementation
uses Dmic01,Stprn10;
{$R *.DFM}

procedure TFmStprn11.FormCreate(Sender: TObject);
Var HD1,HD2:String;
    Tumb,Aump,Prov :String;
begin
  HD1:='';
  HD2:='';
  QRLabel7.left      := 1;
  QRLabel7.width     := 700;
  QRLabel7.alignment := tacenter;

  With QQainv Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.QANO,A.QALOCAT,A.QADATE,A.CUSCOD,A.OFFICCOD,A.TOTPRC,A.NETAMT,A.MEMO1,A.DISCAMT,A.BALANCE,'+
    'A.VATRT,A.VATAMT,A.NETTOTAL,B.SNAM,B.NAME1,B.NAME2,B.ADDR1,B.ADDR2,B.TUMB,B.AUMP,B.PROV,B.Zip,B.Telp,B.Fax '+
    'FROM QAINVOI A,ARMAST B WHERE A.CUSCOD=B.CUSCOD AND A.QANO=:EDIT ');
    Params[0].Asstring := FmStprn10.Label6.caption;
    Open;
    //
    QRLabel15.Caption := 'ภาษีมูลค่าเพิ่ม '+Floattostr(fieldByName('VATRT').AsFloat)+' %';

     If ((Copy(FieldByName('Prov').AsString,1,7)='กรุงเทพ')or
     (Copy(FieldByName('Prov').AsString,1,3)='กทม')) Then
     Begin
      Tumb :='แขวง ';
      Aump :='เขต ';
      Prov :='';
     End
     Else
     Begin
      Tumb :='ต.';
      Aump :='อ.';
      Prov :='จ.';
     End;
     QRLabel16.caption := FieldByname('SNAM').AsString+
                          FieldByname('NAME1').AsString+' '+
                          FieldByname('NAME2').AsString+' ['+
                          FieldByname('CUSCOD').AsString+']';

     QRLabel20.Caption := fieldByName('ADDR1').AsString;
     QRLabel11.Caption :='';
     QRLabel21.Caption := '';
     If fieldByName('ADDR2').AsString <> '' Then
        QRLabel20.Caption := QRLabel20.Caption+' ถ.'+fieldByName('ADDR2').AsString+' ';
     If fieldByName('TUMB').AsString <> '' Then
        QRLabel20.Caption := QRLabel20.Caption+Tumb+fieldByName('TUMB').AsString+' ';
     If fieldByName('AUMP').AsString <> '' Then
        QRLabel11.Caption := Aump+fieldByName('AUMP').AsString+' ';

     If fieldByName('PROV').AsString <> '' Then
        QRLabel11.Caption := QRLabel11.Caption+Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
     If fieldByName('TELP').AsString <> '' Then
        QRLabel21.Caption :='โทร.'+fieldByName('TELP').AsString;
     If fieldByName('FAX').AsString <> '' Then
        QRLabel21.Caption :=QRLabel21.Caption+ '  FAX '+fieldByName('FAX').AsString;

  End;
  QRMemo1.Lines.Clear;
  QRMemo1.Lines.Add(QQainv.Fieldbyname('Memo1').Asstring);

  With QQatrn Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.PARTNO,A.QTYORD,A.QTYOUT,A.UPRICE,(A.QTYOUT*A.UPRICE) AS TOTAL,A.NETPRC,REDU1,'+
    'A.TOTPRC,B.DESC1 FROM QATRANS A,INVENTOR B WHERE A.PARTNO=B.PARTNO AND A.QALOCAT=B.LOCAT AND A.QANO=:EDIT');
    Params[0].Asstring := FmStprn10.Label6.caption;
    Open;
  End;

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := QQainv.Fieldbyname('Qalocat').Asstring;
    Open;

     If ((Copy(FieldByName('Prov').AsString,1,7)='กรุงเทพ')or
     (Copy(FieldByName('Prov').AsString,1,3)='กทม')) Then
     Begin
      Tumb :='แขวง ';
      Aump :='เขต ';
      Prov :='';
     End
     Else
     Begin
      Tumb :='ต.';
      Aump :='อ.';
      Prov :='จ.';
     End;

     QRLabel2.Caption := Query1.fieldByName('LOCATNAM').AsString+' ['+Query1.fieldByName('LOCATCOD').AsString+']';
     QRLabel28.Caption := fieldByName('ADDR1').AsString;
     QRLabel12.Caption := '';
     If fieldByName('ADDR2').AsString <> '' Then
        QRLabel28.Caption := QRLabel28.Caption+' ถ.'+fieldByName('ADDR2').AsString+' ';
     If fieldByName('TUMB').AsString <> '' Then
        QRLabel28.Caption := QRLabel28.Caption+Tumb+fieldByName('TUMB').AsString+' ';
     If fieldByName('AUMP').AsString <> '' Then
        QRLabel28.Caption := QRLabel28.Caption+Aump+fieldByName('AUMP').AsString;

     If fieldByName('PROV').AsString <> '' Then
        QRLabel12.Caption := Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
     If fieldByName('TELP').AsString <> '' Then
        QRLabel12.Caption :=QRLabel12.Caption+ '  โทร.'+fieldByName('TELP').AsString;
  End;
end;



















procedure TFmStprn11.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel49.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

end.
