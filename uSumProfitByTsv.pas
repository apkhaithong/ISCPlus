unit uSumProfitByTsv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, Csv_txt, ToolWin, ImgList, RzEdit, RzSpnEdt, cxButtonEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  AdvGroupBox, AdvOfficeButtons, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxDCtrl, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrSumProfitByTsv = class(TForm)
    AdvPanel1: TAdvPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    RaSelDt: TAdvOfficeRadioGroup;
    Edit_dateFrom: TcxDateEdit;
    EDIT_LOCAT: TcxButtonEdit;
    Edit_DateTo: TcxDateEdit;
    Edit_Type: TcxButtonEdit;
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
    frxDialogControls1: TfrxDialogControls;
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit_TypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
   { Private declarations }
  public
    { Public declarations }
    SortText, Company: string;
    FromDate, ToDate: TdateTime;
  end;

var
  frSumProfitByTsv: TfrSumProfitByTsv;

implementation

uses
  SvRp41, Dmsvset, Srchdlg1, usrcdlg1, uSoftfirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TfrSumProfitByTsv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frSumProfitByTsv := nil;
end;

procedure TfrSumProfitByTsv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TfrSumProfitByTsv.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_4_A');
end;

procedure TfrSumProfitByTsv.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSelDt: string;
begin
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PSVTYPE' then
    Value := Edit_Type.Text + '%';
  case RaSelDt.ItemIndex of
    0:
      XSelDt := '0';
    1:
      XSelDt := '1';
    2:
      XSelDt := '2';
  end;
  if UpperCase(VarName) = 'PSELDT' then
    Value := XSelDt;
end;

procedure TfrSumProfitByTsv.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_SumProfitByTSV.fr3', '1');
end;

procedure TfrSumProfitByTsv.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_SumProfitByTSV.fr3', '2');
end;

procedure TfrSumProfitByTsv.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
  begin
    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :Edit1 ');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
    if Dm_SvSet.Query1.bof and Dm_SvSet.Query1.Eof then
      SFMain.RaiseException('ไมมีรหัสสาขานี้ในแฟ้มข้อมูล');
    EDIT_LOCAT.TEXT := Dm_SvSet.Query1.FieldByName('LOCATCD').Asstring;
  end;
end;

procedure TfrSumProfitByTsv.Edit_TypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvtype = Mrok then
  begin
    Edit_Type.Text := fSrcDlg1.KeyNo;
  end;
end;

procedure TfrSumProfitByTsv.CloseBtnClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrSumProfitByTsv.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

end.

