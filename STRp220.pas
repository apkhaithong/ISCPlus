unit STRp220;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DB, printers, quickrpt, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, AdvGlowButton, AdvToolBar, cxTextEdit, cxButtonEdit,
  cxCheckBox, cxControls, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxCore, cxDateUtils, BusinessSkinForm, frxExportXLSX, frxRich, frxDCtrl,
  frxClass, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTRp220 = class(TForm)
    AdvPanelGroup1: TAdvPanelGroup;
    Label6: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    edDateTo: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    Edit8: TcxTextEdit;
    Edit3: TcxTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
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
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edDateToChange(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edDateToPropertiesChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure Nmmonth;
  public
    SortText, XTypecod: string;
    XYear, XMonth: Word;
    { Public declarations }
  end;

var
  FmSTRp220: TFmSTRp220;
  ed8, x: string;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  DmSet1, USoftFirm, uSrcDlg, unfrPreview, Dm1, DMSEC;

{$R *.DFM}

procedure TFmSTRp220.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRp220.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_2');
  FormatSettings.ShortDateFormat := ('dd/mm/yyyy');
  edDateto.Date := date;
  XDate := Now;
  DecodeDate(XDate, XYear, XMonth, XDay);
  nmmonth;
  Edit8.Text := x;
  ed8 := inttostr(Xmonth);
  Edit3.Text := inttostr(Xyear + 543);
end;

procedure TFmSTRp220.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Fr_SumBalance.fr3','1');
end;

procedure TFmSTRp220.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRp220 := nil;
end;

procedure TFmSTRp220.nmmonth;
begin
  case Xmonth of
    1:
      x := 'มกราคม';
    2:
      x := 'กุมภาพันธ์';
    3:
      x := 'มีนาคม';
    4:
      x := 'เมษายน';
    5:
      x := 'พฤษภาคม';
    6:
      x := 'มิถุนายน';
    7:
      x := 'กรกฏาคม';
    8:
      x := 'สิงหาคม';
    9:
      x := 'กันยายน';
    10:
      x := 'ตุลาคม';
    11:
      x := 'พฤศจิกายน';
    12:
      x := 'ธันวาคม';
  end;
end;

procedure TFmSTRp220.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFmSTRp220.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TFmSTRp220.edDateToChange(Sender: TObject);
begin
  Xdate := edDateTo.date;
  decodedate(Xdate, Xyear, Xmonth, Xday);
  nmmonth;
  Edit8.Text := '  ' + x;
  ed8 := inttostr(Xmonth);
  Edit3.Text := inttostr(Xyear + 543);
end;

procedure TFmSTRp220.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Fr_SumBalance.fr3','2');
end;

procedure TFmSTRp220.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PTDATE' then
    Value := edDateTo.Date;
end;

procedure TFmSTRp220.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.Keyno;
end;

procedure TFmSTRp220.edDateToPropertiesChange(Sender: TObject);
begin
  Xdate := edDateTo.date;
  decodedate(Xdate, Xyear, Xmonth, Xday);
  nmmonth;
  Edit8.Text := x;
  ed8 := inttostr(Xmonth);
  Edit3.Text := inttostr(Xyear + 543);
end;

end.

