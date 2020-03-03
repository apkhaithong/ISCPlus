unit Stprn90;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class, FR_BDEDB;

type
  TFmStprn90 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    CloseBtn: TToolButton;
    frReport1: TfrReport;
    DesigFrm: TToolButton;
    ToolButton2: TToolButton;
    StatusBar1: TStatusBar;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DesigFrmClick(Sender: TObject);
  private
    frpath : String;
    { Private declarations }
  public
    { Public declarations }
    Function PrnFm91 : String;
    Function PrnFm92 : String;

  end;

var
  FmStprn90: TFmStprn90;
  X : Integer;
  XMOV :String;

implementation
uses Stin06,StMvRecv,USoftFirm;
{$R *.DFM}

Function TFmStprn90.PrnFm91;
Begin
   Label6.caption := FmSTIn06.DBEdit2.text;
   Label4.caption := 'เลขที่ใบโอนสินค้า';
   FmStprn90.Caption := 'พิมพ์ใบโอนย้าย';
   X := 1;
   ShowModal;
End;

Function TFmStprn90.PrnFm92;
Begin
   Label6.caption := FmStMvrecv.DBEdit2.text;
   Label4.caption := 'เลขใบรับโอนย้าย';
   FmStprn90.Caption := 'พิมพ์ใบรับโอนย้าย';
   X := 2;
   ShowModal;
End;

procedure TFmStprn90.BitBtn3Click(Sender: TObject);
begin
  if Label6.caption = '' then
  begin
      MessageDlg(' ไม่มีเลขที่ใบโอน',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   If X = 1 Then
   Begin
    frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Tranfer.frf');
    frReport1.ShowReport;
   End ;

   IF X=2 THEN
   Begin
    frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_RecvTranfer.frf');
    frReport1.ShowReport;
   End;
end;

procedure TFmStprn90.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบโอน',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   If X = 1 Then
   Begin
     frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_Tranfer.frf');
     frReport1.PrepareReport;
     frReport1.PrintPreparedReportDlg;
   End ;

   IF X=2 THEN
   Begin
     frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_RecvTranfer.frf');
     frReport1.PrepareReport;
     frReport1.PrintPreparedReportDlg;
   End;

end;

procedure TFmStprn90.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmStprn90.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        If X=1 Then
           XMOV := Label6.Caption;
        IF X=2 THEN
           XMOV := Label6.Caption;
        IF UpperCase(ParName) = 'PMOVTNO' THEN
           ParValue := XMOV;
end;

procedure TFmStprn90.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TFmStprn90.FormCreate(Sender: TObject);
begin
  frPath := ExtractFilePath(ParamStr(0));
end;

procedure TFmStprn90.DesigFrmClick(Sender: TObject);
begin
   If X = 1 Then
   Begin
    frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Tranfer.frf');
    frReport1.DesignReport;
   End ;
   IF X=2 THEN
   Begin
    frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_RecvTranfer.frf');
    frReport1.DesignReport;
   End;

end;

end.
