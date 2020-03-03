unit STRp71;

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
  TFmSTRp71 = class(TForm)
    Query320: TFDQuery;
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
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRp71: TFmSTRp71;
  XLocat,Xpartno : String;

implementation
uses STRp70, Dmic01;

{$R *.DFM}
procedure TFmSTRp71.FormCreate(Sender: TObject);
Var Ed2,Ed4,Xsort: String;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel11.caption  := FmSTRp70.SortText;
   QRLabel8.caption   := 'จากวันที่  '+
                         FmSTRp70.Edit_DateFrom.text+'  ถึงวันที่  '+FmSTRp70.Edit_DateTo.text;
   Case FmSTRp70.RadioGp2.ItemIndex Of
     0: Xsort:=' Order By A.Adjno ';
     1: Xsort:=' Order By B.PARTNO ';
     2: Xsort:=' Order By A.Adjdate ';
   End;
    With Query320 Do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT A.AdjNo,A.AdjLoc,A.AdjDate,A.Flag, '+
              'B.AdjNo,B.AdjLoc,B.AdjDate,B.Partno,B.QtyOut, '+
              'B.QtyOrd,B.Qtybod,B.Ucost,B.Netcost,B.Totcost,C.PartNo,C.DESC1  '+
              'From Adj_invoi A,Adj_trans B,Inventor C '+
              'Where (A.AdjNo=B.AdjNo) and (B.AdjLoc = C.Locat) and (B.Partno = C.Partno) '+
              'and (A.Adjloc like:XAdjloc) and (A.Adjdate >=:FrmDate) '+
              'and (A.Adjdate <=:ToDate) and (A.Flag =:XFlag) and C.Group1 like :Xgroup and C.TYPE like :TYPECOD'+Xsort);


      Params[0].AsString :=  FmSTRp70.Edit_Locat.Text+'%';
      Params[1].AsDate   :=  FmSTRp70.Edit_DateFrom.Date;
      Params[2].AsDate   :=  FmSTRp70.Edit_DateTo.Date;
      Params[3].AsString :=  '9';
      Params[4].AsString :=  FmSTRp70.Edit7.Text+'%';
      Params[5].AsString :=  FmSTRp70.Edit1.Text+'%';
      Open;
    end;
    if Query320.bof and Query320.Eof then
    Begin
        MessageDlg('ไม่มีข้อมูลตามเงื่อนไข กรุณาตรวจสอบเงื่อนไขใหม่',mtInformation,[mbYes],0);
        MessageBeep(0);
        Abort;
    End;

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT');
    Params[0].Asstring := FmSTRp70.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel16.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel16.Caption := 'สาขา : ['+FmSTRp70.Edit_Locat.text+'] '+Fieldbyname('Locatnam').Asstring;
  end;

end;

procedure TFmSTRp71.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFmSTRp71.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if Query320.FieldByname('QtyOut').AsFloat >= 0 then
      QRLabel6.caption := 'เพิ่ม'
   else
      QRLabel6.caption := 'ลด';
   QRLabel6.alignment := tacenter;
end;





procedure TFmSTRp71.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
IF  FmDmic01.XISO <> '' then
 begin
 QRLabel10.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

end.
