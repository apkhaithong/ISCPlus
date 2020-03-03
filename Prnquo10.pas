unit Prnquo10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids,
  FR_Class, n2wMoney, ComCtrls, ToolWin;

type
  TFprnquo10 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    RadioButton1: TRadioButton;
    frReport1: TfrReport;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    PrintBtn: TToolButton;
    ToolButton2: TToolButton;
    CloseBtn: TToolButton;
    RadioButton3: TRadioButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure CloseBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure quoshowClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Xtop,Xheader,Xleft,Xfooter:Integer;
  end;

var
  Fprnquo10 : TFprnquo10;
  CTP,frPath :string;


implementation
uses DmSv,Svin10, DmSvSet,USoftFirm;

{$R *.DFM}

procedure TFprnquo10.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบประเมิน',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   //อีก 1 เงื่อนไข
  If RadioButton1.Checked Then
     frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Quo1.frf');
  If RadioButton3.Checked Then
     frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Quo3.frf');
     frReport1.ShowReport;

End;

procedure TFprnquo10.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบประเมิน',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;

  //อีก 1 เงื่อนไข
  If RadioButton1.Checked Then
     frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Quo1.frf');
  If RadioButton3.Checked Then
     frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Quo3.frf');
     frReport1.PrepareReport;
     frReport1.PrintPreparedReportDlg
end;

procedure TFprnquo10.CloseBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFprnquo10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFprnquo10.FormCreate(Sender: TObject);
begin
  Label6.Caption := Dm_Sv.QSvmast.Fieldbyname('Strno').Asstring;
  EditBtn.Visible := SFMain.XDesign='Y';
end;


procedure TFprnquo10.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
     IF Uppercase(ParName)='PQUOTNO' THEN
        ParValue := Label6.Caption;
end;

procedure TFprnquo10.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;
end;

procedure TFprnquo10.quoshowClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบประเมิน',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
        frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Quo3.frf');
        frReport1.ShowReport;
end;

procedure TFprnquo10.EditBtnClick(Sender: TObject);
begin
  If RadioButton1.Checked Then
     frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Quo1.frf');
  If RadioButton3.Checked Then
     frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Quo3.frf');
     frReport1.DesignReport;
end;

procedure TFprnquo10.CloseBtnClick(Sender: TObject);
begin
  Close
end;

end.
