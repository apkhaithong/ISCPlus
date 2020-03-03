unit PrnAp10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class, n2wMoney;

type
  TFmprnAp10 = class(TForm)
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
    raSelFrom: TRadioGroup;
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
    procedure raSelFromClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmprnAp10: TFmprnAp10;
  frPath :String;

implementation
uses Apinv04,USoftFirm, unfrPreview;

{$R *.DFM}

procedure TFmprnAp10.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบรับ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   if raSelFrom.ItemIndex = 0 then
   Begin
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnAPOth.frf');
      frCustPrev.Caption := 'Preview - '+frReport1.FileName;
      frReport1.Preview := frCustPrev.frPreview1;
   end else
   Begin
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnEarnest.frf');
      frCustPrev.Caption := 'Preview - '+frReport1.FileName;
      frReport1.Preview := frCustPrev.frPreview1;
   End;

      if frReport1.PrepareReport then
      Begin
        frReport1.ShowPreparedReport;
        frCustPrev.ShowModal;
      end;
end;

procedure TFmprnAp10.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบรับ ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   if raSelFrom.ItemIndex = 0 then
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnAPOth.frf')
   else
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnEarnest.frf');
      frReport1.PrepareReport;
      frReport1.PrintPreparedReportDlg;
end;

procedure TFmprnAp10.EditBtnClick(Sender: TObject);
begin
   if raSelFrom.ItemIndex = 0 then
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnAPOth.frf')
   else
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnEarnest.frf');
      frReport1.DesignReport;
end;

procedure TFmprnAp10.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;
end;

procedure TFmprnAp10.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
     IF Uppercase(ParName)='PAPINVNO' THEN
        ParValue := Label6.Caption;
end;

procedure TFmprnAp10.ToolButton1Click(Sender: TObject);
begin
        Close;
end;

procedure TFmprnAp10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:=Cafree;
end;

procedure TFmprnAp10.FormShow(Sender: TObject);
begin
    EditBtn.Visible := SFMAIN.XDesign='Y';
end;

procedure TFmprnAp10.raSelFromClick(Sender: TObject);
begin
   if raSelFrom.ItemIndex = 0 then
      Label4.Caption := 'พิมพ์เจ้าหนี้อื่น ๆ'
   else Label4.Caption := 'พิมพ์ใบมัดจำ';
end;

end.
