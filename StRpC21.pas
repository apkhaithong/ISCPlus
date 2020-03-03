unit StRpC21;

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
  TQStRp_C21 = class(TForm)
    QRep: TQuickRep;
    Title: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    PageHeader: TQRBand;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape3: TQRShape;
    Detail: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel28: TQRLabel;
    QRBand5: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
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
    QueryC10: TFDQuery;
    QueryC10PKNO: TStringField;
    QueryC10PKDATE: TDateField;
    QueryC10JOBNO: TStringField;
    QueryC10REFNO: TStringField;
    SoQueryC10: TDataSource;
    QueryC11: TFDQuery;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText8: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel27: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRSysData2: TQRSysData;
    Query1: TFDQuery;
    QRLabel29: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText12: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRDetailLink1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QStRp_C21: TQStRp_C21;
  Sum1,Sum2,Sum3,Totcos:Double;

implementation

uses  StRpC20, Dmic01, USoftFirm;

{$R *.DFM}

procedure TQStRp_C21.FormCreate(Sender: TObject);
Var Xorder,XOpt :String;
begin
  Condpay.Open;
  QRLabel4.Caption  := CondpayComp_nm.asstring;

  QRLabel6.Caption  :='ระหว่างวันที่ '+StRp_C20.Edit_dateFrom.Text+' ถึงวันที่ '+StRp_C20.Edit_dateTo.Text;

  QRLabel28.Caption := StRp_C20.SortText+' '+StRp_C20.OptnText ;


  Case StRp_C20.OptRadio.ItemIndex Of
    0:Xopt:=' AND SVCOLOR = ''N'' ';
    1:Xopt:=' AND SVCOLOR = ''Y'' ';
    2:Xopt:=' ';
  end;
  if StRp_C20.CheckBox_Jb.Checked then
  begin
    StRp_C20.JobText := 'รับคืนจากศูนย์เฉพาะที่ยังไม่ปิด JOB';
    Xopt:=Xopt+' AND JOBNO IN (SELECT JOBNO FROM JOBORDER WHERE STATUS= ''W'' )';
  end
  Else
    StRp_C20.JobText := 'รับคืนจากศูนย์';

  Case StRp_C20.SortRadio.ItemIndex Of
    0:XOrder:=' ORDER BY JOBNO ';
    1:XOrder:=' ORDER BY PKDATE ';
    2:XOrder:=' ORDER BY PKNO ';
    3:XOrder:=' ORDER BY REFNO ';
  end;

   with QueryC10 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT PKNO,PKDATE,JOBNO,REFNO,PKLOCAT FROM PK_INVOI '+
             'WHERE PKLOCAT LIKE :XLocat AND OFFICCOD LIKE :XCod '+
             'AND PKDATE <= :Edit_DateTo AND PKDATE >= :Edit_DateFrom '+
             'AND FLAG = ''S'' '+Xopt+XOrder);
     Params[0].AsString    := StRp_C20.Edit_LOCAT.Text+'%' ;
     Params[1].AsString    := StRp_C20.Edit_Off.Text+'%' ;
     Params[2].AsDate  := StrToDate(StRp_C20.Edit_DateTo.Text) ;
     Params[3].AsDate  := StrToDate(StRp_C20.Edit_DateFrom.Text) ;
     Open;
   end;
  if QueryC10.Bof And QueryC10.Eof then
     SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');


  QueryC11.MasterSource := SoQueryC10;
  with QueryC11 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT A.JOBNO,A.PKLOCAT,A.PARTNO,A.QTYOUT,A.UPRICE,A.TOTPRC,A.RTNPK, '+
           'B.PARTNO,B.DESC1,(A.QTYOUT*A.UPRICE) AS TOT, '+
           '((A.QTYOUT*A.UPRICE)-A.TOTPRC) AS TOT1,A.AVGCOST,A.QTYOUT*A.AVGCOST AS TOTCOS '+
           'FROM PK_TRANS A,INVENTOR B '+
           'WHERE (A.PKNO = :PKNO) AND (A.PARTNO = B.PARTNO) AND (A.PKLOCAT = B.LOCAT)');
   Open;
  end;

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := StRp_C20.EDIT_LOCAT.Text;
    Open;
    If Bof and Eof Then
      QRLabel8.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel8.Caption := 'สาขา : ['+StRp_C20.EDIT_LOCAT.Text+'] '+Fieldbyname('Locatnm').Asstring;
  end;
end;

procedure TQStRp_C21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree ;
end;



procedure TQStRp_C21.QRDetailLink1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Sum1 := Sum1+QueryC11.Fieldbyname('TOT').Asfloat;
  Sum2 := Sum2+QueryC11.Fieldbyname('TOT1').Asfloat;
  Sum3 := Sum3+QueryC11.Fieldbyname('TOTPRC').Asfloat;

end;

procedure TQStRp_C21.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel23.Caption := Floattostrf(Sum1,ffNumber,15,2);
  QRLabel24.Caption := Floattostrf(Sum2,ffNumber,15,2);
  QRLabel25.Caption := Floattostrf(Sum3,ffNumber,15,2);
  QRLabel32.Caption := Floattostrf(Totcos,ffNumber,15,2);
end;


procedure TQStRp_C21.QRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Sum1:=0;Sum2:=0;Sum3:=0;
  Totcos:=0;

end;

procedure TQStRp_C21.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var Tot:Double;
begin
  With Query1 do
  begin
    Close;
    Sql.Clear;
    SQl.Add('SELECT AVGCOST FROM PK_TRANS WHERE PKLOCAT=:1 AND PKNO=:2 AND PARTNO=:3');
    Params[0].Asstring:= QueryC11.Fieldbyname('PKLOCAT').Asstring;
    Params[1].Asstring:= QueryC11.Fieldbyname('RTNPK').Asstring;
    Params[2].Asstring:= QueryC11.Fieldbyname('PARTNO').Asstring;
    Open;
  end;
  Tot:=QueryC11.Fieldbyname('Qtyout').Asfloat*Query1.Fieldbyname('Avgcost').Asfloat;
  Totcos := Totcos+QueryC11.Fieldbyname('Qtyout').Asfloat*Query1.Fieldbyname('Avgcost').Asfloat;

  QRLabel29.Caption := Floattostrf(Query1.Fieldbyname('Avgcost').Asfloat,ffNumber,15,2);
  QRLabel33.Caption := Floattostrf(Tot,ffNumber,15,2);
end;

end.
