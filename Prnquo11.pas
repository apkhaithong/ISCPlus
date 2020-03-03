unit Prnquo11;

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
  TFPrnquo11 = class(TForm)
    Condpay: TFDTable;
    QQainv: TFDQuery;
    QQatrn: TFDQuery;
    QQatrnQUOTNO: TStringField;
    QQatrnDESC1: TStringField;
    QQatrnQTY: TFloatField;
    QQatrnUPRICE: TFloatField;
    QQatrnREDU: TFloatField;
    QQatrnNETPRIC: TFloatField;
    QQatrnTOTALPRC: TFloatField;
    QQatrnUSERID: TStringField;
    QQatrnTIME1: TDateTimeField;
    QQatrnPARTNO: TStringField;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrnquo11: TFPrnquo11;
  WordDate,Day1,Month1,Year1,wordamt : String;

implementation
uses Svin10,PrnQuo10,Functn01;

{$R *.DFM}

procedure TFPrnquo11.FormCreate(Sender: TObject);
var Topm:double;
    Tumb,Aump,Prov :String;
begin
  //--Set Frame --
  QuickReport.page.Topmargin   := QuickReport.page.Topmargin+Fprnquo10.Xtop;
  QuickReport.page.Leftmargin  := QuickReport.page.Leftmargin+Fprnquo10.XLeft;
  PageHeader.Height := PageHeader.Height+Fprnquo10.XHeader;
  PageFooter.Height := PageFooter.Height+Fprnquo10.XFooter;

   condpay.open;
   QRLabel12.caption   := Condpay.FieldByName('COMP_NM').Asstring;

   with QQainv do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT A.Quotno,A.Locat,A.Qdate,A.Strno,A.TOTALPRC,A.INSURTYP,A.Memo1, '+
             'A.TotalVat,A.TotalAll,B.Regno,B.Engno, B.Type,B.Mdlcod,D.Typenam,'+
             'B.BaaB,B.Color,B.CC,B.Cuscod,C.Snam,C.Name1,C.Name2,C.Addr1,C.Addr2,'+
             'C.Tumb,C.Aump,C.Prov,C.Zip,C.Telp,C.Fax '+
             'FROM Qa_invoi A,Svmast B,Armast C,Typemst D '+
             'where (A.Quotno =:XQuotno) And (A.strno=B.strno) and (B.Cuscod=C.cuscod) and (B.Type=D.Typecod)');

     Params[0].Asstring := Fprnquo10.Label6.caption;
     Open;
   end;
   ChqDatetoS(Day1,Month1,Year1,2,QQainv.fieldByName('QDATE').AsDateTime);
   QRLabel4.Caption  := Day1+' '+Month1+' '+Year1;

   MainChg(WordAmt,QQainv.fieldByName('TotalAll').Asfloat);
   Qrlabel15.Caption := WordAmt;

   with QQatrn do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM Qa_Tran WHERE Quotno =:XQuotno ');
     Params[0].Asstring := QQainv.FieldByName('Quotno').AsString;
     Open;
   end;

   with Query1 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT MDLCOD,DESC FROM MODELMST WHERE MDLCOD =:EDIT ');
     Params[0].Asstring := QQainv.FieldByName('MDLCOD').AsString;
     Open;
     QRLabel3.CAPTION := Query1.Fieldbyname('Desc').asstring;
   end;

   With Query1 Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * FROM LOCATMST Where (LOCATCOD =:Jobno) ');
     Params[0].AsString := QQainv.FieldByName('LOCAT').AsString;
     Open;

     QRLabel12.Caption := Query1.fieldByName('LOCATNAM').AsString+' ['+Query1.fieldByName('LOCATCOD').AsString+']';

     QRLabel42.Caption := fieldByName('ADDR1').AsString;
     QRLabel43.Caption := '';
     QRLabel44.Caption := '';

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


     If fieldByName('ADDR2').AsString <> '' Then
        QRLabel42.Caption := QRLabel42.Caption+' ∂.'+fieldByName('ADDR2').AsString+' ';
     If fieldByName('TUMB').AsString <> '' Then
        QRLabel42.Caption := QRLabel42.Caption+Tumb+fieldByName('TUMB').AsString+' ';
     If fieldByName('AUMP').AsString <> '' Then
        QRLabel42.Caption := QRLabel42.Caption+Aump+fieldByName('AUMP').AsString;
     If fieldByName('PROV').AsString <> '' Then
        QRLabel43.Caption := QRLabel43.Caption+Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
     If fieldByName('TELP').AsString <> '' Then
        QRLabel44.Caption := '‚∑√.'+fieldByName('TELP').AsString;

   End;

end;

procedure TFPrnquo11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AcTion := Cafree;
end;


procedure TFPrnquo11.PageHeaderBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var Tumb,Aump,Prov :String;
begin
  QRLabel25.Caption := '';
  QRLabel1.Caption  := '';

  QRLabel24.Caption := QQainv.fieldByName('Snam').AsString+
                       QQainv.fieldByName('Name1').AsString+'   '+
                       QQainv.fieldByName('Name2').AsString+
                       ' ['+QQainv.fieldByName('Cuscod').AsString+']';

     If ((Copy(QQainv.FieldByName('Prov').AsString,1,7)='°√ÿß‡∑æ')or
     (Copy(QQainv.FieldByName('Prov').AsString,1,3)='°∑¡')) Then
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

  QRLabel25.Caption := QQainv.fieldByName('ADDR1').AsString+'  ∂.'+
                       QQainv.fieldByName('ADDR2').AsString+' ';

  If QQainv.fieldByName('TUMB').AsString <> '' Then
        QRLabel25.Caption := QRLabel25.Caption+Tumb+QQainv.fieldByName('TUMB').AsString+' ';

  If QQainv.fieldByName('AUMP').AsString <> '' Then
     QRLabel25.Caption := QRLabel25.Caption+Aump+QQainv.fieldByName('AUMP').AsString;
  If QQainv.fieldByName('PROV').AsString <> '' Then
     QRLabel1.Caption  := Prov+QQainv.fieldByName('Prov').AsString+
                       '  '+QQainv.fieldByName('Zip').AsString+' ';
  If QQainv.fieldByName('TELP').AsString <> '' Then
     QRLabel1.Caption := QRLabel1.Caption+'‚∑√. '+QQainv.fieldByName('Telp').AsString+' ';
  If QQainv.fieldByName('Fax').AsString <> '' Then
     QRLabel1.Caption := QRLabel1.Caption+'Fax. '+QQainv.fieldByName('Fax').AsString;
end;


procedure TFPrnquo11.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  {If QQatrn.EOF Then
     PageFooter.Enabled := False
  Else
     PageFooter.Enabled := True;
   }
  If Fprnquo10.RadioButton1.Checked Then
  Begin
    QRLabel35.Enabled := True;
    QRLabel36.Enabled := True;
    QRLabel37.Enabled := True;
    QRLabel38.Enabled := True;
    QRLabel39.Enabled := True;
    QRLabel40.Enabled := True;
    QrMemo1.Enabled := False;
  end
  Else
  Begin
    QRLabel35.Enabled := False;
    QRLabel36.Enabled := False;
    QRLabel37.Enabled := False;
    QRLabel38.Enabled := False;
    QRLabel39.Enabled := False;
    QRLabel40.Enabled := False;
  end;

  If Fprnquo10.RadioButton2.Checked Then
  If QQainv.Fieldbyname('Memo1').Asstring<>'' Then
  Begin
    QrMemo1.Enabled := True;
    QrMemo1.Lines.Clear;
    QrMemo1.Lines.Add(QQainv.Fieldbyname('Memo1').Asstring);
  end
  Else
    QrMemo1.Enabled := False;

end;


end.
