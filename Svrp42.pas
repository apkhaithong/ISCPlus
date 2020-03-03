unit Svrp42;

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
  TQRpSv42 = class(TForm)
    QRep: TQuickRep;
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel28: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel29: TQRLabel;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    Query3: TFDQuery;
    QRBand5: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRSysData5: TQRSysData;
    QOth: TFDQuery;
    DataSource1: TDataSource;
    QCoscolr: TFDQuery;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    QCosOut: TFDQuery;
    Query3JOBNO: TStringField;
    Query3RECVDATE: TDateField;
    Query3REPTYPE: TStringField;
    Query3PARTCOST: TFloatField;
    Query3OILCOST: TFloatField;
    Query3SUM1: TFloatField;
    Query3LOCAT: TStringField;
    Query3STRNO: TStringField;
    Query3REGNO: TStringField;
    Query3REPCOD: TStringField;
    Query3RECVCOD: TStringField;
    QRLabel31: TQRLabel;
    QRDBText5: TQRDBText;
    Query3PTAXNO: TStringField;
    QRDBText8: TQRDBText;
    Query3STATUS: TStringField;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QOthinv: TFDQuery;
    QRLabel36: TQRLabel;
    QRDBText10: TQRDBText;
    QCostpart: TFDQuery;
    QCostoil: TFDQuery;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    SumColr,Sumout,Prof,GTotprf,Total,Totcos,GTotcos,Sumcos,Gtotal,Gpartcos,GOilcos:Double;
  public
    { Public declarations }
  end;

var
  QRpSv42: TQRpSv42;
  Xvat :Double;
  Vtype:String;

implementation
uses SvRp40,Functn01;

{$R *.DFM}

procedure TQRpSv42.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TQRpSv42.FormCreate(Sender: TObject);
Var Ed1,Ed2,Ed3,Xsort,Optdate :  String;
begin
   condpay.open;
   QRLabel4.caption   := CondpayCOMP_NM.Asstring;
   QRLabel4.Left      := 1;
   QRLabel4.Width     := 1105;
   QRLabel4.Alignment := taCenter;
    //
   QRLabel17.Caption   :='สาขา '+SvRp_40.EDIT_LOCAT.text+'   Job ระหว่างวันที่ '+
                         SvRp_40.Edit_dateFrom.text+'  ถึงวันที่  '+
                         SvRp_40.Edit_DateTo.text;
   QRLabel17.Left      := 1;
   QRLabel17.Width     := 1105;
   QRLabel17.Alignment := taCenter;
   //
   QRLabel5.Left      := 1;
   QRLabel5.Width     := 1105;
   QRLabel5.Alignment := taCenter;
   //
   Case SvRp_40.SortRadio.ItemIndex  Of
     0: Xsort:=' ORDER BY J.JOBNO';
     1: Xsort:=' ORDER BY J.REPTYPE';
     2: Xsort:=' ORDER BY J.RECVDATE';
     3: Xsort:=' ORDER BY J.PTAXNO';
   End;
   
   Case SvRp_40.RadioGroup1.ItemIndex  Of
     0: QRlabel26.Caption:='รายงานตามยอดมูลค่าสินค้า';
     1: QRlabel26.Caption:='รายงานยอดรวมภาษีแล้ว';
   End;

   Case SvRp_40.RadioGroup3.ItemIndex  Of
     0:begin
         QRlabel26.Caption:=QRlabel26.Caption+'-> ยึดตามวันปิด JOB';
         If SvRp_40.CheckBox1.Checked then
           Optdate:=' J.RECVDATE >= :FROMDATE AND J.RECVDATE <= :ToDate AND (J.OUTJNET>0 OR J.JOBNO IN (Select JOBNO FROM Outtran GROUP BY JOBNO HAVING SUM(Netpric)>0 )) '
         Else
           Optdate:=' J.RECVDATE >= :FROMDATE AND J.RECVDATE <= :ToDate ';
       end;
     1:Begin
         QRlabel26.Caption:=QRlabel26.Caption+'-> ยึดตามวันปิด JOB';
         If SvRp_40.CheckBox1.Checked then
           Optdate:=' J.FINSDATE >= :FROMDATE AND J.FINSDATE <= :ToDate AND (J.OUTJNET>0 OR J.JOBNO IN (Select JOBNO FROM Outtran GROUP BY JOBNO HAVING SUM(Netpric)>0)) '
         Else
           Optdate:=' J.FINSDATE >= :FROMDATE AND J.FINSDATE <= :ToDate ';
       End;
     2:Begin
         QRlabel26.Caption:=QRlabel26.Caption+'-> ยึดตามวันออกใบกำกับ หรือวันส่งมอบรถ';
         If SvRp_40.CheckBox1.Checked then
           Optdate:=' J.TAXDATE >= :FROMDATE AND J.TAXDATE <= :ToDate AND (J.OUTJNET>0 OR J.JOBNO IN (Select JOBNO FROM Outtran GROUP BY JOBNO HAVING SUM(Netpric)>0)) '
         Else
           Optdate:=' J.TAXDATE >= :FROMDATE AND J.TAXDATE <= :ToDate ';
       End;

   End;
   If SvRp_40.CheckBox2.Checked then
   Begin
     Optdate:=Optdate+' AND J.FLAG=''M'' ';
     QRlabel26.Caption:= QRlabel26.Caption+' เฉพาะ Job ที่เข้ามาจากการ mail ';
   End;

   If SvRp_40.Edit1.Text <>'' Then
   QRlabel26.Caption:= QRlabel26.Caption+' โดยเลือกเฉพาะรหัสช่าง '+SvRp_40.Edit1.Text;

   If SvRp_40.Edit3.Text <>'' Then
   QRlabel26.Caption:= QRlabel26.Caption+' รหัสลูกค้า '+SvRp_40.Edit3.Text;

 QOth.Close;
 QCosout.Close;

 With Query3 Do
  begin
   Close;
   Sql.clear;
   {Sort By Jobno}
   If SvRp_40.RadioGroup1.ItemIndex = 0 Then
   Sql.Add('SELECT J.JOBNO,J.RECVDATE,J.REPTYPE,J.PARTCOST,J.RECVCOD,J.PTAXNO,J.STATUS,J.CAMPNO, '+
           'J.OILCOST,(J.SERVNET+J.OILNET+J.OUTJNET+J.COLORNet+J.OTHERNET+J.PARTNET) AS Sum1,J.CUSCOD,'+
           'J.LOCAT,J.STRNO,S.REGNO,J.REPCOD,J.CUSCOD  '+
           'FROM JOBORDER J,SVMAST S '+
           'WHERE (J.STRNO = S.STRNO) AND J.STATUS<>''C'' AND '+
           'J.REPTYPE LIKE:XREPTYPE AND J.LOCAT LIKE:XLOCAT AND '+Optdate+
           'AND J.REPCOD LIKE :XREP AND J.CAMPNO LIKE :XCMP AND J.CUSCOD LIKE :XCUS '+Xsort);

   If SvRp_40.RadioGroup1.ItemIndex = 1 Then
   Sql.Add('SELECT J.JOBNO,J.RECVDATE,J.REPTYPE,J.PARTCOST,J.RECVCOD,J.PTAXNO,J.STATUS,J.CAMPNO, '+
           'J.OILCOST,(J.SERVNET+J.OILNET+J.OUTJNET+J.COLORNet+J.OTHERNET+J.PARTNET) AS Sum1,J.CUSCOD,'+
           'J.LOCAT,J.STRNO,S.REGNO,J.REPCOD,J.CUSCOD  '+
           'FROM JOBORDER J,SVMAST S '+
           'WHERE (J.STRNO = S.STRNO) AND J.STATUS<>''C'' AND '+
           'J.REPTYPE LIKE:XREPTYPE AND J.LOCAT LIKE:XLOCAT AND '+Optdate+
           'AND J.REPCOD LIKE :XREP AND J.CAMPNO LIKE :XCMP AND J.CUSCOD LIKE :XCUS '+Xsort);

   {Condition Variable}
   IF SvRp_40.Edit_Type.Text = '' THEN
     Ed1 := '%'
   ELSE
      Ed1 := SvRp_40.Edit_Type.Text+'%';

   If SvRp_40.Edit_LOCAT.Text = '' Then
      Ed2 := '%'
   else
      Ed2 := SvRp_40.Edit_LOCAT.Text+'%';

   params[0].asString  := Ed1;
   params[1].asString  := Ed2;
   params[2].asdate    := SvRp_40.FROMDATE;
   params[3].asdate    := SvRp_40.ToDate;
   params[4].asString  := SvRp_40.Edit1.Text+'%';
   params[5].asString  := SvRp_40.Edit2.Text+'%';
   params[6].asString  := SvRp_40.Edit3.Text+'%';
   {Open SQL Table}
   OPEN;
   iF Bof and eof Then
   SFMain.RaiseException('ไม่มีรายการ JOB');
  end;

  With QOthinv Do
  begin
   Close;
   Sql.clear;
   Sql.Add('Select Vattype,Vat from othinvoi where '+
   'Jobno=:JOBNO ');
   Open;
  End;

  With QOth Do
  begin
   Close;
   Sql.clear;
   Sql.Add('Select jobno,sum(Netpric) As OServ from othtran where '+
   'Jobno=:JOBNO and Cancelid is Null group by Jobno');
   Open;
  End;

  With QCosColr   Do
  begin
   Close;
   Sql.clear;
   Sql.Add('Select jobno,sum(Totcost) As ColrCos from Colrtran where '+
   'Jobno=:JOBNO group by Jobno');
   Open;
  End;

  With QCosout Do
  begin
   Close;
   Sql.clear;
   Sql.Add('Select jobno,sum(UCOST*QTY) As OutCos from Outtran where '+
   'Jobno=:JOBNO group by Jobno');
   Open;
  End;

  With QCostpart Do
  begin
   Close;
   Sql.clear;
   Sql.Add('Select jobno,sum(QTY*AVGCOST) As PtCos from Parttran where '+
   'Jobno=:JOBNO AND GROUP1<>''OL'' group by Jobno');
   Open;
  End;

  With QCostOil Do
  begin
   Close;
   Sql.clear;
   Sql.Add('Select jobno,sum(QTY*AVGCOST) As OlCos from Parttran where '+
   'Jobno=:JOBNO AND GROUP1=''OL'' group by Jobno');
   Open;
  End;

end;

procedure TQRpSv42.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRlabel30.Caption := FloattostrF(Sumout,ffNumber,15,2);
  QRlabel35.Caption := FloattostrF(SumColr,ffNumber,15,2);
  QRlabel25.Caption := FloattostrF(Gtotal,ffNumber,15,2);
  QRlabel23.Caption := FloattostrF(Gtotprf,ffNumber,15,2);
  QRlabel21.Caption := FloattostrF(Gtotcos,ffNumber,15,2);
  QRlabel39.Caption := FloattostrF(Gpartcos,ffNumber,15,2);
  QRlabel40.Caption := FloattostrF(GOilcos,ffNumber,15,2);
end;

procedure TQRpSv42.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var Oserv1:Double;
begin
  Xvat := QOthinv.Fieldbyname('Vat').Asfloat;
  Vtype:= QOthinv.Fieldbyname('Vattype').Asstring;
  //---เฉพาะมูลค่า---
  If Vtype='2' Then
    Oserv1 := QOth.Fieldbyname('OServ').Asfloat
  Else
    Oserv1 := FRound((100/(100+Xvat))*QOth.Fieldbyname('OServ').Asfloat,2);

  Sumout :=Sumout+QCosout.Fieldbyname('Outcos').Asfloat;
  SumColr:=SumColr+QCosColr.Fieldbyname('Colrcos').Asfloat;


  TotCos := QCostpart.Fieldbyname('Ptcos').Asfloat+
            QCostoil.Fieldbyname('Olcos').Asfloat+
            QCosColr.Fieldbyname('Colrcos').Asfloat+
            QCosout.Fieldbyname('Outcos').Asfloat;

  Total:= Oserv1+Query3.Fieldbyname('Sum1').Asfloat;

  Prof := Total-Totcos;
  GTotal:= GTotal+Total;
  GTotCos := GTotCos+TotCos;
  GTotprf := GTotprf+prof;
  Gpartcos:=Gpartcos+QCostpart.Fieldbyname('Ptcos').Asfloat;
  GOilcos :=GOilcos+QCostoil.Fieldbyname('Olcos').Asfloat;

  QRlabel24.Caption := FloattostrF(Total,ffNumber,15,2);
  QRlabel18.Caption := FloattostrF(Totcos,ffNumber,15,2);
  QRlabel27.Caption := FloattostrF(QCosout.Fieldbyname('Outcos').Asfloat,ffNumber,15,2);
  QRlabel34.Caption := FloattostrF(QCosColr.Fieldbyname('Colrcos').Asfloat,ffNumber,15,2);
  QRlabel22.Caption := FloattostrF(prof,ffNumber,15,2);
  QRlabel37.Caption := FloattostrF(QCostpart.Fieldbyname('Ptcos').Asfloat,ffNumber,15,2);
  QRlabel38.Caption := FloattostrF(QCostoil.Fieldbyname('Olcos').Asfloat,ffNumber,15,2);
end;


procedure TQRpSv42.QRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Sumout :=0;
  SumColr:=0;
  Totcos :=0;
  GTotcos:=0;
  Gtotal :=0;
  GTotPrf:=0;
  Gpartcos:=0;
  GOilcos:=0;
end;

end.
