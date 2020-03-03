unit StRpC20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxCheckBox, AdvGroupBox,
  AdvOfficeButtons, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm;

type
  TStRp_C20 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    SortRadio: TAdvOfficeRadioGroup;
    OptRadio: TAdvOfficeRadioGroup;
    CheckBox_Jb: TcxCheckBox;
    EDIT_LOCAT: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_Off: TcxButtonEdit;
    Edit_dateTo: TcxDateEdit;
    Edit7: TcxButtonEdit;
    AdvPanel3: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PreveiwBitBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PreveiwBitBtnClick(Sender: TObject);
    procedure PrintBitBtnClick(Sender: TObject);
    procedure EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit_OffPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
    aReport: TQuickRep;
    procedure PickReport;
  public
    { Public declarations }
    SortText, OptnText, JobText: string;
  end;

var
  StRp_C20: TStRp_C20;

implementation

uses
  StRpC21, DmSet1, uSrcDlg, uSoftfirm;

{$R *.DFM}

procedure TStRp_C20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  StRp_C20 := nil;
end;

procedure TStRp_C20.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_G');
  FormatSettings.ShortDateFormat := ('DD/MM/YYYY');
  SortRadio.ItemIndex := 0;
  OptRadio.ItemIndex := 0;
  CheckBox_Jb.Checked := False;
  Edit_DateFrom.Date := Date;
  Edit_DateTo.Date := Date;
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  // EditBtn.Visible     := SFMain.XDesign = 'Y';
end;

procedure TStRp_C20.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TStRp_C20.PreveiwBitBtnClick(Sender: TObject);
begin
  PickReport;
  aReport.Preview;
end;

procedure TStRp_C20.PickReport;
begin
  case SortRadio.ItemIndex of
    0:
      SortText := 'เรียงตามเลขที่ JOB ';
    1:
      SortText := 'เรียงตามวันที่คืนสินค้า ';
    2:
      SortText := 'เรียงตามเลขที่คืน ';
    3:
      SortText := 'เรียงตามเลขอ้างอิง ';
  end;
  case OptRadio.ItemIndex of
    0:
      OptnText := 'เฉพาะรับคืนจากศุนย์บริการ';
    1:
      OptnText := 'เฉพาะรับคืนจากศุนย์สี';
    2:
      OptnText := 'รับคืนจากศุนย์บริการและศูนย์สี';
  end;

  Application.CreateForm(TQStRp_C21, QStRp_C21);
  aReport := QStRp_C21.QRep;
end;

procedure TStRp_C20.PrintBitBtnClick(Sender: TObject);
begin
  PickReport;
  aReport.Print;
end;

procedure TStRp_C20.EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_locat.text := fSrcDlg.KeyNo;
end;

procedure TStRp_C20.Edit_OffPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    EDIT_OFF.Text := fSrcDlg.KeyNo;
end;

procedure TStRp_C20.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit7.Text := fSrcDlg.Keyno;
end;

procedure TStRp_C20.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.

