unit Svrpc51;

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
  TFSvrpc51 = class(TForm)
    Condpay: TFDQuery;
    CondpayCURYEAR: TStringField;
    CondpayCURMONTH: TStringField;
    CondpayLICEN_NO: TStringField;
    CondpayCOMP_NM: TStringField;
    CondpayCOMP_ADR1: TStringField;
    CondpayCOMP_ADR2: TStringField;
    CondpayTELP: TStringField;
    CondpayTAXID: TStringField;
    CondpayVATRT: TFloatField;
    CondpayTAXNAME: TStringField;
    CondpayTAXADDR: TStringField;
    CondpaySVRATE: TFloatField;
    CondpayNEXTKILO: TFloatField;
    CondpayNEXTDAY: TFloatField;
    CondpaySVFLAG: TStringField;
    CondpayCAMTYP: TStringField;
    CondpayCAMPART: TFloatField;
    CondpayCAMSERV: TFloatField;
    CondpayCAMDAT1: TDateField;
    CondpayCAMDAT2: TDateField;
    QArmast: TFDQuery;
    QueryC50: TFDQuery;
    SoQueryC50: TDataSource;
    QUsernam: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSvrpc51: TFSvrpc51;

implementation
uses SvRpC50;

{$R *.DFM}

procedure TFSvrpc51.FormCreate(Sender: TObject);
Var Ed2,XAP : String;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 950;
   QRLabel4.alignment := tacenter;

   QRLabel5.left := 1;
   QRLabel5.width := 950;
   QRLabel5.alignment := tacenter;

   QRLabel8.caption   := 'สาขา  '+FSvrpc50.Edit2.text+'  ยกเลิกระหว่างวันที่  '+FSvrpc50.Edit5.text+
                         '  ถึงวันที่  '+FSvrpc50.Edit6.text;

   QRLabel8.left := 1;
   QRLabel8.width := 950;
   QRLabel8.alignment := tacenter;

   QArmast.Close;
   QUsernam.Close;
   With QueryC50 Do
   begin
     Close;
     SQL.Clear;
     Sql.Add('SELECT A.LOCAT,A.INVNO,A.INVDATE,A.JOBNO,B.CUSCOD,B.TAXNO, '+
     'B.TAXDT,B.NETPRC,A.CANDAT,A.CANCELID,A.CODE,A.DESC1,A.QTY,'+
     'A.UPRICE,A.REDU,A.NETPRIC,A.FLAG FROM OTHTRAN A,OTHINVOI B '+
     'WHERE (A.INVNO=B.INVNO) AND (A.LOCAT LIKE :0) AND '+
     '(A.CANDAT BETWEEN :1 AND :2 ) ');
     Params[0].Asstring     := FSvrpc50.Edit2.Text+'%';
     Params[1].AsDatetime   := Strtodate(FSvrpc50.Edit5.Text);
     Params[2].AsDatetime   := Strtodate(FSvrpc50.Edit6.Text)+1;
     Open;
   End;
   QArmast.Open;
   QUsernam.Open;
end;

procedure TFSvrpc51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;


procedure TFSvrpc51.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel23.Caption := QArmast.Fieldbyname('Snam').Asstring+' '+
                       QArmast.Fieldbyname('Name1').Asstring+' '+
                       QArmast.Fieldbyname('Name2').Asstring;
  If QUsernam.Fieldbyname('Username').Asstring<>'' Then
     QRLabel25.Caption := QUsernam.Fieldbyname('Username').Asstring
  Else
     QRLabel25.Caption := QueryC50.Fieldbyname('Cancelid').Asstring;
end;


procedure TFSvrpc51.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If QueryC50.Fieldbyname('Flag').Asstring='1' Then
     QRLabel28.Caption := 'IV';
  If QueryC50.Fieldbyname('Flag').Asstring='2' Then
     QRLabel28.Caption := 'LB';
  If QueryC50.Fieldbyname('Flag').Asstring='3' Then
     QRLabel28.Caption := 'PT';
  If QueryC50.Fieldbyname('Flag').Asstring='4' Then
     QRLabel28.Caption := 'CO';
  If QueryC50.Fieldbyname('Flag').Asstring='5' Then
     QRLabel28.Caption := 'OU';
end;

end.
