unit Anlrp41;

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
  TFAnlrp41 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel11: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QAcc: TFDQuery;
    Condpay: TFDQuery;
    QRBand5: TQRBand;
    QRLabel31: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape4: TQRShape;
    QRShape10: TQRShape;
    QRSysData5: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData3: TQRSysData;
    QRExpr1: TQRExpr;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    Qarpaytrn: TFDQuery;
    QRDBText4: TQRDBText;
    QArmast: TFDQuery;
    DataSource1: TDataSource;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel23: TQRLabel;
    Query1: TFDQuery;
    QRLabel24: TQRLabel;
    QRDBText14: TQRDBText;
    QRExpr7: TQRExpr;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnlrp41: TFAnlrp41;

implementation
uses Anlrp40,DmSec,USoftFirm;

{$R *.DFM}

procedure TFAnlrp41.FormCreate(Sender: TObject);
Var ed1,Ed2,Xopt,XOrder: String;
begin
  {   Close;
     Sql.Clear;
     Sql.Add('select * from SYSIBM.SYSTABLES where NAME=''VIEW_ACC01'' AND CREATOR=:Xschema');
     Params[0].Asstring :=SFMain.Xsrch;
     Open;
     If Bof and Eof Then
     Begin
       with query1 do
       Begin
         Close;
         Sql.Clear;
         Sql.Add('CREATE VIEW VIEW_ACC01(           '+
         'LOCAT,TAXNO,TAXDATE,JOBNO,CUSCOD,INVNO,   '+
         'CREDIT,CASH,PARTTOT,SERVTOT,OTHTOT,TOTAL,VATAMT,TOTTAX,CANCELID, '+
         'FROM,FLAG)                                                       '+
         'AS                                                               '+
         'SELECT A.LOCAT,A.TAXNO,A.TAXDATE,A.JOBNO,A.CUSCOD,'''',          '+
         'CASE A.PAYTYP WHEN ''C'' THEN A.TOTTAX                           '+
         '                    WHEN ''S'' THEN  0                           '+
         'END AS CREDIT,                                                   '+
         'CASE A.PAYTYP WHEN ''C'' THEN   0                                '+
         '                    WHEN ''S'' THEN A.TOTTAX                     '+
         'END AS CASH,(C.PARTNET+C.OILNET), A.BALANCE-C.PARTNET-C.OILNET,0,'+
         'A.BALANCE,A.VAT,A.TOTTAX ,A.CANCELID,''SV'',A.FLAG FROM          '+
         'TAXSAL A,JOBORDER C WHERE (A.JOBNO=C.JOBNO) AND                  '+
         '(A.TAXNO=C.PTAXNO)  AND (C.PTAXNO IS NOT NULL OR C.PTAXNO<>'''') '+
         'AND C.STATUS<>''C''                        '+
         'UNION ALL                                                        '+
         'SELECT A.LOCAT,A.TAXNO,A.TAXDATE,A.JOBNO,A.CUSCOD,INVNO,         '+
         'CASE A.PAYTYP WHEN ''C'' THEN A.TOTTAX                           '+
         '                    WHEN ''S'' THEN  0                           '+
         'END AS CREDIT,                                                   '+
         'CASE A.PAYTYP WHEN ''C'' THEN   0                                '+
         '                    WHEN ''S'' THEN A.TOTTAX                     '+
         'END AS CASH,A.BALANCE,0,0,                                       '+
         'A.BALANCE,A.VAT,A.TOTTAX ,A.CANCELID,''IV'',A.FLAG FROM          '+
         'TAXSAL A,OTHINVOI C WHERE (A.TAXNO=C.TAXNO)  AND (C.FLAG=''3'')  '+
         'UNION ALL                                                        '+
         'SELECT A.LOCAT,A.TAXNO,A.TAXDATE,A.JOBNO,A.CUSCOD,INVNO,         '+
         'CASE A.PAYTYP WHEN ''C'' THEN A.TOTTAX                           '+
         '                    WHEN ''S'' THEN  0                           '+
         'END AS CREDIT,                                                   '+
         'CASE A.PAYTYP WHEN ''C'' THEN   0                                '+
         '                    WHEN ''S'' THEN A.TOTTAX                     '+
         'END AS CASH,0,A.BALANCE,0,                                       '+
         'A.BALANCE,A.VAT,A.TOTTAX ,A.CANCELID,''IV'',A.FLAG FROM          '+
         'TAXSAL A,OTHINVOI C WHERE (A.TAXNO=C.TAXNO)  AND  (C.FLAG=''2'') '+
         'UNION ALL                                                        '+
         'SELECT A.LOCAT,A.TAXNO,A.TAXDATE,A.JOBNO,A.CUSCOD,INVNO,         '+
         'CASE A.PAYTYP WHEN ''C'' THEN A.TOTTAX                           '+
         '                    WHEN ''S'' THEN  0                           '+
         'END AS CREDIT,                                                   '+
         'CASE A.PAYTYP WHEN ''C'' THEN   0                                '+
         '                    WHEN ''S'' THEN A.TOTTAX                     '+
         'END AS CASH,0,0,A.BALANCE,                                       '+
         'A.BALANCE,A.VAT,A.TOTTAX ,A.CANCELID,''IV'',A.FLAG FROM          '+
         'TAXSAL A,OTHINVOI C WHERE (A.TAXNO=C.TAXNO)   AND (C.FLAG<>''2'' AND C.FLAG<>''3'')  '+
         'UNION ALL                                                        '+
         'SELECT A.LOCAT,A.TAXNO,A.TAXDATE,A.JOBNO,A.CUSCOD,'''',          '+
         'CASE A.PAYTYP WHEN ''C'' THEN A.TOTTAX                           '+
         '                    WHEN ''S'' THEN  0                           '+
         'END AS CREDIT,                                                   '+
         'CASE A.PAYTYP WHEN ''C'' THEN   0                                '+
         '                    WHEN ''S'' THEN A.TOTTAX                     '+
         'END AS CASH,A.BALANCE,0,0,                                       '+
         'A.BALANCE,A.VAT,A.TOTTAX ,A.CANCELID,''IC'',A.FLAG FROM          '+
         'TAXSAL A,IC_INVOI C WHERE (A.TAXNO=C.TAXNO)  AND  (A.FLAG<>''T'' ) '+
         'UNION ALL                                                        '+
         'SELECT A.LOCAT,A.TAXNO,A.TAXDATE,A.JOBNO,A.CUSCOD,'''',          '+
         'CASE A.PAYTYP WHEN ''C'' THEN -A.TOTTAX                          '+
         '                    WHEN ''S'' THEN  0                           '+
         'END AS CREDIT,                                                   '+
         'CASE A.PAYTYP WHEN ''C'' THEN   0                                '+
         '                    WHEN ''S'' THEN -A.TOTTAX                    '+
         'END AS CASH,-A.BALANCE,0,0,                                      '+
         '-A.BALANCE,-A.VAT,-A.TOTTAX ,A.CANCELID,''CI'',A.FLAG FROM       '+
         'TAXSAL A,RT_INVOI C WHERE (A.TAXNO=C.CREDNO)  AND (A.FLAG=''7'' )  '+
         'UNION ALL                                                        '+
         'SELECT A.LOCAT,A.TAXNO,A.TAXDATE,A.JOBNO,A.CUSCOD,'''',          '+
         'CASE A.PAYTYP WHEN ''C'' THEN -A.TOTTAX                          '+
         '                    WHEN ''S'' THEN  0                           '+
         'END AS CREDIT,                                                   '+
         'CASE A.PAYTYP WHEN ''C'' THEN   0                                '+
         '                    WHEN ''S'' THEN -A.TOTTAX                    '+
         'END AS CASH,0,-A.BALANCE,0,                                      '+
         '-A.BALANCE,-A.VAT,-A.TOTTAX ,A.CANCELID,''CN'',A.FLAG FROM       '+
         'TAXSAL A WHERE (A.FLAG=''2'' ) ');
         ExecSql;
       End;
     End;
   end;
   }
   Condpay.Open;
   QRLabel4.Caption := Condpay.Fieldbyname('Comp_nm').asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 1310;
   QRLabel4.alignment := tacenter;

   QRLabel5.left := 1;
   QRLabel5.width := 1310;
   QRLabel5.alignment := tacenter;

   QRLabel23.Caption :='ระหว่างวันที่ '+FAnlrp40.Edit5.Text+' ถึงวันที่ '+FAnlrp40.Edit6.Text;
   QRLabel23.left := 1;
   QRLabel23.width := 1310;
   QRLabel23.alignment := tacenter;

   Case FAnlrp40.RadioGroup1.itemindex Of
     0 : XOPT:=' AND FROM =''IC'' AND BALANCE> 0 ';
     1 : XOPT:=' AND FROM =''SV'' AND BALANCE> 0 ';
     2 : XOPT:=' AND FROM =''CN'' ';
     3 : XOPT:=' AND FROM =''CI'' ';
     4 : XOPT:=' AND BALANCE> 0 ';
   End;

   If FAnlrp40.CheckBox1.Checked Then
   Case FAnlrp40.RadioGroup1.itemindex Of
     0 : XOPT:=' AND FROM =''IC'' ';
     1 : XOPT:=' AND FROM =''SV'' ';
     2 : XOPT:=' AND FROM =''CN'' ';
     3 : XOPT:=' AND FROM =''CI'' ';
     4 : XOPT:=' ';
   End;
   Case FAnlrp40.RadioGroup2.itemindex Of
     0 : XORDER:=' ORDER BY LOCAT,TAXNO';
     1 : XORDER:=' ORDER BY LOCAT,JOBNO';
     2 : XORDER:=' ORDER BY LOCAT,CUSCOD';
   End;

   Case FAnlrp40.RadioGroup1.itemindex Of
     0 : QRLabel11.Caption:='รายงานหมวดหน้าร้าน';
     1 : QRLabel11.Caption:='รายงานหมวดศูนย์บริการ';
     2 : QRLabel11.Caption:='รายงานหมวดลดหนี้ค่าบริการ';
     3 : QRLabel11.Caption:='รายงานหมวดลดหนี้ค่าอะไหล่';
     4 : QRLabel11.Caption:='รายงานทุกหมวด';
   End;
   If FAnlrp40.CheckBox1.Checked Then
      QRLabel11.Caption:=QRLabel11.Caption+' รวมใบลดหนี้ด้วย'
   Else
      QRLabel11.Caption:=QRLabel11.Caption+' ไม่รวมใบลดหนี้';

   QArmast.Close;
   QArpaytrn.Close;

   With QAcc do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM VIEW_ACC01 WHERE LOCAT LIKE :EDIT1 '+
     'AND TAXDATE >=:EDIT2 AND TAXDATE<=:EDIT3 AND CANCELID IS NULL '+XOPT+XOrder);

     Params[0].AsString := FAnlrp40.Edit1.text+'%';
     Params[1].AsDate   := Strtodate(FAnlrp40.Edit5.Text);
     Params[2].AsDate   := Strtodate(FAnlrp40.Edit6.Text);
     Open;
     if bof and Eof then
      SFMain.RaiseException('ไม่มีข้อมูล');
   End;
   QArmast.Open;
   QArpaytrn.Open;
end;

procedure TFAnlrp41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;


procedure TFAnlrp41.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  With Qarpaytrn Do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT PAYTYP FROM ARPAYTRN WHERE INVNO=:TAXNO');
    Open;
  end;
  //
  Qrlabel20.Caption := Qarmast.Fieldbyname('Snam').Asstring+' '+
                       Qarmast.Fieldbyname('Name1').Asstring+' '+
                       Qarmast.Fieldbyname('Name2').Asstring;
end;







end.
