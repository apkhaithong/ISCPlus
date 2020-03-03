unit Prnquo12;

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
  TFPrnquo12 = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrnquo12: TFPrnquo12;
  WordDate,Day1,Month1,Year1,wordamt : String;

implementation
uses Svin10,PrnQuo10,Functn01;

{$R *.DFM}

procedure TFPrnquo12.FormCreate(Sender: TObject);
begin
  // Setup Form
  QuickReport.page.Topmargin  := QuickReport.page.Topmargin+Fprnquo10.Xtop;
  QuickReport.page.Leftmargin := QuickReport.page.Leftmargin+Fprnquo10.XLeft;
  PageHeader.height := PageHeader.height+Fprnquo10.XHeader;
  //PageFooter.height := PageFooter.height+Fprnquo10.XFooter;

   condpay.open;
   QRLabel12.caption   := Condpay.FieldByName('COMP_NM').Asstring;

   with QQainv do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT A.Quotno,A.Qdate,A.Strno,A.TOTALPRC,A.INSURTYP,A.Memo1,A.Photo, '+
             'A.TotalVat,A.TotalAll,B.Regno,A.Policyno,A.Informno,A.Accidate,'+
             'A.Claimno,A.Excepval,A.Contact,A.RKilo,A.RECVDT,A.RETNDT,'+
             'B.Engno, B.Type,B.Mdlcod,'+
             'B.BaaB,B.Color,B.CC,B.Cuscod,C.Snam,C.Name1,C.Name2,C.Addr1,C.Addr2,'+
             'C.Tumb,C.Aump,C.Prov,C.Zip,C.Telp,C.Fax '+
             'FROM Qa_invoi A,Svmast B,Armast C '+
             'where (A.Quotno =:XQuotno) And (A.strno=B.strno) and (B.Cuscod=C.cuscod)');

     Params[0].Asstring := Fprnquo10.Label6.caption;
     Open;
   end;
   ChqDatetoS(Day1,Month1,Year1,2,QQainv.fieldByName('QDATE').AsDateTime);
   QRLabel4.Caption  := Day1+' '+Month1+' '+Year1;

   If QQainv.Fieldbyname('INSURTYP').Asstring='1' Then
     QRLabel16.Caption :='(X';
   If QQainv.Fieldbyname('INSURTYP').Asstring='2' Then
     QRLabel19.Caption :='(X';
   If QQainv.Fieldbyname('INSURTYP').Asstring='3' Then
     QRLabel21.Caption :='(X';

   If QQainv.Fieldbyname('Photo').Asstring='Y' Then
   Begin
     QRLabel37.Caption :='(X';
     QRLabel39.Caption :='( ';
   End
   Else
   Begin
     QRLabel37.Caption :='( ';
     QRLabel39.Caption :='(X';
   End;



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

end;

procedure TFPrnquo12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AcTion := Cafree;
end;


procedure TFPrnquo12.PageHeaderBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel24.Caption := QQainv.fieldByName('Snam').AsString+
                       QQainv.fieldByName('Name1').AsString+'   '+
                       QQainv.fieldByName('Name2').AsString+
                       '   [  '+QQainv.fieldByName('Cuscod').AsString+'  ] ';
  QRLabel25.Caption := QQainv.fieldByName('ADDR1').AsString+'  ¶.'+
                       QQainv.fieldByName('ADDR2').AsString+'  µ.'+
                       QQainv.fieldByName('Tumb').AsString+
                       '  Í.'+QQainv.fieldByName('Aump').AsString;

  QRLabel1.Caption  := '  ¨.'+QQainv.fieldByName('Prov').AsString+
                       '  [ '+QQainv.fieldByName('Zip').AsString+ ' ]'+
                       '  â·Ã. '+QQainv.fieldByName('Telp').AsString+
                       '  Fax. '+QQainv.fieldByName('Fax').AsString;
end;
























































end.
