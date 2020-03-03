unit Strpd11;

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
  TFmstrpd11 = class(TForm)
    Detail1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRep: TQuickRep;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand1: TQRBand;
    QFiFo: TFDQuery;
    Condpay: TFDQuery;
    CondpayCURYEAR: TStringField;
    CondpayCURMONTH: TStringField;
    CondpayLICEN_NO: TStringField;
    CondpayCOMP_NM: TStringField;
    CondpayCOMP_ADR1: TStringField;
    CondpayCOMP_ADR2: TStringField;
    CondpayTELP: TStringField;
    CondpayTAXID: TStringField;
    CondpayVATRT: TFloatField;
    CondpayTAXNAME: TStringField;
    CondpayTAXADDR: TStringField;
    CondpaySVRATE: TFloatField;
    CondpayNEXTKILO: TFloatField;
    CondpayNEXTDAY: TFloatField;
    CondpaySVFLAG: TStringField;
    CondpayCAMTYP: TStringField;
    CondpayCAMPART: TFloatField;
    CondpayCAMSERV: TFloatField;
    CondpayCAMDAT1: TDateField;
    CondpayCAMDAT2: TDateField;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    Query1: TFDQuery;
    QRLabel11: TQRLabel;
    QRGroup1: TQRGroup;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRepBeforePrint(Sender: TQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmstrpd11: TFmstrpd11;
  XDoc :String;
implementation
uses Strpd10;

{$R *.DFM}

procedure TFmstrpd11.FormCreate(Sender: TObject);
Var ed1,Ed3,Ed4,Onlo: String;
    xmon,L1 :word;
begin
   //Showmessage('Step  FormCreate');//
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 915;
   QRLabel4.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 915;
   QRLabel5.alignment := tacenter;

   QRLabel8.caption   := ' ประจำเดือน '+Fmstrpd10.SpinEdit1.Text +' ปี '+Fmstrpd10.SpinEdit2.Text;
   QRLabel8.left := 1;
   QRLabel8.width := 915;
   QRLabel8.alignment := tacenter;

   With QFifo Do
   begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM FIFOCARD where  partno =:0  ORDER BY LOCAT,PARTNO,STKDATE,ITEM ');
      Params[0].Asstring := Fmstrpd10.Edit3.Text;
      Open;
      If Bof and Eof Then
      //SFMain.RaiseException('ไม่มีข้อมูลตามเงื่อนไขนี้');
   end;
  // Showmessage('Docno'+QFifo.Fieldbyname('Docno').Asstring);//
   QFifo.First;
   With Query1 Do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('Select * FROM LOCATMST WHERE LOCATCOD =:no ');
     Params[0].AsString := QFifo.FieldByName('LOCAT').AsString;
     Open;
     QRLabel15.Caption := 'ชื่อสาขา :'+fieldByName('LOCATNAM').AsString+' [ '+
                        fieldByName('LOCATCOD').AsString+' ] ';
     //
     Close;
     Sql.Clear;
     Sql.Add('Select * FROM INVENTOR WHERE LOCAT=:V1 AND PARTNO=:V2 ');
     Params[0].AsString := QFifo.FieldByName('LOCAT').AsString;
     Params[1].AsString := QFifo.FieldByName('PARTNO').AsString;
     Open;
     QRLabel27.Caption := 'ชื่อสินค้า : ['+fieldByName('PARTNO').AsString+'] '+fieldByName('DESC1').AsString+'   หน่วยนับเป็น : '+
                          fieldByName('Unit').AsString;

   End;

end;

procedure TFmstrpd11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //  Showmessage('Step  FormClose');//
   Action := Cafree;
end;


procedure TFmstrpd11.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Showmessage('Step  QRBand1BeforePrint');//
  //Showmessage(XDoc);//
  If XDoc= QFifo.Fieldbyname('Docno').Asstring Then
  Begin
   // Showmessage('1');//
    QRLabel11.Caption := 'ยอดยกมา';
    QRLabel11.Enabled := False;

    QRDBText1.Enabled := False;
    QRDBText7.Enabled := False;

    QRDBText2.Enabled := False;
    QRDBText3.Enabled := False;
    QRDBText4.Enabled := False;

    If QFifo.Fieldbyname('Qty2').Asfloat=0  Then
    Begin
     // Showmessage('2');//
      QRDBText5.Enabled := False;
      QRDBText6.Enabled := False;
      QRDBText8.Enabled := False;
    End;
  End
  Else
  Begin
    If QFifo.Fieldbyname('Docno').Asstring ='B/F' Then
    Begin
    // Showmessage('3');//
     QRLabel11.Caption := 'ยอดยกมา';
     QRLabel11.Enabled := True;
     QRDBText2.Enabled := False;
     QRDBText3.Enabled := False;
     QRDBText4.Enabled := False;
     QRDBText5.Enabled := False;
     QRDBText6.Enabled := False;
     QRDBText8.Enabled := False;
    end
    Else
    Begin
     // Showmessage('4');//
      QRLabel11.Enabled := False;
      QRDBText1.Enabled := True;
      QRDBText7.Enabled := True;


      If QFifo.Fieldbyname('Qty1').Asfloat>0 Then
      Begin
       // Showmessage('5');//
        QRDBText2.Enabled := True;
        QRDBText3.Enabled := True;
        QRDBText4.Enabled := True;
        QRDBText5.Enabled := False;
        QRDBText6.Enabled := False;
        QRDBText8.Enabled := False;
      End
      Else
      If QFifo.Fieldbyname('Qty2').Asfloat>0 Then
      Begin
       // Showmessage('6');//
        QRDBText2.Enabled := False;
        QRDBText3.Enabled := False;
        QRDBText4.Enabled := False;
        QRDBText5.Enabled := True;
        QRDBText6.Enabled := True;
        QRDBText8.Enabled := True;
      End;
    end;
  End;
end;


procedure TFmstrpd11.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  //Showmessage('Step  QRBand1AfterPrint');//
  QRGroup1.Enabled := True;
  XDoc := QFifo.Fieldbyname('Docno').Asstring;

end;

procedure TFmstrpd11.QRepBeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
 // Showmessage('Step  QRepBeforePrint');//
  XDoc := '';
  QRGroup1.Enabled := False;
end;







end.
