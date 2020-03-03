unit TXRp10;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, printers, DBCtrls, DB, QuickRpt, Spin, ComCtrls, Buttons,
  Grids, DBGrids, ImgList, ToolWin, Mask, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxControls, cxContainer, cxEdit, cxCheckBox,
  AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm;

type
  TFmTXRp10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    Label2: TLabel;
    CheckBox1: TcxCheckBox;
    CheckBox2: TcxCheckBox;
    Edit_Locat: TcxButtonEdit;
    edNDate: TcxDateEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure ExitBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PrevBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure edNDateChange(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
    procedure PickReport;
  public
    aReport: TQuickRep;
    Xday, XYear, XMonth: Word;
    FDate, Ldate: TDateTime;

    { Public declarations }
  end;

var
  FmTXRp10: TFmTXRp10;
  x: string;

implementation

uses
  Dmtx, TXRp11, USoftFirm, uSrcDlg;

//Uses DmRptx1,RptStk21,Preview,Pickdate, TXmenu;
{$R *.DFM}

procedure TFmTXRp10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP02_1_3');
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  edNDate.Date := Date;
  decodedate(Date, Xyear, Xmonth, Xday);

   //
  Ldate := Date;
  x := '01/' + inttostr(xmonth) + '/' + Inttostr(xyear);
  Fdate := strtodate(x);
end;

procedure TFmTXRp10.PickReport;
begin
  Application.CreateForm(TFmTXRp11, FmTXRp11);
  aReport := FmTXRp11.Rep;
end;

procedure TFmTXRp10.ExitBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFmTXRp10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FmTXRp10 := nil;
end;

procedure TFmTXRp10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmTXRp10.PrevBtnClick(Sender: TObject);
begin
  showmessage('อยู่ระหว่างการปรับปรุง..!');
end;

procedure TFmTXRp10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmTXRp10.edNDateChange(Sender: TObject);
begin
  Ldate := edNDate.date;
  decodedate(Ldate, Xyear, Xmonth, Xday);
  x := '01/' + inttostr(xmonth) + '/' + Inttostr(xyear);
  Fdate := strtodate(x);
end;

procedure TFmTXRp10.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.Keyno;
end;

procedure TFmTXRp10.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit3.text := fSrcDlg.Keyno;
end;

procedure TFmTXRp10.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit4.text := fSrcDlg.Keyno;
end;

end.

