unit Stprn42;

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
  TFmStprn42 = class(TForm)
    QRcinv: TFDQuery;
    Condpay: TFDQuery;
    QRctrn: TFDQuery;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn42: TFmStprn42;
  SumQty,Sum1,Sum : double;

implementation
uses Stprn40, Dmic01;
{$R *.DFM}

procedure TFmStprn42.FormCreate(Sender: TObject);
var  HD1,HD2:String;
     Tumb,Aump,Prov :String;
begin
  QRLabel16.left     := 1;
  QRLabel16.width    := 700;
  QRLabel16.alignment:= tacenter;
  //
  //
  Sum := 0;
  With QRcinv Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.Recvno,A.Recvloc,A.Recvdt,A.Invno,A.Invdate,A.Pono, '+
            'A.Apcode,A.TaxDate,A.Taxno,A.Netamt,A.Vatrt,A.Vatamt,A.Totcost,A.MEMO1, '+
            'A.FLAG,B.Apcode,B.Apname,B.Addr1,B.Addr2,B.Aptelp,A.CREDTM,A.INVDUE '+
            'FROM RC_INVOI A,APMAST B '+
            'WHERE (A.Recvno =:XRecvno) and (A.Apcode = B.Apcode) ');
    Params[0].AsString := FmStprn40.Label6.caption;
    Open;
  End;
  If QRcinv.Fieldbyname('Memo1').Asstring<>'' Then
  begin
    QrMemo1.Enabled := True;
    QrMemo1.Lines.Clear;
    QrMemo1.Lines.Add(QRcinv.Fieldbyname('Memo1').Asstring);
  end;
  QRLabel28.Caption := QRcinv.FieldByName('Apname').AsString;
  QRLabel32.Caption := QRcinv.FieldByName('Addr1').AsString;
  QRLabel5.Caption  := QRcinv.FieldByName('Addr2').AsString;

  With QRctrn Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.Recvno,A.Recvloc,A.Partno,A.Qtyord,A.QtyRecv, '+
            'A.Netcost,A.Nettot,B.Partno,B.Desc1,B.shelf '+
            'FROM RC_TRANS A,Inventor B '+
            'WHERE (A.Recvno =:XRecvno) And (A.Partno = B.Partno) and (A.Recvloc=B.locat)');
    Params[0].AsString := QRcinv.FieldByName('Recvno').AsString;
    Open;
  End;

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := QRcinv.FieldByName('RecvLoc').AsString;
    Open;
    If ((Copy(FieldByName('Prov').AsString,1,7)='°√ÿß‡∑æ')or
      (Copy(FieldByName('Prov').AsString,1,3)='°∑¡')) Then
    Begin
      Tumb :='·¢«ß ';
      Aump :='‡¢µ ';
      Prov :='';
    End
    Else
    Begin
      Tumb :='µ.';
      Aump :='Õ.';
      Prov :='®.';
    End;

    QRLabel40.Caption := fieldByName('LOCATNAM').AsString;
    QRLabel38.Caption := fieldByName('ADDR1').AsString;
    QRLabel39.Caption := '';
    If fieldByName('ADDR2').AsString <> '' Then
      QRLabel38.Caption := QRLabel38.Caption+' ∂.'+fieldByName('ADDR2').AsString+' ';
    If fieldByName('TUMB').AsString <> '' Then
      QRLabel38.Caption := QRLabel38.Caption+Tumb+fieldByName('TUMB').AsString+' ';
    If fieldByName('AUMP').AsString <> '' Then
      QRLabel38.Caption := QRLabel38.Caption+Aump+fieldByName('AUMP').AsString;
    If fieldByName('PROV').AsString <> '' Then
      QRLabel39.Caption := QRLabel39.Caption+Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
    If fieldByName('TELP').AsString <> '' Then
      QRLabel39.Caption := QRLabel39.Caption+' ‚∑√.'+fieldByName('TELP').AsString;
    If fieldByName('Fax').AsString <> '' Then
      QRLabel39.Caption := QRLabel39.Caption+' Fax'+fieldByName('Fax').AsString;

  End;
end;









procedure TFmStprn42.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel20.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

end.
