unit RepRcFin00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ImgList, ToolWin, Buttons, DB, ExtCtrls, Mask,
  RzSpnEdt, AdvGlowButton, cxButtonEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvToolBar, AdvPanel,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils,
  BusinessSkinForm, AdvGroupBox, AdvOfficeButtons, frxExportXLSX, frxRich,
  frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrRepRc0 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label4: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    wwFDate: TcxDateEdit;
    wwTDate: TcxDateEdit;
    Edit1: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit6: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    rdGroup: TAdvOfficeRadioGroup;
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
    procedure DesignBtnClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frRepRc0: TfrRepRc0;

implementation

uses
  Srchset1, USoftFirm, unfrPreview, Dm1, uFindData, DMSEC;

{$R *.dfm}

procedure TfrRepRc0.FormShow(Sender: TObject);
begin
  wwFDate.Date := Date;
  wwTDate.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TfrRepRc0.DesignBtnClick(Sender: TObject);
begin
  if rdGroup.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PayAll.fr3', '2')
 {1 = Preview Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PayAllGrpUser.fr3', '2');
end;

procedure TfrRepRc0.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TfrRepRc0.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  frRepRc0 := nil;
end;

procedure TfrRepRc0.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'PFDATE' then
    Value := wwFDate.Date;
  if Uppercase(VarName) = 'PTDATE' then
    Value := wwTDate.Date;
  if Uppercase(VarName) = 'PLOCATPAY' then
    Value := Edit2.Text + '%';
  if Uppercase(VarName) = 'PLOCATRECV' then
    Value := Edit1.Text + '%';
  if Uppercase(VarName) = 'PUSERID' then
    Value := Edit3.Text + '%';
  if Uppercase(VarName) = 'PPAYFOR' then
    Value := Edit6.Text + '%';
end;

procedure TfrRepRc0.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_3_1');
end;

procedure TfrRepRc0.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
  begin
    Edit1.text := SearchSet.Keyno;
  end;
end;

procedure TfrRepRc0.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
  begin
    Edit2.text := SearchSet.Keyno;
  end;
end;

procedure TfrRepRc0.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfFindData, fFindData);
  if fFindData.ShowModalPasswd = MrOk then
    Edit3.Text := fFindData.Keyno;
end;

procedure TfrRepRc0.Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetPayfor = MrOk then
    Edit6.text := SearchSet.Keyno;
end;

procedure TfrRepRc0.PrevBtnClick(Sender: TObject);
begin
  if rdGroup.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PayAll.fr3', '1')
 {1 = Preview Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PayAllGrpUser.fr3', '1');
end;

procedure TfrRepRc0.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrRepRc0.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

