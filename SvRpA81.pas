unit SvRpA81;

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
  TFmSvRpA81 = class(TForm)
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
    QRLabel33: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRep: TQuickRep;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBCalc1: TQRDBCalc;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel24: TQRLabel;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    QueryA8: TFDQuery;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText11: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel2: TQRLabel;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpA81: TFmSvRpA81;
  SCK,SCK1 : String;

implementation
uses SvRpA80;
{$R *.DFM}
procedure TFmSvRpA81.FormCreate(Sender: TObject);
Var Ed2 : String;
begin
   if  FmSvRpA80.RadioGroup1.ItemIndex  = 0 then
   begin
   SCK := ' Jobdate ';
   SCK1 := ' เปิด Job ';
   end
   else
   if  FmSvRpA80.RadioGroup1.ItemIndex  = 1 then
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
   QRLabel8.caption   := 'ระหว่างวันที่  '+FmSvRpA80.Edit_dateFrom.text+
                         '  -  '+FmSvRpA80.Edit_DateTo.text;

   With Query1 Do
   Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := FmSvRpA80.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel2.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel2.Caption := 'สาขา : ['+FmSvRpA80.Edit_Locat.text+'] '+Fieldbyname('Locatnm').Asstring;
   end;

   WITH QueryA8 Do
   Begin
     Close;
     SQL.Clear;
     SQL.ADD(' SELECT LOCAT,JobDate,COUNT(DISTINCT JOBNO) AS JOB, '+
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
             ' Where Locat like :XLocat And ('+SCK+' >=:Xdate1 and '+SCK+' <=:Xdate2) '+
             ' Group By LOCAT,JobDate ');

             Params[0].AsString   := FmSvRpA80.Edit_Locat.Text+'%';
             Params[1].AsDate     := FmSvRpA80.Edit_dateFrom.Date;
             Params[2].AsDate     := FmSvRpA80.Edit_DateTo.Date;
             Open;
        If Bof and Eof Then
        SFMain.RaiseException('ไม่มีข้อมูล');

   End;
end;

procedure TFmSvRpA81.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;


end.
