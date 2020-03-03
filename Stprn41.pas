unit Stprn41;

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
  TFmStprn41 = class(TForm)
    QRcinv: TFDQuery;
    Condpay: TFDQuery;
    QRctrn: TFDQuery;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn41: TFmStprn41;
  SumQty,Sum1,Sum : double;

implementation
uses Stprn40, Dmic01,DMSEC;
{$R *.DFM}

procedure TFmStprn41.FormCreate(Sender: TObject);
begin
   Condpay.Open;
   QRLabel21.Caption  := Condpay.FieldByName('Comp_nm').asstring;
   Sum := 0;
  With QRcinv Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.Recvno,A.Recvloc,A.Recvdt,A.Invno,A.Invdate,A.Pono, '+
            'A.Apcode,A.TaxDate,A.Taxno,A.Netamt,A.Vatrt,A.Vatamt,A.Totcost, '+
            'A.FLAG,B.Apcode,B.Apname,B.Addr1,B.Addr2,B.Aptelp,A.CREDTM,A.INVDUE '+
            'FROM RC_INVOI A,APMAST B '+
            'WHERE (A.Recvno =:XRecvno) and (A.Apcode = B.Apcode) ');
    Params[0].AsString := FmStprn40.Label6.caption;
    Open;
  End;
  If QRcinv.FieldByName('Flag').AsString='4' Then
     QRLabel7.Caption  := 'ประเภทการชำระ: เงินสด'
  Else
     QRLabel7.Caption  := 'ประเภทการชำระ: เครดิต';

  QRLabel28.Caption := QRcinv.FieldByName('Apname').AsString;
  QRLabel32.Caption := QRcinv.FieldByName('Addr1').AsString+' '+QRcinv.FieldByName('Addr2').AsString;
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
    QRLabel14.caption := Query1.Fieldbyname('LOcatnam').Asstring;;
  End;

end;




procedure TFmStprn41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
