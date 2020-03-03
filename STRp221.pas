unit STRp221;

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
  TFmSTRp221 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel11: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
    Query220: TFDQuery;
    Query220LOCAT: TStringField;
    Query220GROUP1: TStringField;
    Query220TOT: TFloatField;
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
    QRBand5: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRExpr1: TQRExpr;
    Qgroup: TFDQuery;
    DataSource1: TDataSource;
    Query220TOT2: TFloatField;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRExpr2: TQRExpr;
    PageFooterBand1: TQRBand;
    QRLabel7: TQRLabel;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRp221: TFmSTRp221;
  Onlo,onhn,xcost: String;
implementation
uses STRp220, Dmic01;

{$R *.DFM}

procedure TFmSTRp221.FormCreate(Sender: TObject);
Var ed1,Ed2,Opt: String;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 650;
   QRLabel4.alignment := tacenter;

   QRLabel8.caption   := 'ณ.เดือน  '+FmSTRp220.Edit8.text+' '+FmSTRp220.Edit3.Text;
   QRLabel8.left      := 1;
   QRLabel8.width     := 650;
   QRLabel8.alignment := tacenter;

   QRLabel5.left   := 1;
   QRLabel5.width  := 650;
   QRLabel5.alignment := tacenter;

   Onhn := 'B.Onhn_'+inttostr(FmSTRp220.XMonth);
   Onlo := 'B.Allo_'+inttostr(FmSTRp220.XMonth);
   Xcost :='B.Cost_'+inttostr(FmSTRp220.XMonth);

   If FmSTRp220.CheckBox2.Checked Then
   Opt:=' and Chargflg<>''Y'' ';

    With Query220 Do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT A.Locat,A.Group1,sum('+XCOST+'*'+Onhn+')  AS  TOT, '+
              'sum('+XCOST+'*'+onlo+')  AS  TOT2 '+
              'From Inventor A,Invanls B '+
              'Where (A.Locat like:XLocat) and (B.Year1 =:XYear) '+
              'AND (A.Locat = B.Locat) and (A.partno=B.partno) '+OPT+
              'Group By A.Locat,A.Group1 ');

      If FmSTRp220.Edit_Locat.Text <> '' Then
         Ed2 := FmSTRp220.Edit_Locat.text +'%'
      else Ed2 := '%';
      If FmSTRp220.edBrand.Text <> '' Then
         Ed1 := FmSTRp220.XTypecod +'%'
      else Ed1 := '%';
      Params[0].AsString    := Ed2;
      Params[1].AsString    := InttoStr(FmSTRp220.XYear);
      Open;
    end;
    if Query220.bof and Query220.Eof then
      SFMain.RaiseException('ไม่มีข้อมูล');
    Qgroup.Close;
    Qgroup.Open;
    //
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := FmSTRp220.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel11.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel11.Caption := 'สาขา : ['+FmSTRp220.Edit_Locat.text+'] '+Fieldbyname('Locatnm').Asstring;
  end;

end;

procedure TFmSTRp221.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;






procedure TFmSTRp221.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel7.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

end.
