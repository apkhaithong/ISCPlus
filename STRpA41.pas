unit Strpa41;

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
  TFmSTRpa41 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
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
    Query50: TFDQuery;
    QRBand5: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRExpr1: TQRExpr;
    QRLabel17: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel18: TQRLabel;
    Query50RTNLOC: TStringField;
    Query50RTNNO: TStringField;
    Query50PARTNO: TStringField;
    Query50RTNDT: TDateField;
    Query50QTYRTN: TFloatField;
    Query50UPRICE: TFloatField;
    Query50NETPRC: TFloatField;
    Query50FLAG: TStringField;
    Query50CREDNO: TStringField;
    Query50CREDDT: TDateField;
    Query50APCODE: TStringField;
    Query50DESC1: TStringField;
    Query50TAXREFNO: TStringField;
    Query50TAXDT: TDateField;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel16: TQRLabel;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRpa41: TFmSTRpa41;

implementation
uses STRpa40, Dmic01, USoftFirm;

{$R *.DFM}
procedure TFmSTRpa41.FormCreate(Sender: TObject);
Var ed1,Ed2,Ed3,Ed4,HD1,HD2: String;
begin
   HD1:='';
   HD2:='';
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel11.caption  := FmSTRpa40.SortText;
   If FmSTRpa40.Edit1.text<>'' Then HD1:=HD1+' รหัสเจ้าหนี้ '+FmSTRpa40.Edit1.text;

   QRLabel18.caption   := HD1;
   If FmSTRpa40.Edit3.text<>'' then HD2:=HD2+'  รหัสสินค้า  '+FmSTRpa40.Edit3.text;
   If FmSTRpa40.Edit4.text<>'' then HD2:=HD2+'  ถึงสินค้า  '+FmSTRpa40.Edit4.text;

   QRLabel8.caption   := '  จากวันที่  '+FmSTRpa40.Edit_DateFrom.text+'  ถึงวันที่  '+FmSTRpa40.Edit_DateTo.text+HD2;

    With Query50 Do
    begin
      Close;
      SQL.Clear;
      If FmSTRpa40.RadioGp2.ItemIndex = 0 Then
      SQL.ADD('SELECT A.RTNLOC,A.RTNNO,A.PARTNO,A.RTNDT,A.QTYRTN, '+
      'A.UPRICE,A.NETPRC,A.FLAG,B.TAXREFNO,B.TAXDT,B.CREDNO,B.CREDDT,'+
      'B.APCODE,C.DESC1 '+
      'FROM RT_TRAN A,RT_INVOI B,INVENTOR C  WHERE A.RTNNO=B.RTNNO AND A.FLAG=''6'' AND '+
      'A.PARTNO=C.PARTNO AND A.RTNLOC=C.LOCAT AND A.RTNLOC LIKE :EDIT1 AND B.APCODE LIKE :EDIT2 '+
      'AND A.PARTNO>=:EDIT3 AND A.PARTNO<=:EDIT4 AND A.RTNDT>=:EDIT5 '+
      'AND A.RTNDT<=:EDIT6 AND C.GROUP1 LIKE :EDIT7  ORDER BY A.RTNNO');

      If FmSTRpa40.RadioGp2.ItemIndex = 1 Then
      SQL.ADD('SELECT A.RTNLOC,A.RTNNO,A.PARTNO,A.RTNDT,A.QTYRTN, '+
      'A.UPRICE,A.NETPRC,A.FLAG,B.TAXREFNO,B.TAXDT,B.CREDNO,B.CREDDT,'+
      'B.APCODE,C.DESC1 '+
      'FROM RT_TRAN A,RT_INVOI B,INVENTOR C  WHERE A.RTNNO=B.RTNNO AND A.FLAG=''6'' AND '+
      'A.PARTNO=C.PARTNO AND A.RTNLOC=C.LOCAT AND A.RTNLOC LIKE :EDIT1 AND B.APCODE LIKE :EDIT2 '+
      'AND A.PARTNO>=:EDIT3 AND A.PARTNO<=:EDIT4 AND A.RTNDT>=:EDIT5 '+
      'AND A.RTNDT<=:EDIT6 AND C.GROUP1 LIKE :EDIT7 ORDER BY A.RTNDT');

      If FmSTRpa40.Edit1.Text <> '' Then
         Ed1 := FmSTRpa40.Edit1.text +'%'
      else Ed1 := '%';

      If FmSTRpa40.Edit3.Text = '' Then
         Ed3 := ''
      else Ed3 := FmSTRpa40.Edit3.Text;
      If FmSTRpa40.Edit4.Text = '' Then
         Ed4 := 'โโโโโโ'
      else Ed4 := FmSTRpa40.Edit4.text;

      Params[0].AsString := FmStrpa40.Edit_Locat.Text+'%';
      Params[1].AsString := Ed1;
      Params[2].AsString := Ed3;
      Params[3].AsString := Ed4;
      Params[4].AsDate   := FmSTRpa40.Edit_DateFrom.Date;
      Params[5].AsDate   := FmSTRpa40.Edit_DateTo.Date;
      Params[6].AsString := FmSTRpa40.Edit7.Text+'%';;
      Open;
    end;
    if Query50.bof and Query50.Eof then
       SFMain.RaiseException('ไม่พบข้อมูลตามเงื่อนไข..!');

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := FmSTRpa40.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel16.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel16.Caption := 'สาขา : ['+FmSTRpa40.Edit_Locat.text+'] '+Fieldbyname('Locatnm').Asstring;
  end;

end;

procedure TFmSTRpa41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

end.
