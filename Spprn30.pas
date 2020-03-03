unit Spprn30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids,
  ComCtrls, ToolWin, FR_Class;

type
  TFSpprn30 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    EditBtn: TToolButton;
    ToolButton4: TToolButton;
    frReport1: TfrReport;
    ToolButton5: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton4Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FSpprn30 : TFSpprn30;
  CTP,frPath :string;

implementation
uses DmSvSet,Dmsv,USoftFirm, unfrPreview;

{$R *.DFM}


procedure TFSpprn30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end; 

procedure TFSpprn30.ToolButton4Click(Sender: TObject);
begin
  Label1.Caption := '';
  Label6.Caption := '';
  Close;
end;

procedure TFSpprn30.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        If UpperCase(ParName)='PTAXNO' THEN
        ParValue:=Label1.Caption;
end;

procedure TFSpprn30.ToolButton1Click(Sender: TObject);
begin
   if Label1.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบกำกับ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
     frReport1.LoadFromFile(SFMAIN.frpath+'FORMS\fr_PrnSVInvS3.frf');
     frCustPrev.Caption := 'Preview - '+frReport1.FileName;
     frReport1.Preview := frCustPrev.frPreview1;
     if frReport1.PrepareReport then
     Begin
       frReport1.ShowPreparedReport;
       frCustPrev.ShowModal;
     end;
end;

procedure TFSpprn30.ToolButton2Click(Sender: TObject);
begin
   if Label1.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบกำกับ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(SFMAIN.frpath+'\FORMS\fr_PrnSVInvS3.frf');
   frReport1.PrepareReport;
   frReport1.PrintPreparedReportDlg;
end;

procedure TFSpprn30.EditBtnClick(Sender: TObject);
begin
    frReport1.LoadFromFile(SFMAIN.frpath+'\FORMS\fr_PrnSVInvS3.frf');
    frReport1.DesignReport;
end;

procedure TFSpprn30.FormShow(Sender: TObject);
begin
   EditBtn.Visible := SFMain.XDesign='Y';

end;

procedure TFSpprn30.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
  BEGIN
     SFMain.n2wBill.Value := FRPARSER.Calc(P1);
     VAL := SFMain.n2wBill.Text;
  END;
end;

end.
