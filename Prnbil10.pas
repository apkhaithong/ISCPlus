unit Prnbil10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class, n2wMoney;

type
  TFmprnbil10 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    Prnbtn: TToolButton;
    Prevbtn: TToolButton;
    CloseBtn: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    frReport1: TfrReport;
    procedure AdjBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevbtnClick(Sender: TObject);
    procedure PrnbtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    Xtop,Xheader,Xleft,Xfooter:Integer;
  end;
var
  Fmprnbil10: TFmprnbil10;
  CTP,TF :String;

implementation
uses Paymnt, FlatFile,DMIC01,uSoftFirm;

{$R *.DFM}

procedure TFmprnbil10.AdjBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFmflagfile,Fmflagfile);
  Fmflagfile.Formnm := Fmprnbil10.Name;
  Fmflagfile.Showmodal;
end;

procedure TFmprnbil10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFmprnbil10.PrevbtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบเสร็จ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   If CheckBox1.Checked=False Then
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Billicinv.frf')
   Else
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Billicinv2.frf');
   frReport1.ShowReport;
end;

procedure TFmprnbil10.PrnbtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบเสร็จ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   If CheckBox1.Checked=False Then
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Billicinv.frf')
   Else
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Billicinv2.frf');
   frReport1.PrepareReport;
   frReport1.PrintPreparedReportDlg;
end;

procedure TFmprnbil10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmprnbil10.ToolButton3Click(Sender: TObject);
begin
      if SFMAIN.XDesign<>'Y' Then
      Begin
          MessageDlg('ไม่มีสิทธิแก้ไข', mtWarning, [mbOK], 0);
          Exit;
      End Else
      Begin
   If CheckBox1.Checked=False then
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Billicinv.frf')
   Else
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_Billicinv2.frf');
   frReport1.DesignReport;
   End;
end;

procedure TFmprnbil10.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        If UpperCase(ParName)='PBILLNO' THEN
        ParValue := Label6.Caption;
end;

procedure TFmprnbil10.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;
end;

end.
