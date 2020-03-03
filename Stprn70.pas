unit Stprn70;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class, RzButton;

type
  TFmStprn70 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    CloseBtn: TToolButton;
    frReport1: TfrReport;
    ToolButton1: TToolButton;
    editBtn: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure editBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn70: TFmStprn70;
  frPath :String;

implementation
uses Stin04,USOFTFIRM;

{$R *.DFM}

procedure TFmStprn70.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่การคืนสินค้า ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_APInvRT.frf');
   frReport1.ShowReport;
end;

procedure TFmStprn70.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่การคืนสินค้า ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_APInvRT.frf');
   frReport1.ShowReport;
end;
procedure TFmStprn70.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmStprn70.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        IF Uppercase(ParName)='PAPRTNNO' THEN
        ParValue := Label6.Caption;
end;

procedure TFmStprn70.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action:=Cafree;
end;

procedure TFmStprn70.editBtnClick(Sender: TObject);
begin
      if SFMAIN.XDesign<>'Y' Then
      Begin
          MessageDlg('ไม่มีสิทธิแก้ไข', mtWarning, [mbOK], 0);
          Exit;
      End Else
      Begin
        frReport1.LoadFromFile(SFMAIN.frpath+'\FORMS\fr_ApInvRT.frf');
        frReport1.DesignReport;
      End;

end;

procedure TFmStprn70.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMAIN.XDesign='Y';
end;

procedure TFmStprn70.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;

end;

end.
