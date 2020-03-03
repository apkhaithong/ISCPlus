unit RpAp50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, QuickRpT, Printers, ImgList,
  ComCtrls, ToolWin, RzPanel, RzSpnEdt, Mask, RzEdit;

type
  TRpAp_50 = class(TForm)
    FSortRadio: TRadioGroup;
    ToolBar1: TToolBar;
    Prevbtn: TToolButton;
    EditBtn: TToolButton;
    Prnbtn: TToolButton;
    ToolButton4: TToolButton;
    CloseBtn: TToolButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TRzRapidFireButton;
    Edit1: TEdit;
    Edit_DateFrom: TRzDateTimeEdit;
    Edit_DateTo: TRzDateTimeEdit;
    Label4: TLabel;
    Edit_Locat: TEdit;
    SpbLocat: TRzRapidFireButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrnbtnClick(Sender: TObject);
    procedure PrevbtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure SpbLocatClick(Sender: TObject);
  private
    { Private declarations }
    aReport: TQuickRep;
    procedure PickReport;
  public
    { Public declarations }
  end;

var
  RpAp_50: TRpAp_50;

implementation

uses
  Srchdlg, RpAp51, DmAp, uSrcDlg, uSoftfirm;

{$R *.DFM}

procedure TRpAp_50.SpeedButton1Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAP = Mrok then
    Edit1.Text := fSrcDlg.Keyno;
end;

procedure TRpAp_50.FormCreate(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  SpbLocat.Enabled := SFMain.XChgLoc = 'Y';
  Edit_Locat.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  FSortRadio.ItemIndex := 0;
end;

procedure TRpAp_50.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TRpAp_50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TRpAp_50.PickReport;
begin
  Application.CreateForm(TQRpAp_51, QRpAp_51);
  aReport := QRpAp_51.QRep;
end;

procedure TRpAp_50.PrnbtnClick(Sender: TObject);
begin
  PickReport;
  aReport.Print;
end;

procedure TRpAp_50.PrevbtnClick(Sender: TObject);
begin
  PickReport;
  aReport.Preview;
end;

procedure TRpAp_50.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TRpAp_50.SpbLocatClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

end.

