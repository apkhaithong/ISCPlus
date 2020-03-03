unit Txrp12;

// QuickReport simple list 
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, quickrpt, Qrctrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmTXRp11 = class(TForm)
    Rep: TQuickRep;
    Header: TQRBand;
    Detail: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape5: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    Query6: TFDQuery;
    Condpay: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    Balanc :Double;
  public
    { Public declarations }
  end;

var
  FmTXRp11: TFmTXRp11;
  sum, S1 : integer;

implementation
uses TXRp10;
{$R *.DFM}

procedure TFmTXRp11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Close;
    Action := caFree;
end;

procedure TFmTXRp11.FormCreate(Sender: TObject);
begin
    sum := 0;
    QRLabel14.Left := 375;
    QRLabel14.Width  := 345;
    QrLabel16.Caption := '  รหัสสินค้า  '+FmTXRp10.Edit3.Text;
    QRLabel14.Alignment := taCenter;
    QrLabel13.Caption := FmTXRp10.Edit1.Text+' - '+FmTXRp10.Edit2.Text;
    Condpay.Open;
    QrLabel10.Caption := Condpay.Fieldbyname('Comp_nm').Asstring;
    QrLabel11.Caption := Trim(Condpay.Fieldbyname('Comp_Adr1').Asstring)+' '+
                         Trim(Condpay.Fieldbyname('Comp_Adr2').Asstring);
    QrLabel12.Caption := Condpay.Fieldbyname('Taxid').Asstring;

    With Query6 Do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM STKCARD WHERE (STKDATE >= :Date_a) and '+
              '(STKDATE <= :Date_b)  AND (Partno =:XPartno) and (TAXNO <> '''') AND '+
              '(FLAG = ''1'' OR FLAG = ''2'' OR FLAG = ''4'' OR FLAG = ''5'') '+
              'Order by Stkdate ');
      Params[0].asdate  := StrtoDate(FmTXRp10.Edit1.Text);
      Params[1].asdate  := Strtodate(FmTXRp10.Edit2.Text);
      Params[2].asString:= FmTXRp10.Edit3.Text;
      Open;
    end;
    If Query6.Bof and Query6.Eof Then
      SFMain.RaiseException('ไม่มีข้อมูล');
end;

procedure TFmTXRp11.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    If Query6.Fieldbyname('Flag').AsString = '1' Then
    Begin
       QrLabel3.Caption := 'การขายสด';
       S1 := -Query6.Fieldbyname('Qtyout').AsInteger;
    End;
    If Query6.Fieldbyname('Flag').AsString = '2' Then
    Begin
       QrLabel3.Caption := 'การขายเชื่อ';
       S1 := -Query6.Fieldbyname('Qtyout').AsInteger;
    End;
    If Query6.Fieldbyname('Flag').AsString = '4' Then
    Begin
       QrLabel3.Caption := 'การซื้อสด';
       S1 := Query6.Fieldbyname('Qtyin').AsInteger;
    End;
    If Query6.Fieldbyname('Flag').AsString = '5' Then
    Begin
       QrLabel3.Caption := 'การเชื่อสด';
       S1 := Query6.Fieldbyname('Qtyin').AsInteger;
    End;
    sum := sum+s1;
    QRLabel6.Caption := inttostr(sum);
end;

procedure TFmTXRp11.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabel1.Caption := QRLabel6.Caption;
end;

end.
