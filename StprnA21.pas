unit Stprna21;

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
  TFmSTPrnA21 = class(TForm)
    QueryA10: TFDQuery;
    QueryA11: TFDQuery;
    Condpay: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTPrnA21: TFmSTPrnA21;

implementation
uses STPrnA20;

{$R *.DFM}

procedure TFmSTPrnA21.FormCreate(Sender: TObject);
Var XSort:String;
begin
  Condpay.Open;
  QRLabel4.Caption   := Condpay.fieldbyname('Comp_nm').asstring;
  QRLabel4.left      := 1;
  QRLabel4.width     := 700;
  QRLabel4.alignment := tacenter;
  QRLabel5.left      := 1;
  QRLabel5.width     := 700;
  QRLabel5.alignment := tacenter;

  With QueryA10 Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT t.adjno,t.adjloc,t.adjdate,t.officcod,t.EXPTYP, '+
            'f.OFFICCOD,f.OFFICnam,L.locatcod,L.Locatnam '+
            'FROM TMPAJIV t,OFFICER f,Locatmst L '+
            'WHERE t.ADJNO =:XADJNO and t.officcod = f.officcod '+
            'and t.adjloc = L.locatcod ');
    Params[0].AsString := FmStprnA20.Label6.caption;
    Open;
  End;
  If QueryA10.Fieldbyname('Exptyp').Asstring='1' Then
     Xsort:=' ORDER By A.SHELF '
  Else
  If QueryA10.Fieldbyname('Exptyp').Asstring='2' Then
     Xsort:=' ORDER BY A.GROUP1,A.SHELF '
  Else
     Xsort:=' ORDER BY A.PARTNO ';

  With QueryA11 Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT a.adjno,a.adjloc,a.partno,a.shelf,a.group1,a.Qtyord,a.itemno, '+
            'm.partno,m.desc1 FROM TMPAJTR a,inventor m '+
            'WHERE a.ADJNO =:XADJNO and (a.partno = m.partno)and (A.Adjloc=m.Locat) And '+
            'A.Qtyord<>A.QtyBOD order by itemno');
    Params[0].AsString := FmStprnA20.Label6.caption;
    Open;
  End;
end;

procedure TFmSTPrnA21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;


procedure TFmSTPrnA21.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If FmStprnA20.CheckBox1.Checked Then
    QRDBText5.Enabled := True
  Else
    QRDBText5.Enabled := False;
end;







end.
