unit STRpA20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ToolWin, AdvGlowButton, AdvToolBar, AdvGroupBox, AdvOfficeButtons,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils;

type
  TFmSTRpA20 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label20: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    RadioGroup1: TAdvOfficeRadioGroup;
    RadioGp2: TAdvOfficeRadioGroup;
    RadioGroup2: TAdvOfficeRadioGroup;
    ProgressBar1: TProgressBar;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    SaveDialog1: TSaveDialog;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    ExportBtn: TAdvGlowButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
    aReport: TQuickRep;
    procedure PickReport;
  public
    SortText: string;
    XYear, XMonth: Word;
    { Public declarations }
  end;

var
  FmSTRpA20: TFmSTRpA20;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  uSrcDlg, uSoftFirm, Csv_txt;

{$R *.DFM}

procedure TFmSTRpA20.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRpA20.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP02_3_M');
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  RadioGp2.ItemIndex := 0;
  XDate := Date;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  // EditBtn.Visible     := SFMain.XDesign = 'Y';
end;

procedure TFmSTRpA20.PickReport;
begin

end;

procedure TFmSTRpA20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRpA20 := nil;
end;

procedure TFmSTRpA20.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpA20.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit1.Text := fSrcDlg.Keyno;
end;

procedure TFmSTRpA20.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.

