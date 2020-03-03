unit RpPo11;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, quickrpt, Qrctrls, Db, WinTypes,
  WinProcs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TQRFPo11 = class(TForm)
    Query1: TFDQuery;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    CondpayCOMP_ADR1: TStringField;
    CondpayCOMP_ADR2: TStringField;
    CondpayTELP: TStringField;
    TInventor: TFDTable;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRFPo11: TQRFPo11;
  TQTY,TCOST,TTOT : DOUBLE;
implementation
uses Rppo10;

{$R *.DFM}

procedure TQRFPo11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TQRFPo11.FormCreate(Sender: TObject);
VAR SortText,ED1,ED2,XOrder : STRING;
begin
   TQTY  := 0;
   TCOST := 0;
   TTOT  := 0;
   Case FRpPo10.SortRadio.ItemIndex Of
     0:SortText := 'เรียงตามเจ้าหนี้';
     1:SortText := 'เรียงตามสาขา';
     2:SortText := 'เรียงตามวันที่สั่ง';
   End;
  {Create SQL DataBase}
  Case FRpPo10.SortRadio.ItemIndex Of
    0 : Xorder := ' ORDER BY APCODE ';
    1 : Xorder := ' ORDER BY POLOCAT ';
    2 : Xorder := ' ORDER BY PODATE ';
  end;

  With Query1 Do
  begin
   Close;
   Sql.clear;
   {Sort By APCODE}
   Sql.Add('SELECT A.PODATE,A.APCODE,A.PONO,A.POLOCAT, '+
           'A.PARTNO,A.ORDQTY,A.ORDCOST,A.NETCOST,A.ORDQTY*A.NETCOST AS TOTCOST,B.APNAME '+
           'FROM PO_TRANS A,APMAST B '+
           'WHERE (A.APCODE=B.APCODE) AND (A.APCODE LIKE :XAPCODE) '+
           'AND (A.POLOCAT LIKE :XLOCAT) AND '+
           '(A.PODATE >= :FROMDATE) AND (A.PODATE <= :ToDate) '+XORDER);
   {Condition Variable}
   IF FRpPo10.Edit_Apcode.Text = '' THEN
      Ed1 := '%'
   ELSE
      Ed1 := FRpPo10.Edit_Apcode.Text+'%';
   If FRpPo10.Edit_LOCAT.Text = '' Then
      Ed2 := '%'
   else
      Ed2 := FRpPo10.Edit_LOCAT.Text+'%';
   params[0].asString   := Ed1;
   params[1].asString   := Ed2;
   params[2].asdate     := FRpPo10.FromDate;
   params[3].asdate     := FRpPo10.ToDate;
   {Open SQL Table}
   OPEN;
  end;

   condpay.open;
   QRLabel4.caption   := CondpayCOMP_NM.Asstring;
   QRLabel4.Left      := 1;
   QRLabel4.Width     := 1020;
   QRLabel4.Alignment := taCenter;
    //
   If FRpPo10.Edit_Apcode.text<>'' Then
      QRLabel2.caption   := 'รหัสเจ้าหนี้ '+FRpPo10.Edit_Apcode.text
   Else
      QRLabel2.caption   := '';
   QRLabel2.Left      := 1;
   QRLabel2.Width     := 1020;
   QRLabel2.Alignment := taCenter;
    //
   QRLabel17.Caption   := 'จากวันที่ '+FRpPo10.Edit_dateFrom.text+'  ถึงวันที่  '+
                        FRpPo10.Edit_DateTo.text;
   QRLabel17.Left      := 1;
   QRLabel17.Width     := 1020;
   QRLabel17.Alignment := taCenter;
   //
   QRLabel5.Left      := 1;
   QRLabel5.Width     := 1020;
   QRLabel5.Alignment := taCenter;
   //
end;

procedure TQRFPo11.Query1AfterOpen(DataSet: TDataSet);
begin
  TInventor.Open;
end;

procedure TQRFPo11.Query1AfterClose(DataSet: TDataSet);
begin
  TInventor.Close;
end;



end.
