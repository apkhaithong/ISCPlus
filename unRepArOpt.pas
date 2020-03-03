unit unRepArOpt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, ExtCtrls, QuickRpT, QRPrntr, printers, ComCtrls, ToolWin,
  ImgList, AdvGlowButton, RzSpnEdt, cxButtonEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvToolBar,
  AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore,
  cxDateUtils, BusinessSkinForm, frxClass, frxExportXLSX, frxRich, frxDCtrl,
  frxTableObject, frxExportPDF, frxExportImage, frxGradient, frxFDComponents,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFRepArOpt = class(TForm)
    AdvPanel1: TAdvPanel;
    Label15: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label10: TLabel;
    wwDBDateF: TcxDateEdit;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit5: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
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
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReportTableObject1: TfrxReportTableObject;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxReport1: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public


    { Public declarations }
  end;

var
  FRepArOpt: TFRepArOpt;
  XREP: integer;

implementation

uses
  Srchset1, Srchsal1, USoftFirm, Dm1, DMSEC;
{$R *.DFM}

procedure TFRepArOpt.FormShow(Sender: TObject);
begin
  wwDBDateF.date := Date;
end;

procedure TFRepArOpt.SpeedButton4Click(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetConttyp = Mrok then
    edit5.text := Searchset.KeyNo;
end;

procedure TFRepArOpt.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFRepArOpt.SpeedButton6Click(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalType = Mrok then
    edit5.text := Searchset.KeyNo
end;

procedure TFRepArOpt.SpeedButton8Click(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetOfficer = Mrok then
    edit5.text := Searchset.KeyNo;
end;

procedure TFRepArOpt.SpeedButton7Click(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalModel = Mrok then
    edit5.text := Searchset.KeyNo


end;

procedure TFRepArOpt.SpeedButton9Click(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetregfg = Mrok then
    edit5.text := Searchset.KeyNo
end;

procedure TFRepArOpt.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_4_5');
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TFRepArOpt.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'PLOCAT' then
    Value := Edit1.Text + '%';
  if Uppercase(VarName) = 'PCONTNO' then
    Value := Edit3.Text + '%';
  if Uppercase(VarName) = 'PCUSCOD' then
    Value := Edit5.Text + '%';
  if Uppercase(VarName) = 'PDATE' then
    Value := wwDBDateF.Date;
end;

procedure TFRepArOpt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FReparOpt := nil;
end;

procedure TFRepArOpt.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFRepArOpt.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepArOpt.fr3', '2'); {2 = Design Report}
end;

procedure TFRepArOpt.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepArOpt.fr3', '1'); {1 = Preview Report}
end;

procedure TFRepArOpt.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetLocat = Mrok then
    edit1.text := Searchset.KeyNo;
end;

procedure TFRepArOpt.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalCusmast = Mrok then
    edit5.text := Searchset.KeyNo;
end;

end.

