unit Arrp71;

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
  TQArRp_71 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRep: TQuickRep;
    QRShape2: TQRShape;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    Query20: TFDQuery;
    QCondpay: TFDQuery;
    QRShape5: TQRShape;
    QRBand1: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QArmast: TFDQuery;
    DataSource1: TDataSource;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText9: TQRDBText;
    QBiltrn: TFDQuery;
    DataSource2: TDataSource;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel6: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText16: TQRDBText;
    Query2: TFDQuery;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    TNet,TSpay,TKang : Double ;
  public
    { Public declarations }
  end;

var
  QArRp_71: TQArRp_71;
   SumVat,SumNet,payt,kant :Double;

implementation

uses ArRp70, USoftFirm;

{$R *.DFM}

procedure TQArRp_71.FormCreate(Sender: TObject);
var Xopt2,DDAT,Xsort : string;
begin
  Qcondpay.open;
  QRLabel4.caption   := QCondpay.FieldByName('COMP_NM').Asstring;
  QRLabel6.Caption :='รหัสสาขา :'+ArRp_70.Edit_Locat.Text;


  Case ArRp_70.RadioG1.ItemIndex Of

      0 : Xopt2 :=  '   AND  (A.KANG >0 OR (A.KANG = 0 AND A.LPAID >= :XTODATE))  ';
      1 :  Xopt2 :=  '  AND  (A.KANG = 0 AND A.INVDATE <= :XTODATE)  ';
      2 :  Xopt2 := '   AND  (A.INVDATE <= :XTODATE)  ';

    End;

  Case ArRp_70.RadioGroup1.ItemIndex Of
    0:XSORT :=' ORDER BY INVDATE ';
    1:XSORT :=' ORDER BY INVNO';
    2:XSORT :=' ORDER BY INVDUE';
  end;


    With QUery20 DO
    begin
    Close;
    Sql.Clear;
    Sql.Add(' SELECT A.LOCAT,A.CUSCODE,A.INVNO,A.INVDATE,A.TAXNO,A.TAXDATE,A.INVDUE,'+
            ' (CASE WHEN A.FLAG <> ''7'' THEN (A.NETTOTAL-Case when (A.RTNDATE <=:0 AND A.RTNDATE IS NOT NULL) THEN A.RTNAMT ELSE 0 END) ELSE 0 END) AS NETTOTAL,A.FLAG, '+
            ' (A.SMPAY+A.SMCHQ) AS PAYAMT,A.KANG, CASE WHEN  (A.RTNDATE <=:1 AND A.RTNDATE IS NOT NULL) then A.RTNAMT ELSE 0 END RTNAMT,B.NAME1,B.NAME2, (A.NETTOTAL) AS BALANCE,A.VATAMT,A.JOBNO '+
            '  FROM ARINVOI A,CUSTMAST B  '+
            'WHERE A.CUSCODE=B.CUSCOD  AND A.CUSCODE =:XCUS AND A.LOCAT LIKE :XLOCAT '+Xopt2+
            'AND A.INVDATE BETWEEN :XFRMDATE  AND :XLRMDATE '+XSort);


    Params[0].AsDate      := ArRp_70.Edit_DateTo.Date;
    Params[1].AsDate      := ArRp_70.Edit_DateTo.Date;
    Params[2].AsString    := ArRp_70.Edit2.Text ;
    Params[3].AsString    := ArRp_70.Edit_Locat.Text+'%';
    Params[4].AsDate      := ArRp_70.Edit_DateTo.Date;
    Params[5].AsDate      := ArRp_70.Edit_DateFrom.Date;
    Params[6].AsDate      := ArRp_70.Edit_DateTo.Date;

    OPEN;
    If Bof and Eof Then
    SFMain.RaiseException('ไม่พบข้อมูล');
   end;

    //
  With QBiltrn Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE INVNO=:INVNO AND CANCELID IS NULL AND BILLDT <=:DDAT ');
           params[0].asstring := Query20.fieldbyname('INVNO').asstring;
           Params[1].AsDate      := ArRp_70.Edit_DateTo.Date;

           Open;
  End;
  //


  QRLabel20.Caption :='';
  With QArmast Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD=:CUSNO');
    Params[0].Asstring := Query20.Fieldbyname('Cuscode').Asstring;
    Open;
    QRLabel20.Caption :='รหัสลูกหนี้ :'+Qarmast.FieldByname('Cuscod').Asstring+' '+
                        Qarmast.FieldByname('Name1').Asstring+' '+
                        Qarmast.FieldByname('Name2').Asstring;
  End;

end;

procedure TQArRp_71.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TQArRp_71.DetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin

  With QBiltrn Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE INVNO=:INVNO AND CANCELID IS NULL AND BILLDT <=:DDAT ');
           params[0].asstring := Query20.fieldbyname('INVNO').asstring;
           Params[1].AsDate      := ArRp_70.Edit_DateTo.Date;

           Open;
  End;

  If QBiltrn.Bof And QBiltrn.Eof Then
     QRSubDetail1.Enabled := False
  Else
     QRSubDetail1.Enabled := True


end;




procedure TQArRp_71.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var    TOTaL1,NETT : real;
begin

 if  Query20.Fieldbyname('PAYAMT').asfloat > 0 then
 begin

  with  query2 do
  begin
  Close;
  Sql.Clear;
  Sql.Add(' select INVNO,CUSCODE,SUM(TOTAL) AS TOTAL FROM  ARPAYTRN WHERE INVNO =:0 AND CUSCODE =:1 '+
          ' AND BILLDT <=:2 AND (PAYCONT = ''1'' OR PAYCONT IS NULL)  AND CANDAT IS NULL GROUP BY  INVNO,CUSCODE  ');
          params[0].asstring :=  Query20.fieldbyname('INVNO').asstring;
          params[1].asstring :=  Query20.fieldbyname('CUSCODE').asstring;
          Params[2].AsDate      := ArRp_70.Edit_DateTo.Date;
          open;
  end;

  TOTAL1 :=  QUery2.fieldbyname('TOTAL').asfloat;


  with  query2 do
  begin
  Close;
  Sql.Clear;
  Sql.Add(' select A.INVNO,B.CUSCODE,SUM(A.PAYAMT) AS TOTAL FROM  ARBILTR  A, ARPAYTRN B WHERE  A.ARBILNO = B.INVNO '+
          ' AND  A.INVNO =:0 AND B.CUSCODE =:1  AND  B.BILLDT <=:2 AND B.PAYCONT = ''2''  AND B.CANDAT IS NULL GROUP BY  A.INVNO,B.CUSCODE  ');
          params[0].asstring :=  Query20.fieldbyname('INVNO').asstring;
          params[1].asstring :=  Query20.fieldbyname('CUSCODE').asstring;
          Params[2].AsDate   := ArRp_70.Edit_DateTo.Date;
          OPEN;
  end;


  if not(query2.bof and Query2.eof) then
  TOTAL1 := TOTAL1+  QUery2.fieldbyname('TOTAL').asfloat;
  end
  else
  TOTAL1  := 0;

  if Query20.fieldbyname('Flag').asstring = '7'  then
   TOTAL1  := Query20.fieldbyname('BALANCE').asfloat;

   Qrlabel25.Caption := floattostrf(total1+Query20.fieldbyname('RTNAMT').asfloat,ffnumber,15,2);
   Nett := Query20.fieldbyname('BALANCE').asfloat-(total1+Query20.fieldbyname('RTNAMT').asfloat);
   Qrlabel24.Caption := floattostrf(nett,ffnumber,15,2);
  payt := payt+total1+Query20.fieldbyname('RTNAMT').asfloat;
  kant := kant+nett;

end;

procedure TQArRp_71.QRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 payt := 0;
  kant :=0;
end;

procedure TQArRp_71.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRlabel27.Caption := Floattostrf(payt,ffNumber,15,2);
  QRlabel28.Caption := Floattostrf(kant,ffNumber,15,2);
  
end;

end.
