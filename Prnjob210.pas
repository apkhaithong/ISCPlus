unit Prnjob210;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids,
  ComCtrls, ToolWin, ImgList, AdvGlowButton;

type
  TFprnjob10_2 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label1: TLabel;
    PrevBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprnjob10_2: TFprnjob10_2;
 // frPath :String;

implementation

uses
  DMSV, DmSvSet, USoftFirm, unfrPreview;

{$R *.DFM}

procedure TFprnjob10_2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Label1.Caption := '';
  Action := caFree;
end;

procedure TFprnjob10_2.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFprnjob10_2.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if Uppercase(ParName) = 'PJOBNO' then
    ParValue := Label1.Caption;
end;

procedure TFprnjob10_2.EditBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frPath+'\FR\fr_SummaryJob.frf');
//  frReport1.DesignReport;
end;

procedure TFprnjob10_2.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFprnjob10_2.PrevBtnClick(Sender: TObject);
begin
//   frReport1.LoadFromFile(sfmain.frpath+'\FR\fr_SummaryJob.frf');
//   frCustPrev.Caption := 'Preview - '+frReport1.FileName;
//   frReport1.Preview := frCustPrev.frPreview1;
//   if frReport1.PrepareReport then
//   Begin
//      frReport1.ShowPreparedReport;
//      frCustPrev.ShowModal;
//   end;
end;

procedure TFprnjob10_2.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
// IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
//  IF Uppercase(NAME)='DATETHAI' Then
//  Begin
//     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
//  End;
end;

end.

