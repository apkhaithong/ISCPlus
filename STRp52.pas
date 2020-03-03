unit Strp52;

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
  TFmSTRp52 = class(TForm)
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
    QRLabel24: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel11: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
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
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    Query2: TFDQuery;
    DataSource1: TDataSource;
    QRDBText13: TQRDBText;
    QRLabel18: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel19: TQRLabel;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRp52: TFmSTRp52;

implementation
uses STRp50, Dmic01;

{$R *.DFM}
procedure TFmSTRp52.FormCreate(Sender: TObject);
Var ed1,Ed2,Ed3,Ed4,Xorder,OP1: String;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 1040;
   QRLabel4.alignment := tacenter;
   QRLabel11.caption  := FmSTRp50.SortText;
   QRLabel8.caption   := '  ยี่ห้อ  '+FmSTRp50.Edit1.text+
                         '  จากวันที่  '+FmSTRp50.Fromdate.text+'  ถึงวันที่  '+FmSTRp50.Todate.text+
                         '  รหัสสินค้า  '+FmSTRp50.Edit3.text+'  ถึงสินค้า  '+FmSTRp50.Edit4.text;
   QRLabel8.left := 1;
   QRLabel8.width := 1040;
   QRLabel8.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 1040;
   QRLabel5.alignment := tacenter;

   Case FmSTRp50.RadioGroup1.ItemIndex Of
    0: op1:=' AND FLAG<>''R'' ';
    1: op1:=' AND FLAG=''R'' ';
    2: op1:='';
   End;


   If FmSTRp50.RadioGp2.ItemIndex = 0 Then
      Xorder := 'Order By Recvno';
   If FmSTRp50.RadioGp2.ItemIndex = 1 Then
      Xorder := 'Order By Recvdt';

    Query2.Close;
    With Query50 Do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT  RECVLOC,RECVNO,RECVDT,TAXNO,TAXDATE, '+
      ' APCODE,TOTAL,DISCAMT,BALANCE,VATAMT, '+
      ' VATRT,TOTCOST,DISCT,FLAG  FROM RC_INVOI  WHERE '+
      ' (recvLoc like:XLocat) and (APCODE like:XAP) '+OP1+
      'AND (RecvDt >=:FrmDate) and (RecvDt <=:ToDate) '+Xorder);

      If FmSTRp50.Edit1.Text <> '' Then
         Ed1 := FmSTRp50.Edit1.text +'%'
      else Ed1 := '%';

      If FmSTRp50.Edit2.Text <> '' Then
         Ed2 := FmSTRp50.Edit2.text +'%'
      else Ed2 := '%';

      Params[0].AsString := Ed2;
      Params[1].AsString := Ed1;
      Params[2].AsDate   := FmSTRp50.Fromdate.Date;
      Params[3].AsDate   := FmSTRp50.Todate.Date;
      Open;
    end;

    if Query50.bof and Query50.Eof then
       SFMain.RaiseException('ไม่มีข้อมูล');
    Query2.Open;

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := FmSTRp50.Edit2.text;
    Open;
    If Bof and Eof Then
      QRLabel19.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel19.Caption := 'สาขา : ['+FmSTRp50.Edit2.text+'] '+Fieldbyname('Locatnam').Asstring;
  end;

end;

procedure TFmSTRp52.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end; 

procedure TFmSTRp52.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
IF  FmDmic01.XISO <> '' then
 begin
 QRLabel20.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

end.
