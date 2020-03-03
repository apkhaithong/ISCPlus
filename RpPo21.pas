unit RpPo21;

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
  TQRFPo21 = class(TForm)
    Query2: TFDQuery;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    CondpayCOMP_ADR1: TStringField;
    CondpayCOMP_ADR2: TStringField;
    CondpayTELP: TStringField;
    Query2POLOCAT: TStringField;
    Query2APCODE: TStringField;
    Query2PARTNO: TStringField;
    Query2SUM1: TFloatField;
    Query2SUM2: TFloatField;
    Query2SUM3: TFloatField;
    Query2NETCOST: TFloatField;
    Query2SUM4: TFloatField;
    DataSource1: TDataSource;
    TInventor: TFDTable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure Query2AfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRFPo21: TQRFPo21;

implementation
uses RpPo20 ;

{$R *.DFM}

procedure TQRFPo21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TQRFPo21.FormCreate(Sender: TObject);
var ed1 : string;
begin
  With Query2 Do
  begin
   Close;
   Sql.clear;
   Sql.Add('SELECT POLOCAT,APCODE,PARTNO,SUM(ORDQTY) AS SUM1,'+
   'SUM(RECQTY) AS SUM2,SUM(ORDQTY-RECQTY) AS SUM3,NETCOST,'+
   'SUM((ORDQTY-RECQTY )*NETCOST) AS SUM4 '+
   'FROM PO_TRANS '+
   'WHERE (POLOCAT LIKE :XLOCAT) AND (PODATE >= :FROMDATE) '+
   ' AND (PODATE <= :XToDate) '+
   'GROUP BY POLOCAT,APCODE,PARTNO,NETCOST ');
   If FRpPo20.Edit_LOCAT.Text = '' Then
      Ed1 := '%'
   else
      Ed1 := FRpPo20.Edit_LOCAT.Text+'%';
   params[0].asString := Ed1;
   params[1].asdate   := FRpPo20.FROMDATE;
   params[2].asdate   := FRpPo20.ToDate;
   OPEN;
  end;

   condpay.open;
   QRLabel4.caption   := CondpayCOMP_NM.Asstring;
   QRLabel4.Left      := 1;
   QRLabel4.Width     := 900;
   QRLabel4.Alignment := taCenter;
   //
   QRLabel2.caption   := 'สาขา '+FRpPo20.EDIT_LOCAT.text+' จากวันที่ '+
                         FRpPo20.Edit_dateFrom.text+' ถึงวันที่ '+
                         FRpPo20.Edit_DateTo.text; ;
   QRLabel2.Left      := 1;
   QRLabel2.Width     := 900;
   QRLabel2.Alignment := taCenter;
   //
   QRLabel5.Left      := 1;
   QRLabel5.Width     := 900;
   QRLabel5.Alignment := taCenter;
end;




procedure TQRFPo21.Query2AfterOpen(DataSet: TDataSet);
begin
  Tinventor.Open;
end;

procedure TQRFPo21.Query2AfterClose(DataSet: TDataSet);
begin
  Tinventor.Close;
end;

end.
