unit SvFn51;

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
  TQSvFn_51 = class(TForm)
    QRep: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    PageHeader: TQRBand;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    Detail: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel31: TQRLabel;
    QRSysData4: TQRSysData;
    QRDBText1: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText6: TQRDBText;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    Qbill: TFDQuery;
    QRBand5: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData5: TQRSysData;
    QRLabel18: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText11: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRExpr6: TQRExpr;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    QRDBText8: TQRDBText;
    Query2: TFDQuery;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QSvFn_51: TQSvFn_51;

implementation

uses  SvFn50;

{$R *.DFM}

procedure TQSvFn_51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Qbill.close;
  Action := Cafree ;
end;

procedure TQSvFn_51.FormCreate(Sender: TObject);
Var XSort:String;
begin
 Condpay.Open;
 QRLabel4.caption   := Condpay.FieldByName('COMP_NM').Asstring;
 QRLabel4.Left      := 1;
 QRLabel4.Width     := 1155;
 QRLabel4.Alignment := taCenter;
 QRLabel5.Left      := 1;
 QRLabel5.Width     := 1155;
 QRLabel5.Alignment := taCenter;

 QRLabel9.Caption  := SvFn_50.Edit_dateFrom.Text ;
 QRLabel10.Caption := SvFn_50.Edit_dateTo.Text ;
 QRLabel28.Caption := SvFn_50.SalText ;
 Case SvFn_50.RadioGroup1.Itemindex Of
   0: Xsort :=' ORDER BY BILLNO ';
   1: Xsort :=' ORDER BY INVNO ';
   2: Xsort :=' ORDER BY PAYTYP ';
 End;
 Query1.Close;
 Query2.Close;
 with QBill do
 begin
   Close;
   Sql.Clear;
   If SvFn_50.SalRadio.ItemIndex = 0 Then  // ขายหน้าร้าน
      Sql.Add('SELECT A.BILLNO,A.LOCAT,A.BILLDT,A.CUSCODE,A.PAYTYP,A.CHQAMT,A.CANCELID,A.INVNO,A.VAT3AMT,A.IDCARD,'+
              'A.CSHAMT,A.TOTAL,A.DISAMT,A.NETTOT,A.JOBNO,B.SNAM,B.NAME1,B.NAME2 '+
              'FROM ARPAYTRN A,ARMAST B '+
              'WHERE A.CUSCODE=B.CUSCOD AND (A.PAYTYP LIKE :Edit1) AND (A.LOCAT LIKE :EDIT2) '+
              ' AND (A.BILLDT <= :Edit_DateTo) AND (A.BILLDT >= :Edit_DateFrom) AND A.FLAG=''1'' AND '+
              '(A.CANCELID IS NULL OR A.CANCELID='''') '+
              ' UNION ALL '+
              'SELECT A.TAXNO AS BILLNO,A.LOCAT,A.TAXDATE AS BILLDT,A.CUSCOD AS CUSCODE,'+
              'A.PAYTYP,0 AS CHQAMT,A.CANCELID,A.TAXREFNO AS INVNO,0 AS VAT3AMT,'''' AS IDCARD,-A.TOTTAX AS CSHAMT,-A.TOTTAX AS TOTAL,0 AS DISAMT,-A.TOTTAX AS NETTOT,'+
              'A.JOBNO,B.SNAM,B.NAME1,B.NAME2 FROM TAXSAL A,ARMAST B '+
              'WHERE A.CUSCOD=B.CUSCOD AND (A.PAYTYP =''S'') AND (A.LOCAT LIKE :EDIT2) '+
              ' AND (A.TAXDATE <= :Edit_DateTo) AND (A.TAXDATE >= :Edit_DateFrom) AND A.FLAG=''2'' AND A.FRSV=''F'' '+
              ' UNION ALL '+
              'SELECT A.RTNNO AS BILLNO,A.RTNLOC AS LOCAT,A.RTNDT AS BILLDT,A.APCODE AS CUSCODE,'+
              'A.PAYTYPE AS PAYTYP,0 AS CHQAMT,A.CANCELID,A.INVNO,0 AS VAT3AMT,'''' AS IDCARD,-A.TOTPRC AS CSHAMT,-A.TOTPRC AS TOTAL,0 AS DISAMT,-A.TOTPRC AS NETTOT,'+
              'A.JOBNO,B.SNAM,B.NAME1,B.NAME2 FROM RT_INVOI A,ARMAST B '+
              'WHERE A.APCODE=B.CUSCOD AND (A.PAYTYPE =''S'') AND (A.RTNLOC LIKE :EDIT2) '+
              ' AND (A.RTNDT <= :Edit_DateTo) AND (A.RTNDT >= :Edit_DateFrom) AND (A.FLAG=''7'') AND (A.JOBNO IS NULL OR A.JOBNO='''') '+Xsort);
   If SvFn_50.SalRadio.ItemIndex = 1 Then  // ขายศูนย์บริการ
      Sql.Add('SELECT A.BILLNO,A.LOCAT,A.BILLDT,A.CUSCODE,A.PAYTYP,A.CHQAMT,A.CANCELID,A.INVNO,A.VAT3AMT,A.IDCARD,'+
              'A.CSHAMT,A.TOTAL,A.DISAMT,A.NETTOT,A.JOBNO,B.SNAM,B.NAME1,B.NAME2 '+
              'FROM ARPAYTRN A,ARMAST B '+
              'WHERE A.CUSCODE=B.CUSCOD AND (PAYTYP LIKE :Edit1) AND (A.LOCAT LIKE :EDIT2) '+
              ' AND (BILLDT <= :Edit_DateTo) AND (BILLDT >= :Edit_DateFrom) AND FLAG=''2''  AND '+
              '(A.CANCELID IS NULL OR A.CANCELID='''') '+
              ' UNION ALL '+
              'SELECT A.TAXNO AS BILLNO,A.LOCAT,A.TAXDATE AS BILLDT,A.CUSCOD AS CUSCODE,'+
              'A.PAYTYP,0 AS CHQAMT,A.CANCELID,A.TAXREFNO AS INVNO,0 AS VAT3AMT,'''' AS IDCARD,-A.TOTTAX AS CSHAMT,-A.TOTTAX AS TOTAL,0 AS DISAMT,-A.TOTTAX AS NETTOT,'+
              'A.JOBNO,B.SNAM,B.NAME1,B.NAME2 FROM TAXSAL A,ARMAST B '+
              'WHERE A.CUSCOD=B.CUSCOD AND (A.PAYTYP =''S'') AND (A.LOCAT LIKE :EDIT2) '+
              ' AND (A.TAXDATE <= :Edit_DateTo) AND (A.TAXDATE >= :Edit_DateFrom) AND A.FLAG=''2'' AND A.FRSV=''S'' '+
              ' UNION ALL '+
              'SELECT A.RTNNO AS BILLNO,A.RTNLOC AS LOCAT,A.RTNDT AS BILLDT,A.APCODE AS CUSCODE,'+
              'A.PAYTYPE AS PAYTYP,0 AS CHQAMT,A.CANCELID,A.INVNO,0 AS VAT3AMT,'''' AS IDCARD,-A.TOTPRC AS CSHAMT,-A.TOTPRC AS TOTAL,0 AS DISAMT,-A.TOTPRC AS NETTOT,'+
              'A.JOBNO,B.SNAM,B.NAME1,B.NAME2 FROM RT_INVOI A,ARMAST B '+
              'WHERE A.APCODE=B.CUSCOD AND (A.PAYTYPE = ''S'') AND (A.RTNLOC LIKE :EDIT2) '+
              ' AND (A.RTNDT <= :Edit_DateTo) AND (A.RTNDT >= :Edit_DateFrom) AND (A.FLAG=''7'') AND (A.JOBNO IS NOT NULL AND A.JOBNO<>'''') '+Xsort);
   If SvFn_50.SalRadio.ItemIndex = 2 Then
      Sql.Add('SELECT A.BILLNO,A.LOCAT,A.BILLDT,A.CUSCODE,A.PAYTYP,A.CHQAMT,A.CANCELID,A.INVNO,A.VAT3AMT,A.IDCARD,'+
              'A.CSHAMT,A.TOTAL,A.DISAMT,A.NETTOT,A.JOBNO,B.SNAM,B.NAME1,B.NAME2 '+
              'FROM ARPAYTRN A,ARMAST B '+
              'WHERE A.CUSCODE=B.CUSCOD AND (PAYTYP LIKE :Edit1) AND (A.LOCAT LIKE :EDIT2) '+
              ' AND (A.BILLDT <= :Edit_DateTo) AND (A.BILLDT >= :Edit_DateFrom) AND A.FLAG<>''C'' AND A.FLAG<>''3'' AND '+
              '(A.CANCELID IS NULL OR A.CANCELID='''') '+
              ' UNION ALL '+
              'SELECT A.TAXNO AS BILLNO,A.LOCAT,A.TAXDATE AS BILLDT,A.CUSCOD AS CUSCODE,'+
              'A.PAYTYP,0 AS CHQAMT,A.CANCELID,A.TAXREFNO AS INVNO,0 AS VAT3AMT,'''' AS IDCARD,-A.TOTTAX AS CSHAMT,-A.TOTTAX AS TOTAL,0 AS DISAMT,-A.TOTTAX AS NETTOT,'+
              'A.JOBNO,B.SNAM,B.NAME1,B.NAME2 FROM TAXSAL A,ARMAST B '+
              'WHERE A.CUSCOD=B.CUSCOD AND (A.PAYTYP =''S'') AND (A.LOCAT LIKE :EDIT2) '+
              ' AND (A.TAXDATE <= :Edit_DateTo) AND (A.TAXDATE >= :Edit_DateFrom) AND A.FLAG=''2''  '+
              ' UNION ALL '+
              'SELECT A.RTNNO AS BILLNO,A.RTNLOC AS LOCAT,A.RTNDT AS BILLDT,A.APCODE AS CUSCODE,'+
              'A.PAYTYPE AS PAYTYP,0 AS CHQAMT,A.CANCELID,A.INVNO,0 AS VAT3AMT,'''' AS IDCARD,-A.TOTPRC AS CSHAMT,-A.TOTPRC AS TOTAL,0 AS DISAMT,-A.TOTPRC AS NETTOT,'+
              'A.JOBNO,B.SNAM,B.NAME1,B.NAME2 FROM RT_INVOI A,ARMAST B '+
              'WHERE A.APCODE=B.CUSCOD AND (A.PAYTYPE =''S'') AND (A.RTNLOC LIKE :EDIT2) '+
              ' AND (A.RTNDT <= :Edit_DateTo) AND (A.RTNDT >= :Edit_DateFrom) AND (A.FLAG=''7'') '+Xsort);

   If SvFn_50.SalRadio.ItemIndex = 3 Then  // ขายรถ
      Sql.Add('SELECT A.BILLNO,A.LOCAT,A.BILLDT,A.CUSCODE,A.PAYTYP,A.CHQAMT,A.CANCELID,A.INVNO,A.VAT3AMT,A.IDCARD,'+
              'A.CSHAMT,A.TOTAL,A.DISAMT,A.NETTOT,A.JOBNO,B.SNAM,B.NAME1,B.NAME2 '+
              'FROM ARPAYTRN A,ARMAST B '+
              'WHERE A.CUSCODE=B.CUSCOD AND (PAYTYP LIKE :Edit1) AND (A.LOCAT LIKE :EDIT2) '+
              ' AND (BILLDT <= :Edit_DateTo) AND (BILLDT >= :Edit_DateFrom) AND FLAG=''3''  AND '+
              '(A.CANCELID IS NULL OR A.CANCELID='''')'+Xsort);

   Params[0].Asstring := SvFn_50.Edit1.Text+'%';
   Params[1].Asstring := SvFn_50.Edit2.Text+'%';
   Params[2].AsDate   := StrToDate(SvFn_50.Edit_DateTo.Text) ;
   Params[3].AsDate   := StrToDate(SvFn_50.Edit_DateFrom.Text) ;
   Open;
 end;
 if QBill.Bof And QBill.Eof then
 SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');
 Query1.Open;
 Query2.Open;
end;

procedure TQSvFn_51.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If Query2.Fieldbyname('Taxdate').Asstring<>'' Then
    QRLabel27.Caption := Query2.Fieldbyname('Taxdate').Asstring
  Else
    QRLabel27.Caption := Query1.Fieldbyname('Taxdt').Asstring;

 QRLabel31.Caption := Qbill.FieldByName('NAME1').Asstring
                     +' '+Qbill.FieldByName('NAME2').Asstring;
 QRLabel24.Caption := Qbill.FieldByName('PAYTYP').Asstring;//+' '+Qbill.FieldByName('IDCARD').Asstring;
end;


























end.
