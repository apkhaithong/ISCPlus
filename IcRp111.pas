unit IcRp111;

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
  TFIcRp111 = class(TForm)
    Query110: TFDQuery;
    Condpay: TFDTable;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
     SortText,Xorder,Onlo,onhn,Cost,Prc : String;
  end;

var
  FIcRp111: TFIcRp111;

implementation
uses IcRp110,  Dmic01, USoftFirm;

{$R *.DFM}

procedure TFIcRp111.FormCreate(Sender: TObject);
Var Ed1,Ed2,Ed3,Ed4,Ed6,Ed7,Opt : String;
    L1,I :INTEGER;
begin
  If sfMain.XSeecost<>'Y' Then
  Begin
    QRDBText11.Enabled := False;
    QRDBText7.Enabled := False;
    QRDBText4.Enabled := False;
    QRExpr1.Enabled := False;
    QRExpr2.Enabled := False;
  end
  Else
  Begin
    QRDBText11.Enabled := True;
    QRDBText7.Enabled := True;
    QRDBText4.Enabled := True;
    QRExpr1.Enabled := True;
    QRExpr2.Enabled := True;
  end;

   Onhn := 'Onhn_'+inttostr(FIcRp110.Month);
   Onlo := 'Allo_'+inttostr(FIcRp110.Month);
   Cost := 'Cost_'+inttostr(FIcRp110.Month);
   Prc  := 'Price'+IntToStr(FIcRp110.SpinEdit1.Value);

{   QRLabel13.Enabled := Not FIcRp110.CheckBox3.Checked;
   QRDBText8.Enabled := QRLabel13.Enabled;
   QRLabel18.Enabled := QRLabel13.Enabled;
   QRDBText7.Enabled := (QRLabel13.Enabled) and (sfMain.XSeecost='Y');
   QRExpr1.Enabled   := (QRLabel13.Enabled) and (sfMain.XSeecost='Y');

   If FIcRp110.CheckBox3.Checked Then
   Begin
     I := QRLabel7.Left;
     QRLabel7.Left := I-50;

     I := QRDBText6.Left;
     QRDBText6.Left :=I-50;

     I := QRLabel1.Left;
     QRLabel1.Left :=I-50;

     I := QRDBText4.Left;
     QRDBText4.Left :=I-50;

     I := QRExpr2.Left;
     QRExpr2.Left :=I-50;
   end;    }


   Case FIcRp110.SortRadio.ItemIndex Of
     0 : Begin
          SortText := 'ตามรหัสสินค้า';
          XOrder   := ' Order By t.partno';
         End;
     1 : Begin
          SortText := 'ตามรหัสกลุ่มสินค้า';
          XOrder   := ' Order By t.group1';
         End;
     2 : Begin
          SortText := 'ตามรหัสรุ่นสินค้า';
          XOrder   := ' Order By t.model';
         End;
     3 : Begin
          SortText := 'ตามที่เก็บ, รหัสสินค้า';
          XOrder   := ' Order By t.Shelf,t.partno';
         End;
     4 : Begin
          SortText := 'ตาม Vendor, รหัสสินค้า';
          XOrder   := ' Order By t.Supplier,t.partno';
         End;

   End;
   L1 := length(FIcRp110.Edit3.Text);

   Case FIcRp110.RadioGp5.ItemIndex Of
     0:Begin
        If FIcRp110.CheckBox1.Checked Then
          Opt:= ' And a.'+Onlo+'<>0 '+' And a.'+Onhn+'<>0 '
        Else
          Opt:='';
       end;
     1: Opt:=' And (a.'+Onlo+'>0 '+' Or a.'+Onhn+'>0) ';
     2: Opt:=' And (a.'+Onlo+'<0 '+' Or a.'+Onhn+'<0) ';
     3: Opt:=' And a.'+Onlo+'=0 ';
     4: Opt:=' and (t.Shelf<>'''') ';
     5: Opt:=' and a.'+Onlo+'<> a.'+Onhn;
     6: Opt:=' and a.'+COST+'<=0 ';
   End;
   If FIcRp110.CheckBox2.Checked Then
   Opt:=Opt+' and Chargflg<>''Y'' ';

   Condpay.Open;
   QRLabel4.Caption   := Condpay.FieldByName('Comp_nm').asstring;
   QRLabel4.left      := 1;
   QRLabel4.width     := 1230;
   QRLabel4.alignment := tacenter;
   QRLabel11.caption  := 'Sort By : '+SortText;
   QRLabel8.caption   := 'ราคาขายระดับ : '+IntToStr(FIcRp110.SpinEdit1.Value)+'  กลุ่มสินค้า  : '+FIcRp110.Edit1.text;

   QRLabel5.caption  := 'รายงานสินค้าคงเหลือ ณ. เดือน  '+FIcRp110.Edit_DateTo.text+' ปี '+Inttostr(FIcRp110.SpinEdit2.Value);//FIcRp110.Edit5.text;
   QRLabel5.left     := 1;
   QRLabel5.width    := 1230;
   QRLabel5.alignment:= tacenter;


   With Query110 Do
   begin
     Close;
     SQL.Clear;
     SQL.ADD('SELECT t.LOCAT,t.Unit,t.Partno,t.DESC1,t.type,t.model,t.group1, '+'a.'+Onhn+' as onhn1,t.supplier,'+
             'a.'+Onlo+' as onlo1,t.'+Prc+' As Prc1,'+'a.'+cost+' as cost, '+
             'a.'+Onhn+'*a.'+cost+' As Tot1,a.'+Onlo+'*a.'+cost+' As Tot2,t.Shelf '+
             'From Inventor t,Invanls a '+
             'Where (t.LOCAT like:XLocat) and (a.Year1 =:XYear) '+
             'and (t.Group1 like:XGroup1) and (t.LOCAT = a.LOCAT)  '+
             'and (t.PartNo>=:XPart1 and t.PartNo<=:XPart2) and (t.Shelf Like :XShelf ) '+
             'and (t.supplier like :Xsupply) and t.Type like :xtype '+
             'and (t.PartNo = a.PartNo) '+Opt+XOrder);


     If FIcRp110.Edit_Locat.Text <> '' Then
        Ed2 := FIcRp110.Edit_Locat.text+'%'
     else Ed2 := '%';

     If FIcRp110.Edit1.Text <> '' Then
        Ed1 := FIcRp110.Edit1.text+'%'
     else Ed1 := '%';


     If FIcRp110.Edit3.Text = '' Then
        Ed3 := ''
     else
        Ed3 := FIcRp110.Edit3.text;
     If FIcRp110.Edit4.Text = '' Then
        Ed4 := 'โ'
     Else
        Ed4 := FIcRp110.Edit4.text;

     Params[0].AsString := Ed2;
     Params[1].AsString := InttoStr(FIcRp110.SpinEdit2.Value);
     Params[2].AsString := Ed1;
     Params[3].AsString := Ed3;
     Params[4].AsString := Ed4;
     Params[5].AsString := FIcRp110.edShelf.Text+'%';
     Params[6].AsString := FIcRp110.edSupplier.Text+'%';
     Params[7].AsString := FIcRp110.Edit7.Text+'%';

     Open;
     if bof and Eof then
      Raise Exception.Create('ไม่มีข้อมูล ตามเงื่อนไขนี้');
   end;
   //
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := FIcRp110.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel12.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel12.Caption := 'สาขา : ['+FIcRp110.Edit_Locat.text+'] '+Fieldbyname('Locatnam').Asstring;
  end;

end;

procedure TFIcRp111.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Condpay.Close;
   Query110.Close;
   Action := Cafree;
end;

procedure TFIcRp111.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If sfMain.XSeecost<>'Y' Then
  Begin
    QRDBText11.Enabled := False;
    QRDBText7.Enabled := False;
    QRDBText4.Enabled := False;
    QRExpr1.Enabled := False;
    QRExpr2.Enabled := False;
  end
  Else
  Begin
    QRDBText11.Enabled := True;
    QRDBText7.Enabled := True;
    QRDBText4.Enabled := True;
    QRExpr1.Enabled := True;
    QRExpr2.Enabled := True;
  end;

end;


procedure TFIcRp111.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel21.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;

end;

end.
