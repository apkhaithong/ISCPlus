unit RpSC50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, ExtCtrls, QRPrntr, printers, ImgList, ComCtrls, ToolWin,
  Mask, AdvGlowButton, RzSpnEdt, cxGraphics, cxDropDownEdit, cxButtonEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxCalendar,
  AdvToolBar, AdvPanel, cxLookAndFeels, cxLookAndFeelPainters, dxCore,
  cxDateUtils, BusinessSkinForm, frxExportXLSX, frxRich, frxTableObject,
  frxClass, frxDCtrl, frxFDComponents, frxGradient, frxExportImage,
  frxExportPDF, frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross,
  frxChBox, frxChart, frxBarcode;

type
  TFRpSC50 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    xFdate: TcxDateEdit;
    xTDate: TcxDateEdit;
    Edit1: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    ComboBox1: TcxComboBox;
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
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton2Click(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public


    { Public declarations }
  end;

var
  FRpSC50: TFRpSC50;

implementation

uses
  Srchset1, Srchsal1, USoftFirm, Dm1, DMSEC;
{$R *.DFM}

procedure TFRpSC50.FormShow(Sender: TObject);
begin
  ComboBox1.ItemIndex := 0;
  XFDate.Date := Date;
  XTDate.Date := Date;
  edit4.text := '';
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
  DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFRpSC50.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TFRpSC50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRpSC50 := nil;
end;

procedure TFRpSC50.ToolButton2Click(Sender: TObject);
begin
  { frReport1.LoadFromFile(SFMain.frPath+ '\Reports\fr_SaleHistory.fr3');
   frReport1.PrepareReport;
   frReport1.PrintPreparedReportDlg;      }
end;

procedure TFRpSC50.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  TS: string;
begin
  if Uppercase(VarName) = 'VLOCAT' then
    Value := Edit1.Text + '%';
  if Uppercase(VarName) = 'VGCODE' then
    Value := Edit4.Text + '%';
  case Combobox1.ItemIndex of
    0:
      TS := 'C%';
    1:
      TS := 'F%';
    2:
      TS := '%';
  end;
  if Uppercase(VarName) = 'VTSALE' then
    Value := TS;
  if Uppercase(VarName) = 'VFDATE' then
    Value := XFDate.Date;
  if Uppercase(VarName) = 'VTDATE' then
    Value := XTDate.Date;
end;

procedure TFRpSC50.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SaleHistory.fr3', '2'); {2 = Design Report}
end;

procedure TFRpSC50.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetLocat = Mrok then
    edit1.text := Searchset.KeyNo
end;

procedure TFRpSC50.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetgrp = Mrok then
    edit4.text := Searchset.KeyNo
end;

procedure TFRpSC50.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SaleHistory.fr3', '1'); {1 = Preview Report}
end;

procedure TFRpSC50.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFRpSC50.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFRpSC50.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_2_3');
end;

end.

