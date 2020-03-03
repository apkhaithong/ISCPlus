unit Stprn40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class, FR_BDEDB, FR_Desgn;

type
  TFmStprn40 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    frReport1: TfrReport;
    ToolBar1: TToolBar;
    PrevBtn: TToolButton;
    PrintBtn1: TToolButton;
    EditBtn: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    St:Integer;
    frpath : String;
  end;

var
  FmStprn40: TFmStprn40;

implementation
Uses usoftfirm, unfrPreview;

{$R *.DFM}

procedure TFmStprn40.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบรับสินค้า',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(sfmain.frpath+'FORMS\fr_Rcinv.frf');
   frCustPrev.Caption := 'Preview - '+frReport1.FileName;
   frReport1.Preview := frCustPrev.frPreview1;
   if frReport1.PrepareReport then
   Begin
      frReport1.ShowPreparedReport;
      frCustPrev.ShowModal;
   end;
end;

procedure TFmStprn40.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบรับสินค้า',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
        frReport1.LoadFromFile(sfmain.frpath+'FORMS\fr_Rcinv.frf');
        frReport1.PrepareReport;
        frReport1.PrintPreparedReportDlg;
end;


procedure TFmStprn40.EditBtnClick(Sender: TObject);
begin
        frReport1.LoadFromFile(sfmain.frpath+'FORMS\fr_Rcinv.frf');
        frREport1.DesignReport;
end;

procedure TFmStprn40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;

end;

procedure TFmStprn40.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PRECVNO' then
     ParValue := Label6.Caption;

end;

procedure TFmStprn40.ToolButton1Click(Sender: TObject);
begin
     Close;
end;

procedure TFmStprn40.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMAIN.XDesign='Y';
end;

end.
