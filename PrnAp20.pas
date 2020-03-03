unit PrnAp20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  n2wMoney, FR_Class, FR_Desgn, RzButton, RzRadChk, RzPanel, RzRadGrp;

type
  TFmprnAp20 = class(TForm)
    Label4: TLabel;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    DesignFrm: TToolButton;
    CloseBtn: TToolButton;
    frReport1: TfrReport;
    ToolButton1: TToolButton;
    StatusBar1: TStatusBar;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure DesignFrmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FOpt,CTP,RpStr : String;
    Xtop,Xheader,Xleft,Xfooter:Integer;
  end;

var
  FmprnAp20: TFmprnAp20;


implementation
uses prnAp21,Apinv04,DmAp, USoftFirm, unfrPreview;

{$R *.DFM}

procedure TFmprnAp20.BitBtn3Click(Sender: TObject);
begin
   If Apinv_4.DBEdit10.Text = '0' then
   begin
      MessageDlg(' ภาษีเป็น 0 ออกใบกำกับภาษีไม่ได้ ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบกำกับภาษี ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
     frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnAPinvNo.frf');
     frCustPrev.Caption := 'Preview - '+frReport1.FileName;
     frReport1.Preview := frCustPrev.frPreview1;
     if frReport1.PrepareReport then
     Begin
       frReport1.ShowPreparedReport;
       frCustPrev.ShowModal;
     end;
end;

procedure TFmprnAp20.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่การขายสินค้า ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnAPinvNo.frf');
   frReport1.PrepareReport;
   frReport1.PrintPreparedReportDlg;
end;


procedure TFmprnAp20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFmprnAp20.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmprnAp20.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;
end;

procedure TFmprnAp20.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
     IF Uppercase(ParName)='PRECVNO' THEN
        ParValue := Label6.Caption;
end;

procedure TFmprnAp20.DesignFrmClick(Sender: TObject);
begin
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnAPinvNo.frf');
   frReport1.DesignReport;
end;

procedure TFmprnAp20.FormShow(Sender: TObject);
begin
   DesignFrm.Visible := SFMain.XDesign='Y';
end;

end.
