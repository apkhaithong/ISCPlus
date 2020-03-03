unit Spprn20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids,
  ImgList, ComCtrls, ToolWin, FR_Class;

type
  TFSpprn20 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    ToolButton1: TToolButton;
    frReport1: TfrReport;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure CloseBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure FormShow(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Xtop,Xheader,Xleft,Xfooter:Integer;
    CTP,frpath : string;
  end;

var
  FSpprn20 : TFSpprn20;

implementation
uses DmSv, DmSvSet,USoftFirm, unfrPreview;

{$R *.DFM}


procedure TFSpprn20.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบส่งสินค้า',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'FORMS\fr_PrnSVInvNo.frf');
   frCustPrev.Caption := 'Preview - '+frReport1.FileName;
   frReport1.Preview := frCustPrev.frPreview1;
   if frReport1.PrepareReport then
   Begin
      frReport1.ShowPreparedReport;
      frCustPrev.ShowModal;
   end;
end;

procedure TFSpprn20.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบส่งสินค้า ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnSVInvno.frf');
   frReport1.PrepareReport;
   frReport1.PrintPreparedReportDlg;
end;

procedure TFSpprn20.CloseBtn1Click(Sender: TObject);
begin
  Label1.Caption := '';
  Label6.Caption := '';
  Close;
end;

procedure TFSpprn20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TFSpprn20.EditBtnClick(Sender: TObject);
begin
    frReport1.LoadFromFile(SFMAIN.frpath+'\FORMS\fr_PrnSVInvno.frf');
    frReport1.DesignReport;
end;

procedure TFSpprn20.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
   IF Uppercase(ParName)='PDEVNO' THEN
      ParValue := Label6.Caption;

end;

procedure TFSpprn20.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
  BEGIN
     SFMain.n2wBill.Value := FRPARSER.Calc(P1);
     VAL := SFMain.n2wBill.Text;
  END;
end;

procedure TFSpprn20.FormShow(Sender: TObject);
begin
   EditBtn.Visible := SFMain.XDesign='Y';
end;

procedure TFSpprn20.ToolButton1Click(Sender: TObject);
begin
   Close;
end;

end.
