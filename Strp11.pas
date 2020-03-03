unit STRp11;

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
  TFmSTRp11 = class(TForm)
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
    QRLabel24: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel11: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    Query2: TFDQuery;
    Query2TYPE: TStringField;
    Query2MODEL: TStringField;
    Query2PARTNO: TStringField;
    Query2NETPRC: TStringField;
    Query2PRICE1: TFloatField;
    Query2PRICE2: TFloatField;
    Query2PRICE3: TFloatField;
    Query2PRICE4: TFloatField;
    Query2LOCAT: TStringField;
    Query2YEAR1: TStringField;
    Query2GROUP1: TStringField;
    Query2UNIT: TStringField;
    Query2VATCAL: TStringField;
    Query2COST: TFloatField;
    Query2STDBUY: TFloatField;
    Query2LSTBUY: TFloatField;
    Query2LSTBDATE: TDateField;
    Query2MOVDATE: TDateField;
    Query2CREATDAT: TDateField;
    Query2CODE_T: TStringField;
    Query2MINCAL: TFloatField;
    Query2DISCON: TStringField;
    Query2BACKORD: TFloatField;
    Query2ONORDER: TFloatField;
    Query2SHELF: TStringField;
    Query2DESC1: TStringField;
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
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRLabel15: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRp11: TFmSTRp11;

implementation
uses STRp10, USoftFirm;

{$R *.DFM}

procedure TFmSTRp11.FormCreate(Sender: TObject);
Var ed1,Ed3,Ed4,Ed2,Xsort: String;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 1050;
   QRLabel4.alignment := tacenter;

   QRLabel8.caption   := 'กลุ่มสินค้า  '+FmSTRp10.Edit1.text+'  รหัสสินค้า  '+
                         FmSTRp10.Edit3.text+'  ถึงสินค้า  '+FmSTRp10.Edit4.text;
   QRLabel8.left := 1;
   QRLabel8.width := 1050;
   QRLabel8.alignment := tacenter;
   QRLabel5.left  := 1;
   QRLabel5.width := 1050;
   QRLabel5.alignment := tacenter;
   //
   QRDBText4.Enabled := FmSTRp10.CheckBox1.Checked;
   QRDBText5.Enabled := FmSTRp10.CheckBox2.Checked;
   QRDBText6.Enabled := FmSTRp10.CheckBox3.Checked;
   QRDBText7.Enabled := FmSTRp10.CheckBox4.Checked;

   Case FmSTRp10.RadioGp2.ItemIndex Of
    0: Xsort :=' Order By Locat,Group1 ';
    1: Xsort :=' Order By Locat,PartNo ';
    2: Xsort :=' Order By Locat,Shelf ';
   end;
   Case FmSTRp10.RadioGp2.ItemIndex Of
     0: QRLabel11.caption  := 'เรียงตามกลุ่มสินค้า';
     1: QRLabel11.caption  := 'เรียงตามรหัสสินค้า';
     2: QRLabel11.caption  := 'เรียงตามที่เก็บสินค้า';
   End;

    With Query2 Do
    begin
      Close;
      SQL.Clear;

 //     If FmSTRp10.RadioGp2.ItemIndex = 0 Then
 //     begin
         If FmSTRp10.RadioGp3.ItemIndex = 0 Then
            SQL.ADD('SELECT * From Inventor '+
                    'Where (Group1 like:XGroup1) and (PartNo >=:XPart1) '+
                    'and (PartNo <=:XPart2) and (Locat like:Xlocat) and Shelf like:XShelf '+
                    Xsort);
                    //'Order By Locat,Group1');
         If FmSTRp10.RadioGp3.ItemIndex = 1 Then
            SQL.ADD('SELECT * From Inventor '+
                    'Where (Group1 like:XGroup1) and (PartNo >=:XPart1) '+
                    'and (PartNo <=:XPart2) and (Netprc = ''N'') '+
                    'and (Locat like:Xlocat)  and Shelf like:XShelf '+Xsort);
       //             'Order By Locat,Group1');
  //    end;
   {
      If FmSTRp10.RadioGp2.ItemIndex = 1 Then
      Begin
         If FmSTRp10.RadioGp3.ItemIndex = 0 Then
            SQL.ADD('SELECT * From Inventor '+
                    'Where (Group1 like:XGroup1) and (PartNo >=:XPart1) '+
                    'and (PartNo <=:XPart2) and (Locat like:Xlocat)  and Shelf like:XShelf '+
                    ' Order By Locat,PartNo');
         If FmSTRp10.RadioGp3.ItemIndex = 1 Then
            SQL.ADD('SELECT * From Inventor '+
                    'Where (Group1 like:XGroup1) and (PartNo >=:XPart1) '+
                    'and (PartNo <=:XPart2) and (Netprc = ''N'') '+
                    'and (Locat like:Xlocat)  and Shelf like:XShelf '+
                    'Order By Locat,PartNo');
      End;
    }
      If FmSTRp10.Edit1.Text <> '' Then
         Ed1 := FmSTRp10.XGroup1 +'%'
      else Ed1 := '%';
      If FmSTRp10.Edit2.Text = '' Then
         Ed2 := '%'
      else Ed2 := FmSTRp10.Edit2.text+'%';

      If FmSTRp10.Edit3.Text = '' Then
         Ed3 := ''
      else Ed3 := FmSTRp10.Edit3.text;
      If FmSTRp10.Edit4.Text = '' Then
         Ed4 := 'ZZZZZZZZZZZZ'
      Else Ed4 := FmSTRp10.Edit4.text;

      Params[0].AsString  := Ed1;
      Params[1].AsString  := Ed3;
      Params[2].AsString  := Ed4;
      Params[3].AsString  := Ed2;
      Params[4].AsString  := FmSTRp10.Edit5.text+'%';
      Open;
    end;
    if Query2.bof and Query2.Eof then
       SFMain.RaiseException('ไม่มีข้อมูล');
end;

procedure TFmSTRp11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;



end.
