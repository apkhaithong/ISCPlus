unit RpMvto10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, QuickRpt, QRPrntr, printers, ComCtrls, ToolWin,
  ImgList, Mask, AdvGlowButton, RzSpnEdt, cxButtonEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvToolBar,
  AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore,
  cxDateUtils, BusinessSkinForm, frxExportXLSX, frxRich, frxTableObject,
  frxClass, frxDCtrl, frxFDComponents, frxGradient, frxExportImage, frxExportPDF,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TMovto10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    wwDtMovef: TcxDateEdit;
    wwDtMovet: TcxDateEdit;
    edlocatfm: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    procedure FormCreate(Sender: TObject);
    procedure Formkeypress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DesignBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edlocatfmPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    frPath: string;
  public
    { Public declarations }
  end;

var
  Movto10: TMovto10;

implementation

uses
  SrchSet1, USoftFirm, Dm1, DMSEC;
{$R *.DFM}

procedure TMovto10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_1_6');
end;

procedure TMovto10.Formkeypress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TMovto10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  Movto10 := nil;
end;

procedure TMovto10.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_MoveOpt.fr3', '2');
 {2 = Design Report}
end;

procedure TMovto10.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'VMOVEFM' then
    Value := Edlocatfm.Text + '%';
  if Uppercase(VarName) = 'VMOVETO' then
    Value := Edit2.Text + '%';
  if Uppercase(VarName) = 'VFMDATE' then
    Value := wwDTMoveF.Date;
  if Uppercase(VarName) = 'VTODATE' then
    Value := wwDTMoveT.Date;
end;

procedure TMovto10.FormShow(Sender: TObject);
begin
  wwDtMovef.Date := Date;
  wwDtMovet.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  edLocatfm.Text := SFMain.XLocat;
  edLocatfm.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TMovto10.edlocatfmPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    edlocatfm.Text := Searchset.Keyno;
end;

procedure TMovto10.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    Edit2.Text := Searchset.Keyno;
end;

procedure TMovto10.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TMovto10.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_MoveOpt.fr3', '1');
 {1 = Preview Report}
end;

end.

