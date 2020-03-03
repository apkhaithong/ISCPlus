unit StprnA10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class;

type
  TFmStprnA10 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    ToolBar1: TToolBar;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    PrintBtn: TToolButton;
    ToolButton3: TToolButton;
    CloseBtn: TToolButton;
    frReport1: TfrReport;
    procedure PrintBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure EditBtnClick(Sender: TObject);
  private
    aReport : TQuickRep;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprnA10: TFmStprnA10;

implementation
uses exportst, USoftFirm, unfrPreview;

{$R *.DFM}

procedure TFmStprnA10.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ Export ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
end;

procedure TFmStprnA10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmStprnA10.PrevBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ Export ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(SFMain.frpath+'Reports\Fr_PrnExCkStk.frf');
   frCustPrev.Caption := 'Preview - '+frReport1.FileName;
   frReport1.Preview := frCustPrev.frPreview1;
   if frReport1.PrepareReport then
   Begin
      frReport1.ShowPreparedReport;
      frCustPrev.ShowModal;
   end;

end;

procedure TFmStprnA10.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
     If UpperCase(ParName)='PDOCNO' then
        ParValue:= Label6.caption;

end;

procedure TFmStprnA10.EditBtnClick(Sender: TObject);
begin
   frReport1.LoadFromFile(SFMain.frpath+'\Reports\Fr_PrnExCkStk.frf');
   frReport1.DesignReport;
end;

end.
