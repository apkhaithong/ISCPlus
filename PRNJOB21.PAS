unit Prnjob21;

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
  TFPrnjob21 = class(TForm)
    QJobord: TFDQuery;
    QJobordJOBNO: TStringField;
    QJobordRECVDATE: TDateField;
    QJobordLOCAT: TStringField;
    QJobordSTRNO: TStringField;
    QJobordCUSCOD: TStringField;
    QJobordFINSDATE: TDateField;
    QJobordFINSTIME: TStringField;
    QJobordRLKILOMT: TFloatField;
    QJobordRECVCOD: TStringField;
    QJobordRECVTIME: TStringField;
    QJobordREGNO: TStringField;
    QJobordENGNO: TStringField;
    QJobordMDLCOD: TStringField;
    QJobordCOLOR: TStringField;
    QJobordCC: TStringField;
    QJobordSNAM: TStringField;
    QJobordNAME1: TStringField;
    QJobordNAME2: TStringField;
    QJobordADDR1: TStringField;
    QJobordADDR2: TStringField;
    QJobordTUMB: TStringField;
    QJobordAUMP: TStringField;
    QJobordPROV: TStringField;
    QJobordZIP: TStringField;
    QJobordTELP: TStringField;
    QJobordFAX: TStringField;
    QJobordOFFICNAM: TStringField;
    QJobordSTRNO_1: TStringField;
    QOrdrep: TFDQuery;
    QJobordLOCATNAM: TStringField;
    QJobordTYPNAME: TStringField;
    QJobordREPTYPE: TStringField;
    QJobordDESC: TStringField;
    QJobordSDATE: TDateField;
    QJobordBAAB: TStringField;
    QJobordVIPCARD: TStringField;
    QJobordCONTACT: TStringField;
    QJobordTOPNO: TStringField;
    QJobordRUNNO: TStringField;
    Condpay: TFDQuery;
    QJobordMEMO1: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportBeforePrint(Sender: TQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrnjob21: TFPrnjob21;
  SumQty,Sum1,Sum : double;
  Count   : Integer;
  Day1,Month1,Year1 : String;
implementation
uses SvIn20,prnjob20,DMSV,Functn01;
{$R *.DFM}

procedure TFPrnjob21.FormCreate(Sender: TObject);
var Topm:double;
begin
  Topm :=QuickReport.page.Topmargin;
  QuickReport.page.Topmargin := Topm+Fprnjob20.SpinEdit1.Value;

 Count := 0;
 With QJobord Do
 begin
   Close;
   Sql.clear;
   Sql.Add('SELECT J.JOBNO,J.RECVDATE,J.LOCAT,J.STRNO,J.CUSCOD,M.SDATE,J.MEMO1, '+
           'J.FINSDATE,J.FINSTIME,J.RLKILOMT,J.RECVCOD,J.TOPNO,J.RECVTIME,J.RUNNO, '+
           'M.REGNO,M.ENGNO,M.MDLCOD,M.BAAB,M.COLOR,M.CC,M.VIPCARD,C.SNAM,C.NAME1,C.NAME2, '+
           'C.ADDR1,C.ADDR2,C.TUMB,C.AUMP,C.PROV,C.ZIP,C.TELP,C.FAX,C.CONTACT, '+
           'F.OFFICNAM,M.STRNO,L.LOCATNAM,S.TYPNAME,J.REPTYPE,D.DESC '+
           'FROM JOBORDER J,SVMAST M,ARMAST C,OFFICER F,LOCATMST L, '+
           'SVTYPE S,MODELMST D WHERE J.JOBNO =:XJOB AND J.STRNO=M.STRNO AND '+
           'S.TYPCOD=J.REPTYPE AND M.MDLCOD=D.MDLCOD AND J.CUSCOD=C.CUSCOD AND '+
           'J.RECVCOD=F.OFFICCOD AND J.LOCAT=L.LOCATCOD');
   If Not QJobord.Prepared Then QJobord.Prepare;
   params[0].asString  := Fprnjob20.Label1.Caption;//Dm_sv.QJoborder1.Fieldbyname('JOBNO').Asstring;
   OPEN;
   //
 end;

 With QOrdrep Do
 begin
   Close;
   Sql.clear;
   Sql.Add('SELECT O.JOBNO,O.NO,O.REPDESC FROM ORDREP O '+
           'WHERE O.JOBNO =:XJOB ');
   params[0].asString  := QJobord.Fieldbyname('JOBNO').Asstring;
   If Not QOrdrep.Prepared Then QOrdrep.Prepare;
   OPEN;
 end;
end;

procedure TFPrnjob21.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var S1 :string;
begin
   With QJobord Do
   Begin
     QRLabel6.Caption  := 'VIP No. '+fieldByName('VIPCARD').AsString;


     QRLabel26.Caption := fieldByName('LocatNam').AsString+' [ '+
                          fieldByName('Locat').AsString+' ] ';
     QRLabel25.Caption := fieldByName('Snam').AsString+
                          fieldByName('Name1').AsString+'   '+
                          fieldByName('Name2').AsString+' [ '+
                          fieldByName('Cuscod').AsString+' ] ';
     QRLabel28.Caption := fieldByName('ADDR1').AsString+' '+
                          fieldByName('ADDR2').AsString+' ต./แขวง '+
                          fieldByName('Tumb').AsString+'อ./เขต '+
                          fieldByName('Aump').AsString+' จ.'+
                          fieldByName('Prov').AsString+'  '+
                          fieldByName('Zip').AsString;
     ChqDatetoS(Day1,Month1,Year1,2,fieldByName('RECVDATE').AsDateTime);
     QRLabel1.Caption  := Day1+' '+Month1+' '+Year1;
     S1 := fieldByName('Telp').AsString;
     If fieldByName('Fax').AsString<>'' Then S1:=S1+' Fax. '+fieldByName('Fax').AsString;
     If fieldByName('Contact').AsString<> '' Then S1:=S1+'  ผู้ติดต่อ '+fieldByName('Contact').AsString;
     QRLabel27.Caption := S1;
     ChqDatetoS(Day1,Month1,Year1,2,fieldByName('FINSDATE').AsDateTime);

     QRLabel2.Caption  := Day1+' '+Month1+' '+Year1;

     QRLabel3.Caption  := fieldByName('TYPNAME').AsString+' [ '+
                          fieldByName('REPTYPE').AsString+ ' ] ';
     QRLabel4.Caption  := fieldByName('BAAB').AsString;
     //fieldByName('BAAB').AsString ;
     If QJobord.fieldByName('SDATE').asstring<>'' Then
     begin
      ChqDatetoS(Day1,Month1,Year1,2,fieldByName('SDATE').AsDateTime);
      QRLabel5.Caption  := Day1+' '+Month1+' '+Year1;
     End
     Else
      QRLabel5.Caption  :='';
   End;

  If QJobord.Fieldbyname('Memo1').Asstring<>'' Then
  Begin
    QrMemo1.Lines.Clear;
    QrMemo1.Enabled := True;
    QrMemo1.Lines.Add(QJobord.Fieldbyname('Memo1').Value);
  end
  Else
    QrMemo1.Enabled := False;
end;

procedure TFPrnjob21.DetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   if Count >= 13 then
   begin
     Count := 0;
     QuickReport.Newpage;
   end;
end;

procedure TFPrnjob21.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Count := Count + 1;
end;

procedure TFPrnjob21.QuickReportBeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
   Count := 0;
end;
































procedure TFPrnjob21.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If Not Condpay.Active Then Condpay.Open;
  If Condpay.Fieldbyname('Memo1').Asstring<>'' Then
  Begin
    QrMemo1.Lines.Clear;
    If QOrdrep.Eof Then
    begin
      QrMemo1.Enabled := True;
      QrMemo1.Lines.Add(Condpay.Fieldbyname('Memo1').Value);
    end
    Else
      QrMemo1.Enabled := False;
  end
  Else
    QrMemo1.Enabled := False;
end;





end.
