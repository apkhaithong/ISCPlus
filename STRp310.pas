unit STRp310;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxCheckBox, AdvGroupBox,
  AdvOfficeButtons, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm,
  frxExportXLSX, frxRich, frxDCtrl, frxClass, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTRp310 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label14: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    RadioGp2: TAdvOfficeRadioGroup;
    CheckBox1: TcxCheckBox;
    CheckBox2: TcxCheckBox;
    edDateTo: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    Edit8: TcxTextEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    edShelf: TcxTextEdit;
    Edit5: TcxButtonEdit;
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
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure ButtonEdit1ButtonClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edDateToPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure nmmonth;
  public
    SortText: string;
    XYear, XMonth: Word;
    { Public declarations }
  end;

var
  FmSTRp310: TFmSTRp310;
  XGroup1, ed8, x: string;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  DmSet1, uSrcDlg, uSoftfirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmSTRp310.SpeedButton4Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST WHERE PARTNO = :XPART ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
      sfMain.RaiseException('ไม่พบข้อมูล');
    Edit4.text := Dm_Set1.Query1.FieldByName('PartNo').Asstring;
  end;
end;

procedure TFmSTRp310.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRp310.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_3');
end;

procedure TFmSTRp310.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Fr_PrnCheckStk.fr3','1');
end;

procedure TFmSTRp310.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRp310 := nil;
end;

procedure TFmSTRp310.nmmonth;
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
      x := 'พฤษาคม';
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

procedure TFmSTRp310.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTRp310.ButtonEdit1ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalType = Mrok then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TYPEMST WHERE TYPECOD =:TYPEC ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
      sfMain.RaiseException('ไม่พบข้อมูล');
    Edit5.Text := Dm_Set1.Query1.FieldByName('TYPECOD').Asstring;
  end;
end;

procedure TFmSTRp310.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XSort, XChk1, XChk2: string;
begin
  if Edit4.Text = '' then
    Edit4.Text := 'โโโโ';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PTYPE' then
    Value := Edit5.Text + '%';
  if UpperCase(VarName) = 'PSHELF' then
    Value := edShelf.Text + '%';
  if UpperCase(VarName) = 'PTDATE' then
    Value := edDateTo.Date;
  if UpperCase(VarName) = 'PPARTFM' then
    Value := Edit3.Text;
  if UpperCase(VarName) = 'PPARTTO' then
    Value := Edit4.Text;

  case RadioGp2.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;

  if Checkbox1.Checked = True then
    XChk1 := 'Y'
  else
    XChk1 := 'N';
  if UpperCase(VarName) = 'PCHK1' then
    Value := XChk1;

  if Checkbox2.Checked = True then
    XChk2 := 'Y'
  else
    XChk2 := 'N';
  if UpperCase(VarName) = 'PCHK2' then
    Value := XChk2;
end;

procedure TFmSTRp310.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Fr_PrnCheckStk.fr3','2');
end;

procedure TFmSTRp310.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRp310.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit3.text := fSrcDlg.Keyno;
end;

procedure TFmSTRp310.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit4.text := fSrcDlg.Keyno;
end;

procedure TFmSTRp310.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalType = Mrok then
    Edit5.Text := fSrcDlg.KeyNo;
end;

procedure TFmSTRp310.edDateToPropertiesChange(Sender: TObject);
begin
  Xdate := edDateTo.date;
  decodedate(Xdate, Xyear, Xmonth, Xday);
  nmmonth;
  Edit8.Text := x;
  ed8 := inttostr(Xmonth);
end;

procedure TFmSTRp310.FormShow(Sender: TObject);
begin
  XDate := Now;
  edDateto.Date := Date;
  DecodeDate(XDate, XYear, XMonth, XDay);
  nmmonth;
  Edit8.Text := x;
  ed8 := inttostr(Xmonth);
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

end.

