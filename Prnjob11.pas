unit Prnjob11;

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
  TFPrnjob11 = class(TForm)
    QuickReport: TQuickRep;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QJobord: TFDQuery;
    QOrdrep: TFDQuery;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRBand1: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel36: TQRLabel;
    QRMemo1: TQRMemo;
    Condpay: TFDQuery;
    QRShape1: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel42: TQRLabel;
    Query1: TFDQuery;
    QRLabel44: TQRLabel;
    QRBand2: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel43: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure PageHeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrnjob11: TFPrnjob11;
  SumQty,Sum1,Sum : double;
  Count   : Integer;
  Day1,Month1,Year1 : String;
implementation
uses SvIn20,prnjob10,DMSV,Functn01, USoftFirm;
{$R *.DFM}

procedure TFPrnjob11.FormCreate(Sender: TObject);
begin
  // Setup Form
  QuickReport.page.Topmargin  := QuickReport.page.Topmargin+Fprnjob10.Xtop;
  QuickReport.page.Leftmargin := QuickReport.page.Leftmargin+Fprnjob10.XLeft;
  PageHeader.Height := PageHeader.Height+Fprnjob10.XHeader;
  //
 Count := 0;
 With QJobord Do
 begin
   Close;
   Sql.clear;
   Sql.Add('SELECT J.JOBNO,J.RECVDATE,J.LOCAT,J.STRNO,J.CUSCOD,M.SDATE, '+
           'J.FINSDATE,J.FINSTIME,J.RLKILOMT,J.RECVCOD,J.TOPNO,J.RECVTIME,J.RUNNO, '+
           'M.REGNO,M.ENGNO,M.MDLCOD,M.BAAB,M.COLOR,M.CC,M.VIPCARD,C.SNAM,C.NAME1,C.NAME2, '+
           'C.ADDR1,C.ADDR2,C.TUMB,C.AUMP,C.PROV,C.ZIP,C.TELP,C.FAX,C.CONTACT,C.MOBILE, '+
           'M.STRNO,M.BODYNO,S.TYPNAME,J.REPTYPE,D.DESC,T.TYPENAM '+
           'FROM JOBORDER J,SVMAST M,ARMAST C, '+
           'SVTYPE S,MODELMST D,TYPEMST T  WHERE J.JOBNO =:XJOB AND J.STRNO=M.STRNO AND '+
           'S.TYPCOD=J.REPTYPE AND M.MDLCOD=D.MDLCOD AND J.CUSCOD=C.CUSCOD AND '+
           'M.TYPE=T.TYPECOD');
   If Not QJobord.Prepared Then QJobord.Prepare;
   params[0].asString  := Fprnjob10.Label1.Caption;//Dm_sv.QJoborder1.Fieldbyname('JOBNO').Asstring;
   OPEN;
   If Bof and Eof Then
   SFMain.RaiseException('ไม่พบข้อมูล หรือตรวจสอบรหัสรุ่น รหัสยี่ห้อ รหัสลูกค้า อีกครั้ง');
 end;

 With QOrdrep Do
 begin
   Close;
   Sql.clear;
   Sql.Add('SELECT * FROM ORDREP WHERE JOBNO =:XJOB ');
   params[0].asString  := QJobord.Fieldbyname('JOBNO').Asstring;
   If Not QOrdrep.Prepared Then QOrdrep.Prepare;
   OPEN;
 end;

 With Query1 Do
 begin
   Close;
   Sql.clear;
   Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD =:XCOD ');
   params[0].asString  := QJobord.Fieldbyname('RECVCOD').Asstring;
   OPEN;
   If Bof and Eof Then
   SFMain.RaiseException('ไม่พบรหัสพนักงาน');
   QRLabel44.Caption := Fieldbyname('OFFICNAM').Asstring;
 end;

 With Query1 Do
 begin
   Close;
   Sql.clear;
   Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD =:XCOD ');
   params[0].asString  := QJobord.Fieldbyname('LOCAT').Asstring;
   OPEN;
   If Bof and Eof Then
   SFMain.RaiseException('ไม่พบรหัสสาขา');
   QRLabel26.Caption := fieldByName('LocatNam').AsString+' [ '+
                          fieldByName('Locatcod').AsString+' ] ';
 end;

end;

procedure TFPrnjob11.PageHeaderBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var S1 :string;
   HD1,HD2:string;
   Tumb,Aump,Prov :String;
begin
   With QJobord Do
   Begin
     QRLabel6.Caption  := 'VIP No. '+fieldByName('VIPCARD').AsString;
     QRLabel6.Enabled  := fieldByName('VIPCARD').AsString<>'';
     ChqDatetoS(Day1,Month1,Year1,2,fieldByName('RECVDATE').AsDateTime);
     QRLabel1.Caption  := Day1+' '+Month1+' '+Year1;

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
     QRLabel25.Caption := fieldByName('Snam').AsString+
                         fieldByName('Name1').AsString+'   '+
                         fieldByName('Name2').AsString+' [ '+
                         fieldByName('Cuscod').AsString+' ] ';

     IF fieldByName('Tumb').AsString<>'' Then HD1:=HD1+Tumb+fieldByName('Tumb').AsString+'  ';
     If fieldByName('Aump').AsString<>'' Then HD1:=HD1+Aump+fieldByName('Aump').AsString+' ';
     If fieldByName('Prov').AsString<>'' Then HD1:=HD1+Prov+fieldByName('Prov').AsString+' '+fieldByName('Zip').AsString;
     If fieldByName('Telp').AsString<>'' Then HD2:=HD2+'โทร. '+fieldByName('Telp').AsString;
     If fieldByName('Contact').AsString<> '' Then HD2:=HD2+'  ผู้ติดต่อ '+fieldByName('Contact').AsString;

     QRLabel28.Caption := fieldByName('ADDR1').AsString;
     If fieldByName('ADDR2').AsString<>'' Then
     QRLabel28.Caption :=QRLabel28.Caption+' ถ.'+fieldByName('ADDR2').AsString;
     QRLabel28.Caption :=QRLabel28.Caption+' '+HD1;
     QRLabel27.Caption  := HD2;
     
     QRLabel47.Caption  :='';
     If fieldByName('Mobile').AsString<>'' Then
     QRLabel47.Caption  := 'Mobile :'+fieldByName('Mobile').AsString;

     ChqDatetoS(Day1,Month1,Year1,2,fieldByName('FINSDATE').AsDateTime);

     QRLabel2.Caption  := Day1+' '+Month1+' '+Year1;

     QRLabel3.Caption  := fieldByName('TYPNAME').AsString+' [ '+
                          fieldByName('REPTYPE').AsString+ ' ] ';
     QRLabel4.Caption  := fieldByName('BAAB').AsString;
     QRLabel38.Caption := fieldByName('TYPENAM').AsString;
     QRLabel40.Caption := fieldByName('DESC').AsString;
     
     If QJobord.fieldByName('SDATE').asstring<>'' Then
     begin
      ChqDatetoS(Day1,Month1,Year1,2,fieldByName('SDATE').AsDateTime);
      QRLabel5.Caption  := Day1+' '+Month1+' '+Year1;
     End
     Else
      QRLabel5.Caption  :='';
   End;
end;

procedure TFPrnjob11.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Count := Count + 1;
   If Count>=16 Then
   begin
     Count:=0;
     QuickReport.Newpage;
   end;
end;

procedure TFPrnjob11.QRBand1BeforePrint(Sender: TQRCustomBand;
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


















procedure TFPrnjob11.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   Count := 0;
end;

end.
