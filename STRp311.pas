unit STRp311;

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
  TFmSTRp311 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel24: TQRLabel;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText4: TQRDBText;
    Query310: TFDQuery;
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
    QRDBText6: TQRDBText;
    QRBand5: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    Query1: TFDQuery;
    QRLabel14: TQRLabel;
    QRSysData5: TQRSysData;
    QRDBText5: TQRDBText;
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
  FmSTRp311: TFmSTRp311;

implementation
uses STRp310, Dmic01;

{$R *.DFM}

procedure TFmSTRp311.FormCreate(Sender: TObject);
Var ed1,Ed3,Ed4: String;
    Onhn,Onlo,Xcost,Xorder : String;
    L1:Integer;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 820;
   QRLabel4.alignment := tacenter;
   QRLabel11.caption  := FmSTRp310.SortText;
   QRLabel8.caption   := 'จากรหัสสินค้า  '+
                         FmSTRp310.Edit3.text+'  ถึงสินค้า  '+FmSTRp310.Edit4.text+
                         ' ณ เดือน '+FmSTRp310.Edit8.text;
   QRLabel8.left := 1;
   QRLabel8.width := 820;
   QRLabel8.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 820;
   QRLabel5.alignment := tacenter;
   Onhn := 'Onhn_'+inttostr(FmSTRp310.XMonth);
   Onlo := 'Allo_'+inttostr(FmSTRp310.XMonth);
   Xcost:= 'Cost_'+inttostr(FmSTRp310.XMonth);
   L1:=Length(FmSTRp310.Edit3.Text);

   Case FmSTRp310.RadioGp2.ItemIndex Of
     0: Xorder := ' Order By A.Locat,A.Partno ';
     1: Xorder := ' Order By A.Partno,A.Locat';
     2: Xorder := ' Order By A.Shelf ';
   End;


    With Query310 Do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT A.Partno,A.locat,B.year1,A.Group1,A.DESC1, '+
              'A.Shelf,A.Shelf2,A.Type,A.MODEL,B.'+Onhn+' As Onhn, '+'B.'+Xcost+'  As Cost, '+
              'B.'+Onlo+' As Onlo From Inventor A,Invanls B  '+
              'Where (A.Locat like:XLocat) and (B.Year1 =:XYear) '+
              'AND (A.Locat = B.Locat) and (A.Partno = B.Partno) '+
              'And A.PartNo>=:XPart1 and A.PartNo<=:XPart2  and A.Shelf like :edit AND A.TYPE like :XBedit1'+
            
              Xorder );

      If FmSTRp310.Edit_Locat.Text <> '' Then
         Ed1 := FmSTRp310.Edit_Locat.text +'%'
      else Ed1 := '%';

      If FmSTRp310.Edit3.Text = '' Then
         Ed3 := ''
      else Ed3 := FmSTRp310.Edit3.text;
      If FmSTRp310.Edit4.Text = '' Then
         Ed4 := 'ฮฮฮฮฮฮฮฮฮฮฮฮฮ'
      Else Ed4 := FmSTRp310.Edit4.text;

      Params[0].AsString    := Ed1;
      Params[1].AsString    := InttoStr(FmSTRp310.Xyear);
      Params[2].AsString    := Ed3;
      Params[3].AsString    := Ed4;
      Params[4].AsString    := FmSTRp310.edShelf.Text+'%';
      Params[5].AsString    := FmSTRp310.Edit5.Text+'%';
      Open;
    end;
    if Query310.bof and Query310.Eof then
    Begin

        MessageDlg('ไม่มีข้อมูลตามเงื่อนไข กรุณาระบุใหม่',mtInformation,[mbYes],0);
        MessageBeep(0);
        Abort;
    end;

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := FmSTRp310.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel14.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel14.Caption := 'สาขา : ['+FmSTRp310.Edit_Locat.text+'] '+Fieldbyname('Locatnm').Asstring;
  end;

end;

procedure TFmSTRp311.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;


procedure TFmSTRp311.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If FmSTRp310.CheckBox1.Checked Then
     QRDBText3.Enabled := True
  Else
     QRDBText3.Enabled := False;
  If FmSTRp310.CheckBox2.Checked Then
     QRDBText6.Enabled := True
  Else
     QRDBText6.Enabled := False;
end;



end.
