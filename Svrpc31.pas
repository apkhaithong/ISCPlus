unit Svrpc31;

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
  TFmSvRpc31 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape2: TQRShape;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    QueryC10: TFDQuery;
    QRSysData2: TQRSysData;
    Query1: TFDQuery;
    QRLabel25: TQRLabel;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpc31: TFmSvRpc31;

implementation

{$R *.DFM}

procedure TFmSvRpc31.FormCreate(Sender: TObject);
Var Opt,XOrd : String;
begin
   Condpay.Open;
   QRLabel11.caption   := CondpayCOMP_NM.Asstring;
   QRLabel11.Left      := 1;
   QRLabel11.Width     := 900;
   QRLabel11.Alignment := taCenter;

   QRLabel5.left      := 1;
   QRLabel5.width     := 900;
   QRLabel5.alignment := tacenter;

   QRLabel25.caption  := 'ระหว่างวันที่ '+FmSvRpc30.Edit5.Text+' ถึงวันที่ '+FmSvRpc30.Edit6.Text;
   QRLabel25.left      := 1;
   QRLabel25.width     := 900;
   QRLabel25.alignment := tacenter;


   With Query1 Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('UPDATE JOBORDER SET CAMPNO='''' WHERE CAMPNO IS NULL');
     EXECSQL;
   End;

   With QueryC10 do
   begin
     Close;
     SQL.Clear;
     If FmSvRpc30.RadioGroup1.Itemindex=0 Then
     SQL.ADD('SELECT A.JOBNO,A.JOBDATE,A.TAXNO,A.TAXDATE,A.PARTNO,B.DESC1,'+
     'A.QTY,A.UPRICE,A.REDU1,A.NETPRC,A.TOTPRC,B.LSTBUY  '+
     'FROM PARTTRAN A,INVENTOR B WHERE A.PARTNO=B.PARTNO AND '+
     'A.LOCAT=B.LOCAT AND A.LOCAT LIKE :EDIT1 AND '+
     'A.CAMPNO = :EDIT2 AND A.TAXDATE>:Edit3 AND A.TAXDATE<=:EDIT4 ORDER BY JOBNO');

     If FmSvRpc30.RadioGroup1.Itemindex=1 Then
     SQL.ADD('SELECT A.JOBNO,A.JOBDATE,A.TAXNO,A.TAXDATE,A.CODE AS PARTNO,A.DESC1,'+
     'A.FRT AS QTY,A.UPRICE,A.REDU AS REDU1,A.NETPRIC AS NETPRC,A.NETPRIC AS TOTPRC,0 AS LSTBUY  '+
     'FROM SERVTRAN A WHERE A.LOCAT LIKE :EDIT1 AND '+
     'A.CAMPNO = :EDIT2 AND A.TAXDATE>:Edit3 AND A.TAXDATE<=:EDIT4 '+XORD);

     Params[0].AsString := FmSvRpc30.Edit2.Text+'%';
     Params[1].AsString := FmSvRpc30.Edit1.Text;
     Params[2].AsDate   := FmSvRpc30.Frmdate;
     Params[3].AsDate   := FmSvRpc30.Todate;
     OPEN;
     If Bof and Eof Then
      SFMain.RaiseException('ไม่มีข้อมูลตามเงื่อนไข');
   End;
   //
   With Query1 Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * FROM LOCATMST Where (LOCATCOD =:XLOC) ');
     Params[0].AsString := FmSvRpc30.Edit2.Text;
     Open;
     QRLabel1.Caption := 'สาขา '+Query1.fieldByName('LOCATNAM').AsString;
   End;

   With Query1 Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * FROM CAMPGRP Where CAMPNO =:Xno ');
     Params[0].AsString := FmSvRpc30.Edit1.Text;
     Open;
     QRLabel7.Caption := 'รหัสแคมเปญ '+Query1.fieldByName('CAMPNO').AsString+' '+
     Query1.fieldByName('CAMPNAM').AsString;
   End;

end;

procedure TFmSvRpc31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSvRpc31.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDBText2.Enabled := FmSvRpc30.RadioGroup1.Itemindex=0;
end;

end.
