unit Strpc31;

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
  TFmSTRpC31 = class(TForm)
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
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QueryC30: TFDQuery;
    Condpay: TFDQuery;
    QRBand5: TQRBand;
    QRLabel31: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape4: TQRShape;
    QRShape10: TQRShape;
    QRSysData5: TQRSysData;
    QRLabel10: TQRLabel;
    QRSysData3: TQRSysData;
    QRExpr1: TQRExpr;
    QRLabel13: TQRLabel;
    QRDBText6: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
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
  FmSTRpC31: TFmSTRpC31;

implementation
uses STRpC30, Dmic01;

{$R *.DFM}

procedure TFmSTRpC31.FormCreate(Sender: TObject);
Var ed1,Ed2,opt,ord: String;
begin
   ShortDateFormat :='dd/mm/yyyy';
   Condpay.Open;
   QRLabel4.Caption := Condpay.Fieldbyname('Comp_nm').asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 920;
   QRLabel4.alignment := tacenter;
   QRLabel11.caption  := FmSTRpC30.SortText;
   QRLabel8.caption   := 'ช่วงระยะเวลาที่ไม่เคลื่อนไหวมากกว่า  '+
                         FmSTRpC30.Edit8.text+' เดือน';
   QRLabel8.left := 1;
   QRLabel8.width := 920;
   QRLabel8.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 920;
   QRLabel5.alignment := tacenter;

   Case FmSTRpC30.SortRadio.itemindex Of
     0 : ORD:=' ORDER BY A.PARTNO ';
     1 : ORD:=' ORDER BY A.DESC1 ';
     2 : ORD:=' ORDER BY A.MOVDATE DESC ';
   End;

   Case FmSTRpC30.Condition.itemindex Of
     0 : OPT:=' AND B.Allo_12 >0 ';
     1 : OPT:=' AND B.Allo_12 =0 ';
     2 : OPT:=' AND B.Allo_12 <0 ';
     3 : OPT:='';
   End;

   With QueryC30 do
   Begin
     Close;
     Sql.Clear;
     Sql.Add('Select A.Partno,A.Locat,A.Desc1,A.Model,A.Group1, '+
             'B.Cost_12 As Cost,A.Movdate,(B.Allo_12) as Onhn, '+
             '(B.Cost_12*B.Allo_12) as Sum1 From Inventor A,Invanls B '+
             'Where (A.Partno = B.Partno) And (A.Locat = B.Locat) And (A.Locat Like:XLocat) '+Opt+
             'And (A.Movdate <:Xdate1 Or A.Movdate Is Null) AND B.YEAR1=:xyear AND '+
             'A.GROUP1 Like :Xgroup and (A.PartNo Between :XPart1 and :XPart2) '+Ord);

     If FmSTRpc30.Edit4.Text='' Then
        FmSTRpc30.Edit4.Text:='ฮ';

     Params[0].AsString := FmSTRpc30.Edit_Locat.text +'%';
     Params[1].AsDate   := FmSTRpc30.XDate;
     Params[2].Asstring := Inttostr(FmSTRpc30.XYEAR);
     Params[3].Asstring := FmSTRpc30.Edit2.Text+'%';
     Params[4].Asstring := FmSTRpc30.Edit3.Text;
     Params[5].Asstring := FmSTRpc30.Edit4.Text;
     Open;
     if bof and Eof then
      SFMain.RaiseException('ไม่มีข้อมูล');
   End;
   //
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := FmSTRpc30.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel15.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel15.Caption := 'สาขา : ['+FmSTRpc30.Edit_Locat.text+'] '+Fieldbyname('Locatnam').Asstring;
  end;

end;

procedure TFmSTRpC31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;


procedure TFmSTRpC31.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel14.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

end.
