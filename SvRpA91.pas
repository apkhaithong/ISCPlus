unit SvRpA91;

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
  TFmSvRpA91 = class(TForm)
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    PageFooter: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel26: TQRLabel;
    QRLabel32: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape6: TQRShape;
    QRLabel24: TQRLabel;
    QRSysData3: TQRSysData;
    QueryA9: TFDQuery;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRDBText5: TQRDBText;
    QRLabel15: TQRLabel;
    Query1: TFDQuery;
    QRLabel16: TQRLabel;
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
  FmSvRpA91: TFmSvRpA91;
  SCK,SCK1 : String;

implementation
uses SvRpA90, USoftFirm;

{$R *.DFM}

procedure TFmSvRpA91.FormCreate(Sender: TObject);
Var  Ed2 :  String;
begin
   if  FmSvRpA90.RadioGroup1.ItemIndex  = 0 then
   begin
   SCK := ' Jobdate ';
   SCK1 := ' เปิด Job ';
   end
   else
   if  FmSvRpA90.RadioGroup1.ItemIndex  = 1 then
   begin
   SCK := ' TAXDATE';
   SCK1 := ' ออกใบกำกับ ';
   end
   else
   begin
   SCK := ' FINSDATE ';
   SCK1 := '  ปิดJob ';
   end;

   Condpay.Open;
   QRLabel4.Caption   := CondpayComp_nm.asstring;

   QRLabel8.caption   := 'ณ เดือน  '+FmSvRpA90.Edit_dateFrom.text+'   '+FmSvRpA90.Edit1.text;

   With Query1 Do
   Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := FmSvRpA90.Edit_Locat.Text;
    Open;
    If Bof and Eof Then
      QRLabel15.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel15.Caption := 'สาขา : ['+FmSvRpA90.Edit_Locat.text+'] '+Fieldbyname('Locatnm').Asstring;
   end;


   WITH QueryA9 Do
   Begin
     Close;
     SQL.Clear;
     SQL.ADD(' SELECT LOCAT,Servcod,COUNT(DISTINCT JOBNO) AS JOB, '+
             ' Sum( case when Sertime  is null  then 0 else Sertime end ) As ST,'+
             ' Sum( case when Frt  is null  then 0 else Frt end ) As FT, '+
             ' Sum( case when Sertime  is null  then 0 else Sertime end ) As Sertime,'+
             ' Sum( case when patamt  is null  then 0 else patamt end ) As Part,'+
             ' Sum( case when servamt is null  then 0 else servamt end ) As Serv,'+
             ' Sum( case when oilamt  is null  then 0 else oilamt end ) As Oil,'+
             ' Sum( case when outamt  is null  then 0 else outamt end ) As Out,'+
             ' Sum( case when colamt  is null  then 0 else colamt end ) As Col,'+
             ' Sum( (case when patamt is null then 0 else patamt end)+ '+
             ' (Case when oilamt is null then 0 else oilamt end) + '+
             ' (case when servamt is null then 0 else servamt end)+ '+
             ' (case when outamt is null then 0 else outamt end) + '+
             ' (case when colamt is null  then 0 else colamt end)) AS TOT '+
             ' From VIEW_ANALYSYS '+
             ' Where Locat like :XLocat And month('+SCK+') =:XMon and Year('+SCK+') =:Xyear '+
             ' Group By LOCAT,Servcod order by TOT DESC');

      Params[0].AsString   := FmSvRpA90.Edit_Locat.Text+'%';
      Params[1].AsInteger  := StrtoInt(FmSvRpA90.Ed8);
      Params[2].AsInteger  := StrToint(FmSvRpA90.Edit1.text);
      OPEN;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่มีข้อมูล');
   End;

end;

procedure TFmSvRpA91.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSvRpA91.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER  WHERE CODE=:COD');
    Params[0].Asstring:= QueryA9.Fieldbyname('Servcod').Asstring;
    Open;
    QRLabel16.Caption:=Fieldbyname('NAME').Asstring;
  end;
end;

end.
