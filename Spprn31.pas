unit Spprn31;

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
  TFSpprn31 = class(TForm)
    QOthinv: TFDQuery;
    Query2: TFDQuery;
    QArmast: TFDQuery;
    QOthtrn: TFDQuery;
    Condpay: TFDTable;
    DataSource1: TDataSource;
    QArpaytrn: TFDQuery;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure DetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickReportBeforePrint(Sender: TQuickRep;
      var PrintReport: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSpprn31: TFSpprn31;
  PTTOT,PTNET,SVTOT,SVNET : double;
  WordDate,Day1,Month1,Year1,wordamt : String;

implementation
uses Spprn30,functn01;
{$R *.DFM}

procedure TFSpprn31.FormCreate(Sender: TObject);
var HD1,HD2:string;
    Tumb,Aump,Prov :String;
begin
  //--Set Frame --
  QuickReport.page.Topmargin   := QuickReport.page.Topmargin+FSpprn30.Xtop;
  QuickReport.page.Leftmargin  := QuickReport.page.Leftmargin+FSpprn30.XLeft;
  PageHeader.Height := PageHeader.Height+FSpprn30.XHeader;
  PageFooter.Height := PageFooter.Height+FSpprn30.XFooter;
  //

  HD1:='';
  HD2:='';
  With Query2 Do
  Begin
   Close;
   Sql.Clear;
   Sql.Add('DELETE FROM TEMPTB2');
   Execsql;
  End;

  Qarmast.Close;
  //
  with QArpaytrn do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = :XBILNO ');
   Params[0].Asstring := FSpprn30.Label1.Caption;
   Open ;
  end;

  With Qothinv Do
  begin
   Close;
   Sql.clear;
   Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO=:EDIT1');
   params[0].asString  := FSpprn30.Xinvno;
   OPEN;
   //
   If fieldByName('Ptype').AsString='C' Then
   begin
    QRLabel11.Caption := Datetostr(fieldByName('DUEDATE').AsDateTime);
    QRLabel5.Enabled := False;
    QRLabel6.Enabled := True;
   end
   Else
   begin
    QRLabel11.Caption :='';
    QRLabel5.Enabled := True;
    QRLabel6.Enabled := False;
   end;
   QRLabel27.Caption := Floattostr(fieldByName('VAT').AsFloat)+' %';
   QRLabel8.Caption  := Floattostr(fieldByName('Duedate').Asdatetime-fieldByName('Invdate').Asdatetime);
  end;

  //
  Qarmast.Open;
  With QArmast Do
  Begin
    If ((Copy(FieldByName('Prov').AsString,1,7)='°√ÿß‡∑æ')or
     (Copy(FieldByName('Prov').AsString,1,3)='°∑¡')) Then
    Begin
      Tumb :='·¢«ß ';
      Aump :='‡¢µ ';
      Prov :='';
    End
    Else
    Begin
      Tumb :='µ.';
      Aump :='Õ.';
      Prov :='®.';
    End;
    QRLabel12.Caption := fieldByName('Cuscod').AsString;
    QRLabel68.Caption := fieldByName('Snam').AsString+
                        fieldByName('Name1').AsString+'  '+
                        fieldByName('Name2').AsString;
    IF fieldByName('Tumb').AsString<>'' Then HD1:=HD1+Tumb+fieldByName('Tumb').AsString+'  ';
    If fieldByName('Aump').AsString<>'' Then HD1:=HD1+Aump+fieldByName('Aump').AsString;
    If fieldByName('Prov').AsString<>'' Then HD2:=HD2+Prov+fieldByName('Prov').AsString+' '+fieldByName('Zip').AsString;
    If fieldByName('Telp').AsString<>'' Then HD2:=HD2+'  ‚∑√. '+fieldByName('Telp').AsString;

    QRLabel69.Caption := fieldByName('ADDR1').AsString;
    If fieldByName('ADDR2').AsString<>'' Then
    QRLabel69.Caption :=QRLabel69.Caption+' ∂.'+fieldByName('ADDR2').AsString;

    QRLabel70.Caption := HD1;
    QRLabel2.Caption  := HD2;
  end;
   MainChg(WordAmt,QOthinv.fieldByName('NETPRC').Asfloat);
   Qrlabel14.Caption := WordAmt;

 With Query2 Do
 Begin
   Close;
   Sql.Clear;
   Sql.Add('Select S.STRNO,S.REGNO,S.Engno,S.SDATE,S.CUSCOD,J.REPCOD,'+
   'A.TYPENAM,D.DESC,J.RECVDATE,J.RLKILOMT '+
    ' FROM SVMAST S,JOBORDER J,TYPEMST A,MODELMST D '+
    'Where (J.JOBNO =:Jobno) AND (J.STRNO=S.STRNO) AND S.TYPE=A.TYPECOD AND S.MDLCOD=D.MDLCOD');
   Params[0].AsString := QOthinv.FieldByName('JOBNO').AsString;
   Open;
   QRLabel28.Caption := fieldByName('Desc').AsString;
   QRLabel29.Caption := Floattostr(fieldByName('RLKILOMT').Asfloat);
   QRLabel17.Caption := fieldByName('STRNO').AsString;
   QRLabel9.Caption := fieldByName('REGNO').AsString;
   QRLabel16.Caption := fieldByName('SDATE').AsString;
 End;

 With Query1 Do
 Begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT SNAM,NAME1,NAME2 FROM ARMAST WHERE CUSCOD=:1');
   Params[0].Asstring := Query2.Fieldbyname('Cuscod').Asstring;
   Open;
   QRLabel7.Caption := fieldByName('SNam').AsString+' '+
                       fieldByName('Name1').AsString+' '+
                       fieldByName('Name2').AsString;
 END;
 With Query1 Do
 Begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD=:1');
   Params[0].Asstring := Query2.Fieldbyname('REPCOD').Asstring;
   Open;
   QRLabel1.Caption := fieldByName('Officnam').AsString;
 END;


 with QOthtrn do
 begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM OTHTRAN WHERE INVNO=:EDIT');
   Params[0].AsString := FSpprn30.Xinvno;
   Open;
 end;

end;

procedure TFSpprn31.DetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  PTTOT := PTTOT+(QOthtrn.Fieldbyname('Qty').Asfloat*QOthtrn.Fieldbyname('Uprice').Asfloat);
  PTNET := PTNET+QOthtrn.Fieldbyname('NETPRIC').Asfloat;
end;

procedure TFSpprn31.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var PTDSC,SVDSC,XRedu:Double;
begin
  PTDSC := PTTOT-PTNET;
  SVDSC := SVTOT-SVNET;
  XRedu :=0;
  QRLabel18.Caption := FloattostrF(PTNET,ffNumber,15,2);
  QRLabel19.Caption := FloattostrF(XRedu,ffNumber,15,2);

  QRLabel37.Enabled := (QArpaytrn.Fieldbyname('Cancelid').asstring<>'') Or
                       (Qothinv.Fieldbyname('Cancelid').asstring<>'');


  If QOthtrn.EOF Then
  begin
    QRDBText8.enabled  := True;
    QRDBText9.enabled  := True;
    QRDBText10.enabled := True;
    QRLabel4.enabled   := False;
    QRLabel14.enabled  := True;

    QRLabel3.Enabled  := QArpaytrn.Fieldbyname('Paytyp').Asstring ='01';
    QRLabel10.Enabled := QArpaytrn.Fieldbyname('Paytyp').Asstring ='02';
    QRLabel21.Enabled := (QArpaytrn.Fieldbyname('Paytyp').Asstring <>'02')and
                         (QArpaytrn.Fieldbyname('Paytyp').Asstring <>'01')and
                         (QArpaytrn.Fieldbyname('Paytyp').Asstring <>'');

  end
  Else
  begin
    QRDBText8.enabled := false;
    QRDBText9.enabled := false;
    QRDBText10.enabled := false;
    QRLabel4.enabled   := True;
    QRLabel14.enabled  := False;
  end;
end;

procedure TFSpprn31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;






















procedure TFSpprn31.QuickReportBeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
  PTTOT :=0;
  PTNET :=0;
  SVTOT :=0;
  SVNET :=0;
end;








procedure TFSpprn31.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var Amount:Double;
begin
  Amount := QOthtrn.Fieldbyname('Qty').Asfloat*QOthtrn.Fieldbyname('Uprice').Asfloat;
  QRLabel26.Caption := Floattostrf(Amount,ffnumber,15,2);
end;



end.
