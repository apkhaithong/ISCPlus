unit Prnhis11;

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
  TFPrnHis11 = class(TForm)
    QuickReport: TQuickRep;
    Title: TQRBand;
    QRLabel7: TQRLabel;
    PageHeader: TQRBand;
    QRLabel1: TQRLabel;
    Detail: TQRBand;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    Query4: TFDQuery;
    QArmast: TFDQuery;
    Condpay: TFDQuery;
    QJoborder3: TFDQuery;
    SoJoborder3: TDataSource;
    Query1: TFDQuery;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel19: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText28: TQRDBText;
    QRShape2: TQRShape;
    QRLabel39: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText30: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText20: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportBeforePrint(Sender: TQuickRep;
      var PrintReport: Boolean);
    procedure QuickReportEndPage(Sender: TQuickRep);
    procedure PageHeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrnHis11: TFPrnHis11;
  P:Integer;
  
implementation
uses Enqhist1,Prnhis10, DmSv;

{$R *.DFM}

procedure TFPrnHis11.FormCreate(Sender: TObject);
begin
   condpay.open;
   QRLabel12.caption   := Condpay.FieldByName('COMP_NM').Asstring;
   QRLabel12.Left      := 1;
   QRLabel12.Width     := 710;
   QRLabel12.Alignment := taCenter;
   QRLabel7.Left      := 1;
   QRLabel7.Width     := 710;
   QRLabel7.Alignment := taCenter;

   with Query4 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM SVMAST WHERE STRNO= :XSTRNO  ');
     Params[0].Asstring := FEnqHist.DBEdit39.text;
     Open;
     If Bof and Eof Then
     SFMain.RaiseException('ไม่พบประวัติเลขถังนี้');
   end;

   QRLabel11.Caption :='';
   with Query1 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM MODELMST WHERE MDLCOD= :XNO  ');
     Params[0].Asstring := Query4.FieldByName('MDLCOD').Asstring ;
     Open;
     QRLabel11.Caption := Query1.Fieldbyname('DESC').Asstring;
   end;

   with QJoborder3 do
   begin
     Close;
     Sql.Clear;
       Sql.Add('SELECT * FROM JOBORDER WHERE STRNO = :XNO '+
       'and Recvdate>=:dt1 and Recvdate<=:dt2 ORDER BY RECVDATE');
       Params[0].Asstring := FEnqHist.DBEdit39.text;
       Params[1].asdate := Fprnhis10.edFDate.Date;
       Params[2].asdate := Fprnhis10.edDateto.Date;
     Open ;
   end;

   With Query1 Do
   Begin
     Close;
     Sql.Clear;
     If Fprnhis10.RadioGroup1.Itemindex=0 Then
     Begin
     Sql.Add('Select Jobno,Code,Servcod,Desc1 As Desc,Uprice,Frt As Qty,Netpric,Claim,''LB'' As Type '+
             'From ServTran  '+
             'Where (Jobno =:Jobno)  '+
             'Union all '+
             'Select Jobno,Code,Servcod,Desc1 As Desc,Uprice,Qty,Netpric,Claim,''OU''  As Type '+
             'From OutTran '+
             'Where (Jobno =:Jobno) '+
             'Union all '+
             'Select Jobno,Code,Servcod,Desc1 as desc,Price As Uprice,Frt As Qty,Netpric,Claim,''CO''  As Type '+
             'From ColrTran '+
             'Where (Jobno =:Jobno) '+
             'Order By Jobno,Type');

     end;
     If Fprnhis10.RadioGroup1.Itemindex=1 Then
     Begin
     Sql.Add('Select A.Jobno,A.Partno As Code,A.Servcod,B.Desc1 As Desc,A.Uprice,A.Qty,Totprc As Netpric,A.Claim,''PT''  As Type '+
             'From PartTran A,Inventor B  '+
             'Where (A.Jobno =:Jobno) And (A.Partno=B.Partno and A.locat=B.Locat) ');
     end;
     If Fprnhis10.RadioGroup1.Itemindex=2 Then
     Begin
     Sql.Add('Select Jobno,Code,Servcod,Desc1 As Desc,Uprice,Frt As Qty,Netpric,Claim,''LB'' As Type '+
             'From ServTran  '+
             'Where (Jobno =:Jobno)  '+
             'Union all '+
             'Select Jobno,Code,Servcod,Desc1 As Desc,Uprice,Qty,Netpric,Claim,''OU''  As Type '+
             'From OutTran '+
             'Where (Jobno =:Jobno) '+
             'Union all '+
             'Select Jobno,Code,Servcod,Desc1 as desc,Price As Uprice,Frt As Qty,Netpric,Claim,''CO''  As Type '+
             'From ColrTran '+
             'Where (Jobno =:Jobno)'+
             'Union all '+
             'Select A.Jobno,A.Partno As Code,A.Servcod,B.Desc1 As Desc,A.Uprice,A.Qty,Totprc As Netpric,A.Claim,''PT''  As Type '+
             'From PartTran A,Inventor B  '+
             'Where (A.Jobno =:Jobno) And (A.Partno=B.Partno and A.locat=B.Locat) '+
             'Order By Jobno,Type');
     end;

     Open;
   End;

   with Qarmast do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM ARMAST WHERE CUSCOD = :XNO ');
     Params[0].Asstring := QJoborder3.FieldByname('Cuscod').AsString;
     Open ;
   end;
end;

procedure TFPrnHis11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AcTion := Cafree;
end;

procedure TFPrnHis11.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var HD1,HD2:String;
    Tumb,Aump,Prov :String;

begin
  HD1:='';
  HD2:='';

  QRLabel24.Caption := QArmast.fieldByName('Snam').AsString+
                       QArmast.fieldByName('Name1').AsString+'   '+
                       QArmast.fieldByName('Name2').AsString+
                       ' [ '+QArmast.fieldByName('Cuscod').AsString+' ] ';
  With Qarmast Do
  Begin
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
    QRLabel24.Caption := fieldByName('Snam').AsString+
                        fieldByName('Name1').AsString+'   '+
                        fieldByName('Name2').AsString;
    IF fieldByName('Tumb').AsString<>'' Then HD1:=HD1+Tumb+fieldByName('Tumb').AsString+'  ';
    If fieldByName('Aump').AsString<>'' Then HD1:=HD1+Aump+fieldByName('Aump').AsString;
    If fieldByName('Prov').AsString<>'' Then HD2:=HD2+Prov+fieldByName('Prov').AsString+' '+fieldByName('Zip').AsString;
    If fieldByName('Telp').AsString<>'' Then HD2:=HD2+'  โทร. '+fieldByName('Telp').AsString;
    If fieldByName('Fax').AsString<>'' Then HD2:=HD2+'  Fax. '+fieldByName('Fax').AsString;

    QRLabel25.Caption := fieldByName('ADDR1').AsString;
    If fieldByName('ADDR2').AsString<>'' Then
    QRLabel25.Caption :=QRLabel25.Caption+' ถ.'+fieldByName('ADDR2').AsString;
    QRLabel25.Caption :=QRLabel25.Caption+' '+HD1+' '+HD2;
  End;

end;

























procedure TFPrnHis11.QuickReportBeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
  P:=0;
  QRDBText23.Enabled := Fprnhis10.CheckBox1.Checked;
  QRDBText24.Enabled := QRDBText23.Enabled;
end;

procedure TFPrnHis11.QuickReportEndPage(Sender: TQuickRep);
begin
  P:=P+1;
end;

procedure TFPrnHis11.PageHeaderBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel39.Enabled  := P>0;
  QRDBText29.Enabled := QRLabel39.Enabled;
  QRLabel40.Enabled  := QRLabel39.Enabled;
  QRDBText30.Enabled := QRLabel39.Enabled;

end;



end.
