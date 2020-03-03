unit RpAp61;

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
  TQRpAp_61 = class(TForm)
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel7: TQRLabel;
    QRep: TQuickRep;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel16: TQRLabel;
    QRShape2: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel20: TQRLabel;
    QAppaytr: TFDQuery;
    QAppaytrBILLNO: TStringField;
    QAppaytrLOCAT: TStringField;
    QAppaytrBILLDT: TDateField;
    QAppaytrAPCODE: TStringField;
    QAppaytrPAYCONT: TStringField;
    QAppaytrCHQAMT: TFloatField;
    QAppaytrCSHAMT: TFloatField;
    QAppaytrTOTAL: TFloatField;
    QAppaytrDISCT: TFloatField;
    QAppaytrFLAG: TStringField;
    QApchq: TFDQuery;
    TCondpay: TFDTable;
    SoQAppaytr: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape4: TQRShape;
    PageFooter: TQRBand;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel32: TQRLabel;
    QRSysData5: TQRSysData;
    QRLabel33: TQRLabel;
    QRLabel8: TQRLabel;
    Query1: TFDQuery;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText17: TQRDBText;
    QApmast: TFDQuery;
    DataSource1: TDataSource;
    QRLabel21: TQRLabel;
    QRDBText18: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRpAp_61: TQRpAp_61;
  Sum1,Sum2,Sum3,Sum4 : double;

implementation

uses RpAp60, USoftFirm;

{$R *.DFM}

procedure TQRpAp_61.FormCreate(Sender: TObject);
begin
  TCondpay.Open ;
  QRLabel4.Caption := TCondpay.FieldByName('COMP_NM').Asstring ;
  QRLabel4.Left      := 1;
  QRLabel4.Width     := 900;
  QRLabel4.Alignment := taCenter;

  QRLabel5.Left      := 1;
  QRLabel5.Width     := 900;
  QRLabel5.Alignment := taCenter;

  QRLabel6.caption := 'จากวันที่  '+RpAp_60.Edit_DateFrom.Text+ ' ถึงวันที่  '+RpAp_60.Edit_DateTo.Text;
  QRLabel6.Left      := 1;
  QRLabel6.Width     := 900;
  QRLabel6.Alignment := taCenter;

  Qapmast.Close;
  with QAppaytr do
  begin
   Close;
   Sql.Clear;
   If RpAp_60.FSortRadio.ItemIndex = 0 Then
    Sql.Add('SELECT * FROM APPAYTRN '+
            ' WHERE APCODE LIKE :XAPCODE AND BILLDT <= :LBILLDT AND BILLDT >= :FBILLDT '+
            ' AND LOCAT LIKE :XLOC ORDER BY APCODE ');
   If RpAp_60.FSortRadio.ItemIndex = 1 Then
    Sql.Add('SELECT * FROM APPAYTRN '+
            ' WHERE APCODE LIKE :XAPCODE AND BILLDT <= :LBILLDT AND BILLDT >= :FBILLDT '+
            ' AND LOCAT LIKE :XLOC ORDER BY LOCAT ');
   If RpAp_60.FSortRadio.ItemIndex = 2 Then
    Sql.Add('SELECT * FROM APPAYTRN '+
            ' WHERE APCODE LIKE :XAPCODE AND BILLDT <= :LBILLDT AND BILLDT >= :FBILLDT '+
            ' AND LOCAT LIKE :XLOC ORDER BY BILLDT ');
   Params[0].Asstring := RpAp_60.Edit1.Text+'%' ;
   Params[1].AsDate   := RpAp_60.Edit_DateTo.Date;
   Params[2].AsDate   := RpAp_60.Edit_Datefrom.Date;
   Params[3].AsString := RpAp_60.Edit_Locat.Text+'%';
   Open;
  end;
  if QAppaytr.Bof And QAppaytr.Eof then
     SFMain.RaiseException('ไม่มีข้อมูลตามเงิ่อนไขที่กำหนด ');

  with QAPMAST do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT APCODE,APNAME FROM APMAST WHERE APCODE=:APCODE');
   Open;
  end;

  //
  QApchq.MasterSource := SoQAppaytr;
  with QApchq do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM APCHQ '+
            ' WHERE  BILLNO= :BILLNO  ');
    Open;
  end;
  with Query1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT SUM(CSHAMT) AS CASH,SUM(CHQAMT) AS CHQ,SUM(DISCT) AS DISC,SUM(TOTAL) AS TOT FROM APPAYTRN '+
           ' WHERE FLAG<>''C'' AND APCODE LIKE :XAPCODE AND BILLDT <= :LBILLDT AND BILLDT >= :FBILLDT  AND LOCAT LIKE :XLOC ');
   Params[0].Asstring   := RpAp_60.Edit1.Text+'%' ;
   Params[1].AsDate   := RpAp_60.Edit_DateTo.Date;
   Params[2].AsDate   := RpAp_60.Edit_Datefrom.Date;
   Params[3].AsString := RpAp_60.Edit_Locat.Text+'%';
   Open;
  end;

end;

procedure TQRpAp_61.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TQRpAp_61.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QAppaytr.FieldByName('PAYCONT').Asstring = '1' then
     QRLabel7.Caption := 'Invoice '
  else
     QRLabel7.Caption := 'ใบวางบิล ';

  if QAppaytr.FieldByName('Flag').Asstring = 'C' then
     QRLabel8.Enabled := True
  else
     QRLabel8.Enabled := False;
end;









end.
