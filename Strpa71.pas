unit Strpa71;

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
  TFmRpa71 = class(TForm)
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
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
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
    Query60: TFDQuery;
    QRBand5: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText13: TQRDBText;
    QRExpr1: TQRExpr;
    PageFooterBand1: TQRBand;
    QRLabel20: TQRLabel;
    Query2: TFDQuery;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    DataSource1: TDataSource;
    QRLabel23: TQRLabel;
    Query1: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRpa71: TFmRpa71;

implementation
uses STRpa70, Dmic01;

{$R *.DFM}

procedure TFmRpa71.FormCreate(Sender: TObject);
Var ed1,Ed2,Ed3,Ed4,XFlag,L1,L2,Xsort: String;
begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel11.caption  := FmRpa70.SortText;
   QRLabel8.caption   := 'จากวันที่  '+FmRpa70.Edit_DateFrom.text+'  ถึงวันที่  '+FmRpa70.Edit_DateTo.text+
                         '  รหัสลูกค้า  '+FmRpa70.Edit3.text;

   if FmRpa70.RadioGp1.ItemIndex=0 then
   begin
     Xflag := ' (A.Flag = ''1'' OR A.Flag =''2'')  ';
     QRLabel16.caption :='ใบเบิกขายหน้าร้าน';
//     QRLabel20.caption :='ST-FM-033/1';
   end;
   if FmRpa70.RadioGp1.ItemIndex=1 then
   begin
     Xflag := ' A.Flag=''3'' and A.Svcolor<>''Y'' ';
     QRLabel16.caption :='ใบเบิกเข้าศูนย์บริการ';
   end;
   if FmRpa70.RadioGp1.ItemIndex=2 then
   begin
     Xflag := ' A.Flag=''3'' and A.Svcolor=''Y'' ';
     QRLabel16.caption :='ใบเบิกเข้าศูนย์สี';
   end;
   if FmRpa70.RadioGp1.ItemIndex=3 then
   begin
     Xflag := ' (A.Flag = ''1'' OR A.Flag =''2'' OR A.Flag =''3'')' ;
     QRLabel16.caption :='ใบเบิกทั้งหมด ';
   end;
   //
   Case FmRpa70.RadioGp2.ItemIndex of
     0: Xsort :=' Order By B.Pklocat,B.PkNo';
     1: Xsort :=' Order By B.Pklocat,B.Partno';
     2: Xsort :=' Order By B.Pklocat,A.CUSCOD';
   end;
    Query2.Close;
    With Query60 Do
    begin
      Close;
      SQL.Clear;
      Sql.Add('SELECT A.Pkno,A.PkDate,A.Pklocat,A.Cuscod,A.Officcod, '+
            'B.Pkno,B.Pklocat,B.Partno,B.Uprice,B.Qtyord,B.qtyout,(B.Qtyord-B.qtyout)*B.Uprice as BkAmt,'+
            'B.Qtyord-B.qtyout AS QtyBod,B.Flag,B.BackFlg,B.Jobno,C.Desc1 '+
            'FROM Pk_invoi A,Pk_trans B,Inventor C '+
            'WHERE (A.Pklocat Like :Xrecvloc) and (A.Pkno = B.Pkno) '+
            'and (A.PkDate >=:XDate) and (A.PkDate <=:XDate1) and A.Cuscod Like :Xcuscod '+
            'And (B.Partno = C.Partno) and (B.Pklocat = C.Locat) and (B.BackFlg = ''Y'') '+XSort);

      Params[0].AsString  := FmRpa70.Edit_Locat.text+'%';
      Params[1].AsDate    := FmRpa70.Edit_DateFrom.Date;
      Params[2].AsDate    := FmRpa70.Edit_DateTo.Date;
      Params[3].AsString  := FmRpa70.Edit3.text+'%';
      If Not Query60.Prepared Then Query60.Prepare;
      Open;
    end;
    Query2.Open;

    if Query60.bof and Query60.Eof then
       SFMain.RaiseException('ไม่มีข้อมูล');

  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := FmRpa70.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel23.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel23.Caption := 'สาขา : ['+FmRpa70.Edit_Locat.text+'] '+Fieldbyname('Locatnm').Asstring;
  end;

end;

procedure TFmRpa71.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;


procedure TFmRpa71.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel20.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
end;

procedure TFmRpa71.DetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel19.Caption :=Query2.Fieldbyname('Name1').Asstring+' '+Query2.Fieldbyname('Name2').Asstring;
end;

end.
