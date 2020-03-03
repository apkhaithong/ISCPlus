unit Strpb41;

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
  TFmSTRpB41 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
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
    QueryA10: TFDQuery;
    QueryA11: TFDQuery;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    Query1: TFDQuery;
    QRLabel11: TQRLabel;
    QRBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    DataSource1: TDataSource;
    QRDBText13: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRExpr1: TQRExpr;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    Query2: TFDQuery;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    Query3: TFDQuery;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRpB41: TFmSTRpB41;
  XLocat,Xpartno : String;
  PSUMUPR,PSUMAVG,PSUMPROF,UPR,AVG,PROF,GSUMUPR,GSUMAVG,GSUMPROF : Double;
  Detail : integer;

implementation
uses STRpB40, Dmic01, USoftFirm;

{$R *.DFM}

procedure TFmSTRpB41.FormCreate(Sender: TObject);
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.alignment := tacenter;
   QRLabel8.caption   := 'จากวันที่  '+FmSTRpB40.Edit_DateFrom.text+
                         '  ถึงวันที่  '+FmSTRpB40.Edit_DateTo.text+'  กลุ่มสินค้า  '+
                         FmSTRpB40.Edit7.text+'  กลุ่มลูกค้า  '+FmSTRpB40.Edit1.text;

   with Query1 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('select * from SYSSTAT.tables where tabname=''TMPSALE''');
     Open;
     If Not(Bof and Eof) Then
     Begin
       Close;
       Sql.Clear;
       Sql.Add('DROP TABLE TMPSALE');
       ExecSQL;
     End;
   end;

   With Query1 Do
   Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := FmSTRpB40.Edit_Locat.Text;
    Open;
    If Bof and Eof Then
      QRLabel21.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel21.Caption := 'สาขา : ['+FmSTRpB40.Edit_Locat.Text+'] '+Fieldbyname('Locatnm').Asstring;
   end;

    //Query2.Close;

    With QueryA11 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT I.INVLOC,M.GROUP1,A.GRPCUS,I.FLAG,SUM(T.TOTPRC) AS SUMUPR, '+
      ' SUM(T.AVGCOST*T.QTYOUT) AS SUMAVG,(SUM(T.TOTPRC)-SUM(T.AVGCOST*T.QTYOUT)) AS SUMPROF '+
      ' FROM IC_INVOI I,IC_TRANS T,CUSTMAST A,INVENTOR M '+
      ' WHERE (I.INVLOC LIKE :LOC) AND (A.GRPCUS LIKE :EDIT1) AND (M.GROUP1 LIKE :EDIT7) '+
      ' AND (T.INVDATE>=:EDIT3 AND T.INVDATE<=:EDIT4) '+
      ' AND (I.FLAG=''1'' OR I.FLAG=''2'') AND (I.CANCELID IS NULL OR I.CANCELID= '''') '+
      ' AND T.INVNO = I.INVNO AND I.CUSCOD = A.CUSCOD AND T.PARTNO = M.PARTNO AND T.INVLOC=M.LOCAT '+
      ' GROUP BY ROLLUP(M.GROUP1),I.INVLOC,I.FLAG,A.GRPCUS '+
      ' ORDER BY GROUP1');

      Params[0].AsString := FmSTRpB40.Edit_Locat.Text+'%';
      Params[1].AsString := FmSTRpB40.Edit1.Text+'%';
      Params[2].AsString := FmSTRpB40.Edit7.Text+'%';
      Params[3].AsDate   := FmSTRpB40.Edit_DateFrom.Date;
      Params[4].AsDate   := FmSTRpB40.Edit_DateTo.Date;
      Open;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่พบข้อมูล');
    end;

end;

procedure TFmSTRpB41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSTRpB41.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Detail := 0;
 If QueryA11.Fieldbyname('GROUP1').AsString <> '' then
 begin
  With Query2 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT M.GROUP1,SUM(T.TOTPRC) AS GSUMUPR, '+
      ' SUM(T.AVGCOST*T.QTYOUT) AS GSUMAVG,(SUM(T.TOTPRC)-SUM(T.AVGCOST*T.QTYOUT)) AS GSUMPROF '+
      ' FROM IC_INVOI I,IC_TRANS T,CUSTMAST A,INVENTOR M '+
      ' WHERE (I.INVLOC LIKE :0) AND (A.GRPCUS LIKE :1)  '+
      ' AND (T.INVDATE>=:2 AND T.INVDATE<=:3) AND (M.GROUP1 =:4) '+
      ' AND (I.FLAG=''1'' OR I.FLAG=''2'') AND (I.CANCELID IS NULL OR I.CANCELID= '''') '+
      ' AND T.INVNO = I.INVNO AND I.CUSCOD = A.CUSCOD AND T.PARTNO = M.PARTNO AND T.INVLOC=M.LOCAT '+
      ' GROUP BY ROLLUP(M.GROUP1) ORDER BY M.GROUP1 ');
      Params[0].AsString := FmSTRpB40.Edit_Locat.Text+'%';
      Params[1].AsString := FmSTRpB40.Edit1.Text+'%';
      Params[2].AsDate   := FmSTRpB40.Edit_DateFrom.Date;
      Params[3].AsDate   := FmSTRpB40.Edit_DateTo.Date;
      Params[4].AsString := QueryA11.Fieldbyname('GROUP1').Asstring;
      Open;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่พบข้อมูล');
    end;
    GSUMUPR  := Query2.Fieldbyname('GSUMUPR').AsFloat;
    GSUMAVG  := Query2.Fieldbyname('GSUMAVG').AsFloat;
    GSUMPROF := Query2.Fieldbyname('GSUMPROF').AsFloat;
   With Query3 Do
   begin
      Close;
      SQL.Clear;
      SQL.Add('Select GROUPNAM From GROUPMST Where GROUPCOD=:GROUP1');
      Params[0].AsString := QueryA11.Fieldbyname('GROUP1').AsString;
      Open;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่พบข้อมูล');
    end;
    QRLabel19.Caption := Query3.Fieldbyname('GROUPNAM').AsString;
 end
 Else
 begin
    QRLabel18.Enabled := TRUE;
    QRLabel19.Caption := 'รวมทุกกลุ่มสินค้า';
 end;
end;

procedure TFmSTRpB41.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
//var tempVat,totPR : Double;
begin
   Detail := Detail+1;
   //ตัวตั้ง
   UPR := QueryA11.Fieldbyname('SUMUPR').AsFloat;
   AVG := QueryA11.Fieldbyname('SUMAVG').AsFloat;
   PROF := QueryA11.Fieldbyname('SUMPROF').AsFloat;
   //
   Try
     PSUMUPR := (UPR*100)/GSUMUPR;
   Except
     PSUMUPR := 0;
   end;
   Try
     PSUMPROF := (PROF*100)/GSUMAVG;
   Except
     PSUMPROF := 0;
   end;
   //
   QRlabel40.Caption := IntToStr(Detail);
   IF QueryA11.Fieldbyname('FLAG').Asstring='2' then
      QRLabel20.Caption := 'ลูกค้าเครดิต'
   else IF QueryA11.Fieldbyname('FLAG').Asstring='1' then
      QRLabel20.Caption := 'ลูกค้าเงินสด';
   //คำนวณ %
   If QueryA11.Fieldbyname('GROUP1').AsString <> '' then
   begin
   QRLabel2.Caption := FloatToStrF(PSUMUPR,ffNumber,15,2)+'%';
   QRLabel3.Caption := FloatToStrF(PSUMPROF,ffNumber,15,2)+'%';
   end
   else
   begin
   QRLabel2.Caption := '100.00%';
   QRLabel3.Caption := FloatToStrF((PROF*100)/AVG,ffNumber,15,2)+'%';
   end;
end;


procedure TFmSTRpB41.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{IF  FmDmic01.XISO <> '' then
 begin
 QRLabel25.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;}
end;

procedure TFmSTRpB41.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel18.Enabled := FALSE;
end;

end.

