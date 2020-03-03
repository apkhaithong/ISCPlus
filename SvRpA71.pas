unit Svrpa71;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, Db, QuickRpt, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmSvRpA71 = class(TForm)
    QRep: TQuickRep;
    Title: TQRBand;
    QRShape1: TQRShape;
    PageHeader: TQRBand;
    QRShape6: TQRShape;
    Detail: TQRBand;
    QRBand5: TQRBand;
    QRShape5: TQRShape;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    SoQueryA9: TDataSource;
    Query1: TFDQuery;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape3: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel15: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel14: TQRLabel;
    QueryA9: TFDQuery;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    Query2: TFDQuery;
    QRLabel11: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText15: TQRDBText;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpA71: TFmSvRpA71;
  SCK,SCK1 : String;
  Xcount : integer;
  Sum1 :Double;

implementation
uses svrpa70;
{$R *.DFM}

procedure TFmSvRpA71.FormCreate(Sender: TObject);
Var Ed1,Ed2,Ed3 : String;
begin
   if  FmSvRpA70.RadioGroup1.ItemIndex  = 0 then
   begin
   SCK := ' Jobdate ';
   SCK1 := ' เปิด Job ';
   end
   else
   if  FmSvRpA70.RadioGroup1.ItemIndex  = 1 then
   begin
   SCK := ' TAXDATE ';
   SCK1 := ' ออกใบกำกับ ';
   end
   else
   begin
   SCK := ' FINSDATE ';
   SCK1 := '  ปิดJob ';
   end;

   Condpay.Open;
   QRLabel4.Caption   := CondpayComp_nm.asstring;

   QRLabel8.caption   := SCK1+
                         'ระหว่างวันที่  '+FmSvRpA70.Edit_dateFrom.text+
                         '  -  '+FmSvRpA70.Edit_DateTo.text+
                         ' รหัสช่าง  '+FmSvRpA70.Edit1.text;

   With Query2 Do
   Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := FmSvRpA70.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel9.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel9.Caption := 'สาขา : ['+FmSvRpA70.Edit_Locat.text+'] '+Fieldbyname('Locatnam').Asstring;
   end;

   Query1.Close;

   WITH QueryA9 Do
   Begin
     Close;
     SQL.Clear;
     SQL.ADD(' SELECT Servcod,JobDate,COUNT(DISTINCT JOBNO) AS JOB, '+
             ' Sum( case when Sertime  is null  then 0 else Sertime end ) As ST,'+
             ' Sum( case when Frt  is null  then 0 else Frt end ) As FT, '+
             ' Sum( case when Sertime  is null  then 0 else Sertime end ) As Sertime, '+
             ' Sum( case when Ottime  is null  then 0 else Ottime end ) As Ot,'+
             ' Sum( case when patamt  is null  then 0 else patamt end ) As Part,'+
             ' Sum( case when servamt is null  then 0 else servamt end ) As Serv,'+
             ' Sum( case when oilamt  is null  then 0 else oilamt end ) As Oil,'+
             ' Sum( case when outamt  is null  then 0 else outamt end ) As Out,'+
             ' Sum( case when colamt  is null  then 0 else colamt end ) As Col,'+
             ' Sum( (case when patamt is null then 0 else patamt end)+ '+
             ' (Case when oilamt is null then 0 else oilamt end) + '+
             ' (case when servamt is null then 0 else servamt end)+ '+
             ' (case when outamt is null then 0 else outamt end) + '+
             ' (case when colamt is null  then 0 else colamt end)) AS TOT, '+
             'Sum(Cos_Ol+Cos_pt+Cos_co+Cos_Ou) As Cost,'+
             'Sum(patamt+oilamt+servamt+outamt+colamt-(Cos_Ol+Cos_pt+Cos_co+Cos_Ou)) As Profit '+

             ' From VIEW_ANALYSYS '+
             ' Where Locat like :XLocat And ('+SCK+'  between :Xdate1 and :Xdate2) '+
             ' And (Servcod  Like :XServcod ) Group By Servcod,JobDate ');



             Params[0].AsString   := FmSvRpA70.Edit_Locat.Text+'%';
             Params[1].AsDate     := FmSvRpA70.Edit_dateFrom.Date;
             Params[2].AsDate     := FmSvRpA70.Edit_DateTo.Date;
             Params[3].AsString   := FmSvRpA70.Edit1.Text+'%';

             OPEN;
        If Bof and Eof Then
        SFMain.RaiseException('ไม่มีข้อมูล');
   End;
   Query1.Open;
end;

procedure TFmSvRpA71.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFmSvRpA71.QRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   Xcount := 0;
   Sum1 :=0;
end;

procedure TFmSvRpA71.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Xcount := Xcount+1;
  QRLabel19.Caption := IntToStr(Xcount);
end;

procedure TFmSvRpA71.DetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Sum1 := Sum1+QueryA9.fieldbyname('Profit').Asfloat;
end;

procedure TFmSvRpA71.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If  Strtofloat(FmSvRpA70.Edit2.Text)=0 Then
  QRLabel7.Caption:='...........'
  Else
  QRLabel7.Caption:= Floattostrf(Sum1*Strtofloat(FmSvRpA70.Edit2.Text)/100,ffnumber,15,2);
  Sum1:=0;
end;

procedure TFmSvRpA71.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Ef:Double;
begin
  If QueryA9.Fieldbyname('Sertime').Asfloat>0 Then
    Ef :=QueryA9.Fieldbyname('Ft').Asfloat/QueryA9.Fieldbyname('Sertime').Asfloat*100
  Else
    Ef:=0;

  QRLabel25.Caption := FloattostrF(Ef,ffnumber,15,2);
end;

end.
