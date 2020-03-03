unit PoPrn10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class, FR_BDEDB, FR_Desgn;

type
  TFmPoPrn10 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    frReport1: TfrReport;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure PrevBtnClick(Sender: TObject);
    procedure PrintBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
  private
    { Private declarations }
    CTP,frPath : string;
  public
    { Public declarations }
  end;

var
  FmPoPrn10: TFmPoPrn10;

implementation
uses Dmpo,USoftFirm;

{$R *.DFM}

procedure TFmPoPrn10.FormCreate(Sender: TObject);
begin
  ShortDateFormat :='dd/mm/yyyy';
  EditBtn.Visible := SFMAIN.XDesign='Y';
end;


procedure TFmPoPrn10.EditBtnClick(Sender: TObject);
begin
    If CheckBox1.Checked=True Then
       frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnPo1.frf')
    Else
       frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnPo.frf');
       frReport1.DesignReport;
end;

procedure TFmPoPrn10.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        If UpperCase(ParName)='PPONO' then
        ParValue := Label6.Caption;
end;

procedure TFmPoPrn10.PrevBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบสั่งซื้อ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
    If CheckBox1.Checked=True Then
    Begin
    frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnPo1.frf');
    frReport1.ShowReport;
    End Else
    Begin
    frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnPo.frf');
    frReport1.ShowReport;
    End;
end;

procedure TFmPoPrn10.PrintBtn1Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบสั่งซื้อ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
    If CheckBox1.Checked=True Then
    Begin
    frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnPo1.frf');
    frReport1.PrepareReport;
    frReport1.PrintPreparedReportDlg;
    End Else
    Begin
    frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnPo.frf');
    frReport1.PrepareReport;
    frReport1.PrintPreparedReportDlg;
    End;
end;

procedure TFmPoPrn10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action:=caFree;
end;

procedure TFmPoPrn10.ToolButton1Click(Sender: TObject);
begin
        Close;
end;

procedure TFmPoPrn10.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
  BEGIN
      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
      VAL := SFMain.n2wBill.Text;
  END;

end;

end.
