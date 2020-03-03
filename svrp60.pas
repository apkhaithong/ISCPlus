unit SvRp60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, RzEdit, RzSpnEdt, AdvGlowButton, cxGraphics,
  AdvGroupBox, AdvOfficeButtons, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvToolBar,
  AdvPanel, cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils;

type
  TSvRp_60 = class(TForm)
    EDIT_LOCAT: TcxButtonEdit;
    edModel: TcxButtonEdit;
    edType: TcxButtonEdit;
    Edit_RepType: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    cbStatus: TcxComboBox;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    raSelDate: TAdvOfficeRadioGroup;
    SortRadio: TAdvOfficeRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    procedure ExitBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PreveiwBitBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrintBitBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit_RepTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
  private
   { Private declarations }
  public
    { Public declarations }

  end;

var
  SvRp_60: TSvRp_60;

implementation

uses
  Dmsvset, Srchdlg1, usrcdlg1, uSoftfirm, unfrPreview;

{$R *.DFM}

procedure TSvRp_60.ExitBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSvRp_60.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSvRp_60.PreveiwBitBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath + 'REPORT\Rp_JobFinish.fr3');
//  frCustPrev.Caption := 'Preview - ' + frReport1.FileName;
//  frReport1.Preview := frCustPrev.frPreview1;
//  if frReport1.PrepareReport then
//  begin
//    frReport1.ShowPreparedReport;
//    frCustPrev.ShowModal;
//  end;
end;

procedure TSvRp_60.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TSvRp_60.FormCreate(Sender: TObject);
begin
  sfmain.Check_right(HREP, 'SV10_72');
  FormatSettings.ShortDateFormat := ('DD/MM/YYYY');
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
  cbStatus.ItemIndex := 0;
  RaSelDate.ItemIndex := 1;
end;

procedure TSvRp_60.PrintBitBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath + '\REPORT\Rp_JobFinish.fr3');
//  frReport1.PrepareReport;
//  frReport1.PrintPreparedReportDlg;
end;

procedure TSvRp_60.EditBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath + '\REPORT\Rp_JobFinish.fr3');
//  frReport1.DesignReport;
end;

procedure TSvRp_60.frReport1GetValue(const ParName: string; var ParValue: Variant);
var
  XStatus, XSelDt, XSort: string;
begin
  if UpperCase(ParName) = 'PFDATE' then
    ParValue := Edit_DateFrom.Date;
  if UpperCase(ParName) = 'PTDATE' then
    ParValue := Edit_DateTo.Date;
  if UpperCase(ParName) = 'PMODEL' then
    ParValue := EdModel.Text + '%';
  if UpperCase(ParName) = 'PTYPE' then
    ParValue := EdType.Text + '%';
  if UpperCase(ParName) = 'PLOCAT' then
    ParValue := Edit_Locat.Text + '%';
  if UpperCase(ParName) = 'PREPTYPE' then
    ParValue := Edit_RepType.Text + '%';
  case cbStatus.ItemIndex of
    0:
      XStatus := '0';
    1:
      XStatus := '1';
  end;
  if UpperCase(ParName) = 'PSTATUS' then
    ParValue := XStatus;
  case RaSelDate.ItemIndex of
    0:
      XSelDt := '0';
    1:
      XSelDt := '1';
  end;
  if UpperCase(ParName) = 'PSELDT' then
    ParValue := XSelDt;
  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
    3:
      XSort := '3';
  end;
  if UpperCase(ParName) = 'PSORT' then
    ParValue := XSort;
end;

procedure TSvRp_60.EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if FSrcDlg1.ShowModalLocat = MrOK then
    EDIT_LOCAT.TEXT := fSrcDlg1.Keyno;
end;

procedure TSvRp_60.edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalModel = Mrok then
    EdModel.Text := fSrcDlg1.Keyno;
end;

procedure TSvRp_60.edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalType = Mrok then
    EdType.Text := fSrcDlg1.Keyno;
end;

procedure TSvRp_60.Edit_RepTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvtype = Mrok then
    Edit_RepType.Text := fSrcDlg1.Keyno;
end;

procedure TSvRp_60.CloseBtnClick(Sender: TObject);
begin
  CLOSE;
end;

end.

