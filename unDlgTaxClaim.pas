unit unDlgTaxClaim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  RzLabel;

type
  TfrDlgTaxClaim = class(TForm)
    ToolBar1: TToolBar;
    PrevBtn: TToolButton;
    PrintBtn1: TToolButton;
    EditBtn: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    StatusBar1: TStatusBar;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    St: Integer;
    frpath: string;
  end;

var
  frDlgTaxClaim: TfrDlgTaxClaim;

implementation

uses
  usoftfirm, unTaxClaim, unfrPreview;

{$R *.DFM}

procedure TfrDlgTaxClaim.BitBtn3Click(Sender: TObject);
begin
  if RzLabel2.caption = '' then
  begin
    MessageDlg(' ไม่มีเลขที่ใบรายงาน', mtInformation, [mbYes], 0);
    MessageBeep(0);
    Abort;
  end;
//  frReport1.LoadFromFile(sfmain.frpath + 'FORMS\fr_TaxClaim.frf');
//  frCustPrev.Caption := 'Preview - ' + frReport1.FileName;
//  frReport1.Preview := frCustPrev.frPreview1;
//  if frReport1.PrepareReport then
//  begin
//    frReport1.ShowPreparedReport;
//    frCustPrev.ShowModal;
//  end;
end;

procedure TfrDlgTaxClaim.PrintBtnClick(Sender: TObject);
begin
  if rzLabel2.caption = '' then
  begin
    MessageDlg(' ไม่มีเลขที่ใบรับสินค้า', mtInformation, [mbYes], 0);
    MessageBeep(0);
    Abort;
  end;
//  frReport1.LoadFromFile(sfmain.frpath + 'FORMS\fr_TaxClaim.frf');
//  frReport1.PrepareReport;
//  frReport1.PrintPreparedReportDlg;
end;

procedure TfrDlgTaxClaim.EditBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath + 'FORMS\fr_TaxClaim.frf');
//  frREport1.DesignReport;
end;

procedure TfrDlgTaxClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrDlgTaxClaim.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PTAXNO' then
    ParValue := RzLabel2.Caption;
end;

procedure TfrDlgTaxClaim.ToolButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrDlgTaxClaim.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMAIN.XDesign = 'Y';
  rzLabel2.Caption := frTaxClaim.DBEdit2.Text;
  Statusbar1.Panels[0].Text := 'ผู้พิมพ์ ' + SFMain.Xuser_ID;
  Statusbar1.Panels[1].Text := FormatDateTime('วันที่พิมพ์  dd mmm eeee hh:mm', Now);
end;

procedure TfrDlgTaxClaim.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
end;

end.

