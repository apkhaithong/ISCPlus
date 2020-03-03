unit PrnPayAp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class, n2wMoney;

type
  TFrPrnPayAp = class(TForm)
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPrnPayAp: TFrPrnPayAp;
  frPath :String;

implementation
uses Apinv04,USoftFirm;

{$R *.DFM}

procedure TFrPrnPayAp.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบรับ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnPayAp.frf');
      frReport1.ShowReport;
end;

procedure TFrPrnPayAp.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบรับ ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnPayAp.frf');
      frReport1.PrepareReport;
      frReport1.PrintPreparedReportDlg;
end;

procedure TFrPrnPayAp.EditBtnClick(Sender: TObject);
begin
    frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_PrnPayAp.frf');
    frReport1.DesignReport;
end;

procedure TFrPrnPayAp.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;
end;

procedure TFrPrnPayAp.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
     IF Uppercase(ParName)='PAPINVNO' THEN
        ParValue := Label6.Caption;
end;

procedure TFrPrnPayAp.ToolButton1Click(Sender: TObject);
begin
        Close;
end;

procedure TFrPrnPayAp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:=Cafree;
end;

procedure TFrPrnPayAp.FormCreate(Sender: TObject);
begin
  EditBtn.Visible := SFMAIN.XDesign='Y';  
end;

procedure TFrPrnPayAp.FormShow(Sender: TObject);
begin
  editBtn.Visible := SFMAIN.XDesign='Y';
end;

end.
