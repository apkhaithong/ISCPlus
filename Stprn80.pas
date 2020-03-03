unit Stprn80;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class;

type
  TFmStprn80 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    AdjBtn1: TToolButton;
    CloseBtn: TToolButton;
    frReport1: TfrReport;
    ToolButton1: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure AdjBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FmStprn80: TFmStprn80;
  CTP,Fopt,Fname,HeadLabel:string;
implementation
uses Stin05,Dmic01,usoftfirm;
{$R *.DFM}
            

procedure TFmStprn80.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่การคืนสินค้า ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   IF ComboBox1.ItemIndex=0 then
   Begin
      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_IcInvRT.frf');
      frReport1.ShowReport;
   End;
   IF ComboBox1.ItemIndex=1 then
   Begin
      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_IcPkRT.frf');
      frReport1.ShowReport;
   End;
   IF ComboBox1.ItemIndex=2 then
   Begin
      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_SvPkRT.frf');
      frReport1.ShowReport;
   End;
end;

procedure TFmStprn80.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่การคืนสินค้า ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   IF ComboBox1.ItemIndex=0 then
      Begin
      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_IcInvRT.frf');
      frReport1.PrepareReport;
      frReport1.PrintPreparedReportDlg;
      End;
   IF ComboBox1.ItemIndex=1 then
      Begin
      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_IcPkRT.frf');
      frReport1.PrepareReport;
      frReport1.PrintPreparedReportDlg;
      End;
   IF ComboBox1.ItemIndex=2 then
      Begin
      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_SvPkRT.frf');
      frReport1.PrepareReport;
      frReport1.PrintPreparedReportDlg;
      End;
end;


procedure TFmStprn80.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmStprn80.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        If UpperCase(ParName)='PRTNNO' Then
           ParValue:=Label6.Caption;
end;

procedure TFmStprn80.AdjBtn1Click(Sender: TObject);
begin
   if SFMAIN.XDesign<>'Y' Then
   Begin
       MessageDlg('ไม่มีสิทธิแก้ไขฟอร์ม', mtWarning, [mbOK], 0);
       Exit;
   End Else
//หัว
   Begin
   IF ComboBox1.ItemIndex=0 then
      Begin
      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_IcInvRT.frf');
      frReport1.DesignReport;
      End;
   IF ComboBox1.ItemIndex=1 then
      Begin
      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_IcPkRT.frf');
      frReport1.DesignReport;
      End;
   IF ComboBox1.ItemIndex=2 then
      Begin
      frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_SvPkRT.frf');
      frReport1.DesignReport;
      End;
//ท้าย
   End;
end;

procedure TFmStprn80.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action:=CaFree;
end;

procedure TFmStprn80.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
  BEGIN
     SFMain.n2wBill.Value := FRPARSER.Calc(P1);
     VAL := SFMain.n2wBill.Text;
  END;
end;

end.
