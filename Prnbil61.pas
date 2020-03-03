unit Prnbil61;

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
  TFPrnbil61 = class(TForm)
    QPkinv: TFDQuery;
    QPktrn: TFDQuery;
    Condpay: TFDQuery;
    Query1: TFDQuery;
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    XINV  : string;
    Procedure OPENSQL;
    { Public declarations }
  end;

var
  FPrnbil61: TFPrnbil61;
  SumQty,Sum1,Sum : double;

implementation

{$R *.DFM}

procedure TFPrnbil61.OPENSQL;
Var Xorder:String;
    HD1,HD2:String;
    Tumb,Aump,Prov :String;

begin

   Condpay.Open;
   QRLabel33.Caption  := Condpay.FieldByName('Taxid').asstring;
   QRLabel17.left     := 1;
   QRLabel17.width    := 690;
   QRLabel17.alignment:= tacenter;
   QRLabel7.left      := 1;
   QRLabel7.width     := 690;
   QRLabel7.alignment := tacenter;



  With QPkinv Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT A.INVNO,A.LOCAT,A.INVDATE,A.CUSCODE,A.BALANCE,A.VATAMT,A.NETTOTAL,A.TAXREFNO,A.DESCRP,A.MEMO1, '+
            'A.JOBNO,B.CUSCOD,B.SNAM,B.NAME1,B.NAME2,B.ADDR1,B.ADDR2,B.TUMB,B.AUMP,B.PROV,B.ZIP,B.TELP,B.FAX '+
            'FROM ARINVOI A,ARMAST B '+
            'WHERE (A.INVNO =:XRecvno) And (A.CUSCODE = B.CUSCOD) ');
             Params[0].AsString := XINV;
    Open;
    //QRLabel35.caption := QPkinv.Fieldbyname('DESCRP').Asstring;
  End;
  //


  With QPktrn Do
  begin
    Close;
    SQL.Clear;
    Sql.Add('SELECT B.PARTNO,B.TYPE,A.NETAMT,B.DESC1,B.SHELF '+
            'FROM AR_ADDINV A,INVENTOR B '+
            'WHERE (A.INVNO =:XRecvno) And (A.Refno = B.Partno) and (A.locat=B.locat) and  status = ''1''  union '+

            'SELECT A.refno AS PARTNO,'''' as  TYPE,A.NETAMT,A.DESC1,'''' as SHELF '+
            'FROM AR_ADDINV A '+
            'WHERE (A.INVNO =:XRecvno)  and  status = ''2''   ');
    Params[0].AsString := XINV;
    Open;
  End;

  //
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := QPkinv.FieldByName('LOCAT').AsString;
    Open;
    {
    QRLabel28.caption  := Query1.Fieldbyname('LOcatnam').Asstring;
    QRLabel17.Caption  := Query1.Fieldbyname('LOcatnam').Asstring;

    QRLabel8.Caption   := Condpay.FieldByName('Comp_adr1').asstring;
    QRLabel24.Caption  := Condpay.FieldByName('Comp_adr2').asstring;
    QRLabel30.Caption  := Condpay.FieldByName('Telp').asstring;
    }
    //
     If ((Copy(FieldByName('Prov').AsString,1,7)='¡ÃØ§à·¾')or
     (Copy(FieldByName('Prov').AsString,1,3)='¡·Á')) Then
     Begin
      Tumb :='á¢Ç§ ';
      Aump :='à¢µ ';
      Prov :='';
     End
     Else
     Begin
      Tumb :='µ.';
      Aump :='Í.';
      Prov :='¨.';
     End;

     QRLabel17.Caption := Query1.fieldByName('LOCATNAM').AsString;
     QRLabel28.Caption := Query1.fieldByName('LOCATNAM').AsString;
     QRLabel8.Caption := fieldByName('ADDR1').AsString;
     QRLabel30.Caption :='';
     If fieldByName('ADDR2').AsString <> '' Then
        QRLabel8.Caption := QRLabel8.Caption+' ¶.'+fieldByName('ADDR2').AsString+' ';
     If fieldByName('TUMB').AsString <> '' Then
        QRLabel8.Caption := QRLabel8.Caption+Tumb+fieldByName('TUMB').AsString+' ';
     If fieldByName('AUMP').AsString <> '' Then
        QRLabel24.Caption := Aump+fieldByName('AUMP').AsString+' ';

     If fieldByName('PROV').AsString <> '' Then
        QRLabel24.Caption := QRLabel24.Caption+Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
     If fieldByName('TELP').AsString <> '' Then
        QRLabel30.Caption :=fieldByName('TELP').AsString;
  End;


end;
procedure TFPrnbil61.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabel23.caption := QPkinv.FieldByname('SNAM').AsString+
                        QPkinv.FieldByname('NAME1').AsString+'    '+
                        QPkinv.FieldByname('NAME2').AsString+'     [  '+
                        QPkinv.FieldByname('CUSCOD').AsString+'  ]';
   QRLabel25.caption := QPkinv.FieldByname('ADDR1').AsString+'  '+
                        QPkinv.FieldByname('ADDR2').AsString;
   QRLabel27.caption := QPkinv.FieldByname('TUMB').AsString+'  '+
                        QPkinv.FieldByname('AUMP').AsString+'  '+
                        QPkinv.FieldByname('PROV').AsString+'  '+
                        QPkinv.FieldByname('ZIP').AsString;
   QRLabel34.caption := QPkinv.FieldByname('TELP').AsString+'  á¿ç¡«ì'+
                        QPkinv.FieldByname('FAX').AsString;
end;

end.
