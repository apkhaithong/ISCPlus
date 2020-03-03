unit RpAp31;

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
  TQRpAp_31 = class(TForm)
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel28: TQRLabel;
    QRep: TQuickRep;
    QRLabel30: TQRLabel;
    QInvPay1: TFDQuery;
    QRShape5: TQRShape;
    PageFooter: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRSysData5: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    Condpay: TFDQuery;
    QInvPay1INVNO: TStringField;
    QInvPay1APCODE: TStringField;
    QInvPay1LOCAT: TStringField;
    QInvPay1INVDATE: TDateField;
    QInvPay1INVDUE: TDateField;
    QInvPay1NETTOTAL: TFloatField;
    QInvPay1PAYAMT: TFloatField;
    QInvPay1TNOPAY: TFloatField;
    QInvPay1BALANCE: TFloatField;
    QInvPay1OVERAMT: TFloatField;
    QInvPay1APNAME: TStringField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    TDamt,TNet,TKng  : Double;
  public
    { Public declarations }
  end;

var
  QRpAp_31: TQRpAp_31;

implementation

uses RpAp30;

{$R *.DFM}
procedure TQRpAp_31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TQRpAp_31.FormCreate(Sender: TObject);
Var Xorder:String;
begin
 Condpay.Open ;
 QRLabel4.Caption := Condpay.FieldByName('COMP_NM').Asstring ;


 QRLabel28.Caption   := '  ณ. วันที '+RpAp_30.Edit_DateTo.Text ;

 Case RpAp_30.FSortRadio.ItemIndex Of
    0: Xorder:=' ORDER BY LOCAT,APCODE,INVNO';
    1: Xorder:=' ORDER BY LOCAT,INVDATE';
    2: Xorder:=' ORDER BY LOCAT,INVDUE';
 end;

  with QInvPay1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.INVNO,A.APCODE,A.LOCAT,A.INVDATE,A.INVDUE,(A.NETTOTAL-A.RTNAMT) AS NETTOTAL,'+
    '(A.SMPAY+A.SMCHQ) AS PAYAMT,A.TNOPAY,(A.KANG) AS BALANCE ,'+
    '(A.KANG) AS OVERAMT ,'+
    'B.APNAME FROM APINVOI A,APMAST B WHERE A.APCODE=B.APCODE AND (A.FLAG<>''6'') AND '+
    'A.LOCAT LIKE :XLOCAT AND INVDUE<:XDATE AND TNOPAY=1 AND (A.KANG)>0 '+
    'UNION '+
    'SELECT A.INVNO,A.APCODE,A.LOCAT,A.INVDATE,A.INVDUE,C.DAMT AS NETTOTAL,'+
    'C.PAYMENT AS PAYAMT,C.NOPAY AS TNOPAY ,(C.DAMT-C.PAYMENT) AS BALANCE ,'+
    'C.DAMT AS OVERAMT,B.APNAME FROM APINVOI A,APMAST B,APPAY C '+
    'WHERE A.APCODE=B.APCODE AND A.INVNO=C.INVNO AND (A.FLAG<>''6'')  AND A.LOCAT LIKE :XLOCAT AND '+
    ' A.TNOPAY>1 AND C.DDATE<:XDATE AND C.PAYMENT=0 '+Xorder);
    Params[0].Asstring  := RpAp_30.Edit_Locat.Text+'%';
    Params[1].AsDate    := RpAp_30.Edit_Dateto.Date;
    Open;
  end;
  if QInvPay1.Bof And QInvPay1.Eof then
  SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');
end;













end.
