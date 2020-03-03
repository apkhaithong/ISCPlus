unit Prncrd10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids,
  FR_Class, RzButton, Dbkbd, ComCtrls, ToolWin;

type
  TFprncrd10 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    frReport1: TfrReport;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    PrintBtn: TToolButton;
    ToolButton2: TToolButton;
    CloseBtn: TToolButton;
    procedure PrintBtnClick(Sender: TObject);
    procedure CloseBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    Xtop,Xheader,Xleft,Xfooter:Integer;
  end;

var
  Fprncrd10 : TFprncrd10;
  N : integer;

implementation
uses USoftFirm;

{$R *.DFM}

procedure TFprncrd10.PrintBtnClick(Sender: TObject);
begin
   if Label1.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบลดหนี้',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
        frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_SvInvRT.frf');
        frReport1.PrepareReport;
        frReport1.PrintPreparedReportDlg;
end;

procedure TFprncrd10.CloseBtn1Click(Sender: TObject);
begin
  Close;
end;


procedure TFprncrd10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Label1.Caption := '';
  Label6.Caption := '';
  Action := caFree;
end;


procedure TFprncrd10.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        IF UpperCase(ParName)='PTAXNO' THEN
           ParValue:=Label1.Caption;
end;

procedure TFprncrd10.PrevBtnClick(Sender: TObject);
begin
   if Label1.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบลดหนี้',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
        frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_SvInvRT.frf');
        frReport1.ShowReport;

end;

procedure TFprncrd10.EditBtnClick(Sender: TObject);
begin
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_SvInvRT.frf');
   frReport1.DesignReport;
end;

procedure TFprncrd10.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFprncrd10.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;

end;

end.
