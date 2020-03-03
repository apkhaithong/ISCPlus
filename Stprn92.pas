unit Stprn92;

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
  TFmStprn92 = class(TForm)
    Condpay: TFDQuery;
    QRcinv: TFDQuery;
    QRcTrn: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn92: TFmStprn92;
  SumQty,Sum1,Sum : double;

implementation
uses Stprn90, Dmic01;
{$R *.DFM}

procedure TFmStprn92.FormCreate(Sender: TObject);
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

  With QRcinv Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT I.RECVLOC,I.RECVNO,RECVDT,I.INVNO,I.PONO,I.INVDATE, '+
            'I.APCODE,I.TOTCOST,C.OFFICNAM FROM RC_INVOI I,OFFICER C '+
            'WHERE (I.OFFICCOD=C.OFFICCOD) AND (I.RECVNO=:0) ');
    Params[0].AsString := FmStprn90.Label6.caption;
    Open;

    QRLabel15.caption := 'สาขาที่รับโอน  : '+FieldByname('RECVLOC').AsString+
                         '  โอนมาจาก  : '+FieldByname('PONO').AsString;
    QRLabel18.caption := 'อ้างเลขที่ใบโอน  : '+FieldByname('INVNO').AsString;
    QRLabel35.caption := 'ผู้โอนย้าย  : '+FieldByname('APCODE').AsString+
                         '    ผู้รับโอนย้าย : '+FieldByname('OFFICNAM').AsString;
  End;

  With QRcTrn Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.RECVNO,A.PARTNO,A.QTYRECV,A.UCOST,A.NETTOT, '+
            'B.PARTNO,B.DESC1,B.SHELF FROM RC_TRANS A,Inventor B '+
            'WHERE (A.RECVNO=:XRecvno) And (A.Partno = B.Partno) And (A.RECVLOC=B.LOCAT) Order by B.SHELF ');
    Params[0].AsString := FmStprn90.Label6.caption;
    Open;
  End;
end;

procedure TFmStprn92.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
IF  FmDmic01.XISO <> '' then
 begin
 QRLabel5.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

end.
