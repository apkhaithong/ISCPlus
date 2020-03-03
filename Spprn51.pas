unit Spprn51;

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
  TFSpprn51 = class(TForm)
    QJobord2: TFDQuery;
    Query2: TFDQuery;
    Query1: TFDQuery;
    QJobtrn: TFDQuery;
    Condpay: TFDTable;
    procedure FormCreate(Sender: TObject);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportBeforePrint(Sender: TQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSpprn51: TFSpprn51;
  Sumprc,Sumnet,Sumdsc : double;
  WordDate,Day1,Month1,Year1,WordAmt : String;

implementation
//uses Spprn20,Paycrdt2,functn01;
uses Paycash2,Spprn50,functn01;
{$R *.DFM}

procedure TFSpprn51.FormCreate(Sender: TObject);
var HD1,HD2:String;
    Tumb,Aump,Prov :String;
begin
  //--Set Frame --
  QuickReport.page.Topmargin   := QuickReport.page.Topmargin+FSpprn50.Xtop;
  QuickReport.page.Leftmargin  := QuickReport.page.Leftmargin+FSpprn50.XLeft;
  PageHeader.Height := PageHeader.Height+FSpprn50.XHeader;
  PageFooter.Height := PageFooter.Height+FSpprn50.XFooter;

  HD1:='';
  HD2:='';
  With QJobord2 Do
  begin
   Close;
   Sql.clear;
   Sql.Add('SELECT A.JOBNO,A.BILLNO,A.BILLDT,A.CUSCODE,C.SNAM,A.DISAMT,A.NETTOT,A.INVNO, '+
           'C.NAME1,C.NAME2,C.ADDR1,C.ADDR2,C.TUMB,C.AUMP,C.PROV,'+
           'C.ZIP,C.TELP,C.FAX,A.LOCAT,B.BALANCE,B.VAT,B.TOTTAX,B.TEMPTAX,B.VATRT,'+
           'A.IDCARD,A.IDEXPDT,A.CANCELID FROM  ARPAYTRN A, ARMAST C, AR_SERV  B '+
           'WHERE A.BILLNO=:EDIT  AND  A.CUSCODE=C.CUSCOD '+
           'AND A.BILLNO=B.TAXNO');

   params[0].asString  := FCashpay2.DBEdit17.text;
   OPEN;

   QRLabel11.Caption := fieldByName('CUSCODE').AsString;
   ChqDatetoS(Day1,Month1,Year1,2,fieldByName('BILLDT').AsDateTime);
   QRLabel3.Caption := Day1+' '+Month1+' '+Year1;

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
    QRLabel15.Caption := fieldByName('Snam').AsString+
                        fieldByName('Name1').AsString+'   '+
                        fieldByName('Name2').AsString;
    IF fieldByName('Tumb').AsString<>'' Then HD1:=HD1+Tumb+fieldByName('Tumb').AsString+'  ';
    If fieldByName('Aump').AsString<>'' Then HD1:=HD1+Aump+fieldByName('Aump').AsString;
    If fieldByName('Prov').AsString<>'' Then HD2:=HD2+Prov+fieldByName('Prov').AsString+' '+fieldByName('Zip').AsString;
    If fieldByName('Telp').AsString<>'' Then HD2:=HD2+'  โทร. '+fieldByName('Telp').AsString;

    QRLabel13.Caption := fieldByName('ADDR1').AsString;
    If fieldByName('ADDR2').AsString<>'' Then
    QRLabel13.Caption :=QRLabel13.Caption+' ถ.'+fieldByName('ADDR2').AsString;

    QRLabel13.Caption := QRLabel13.Caption+' '+HD1;
    QRLabel12.Caption := HD2;
    MainChg(WordAmt,QJobord2.fieldByName('NETTOT').Asfloat);
    Qrlabel14.Caption := '('+WordAmt+')';
    
   If QJobord2.Fieldbyname('TEMPTAX').Asstring='Y' Then
   Begin
    QRLabel1.Caption := 'ใบเสร็จ/ใบกำกับ';
   End
   Else
   Begin
    QRLabel1.Caption := 'ใบเสร็จรับเงิน';
   End;
 end;

 HD1:='';
 HD2:='';
  With Query2 Do
  Begin
   Close;
   Sql.Clear;
   Sql.Add('Select * FROM LOCATMST Where (LOCATCOD =:Jobno) ');
   Params[0].AsString := QJobord2.FieldByName('LOCAT').AsString;
   Open;
   QRLabel19.Caption := fieldByName('LOCATNAM').AsString;
   QRLabel41.Caption := fieldByName('LOCATNAM').AsString;
   QRLabel9.Caption := fieldByName('ADDR1').AsString;
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
    If fieldByName('Telp').AsString<>'' Then HD2:=HD2+'  โทร. '+fieldByName('Telp').AsString;
    QRLabel9.Caption :=  HD1;
    QRLabel40.Caption := HD2;

   Close;
   Sql.Clear;
   Sql.Add('Select S.STRNO,S.REGNO,S.Engno FROM SVMAST S,JOBORDER J '+
           'Where J.JOBNO =:Jobno AND J.STRNO=S.STRNO ');
   Params[0].AsString := QJobord2.FieldByName('JOBNO').AsString;
   Open;
   QRLabel10.Caption := fieldByName('REGNO').AsString;
   QRLabel17.Caption := fieldByName('STRNO').AsString;
   Close;
  End;

 with QJobtrn do
 begin
     Close;
     Sql.Clear;
     Sql.Add('Select A.Jobno,A.LOCAT,A.Partno,B.Desc1,B.SHELF,A.Claim,'+
             'A.QTY,A.UPRICE,A.TOTPRC AS TOT,A.Redu1 AS REDU,A.NETFL,''A'' as Ord '+
             'From PartTran A,Inventor B  '+
             'Where (A.Jobno =:Jobno) And (A.Partno = B.Partno) And (A.Locat=B.Locat) AND (A.Claim=''N'') '+
             'UNION ALL '+
             'Select Jobno,LOCAT,Code AS PARTNO,Desc1,'''' AS SHELF,Claim, '+
             'FRT AS QTY,UPRICE,Netpric AS TOT,Redu,'''' AS NETFL,''B'' as Ord From ServTran  '+
             'Where (Jobno =:Jobno) AND (Claim=''N'') '+
             'UNION ALL '+
             'Select Jobno,Locat,Code as partno,Desc1,'''' as shelf,'''' As Claim,'+
               'QTY,UPRICE As uprice,NetPRIC as tot,Redu,'''' AS NETFL,''C'' as Ord From OutTran '+
               'Where (Jobno =:Jobno) AND (Claim=''N'') '+
             'UNION ALL '+
             'Select Jobno,Locat,Code as partno,Desc1,'''' as shelf,'''' As Claim,'+
             'Frt as qty ,PRICE as uprice,NETPRIC as tot,Redu,'''' AS NETFL,''E'' as Ord '+
             'From ColrTran Where (Jobno =:Jobno) AND (Claim=''N'')  Order by ord' );

     Params[0].AsString := QJobord2.FieldByName('Jobno').AsString;
     Open;
 end;
end;

procedure TFSpprn51.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var XNet,CashDsc :Double;
begin
  CashDsc := QJobord2.Fieldbyname('TOTTAX').Asfloat-QJobord2.Fieldbyname('NETTOT').Asfloat;

  QRLabel54.Enabled := QJobord2.Fieldbyname('Cancelid').Asstring<>'';

  QRLabel39.Caption := FloattostrF(Sumprc,ffNumber,15,2);


  If FSpprn50.CheckBox1.Checked Then
  begin
    QRLabel50.Enabled := False;
    QRLabel51.Enabled := False;

    QRLabel49.Caption := FloattostrF(QJobord2.Fieldbyname('TOTTAX').Asfloat,ffNumber,15,2);
    QRLabel52.Caption := FloattostrF(QJobord2.Fieldbyname('TOTTAX').Asfloat,ffNumber,15,2);
    QRLabel56.Caption := FloattostrF(CashDsc,ffNumber,15,2);
    QRLabel53.Caption := FloattostrF(QJobord2.Fieldbyname('NETTOT').Asfloat,ffNumber,15,2);

    QRLabel47.Caption := FloattostrF((Sumprc-QJobord2.Fieldbyname('TOTTAX').Asfloat),ffNumber,15,2);
  end
  Else
  begin
    QRLabel50.Enabled := True;
    QRLabel51.Enabled := True;

    QRLabel49.Caption := FloattostrF(QJobord2.Fieldbyname('BALANCE').Asfloat,ffNumber,15,2);
    QRLabel51.Caption := FloattostrF(QJobord2.Fieldbyname('VAT').Asfloat,ffNumber,15,2);
    QRLabel52.Caption := FloattostrF(QJobord2.Fieldbyname('TOTTAX').Asfloat,ffNumber,15,2);
    QRLabel56.Caption := FloattostrF(CashDsc,ffNumber,15,2);
    QRLabel53.Caption := FloattostrF(QJobord2.Fieldbyname('NETTOT').Asfloat,ffNumber,15,2);

    QRLabel47.Caption := FloattostrF((Sumprc-QJobord2.Fieldbyname('BALANCE').Asfloat),ffNumber,15,2);
  end;


  If QJobtrn.EOF Then
  begin
    If QJobord2.Fieldbyname('IDCARD').asstring<>'' Then
    Begin
       QRLabel16.enabled := True;
       QRDBText7.enabled := True;
       QRDBText14.enabled:= True;
    End
    Else
    Begin
       QRLabel16.enabled := False;
       QRDBText7.enabled := False;
       QRDBText14.enabled:= False;
    End;

    QRLabel4.enabled  := False;
    QRLabel14.enabled := True;
  end
  Else
  begin
    QRLabel4.enabled  := True;
    QRLabel16.enabled := False;
    QRLabel14.enabled := False;
    QRDBText7.enabled := False;
    QRDBText14.enabled:= False;
  end;

end;

procedure TFSpprn51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFSpprn51.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var Xuprc,Xnetprc,XDisc:Double;
begin
  If QJobtrn.FieldByName('QTY').Asfloat=0 Then
     QRDBText1.enabled := False
  Else
     QRDBText1.enabled := True;

  If FSpprn50.CheckBox1.Checked Then
  begin
     XUprc := QJobtrn.Fieldbyname('Uprice').Asfloat*(1+QJobord2.Fieldbyname('Vatrt').Asfloat/100);
     XNetprc:= QJobtrn.Fieldbyname('TOT').Asfloat*(1+QJobord2.Fieldbyname('Vatrt').Asfloat/100);
  end
  Else
  begin
     XUprc   := QJobtrn.Fieldbyname('Uprice').Asfloat;
     XNetprc := QJobtrn.Fieldbyname('TOT').Asfloat;
  end;
  Xdisc := (QJobtrn.Fieldbyname('Qty').Asfloat*XUprc-XNetprc);

  SumDsc :=SumDsc+Xdisc;
  Sumprc :=Sumprc+QJobtrn.Fieldbyname('Qty').Asfloat*XUprc;
  SumNet :=SumNet+XNetprc;

  QRLabel5.Caption := FloattostrF(Xuprc,ffNumber,15,2);
  QRLabel37.Caption := FloattostrF(XDisc,ffNumber,15,2);
  QRLabel38.Caption := FloattostrF(XNetprc,ffNumber,15,2);
end;

procedure TFSpprn51.QuickReportBeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
  Sumprc := 0;
  SumNet := 0;
  SumDsc := 0;
end;









end.
