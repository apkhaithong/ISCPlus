unit Rpap111;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Quickrpt, StdCtrls, ExtCtrls, Qrctrls, Db,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TQRpAp_111 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRep: TQuickRep;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel20: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QApinv1: TFDQuery;
    TCondpay: TFDTable;
    QRShape5: TQRShape;
    PageFooter: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRSysData4: TQRSysData;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRpAp_111: TQRpAp_111;

implementation

uses RpAp110;

{$R *.DFM}

procedure TQRpAp_111.FormCreate(Sender: TObject);
Var Xsort,OptDate :String;
begin
 TCondpay.Open ;
 QRLabel4.Caption   := TCondpay.FieldByName('COMP_NM').Asstring ;

 QRLabel6.caption   := '  ณ วันที '+RpAp_110.Edit_DateFrom.Text;
 Case RpAp_110.FSortRadio.ItemIndex Of
   0 : Xsort :='ORDER BY LOCAT,APCODE,INVDATE,INVNO';
   1 : Xsort :='ORDER BY LOCAT,INVDATE,APCODE,INVNO';
   2 : Xsort :='ORDER BY LOCAT,TAXNO';
 End;
 QRLabel3.Caption := '';
 If RpAp_110.Option.Itemindex=1 Then
 Begin
   QRLabel9.Caption :='รหัสลูกค้า';
   QRLabel2.Caption :='ชื่อลูกค้า';
   QRLabel3.Caption :='เฉพาะค่ามัดจำ';
 End
 Else
 Begin
   QRLabel9.Caption :='รหัสเจ้าหนี้';
   QRLabel2.Caption :='ชื่อบริษัท';
   If RpAp_110.Option.Itemindex=2 Then
   QRLabel3.Caption :='เฉพาะใบลดหนี้';
 End;
 If RpAp_110.RadioButton1.Checked Then
    OptDate :=' AND A.INVDATE>= :XDT1 AND A.INVDATE<= :XDT2 '
 Else
    OptDate :=' AND A.TAXDATE>= :XDT1 AND A.TAXDATE<= :XDT2 ';

 QRLabel3.Enabled := RpAp_110.Option.Itemindex<>0;

  with QApinv1 do
  begin
   Close;
   Sql.Clear;
   Case  RpAp_110.Option.Itemindex of
    0:Sql.Add('SELECT A.LOCAT,A.APCODE,A.INVNO,A.INVDATE,(A.NETTOTAL-A.RTNAMT) AS NETTOTAL,A.INVDUE, '+
      'A.SMPAY+A.SMCHQ AS PAYAMT,A.KANG,SUBSTR(B.APNAME,1,30) AS APNAME,A.TAXNO,A.TAXDATE FROM APINVOI A, '+
      'APMAST B WHERE A.APCODE=B.APCODE AND (A.FLAG<>''6'') AND A.KANG>0 AND '+
      'A.APCODE LIKE :XAPCODE '+Optdate+' AND A.LOCAT LIKE :XLOC  '+xSORT);
    1:Sql.Add('SELECT A.LOCAT,A.APCODE,A.INVNO,A.INVDATE,A.NETTOTAL,A.INVDUE,A.DEPOSIT, '+
      'A.SMPAY+A.SMCHQ AS PAYAMT,A.KANG,SUBSTR(RTRIM(B.NAME1)||'' ''||B.NAME2,1,30) AS APNAME,A.TAXNO,A.TAXDATE FROM APINVOI A, '+
      'ARMAST B WHERE A.APCODE=B.CUSCOD AND A.FLAG=''E'' AND A.KANG>0 AND A.DEPOSIT=''Y'' AND CANCELID IS NULL AND '+
      'A.APCODE LIKE :XAPCODE '+Optdate+' AND A.LOCAT LIKE :XLOC  ');
    2:Sql.Add('SELECT A.LOCAT,A.APCODE,A.INVNO,A.INVDATE,A.NETTOTAL,A.INVDUE, '+
      'A.SMPAY+A.SMCHQ AS PAYAMT,A.KANG,SUBSTR(B.APNAME,1,30) AS APNAME,A.TAXNO,A.TAXDATE FROM APINVOI A, '+
      'APMAST B WHERE A.APCODE=B.APCODE AND (A.FLAG=''6'') AND '+
      'A.APCODE LIKE :XAPCODE '+Optdate+' AND A.LOCAT LIKE :XLOC  '+xSORT);

   end;

   Params[0].AsString    := RpAp_110.Edit1.Text+'%' ;
   Params[1].AsDate      := RpAp_110.Edit_DateFrom.Date;
   Params[2].AsDate      := RpAp_110.Edit_DateTo.Date;
   Params[3].AsString    := RpAp_110.Edit_Locat.Text+'%' ;
   Open;
  end;

  if QApinv1.Bof And QApinv1.Eof then
     SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');
end;

procedure TQRpAp_111.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;




end.
