unit StrpA51;

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
  TFmRpa51 = class(TForm)
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
    QRLabel34: TQRLabel;
    QRLabel11: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
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
    Query60: TFDQuery;
    QRBand5: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    Query60MOVFRM: TStringField;
    Query60MOVTO: TStringField;
    Query60MOVDT: TDateField;
    Query60OFFICCOD: TStringField;
    Query60MOVNO: TStringField;
    Query60PARTNO: TStringField;
    Query60DESC1: TStringField;
    Query60QTYMOV: TFloatField;
    Query60UPRICE: TFloatField;
    Query60TOTPRC: TFloatField;
    PageFooterBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel12: TQRLabel;
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
  FmRpa51: TFmRpa51;

implementation
uses STRpa50, Dmic01;

{$R *.DFM}

procedure TFmRpa51.FormCreate(Sender: TObject);
Var ed1,Ed2,Ed3,Ed4,XFlag: String;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left  := 1;
   QRLabel4.width := 960;
   QRLabel4.alignment := tacenter;
   QRLabel8.caption   := 'จากวันที่  '+FmRpa50.Edit_DateFrom.text+'  ถึงวันที่  '+FmRpa50.Edit_DateTo.text;

   QRLabel8.left := 1;
   QRLabel8.width := 960;
   QRLabel8.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 960;
   QRLabel5.alignment := tacenter;
   //
   Case FmRpa50.RadioGp2.ItemIndex Of
     0: QRLabel11.caption  := 'เรียงตามสาขา วันที่ เลขที่โอน';
     1: QRLabel11.caption  := 'เรียงตามสาขา รหัสสินค้า';
   End;


    With Query60 Do
    begin
      Close;
      SQL.Clear;
      If FmRpa50.RadioGp2.ItemIndex = 0 Then
      SQL.ADD('SELECT A.MOVFRM,A.MOVTO,B.MOVDT,B.OFFICCOD,A.MOVNO, '+
      'A.PARTNO,C.DESC1,A.QTYMOV,A.UPRICE,A.TOTPRC  '+
      'FROM MV_TRANS A,MV_INVOI B,INVENTOR C         '+
      'WHERE A.MOVNO=B.MOVNO AND A.PARTNO=C.PARTNO AND A.MOVFRM=C.LOCAT AND '+
      'A.MOVFRM LIKE :EDIT1 AND B.MOVDT>=:EDIT2 AND B.MOVDT <=:EDIT3 '+
      'AND C.GROUP1 LIKE :XGROUP  '+
      'ORDER BY A.MOVFRM,B.MOVDT,A.MOVNO');

      If FmRpa50.RadioGp2.ItemIndex = 1 Then
      SQL.ADD('SELECT A.MOVFRM,A.MOVTO,B.MOVDT,B.OFFICCOD,A.MOVNO, '+
      'A.PARTNO,C.DESC1,A.QTYMOV,A.UPRICE,A.TOTPRC  '+
      'FROM MV_TRANS A,MV_INVOI B,INVENTOR C         '+
      'WHERE A.MOVNO=B.MOVNO AND A.PARTNO=C.PARTNO AND A.MOVFRM=C.LOCAT AND '+
      'A.MOVFRM LIKE :EDIT1 AND B.MOVDT>=:EDIT2 AND B.MOVDT <=:EDIT3 '+
      'AND C.GROUP1 LIKE :XGROUP  '+
      'ORDER BY A.MOVFRM,A.PARTNO');


      Params[0].AsString := FmRpa50.Edit_Locat.Text+'%';
      Params[1].AsDate   := FmRpa50.Edit_DateFrom.Date;
      Params[2].AsDate   := FmRpa50.Edit_DateTo.Date;
      Params[3].AsString := FmRpa50.Edit7.Text+'%';
      Open;
    end;
    if Query60.bof and Query60.Eof then
       SFMain.RaiseException('ไม่มีข้อมูล');

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := FmRpa50.Edit_Locat.Text;
    Open;
    If Bof and Eof Then
      QRLabel12.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel12.Caption := 'สาขา : ['+FmRpa50.Edit_Locat.Text+'] '+Fieldbyname('Locatnam').Asstring;
  end;

end;

procedure TFmRpa51.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmRpa51.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 IF  FmDmic01.XISO <> '' then
 begin
   QRLabel20.Caption :=FmDmic01.XISO;
   FmDmic01.XISO := '';
 end;
end;

end.
