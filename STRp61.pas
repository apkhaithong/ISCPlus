unit STRp61;

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
  TFmSTRp61 = class(TForm)
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
    QRLabel11: TQRLabel;
    QRep: TQuickRep;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
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
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    Query1: TFDQuery;
    DataSource1: TDataSource;
    QRGroup1: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand1: TQRBand;
    QRBand5: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRSysData4: TQRSysData;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRShape1: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    Query2: TFDQuery;
    QRDBText7: TQRDBText;
    QRLabel23: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRExpr9: TQRExpr;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape2: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTRp61: TFmSTRp61;

implementation
uses STRp60, Dmic01, USoftFirm;

{$R *.DFM}

procedure TFmSTRp61.FormCreate(Sender: TObject);
Var ed1,Ed2,Ed3,Ed4,XFlag,L1,L2,Xsort,Xdt2: String;
    Xdt1 :Tdatetime;

begin
   Condpay.Open;
   QRLabel4.Caption := CondpayComp_nm.asstring;
   QRLabel4.left := 1;
   QRLabel4.width := 1095;
   QRLabel4.alignment := tacenter;
   QRLabel11.caption  := FmSTRp60.SortText;
   QRLabel8.caption   := 'จากวันที่  '+FmSTRp60.Edit_DateFrom.text+'  ถึงวันที่  '+FmSTRp60.Edit_DateTo.text+
                         '  รหัสสินค้า  '+FmSTRp60.Edit3.text+'  ถึงสินค้า  '+FmSTRp60.Edit4.text;
   QRLabel8.left := 1;
   QRLabel8.width := 1095;
   QRLabel8.alignment := tacenter;
   QRLabel5.left := 1;
   QRLabel5.width := 1095;
   QRLabel5.alignment := tacenter;
   //
   if FmSTRp60.RadioGp1.ItemIndex=0 then
   begin
     Case FmSTRp60.RadioGroup1.ItemIndex Of
      0 : begin
            Xflag := ' A.Flag = ''1''   ';
            QRLabel16.caption :='ใบเบิกขายหน้าร้าน ประเภทการขายปลีก';
          end;
      1 : begin
            Xflag := ' A.Flag = ''2'' ';
            QRLabel16.caption :='ใบเบิกขายหน้าร้าน ประเภทการขายส่ง';
          end;
      2 : begin
            Xflag := ' (A.Flag = ''1'' OR A.Flag =''2'' ) ';
            QRLabel16.caption :='ใบเบิกขายหน้าร้าน ขายทุกประเภท';
          end;
     End;
   end;
   if FmSTRp60.RadioGp1.ItemIndex=1 then
   begin
     Xflag := ' (A.Flag=''3'' ) and A.FREE<>''Y'' ';
     QRLabel16.caption :='ใบเบิกเข้าศูนย์(หมวดอะไหล่->Free=N)';
   end;
   if FmSTRp60.RadioGp1.ItemIndex=2 then
   begin
     Xflag := ' (A.Flag=''3'' ) and A.FREE=''Y'' ';
     QRLabel16.caption :='ใบเบิกเข้าศูนย์(หมวดวัสดุสิ้นเปลือง->Free=Y)';
   end;

   if FmSTRp60.RadioGp1.ItemIndex=3 then
   begin
     Xflag := ' (A.Flag=''3'' ) ';
     QRLabel16.caption :='ใบเบิกเข้าศูนย์(หมวดอะไหล่+วัสุดสิ้นเปลือง)';
   end;

   if FmSTRp60.RadioGp1.ItemIndex=4 then
   begin
     Xflag := ' (A.Flag = ''1'' OR A.Flag =''2'' OR A.Flag =''3''  ) ' ;
     QRLabel16.caption :='ใบเบิกทั้งหมด ';
   end;

   if FmSTRp60.CheckBox1.Checked Then
   begin
     Xflag :=Xflag+' AND A.NETPRC<A.AVGCOST ';
     QRLabel16.caption :=QRLabel16.caption+' เฉพาะรายการที่ขายต่ำกว่าทุน';
   end;

   if FmSTRp60.CheckBox2.Checked Then
   begin
     Xflag :=Xflag+' AND (A.REFNO IS NULL OR A.REFNO='''' OR A.REFDAT > :6) ';

     QRLabel16.caption :=QRLabel16.caption+' ยังไม่ออกใบกำกับในช่วงเดือนที่ระบุ';
   end;

   Case FmSTRp60.RadioGp2.ItemIndex of
     0:Begin
         Xsort :=' Order By A.PkNo';
         QRGroup1.Expression := 'PKNO';
         QRDBText14.Datafield := 'PKNO';
         QRDBText16.Datafield := 'JOBNO';
         QRLabel3.Caption :='เลขที่ใบเบิก';
         QRLabel17.Caption :='เลขที่ Job';
         QRDBText15.Enabled := True;
         QRDBText17.Enabled := False;
       end;
     1:Begin
         Xsort :=' Order By A.JOBNO,A.PKDATE ';
         QRGroup1.Expression := 'JOBNO';
         QRDBText14.Datafield := 'JOBNO';
         QRDBText16.Datafield := 'PKNO';
         QRLabel3.Caption :='เลขที่ Job';
         QRLabel17.Caption :='เลขที่ใบเบิก';
         QRDBText15.Enabled := False;
         QRDBText17.Enabled := True;

       End;
   end;


   L1 := Inttostr(Length(FmSTRp60.Edit3.Text));
    Query1.Close;
    With Query60 Do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT A.Pkno,A.PkLocat,A.REFNO,A.REFDAT,A.PkDate,A.PartNo,A.Uprice,(A.QtyOut*A.Uprice) As Total,'+
              '(A.QtyOut*A.Uprice-A.Totprc) As Redu1,(A.Avgcost*A.Qtyout) As Cost, '+
              'A.Jobno, A.QtyOut,A.NetPrc,A.Totprc AS Totprc,A.Flag,B.Cuscod,B.Officcod  '+
              'From Pk_Trans A,Pk_Invoi B  '+
              'Where (A.PKNO=B.PKNO) AND (A.PKLocat like :XLocat) '+
              'and (A.PartNo>=:XPart1 and A.PartNo<=:XPart2) '+
              'and (A.Pkdate >=:FrmDate) and (A.PkDate <=:ToDate) and A.Group1 Like :XGroup '+
              'and '+Xflag+ Xsort);

      If FmSTRp60.Edit3.Text = '' Then
         Ed3 := ''
      else Ed3 := FmSTRp60.Edit3.text;
      If FmSTRp60.Edit4.Text = '' Then
         Ed4 := 'โโโโโ'
      else Ed4 := FmSTRp60.Edit4.text;

      Params[0].AsString := FmSTRp60.Edit_Locat.Text+'%';
      Params[1].AsString := Ed3;
      Params[2].AsString := Ed4;
      Params[3].AsDate   := FmSTRp60.Edit_DateFrom.Date;
      Params[4].AsDate   := FmSTRp60.Edit_DateTo.Date;
      Params[5].Asstring := FmSTRp60.Edit1.Text+'%';
      if FmSTRp60.CheckBox2.Checked Then
         Params[6].AsDate   := FmSTRp60.Edit_DateTo.Date;
      Open;
    end;
    if Query60.bof and Query60.Eof then
       SFMain.RaiseException('ไม่พบข้อมูลตามเงื่อนไข..!');
  Query1.Open;;
    //
  With Query2 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT');
    Params[0].Asstring := FmSTRp60.Edit_Locat.text;
    Open;
    If Bof and Eof Then
      QRLabel28.Caption :='สาขา : ทุกสาขา'
    Else
      QRLabel28.Caption := 'สาขา : ['+FmSTRp60.Edit_Locat.text+'] '+Fieldbyname('Locatnm').Asstring;
  end;

end;

procedure TFmSTRp61.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;



procedure TFmSTRp61.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  With Query2 Do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT SNAM,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD=:EDIT');
    Params[0].Asstring := Query60.Fieldbyname('Cuscod').Asstring;
    Open;
    QRLabel21.Caption := Query2.Fieldbyname('Snam').Asstring+
                         Query2.Fieldbyname('Name1').Asstring+
                         Query2.Fieldbyname('Name2').Asstring;
  End;
end;





procedure TFmSTRp61.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

 IF  FmDmic01.XISO <> '' then
 begin
 QRLabel25.Caption :=FmDmic01.XISO;
 FmDmic01.XISO := '';
 end;
 
end;

end.
