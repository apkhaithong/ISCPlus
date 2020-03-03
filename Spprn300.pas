unit Spprn300;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids,
  ComCtrls, ToolWin, FR_Class;

type
  TFSpprn300 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    frReport1: TfrReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton4Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FSpprn300 : TFSpprn300;
  CTP,frPath :string;

implementation
uses DmSvSet,Dmsv,USoftFirm;

{$R *.DFM}


procedure TFSpprn300.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end; 

procedure TFSpprn300.ToolButton4Click(Sender: TObject);
begin
  Label1.Caption := '';
  Label6.Caption := '';
  Close;
end;

procedure TFSpprn300.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        If UpperCase(ParName)='PBILLNO' THEN
        ParValue:=Label1.Caption;
end;

procedure TFSpprn300.ToolButton1Click(Sender: TObject);
begin
   if Label1.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบเสร็จ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(SFMAIN.frpath+'\FORMS\fr_PrnSVInvS4.frf');
   frReport1.ShowReport;
end;

procedure TFSpprn300.ToolButton2Click(Sender: TObject);
begin
   if Label1.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบเสร็จ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(SFMAIN.frpath+'\FORMS\fr_PrnSVInvS4.frf');
   frReport1.PrepareReport;
   frReport1.PrintPreparedReportDlg;
end;

procedure TFSpprn300.ToolButton3Click(Sender: TObject);
begin
      if SFMAIN.XDesign<>'Y' Then
      Begin
          MessageDlg('ไม่มีสิทธิแก้ไขฟอร์ม', mtWarning, [mbOK], 0);
          Exit;
      End Else
      Begin
        frReport1.LoadFromFile(SFMAIN.frpath+'\FORMS\fr_PrnSVInvS4.frf');
        frReport1.DesignReport;
      End;
end;

procedure TFSpprn300.FormShow(Sender: TObject);
begin
      frPath:= ExtractFilePath(Application.EXEName);
end;

end.
