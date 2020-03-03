unit Stprna20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin;

type
  TFmStprnA20 = class(TForm)
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    Label4: TLabel;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    Bevel1: TBevel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    CloseBtn: TToolButton;
    ToolButton1: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    aReport : TQuickRep;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprnA20: TFmStprnA20;

implementation
uses exportst,StprnA21;

{$R *.DFM}

procedure TFmStprnA20.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ Export ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   Application.CreateForm(TFmStprnA21,FmStprnA21);
   aReport := FmStprnA21.QRep;
   aReport.Preview;
end;

procedure TFmStprnA20.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ Export ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   Application.CreateForm(TFmStprnA21,FmStprnA21);
   aReport := FmStprnA21.QRep;
   aReport.Print;
end;

procedure TFmStprnA20.CloseBtnClick(Sender: TObject);
begin
close;
end;

end.
