unit RpAp21;

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
  TQRpAp_21 = class(TForm)
    QRep: TQuickRep;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel18: TQRLabel;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel30: TQRLabel;
    QRShape5: TQRShape;
    QInvPay: TFDQuery;
    TCondpay: TFDTable;
    PageFooter: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRSysData5: TQRSysData;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TNet,TPay,TDamt,TKDamt        : Double;
  public
    { Public declarations }
  end;

var
  QRpAp_21: TQRpAp_21;
  XSC : String;

implementation

uses RpAp20;

{$R *.DFM}

procedure TQRpAp_21.FormCreate(Sender: TObject);
VAR XORDER,Xopt:STRING;
begin
  TCondpay.Open ;
  QRLabel4.Caption   := TCondpay.FieldByName('COMP_NM').Asstring ;


  QRLabel6.caption   := '   Due วันที '+RpAp_20.Edit_DateFrom.Text+ '  ถึงวันที่  '+RpAp_20.Edit_DateTo.Text ;
  Case RpAp_20.FSortRadio.ItemIndex Of
     0: Xorder:=' ORDER BY LOCAT,APCODE,INVDATE,INVNO';
     1: Xorder:=' ORDER BY APCODE,INVDATE,INVNO';
     2: Xorder:=' ORDER BY INVDUE,APCODE,INVNO';
  end;


  Case RpAp_20.CkDt.ItemIndex Of
     0: XSC:=' A.INVDUE';
     1: XSC:=' A.INVDATE';
   end;

   If RpAp_20.Option.Checked Then
      XOpt :=' (A.FLAG=''3'') AND '
   else
      XOpt :=' (A.FLAG<>''6'') AND ';

  with QInvPay do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.INVNO,A.APCODE,A.LOCAT,A.INVDATE,A.INVDUE,(A.NETTOTAL-A.RTNAMT) AS NETTOTAL,'+
     '(A.SMPAY+A.SMCHQ) AS PAYAMT,A.TNOPAY,(A.KANG) AS BALANCE ,'+
     '(A.KANG) AS DUEAMT,'+
     'B.APNAME FROM APINVOI A,APMAST B WHERE A.LOCAT LIKE :XLOCAT AND '+
     'A.APCODE LIKE :EDIT2 AND A.APCODE=B.APCODE AND '+XOPT+
     ' '+XSC+' BETWEEN :XDATE1 AND :XDATE2 AND A.TNOPAY=1 AND A.Kang>0 '+
     'UNION '+
     'SELECT A.INVNO,A.APCODE,A.LOCAT,A.INVDATE,A.INVDUE,C.DAMT AS NETTOTAL,'+
     'C.PAYMENT AS PAYAMT,C.NOPAY AS TNOPAY ,(C.DAMT-C.PAYMENT) AS BALANCE ,'+
     'C.DAMT AS DUEAMT,B.APNAME FROM APINVOI A,APMAST B,APPAY C '+
     'WHERE A.APCODE=B.APCODE AND A.INVNO=C.INVNO AND A.LOCAT LIKE :XLOCAT AND '+
     'A.APCODE LIKE :EDIT2 AND '+XOPT+
     ' A.TNOPAY>1 AND '+XSC+' BETWEEN :XDATE1 AND  :XDATE2 AND '+
     'C.PAYMENT=0 '+Xorder);

    Params[0].Asstring:= RpAp_20.Edit_Locat.Text+'%' ;
    Params[1].Asstring:= RpAp_20.edApCode.Text+'%' ;
    Params[2].AsDate  := RpAp_20.Edit_DateFrom.Date;
    Params[3].AsDate  := RpAp_20.Edit_DateTo.Date;
    Open;
  end;
  if QInvPay.Bof And QInvPay.Eof then
     SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');
end;

procedure TQRpAp_21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;














end.
