unit Strpa80;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, Csv_txt, ImgList, ToolWin, AdvGroupBox, AdvOfficeButtons,
  cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, cxDateUtils, BusinessSkinForm;

type
  TFmSTRpa80 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label20: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RadioGp2: TAdvOfficeRadioGroup;
    Edit_Locat: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    SaveDialog1: TSaveDialog;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExportBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
    aReport: TQuickRep;
    procedure PickReport;
  public
    SortText, XTypecod: string;
    XYear, XMonth: Word;
    FrmDate, ToDate: TDateTime;
    { Public declarations }
  end;

var
  FmSTRpa80: TFmSTRpa80;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  Strpa81, DmSet1, uSrcDlg, uSoftfirm;

{$R *.DFM}

procedure TFmSTRpa80.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_9');
  FormatSettings.ShortDateFormat := ('dd/mm/yyyy');
  RadioGp2.ItemIndex := 0;
  XDate := Date;
  DecodeDate(XDate, XYear, XMonth, XDay);
end;

procedure TFmSTRpa80.PickReport;
begin
  case RadioGp2.ItemIndex of
    0:
      SortText := 'เรียงตามเลขที่ใบส่งคืน';
    1:
      SortText := 'เรียงตามวันที่ส่งคืน';
  end;

  Application.CreateForm(TFmRpa81, FmRpa81);
  aReport := FmRpa81.Qrep;
end;

procedure TFmSTRpa80.PrevBtnClick(Sender: TObject);
begin
  showmessage('อยู่ระหว่างการปรับปรุง..!');
end;

procedure TFmSTRpa80.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRpa80 := nil;
end;

procedure TFmSTRpa80.ExportBtnClick(Sender: TObject);
begin
  PickReport;
end;

procedure TFmSTRpa80.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTRpa80.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

procedure TFmSTRpa80.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRpa80.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpa80.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAR = Mrok then
    edit1.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpa80.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit3.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRpa80.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    Edit7.Text := fSrcDlg.Keyno;
end;

end.

