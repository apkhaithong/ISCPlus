unit ArRp31;

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
  TQRpAr_31 = class(TForm)
    QCondpay: TFDQuery;
    QInvpay: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRpAr_31: TQRpAr_31;
  Xsc :string;

implementation

uses ArRp30;

{$R *.DFM}
procedure TQRpAr_31.FormCreate(Sender: TObject);
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

  QRLabel6.caption   := 'ลูกหนี้สาขา  '+ArRp_30.EDIT1.Text+'  Due ระหว่างวันที '+ArRp_30.Edit2.Text+ '  ถึงวันที่  '+ArRp_30.Edit3.Text ;
  QRLabel6.Left      := 1;
  QRLabel6.Width     := 950;
  QRLabel6.Alignment := taCenter;
  QRLabel13.Caption  := ArRp_30.SortText;

  QRLabel16.caption   :='';

  Case ArRp_30.FSortRadio.ItemIndex Of
     0: Xorder:=' ORDER BY LOCAT,CUSCODE,INVDATE,INVNO';
     1: Xorder:=' ORDER BY CUSCODE,INVDATE,INVNO';
     2: Xorder:=' ORDER BY LOCAT,INVDUE,CUSCODE,INVNO';
  end;

  Case ArRp_30.Ckdt.ItemIndex Of
     0: begin
          XSC:=' INVDUE';
          QRLabel16.caption   :='ยึดวันที่ตามวันครบกำหนด';
        end;
     1: begin
          XSC:=' INVDATE';
          QRLabel16.caption   :='ยึดวันที่ตามวันใบส่งของ';
        end;
 end;

  with QInvPay do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT A.TAXNO,A.TAXDATE,A.INVNO,A.CUSCODE,A.LOCAT,A.INVDATE,A.INVDUE,(A.NETTOTAL-A.RTNAMT) AS NETTOTAL,'+
    '(A.SMPAY+A.SMCHQ) AS PAYAMT,A.TNOPAY,A.KANG AS BALANCE ,'+
    'A.KANG AS DUEAMT,'+
    'B.NAME1,B.NAME2 FROM ARINVOI A,ARMAST B WHERE A.CUSCODE=B.CUSCOD AND '+
    '(A.FLAG=''2'' OR FLAG=''X'' OR A.FLAG=''D'') AND '+
    'A.LOCAT LIKE :XLOCAT AND '+XSC+' BETWEEN :XDATE1 AND :XDATE2 AND A.TNOPAY=1 AND A.KANG>0 AND A.CUSCODE LIKE :3 '+
    'UNION '+
    'SELECT A.TAXNO,A.TAXDATE,A.INVNO,A.CUSCODE,A.LOCAT,A.INVDATE,C.DDATE AS INVDUE,C.DAMT AS NETTOTAL,'+
    'C.PAYMENT AS PAYAMT,C.NOPAY AS TNOPAY ,(C.DAMT-C.PAYMENT) AS BALANCE ,'+
    'C.DAMT AS DUEAMT,B.NAME1,B.NAME2 FROM ARINVOI A,ARMAST B,ARPAY C '+
    'WHERE A.CUSCODE=B.CUSCOD AND A.INVNO=C.INVNO AND A.LOCAT LIKE :XLOCAT AND '+
    '(A.FLAG=''2'' OR FLAG=''X'' OR A.FLAG=''D'') AND '+
    ' A.TNOPAY>1 AND '+XSC+' BETWEEN :XDATE1 AND :XDATE2 AND '+
    'C.PAYMENT=0 AND A.CUSCODE LIKE :3 '+Xorder);

    Params[0].Asstring := ArRp_30.Edit1.Text+'%' ;
    Params[1].AsDate   := StrToDate(ArRp_30.Edit2.Text);
    Params[2].AsDate   := StrToDate(ArRp_30.Edit3.Text);
    Params[3].Asstring := ArRp_30.Edit4.Text+'%' ;
    Open;
  end;
end;

procedure TQRpAr_31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TQRpAr_31.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel1.Caption := QInvPay.Fieldbyname('Name1').Asstring+' '+QInvPay.Fieldbyname('Name2').Asstring;
end;

end.
