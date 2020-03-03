unit frPrnTxSale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, n2wMoney, ImgList, ComCtrls, ToolWin,
  Mask, RzSpnEdt, AdvGlowButton, AdvToolBar, cxDropDownEdit, cxCalendar,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  AdvGroupBox, AdvOfficeButtons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm, AdvPanel,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents,
  frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrPrnTxsl = class(TForm)
    AdvPanel1: TAdvPanel;
    RadioGroup2: TAdvOfficeRadioGroup;
    RadioGroup1: TAdvOfficeRadioGroup;
    Label15: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    edLocat: TcxButtonEdit;
    edLocatNm: TcxTextEdit;
    edTaxnoF: TcxButtonEdit;
    edTaxnoT: TcxButtonEdit;
    wwFDate: TcxDateEdit;
    wwTDate: TcxDateEdit;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxGradientObject1: TfrxGradientObject;
    frxFDComponents1: TfrxFDComponents;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure DesignBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevBtnClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edLocatPropertiesChange(Sender: TObject);
    procedure edTaxnoFPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edTaxnoTPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    Xcase1, Vtypetax, SRT: string;
  public

    { Public declarations }

  end;

var
  frPrnTxsl: TfrPrnTxsl;

implementation

uses
  Srchset1, SrchTax1, USoftfirm, unfrPreview, Dm1, Dmsec;

{$R *.dfm}

procedure TfrPrnTxsl.FormShow(Sender: TObject);
begin
  wwFDate.Date := Date;
  wwTDate.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  edlocat.Text := SFMain.XLocat;
  edlocat.Enabled := SFMain.XChgloc = 'Y';
  if SFMain.XLevel = '1' then
//  FrReport1.ModifyPrepared := True;
end;

procedure TfrPrnTxsl.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex = 0 then
  begin
    Label15.Enabled := False;
    Label7.Enabled := False;
    wwFDate.Enabled := False;
    wwTDate.Enabled := False;

    Label8.Enabled := True;
    Label6.Enabled := True;
    edTaxnoF.Enabled := True;
    edTaxnoT.Enabled := True;

    wwFDate.Date := Date;
    wwTDate.Date := Date;
  end;
  if RadioGroup2.ItemIndex = 1 then
  begin
    Label15.Enabled := True;
    Label7.Enabled := True;
    wwFDate.Enabled := True;
    wwTDate.Enabled := True;

    Label8.Enabled := False;
    Label6.Enabled := False;
    edTaxnoF.Enabled := False;
    edTaxnoT.Enabled := False;

    edTaxnoF.Text := '';
    edTaxnoT.Text := '';
  end;
end;

procedure TfrPrnTxsl.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//    SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//    VAL := SFMain.n2wBill.Text;
//  END;
end;

procedure TfrPrnTxsl.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'VLOCAT' then
    Value := edlocat.Text + '%';
  if Uppercase(VarName) = 'VCONTNO' then
    Value := '%';
  case RadioGroup1.itemindex of
    0:
      VTypetax := '0';
    1:
      VTypetax := '1';
    2:
      VTypetax := '2';
    3:
      VTypetax := '3';
  end;
  if Uppercase(VarName) = 'VRADIO' then
    Value := VTypetax;

  if Radiogroup2.ItemIndex = 0 then
  begin
    SRT := '0';
    if Uppercase(VarName) = 'VSORT' then
      Value := SRT;
    if Uppercase(VarName) = 'VFCONT' then
      Value := edTaxnoF.Text;
    if Uppercase(VarName) = 'VTCONT' then
      Value := edTaxnoT.Text;
  end
  else
  begin
    SRT := '1';
    if Uppercase(VarName) = 'VSORT' then
      Value := SRT;
    if Uppercase(VarName) = 'VFDATE' then
      Value := wwFDate.Date;
    if Uppercase(VarName) = 'VTDATE' then
      Value := wwTDate.Date;
  end;
end;

procedure TfrPrnTxsl.DesignBtnClick(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrntaxArcInvoi.fr3','2') else
  if RadioGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnTaxArcFinc.fr3','2') else
  if RadioGroup1.ItemIndex = 2 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Prntaxno.fr3','2') else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnTaxArAr_Invoi.fr3','2');
end;

procedure TfrPrnTxsl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  frPrnTxsl := nil;
end;

procedure TfrPrnTxsl.PrevBtnClick(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrntaxArcInvoi.fr3','1') else
  if RadioGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnTaxArcFinc.fr3','1') else
  if RadioGroup1.ItemIndex = 2 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Prntaxno.fr3','1') else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnTaxArAr_Invoi.fr3','1');
end;

procedure TfrPrnTxsl.ToolButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrPrnTxsl.edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    EdLocat.text := SearchSet.Keyno;
end;

procedure TfrPrnTxsl.edLocatPropertiesChange(Sender: TObject);
begin
  edLocatNm.Text := DM01.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', EdLocat.Text);
end;

procedure TfrPrnTxsl.edTaxnoFPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchTax, SearchTax);
  case RadioGroup1.itemindex of
    0:
      XCase1 := 'and (Taxtyp=''S'' and Tsale=''C'')';
    1:
      XCase1 := 'and (Taxtyp=''S'' and Tsale=''F'')';
    2:
      XCase1 := 'and (Taxtyp=''R'' or Taxtyp = ''9'' or TaxTyp=''O'')';
    3:
      XCase1 := 'and (Taxtyp=''S'' and Tsale=''A'')';
  end;
  SearchTax.XTaxtyp := Xcase1;
  if SearchTax.ShowModalTaxno = Mrok then
  begin
    edTaxnoF.Text := SearchTax.Keyno;
    edTaxnoT.Text := SearchTax.Keyno;
  end;
end;

procedure TfrPrnTxsl.edTaxnoTPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchTax, SearchTax);
  case RadioGroup1.itemindex of
    0:
      XCase1 := 'and (Taxtyp=''S'' and Tsale=''C'')';
    1:
      XCase1 := 'and (Taxtyp=''S'' and Tsale=''F'')';
    2:
      XCase1 := 'and (Taxtyp=''R'' or Taxtyp = ''9'' or TaxTyp=''O'')';
    3:
      XCase1 := 'and (Taxtyp=''S'' and Tsale=''A'')';
  end;
  SearchTax.XTaxtyp := Xcase1;
  if SearchTax.ShowModalTaxno = Mrok then
    edTaxnoT.Text := SearchTax.Keyno;
end;

procedure TfrPrnTxsl.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrPrnTxsl.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TfrPrnTxsl.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP04_5');
end;

end.

