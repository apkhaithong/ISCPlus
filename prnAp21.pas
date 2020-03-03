unit prnAP21;

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
  TFmprnAp21 = class(TForm)
    QuickReport: TQuickRep;
    Title: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel22: TQRLabel;
    Condpay: TFDQuery;
    QAPINV: TFDQuery;
    Query1: TFDQuery;
    QRLabel7: TQRLabel;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRDBText6: TQRDBText;
    Query2: TFDQuery;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel1: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmprnAp21: TFmprnAp21;
  SumQty,Sum1,Sum : double;
  WordDate,Day1,Month1,Year1,WordAmt : String;

implementation
uses prnAP20,functn01,Apinv04,USoftFirm;
{$R *.DFM}

procedure TFmprnAp21.FormCreate(Sender: TObject);
var Topm,Leftm:double;
    HD1,HD2:String;
begin
  Topm := QuickReport.page.Topmargin;
  QuickReport.page.Topmargin := Topm+FmprnAP20.Xtop;
  Leftm := QuickReport.Page.LeftMargin;
  QuickReport.Page.LeftMargin := Leftm+fmprnAP20.Xleft;

  HD1:='';
  HD2:='';

  Condpay.Open;

  With Query2 Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT * FROM PASSWRD WHERE USERID =:0 ');
    Params[0].AsString := SFMain.Xuser_ID;
    Open;
  End;

  With QAPINV Do
  begin
    Close;
    SQL.Clear;
    If Apinv_4.DBRadioGroup2.Itemindex=0 Then
    Sql.Add('SELECT A.INVNO,A.RECVDT,A.LOCAT,A.APCODE,A.TAXNO,A.JOBNO,A.FLAG,'+
            'A.CANCELID,A.DESCRP,A.BALANCE,A.VATRT,A.VATAMT,A.NETTOTAL,A.KANG, '+
            'A.RECVNO,A.INVDATE,A.MEMO1,A.TAXDATE,A.VATRT, '+
            'B.APNAME,B.ADDR1,B.ADDR2  '+
            'FROM APINVOI A,APMAST B '+
            'WHERE (A.INVNO =:Xno) And (A.APCODE = B.APCODE) ');

    If Apinv_4.DBRadioGroup2.Itemindex=1 Then
    Sql.Add('SELECT A.INVNO,A.RECVDT,A.LOCAT,A.APCODE,A.TAXNO,A.JOBNO,A.FLAG,'+
            'A.CANCELID,A.DESCRP,A.BALANCE,A.VATRT,A.VATAMT,A.NETTOTAL,A.KANG, '+
            'A.RECVNO,A.INVDATE,A.MEMO1,B.SNAM,B.NAME1,A.TAXDATE,A.VATRT, '+
            'B.NAME2,B.ADDR1,B.ADDR2,B.TUMB,B.AUMP,B.PROV,B.ZIP,B.TELP  '+
            'FROM APINVOI A,ARMAST B '+
            'WHERE (A.INVNO =:Xno) And (A.APCODE = B.CUSCOD) ');

    Params[0].AsString := Apinv_4.DBEdit23.Text;
    QRLabel7.Caption := Apinv_4.DBEdit23.Text;
    Open;


    If Bof and Eof Then
    SFMain.RaiseException('ไม่พบข้อมูล');
  End;

  With Query1 Do
  Begin
   Close;
   Sql.Clear;
   Sql.Add('Select * FROM CONDPAY ');
   Open;
   //QRLabel7.Caption := fieldByName('COMP_NM').AsString;
   //QRLabel28.Caption := fieldByName('COMP_ADR1').AsString;
   //QRLabel29.Caption := fieldByName('COMP_ADR2').AsString;
   End;

  //ChqDatetoS(Day1,Month1,Year1,2,Qapinv.fieldByName('Invdate').AsDateTime);
  //QRLabel1.Caption := Day1+' '+Month1+' '+Year1;
  //QRLabel1.Caption := Qapinv.fieldByName('Invdate').Asstring;


  If Apinv_4.DBRadioGroup2.Itemindex=1 Then
  Begin
  QRLabel23.caption := QAPINV.FieldByname('SNAM').AsString+
                       QAPINV.FieldByname('NAME1').AsString+'    '+
                       QAPINV.FieldByname('NAME2').AsString+' '+
                       QAPINV.FieldByname('APCODE').AsString;

   If QAPINV.FieldByname('TUMB').AsString<>'' Then HD1:=HD1+'   ต./แขวง '+QAPINV.FieldByname('TUMB').AsString;
   If QAPINV.FieldByname('AUMP').AsString<>'' Then HD2:=HD2+'อ./เขต '+QAPINV.FieldByname('AUMP').AsString;
   If QAPINV.FieldByname('PROV').AsString<>'' Then HD2:=HD2+'    จ.'+QAPINV.FieldByname('PROV').AsString+'  ['+QAPINV.FieldByname('ZIP').AsString+']';

   QRLabel24.caption := QAPINV.FieldByname('ADDR1').AsString+'   '+
                        QAPINV.FieldByname('ADDR2').AsString+HD1;

   QRLabel22.caption := HD2;

   //QRLabel9.Caption :='ใบรับมัดจำสินค้า';
  End
  Else
  Begin
    QRLabel23.caption := QAPINV.FieldByname('APNAME').AsString;
    QRLabel24.caption := QAPINV.FieldByname('ADDR1').AsString;
    QRLabel22.caption := QAPINV.FieldByname('ADDR2').AsString;
    //QRLabel9.Caption :='ใบบันทึกเจ้าหนี้อื่น';
  End;

   MainChg(WordAmt,QAPINV.FieldByname('NETTOTAL').Asfloat);
   Qrlabel14.Caption := '('+WordAmt+')';

end;


procedure TFmprnAp21.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If QAPINV.Fieldbyname('Cancelid').Asstring<>'' Then
    //QRLabel25.Enabled := True
  Else
    //QRLabel25.Enabled := False;

end;










end.
