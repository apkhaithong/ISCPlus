unit unDlgCrdPost;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class;

type
  TfrCrdPost = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    CloseBtn: TToolButton;
    editBtn: TToolButton;
    frReport1: TfrReport;
    ToolButton1: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrintBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    aReport : TQuickRep;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCrdPost: TfrCrdPost;

implementation
uses CrdPost,USoftFirm;
{$R *.DFM}

procedure TfrCrdPost.BitBtn3Click(Sender: TObject);
begin
   frReport1.LoadFromFile(SFmain.frpath+'\FORMS\fr_CrdPost.frf');
   frReport1.ShowReport;
end;

procedure TfrCrdPost.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrCrdPost.editBtnClick(Sender: TObject);
begin
    frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_CrdPost.frf');
    frReport1.DesignReport;

end;

procedure TfrCrdPost.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PAPBILL' then
     ParValue := Label6.Caption;

end;

procedure TfrCrdPost.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;

end;

procedure TfrCrdPost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrCrdPost.PrintBtn1Click(Sender: TObject);
begin
      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_CrdPost.frf');
      frReport1.PrepareReport;
      frReport1.PrintPreparedReportDlg;
end;

procedure TfrCrdPost.FormShow(Sender: TObject);
begin
     Label6.Caption := FcrdPost.DBEdit6.Text;
end;

end.
