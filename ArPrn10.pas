unit ArPrn10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class, n2wMoney;

type
  TFmArPrn10 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    CloseBtn: TToolButton;
    frReport1: TfrReport;
    editBtn: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure editBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmArPrn10: TFmArPrn10;
  ctp : string;
implementation
uses Arinv02, DmAr, USoftFirm;
{$R *.DFM}

procedure TFmArPrn10.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบวางบิล',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
        frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_PrnAr01.frf');
        frReport1.ShowReport;
end;


procedure TFmArPrn10.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบวางบิล',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
        frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_PrnAr01.frf');
        frReport1.PrePareReport;
        frReport1.PrintPreparedReportDlg;
end;

procedure TFmArPrn10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmArPrn10.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;
end;

procedure TFmArPrn10.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PARBILL' then
     ParValue := Label6.Caption;
end;

procedure TFmArPrn10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := CaFree;
end;

procedure TFmArPrn10.editBtnClick(Sender: TObject);
begin
   frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_PrnAr01.frf');
   frReport1.DesignReport;
end;

procedure TFmArPrn10.FormShow(Sender: TObject);
begin
   editBtn.Visible := SFMAIN.XDesign='Y';
end;

end.
