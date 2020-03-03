unit Stprn31;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DB, quickrpt, Qrctrls;

type
  TFmStprn31 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn31: TFmStprn31;
  SumQty,Sum1,Sum2 : double;

implementation
uses Dmic01,Stin10,Stprn30;
{$R *.DFM}


procedure TFmStprn31.FormCreate(Sender: TObject);
begin
   QRLabel9.caption := ' รหัสสาขา  :  '+FmSTIn10.DBEdit1.text+

                       '  วันท่ีใบปรับปรุง  :  '+FmSTIn10.DBEdit4.text+
                       '  เลขที่ใบปรับปรุง  :  '+FmSTIn10.DBEdit2.text;
   QRLabel8.caption := ' พนักงานปรับปรุง  '+FmSTIn10.Edit2.text+
                       ' [ '+FmSTIn10.DBEdit11.text+' ]';
   Sum1 := 0;
   Sum2 := 0;
end;

procedure TFmStprn31.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   With FmDmic01.Query1 Do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO,DESC1,LOCAT FROM INVENTOR WHERE PARTNO =:XPARTNO');
      PARAMS[0].ASSTRING := FmDmic01.TmpajtrPartno.AsString;
      Open;
   End;
   QRLabel15.Caption := FmDmic01.Query1.Fieldbyname('DESC1').Asstring;

   If FmDmic01.Tmpajtr.Fieldbyname('Totcost').asfloat>0 Then
     Sum1 := Sum1+FmDmic01.Tmpajtr.Fieldbyname('Totcost').asfloat
   Else
     Sum2 := Sum2+FmDmic01.Tmpajtr.Fieldbyname('Totcost').asfloat;
end;

procedure TFmStprn31.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel10.Caption := Floattostrf(Sum1,ffFixed,12,2);
  QRLabel12.Caption := Floattostrf(Abs(Sum2),ffFixed,12,2);
end;

procedure TFmStprn31.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
IF  FmDmic01.XISO <> '' then
 begin
 QRLabel16.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

procedure TFmStprn31.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Sum1 := 0;
  Sum2 := 0;
end;

end.
