unit Stprn81;

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
  TFmStprn81 = class(TForm)
    QRtinv1: TFDQuery;
    Condpay: TFDQuery;
    QRttrn: TFDQuery;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn81: TFmStprn81;
  SumQty,Sum1,Sum : double;
  PP:Integer;

implementation
uses Stin05,Stprn80, Dmic01;
{$R *.DFM}

procedure TFmStprn81.FormCreate(Sender: TObject);
var Diff:double;
    HD1,HD2:String;
    Tumb,Aump,Prov :String;
begin
  //--Set Frame --
  QuickReport.page.Topmargin   := QuickReport.page.Topmargin+FmStprn80.Xtop;
  QuickReport.page.Leftmargin  := QuickReport.page.Leftmargin+FmStprn80.XLeft;
  Title.Height     := Title.Height+FmStprn80.XHeader;
  PageFooter.Height:= PageFooter.Height+FmStprn80.XFooter;
  //
  HD1:='';
  HD2:='';

  Condpay.Open;
  //QRLabel17.Caption  :=Condpay.FieldByName('Comp_nm').asstring;
  //QRLabel1.Caption   :=Condpay.FieldByName('Comp_adr1').asstring+' '+Condpay.FieldByName('Comp_adr2').asstring;
  QRLabel6.Caption   :='‡≈¢ª√–®”µ—«ºŸÈ‡ ’¬¿“…’ '+Condpay.FieldByName('Taxid').asstring;

  QRLabel17.left      := 1;
  QRLabel17.width     := 720;
  QRLabel17.alignment := tacenter;

  QRLabel8.Caption   := FmStprn80.ComboBox1.Text;
  QRLabel8.left      := 1;
  QRLabel8.width     := 720;
  QRLabel8.alignment := tacenter;

  With QRtinv1 Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.RTNNO,A.RTNLOC,A.RTNDT,A.INVNO,A.TAXREFNO,A.TAXDT,A.JOBNO,A.MEMO1, '+
            'A.APCODE,A.OFFICCOD,A.CREDNO,A.CREDDT,A.TOTPRC,A.VATRT,A.VATAMT,A.NETPRC,B.CUSCOD, '+
            'B.SNAM,B.NAME1,B.NAME2,B.ADDR1,B.ADDR2,B.TUMB,B.AUMP,B.PROV,B.ZIP,'+
            'C.OFFICCOD,C.OFFICNAM '+
            'FROM RT_INVOI A,ARMAST B,OFFICER C '+
            'WHERE (A.RTNNO =:XRecvno) And (A.APCODE = B.CUSCOD) '+
            'AND (A.OFFICCOD = C.OFFICCOD)');
    Params[0].AsString := FmStprn80.Label6.caption;
    Open;
  End;

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := QRtinv1.FieldByName('RTNLOC').AsString;
    Open;

     If ((Copy(FieldByName('Prov').AsString,1,7)='°√ÿß‡∑æ')or
     (Copy(FieldByName('Prov').AsString,1,3)='°∑¡')) Then
     Begin
      Tumb :='·¢«ß ';
      Aump :='‡¢µ ';
      Prov :='';
     End
     Else
     Begin
      Tumb :='µ.';
      Aump :='Õ.';
      Prov :='®.';
     End;

     QRLabel17.Caption := Query1.fieldByName('LOCATNAM').AsString;
     QRLabel1.Caption := fieldByName('ADDR1').AsString;
     QRLabel15.Caption :='';
     If fieldByName('ADDR2').AsString <> '' Then
        QRLabel1.Caption := QRLabel1.Caption+' ∂.'+fieldByName('ADDR2').AsString+' ';
     If fieldByName('TUMB').AsString <> '' Then
        QRLabel1.Caption := QRLabel1.Caption+Tumb+fieldByName('TUMB').AsString+' ';
     If fieldByName('AUMP').AsString <> '' Then
        QRLabel15.Caption := Aump+fieldByName('AUMP').AsString+' ';

     If fieldByName('PROV').AsString <> '' Then
        QRLabel15.Caption := QRLabel15.Caption+Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
     If fieldByName('TELP').AsString <> '' Then
        QRLabel15.Caption :=QRLabel15.Caption+ '  ‚∑√.'+fieldByName('TELP').AsString;

  End;

  With QRtinv1 Do
  Begin
     If ((Copy(FieldByName('Prov').AsString,1,7)='°√ÿß‡∑æ')or
      (Copy(FieldByName('Prov').AsString,1,3)='°∑¡')) Then
     Begin
      Tumb :='·¢«ß ';
      Aump :='‡¢µ ';
      Prov :='';
     End
     Else
     Begin
      Tumb :='µ.';
      Aump :='Õ.';
      Prov :='®.';
     End;

    QRLabel3.Caption := fieldByName('ADDR1').AsString;
    If fieldByName('ADDR2').AsString <> '' Then
      QRLabel3.Caption := QRLabel3.Caption+' ∂.'+fieldByName('ADDR2').AsString+' ';
    If fieldByName('TUMB').AsString <> '' Then
      QRLabel3.Caption := QRLabel3.Caption+Tumb+fieldByName('TUMB').AsString+' ';
    If fieldByName('AUMP').AsString <> '' Then
      QRLabel3.Caption := QRLabel3.Caption+Aump+fieldByName('AUMP').AsString+' ';
    If fieldByName('PROV').AsString <> '' Then
      QRLabel3.Caption := QRLabel3.Caption+Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
  End;

  With QRttrn Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.RTNNO,A.QTYRTN,A.UPRICE,A.NETPRC,B.Partno,B.Desc1,B.Shelf '+
            'FROM RT_TRAN A,Inventor B '+
            'WHERE (A.RTNNO =:XRecvno) And (A.Partno = B.Partno) and (A.Rtnloc=B.locat) ');
    Params[0].AsString := QRtinv1.FieldByName('RTNNO').AsString;
    Open;
  End;
  //
  With Query1 Do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO=:EDIT1');
    Params[0].asstring := QRtinv1.Fieldbyname('TAXREFNO').asstring;
    Open;
  end;
  Diff := Query1.Fieldbyname('Balance').asfloat -
       QRtinv1.Fieldbyname('NETPRC').asfloat;

  QRLabel42.Caption := FloattostrF((Diff),ffNumber,15,2);
end;

procedure TFmStprn81.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If QRtinv1.Fieldbyname('JOBNO').Asstring<>'' Then
  begin
    QRLabel39.Enabled := True;
    QRDBText17.Enabled := True;
  end
  else
  begin
    QRLabel39.Enabled  := False;
    QRDBText17.Enabled := False;
  end;
  QRLabel23.Caption := QRtinv1.Fieldbyname('SNAM').AsString+QRtinv1.Fieldbyname('NAME1').AsString+'  '+
                       QRtinv1.Fieldbyname('NAME2').AsString+'   [  '+
                       QRtinv1.Fieldbyname('Apcode').AsString+'  ] ';
  QRLabel24.Caption := QRtinv1.FieldByname('OFFICNAM').AsString+'  [  '+
                       QRtinv1.FieldByname('OFFICCOD').AsString+'  ]';
end;

procedure TFmStprn81.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 IF  FmDmic01.XISO <> '' then
 begin
  QRLabel49.Caption :=FmDmic01.XISO;
  FmDmic01.XISO := '';
 end;
 //
 If QRttrn.Eof Then
 begin
   QRLabel40.Enabled := True;
   QRLabel41.Enabled := True;
   QRLabel36.Enabled := True;
   QRLabel11.Enabled := True;
   QRLabel42.Enabled := True;
   QRLabel5.Enabled := True;
   QRLabel7.Enabled := True;
   QRDBText4.Enabled := True;
   QRDBText11.Enabled := True;
   QRDBText14.Enabled := True;
   QRDBText16.Enabled := True;
   QRDBText18.Enabled := True;
   QRLabel2.Enabled := True;
 end
 else
 begin
   QRLabel40.Enabled := False;
   QRLabel41.Enabled := False;
   QRLabel36.Enabled := False;
   QRLabel11.Enabled := False;
   QRLabel42.Enabled := False;
   QRLabel5.Enabled := False;
   QRLabel7.Enabled := False;
   QRDBText4.Enabled := False;
   QRDBText11.Enabled := False;
   QRDBText14.Enabled := False;
   QRDBText16.Enabled := False;
   QRDBText18.Enabled := False;
   QRLabel2.Enabled := False;
 end;
end;

procedure TFmStprn81.QuickReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  PP:=0;
end;

procedure TFmStprn81.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PP:=PP+1;
  If pp>14 Then
  begin
    PP:=0;
    QuickReport.newpage;
  end ;
end;

end.
