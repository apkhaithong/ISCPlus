unit Stprn60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  n2wMoney;

type
  TFmStprn60 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    RdGroup1: TRadioGroup;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FOpt, frpath: string;
  end;

var
  FmStprn60: TFmStprn60;

implementation

uses
  Dmic01, uSoftFirm;

{$R *.DFM}

procedure TFmStprn60.BitBtn3Click(Sender: TObject);
begin
  if Label6.caption = '' then
  begin
    MessageDlg(' ไม่มีเลขที่ใบกำกับ', mtInformation, [mbYes], 0);
    MessageBeep(0);
    Abort;
  end;
//  if RdGroup1.ItemIndex = 0 then
//    frReport1.LoadFromFile(sfmain.frpath + '\FORMS\fr_PrnIcInvno.frf')
//  else
//    frReport1.LoadFromFile(sfmain.frpath + '\FORMS\fr_PrnIcInvnof.frf');
//  frReport1.ShowReport;
end;

procedure TFmStprn60.PrintBtnClick(Sender: TObject);
begin
  if Label6.caption = '' then
  begin
    MessageDlg(' ไม่มีเลขที่ใบกำกับ', mtInformation, [mbYes], 0);
    MessageBeep(0);
    Abort;
  end;
//  if RdGroup1.ItemIndex = 0 then
//    frReport1.LoadFromFile(sfmain.frpath + '\FORMS\fr_PrnIcInvno.frf')
//  else
//    frReport1.LoadFromFile(sfmain.frpath + '\FORMS\fr_PrnIcInvnof.frf');
//  frReport1.PrepareReport;
//  frReport1.PrintPreparedReportDlg;
end;

procedure TFmStprn60.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFmStprn60.EditBtnClick(Sender: TObject);
begin
//  if RdGroup1.ItemIndex = 0 then
//    frReport1.LoadFromFile(sfmain.frpath + '\FORMS\fr_PrnIcInvno.frf')
//  else
//    frReport1.LoadFromFile(sfmain.frpath + '\FORMS\fr_PrnIcInvnof.frf');
//  frReport1.DesignReport;
end;

procedure TFmStprn60.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFmStprn60.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PINVNO' then
    ParValue := Label6.Caption;
end;

procedure TFmStprn60.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
end;

procedure TFmStprn60.ToolButton1Click(Sender: TObject);
begin
  Close;
end;

end.

