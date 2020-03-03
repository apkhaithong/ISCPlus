unit uRpDeposit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ImgList, ToolWin, Buttons, DB, ExtCtrls, Mask,
  RzButton, RzSpnEdt, ActnList, AdvGlowButton, AdvGroupBox, AdvOfficeButtons,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TRepDeposit = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    dtEditfm: TcxDateEdit;
    dtEditto: TcxDateEdit;
    Edit2: TcxButtonEdit;
    edStrno: TcxButtonEdit;
    RadioGroup1: TAdvOfficeRadioGroup;
    ActionList1: TActionList;
    AcPrev: TAction;
    AcEdit: TAction;
    AcPrn: TAction;
    AcClose: TAction;
    Query1: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReportTableObject1: TfrxReportTableObject;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxReport1: TfrxReport;
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure edLocatPayKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure AcPrevExecute(Sender: TObject);
    procedure AcEditExecute(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edStrnoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    frPath: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepDeposit: TRepDeposit;

implementation

uses
  Srchset1, USoftFirm, unfrPreview, Srchsal1, Dm1, DMSEC;

{$R *.dfm}

procedure TRepDeposit.EditBtnClick(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepRecvDep.fr3', '2')
 {1 = Preview Report}
  else if RadioGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepReturnDep.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'FR_REPKANGDEPOSIT.fr3', '2');
end;

procedure TRepDeposit.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMain.XDesign = 'Y';
  Edit2.Text := SFMain.Xlocat;
  dtEditfm.Date := Date;
  dtEditto.Date := Date;
end;

procedure TRepDeposit.PrevBtnClick(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepRecvDep.fr3', '1')
 {1 = Preview Report}
  else if RadioGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepReturnDep.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'FR_REPKANGDEPOSIT.fr3', '1');
end;

procedure TRepDeposit.edLocatPayKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TRepDeposit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  RepDeposit := nil;
end;

procedure TRepDeposit.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'VFDATE' then
    Value := dtEditfm.Date;
  if Uppercase(VarName) = 'VTDATE' then
    Value := dtEditto.Date;
  if Uppercase(VarName) = 'VSTRNO' then
    Value := edStrno.Text + '%';
  if Uppercase(VarName) = 'VLOCAT' then
    Value := Edit2.Text + '%';
end;

procedure TRepDeposit.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TRepDeposit.AcPrevExecute(Sender: TObject);
begin
  PrevBtnClick(Sender);
end;

procedure TRepDeposit.AcEditExecute(Sender: TObject);
begin
  EditBtnClick(Sender);
end;

procedure TRepDeposit.ToolButton2Click(Sender: TObject);
begin
//  frReport1.PrepareReport;
//  frReport1.PrintPreparedReportDlg;
end;

procedure TRepDeposit.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit2.text := SearchSet.Keyno;
end;

procedure TRepDeposit.edStrnoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSale, SearchSale);
  if SearchSale.ShowModalSalHPCS = mrOK then
    edStrno.Text := SearchSale.HQuery1.fieldbyname('STRNO').AsString;
end;

procedure TRepDeposit.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TRepDeposit.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_1_B');
end;

end.

