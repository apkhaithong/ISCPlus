unit SvRpC10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, RzLabel, Dbkbd, AdvGroupBox, AdvOfficeButtons,
  cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils;

type
  TFmSvRpc10 = class(TForm)
    Edit_Locat: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    SortText: string;
    XYear, XMonth: Word;
    FrmDate, ToDate: TDateTime;
    { Public declarations }
  end;

var
  FmSvRpc10: TFmSvRpc10;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  DmSvSet, Srchdlg, usrcdlg, USoftFirm, unfrPreview;

{$R *.DFM}

procedure TFmSvRpc10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSvRpc10.FormCreate(Sender: TObject);
begin
  sfmain.Check_right(HREP, 'SV10_75');
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
  SortRadio.ItemIndex := 0;
end;

procedure TFmSvRpc10.PrevBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath + 'FR\rp_CanJob.fr3');
//  frCustPrev.Caption := 'Preview - ' + frReport1.FileName;
//  frReport1.Preview := frCustPrev.frPreview1;
//  if frReport1.PrepareReport then
//  begin
//    frReport1.ShowPreparedReport;
//    frCustPrev.ShowModal;
//  end;
end;

procedure TFmSvRpc10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFmSvRpc10.frReport1GetValue(const ParName: string; var ParValue: Variant);
var
  XSort: string;
begin
  if UpperCase(ParName) = 'PFDATE' then
    ParValue := Edit_DateFrom.Date;
  if UpperCase(ParName) = 'PTDATE' then
    ParValue := Edit_DateTo.Date;
  if UpperCase(ParName) = 'PLOCAT' then
    ParValue := Edit_Locat.Text + '%';

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
  end;
  if UpperCase(ParName) = 'PSORT' then
    ParValue := XSort;
end;

procedure TFmSvRpc10.EditBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath + 'FR\rp_CanJob.fr3');
//  frreport1.DesignReport;
end;

procedure TFmSvRpc10.FormShow(Sender: TObject);
begin
  EditBtn.Visible := sfmain.XDesign = 'Y';
end;

procedure TFmSvRpc10.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.Keyno;
end;

procedure TFmSvRpc10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.

