unit PoPrn11;



// QuickReport simple list    f
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, StdCtrls, ExtCtrls, DB, Qrctrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmPoPrn11 = class(TForm)
    QPrn10: TFDQuery;
    QPrn11: TFDQuery;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    CondpayCOMP_ADR1: TStringField;
    CondpayCOMP_ADR2: TStringField;
    CondpayTELP: TStringField;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportStartPage(Sender: TCustomQuickRep);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPoPrn11: TFmPoPrn11;
  Count : Integer;
  Total,Discamt : Double;

implementation
uses PoPrn10;
{$R *.DFM}

procedure TFmPoPrn11.FormCreate(Sender: TObject);
var Topm:double;
    Tumb,Aump,Prov :String;
begin
  Topm :=QuickReport.page.Topmargin;
  QuickReport.page.Topmargin := Topm+FmPoPrn10.SpinEdit1.Value;
  Condpay.Open;

  With QPrn10 Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.PONO,A.POLOCAT,A.APCODE,A.PODATE,A.COSTFLG,A.REFNO,A.RLCODE,A.MEMO1, '+
            'A.TRANF,A.VAT,A.NETCOST,A.VATAMT,A.TOTCOST,B.APNAME,B.ADDR1,B.PURCODE,A.CREDTM, '+
            'B.ADDR2,B.APTELP,C.LOCATNAM,D.PODESC '+
            'FROM PO_INVOI A,APMAST B,LOCATMST C,POTYPE D '+
            'WHERE A.PONO =:XPO AND A.APCODE = B.APCODE AND '+
            'A.POLOCAT = C.LOCATCOD AND A.POTYPE = D.POCODE ');
    Params[0].AsString := FmPoPrn10.Label6.caption;
    Open;
    QRLabel21.Caption := fieldByName('APNAME').AsString+' ('+fieldByName('APCODE').AsString+')';
    QRLabel16.Enabled := fieldByName('PURCODE').AsString<>'';
  End;

  With QPrn11 Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.PONO,A.PARTNO,A.ORDQTY,A.ORDCOST,A.BO,A.REDU,A.NETCOST,A.TOTCOST,B.DESC1 '+
            'FROM PO_TRANS A,INVENTOR B '+
            'WHERE (A.PONO =:XRecvno) And (A.Partno = B.Partno) And (A.Polocat=B.Locat)');
    Params[0].AsString := QPrn10.FieldByName('PONO').AsString;
    Open;
  End;

 With Query1 Do
 Begin
   Close;
   Sql.Clear;
   Sql.Add('Select * FROM LOCATMST Where (LOCATCOD =:Jobno) ');
   Params[0].AsString := QPrn10.FieldByName('POLOCAT').AsString;
   Open;

     If ((Copy(FieldByName('Prov').AsString,1,7)='กรุงเทพ')or
      (Copy(FieldByName('Prov').AsString,1,3)='กทม')) Then
     Begin
      Tumb :='แขวง ';
      Aump :='เขต ';
      Prov :='';
     End
     Else
     Begin
      Tumb :='ต.';
      Aump :='อ.';
      Prov :='จ.';
     End;

   QRLabel23.Caption := fieldByName('LOCATNAM').AsString;
   QRLabel24.Caption := fieldByName('ADDR1').AsString;
   QRLabel25.Caption := '';
   QRLabel15.Caption := '';
   If fieldByName('ADDR2').AsString <> '' Then
      QRLabel24.Caption := QRLabel24.Caption+' ถ.'+fieldByName('ADDR2').AsString;
   If fieldByName('TUMB').AsString <> '' Then
      QRLabel25.Caption := QRLabel25.Caption+Tumb+fieldByName('TUMB').AsString+' ';
   If fieldByName('AUMP').AsString <> '' Then
      QRLabel25.Caption := QRLabel25.Caption+Aump+fieldByName('AUMP').AsString+' ';
   If fieldByName('PROV').AsString <> '' Then
      QRLabel25.Caption := QRLabel25.Caption+Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
   If fieldByName('TELP').AsString <> '' Then
      QRLabel15.Caption := 'โทร.'+fieldByName('TELP').AsString;

 End;

 With Query1 Do
 Begin
   Close;
   Sql.Clear;
   Sql.Add('Select * FROM REELOCAT Where (RLCODE =:Jobno) ');
   Params[0].AsString := QPrn10.FieldByName('RLCODE').AsString;
   Open;

   QRLabel30.Caption := 'สถานที่ส่งมอบ: '+fieldByName('RLNAME').AsString;

 End;

 QRLabel22.Enabled  := FmPoPrn10.CheckBox1.Checked;
 QRDBText10.Enabled := QRLabel22.Enabled;
 QRLabel26.Enabled  := QRLabel22.Enabled;
 QRDBText11.Enabled := QRLabel22.Enabled;
 QRLabel31.Enabled  := QRLabel22.Enabled;
 QRDBText15.Enabled := QRLabel22.Enabled;

 QRBand3.Enabled := QRLabel22.Enabled;

 QRLabel10.Enabled := Not(QRLabel22.Enabled);
 QRLabel9.Enabled :=QRLabel10.Enabled;

 QRLabel28.Caption :='ภาษีมูลค่าเพิ่ม   '+Floattostr(QPrn10.Fieldbyname('VAT').AsFloat)+' %';
end;

procedure TFmPoPrn11.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If QPrn11.Eof Then
  begin
    QRLabel11.Enabled := True;
    QRLabel12.Enabled := True;
    QRLabel13.Enabled := True;
    QRLabel14.Enabled := True;
  end
  Else
  Begin
    QRLabel11.Enabled := False;
    QRLabel12.Enabled := False;
    QRLabel13.Enabled := False;
    QRLabel14.Enabled := False;
  end;
end;


procedure TFmPoPrn11.QuickReportStartPage(Sender: TCustomQuickRep);
begin
   Count := 0;
   Total := 0;
end;

procedure TFmPoPrn11.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total := Total+(QPrn11.Fieldbyname('ORDQTY').AsFloat*QPrn11.Fieldbyname('ORDCOST').AsFloat);

end;

procedure TFmPoPrn11.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

begin
  Discamt := Total-QPrn10.Fieldbyname('NETCOST').AsFloat;
  QRLabel34.Caption := Floattostrf(Total,ffnumber,15,2);
  QRLabel35.Caption := Floattostrf(Discamt,ffnumber,15,2);

end;

end.
