unit Strpa42;

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
  TFmSTRpa42 = class(TForm)
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
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    Query1: TFDQuery;
    DataSource1: TDataSource;
    QRLabel17: TQRLabel;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel49: TQRLabel;
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
  FmSTRpa42: TFmSTRpa42;

implementation
uses STRpa40, Dmic01;

{$R *.DFM}
procedure TFmSTRpa42.FormCreate(Sender: TObject);
Var ed1,Ed2,Ed3,Ed4,Xorder: String;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel11.caption  := FmSTRpa40.SortText;
   QRLabel8.caption   := 'สาขา  '+FmSTRpa40.Edit_Locat.text+'  ยี่ห้อ  '+FmSTRpa40.Edit1.text+
                         '  จากวันที่  '+FmSTRpa40.Edit_DateFrom.text+'  ถึงวันที่  '+FmSTRpa40.Edit_DateTo.text+
                         '  รหัสสินค้า  '+FmSTRpa40.Edit3.text+'  ถึงสินค้า  '+FmSTRpa40.Edit4.text;

   If FmSTRpa40.RadioGp2.ItemIndex = 0 Then
      Xorder := 'Order By RTNno';
   If FmSTRpa40.RadioGp2.ItemIndex = 1 Then
      Xorder := 'Order By RTNdt';

    With Query50 Do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT * FROM RT_INVOI WHERE  (RTNLoc like:XLocat) and (APCODE like:XAP) and '+
      '(RTNDt >=:FrmDate) and (RTNDt <=:ToDate) AND FLAG=''6'' '+Xorder);

      If FmSTRpa40.Edit1.Text <> '' Then
         Ed1 := FmSTRpa40.Edit1.text +'%'
      else Ed1 := '%';


      Params[0].AsString := FmSTRpa40.Edit_Locat.Text+'%';
      Params[1].AsString := Ed1;
      Params[2].AsDate   := FmSTRpa40.Edit_DateFrom.Date;
      Params[3].AsDate   := FmSTRpa40.Edit_DateTo.Date;
      Open;
    end;

    if Query50.bof and Query50.Eof then
       SFMain.RaiseException('ไม่มีข้อมูล');
    Query1.Close;
    Query1.Open;
end;

procedure TFmSTRpa42.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;
















procedure TFmSTRpa42.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel49.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
 
end;

end.
