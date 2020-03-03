unit Stprn51;

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
  TFmStprn51 = class(TForm)
    QPkinv: TFDQuery;
    QPktrn: TFDQuery;
    Condpay: TFDQuery;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn51: TFmStprn51;
  SumQty,Sum1,Sum : double;

implementation
uses Stin11,Stin02,Stprn50, Dmic01;
{$R *.DFM}

procedure TFmStprn51.FormCreate(Sender: TObject);
Var Xorder:String;
    Tumb,Aump,Prov :String;
begin
  //--Set Frame --
  QuickReport.page.Topmargin   := QuickReport.page.Topmargin+FmStprn50.Xtop;
  QuickReport.page.Leftmargin  := QuickReport.page.Leftmargin+FmStprn50.XLeft;
  Title.Height     := Title.Height+FmStprn50.XHeader;
  PageFooter.Height:= PageFooter.Height+FmStprn50.XFooter;
  //

   QRLabel7.left      := 1;
   QRLabel7.width     := 765;
   QRLabel7.alignment := tacenter;

  Case FmStprn50.RadioGroup1.itemindex of
   0:Xorder := ' order by A.Time1 ';
   1:Xorder := ' order by B.SHELF ';
   2:Xorder := ' order by A.PARTNO ';
  end;

  With QPkinv Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.PKNO,A.PKLOCAT,A.PKDATE,A.CUSCOD,A.OFFICCOD,A.BALANCE,A.SVCOLOR,A.DISBATH, '+
            'A.TOTPRC,A.DISCAMT,A.NETAMT,A.VATAMT,A.NETTOTAL,A.VATRT,A.TRANTO,'+
            'A.JOBNO,A.SVORD,A.RTNPK,A.MEMO1,B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,C.OFFICCOD,C.OFFICNAM, '+
            'B.ADDR1,B.ADDR2,B.TUMB,B.AUMP,B.PROV,B.ZIP,B.TELP  '+
            'FROM PK_INVOI A,ARMAST B,OFFICER C '+
            'WHERE (A.PKNO =:XRecvno) And (A.CUSCOD = B.CUSCOD) '+
            'AND (A.OFFICCOD = C.OFFICCOD)');
    Params[0].AsString := FmStprn50.Label6.caption;
    Open;
    //
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

     QRLabel40.Caption := fieldByName('ADDR1').AsString;
     QRLabel41.Caption :='';
     If fieldByName('ADDR2').AsString <> '' Then
        QRLabel40.Caption := QRLabel40.Caption+' ถ.'+fieldByName('ADDR2').AsString+' ';
     If fieldByName('TUMB').AsString <> '' Then
        QRLabel40.Caption := QRLabel40.Caption+Tumb+fieldByName('TUMB').AsString+' ';
     If fieldByName('AUMP').AsString <> '' Then
        QRLabel40.Caption := QRLabel40.Caption+Aump+fieldByName('AUMP').AsString;

     If fieldByName('PROV').AsString <> '' Then
        QRLabel41.Caption := Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
     If fieldByName('TELP').AsString <> '' Then
        QRLabel41.Caption :=QRLabel41.Caption+ '  โทร.'+fieldByName('TELP').AsString;
  End;
  // ---สถานที่จัดส่ง---
  With Query1 Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.PKNO,A.CUSCOD,A.TRANTO,B.SNAM,B.NAME1,B.NAME2,'+
            'B.ADDR1,B.ADDR2,B.TUMB,B.AUMP,B.PROV,B.ZIP,B.TELP  '+
            'FROM PK_INVOI A,ARMAST B '+
            'WHERE (A.PKNO =:XRecvno) And (A.TRANTO = B.CUSCOD) ');
    Params[0].AsString := FmStprn50.Label6.caption;
    Open;
    //
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
     QRLabel43.caption := FieldByname('SNAM').AsString+
                          FieldByname('NAME1').AsString+' '+
                          FieldByname('NAME2').AsString+' ['+
                          FieldByname('TRANTO').AsString+']';

     QRLabel45.Caption := fieldByName('ADDR1').AsString;
     QRLabel46.Caption :='';
     QRLabel50.Caption :='';
     If fieldByName('ADDR2').AsString <> '' Then
        QRLabel45.Caption := QRLabel45.Caption+' ถ.'+fieldByName('ADDR2').AsString+' ';
     If fieldByName('TUMB').AsString <> '' Then
        QRLabel45.Caption := QRLabel45.Caption+Tumb+fieldByName('TUMB').AsString+' ';
     If fieldByName('AUMP').AsString <> '' Then
        QRLabel46.Caption := Aump+fieldByName('AUMP').AsString+' ';

     If fieldByName('PROV').AsString <> '' Then
        QRLabel50.Caption := Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
     If fieldByName('TELP').AsString <> '' Then
        QRLabel50.Caption :=QRLabel50.Caption+ ' โทร.'+fieldByName('TELP').AsString;

  End;

  QRLabel37.Caption :='ภาษีมูลค่าเพิ่ม '+Floattostr(QPkinv.Fieldbyname('Vatrt').AsFloat)+' % ';
  //
  If QPkinv.Fieldbyname('Disbath').Asstring='Y' Then
  Begin
    QRLabel29.Caption :='ส่วนลด';
    QRDBText10.DataField := 'REDU';
  End
  Else
  Begin
    QRLabel29.Caption :='%ส่วนลด';
    QRDBText10.DataField := 'REDU1';
  End;
  //
  With QPktrn Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.PKNO,A.PARTNO,A.QTYORD,A.QTYOUT,(A.QTYOUT*A.UPRICE)-A.TOTPRC AS REDU,A.FREE,'+
            'A.REDU1,A.REDU2,A.REDU3, '+
            'A.UPRICE,A.NETPRC,A.TOTPRC,B.PARTNO,B.DESC1,B.SHELF,B.TYPE,A.REFPO '+
            'FROM PK_TRANS A,INVENTOR B '+
            'WHERE (A.PKNO =:XRecvno) And (A.Partno = B.Partno) and (A.Pklocat=B.locat) '+Xorder);
    Params[0].AsString := QPkinv.FieldByName('PKNO').AsString;
    Open;
  End;
  //
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := QPkinv.FieldByName('PKLOCAT').AsString;
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

     QRLabel22.Caption := Query1.fieldByName('LOCATNAM').AsString+' ['+Query1.fieldByName('LOCATCOD').AsString+']';
     QRLabel28.Caption := fieldByName('ADDR1').AsString;
     QRLabel17.Caption := '';
     If fieldByName('ADDR2').AsString <> '' Then
        QRLabel28.Caption := QRLabel28.Caption+' ถ.'+fieldByName('ADDR2').AsString+' ';
     If fieldByName('TUMB').AsString <> '' Then
        QRLabel28.Caption := QRLabel28.Caption+Tumb+fieldByName('TUMB').AsString+' ';
     If fieldByName('AUMP').AsString <> '' Then
        QRLabel28.Caption := QRLabel28.Caption+Aump+fieldByName('AUMP').AsString;

     If fieldByName('PROV').AsString <> '' Then
        QRLabel17.Caption := Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
     If fieldByName('TELP').AsString <> '' Then
        QRLabel17.Caption :=QRLabel17.Caption+ '  โทร.'+fieldByName('TELP').AsString;
  End;
  QRLabel8.Caption  := '';
  QRLabel30.Caption := '';
  QRLabel31.Caption := '';
  If Qpkinv.Fieldbyname('Jobno').asstring<>'' Then
  begin
    With Query1 Do
    Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT A.REGNO FROM SVMAST A,JOBORDER B WHERE A.STRNO=B.STRNO AND B.JOBNO=:EDIT1 ');
      Params[0].Asstring := Qpkinv.Fieldbyname('Jobno').asstring;
      Open;
      QRLabel31.caption := Query1.Fieldbyname('REGNO').Asstring;
    End;

    QRLabel30.Caption :=  Qpkinv.Fieldbyname('Jobno').asstring;
    QRLabel7.Caption  := 'ใบเบิกอะไหล่';
    QRLabel21.Caption := 'ผู้จัดทำใบเบิก';
    If Qpkinv.Fieldbyname('SVCOLOR').asstring='Y' Then
      QRLabel8.Caption  := 'เบิกขายศูนย์สี'
    Else
      QRLabel8.Caption  := 'เบิกขายศูนย์บริการ';
  end
  Else
  begin
    QRLabel8.Caption  := 'เบิกขายหน้าร้าน';
    QRLabel7.Caption  := 'ใบขายอะไหล่';
    QRLabel21.Caption := 'ผู้จัดทำใบขาย';
  end;
end;

procedure TFmStprn51.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabel23.caption := QPkinv.FieldByname('SNAM').AsString+
                        QPkinv.FieldByname('NAME1').AsString+'    '+
                        QPkinv.FieldByname('NAME2').AsString+'     [  '+
                        QPkinv.FieldByname('CUSCOD').AsString+'  ]';
   QRLabel24.caption := QPkinv.FieldByname('OFFICNAM').AsString+'    [  '+
                        QPkinv.FieldByname('OFFICCOD').AsString+'  ]';
end;

procedure TFmStprn51.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel25.Enabled := QPktrn.Fieldbyname('FREE').Asstring='Y';
end;

procedure TFmStprn51.PageFooterBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel49.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

end.
