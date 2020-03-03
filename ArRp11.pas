unit ArRp11;

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
  TQArRp_11 = class(TForm)
    QCondpay: TFDQuery;
    QArinv1: TFDQuery;
    Query1: TFDQuery;
    Query2: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
   TNet,TSpay,TKang : Double ;
  public
    { Public declarations }
  end;

var
  QArRp_11: TQArRp_11;
  SumVat,SumNet,payt,kant :Double;

implementation

uses ArRp10;

{$R *.DFM}

procedure TQArRp_11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;


procedure TQArRp_11.FormCreate(Sender: TObject);
Var Xorder,XOption,XCheck:String;
begin
  Qcondpay.OPEN;
  QRLabel4.caption   := QCondpay.FieldByName('COMP_NM').Asstring;
  QRLabel6.caption   := 'สิ้นสุดณ  วันที่ '+ArRp_10.Edit_DateTo.Text+'  เลขที่ใบส่งของ '+ArRp_10.Edit4.Text;
  QRLabel2.Caption   := ArRp_10.SortText;

  Case  ArRp_10.FSortRadio.ItemIndex Of
    0:Xorder := ' ORDER BY CUSCODE,INVDATE,INVNO';
    1:Xorder := ' ORDER BY TAXNO';
    2:Xorder := ' ORDER BY INVDUE';
  end;

  Case  ArRp_10.RadioGroup1.ItemIndex Of
    0:XOption := ' AND (A.JOBNO IS NULL OR A.JOBNO='''')  ';
    1:XOption := ' AND NOT(A.JOBNO IS NULL OR A.JOBNO='''') ';
    2:XOption := ' ';
  end;
  Case  ArRp_10.RadioGroup2.ItemIndex Of
    0: XCheck := ' AND (A.TAXNO<>'''' OR NOT(A.TAXNO IS NULL)) ';
    1: XCheck := ' AND (A.TAXNO='''' OR A.TAXNO IS NULL) ';
    2: XCheck := ' ';
  end;

  Case ArRp_10.Option.ItemIndex Of
    0:QRlabel16.Caption :='รายงานเฉพาะยอดค้างชำระ';
    1:QRlabel16.Caption :='รายงานทั้งยอดค้างชำระและที่ชำระแล้ว';
    2:QRlabel16.Caption :='รายงานเฉพาะใบลดหนี้';
  End;
  With QArinv1 DO
  begin
    Close;
    Sql.Clear;
    Case ArRp_10.Option.ItemIndex Of
      0 : Sql.Add('SELECT A.LOCAT,A.CUSCODE,A.INVNO,A.INVDATE,A.TAXNO,A.INVDUE,(A.NETTOTAL-A.RTNAMT) AS NETTOTAL, '+
            '(A.SMPAY+A.SMCHQ) AS PAYAMT,A.KANG,A.RTNAMT,B.NAME1,B.NAME2,(A.NETTOTAL-A.VATAMT) AS BALANCE,A.VATAMT  FROM ARINVOI A,CUSTMAST B  '+
            'WHERE A.CUSCODE=B.CUSCOD AND (A.FLAG=''2'' OR A.FLAG=''X'' OR A.FLAG=''D'') AND A.CUSCODE LIKE :XCUS AND A.LOCAT LIKE :XLOCAT '+
            'AND (A.INVDATE >= :XFRMDATE AND A.INVDATE <= :XTDATE) AND A.KANG >0 AND A.INVNO LIKE :XINV  '
            +XCHECK+XOption+Xorder);

      1 : Sql.Add('SELECT A.LOCAT,A.CUSCODE,A.INVNO,A.INVDATE,A.INVDUE,A.TAXNO,(A.NETTOTAL-A.RTNAMT) AS NETTOTAL, '+
            '(A.SMPAY+A.SMCHQ) AS PAYAMT,A.KANG,A.RTNAMT,B.NAME1,B.NAME2,(A.NETTOTAL-A.VATAMT) AS BALANCE,A.VATAMT  FROM ARINVOI A,CUSTMAST B  '+
            'WHERE A.CUSCODE=B.CUSCOD AND (A.FLAG=''2'' OR A.FLAG=''X'' OR A.FLAG=''D'') AND A.CUSCODE LIKE :XCUS '+
            ' AND A.LOCAT LIKE :XLOCAT AND (A.INVDATE >= :XFRMDATE AND A.INVDATE <= :XTDATE)  AND A.INVNO LIKE :XINV  '+XCHECK+XOption+Xorder);

      2 : Sql.Add('SELECT A.LOCAT,A.CUSCODE,A.INVNO,A.INVDATE,A.INVDUE,A.TAXNO,A.NETTOTAL, '+
            '(A.SMPAY+A.SMCHQ) AS PAYAMT,A.KANG,A.RTNAMT,B.NAME1,B.NAME2,(A.NETTOTAL-A.VATAMT) AS BALANCE,A.VATAMT  FROM ARINVOI A,CUSTMAST B  '+
            'WHERE (A.CUSCODE=B.CUSCOD) AND (A.FLAG=''7'') AND A.CUSCODE LIKE :XCUS AND A.LOCAT LIKE :XLOCAT AND '+
            ' (A.INVDATE >= :XFRMDATE AND A.INVDATE <= :XTDATE) AND A.INVNO LIKE  :XINV AND CANCELID IS NULL'+XCHECK+XOption+Xorder);
    End;

    Params[0].AsString    := ArRp_10.Edit3.Text+'%';
    Params[1].AsString    := ArRp_10.Edit_Locat.Text+'%';
    Params[2].AsDate      := ArRp_10.Edit_DateFrom.Date;
    Params[3].AsDate      := ArRp_10.Edit_DateTo.Date;
    Params[4].AsString    := ArRp_10.Edit4.Text+'%';

    OPEN;
    If Bof and Eof Then
    Raise Exception.Create('ไม่พบข้อมูล');
   end;
end;


procedure TQArRp_11.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var    TOTaL1,NETT : real;
begin
  QRLabel7.caption   := QArinv1.Fieldbyname('NAME1').Asstring+' '+QArinv1.Fieldbyname('NAME2').Asstring;

 if  QArinv1.Fieldbyname('PAYAMT').asfloat > 0 then
 begin

  with  query2 do
  begin
  Close;
  Sql.Clear;
  Sql.Add(' select INVNO,CUSCODE,SUM(TOTAL) AS TOTAL FROM  ARPAYTRN WHERE INVNO =:0 AND CUSCODE =:1 '+
          ' AND BILLDT <=:2 AND (PAYCONT = ''1'' OR PAYCONT IS NULL)  AND CANDAT IS NULL GROUP BY  INVNO,CUSCODE  ');
          params[0].asstring := QArinv1.fieldbyname('INVNO').asstring;
          params[1].asstring := QArinv1.fieldbyname('CUSCODE').asstring;
          Params[2].AsDate   := ArRp_10.Edit_DateTo.Date;
          open;
  end;

  TOTAL1 :=  QUery2.fieldbyname('TOTAL').asfloat;


  with  query2 do
  begin
  Close;
  Sql.Clear;
  Sql.Add(' select A.INVNO,B.CUSCODE,SUM(A.PAYAMT) AS TOTAL FROM  ARBILTR  A, ARPAYTRN B WHERE  A.ARBILNO = B.INVNO '+
          ' AND  A.INVNO =:0 AND B.CUSCODE =:1  AND  B.BILLDT <=:2 AND B.PAYCONT = ''2''  AND B.CANDAT IS NULL GROUP BY  A.INVNO,B.CUSCODE  ');
          params[0].asstring :=  QArinv1.fieldbyname('INVNO').asstring;
          params[1].asstring :=  QArinv1.fieldbyname('CUSCODE').asstring;
          Params[2].AsDate   := ArRp_10.Edit_DateTo.Date;
          OPEN;
  end;


  if not(query2.bof and Query2.eof) then
  TOTAL1 := TOTAL1+  QUery2.fieldbyname('TOTAL').asfloat;
  end
  else
  TOTAL1 := 0;

   Qrlabel20.Caption := floattostrf(total1,ffnumber,15,2);
   Nett := QArinv1.fieldbyname('NETTOTAL').asfloat-TOTAL1;
   Qrlabel21.Caption := floattostrf(nett,ffnumber,15,2);
   payt := payt+total1;
   kant := kant+nett;

end;

procedure TQArRp_11.DetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SumVat := SumVat+QArinv1.Fieldbyname('VATAMT').Asfloat;
  SumNet := SumNet+QArinv1.Fieldbyname('NETTOTAL').Asfloat;
end;

procedure TQArRp_11.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var SumBal:Double;
begin
  SumBal := Sumnet-Sumvat;
  QRlabel25.Caption := Floattostrf(Sumnet,ffNumber,15,2);
  QRlabel24.Caption := Floattostrf(SumVat,ffNumber,15,2);
  QRlabel18.Caption := Floattostrf(SumBal,ffNumber,15,2);
  QRlabel27.Caption := Floattostrf(payt,ffNumber,15,2);
  QRlabel28.Caption := Floattostrf(kant,ffNumber,15,2);
  payt := 0;
  kant :=0;
end;

procedure TQArRp_11.QRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  SumVat :=0;
  SumNet :=0;
end;

end.
