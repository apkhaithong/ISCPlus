unit Rppo41;

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
  TFmRpPo41 = class(TForm)
    Query810: TFDQuery;
    Condpay: TFDQuery;
    CondpayCOMP_NM: TStringField;
    CondpayCOMP_ADR1: TStringField;
    CondpayCOMP_ADR2: TStringField;
    CondpayTELP: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRpPo41: TFmRpPo41;

implementation
uses Rppo40;
                           
{$R *.DFM}

procedure TFmRpPo41.FormCreate(Sender: TObject);
Var Ed2,Ed3,Ed4,Onhn,Sale,XSort,SortText,Xopt : String;
begin
    Case FRpPo40.SortRadio.ItemIndex Of
     0: SortText := 'เรียงตามรหัสสินค้า';
     1: SortText := 'เรียงตามกลุ่มสินค้า';
     2: SortText := 'เรียงตามผู้จำหน่าย';
     3: SortText := 'เรียงตามยี่ห้อ';
    End;

    Onhn := 'Allo_'+inttostr(FRpPo40.XMonth);
    Sale := 'Sale_'+inttostr(FRpPo40.XMonth);
    
    XOpt:='';
    If FRpPo40.CheckBox1.Checked Then
       XOpt := ' AND a.'+Sale+' >0 ';

    Case FRpPo40.RadioGp2.ItemIndex Of
    0:Xsort:=' ORDER BY PARTNO ';
    1:Xsort:=' ORDER BY GROUP1 ';
    2:Xsort:=' ORDER BY SUPPLIER ';
    3:Xsort:=' ORDER BY TYPE ';
    end;

    With Query810 Do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT t.partno,t.desc1,t.locat,t.max1,t.min1,t.group1,t.onorder,t.supplier,t.Type, '+
              'a.'+onhn+' as onhn1,'+'a.'+Sale+ ' as sale1,'+'(t.max1-a.'+onhn+') as ord '+
              'From Inventor t,Invanls a '+
              'Where (t.Locat like:XLocat) and (t.Year1 =:XYear) '+
              'and (t.PartNo >=:XPart1) and (t.PartNo <=:XPart2) '+
              'and t.group1 like :xgroup and t.supplier like :xsuppl '+Xopt+
              'and (t.Locat = a.Locat) and (t.Year1 = a.Year1) '+
              'and (t.PartNo = a.PartNo) and (a.'+onhn+' < t.min1) '+XSort );

      If FRpPo40.Edit_Locat.Text <> '' Then
         Ed2 := FRpPo40.Edit_Locat.text +'%'
      else Ed2 := '%';
      If FRpPo40.Edit3.Text = '' Then
         Ed3 := ''
      else Ed3 := FRpPo40.Edit3.Text;
      If FRpPo40.Edit4.Text = '' Then
         Ed4 := 'ZZZZZZZZZZZZ'
      else Ed4 := FRpPo40.Edit4.Text;

      Params[0].AsString    := FRpPo40.Edit_Locat.text +'%';
      Params[1].AsString    := InttoStr(FRpPo40.XYear);
      Params[2].AsString    := Ed3;
      Params[3].AsString    := Ed4;
      Params[4].AsString    := FRpPo40.Edit1.text +'%';
      Params[5].AsString    := FRpPo40.Edit5.text +'%';
      Open;
    end;
    if Query810.bof and Query810.Eof then
       MessageDlg('ไม่มีข้อมูล กรุณาตรวจสอบเงื่อนไขใหม่', mtWarning, [mbAbort], 0);

       Condpay.Open;
       QRLabel4.Caption   := CondpayComp_nm.asstring;
       QRLabel11.caption  := SortText;
       QRLabel8.caption   := 'สาขา  '+FRpPo40.Edit_Locat.text+'  รหัสสินค้า  '+
                         FRpPo40.Edit3.text+'  ถึงสินค้า  '+FRpPo40.Edit4.text;

end;

procedure TFmRpPo41.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;



end.
