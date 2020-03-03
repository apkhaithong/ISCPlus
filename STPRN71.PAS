unit Stprn71;

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
  TFmStprn71 = class(TForm)
    Condpay: TFDQuery;
    QRtinv: TFDQuery;
    QRttrn: TFDQuery;
    QRttrnRTNNO: TStringField;
    QRttrnQTYRTN: TFloatField;
    QRttrnUPRICE: TFloatField;
    QRttrnNETPRC: TFloatField;
    QRttrnPARTNO: TStringField;
    QRttrnDESC1: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn71: TFmStprn71;

implementation
uses Stin04,Stprn70, Dmic01;
{$R *.DFM}

procedure TFmStprn71.FormCreate(Sender: TObject);
begin
   Condpay.Open;
   QRLabel17.Caption  := Condpay.FieldByName('Comp_nm').asstring;
   QRLabel17.left     := 1;
   QRLabel17.width    := 690;
   QRLabel17.alignment:= tacenter;
   QRLabel8.left     := 1;
   QRLabel8.width    := 690;
   QRLabel8.alignment:= tacenter;
  With QRtinv Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.RTNNO,A.RTNDT,A.INVNO,A.TAXREFNO,A.TAXDT,A.MEMO1, '+
            'A.APCODE,A.OFFICCOD,A.CREDNO,A.CREDDT,A.TOTAL,A.VATAMT,A.VATRT,A.TOTPRC, '+
            'B.APCODE,B.APNAME,B.ADDR1,B.ADDR2,B.APTELP, '+
            'C.OFFICCOD,C.OFFICNAM  '+
            'FROM RT_INVOI A,APMAST B,OFFICER C '+
            'WHERE (A.RTNNO =:XRecvno) And (A.APCODE = B.APCODE) '+
            'AND (A.OFFICCOD = C.OFFICCOD)');
    Params[0].AsString := FmStprn70.Label6.caption;
    Open;
  End;

  With QRttrn Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.RTNNO,A.RTNLOC,A.QTYRTN,A.UPRICE,A.NETPRC,B.Partno,B.Desc1 '+
            'FROM RT_TRAN A,Inventor B '+
            'WHERE (A.RTNNO =:XRecvno) And (A.Partno = B.Partno) And (A.Rtnloc = B.Locat) ');
    Params[0].AsString := QRtinv.FieldByName('RTNNO').AsString;
    Open;
  End;
end;

procedure TFmStprn71.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel23.Caption := QRtinv.fieldbyname('Apname').AsString+
                       '   [  '+QRtinv.fieldbyname('Apcode').AsString+'  ] ';
  QRLabel24.Caption := QRtinv.fieldbyname('ADDR1').AsString;
  QRLabel22.Caption := QRtinv.fieldbyname('ADDR2').AsString+'  â·Ã.'+QRtinv.fieldbyname('APTELP').AsString;
  QRLabel5.caption  := QRtinv.FieldByname('OFFICNAM').AsString;
end;










procedure TFmStprn71.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QrMemo1.Lines.Clear;
  QrMemo1.Lines.Add( QRtinv.fieldbyname('MEMO1').asstring);

 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel20.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;

end;






end.
