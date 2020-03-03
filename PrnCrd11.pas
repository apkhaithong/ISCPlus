unit Prncrd11;

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
  TFPrncrd11 = class(TForm)
    QuickReport: TQuickRep;
    PageHeader: TQRBand;
    QCrdnot: TFDQuery;
    QRLabel1: TQRLabel;
    QCondpay: TFDQuery;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText13: TQRDBText;
    PageFooter: TQRBand;
    Query1: TFDQuery;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText8: TQRDBText;
    DetailBand1: TQRBand;
    QCn_Serv: TFDQuery;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRSysData2: TQRSysData;
    QRDBText20: TQRDBText;
    QRBand1: TQRBand;
    QRDBRichText1: TQRDBRichText;
    QRLabel19: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel40: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape3: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrncrd11: TFPrncrd11;
  Day1,Month1,Year1 : String;
implementation
uses DMSV,Functn01,prncrd10;
{$R *.DFM}

procedure TFPrncrd11.FormCreate(Sender: TObject);
var Topm,Diff:double;
    HD1,HD2:String;
    Tumb,Aump,Prov :String;
begin
  //--Set Frame --
  QuickReport.page.Topmargin   := QuickReport.page.Topmargin+Fprncrd10.Xtop;
  QuickReport.page.Leftmargin  := QuickReport.page.Leftmargin+Fprncrd10.XLeft;
  PageHeader.Height := PageHeader.Height+Fprncrd10.XHeader;
  PageFooter.Height := PageFooter.Height+Fprncrd10.XFooter;

  HD1:='';
  HD2:='';

  QRLabel1.Caption   := Fprncrd10.ComboBox1.Text;
  QRLabel1.left      := 1;
  QRLabel1.width     := 690;
  QRLabel1.alignment := tacenter;

 QCondpay.open;
 With Qcrdnot Do
 begin
   Close;
   Sql.clear;
   sql.Add('SELECT A.LOCAT,A.TAXNO,A.TAXDATE,A.TAXREFNO,A.JOBNO,A.DESC1,A.CUSCOD,'+
   'A.VATRT,A.VAT,A.AMOUNT,A.REDU,A.BALANCE,A.TOTTAX,A.FLAG,A.MEMO1,B.SNAM,'+
   'B.NAME1,B.NAME2,B.ADDR1,B.ADDR2,B.TUMB,B.AUMP,B.PROV,B.ZIP '+
   'FROM TAXSAL A,ARMAST B WHERE A.CUSCOD=B.CUSCOD AND TAXNO=:EDIT ');

   params[0].asString  := Fprncrd10.Label1.caption;
   OPEN;
   If Bof and eof Then
   SFMain.RaiseException('‰¡Ëæ∫‡≈¢∑’Ë„∫≈¥Àπ’È')
 end;

 With QCn_Serv Do
 begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM CN_SERV WHERE TAXNO=:EDIT1');
   Params[0].asstring := Qcrdnot.Fieldbyname('TAXNO').asstring;
   Open;
 end;

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := Qcrdnot.FieldByName('LOCAT').AsString;
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

     QRLabel42.Caption := Query1.fieldByName('LOCATNAM').AsString;
     QRLabel43.Caption := fieldByName('ADDR1').AsString;
     QRLabel44.Caption :='';
     If fieldByName('ADDR2').AsString <> '' Then
        QRLabel43.Caption := QRLabel43.Caption+' ∂.'+fieldByName('ADDR2').AsString+' ';
     If fieldByName('TUMB').AsString <> '' Then
        QRLabel43.Caption := QRLabel43.Caption+Tumb+fieldByName('TUMB').AsString+' ';
     If fieldByName('AUMP').AsString <> '' Then
        QRLabel44.Caption := Aump+fieldByName('AUMP').AsString+' ';

     If fieldByName('PROV').AsString <> '' Then
        QRLabel44.Caption := QRLabel44.Caption+Prov+fieldByName('Prov').AsString+' '+
                          fieldByName('Zip').AsString;
     If fieldByName('TELP').AsString <> '' Then
        QRLabel44.Caption :=QRLabel44.Caption+ '  ‚∑√.'+fieldByName('TELP').AsString;

  End;

 With Qcrdnot Do
 begin
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

    QRLabel5.Caption := Fieldbyname('Snam').asstring+' '+
                        Fieldbyname('Name1').asstring+' '+
                        Fieldbyname('Name2').asstring;

    IF fieldByName('Tumb').AsString<>'' Then HD1:=HD1+Tumb+fieldByName('Tumb').AsString+'  ';
    If fieldByName('Aump').AsString<>'' Then HD2:=HD2+Aump+fieldByName('Aump').AsString+' ';
    If fieldByName('Prov').AsString<>'' Then HD2:=HD2+Prov+fieldByName('Prov').AsString+' '+fieldByName('Zip').AsString;

    QRLabel7.Caption := fieldByName('ADDR1').AsString+' '+HD1;
    QRLabel41.Caption := HD2;

 end;


 ChqDatetoS(Day1,Month1,Year1,2,Qcrdnot.fieldByName('TAXDATE').AsDateTime);
 QRLabel9.Caption  := Day1+' '+Month1+' '+Year1;
 If Qcrdnot.fieldByName('JOBNO').AsString<>'' Then
 begin
  QRLabel17.enabled := True;
  QRDBText13.enabled := True;
 end
 else
 begin
  QRLabel17.enabled := false;
  QRDBText13.enabled := false;
 end;
 //
 With Query1 Do
 begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO=:EDIT1');
   Params[0].asstring := Qcrdnot.Fieldbyname('TAXREFNO').asstring;
   Open;
 end;
 ChqDatetoS(Day1,Month1,Year1,2,Query1.fieldByName('TAXDATE').AsDateTime);
 QRLabel37.Caption  := Day1+' '+Month1+' '+Year1;

 Diff := Query1.Fieldbyname('Balance').asfloat -
         Qcrdnot.Fieldbyname('Balance').asfloat;

 QRLabel32.Caption := FloattostrF((Diff),ffFixed,15,2);
end;

procedure TFPrncrd11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;


end.
