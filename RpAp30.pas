unit RpAp30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, QuickRpT, Printers, ImgList,
  ComCtrls, ToolWin, RzSpnEdt, RzPanel, Mask, RzEdit;

type
  TRpAp_30 = class(TForm)
    SortRadio: TRadioGroup;
    ToolBar1: TToolBar;
    Prevbtn: TToolButton;
    EditBtn: TToolButton;
    Prnbtn: TToolButton;
    ToolButton4: TToolButton;
    CloseBtn: TToolButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpbLocat: TRzRapidFireButton;
    Edit_Locat: TEdit;
    Edit_DateTo: TRzDateTimeEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevbtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure PrnbtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpbLocatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpAp_30: TRpAp_30;

implementation

uses
  Srchdlg, DmAp, uSrcDlg, uSoftFirm;

{$R *.DFM}

procedure TRpAp_30.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TRpAp_30.FormCreate(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
end;

procedure TRpAp_30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TRpAp_30.PrevbtnClick(Sender: TObject);
begin
//   frReport1.LoadFromFile(sfmain.frpath+'\REPORT\rp_ApOver.frf');
//   frReport1.ShowReport;
end;

procedure TRpAp_30.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TRpAp_30.frReport1GetValue(const ParName: string; var ParValue: Variant);
var
  XSort: string;
begin
  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
  end;
  if UpperCase(ParName) = 'PSORT' then
    ParValue := XSort;

  if UpperCase(ParName) = 'PLOCAT' then
    ParValue := Edit_Locat.Text + '%';
  if UpperCase(ParName) = 'PDATE' then
    ParValue := Edit_DateTo.Date;
end;

procedure TRpAp_30.PrnbtnClick(Sender: TObject);
begin
//   frReport1.LoadFromFile(sfmain.frpath+'\REPORT\rp_ApOver.frf');
//   frReport1.PrepareReport;
//   frReport1.PrintPreparedReportDlg;
end;

procedure TRpAp_30.EditBtnClick(Sender: TObject);
begin
//   frReport1.LoadFromFile(sfmain.frpath+'\REPORT\rp_ApOver.frf');
//   frReport1.DesignReport;
end;

procedure TRpAp_30.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  SpbLocat.Enabled := SFMain.XChgLoc = 'Y';
  Edit_Locat.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
end;

procedure TRpAp_30.SpbLocatClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

end.

