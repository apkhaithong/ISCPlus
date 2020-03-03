unit Prnjob12;

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
  TFPrnjob12 = class(TForm)
    QuickReport: TQuickRep;
    Title: TQRBand;
    Detail: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText15: TQRDBText;
    QRBand2: TQRBand;
    QRLabel23: TQRLabel;
    QTmpprjob: TFDQuery;
    Query1: TFDQuery;
    QJobord: TFDQuery;
    QRDBText16: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel24: TQRLabel;
    QRShape1: TQRShape;
    QRLabel19: TQRLabel;
    QRDBText20: TQRDBText;
    QRShape2: TQRShape;
    QRExpr1: TQRExpr;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    PageFooter: TQRBand;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel62: TQRLabel;
    QRBand3: TQRBand;
    QRExpr4: TQRExpr;
    QRLabel63: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText18: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel64: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel54: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText7: TQRDBText;
    QRSysData3: TQRSysData;
    procedure FormCreate(Sender: TObject);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrnjob12: TFPrnjob12;
  SumA,SumC,SumI:Double;

implementation
uses SvIn30,Prnjob210,Functn01,Dmsvset;

{$R *.DFM}

procedure TFPrnjob12.FormCreate(Sender: TObject);
var Topm:double;
    Tumb,Aump,Prov :String;
    XOpt:String;
begin
  {with Query1 do
  begin
     Close;
     Sql.Clear;
     Sql.Add('select * from SYSIBM.SYSTABLES where NAME=''TMPPRJOB'' AND CREATOR=:Xschema');
     Params[0].Asstring := Dm_Svset.Xschema;

     Open;
     If (Bof and Eof) Then
     Begin
      Close;
      Sql.Clear;
      Sql.Add('CREATE TABLE TMPPRJOB(JOBNO CHAR(15),PARTNO CHAR(20),'+
      'DESC1 CHAR(50),QTY DECIMAL(10,2),UPRICE DECIMAL(10,2), '+
      'REDU DECIMAL(12,2),NETTOT DECIMAL(12,2),HD CHAR(20),CUSCOD CHAR(20),'+
      'FLAG CHAR(1),CLAIM CHAR(1),NO1 DEC(10,0) )');
      ExecSql;
     End;
  end;
  }

  With QJobord Do
  begin
   Close;
   Sql.clear;
   Sql.Add('SELECT J.JOBNO,J.RECVDATE,J.LOCAT,J.STRNO,J.CUSCOD, '+
           'J.VAT,(J.PARTNET+J.OILNET+J.TSV_NET)  AS TOTNET,(J.PARTVAT+J.OILVAT+J.TSV_VAT) AS TOTVAT,'+
           '(J.PARTTOT+J.OILTOT+J.TSV_TOT)  AS TOT,'+
           'J.RFINSHDT,J.FINSTIME,J.RLKILOMT,J.RECVCOD,J.TOPNO,J.RECVTIME,J.REPCOD, '+
           'M.REGNO,M.ENGNO,M.BODYNO,M.TYPE,M.MDLCOD,M.COLOR,M.CC,C.SNAM,C.NAME1,C.NAME2, '+
           'C.ADDR1,C.ADDR2,C.TUMB,C.AUMP,C.PROV,C.ZIP,C.TELP,C.FAX, '+
           'M.STRNO '+
           'FROM JOBORDER J,SVMAST M,ARMAST C  '+
           'WHERE J.JOBNO =:XJOB AND J.STRNO=M.STRNO AND '+
           'J.CUSCOD=C.CUSCOD ');
   params[0].asString  := Fprnjob10_2.Label1.Caption;
   OPEN;
   If Bof and Eof Then
   SFMain.RaiseException('ไม่พบ Job');
  end;

  with Query1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM MODELMST WHERE MDLCOD=:XMOD');
   Params[0].AsString := QJobord.FieldByName('MDLCOD').AsString;
   Open;
   QRLabel30.Caption:= Query1.Fieldbyname('Desc').Asstring;
  End;

  with Query1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD=:XCOD');
   Params[0].AsString := QJobord.FieldByName('REPCOD').AsString;
   Open;
   If Not(Bof and Eof) Then
     QRLabel41.Caption:= 'ช่างที่รับผิดชอบ :'+Query1.Fieldbyname('OFFICNAM').Asstring
   Else
     QRLabel41.Caption:='';
  End;

  With Query1 Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * FROM LOCATMST Where (LOCATCOD =:Jobno) ');
     Params[0].AsString := QJobord.FieldByName('LOCAT').AsString;
     Open;

     QRLabel8.Caption := Query1.fieldByName('LOCATNAM').AsString+' ['+Query1.fieldByName('LOCATCOD').AsString+']';

     QRLabel48.Caption := fieldByName('ADDR1').AsString;
     QRLabel49.Caption := '';
     QRLabel50.Caption := '';

     If ((Copy(FieldByName('Prov').AsString,1,7)='กรุงเทพ')or
     (Copy(FieldByName('Prov').AsString,1,3)='กทม')) Then
     Begin
      Tumb :='แขวง ';
      Aump :='เขต ';
      Prov :='';
     End
     Else
     Begin
      Tumb :='ต.';
      Aump :='อ.';
      Prov :='จ.';
     End;


     If fieldByName('ADDR2').AsString <> '' Then
        QRLabel48.Caption := QRLabel48.Caption+' ถ.'+fieldByName('ADDR2').AsString+' ';
     If fieldByName('TUMB').AsString <> '' Then
        QRLabel48.Caption := QRLabel48.Caption+Tumb+fieldByName('TUMB').AsString+' ';
     If fieldByName('AUMP').AsString <> '' Then
        QRLabel48.Caption := QRLabel48.Caption+Aump+fieldByName('AUMP').AsString;

     If fieldByName('PROV').AsString <> '' Then
        QRLabel49.Caption := QRLabel49.Caption+Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
     If fieldByName('TELP').AsString <> '' Then
        QRLabel49.Caption :=QRLabel49.Caption+ '  โทร.'+fieldByName('TELP').AsString;

   End;
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('Select * FROM Condpay');
    Open;
    QRLabel50.Caption :='เลขประจำตัวผู้เสียภาษี '+Fieldbyname('Taxid').Asstring;
  end;
  //
  Xopt :='';
   Xopt := ' AND A.Uprice>0  ';

  with QTmpprjob do
  begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT JOBNO,''ค่าบริการ'' AS HD,CODE,FRT AS QTY,UPRICE,CUSCOD, '+
     '(FRT*UPRICE-NETPRIC) AS REDU,NETPRIC AS NETTOT,DESC1,CLAIM,''A'' AS FLAG '+
     'FROM SERVTRAN  WHERE JOBNO =:JOB  '+
     'UNION ALL   '+
     'SELECT A.JOBNO,''ค่าอะไหล่'' AS HD,A.PARTNO AS CODE,A.QTY,A.UPRICE,A.CUSCOD, '+
     '(A.QTY*A.UPRICE-A.TOTPRC) AS REDU,A.TOTPRC AS NETTOT,B.DESC1,A.CLAIM,''B'' AS FLAG '+
     'FROM PARTTRAN A,INVENTOR B WHERE (A.JOBNO=:JOB) AND (A.PARTNO=B.PARTNO) AND (A.LOCAT=B.LOCAT) AND '+
     'A.GROUP1<>''OL''   '+XOPT+
     'UNION ALL        '+
     'SELECT A.JOBNO,''ค่าน้ำมัน'' AS HD,A.PARTNO AS CODE,A.QTY,A.UPRICE,A.CUSCOD, '+
     '(A.QTY*A.UPRICE-A.TOTPRC) AS REDU,A.TOTPRC AS NETTOT,B.DESC1,A.CLAIM,''C'' AS FLAG '+
     'FROM PARTTRAN A,INVENTOR B WHERE (A.JOBNO=:JOB) AND (A.PARTNO=B.PARTNO) AND  (A.LOCAT=B.LOCAT) AND '+
     'A.GROUP1=''OL''   '+
     'UNION ALL          '+
     'SELECT JOBNO,''ค่างานนอก'' AS HD,CODE,QTY,UPRICE,CUSCOD,(QTY*UPRICE-NETPRIC) AS REDU, '+
     'NETPRIC AS NETTOT,DESC1,CLAIM,''D'' AS FLAG '+
     'FROM OUTTRAN WHERE JOBNO =:JOB   '+
     'UNION ALL                        '+
     'SELECT JOBNO,''ค่างานสี'' AS HD,CODE,FRT AS QTY,PRICE AS UPRICE,CUSCOD,(FRT*PRICE-NETPRIC) AS REDU, '+
     'NETPRIC AS NETTOT,DESC1,CLAIM,''E'' AS FLAG  '+
     'FROM COLRTRAN WHERE JOBNO =:JOB ORDER BY JOBNO,FLAG');

     Params[0].AsString := QJobord.FieldByName('Jobno').AsString;
     Open;
  end;
end;

procedure TFPrnjob12.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var HD1,HD2:String;
    Tumb,Aump,Prov :String;
begin

  QRLabel26.Caption := QJobord.fieldByName('Snam').AsString+
                       QJobord.fieldByName('Name1').AsString+'   '+
                       QJobord.fieldByName('Name2').AsString+
                       ' [ '+QJobord.fieldByName('Cuscod').AsString+' ] ';
  With QJobord Do
  begin
    If ((Copy(FieldByName('Prov').AsString,1,7)='กรุงเทพ')or
     (Copy(FieldByName('Prov').AsString,1,3)='กทม')) Then
    Begin
      Tumb :='แขวง ';
      Aump :='เขต ';
      Prov :='';
    End
    Else
    Begin
      Tumb :='ต.';
      Aump :='อ.';
      Prov :='จ.';
    End;
    IF fieldByName('Tumb').AsString<>'' Then HD1:=HD1+Tumb+fieldByName('Tumb').AsString+'  ';
    If fieldByName('Aump').AsString<>'' Then HD1:=HD1+Aump+fieldByName('Aump').AsString;
    If fieldByName('Prov').AsString<>'' Then HD2:=HD2+Prov+fieldByName('Prov').AsString+' '+fieldByName('Zip').AsString;
    If fieldByName('Telp').AsString<>'' Then HD2:=HD2+'  โทร.'+fieldByName('Telp').AsString;

    QRLabel25.Caption := fieldByName('ADDR1').AsString;
    If fieldByName('ADDR2').AsString<>'' Then
    QRLabel25.Caption :=QRLabel25.Caption+' ถ.'+fieldByName('ADDR2').AsString+' ';
    QRLabel25.Caption :=QRLabel25.Caption+HD1;
    QRLabel43.Caption := HD2;
    
  end;
end;





procedure TFPrnjob12.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //QRDBText6.Enabled  :=QTmpprjob.FieldByName('NO1').Asfloat=0;

  {QRDBText1.Enabled  :=QTmpprjob.FieldByName('NO1').AsFloat<>0;
  QRDBText2.Enabled  :=QTmpprjob.FieldByName('NO1').AsFloat<>0;
  QRDBText13.Enabled :=QTmpprjob.FieldByName('NO1').AsFloat<>0;
  QRDBText15.Enabled :=QTmpprjob.FieldByName('NO1').AsFloat<>0;
  QRDBText20.Enabled :=QTmpprjob.FieldByName('NO1').AsFloat<>0;
  QRDBText7.Enabled  :=QTmpprjob.FieldByName('NO1').AsFloat<>0;
   }

  SumA := SumA+QTmpprjob.FieldByName('NETTOT').AsFloat;

  If QTmpprjob.FieldByName('Claim').Asstring='Y' Then
  begin
    QRLabel29.Caption := 'C';
    SumC := SumC+QTmpprjob.FieldByName('NETTOT').AsFloat;
  end
  Else
  If QTmpprjob.FieldByName('Claim').Asstring='I' Then
  begin
    QRLabel29.Caption := 'I';
    SumI := SumI+QTmpprjob.FieldByName('NETTOT').AsFloat;
  end
  Else
    QRLabel29.Caption := '';
{
  If QTmpprjob.FieldByName('Claim').Asstring<>'Y' Then
  Begin
    If QTmpprjob.FieldByName('Flag').Asstring='A' Then
    Sv:=Sv+QTmpprjob.FieldByName('NETTOT').AsFloat;
    If QTmpprjob.FieldByName('Flag').Asstring='B' Then
    PT:=PT+QTmpprjob.FieldByName('NETTOT').AsFloat;
    If QTmpprjob.FieldByName('Flag').Asstring='C' Then
    OL:=OL+QTmpprjob.FieldByName('NETTOT').AsFloat;
    If QTmpprjob.FieldByName('Flag').Asstring='D' Then
    OU:=OU+QTmpprjob.FieldByName('NETTOT').AsFloat;
    If QTmpprjob.FieldByName('Flag').Asstring='E' Then
    CO:=CO+QTmpprjob.FieldByName('NETTOT').AsFloat;
  end;
  }
end;


procedure TFPrnjob12.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var Xvat,Xtot:Double;
begin
  Xvat := FRound(QJobord.Fieldbyname('TOTNET').Asfloat*QJobord.Fieldbyname('VAT').Asfloat/100,2);
  Xtot := QJobord.Fieldbyname('TOTNET').Asfloat+Xvat;
  QRLabel46.Caption := FloattostrF(Xvat,ffnumber,15,2);
  QRLabel47.Caption := FloattostrF(Xtot,ffnumber,15,2);

  QRLabel54.Caption := Floattostrf(SumA,ffNumber,15,2);
  QRLabel53.Caption := Floattostrf(SumC,ffNumber,15,2);
  QRLabel61.Caption := Floattostrf(SumI,ffNumber,15,2);
end;






procedure TFPrnjob12.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel45.Enabled := Not QTmpprjob.EOF;
end;





procedure TFPrnjob12.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  SumA := 0;
  SumC := 0;
  SumI := 0;
end;

end.
