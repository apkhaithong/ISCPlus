unit Stprn91;

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
  TFmStprn91 = class(TForm)
    Condpay: TFDQuery;
    QMvinv: TFDQuery;
    QMvtrn: TFDQuery;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn91: TFmStprn91;
  SumQty,Sum1,Sum : double;

implementation
uses Stin06,Stprn90, Dmic01;
{$R *.DFM}

procedure TFmStprn91.FormCreate(Sender: TObject);
begin
   Condpay.Open;
   QRLabel17.Caption  := Condpay.FieldByName('Comp_nm').asstring;
   QRLabel17.left     := 1;
   QRLabel17.width    := 690;
   QRLabel17.alignment:= tacenter;
   QRLabel7.left     := 1;
   QRLabel7.width    := 690;
   QRLabel7.alignment:= tacenter;

   QRDBText2.Enabled := FmStprn90.Checkbox1.Checked;
   QRDBText3.Enabled := FmStprn90.Checkbox1.Checked;
   QRExpr1.Enabled := FmStprn90.Checkbox1.Checked;
   QRLabel36.Enabled := FmStprn90.Checkbox1.Checked;

  With QMvinv Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT MOVFRM,MOVTO,MOVNO,MOVDT,OFFICCOD,TOTPRC,memo1 '+
            'FROM  MV_INVOI WHERE (MOVNO =:XRecvno) ');
    Params[0].AsString := FmStprn90.Label6.caption;
    Open;
  End;

  With Query1 Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('Select * FROM LOCATMST Where LOCATCOD =:no ');
    Params[0].AsString := QMvinv.Fieldbyname('MOVFRM').Asstring;
    Open;
    QRLabel13.Caption := fieldByName('LOCATNAM').AsString+'['+fieldByName('LOCATCOD').AsString+']';
    //
    Close;
    SQL.Clear;
    Sql.Add('Select * FROM LOCATMST Where LOCATCOD =:no ');
    Params[0].AsString := QMvinv.Fieldbyname('MOVTO').Asstring;
    Open;
    QRLabel15.Caption := fieldByName('LOCATNAM').AsString+'['+fieldByName('LOCATCOD').AsString+']';
    //
    Close;
    SQL.Clear;
    Sql.Add('Select * FROM OFFICER Where OFFICCOD =:no ');
    Params[0].AsString := QMvinv.Fieldbyname('OFFICCOD').Asstring;
    Open;
    QRLabel21.Caption := fieldByName('OFFICNAM').AsString+'['+fieldByName('OFFICCOD').AsString+']';
  End;

  With QMvTRN Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.MOVNO,A.PARTNO,A.QTYMOV,A.UPRICE,A.TOTPRC, '+
            'B.PARTNO,B.DESC1,B.PRICE1,B.SHELF FROM MV_TRANS A,Inventor B '+
            'WHERE (A.MOVNO =:XRecvno) And (A.Partno = B.Partno) and (A.Movfrm=B.locat) ORDER BY B.SHELF,A.PARTNO ');
    Params[0].AsString := FmStprn90.Label6.caption;
    Open;
  End;
end;


procedure TFmStprn91.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel20.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;

end;

end.
