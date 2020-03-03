unit RpAp11;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Quickrpt, StdCtrls, ExtCtrls, Qrctrls, Db,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TQRpAp_11 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRep: TQuickRep;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel20: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QApinv1: TFDQuery;
    TCondpay: TFDTable;
    QRShape5: TQRShape;
    PageFooter: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRSysData4: TQRSysData;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    Query1: TFDQuery;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRpAp_11: TQRpAp_11;
  payt,kant :real;

implementation

uses RpAp10;

{$R *.DFM}

procedure TQRpAp_11.FormCreate(Sender: TObject);
Var Xsort,OptDate :String;
begin
 payt:= 0; kant:= 0;
 TCondpay.Open ;
 QRLabel4.Caption   := TCondpay.FieldByName('COMP_NM').Asstring ;
 QRLabel4.Left      := 1;
 QRLabel4.Width     := 1095;
 QRLabel4.Alignment := taCenter;

 QRLabel5.Left      := 1;
 QRLabel5.Width     := 1095;
 QRLabel5.Alignment := taCenter;

 QRLabel6.caption   := '  ณ วันที '+RpAp_10.NDate.Text;
 QRLabel6.Left      := 1;
 QRLabel6.Width     := 1095;
 QRLabel6.Alignment := taCenter;
 Case RpAp_10.FSortRadio.ItemIndex Of
   0 : Xsort :='ORDER BY LOCAT,APCODE,INVDATE,INVNO';
   1 : Xsort :='ORDER BY LOCAT,INVDATE,APCODE,INVNO';
   2 : Xsort :='ORDER BY LOCAT,TAXNO';
 End;
 QRLabel3.Caption := '';
 If RpAp_10.Option.Itemindex=1 Then
 Begin
   QRLabel9.Caption :='รหัสลูกค้า';
   QRLabel2.Caption :='ชื่อลูกค้า';
   QRLabel3.Caption :='เฉพาะค่ามัดจำ';
 End
 Else
 Begin
   QRLabel9.Caption :='รหัสเจ้าหนี้';
   QRLabel2.Caption :='ชื่อบริษัท';
   If RpAp_10.Option.Itemindex=2 Then
   QRLabel3.Caption :='เฉพาะใบลดหนี้';
 End;

 If RpAp_10.RadioButton1.Checked Then
    OptDate :=' AND A.INVDATE <= :2  '
 Else
    OptDate :=' AND A.TAXDATE <= :2  ';

 QRLabel3.Enabled := RpAp_10.Option.Itemindex<>0;

  with QApinv1 do
  begin
   Close;
   Sql.Clear;
   Case  RpAp_10.Option.Itemindex of
    0:Sql.Add('SELECT A.LOCAT,A.APCODE,A.INVNO,A.INVDATE,(A.NETTOTAL) AS NETTOTAL,A.INVDUE,A.RTNAMT, '+
      'A.SMPAY+A.SMCHQ AS PAYAMT,(A.NETTOTAL-A.RTNAMT) AS KANG,SUBSTR(B.APNAME,1,30) AS APNAME,A.TAXNO,A.TAXDATE FROM APINVOI A, '+
      'APMAST B WHERE A.APCODE=B.APCODE AND (A.FLAG<>''6'') AND (A.KANG>0 OR (A.KANG = 0 AND A.LPAID >= :0)) AND '+
      'A.APCODE LIKE :1 '+Optdate+' AND A.LOCAT LIKE :3 AND A.INVNO lIKE :4  '+xSORT);

    1:Sql.Add('SELECT A.LOCAT,A.APCODE,A.INVNO,A.INVDATE,A.NETTOTAL,A.INVDUE,A.DEPOSIT,A.RTNAMT, '+
      'A.SMPAY+A.SMCHQ AS PAYAMT,(A.NETTOTAL-A.RTNAMT) AS KANG,SUBSTR(RTRIM(B.NAME1)||'' ''||B.NAME2,1,30) AS APNAME,A.TAXNO,A.TAXDATE FROM APINVOI A, '+
      'ARMAST B WHERE A.APCODE=B.CUSCOD AND A.FLAG=''E'' AND (A.KANG>0 OR (A.KANG = 0 AND A.LPAID >= :0)) AND A.DEPOSIT=''Y'' AND '+
      'A.APCODE LIKE :1 '+Optdate+' AND A.LOCAT LIKE :3 AND A.INVNO lIKE :4  ');

    2:Sql.Add('SELECT A.LOCAT,A.APCODE,A.INVNO,A.INVDATE,A.NETTOTAL,A.INVDUE, '+
      'A.SMPAY+A.SMCHQ AS PAYAMT,A.KANG,SUBSTR(B.APNAME,1,30) AS APNAME,A.TAXNO,A.TAXDATE FROM APINVOI A, '+
      'APMAST B WHERE A.APCODE=B.APCODE AND (A.FLAG=''6'')  AND  A.INVDATE <=:0 AND '+
      'A.APCODE LIKE :1 '+Optdate+' AND A.LOCAT LIKE :3 AND A.INVNO lIKE :1  '+xSORT);

    3:Sql.Add('SELECT A.LOCAT,A.APCODE,A.INVNO,A.INVDATE,(A.NETTOTAL) AS NETTOTAL,A.INVDUE,A.RTNAMT, '+
      'A.SMPAY+A.SMCHQ AS PAYAMT,(A.NETTOTAL-A.RTNAMT) AS KANG,SUBSTR(B.APNAME,1,30) AS APNAME,A.TAXNO,A.TAXDATE FROM APINVOI A, '+
      'APMAST B WHERE A.APCODE=B.APCODE AND (A.FLAG=''3'') AND (A.KANG>0 OR (A.KANG = 0 AND A.LPAID >= :0)) AND '+
      'A.APCODE LIKE :1 '+Optdate+' AND A.LOCAT LIKE :3 AND A.INVNO lIKE :4  '+xSORT);

   end;

   Params[0].AsDate      := RpAp_10.NDate.Date;
   Params[1].AsString    := RpAp_10.Edit1.Text+'%' ;
   Params[2].AsDate      := RpAp_10.NDate.Date;
   Params[3].AsString    := RpAp_10.Edit_Locat.Text+'%' ;
   Params[4].AsString    := RpAp_10.Edit3.Text+'%' ;
   Open;
  end;

  if QApinv1.Bof And QApinv1.Eof then
     SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');

end;

procedure TQRpAp_11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TQRpAp_11.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var    TOTaL1,NETT : real;
begin

  with  query1 do
  begin
  Close;
  Sql.Clear;
  Sql.Add(' select INVNO,APCODE,SUM(TOTAL) AS TOTAL FROM  APPAYTRN WHERE INVNO =:0 AND APCODE =:1 '+
          ' AND BILLDT <=:2 AND PAYCONT = ''1''  AND CANDAT IS NULL GROUP BY  INVNO,APCODE  ');
          params[0].asstring :=  QApinv1.fieldbyname('INVNO').asstring;
          params[1].asstring :=  QApinv1.fieldbyname('APCODE').asstring;
          Params[2].AsDate   :=  RpAp_10.NDate.Date;
          OPEN;
  end;

  TOTAL1 :=  QUery1.fieldbyname('TOTAL').asfloat;


  with  query1 do
  begin
  Close;
  Sql.Clear;
  Sql.Add(' select A.INVNO,B.APCODE,SUM(A.PAYAMT) AS TOTAL FROM  APBILTR  A, APPAYTRN B WHERE  A.APBILNO = B.INVNO '+
          ' AND  A.INVNO =:0 AND B.APCODE =:1  AND  B.BILLDT <=:2 AND B.PAYCONT = ''2''  AND B.CANDAT IS NULL GROUP BY  A.INVNO,B.APCODE  ');
          params[0].asstring := QApinv1.fieldbyname('INVNO').asstring;
          params[1].asstring := QApinv1.fieldbyname('APCODE').asstring;
          Params[2].AsDate   := RpAp_10.NDate.Date;
          OPEN;
  end;


   TOTAL1 := TOTAL1+  QUery1.fieldbyname('TOTAL').asfloat;
   Qrlabel19.Caption := floattostrf(total1,ffnumber,15,2);
   Nett := QApinv1.fieldbyname('KANG').asfloat-TOTAL1;
   Qrlabel21.Caption := floattostrf(nett,ffnumber,15,2);
   payt := payt+total1;
   kant := kant+nett;
end;

procedure TQRpAp_11.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
Qrlabel22.Caption := floattostrf(payt,ffnumber,15,2);
Qrlabel23.Caption := floattostrf(kant,ffnumber,15,2);
payt := 0;
kant := 0;
end;

end.
