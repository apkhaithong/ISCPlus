unit Stprn50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin;

type
  TFmStprn50 = class(TForm)
    Label4: TLabel;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    StatusBar1: TStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevBtnClick(Sender: TObject);
    procedure PrintBtn1Click(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    frpath: string;
  end;

var
  FmStprn50: TFmStprn50;

implementation

uses
  Dmic01, uSoftFirm;
{$R *.DFM}

procedure TFmStprn50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFmStprn50.PrevBtnClick(Sender: TObject);
begin
  if Label6.caption = '' then
  begin
    MessageDlg(' ไม่มีเลขที่ใบเบิก', mtInformation, [mbYes], 0);
    MessageBeep(0);
    Abort;
  end;
//  frReport1.LoadFromFile(sfmain.frpath + '\FORMS\fr_OutPart.frf');
//  frReport1.ShowReport;
end;

procedure TFmStprn50.PrintBtn1Click(Sender: TObject);
begin
  if Label6.caption = '' then
  begin
    MessageDlg(' ไม่มีเลขที่ใบเบิก', mtInformation, [mbYes], 0);
    MessageBeep(0);
    Abort;
  end;
//  frReport1.LoadFromFile(sfmain.frpath + '\FORMS\fr_OutPart.frf');
//  frReport1.PrepareReport;
//  frReport1.PrintPreparedReportDlg;
end;

procedure TFmStprn50.EditBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath + '\FORMS\fr_OutPart.frf');
//  frREport1.DesignReport;
end;

procedure TFmStprn50.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PRECVNO' then
    ParValue := Label6.Caption;
end;

procedure TFmStprn50.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFmStprn50.ToolButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFmStprn50.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
end;

end.

