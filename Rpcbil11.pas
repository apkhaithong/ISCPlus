unit Rpcbil11;

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
  TQFcan11 = class(TForm)
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
    QRLabel29: TQRLabel;
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
    QRLabel8: TQRLabel;
    QRLabel31: TQRLabel;
    QRSysData4: TQRSysData;
    QRDBText1: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel17: TQRLabel;
    Qbill: TFDQuery;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    QRBand5: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData5: TQRSysData;
    QRDBCalc1: TQRDBCalc;
    QRDBCalc2: TQRDBCalc;
    QRDBCalc3: TQRDBCalc;
    QRLabel18: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
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
  QFcan11: TQFcan11;

implementation

uses  Rpcbil10;

{$R *.DFM}

procedure TQFcan11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree ;
end;

procedure TQFcan11.FormCreate(Sender: TObject);
Var XSystm:String;
begin
 Condpay.Open;
 QRLabel4.caption   := Condpay.FieldByName('COMP_NM').Asstring;
 QRLabel4.Left      := 1;
 QRLabel4.Width     := 950;
 QRLabel4.Alignment := taCenter;
 QRLabel5.Left      := 1;
 QRLabel5.Width     := 950;
 QRLabel5.Alignment := taCenter;

 QRLabel9.Caption  := Fcanbil10.Edit_dateFrom.Text ;
 QRLabel10.Caption := Fcanbil10.Edit_dateTo.Text ;

 Case Fcanbil10.RadioGroup1.Itemindex Of
   0:begin
      XSystm:=' AND SYSTM= ''IC'' ';
      QRLabel24.Caption :='ขายหน้าร้าน';
     end;
   1:begin
      XSystm:=' AND SYSTM<> ''IC'' ';
      QRLabel24.Caption :='ขายศูนย์บริการ';
     end;
   2:begin
      XSystm:='';
      QRLabel24.Caption :='ทั้งหมด';
     end;
 end;


 with QBill do
 begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT A.BILLNO,A.LOCAT,A.BILLDT,A.CUSCODE,A.PAYTYP,A.CHQAMT, '+
           'A.CANCELID,A.CANDAT,A.CSHAMT,A.TOTAL,A.DISAMT,A.NETTOT,A.JOBNO,B.SNAM, '+
           'B.NAME1,B.NAME2 FROM ARPAYTRN A,ARMAST B '+
           'WHERE A.CUSCODE=B.CUSCOD AND (A.CANDAT Between :Edit1 AND :Edit2) '+XSYSTM+
           'ORDER BY A.CANDAT ');

   Params[0].AsDatetime  := StrToDate(Fcanbil10.Edit_DateFrom.Text) ;
   Params[1].AsDatetime  := StrToDate(Fcanbil10.Edit_DateTo.Text)+1 ;
   Open;
 end;
 if QBill.Bof And QBill.Eof then
   SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');
end;

procedure TQFcan11.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel31.Caption := Qbill.FieldByName('SNAM').Asstring
                     +' '+Qbill.FieldByName('NAME1').Asstring
                     +' '+Qbill.FieldByName('NAME2').Asstring;

  if Qbill.FieldByName('PAYTYP').Asstring = '01' then
     QRLabel8.Caption := 'เงินสด'
  else
  if Qbill.FieldByName('PAYTYP').Asstring ='02' then
     QRLabel8.Caption := 'เช็ค'
  else
     QRLabel8.Caption := Qbill.FieldByName('PAYTYP').Asstring ;
end;







end.
