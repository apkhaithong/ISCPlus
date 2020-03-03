unit Svrpc41;

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
  TFmSvRpc41 = class(TForm)
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
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    Query3: TFDQuery;
    QRBand5: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRSysData5: TQRSysData;
    QOthtrn: TFDQuery;
    DataSource1: TDataSource;
    QReduserv: TFDQuery;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    QRedupart: TFDQuery;
    QRLabel31: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QReduoil: TFDQuery;
    QRLabel26: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    Query1: TFDQuery;
    QTotpt: TFDQuery;
    QTotsv: TFDQuery;
    QTotoil: TFDQuery;
    QRLabel40: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRepBeforePrint(Sender: TQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpc41: TFmSvRpc41;
  SumTotal,Sumredusv,Sumredupt,SumreduOl,SumreduTot,
  SumreduOth,SumIncom :Double;

implementation
uses SvRpc40,Functn01, USoftFirm;

{$R *.DFM}

procedure TFmSvRpc41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFmSvRpc41.FormCreate(Sender: TObject);
Var Ed1,Ed2,Ed3,Xsort,Optdate :  String;
begin
  condpay.open;
  QRLabel4.caption   := CondpayCOMP_NM.Asstring;
  //
  QRLabel17.caption   := 'ระหว่างวันที่ '+FmSvRpc40.Edit_DateFrom.Text+' ถึงวันที่ '+FmSvRpc40.Edit_DateTo.Text;

 QOthtrn.Close;
 QReduserv.Close;
 QReduPart.Close;
 QReduOil.Close;

 With Query1 Do
 begin
   Close;
   Sql.clear;
   Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO=:V1');
   Params[0].AsString := FmSvRpc40.Edit1.Text;
   Open;
   QRLabel36.Caption := 'ชื่อแคมเปญ :'+Fieldbyname('Campnam').Asstring+' ['+
                        Fieldbyname('Campno').Asstring+']';
   QRLabel26.Caption := 'ระยะเวลาแคมเปญ : '+Fieldbyname('Startdt').Asstring+' ถึง '+
                        Fieldbyname('Enddate').Asstring;
   QRLabel18.Caption := 'เงื่อนไขแคมเปญ ส่วนลดอะไหล่ '+Fieldbyname('Ptr_rat1').Asstring+
                        ' %  ส่วนลดค่าบริการ '+Fieldbyname('Svr_rat1').Asstring+' %';
 end;
 //
 With Query3 Do
 begin
   Close;
   Sql.clear;
   {เฉพาะมูลค่า}
   Sql.Add('SELECT J.JOBNO,J.RECVDATE,J.PTAXNO,J.CAMPNO,J.Vattype,J.VAT,'+
           '(J.OUTJNET+J.COLORNET+J.OTHERNET) AS TOTAL1,'+
           '(J.SERVNET+J.OILNET+J.OUTJNET+J.COLORNET+J.OTHERNET+J.PARTNET) AS NETTOT,'+
           'J.LOCAT,J.REPCOD,S.REGNO,S.MDLCOD,S.STRNO  '+
           'FROM JOBORDER J,SVMAST S '+
           'WHERE (J.STRNO = S.STRNO) AND J.STATUS<>''C'' '+
           'AND J.LOCAT LIKE:XLOCAT AND J.CAMPNO =:XCMP AND '+
           'J.TAXDATE>=:Edit3 AND J.TAXDATE<=:EDIT4 ');
     {Condition Variable}
   Params[0].AsString := FmSvRpc40.Edit_Locat.Text+'%';
   Params[1].AsString := FmSvRpc40.Edit1.Text;
   Params[2].AsDate   := FmSvRpc40.Edit_DateFrom.Date;
   Params[3].AsDate   := FmSvRpc40.Edit_DateTo.Date;
   {Open SQL Table}
   OPEN;
   iF Bof and eof Then
   SFMain.RaiseException('ไม่มีรายการ');
 end;

  With QOthtrn Do
  begin
    Close;
    Sql.clear;
    Sql.Add('Select jobno,sum(Totpric) As Othtot,sum(Netpric) As Othnet from othtran where '+
    'Jobno=:JOBNO and Cancelid is Null group by Jobno');
    Open;
  End;

  With QTotpt   Do
  begin
    Close;
    Sql.clear;
    Sql.Add('Select jobno,sum(UPrice*Qty) As Totpt  from Parttran where '+
    'Jobno=:JOBNO And Group1<>''OL'' group by Jobno');
    Open;
  End;

  With QTotoil   Do
  begin
    Close;
    Sql.clear;
    Sql.Add('Select jobno,sum(UPrice*Qty) As Totol  from Parttran where '+
    'Jobno=:JOBNO And Group1=''OL'' group by Jobno');
    Open;
  End;

  With QTotsv   Do
  begin
    Close;
    Sql.clear;
    Sql.Add('Select jobno,sum(Price) as Totsv from Servtran where '+
    'Jobno=:JOBNO  group by Jobno');
    Open;
  End;

  With QReduserv   Do
  begin
    Close;
    Sql.clear;
    Sql.Add('Select jobno,sum(Price) as Totsv,sum(Price-Netpric) As Redusv from Servtran where '+
    'Jobno=:JOBNO and Campno=:Campno group by Jobno');
    Open;
  End;

  With QReduPart   Do
  begin
    Close;
    Sql.clear;
    Sql.Add('Select jobno,sum((UPrice*Qty)-Totprc) As Redupt from Parttran where '+
    'Jobno=:JOBNO and Campno=:Campno And Group1<>''OL'' group by Jobno');
    Open;
  End;

  With QReduOil   Do
  begin
   Close;
   Sql.clear;
   Sql.Add('Select jobno,sum(UPrice*Qty) As TotoL,sum((UPrice*Qty)-Totprc) As ReduOl from Parttran where '+
   'Jobno=:JOBNO and Campno=:Campno and Group1=''OL'' group by Jobno');
   Open;
  End;

end;

procedure TFmSvRpc41.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRlabel25.Caption := FloattostrF(SumTotal,ffNumber,15,2);
  QRlabel38.Caption := FloattostrF(Sumredusv,ffNumber,15,2);
  QRlabel39.Caption := FloattostrF(Sumredupt,ffNumber,15,2);
  QRlabel30.Caption := FloattostrF(Sumreduol,ffNumber,15,2);
  QRlabel35.Caption := FloattostrF(Sumredutot,ffNumber,15,2);
  QRlabel23.Caption := FloattostrF(Sumreduoth,ffNumber,15,2);
  QRlabel37.Caption := FloattostrF(SumIncom,ffNumber,15,2);
end;

procedure TFmSvRpc41.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var Total,redusv,redupt,reduOl,reduTot,reduOth,Incom :Double;
Var Xvat,Sum,Xoth :Double;
begin
  Xvat := Query3.Fieldbyname('Vat').Asfloat;
  If Query3.Fieldbyname('Vattype').Asstring='1' Then
  Begin
    Sum  := QOthtrn.Fieldbyname('Othtot').Asfloat+Query3.Fieldbyname('Total1').Asfloat+
              QTotsv.Fieldbyname('Totsv').Asfloat+QTotpt.Fieldbyname('Totpt').Asfloat+
              QTotOil.Fieldbyname('Totol').Asfloat;
    Total  := FRound((100/(100+XVat))*Sum,2);
    redusv := FRound((100/(100+XVat))*QReduserv.Fieldbyname('Redusv').Asfloat,2);
    redupt := FRound((100/(100+XVat))*QReduPart.Fieldbyname('Redupt').Asfloat,2);
    reduol := FRound((100/(100+XVat))*QReduOil.Fieldbyname('Reduol').Asfloat,2);
    Xoth   := FRound((100/(100+XVat))*QOthtrn.Fieldbyname('OthNet').Asfloat,2);
  end
  Else
  Begin
    Total  := QOthtrn.Fieldbyname('Othtot').Asfloat+Query3.Fieldbyname('Total1').Asfloat+
              QTotsv.Fieldbyname('Totsv').Asfloat+QTotpt.Fieldbyname('Totpt').Asfloat+
              QTotOil.Fieldbyname('Totol').Asfloat;
    redusv := QReduserv.Fieldbyname('Redusv').Asfloat;
    redupt := QReduPart.Fieldbyname('Redupt').Asfloat;
    reduol := QReduOil.Fieldbyname('Reduol').Asfloat;
    Xoth   := QOthtrn.Fieldbyname('OthNet').Asfloat;
  End;
  InCom  := Query3.Fieldbyname('Nettot').Asfloat+Xoth;

  Redutot:= redusv+redupt+reduol;
  Reduoth:= Total-Redutot-InCom;

  SumTotal  := SumTotal+Total;
  Sumredusv := Sumredusv+redusv;
  Sumredupt := Sumredupt+redupt;
  SumreduOl := SumreduOl+reduOl;
  SumreduTot:= SumreduTot+reduTot;
  SumreduOth:= SumreduOth+reduOth;
  SumIncom  := SumIncom+Incom;

  QRlabel24.Caption := FloattostrF(Total,ffNumber,15,2);
  QRlabel9.Caption  := FloattostrF(Redusv,ffNumber,15,2);
  QRlabel32.Caption := FloattostrF(Redupt,ffNumber,15,2);
  QRlabel27.Caption := FloattostrF(Reduol,ffNumber,15,2);
  QRlabel34.Caption := FloattostrF(Redutot,ffNumber,15,2);
  QRlabel22.Caption := FloattostrF(Reduoth,ffNumber,15,2);
  QRlabel33.Caption := FloattostrF(Incom,ffNumber,15,2);
end;


procedure TFmSvRpc41.QRepBeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
  SumTotal  :=0;
  Sumredusv :=0;
  Sumredupt :=0;
  SumreduOl :=0;
  SumreduTot:=0;
  SumreduOth:=0;
  SumIncom  :=0;
end;






end.
