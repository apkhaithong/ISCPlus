unit Strpb40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, cxButtonEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, AdvGlowButton, AdvToolBar,
  AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxCore,
  cxDateUtils, BusinessSkinForm, frxClass, frxExportXLSX, frxRich, frxDCtrl,
  frxTableObject, frxExportPDF, frxExportImage, frxGradient, frxFDComponents,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFmSTRpB40 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    Label4: TLabel;
    Edit_dateFrom: TcxDateEdit;
    Edit_dateTo: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    EditBtn: TAdvGlowButton;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpbLocatClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    SortText: string;
    XYear, XMonth: Word;
    FrmDate, ToDate: TDateTime;
    { Public declarations }
  end;

var
  FmSTRpB40: TFmSTRpB40;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  STRpB41, DmSet1, uSrcDlg, uSoftfirm, Dmsec;

{$R *.DFM}

procedure TFmSTRpB40.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRpB40.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_J');
end;

procedure TFmSTRpB40.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'RP_GROSSPROFIT.fr3', '1');
end;

procedure TFmSTRpB40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRpB40 := nil;
end;

procedure TFmSTRpB40.SpbLocatClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :0 ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    Edit_Locat.text := Dm_Set1.Query1.FieldByName('LOCATCD').Asstring;
  end;
end;

procedure TFmSTRpB40.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTRpB40.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    EDIT_LOCAT.text := fSrcDlg.Keyno;
end;

procedure TFmSTRpB40.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalARGROUP = Mrok then
    Edit1.text := fSrcDlg.Keyno;
end;

procedure TFmSTRpB40.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit7.Text := fSrcDlg.Keyno;
end;

procedure TFmSTRpB40.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'RP_GROSSPROFIT.fr3', '2');
end;

procedure TFmSTRpB40.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PPLOCAT' then
    Value := edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PGROUP' then
    Value := Edit7.Text + '%';
  if UpperCase(VarName) = 'PPGROUP' then
    Value := Edit7.Text;
  if UpperCase(VarName) = 'PGROUPAR' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PPGROUPAR' then
    Value := Edit1.Text;
end;

procedure TFmSTRpB40.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := ('dd/mm/yyyy');
  XDate := Date;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

end.

