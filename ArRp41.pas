unit ArRp41;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, quickrpt, Qrctrls, Db,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TQArRp_41 = class(TForm)
    QInvpay1: TFDQuery;
    QCondpay: TFDQuery;
    Query1: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    TDamt,TNet,TKng  : Double;
  public
    { Public declarations }
  end;

var
  QArRp_41: TQArRp_41;

implementation

uses ArRp40;

{$R *.DFM}
procedure TQArRp_41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TQArRp_41.FormCreate(Sender: TObject);
Var Xorder:string;
begin
   Qcondpay.open;
   QRLabel4.caption   := QCondpay.FieldByName('COMP_NM').Asstring;
   QRLabel4.Left      := 1;
   QRLabel4.Width     := 950;
   QRLabel4.Alignment := taCenter;

   QRLabel5.Left      := 1;
   QRLabel5.Width     := 950;
   QRLabel5.Alignment := taCenter;

   QRLabel28.Caption  := 'ลูกหนี้สาขา '+ArRp_40.EDIT1.Text+'  ณ. วันที '+ArRp_40.Edit2.Text ;
   QRLabel28.Left     := 1;
   QRLabel28.Width    := 950;
   QRLabel28.Alignment:= taCenter;
   QRLabel23.Caption  := ArRp_40.SortText;
   Case ArRp_40.FSortRadio.ItemIndex Of
      0: Xorder:=' ORDER BY LOCAT,CUSCODE,INVNO';
      1: Xorder:=' ORDER BY CUSCODE,INVNO';
      2: Xorder:=' ORDER BY INVDATE,CUSCODE,INVNO';
   end;

   With Query1 Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('UPDATE ARINVOI SET SMPAY=0 WHERE SMPAY IS NULL');
     ExecSql;
     //
     Close;
     Sql.Clear;
     Sql.Add('UPDATE ARINVOI SET SMCHQ=0 WHERE SMCHQ IS NULL');
     ExecSql;
   end;

   with QInvPay1 do
   begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.TAXNO,A.TAXDATE,A.INVNO,A.CUSCODE,A.LOCAT,A.INVDATE,A.INVDUE,(A.NETTOTAL-A.RTNAMT) AS NETTOTAL,'+
    '(A.SMPAY+A.SMCHQ) AS PAYAMT  ,A.TNOPAY,A.KANG AS BALANCE ,'+
    'A.KANG AS OVERAMT ,'+
    'B.NAME1,B.NAME2 FROM ARINVOI A,ARMAST B WHERE A.CUSCODE=B.CUSCOD AND '+
    '(A.FLAG=''2'' OR FLAG=''X'' OR A.FLAG=''D'') AND '+
    'A.LOCAT LIKE :XLOCAT AND INVDUE<:XDATE AND TNOPAY=1 AND A.Kang>0 '+Xorder);
    {
    'UNION '+
    'SELECT A.TAXNO,A.TAXDATE,A.INVNO,A.CUSCODE,A.LOCAT,A.INVDATE,A.INVDUE,C.DAMT AS NETTOTAL,'+
    'C.PAYMENT AS PAYAMT,C.NOPAY AS TNOPAY ,(C.DAMT-C.PAYMENT) AS BALANCE ,'+
    'C.DAMT AS OVERAMT,B.NAME1,B.NAME2 FROM ARINVOI A,ARMAST B,ARPAY C '+
    'WHERE A.CUSCODE=B.CUSCOD AND A.INVNO=C.INVNO AND A.LOCAT LIKE :XLOCAT AND '+
    '(A.FLAG=''2'' OR FLAG=''X'' OR A.FLAG=''D'') AND '+
    ' A.TNOPAY>1 AND C.DDATE<:XDATE AND C.PAYMENT=0 '+Xorder);
       }
    Params[0].Asstring := ArRp_40.Edit1.Text+'%' ;
    Params[1].AsDate   := StrToDate(ArRp_40.Edit2.Text);
    Open;
   end;
end;

procedure TQArRp_41.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel7.Caption  := QInvPay1.Fieldbyname('Name1').Asstring+' '+QInvPay1.Fieldbyname('Name2').Asstring ;
end;




end.
