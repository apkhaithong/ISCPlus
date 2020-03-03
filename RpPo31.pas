unit RpPo31;

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
  TQRFPo31 = class(TForm)
    Query3: TFDQuery;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    CondpayCOMP_ADR1: TStringField;
    CondpayCOMP_ADR2: TStringField;
    CondpayTELP: TStringField;
    Query1: TFDQuery;
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
  QRFPo31: TQRFPo31;

implementation
uses Rppo30;

{$R *.DFM}

procedure TQRFPo31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TQRFPo31.FormCreate(Sender: TObject);
Var SortText,ed1,ed2,Ord : string;
begin
   Case FRpPo30.SortRadio.ItemIndex Of
     0:begin
         SortText := 'เรียงตามเจ้าหนี้';
         ORD :=' ORDER BY POLOCAT,APCODE';
       end;
     1:begin
         SortText := 'เรียงตามวันที่สั่ง';
         ORD :=' ORDER BY POLOCAT,PODATE,APCODE';
       end;
     2:begin
         SortText := 'เรียงตามวันครบกำหนด';
         ORD :=' ORDER BY POLOCAT,DUERECV,APCODE';
       end;
     3:begin
         SortText := 'เรียงตามผู้สั่งของ';
         ORD :=' ORDER BY POLOCAT,OFFICCOD,APCODE';
       end;

   End;

  With Query3 Do
  begin
   Close;
   Sql.clear;
   Sql.Add('SELECT A.POLOCAT,A.APCODE,A.PONO,A.PODATE,A.PARTNO,A.ORDQTY,A.RECQTY,A.BALANCE,'+
   'B.APNAME,C.DESC1,D.DUERECV,D.RLCODE,D.REFNO,D.OFFICCOD,CURRENT DATE-D.DUERECV AS DELAY '+
   'FROM PO_TRANS A,APMAST B,INVENTOR C,PO_INVOI D WHERE '+
   'A.PONO=D.PONO AND A.APCODE=B.APCODE AND A.PARTNO=C.PARTNO AND A.POLOCAT=C.LOCAT AND '+
   'A.APCODE LIKE :XAPCODE AND A.POLOCAT LIKE :XLOCAT AND (A.PODATE >= :FROMDATE AND A.PODATE <= :ToDate) AND '+
   'D.OFFICCOD LIKE :XOFF AND A.BALANCE>0 AND (A.FLAG IS NULL OR A.FLAG <>''Y'') '+Ord);

   params[0].asString  := FRpPo30.Edit_Apcode.Text+'%';
   params[1].asString  := FRpPo30.Edit_LOCAT.Text+'%';
   params[2].asdate    := FRpPo30.Edit_DateFrom.Date;
   params[3].asdate    := FRpPo30.Edit_DateTo.Date;
   params[4].asString  := FRpPo30.Edit1.Text+'%';
   OPEN;
  end;

   condpay.open;
   QRLabel4.caption   := CondpayCOMP_NM.Asstring;
   QRLabel2.caption   := 'เจ้าหนี้ '+FRpPo30.Edit_Apcode.text+' สาขา '+
                        FRpPo30.EDIT_LOCAT.text;
   QRLabel17.Caption   := 'จากวันที่ '+FRpPo30.Edit_dateFrom.text+'  ถึงวันที่  '+
                        FRpPo30.Edit_DateTo.text;
end;

procedure TQRFPo31.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDBText13.Enabled := Query3.Fieldbyname('Delay').Asfloat>0;
end;

end.
