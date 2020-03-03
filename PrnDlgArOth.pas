unit PrnDlgArOth;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class, n2wMoney;

type
  TFrPrnArOth = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    frReport1: TfrReport;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPrnArOth: TFrPrnArOth;
  frPath :String;

implementation
uses Arinv01,USoftFirm;

{$R *.DFM}

procedure TFrPrnArOth.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบรับ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnArOth.frf');
      frReport1.ShowReport;
end;

procedure TFrPrnArOth.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบรับ ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnArOth.frf');
      frReport1.PrepareReport;
      frReport1.PrintPreparedReportDlg;
end;

procedure TFrPrnArOth.EditBtnClick(Sender: TObject);
begin
    frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_PrnArOth.frf');
    frReport1.DesignReport;
end;

procedure TFrPrnArOth.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;
end;

procedure TFrPrnArOth.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
     IF Uppercase(ParName)='PINVNO' THEN
        ParValue := Label6.Caption;
end;

procedure TFrPrnArOth.ToolButton1Click(Sender: TObject);
begin
        Close;
end;

procedure TFrPrnArOth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:=Cafree;
end;

procedure TFrPrnArOth.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMAIN.XDesign='Y';
end;

end.
