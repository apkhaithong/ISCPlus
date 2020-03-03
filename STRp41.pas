unit STRp41;

// QuickReport simple list
// - Connect a datasource to the QuickReport component
// - Put QRDBText components on the Detail band

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Qrctrls, Db, QuickRpt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmSTRp41 = class(TForm)
    Query90: TFDQuery;
    Query92: TFDQuery;
    Query92QTY1: TFloatField;
    Query92DESC1: TStringField;
    Query93: TFDQuery;
    Query93LOC: TStringField;
    Query93PARTNO: TStringField;
    Query93QTYIN: TFloatField;
    Query93QTYOUT: TFloatField;
    Query93PKNO: TStringField;
    Query93TAXNO: TStringField;
    Query93TAXDATE: TDateField;
    Query93NETCOST: TFloatField;
    Query93AVGCOST: TFloatField;
    Query93SUM: TFloatField;
    Query93OFFICCOD: TStringField;
    Query93CUSCOD: TStringField;
    Query93JOBNO: TStringField;
    Query93FLAG: TStringField;
    Query93CFLAG: TStringField;
    Query93STKDATE: TDateField;
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
    SoQuery90: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRepBeforePrint(Sender: TQuickRep; var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FmSTRp41: TFmSTRp41;
  sum1,TotCost,Sumcos : Double;
implementation
uses STRp40, Dmic01;

{$R *.DFM}

procedure TFmSTRp41.FormCreate(Sender: TObject);
Var ed1,Ed3,Ed4,Onlo,Opt: String;
    xmon,L1 :word;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel11.caption  := 'เรียงตามสาขาและรหัสสินค้า';
   QRLabel8.caption   := ' จากวันที่ '+FmSTRp40.Edit_DateFrom.text+' ถึงวันที่ '+FmSTRp40.Edit_DateTo.text;
   If FmSTRp40.Edit3.Text='' Then FmSTRp40.Edit3.Text:=' ';
   L1 := Length(FmSTRp40.Edit3.Text);

   If FmSTRp40.ChkStatus.Checked Then
      Opt:=' And Partno In(Select Partno from Stkcard where Loc Like :Locat and Stkdate>=:stk1 and Stkdate<=:stk2) '
   Else
      Opt:='';

   With Query90 Do
   begin
      Close;
      Sql.Clear;
      If FmSTRp40.Edit2.Text<>'' Then
      Begin
        Sql.Add('SELECT LOCat,PARTNO From Inventor '+
              'where Locat like :Xloc and Group1 like :XGroup and type like :typecod'+Opt+' Order by locat,partno');
        Params[0].AsString := FmSTRp40.Edit_Locat.Text+'%';
        Params[1].AsString := FmSTRp40.Edit2.Text+'%';
        Params[2].AsString := FmSTRp40.Edit5.Text+'%';
        If FmSTRp40.ChkStatus.Checked Then
        begin
          Params[3].AsString := FmSTRp40.Edit_Locat.Text+'%';
          Params[4].Asdate   := FmSTRp40.Edit_DateFrom.Date;
          Params[5].asdate   := FmSTRp40.Edit_DateTo.Date;
        end;

      End Else
      Begin
        Sql.Add('SELECT LOCat,PARTNO From Inventor '+
              'where locat like :Xloc and '+
              'Partno Between :XPart1 '+
              'and :XPart2 and type like :typecod'+Opt+' order by locat,partno');

        If FmSTRp40.Edit_Locat.Text<>'' Then
         Ed1 := FmSTRp40.Edit_Locat.Text+'%'
        else Ed1 := '%';
        If FmSTRp40.Edit3.Text = '' Then
         Ed3 := ' '
        else Ed3 := FmSTRp40.Edit3.Text;
        If FmSTRp40.Edit4.Text = '' Then
         Ed4 := 'โโโโโโโโ'
        else Ed4 := FmSTRp40.Edit4.Text;

        Params[0].AsString   := Ed1;
        Params[1].asstring   := Ed3;
        Params[2].asstring   := Ed4;
        Params[3].AsString := FmSTRp40.Edit5.Text+'%';

        If FmSTRp40.ChkStatus.Checked Then
        begin
          Params[4].AsString := Ed1;
          Params[5].Asdate   := FmSTRp40.Edit_DateFrom.Date;
          Params[6].asdate   := FmSTRp40.Edit_DateTo.Date;
        end;
      End;
      Open;
   end;

   Query93.MasterSource := SoQuery90;
   With Query93 Do
   begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT LOC,PARTNO,STKDATE,QTYIN,ABS(QTYOUT) AS QTYOUT,PKNO,TAXNO, '+
              'TAXDATE,NETCOST,AVGCOST,OFFICCOD,CUSCOD,JOBNO,FLAG,CFLAG,'+
              '(QTYIN+ABS(QTYOUT))*AVGCOST AS SUM From STKCARD '+
              'where (Partno =:Partno) and (Loc =:Locat) and '+
              '(Stkdate>=:edit1 and Stkdate<=:edit2) ORDER BY STKDATE,TIME1 ');

      Params[2].Asdate   := FmSTRp40.Edit_DateFrom.Date;
      Params[3].asdate   := FmSTRp40.Edit_DateTo.Date;
      Open;
   end;

   xmon :=FmSTRp40.month1-1;
   if Xmon=0 Then   Xmon :=13;
   Onlo := 'Allo_'+inttostr(XMon);

   Query92.MasterSource := SoQuery90;
   With Query92 Do
   begin
     Close;
     SQL.Clear;
     SQL.ADD('SELECT ia.'+onlo+' as qty1,im.desc1 '+
             'From Invanls ia,Inventor im '+
             'Where (ia.Locat =:Locat) and (ia.PartNo =:Partno) '+
             'and (ia.Year1 =:XYear) and (ia.partno = im.partno) '+
             'and (ia.Locat = im.Locat) ');
     Params[2].Asstring := Inttostr(FmSTRp40.Year1);
     Open;
   End;
end;

procedure TFmSTRp41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;


procedure TFmSTRp41.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   sum1 := Query92.fieldbyname('Qty1').Asfloat;
end;

procedure TFmSTRp41.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabel21.Caption := Floattostr(sum1);
   Totcost := Totcost+Sumcos;
end;

procedure TFmSTRp41.QRepBeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
  Totcost :=0;
end;

procedure TFmSTRp41.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  sum1 := sum1+Query93.FieldByName('Qtyin').AsFloat-
          Abs(Query93.FieldByName('QtyOut').AsFloat);
  If Sum1>0 Then
    Sumcos := sum1*Query93.FieldByName('AVGCOST').AsFloat
  Else
    Sumcos :=0;

  QRLabel14.Caption := Floattostr(sum1);

  If Query93.FieldByName('Qtyin').AsFloat=0 Then
  Begin
    QRDBText2.Enabled := False;
    QRDBText15.Enabled := False;
  End  Else
  Begin
    QRDBText2.Enabled := True;
    QRDBText15.Enabled := True;
  end;
  If Query93.FieldByName('Qtyout').AsFloat=0 Then
     QRDBText3.Enabled := False
  Else
     QRDBText3.Enabled := True;

end;


end.
