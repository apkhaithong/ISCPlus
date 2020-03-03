unit uRpMvFmAc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, QuickRpt, QRPrntr, printers, Db, Grids, DBGrids,
  ImgList, ComCtrls, ToolWin, Mask, AdvGlowButton, RzSpnEdt, AdvGroupBox,
  AdvOfficeButtons, cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm,
  frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRepMoveCarAc = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    RadioGp2: TAdvOfficeRadioGroup;
    wwDtMovef: TcxDateEdit;
    wwDtMovet: TcxDateEdit;
    edlocatfm: TcxButtonEdit;
    edlocatto: TcxButtonEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
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
    procedure Formkeypress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure RadioGp2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edlocatfmPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edlocattoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    frPath, Xord: string;
  end;

var
  FRepMoveCarAc: TFRepMoveCarAc;

implementation

uses
  SrchSet1, USoftfirm, Dm1, DMSEC;
{$R *.DFM}

procedure TFRepMoveCarAc.Formkeypress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRepMoveCarAc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRepMoveCarAc := nil;
end;

procedure TFRepMoveCarAc.FormShow(Sender: TObject);
begin
  wwDtMovef.Date := Date;
  wwDtMovet.Date := Date;
  DesigNBtn.Visible := SFMain.XDesign = 'Y';
  edLocatfm.Text := SFMain.XLocat;
  edLocatfm.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TFRepMoveCarAc.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_MoveStockAc.fr3', '2'); {2 = Design Report}
end;

procedure TFRepMoveCarAc.RadioGp2Click(Sender: TObject);
begin
  case Radiogp2.ItemIndex of
    0:
      Xord := 'ORDER BY MOVENO';
    1:
      Xord := 'ORDER BY MOVEDT';
  end;
end;

procedure TFRepMoveCarAc.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_1_9');
end;

procedure TFRepMoveCarAc.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if (UPperCase(VarName) = 'FMDATE') then
    Value := wwDtMovef.date;
  if (UPperCase(VarName) = 'TODATE') then
    Value := wwDtMovet.date;
  if (UPperCase(VarName) = 'VMOVEFM') then
    Value := edlocatfm.Text + '%';
  if (UPperCase(VarName) = 'VMOVETO') then
    Value := edlocatto.Text + '%';
end;

procedure TFRepMoveCarAc.edlocatfmPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    Edlocatfm.Text := Searchset.Keyno;
end;

procedure TFRepMoveCarAc.edlocattoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    Edlocatto.Text := Searchset.Keyno;
end;

procedure TFRepMoveCarAc.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFRepMoveCarAc.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_MoveStockAc.fr3', '1');
end;

end.

