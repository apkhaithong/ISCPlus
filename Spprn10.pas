unit Spprn10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, ExtCtrls, DB, Grids, DBGrids,
  ComCtrls, RzButton, Dbkbd, ToolWin, AdvGlowButton;

type
  TFSpprn10 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    PrevBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    procedure CloseBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure EditBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
  private
//    aReport : TQuickRep;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSpprn10 : TFSpprn10;
  frPath :String;

implementation
uses DmSvSet,Spin01,Spprn11,USoftFirm, unfrPreview;

{$R *.DFM}

procedure TFSpprn10.CloseBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFSpprn10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFSpprn10.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
     IF Uppercase(ParName)='PORDNO' THEN
        ParValue := Label6.Caption;
end;

procedure TFSpprn10.EditBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(SFMain.frpath+'\FR\fr_PkSv.frf');
//  frReport1.DesignReport;
end;

procedure TFSpprn10.FormCreate(Sender: TObject);
begin
  EditBtn.Visible := SFMain.XDesign='Y';
end;

procedure TFSpprn10.CloseBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TFSpprn10.PrevBtnClick(Sender: TObject);
begin
//  frReport1.LoadFromFile(sfmain.frpath+'\FR\fr_PKsv.frf');
//  frCustPrev.Caption := 'Preview - '+frReport1.FileName;
//  frReport1.Preview := frCustPrev.frPreview1;
//  if frReport1.PrepareReport then
//  Begin
//    frReport1.ShowPreparedReport;
//    frCustPrev.ShowModal;
//  end;
end;

procedure TFSpprn10.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
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
