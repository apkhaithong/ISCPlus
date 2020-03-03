unit unDlgPrnClaim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  RzLabel;

type
  TfrDlgPrnClaim = class(TForm)
    ToolBar1: TToolBar;
    PrevBtn: TToolButton;
    PrintBtn1: TToolButton;
    EditBtn: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    StatusBar1: TStatusBar;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    St: Integer;
  end;

var
  frDlgPrnClaim: TfrDlgPrnClaim;

implementation

uses
  usoftfirm, unInvClaim, unfrPreview;

{$R *.DFM}

procedure TfrDlgPrnClaim.BitBtn3Click(Sender: TObject);
begin
  if RzLabel2.caption = '' then
  begin
    MessageDlg(' ������Ţ������§ҹ', mtInformation, [mbYes], 0);
    MessageBeep(0);
    Abort;
  end;
//  frReport1.LoadFromFile(sfmain.frpath + 'FORMS\fr_InvClaim.frf');
//  frCustPrev.Caption := 'Preview - ' + frReport1.FileName;
//  frReport1.Preview := frCustPrev.frPreview1;
//  if frReport1.PrepareReport then
//  begin
//    frReport1.ShowPreparedReport;
//    frCustPrev.ShowModal;
//  end;
end;

procedure TfrDlgPrnClaim.PrintBtnClick(Sender: TObject);
begin
  if rzLabel2.caption = '' then
  begin
    MessageDlg(' ������Ţ�����Ѻ�Թ���', mtInformation, [mbYes], 0);
    MessageBeep(0);
    Abort;
  end;
//  frReport1.LoadFromFile(sfmain.frpath + '\FORMS\fr_InvClaim.frf');
//  frReport1.PrepareReport;
//  frReport1.PrintPreparedReportDlg;
end;

procedure TfrDlgPrnClaim.EditBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath + '\FORMS\fr_InvClaim.frf');
//  frREport1.DesignReport;
end;

procedure TfrDlgPrnClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrDlgPrnClaim.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PREPNO' then
    ParValue := RzLabel2.Caption;
end;

procedure TfrDlgPrnClaim.ToolButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrDlgPrnClaim.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMAIN.XDesign = 'Y';
  rzLabel2.Caption := frInvClaim.DBEdit2.Text;
  Statusbar1.Panels[0].Text := '������� ' + SFMain.Xuser_ID;
  Statusbar1.Panels[1].Text := FormatDateTime('�ѹ�������  dd mmm eeee hh:mm', Now);
end;

end.

