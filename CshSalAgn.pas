unit CshSalAgn;

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
  TFCshSalAgn = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit2: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
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
    procedure FormShow(Sender: TObject);
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
  FCshSalAgn: TFCshSalAgn;
  XTaxno: string;

implementation

uses
  Dmsec, DmSal, UCshsal, Dm1, USoftFirm, unfrPreview, AgnSal10;

{$R *.DFM}

procedure TFCshSalAgn.FormCreate(Sender: TObject);
var
  LV, HF, LF, SQLTXT: string;
  DV: TDateTime;
begin
  with Dm_sal do
  begin
    with QAgnSUpd do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM AR_INVOI WHERE CONTNO=:EDIT1');
      Params[0].Asstring := FAgnSal1.S;
      open;
    end;
    with QCustmast do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST ' +
        'WHERE CUSCOD=:Var0');
      Params[0].Asstring := Dm_sal.QAgnSUpd.Fieldbyname('CUSCOD').Asstring;
      open;
    end;
    with QCshTax do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
      params[0].asstring := Dm_sal.QAgnSUpd.Fieldbyname('TAXNO').Asstring;
      open;
    end;

    if Dm_sal.QDbConfig.fieldbyname('R_TXAGEN').AsString = 'Y' then
    begin
      DBEdit2.Properties.ReadOnly := True;
      DBedit2.Style.Color := clSilver;
    end
    else
    begin
      DBedit2.Properties.ReadOnly := False;
      DBedit2.Style.Color := ClWhite;
      DBDtTax.Style.Color := clWhite;
    end;

    if Dm_sal.QAgnSUpdTAXNO.AsString <> '' then
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
      tbCrtTax.Enabled := True;    PrnTax.Enabled := False; }
    end;
  end;
end;

procedure TFCshSalAgn.tbCrtTaxClick(Sender: TObject);
var
  D: Double;
  LV, HF, LF, SQLTXT: string;
  DV: TDateTime;
begin
  DBEdit11.SetFocus;
  if Dm_Sal.QAgnSUpdTaxdt.AsString = '' then
    SFMain.RaiseException('ยังไม่ระบุวันที่ใบกำกับ..!');
  if ((Dm_Sal.QAgnSUpdTAXNO.AsString = '') and (Dm_sal.QDbConfig.fieldbyname('R_TXAGEN').AsString = 'N')) then
    SFMain.RaiseException('ยังไม่ระบุเลขที่ใบกำกับ..');
   ///
  with Dm_sal do
  begin
    if not Dm_sal.QDbConfig.Active then
      Dm_sal.QDbConfig.Open;
    XRunTax := Dm_sal.QDbConfig.fieldbyname('R_TXAGEN').AsString;

    if not QAgnSUpd.Active then
      QAgnSUpd.Open;
    QAgnSUpd.Edit;
    QAgnSUpdTaxdt.Asdatetime := QAgnSUpdTAXDT.Asdatetime;
    LV := QAgnSUpd.FieldByName('Locat').Asstring;
    DV := QAgnSUpd.FieldByName('TAXDT').Asdatetime;
    if not Dm01.QCondpay.Active then
      Dm01.QCondpay.Open;
    if Dm01.QCondpay.FieldByName('VERSION').AsString = 'Y' then
    begin
      HF := 'H_TXINV';
      LF := 'L_TXINV';
    end
    else
    begin
      HF := 'H_TXAGEN';
      LF := 'L_TXAGEN';
    end;
    if XRunTax = 'Y' then
    begin
      QAgnSUpdTAXNO.Asstring := Dm01.RunNo01(HF, LF, LV, DV);
    end;

    with QCshTax do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM TAXTRAN WHERE TAXNO = :XTAXNO ');
      params[0].asstring := '';
      open;
      Insert;
    end;
      //ออกใบกำกับ ภาษีขายส่งเอเย่นต์
    QCshTaxLocat.Asstring := QAgnSUpdLOCAT.Asstring;
    QCshTaxTAXNO.Asstring := QAgnSUpdTAXNO.Asstring;
    QCshTaxTaxdt.AsDateTime := QAgnSUpdTaxdt.AsDatetime;
    QCshTaxTsale.Asstring := 'A';
    QCshTaxContno.Asstring := QAgnSUpdContno.Asstring;
    QCshTaxCuscod.Asstring := QAgnSUpdCuscod.Asstring;
    QCshTaxDescp.Asstring := 'ใบกำกับขายส่งเอเยนต์';
    QCshTaxSnam.Asstring := QCustmast.FieldByName('Snam').Asstring;
    QCshTaxName1.Asstring := QCustmast.FieldByName('Name1').Asstring;
    QCshTaxName2.Asstring := QCustmast.FieldByName('Name2').Asstring;
    //  QCshTaxStrno.Asstring  := QCshSUpdStrno.Asstring;
    QCshTaxVatrt.AsFloat := QAgnSUpdVatrt.Asfloat;
    QCshTaxNetamt.Asfloat := QAgnSUpdNprice.Asfloat;
    QCshTaxVatamt.Asfloat := QAgnSUpdVatprc.Asfloat;
    QCshTaxTotamt.Asfloat := QAgnSUpdTotprc.Asfloat;

    QCshTaxTaxtyp.Asstring := 'S';
    QCshTaxTaxFlg.Asstring := 'N';
    QCshTaxInpDt.AsDateTime := Now;
    QCshTaxUserid.AsString := SFMain.Xuser_Id;
    QCshTax.Post;
    QAgnSUpd.Post;
  end;
  FormCreate(Sender);
end;

procedure TFCshSalAgn.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFCshSalAgn.PrnTaxClick(Sender: TObject);
begin
  DM_Sec.Do_Prev_Edit_FastReport(frxReport1, 'fr_ArAr_Invoi.fr3', '1'); {1 = Preview Report}
end;

procedure TFCshSalAgn.FormShow(Sender: TObject);
begin
   // DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFCshSalAgn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFCshSalAgn.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//   If UPPERCASE(NAME)='BAHTTEXT' Then
//  begin
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  end;
end;

procedure TFCshSalAgn.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if (UPperCase(VarName) = 'VCONTNO') then
    Value := DBEdit2.Text;
end;

procedure TFCshSalAgn.atEditExecute(Sender: TObject);
begin
  DM_Sec.Do_Prev_Edit_FastReport(frxReport1, 'fr_ArAr_Invoi.fr3', '2'); {2 = Design Report}
end;

end.

