unit CshSal11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, ComCtrls, ToolWin, AdvGlowButton,
  AdvOfficeStatusBar, AdvToolBar, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit, AdvPanel, ActnList,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, System.Actions,
  BusinessSkinForm, frxBarcode, frxFDComponents, frxTableObject, frxChBox,
  frxGradient, frxRich, frxExportXLSX, frxExportImage, frxCross, frxExportCSV,
  frxClass, frxExportBaseDialog, frxExportPDF, frxBDEComponents, frxDCtrl,
  frxChart;

type
  TFCshSal2 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label13: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DBEdit2: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBDtTax: TcxDBDateEdit;
    ActionList1: TActionList;
    atEdit: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    tbCrtTax: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrnTax: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    frxChartObject1: TfrxChartObject;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxCrossObject1: TfrxCrossObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxReportTableObject1: TfrxReportTableObject;
    frxFDComponents1: TfrxFDComponents;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure FormCreate(Sender: TObject);
    procedure tbCrtTaxClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrnTaxClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure atEditExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    Xcontno: string;
  end;

var
  FCshSal2: TFCshSal2;
  XTaxno: string;
  VPayres: Double;

implementation

uses
  Dmsec, DmSal, UCshsal, Dm1, USoftFirm, unfrPreview;

{$R *.DFM}

procedure TFCshSal2.FormCreate(Sender: TObject);
var
  LV, HF, LF, SQLTXT: string;
  DV: TDateTime;
begin
  with Dm_sal do
  begin
    with QCshSUpd do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM ARCRED WHERE CONTNO=:EDIT1');
      Params[0].Asstring := FCshsal.S;
      open;
    end;
    with QCustmast do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST ' +
        'WHERE CUSCOD=:Var0');
      Params[0].Asstring := Dm_sal.QCshSUpd.Fieldbyname('CUSCOD').Asstring;
      open;
    end;
    with QCshTax do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
      params[0].asstring := Dm_sal.QCshSUpd.Fieldbyname('TAXNO').Asstring;
      open;
    end;

    if QDbConfig.fieldbyname('R_TXCASH').AsString = 'Y' then
    begin
      Dbedit2.Properties.ReadOnly := True;
      DBedit2.Style.Color := clSilver;
    end
    else
    begin
      DBedit2.Properties.ReadOnly := False;
      DBedit2.Style.Color := ClWhite;
      DBDtTax.Style.Color := ClWhite;
    end;

    if (Dm_sal.QCshSUpdTAXNO.AsString <> '') then
    begin
      DBDtTax.Style.Color := clSilver;
      DBDtTax.Properties.ReadOnly := True;
      DBEdit2.Style.Color := clSilver;
      DBEdit2.Properties.ReadOnly := True;
      tbCrtTax.Enabled := False;
      PrnTax.Enabled := True;
   { End Else
    Begin
      DBDtTax.Style.Color    := clWhite;  DBDtTax.Properties.ReadOnly := False;
      DBEdit2.Style.Color    := clWhite;  DBEdit2.Properties.ReadOnly := False;
      tbCrtTax.Enabled := True;    PrnTax.Enabled := False;}
    end;
  end;
end;

procedure TFCshSal2.tbCrtTaxClick(Sender: TObject);
var
  D: Double;
  LV, HF, LF, SQLTXT: string;
  DV: TDateTime;
begin
  DBEdit11.SetFocus;
  if Dm_Sal.QCshSUpdTaxdt.AsString = '' then
    SFMain.RaiseException('ยังไม่ระบุวันที่ใบกำกับ..!');
  if ((Dm_Sal.QCshSUpdTaxno.AsString = '') and (Dm_sal.QDbConfig.fieldbyname('R_TXCASH').AsString = 'N')) then
    SFMain.RaiseException('ยังไม่ระบุเลขที่ใบกำกับ..!');

   ///
  with Dm_sal do
  begin
    if not QDbConfig.Active then
      QDbConfig.Open;
    XRunTax := QDbConfig.fieldbyname('R_TXCASH').AsString;

    if not QCshSUpd.Active then
      QCshSUpd.Open;

      //If (QCshSUpdVatPrc.Asfloat-QCshSUpdVatPres.Asfloat) >0 Then
      //Begin
    QCshSUpd.Edit;
    QCshSUpdTaxdt.Asdatetime := QCshSUpdTAXDT.Asdatetime;
    LV := QCshSUpd.FieldByName('Locat').Asstring;
    DV := QCshSUpd.FieldByName('TAXDT').Asdatetime;
    if not Dm01.QCondpay.Active then
      Dm01.QCondpay.Open;
    if Dm01.QCondpay.FieldByName('VERSION').AsString = 'Y' then
    begin
      HF := 'H_TXINV';
      LF := 'L_TXINV';
    end
    else
    begin
      HF := 'H_TXCASH';
      LF := 'L_TXCASH';
    end;
    if XRunTax = 'Y' then
    begin
      QCshSUpdTAXNO.Asstring := Dm01.RunNo01(HF, LF, LV, DV);
    end;
   //     Edit1.Text := QCshSUpdTAXNO.Asstring ;

    with QCshTax do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
      params[0].asstring := '';
      open;
      Insert;
    end;
        //ออกใบกำกับ ภาษีขายสด
    QCshTaxLocat.Asstring := QCshSUpdLocat.Asstring;
    QCshTaxTaxno.Asstring := QCshSUpdTaxno.Asstring;
    QCshTaxTaxdt.AsDateTime := QCshSUpdTaxdt.AsDatetime;
    QCshTaxTsale.Asstring := 'C';
    QCshTaxFINCOD.AsString := '';
    QCshTaxFLAG.AsString := '';
    QCshTaxContno.Asstring := QCshSUpdContno.Asstring;
    QCshTaxCuscod.Asstring := QCshSUpdCuscod.Asstring;
    QCshTaxDescp.Asstring := 'ใบกำกับขายสด/เครดิต';
    QCshTaxSnam.Asstring := QCustmast.FieldByName('Snam').Asstring;
    QCshTaxName1.Asstring := QCustmast.FieldByName('Name1').Asstring;
    QCshTaxName2.Asstring := QCustmast.FieldByName('Name2').Asstring;
    QCshTaxStrno.Asstring := QCshSUpdStrno.Asstring;
    QCshTaxVatrt.AsFloat := QCshSUpdVatrt.Asfloat;
    QCshTaxNetamt.Asfloat := QCshSUpdNprice.Asfloat;
    QCshTaxVatamt.Asfloat := QCshSUpdVatprc.Asfloat;
    QCshTaxTotamt.Asfloat := QCshSUpdTotprc.Asfloat;
        {If QCshSUpdVatpres.Asfloat>0 Then
        Begin
          QCshTaxNetamt.Asfloat  := QCshSUpdNprice.Asfloat-QCshSUpdNpayres.Asfloat;
          QCshTaxVatamt.Asfloat  := QCshSUpdVatprc.Asfloat-QCshSUpdVatpres.Asfloat;
          QCshTaxTotamt.Asfloat  := QCshSUpdTotprc.Asfloat-QCshSUpdTotPres.Asfloat;
        End
        Else
        Begin
          QCshTaxNetamt.Asfloat  := QCshSUpdNprice.Asfloat;
          QCshTaxVatamt.Asfloat  := QCshSUpdVatprc.Asfloat;
          QCshTaxTotamt.Asfloat  := QCshSUpdTotprc.Asfloat;
        End;}

    QCshTaxTaxtyp.Asstring := 'S';
    QCshTaxTaxFlg.Asstring := 'N';
    QCshTaxInpDt.AsDateTime := Now;
    QCshTaxUserid.AsString := SFMain.Xuser_Id;
    QCshTax.Post;
    QCshSUpd.Post;

        //Run Credit Note
    with QCshSUpd do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM ARCRED WHERE CONTNO=:EDIT1');
      Params[0].Asstring := FCshsal.S;
      open;
    end;
    with Query1 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST ' +
        'WHERE CUSCOD=:Var0');
      Params[0].Asstring := QCshSUpd.Fieldbyname('CUSCOD').Asstring;
      open;
    end;
    with QResv do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM ARRESV WHERE RESVNO=:XRESVNO');
      Params[0].asstring := QCshSUpd.Fieldbyname('Resvno').Asstring;
      OPEN;
    end;
    if (QResv.FieldByName('Vatrt').AsFloat = 7) and
      not ((QResv.FieldByName('Taxno').Asstring = '') or
      (QResv.FieldByName('Taxno').Asstring = '')) then
    begin
      LV := QCshSUpd.FieldByName('Locat').Asstring;
      DV := QCshSUpd.Fieldbyname('Sdate').AsDateTime;
      HF := 'H_TCSALE';
      LF := 'L_TCSALE';
      with QDiscTax do
      begin
        close;
        sql.clear;
        sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
        params[0].asstring := '';
        open;
        Insert;
      end;
      if XRunTax = 'Y' then
      begin
        SQLTXT := 'SELECT MAX(TAXNO) AS MAXNO FROM TAXTRAN WHERE LOCAT=:EDIT1 AND ' +
          'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 ' +
          'AND SUBSTR(TAXNO,7,2)=:EDIT4';
        if Duplicate2 then
          QDiscTaxTAXNO.Asstring := Dm01.MAXNO(HF, LF, LV, SQLTXT, DV)
        else
          QDiscTaxTAXNO.Asstring := Dm01.RunNo01(HF, LF, LV, DV);
      end
      else
      begin
        Xtaxno := InputBox('ป้อนเลขที่ใบกำกับภาษี  ', 'ใบกำกับภาษีเลขที่  ', '');
        QDiscTaxTAXNO.Asstring := Xtaxno;
        while Copy(QDiscTaxTAXNO.Asstring, 1, 3) = Dm01.ChkDupRun(HF, LF, LV) do
        begin
          if MessageDlg('หมวดเอกสารซ้ำกับเลขRun ต้องการป้อนเลขที่ใบกำกับใหม่ ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            Xtaxno := InputBox('ป้อนเลขที่ใบกำกับภาษี  ', 'ใบกำกับภาษีเลขที่  ', '');
            QDiscTaxTAXNO.Asstring := Xtaxno;
          end
          else
            SFMain.RaiseException('หมวดเอกสารซ้ำกับเลข Run');
        end;
      end;
             //   Edit2.Text := QDiscTaxTAXNO.Asstring ;
      VPayres := StrToFloat(FloatToStrF((QResv.FieldByName('ResPay').Asfloat * QResv.FieldByName('Vatrt').Asfloat) / (100 + QResv.FieldByName('Vatrt').Asfloat), ffFixed, 12, 2));

               //ออกใบลดหนี้ ภาษีขายส่งไฟแนนซ์
      QDiscTaxTsale.Asstring := 'R'; //ใบลดหนี้เงินจอง
      QDiscTaxLocat.Asstring := QCshSUpd.FieldByName('Locat').Asstring;
      QDiscTaxTaxdt.AsDateTime := QCshSUpd.Fieldbyname('Sdate').AsDateTime;
      QDiscTaxContno.Asstring := QCshSUpdContno.Asstring;
      QDiscTaxCuscod.Asstring := QCshSUpdCuscod.Asstring;
      QDiscTaxDescp.Asstring := 'ใบลดหนี้เงินจองจากการขายสด';
      QDiscTaxSnam.Asstring := QCustMast.FieldByName('Snam').Asstring;
      QDiscTaxName1.Asstring := QCustMast.FieldByName('Name1').Asstring;
      QDiscTaxName2.Asstring := QCustMast.FieldByName('Name2').Asstring;
      QDiscTaxStrno.Asstring := QCshSUpdStrno.Asstring;
      QDiscTaxREFNO.Asstring := QResv.fieldbyname('TAXNO').Asstring;
      QDiscTaxRefDt.AsDateTime := QResv.fieldbyname('TAXDT').AsDatetime;
      QDiscTaxVatrt.AsFloat := QResv.FieldByName('Vatrt').Asfloat;
      QDiscTaxNetamt.Asfloat := QResv.FieldByName('ResPay').Asfloat - VPayres;
      QDiscTaxVatamt.Asfloat := VPayres;
      QDiscTaxTotamt.Asfloat := QResv.FieldByName('ResPay').Asfloat;
      QDiscTaxTaxtyp.Asstring := '9'; //S:ขาย+,C:ลดหนี้-
      QDiscTaxTaxFlg.Asstring := 'N'; //ยื่นปกติ
      QDiscTaxInpDt.AsDateTime := Now;
      QDiscTaxUserid.AsString := sfmain.Xuser_Id;
      QDiscTax.Post;
    end;
      //End;
  end;
  FormCreate(Sender);
end;

procedure TFCshSal2.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFCshSal2.PrnTaxClick(Sender: TObject);
begin
  DM_Sec.Do_Prev_Edit_FastReport(frxReport1, 'fr_ArcInvoi.fr3', '1');
end;

procedure TFCshSal2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFCshSal2.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  If UPPERCASE(NAME)='BAHTTEXT' Then
//  begin
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  end;
//  If UPPERCASE(NAME)='DATETOTHAI' then
//  VAL := SFMain.DateToThai(FRPARSER.Calc(P1),FRPARSER.Calc(P2));
end;

procedure TFCshSal2.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if (UPperCase(VarName) = 'VCONTNO') then
    Value := DBEdit2.Text;
end;

procedure TFCshSal2.atEditExecute(Sender: TObject);
begin
  DM_Sec.Do_Prev_Edit_FastReport(frxReport1, 'fr_ArcInvoi.fr3', '2'); {2 = Design Report}
end;

end.

