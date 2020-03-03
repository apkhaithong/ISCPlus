unit SvRp30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ToolWin, ImgList, RzEdit, RzSpnEdt, AdvGroupBox, AdvOfficeButtons,
  cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils;

type
  TSvRp_30 = class(TForm)
    EDIT_LOCAT: TcxButtonEdit;
    edModel: TcxButtonEdit;
    Edit_RepType: TcxButtonEdit;
    edType: TcxButtonEdit;
    Edit_DateTo: TcxDateEdit;
    Edit_dateFrom: TcxDateEdit;
    SortRadio: TAdvOfficeRadioGroup;
    raStatus: TAdvOfficeRadioGroup;
    Label4: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrintBitBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure EditBtnClick(Sender: TObject);
    procedure EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit_RepTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
  private
   { Private declarations }
  public
    { Public declarations }
  end;

var
  SvRp_30: TSvRp_30;

implementation

uses
  Dmsvset, usrcdlg1, uSoftfirm, unfrPreview;

{$R *.DFM}

procedure TSvRp_30.ExitBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSvRp_30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSvRp_30.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TSvRp_30.FormCreate(Sender: TObject);
begin
  sfmain.Check_right(HREP, 'SV10_74');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
  raStatus.ItemIndex := 0;
  SortRadio.ItemIndex := 0;
end;

procedure TSvRp_30.PrintBitBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath+'\REPORT\Rp_JobKangRecive.fr3');
//  frReport1.PrepareReport;
//  frReport1.PrintPreparedReportDlg;
end;

procedure TSvRp_30.frReport1GetValue(const ParName: string; var ParValue: Variant);
var
  XStatus, XSort: string;
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

  case RaStatus.ItemIndex of
    0:
      XStatus := '0';
    1:
      XStatus := '1';
    2:
      XStatus := '2';
  end;
  if UpperCase(ParName) = 'PSTATUS' then
    ParValue := XStatus;

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
  end;
  if UpperCase(ParName) = 'PSORT' then
    ParValue := XSort;
end;

procedure TSvRp_30.EditBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath+'FR\Rp_JobKangRecive.fr3');
//  frReport1.DesignReport;
end;

procedure TSvRp_30.EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg1.Keyno;
end;

procedure TSvRp_30.Edit_RepTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvtype = Mrok then
    Edit_RepType.Text := fSrcDlg1.Keyno;
end;

procedure TSvRp_30.edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalModel = Mrok then
    edModel.Text := fSrcDlg1.Keyno;
end;

procedure TSvRp_30.edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalType = Mrok then
    edType.Text := fSrcDlg1.Keyno;
end;

procedure TSvRp_30.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSvRp_30.PrevBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath+'FR\Rp_JobKangRecive.fr3');
//   frCustPrev.Caption := 'Preview - '+frReport1.FileName;
//   frReport1.Preview := frCustPrev.frPreview1;
//   if frReport1.PrepareReport then
//   Begin
//      frReport1.ShowPreparedReport;
//      frCustPrev.ShowModal;
//   end;
end;

end.

