unit Apprn20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ComCtrls, ToolWin, FR_Class;

type
  TFmApPrn20 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    frReport1: TfrReport;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    PrintBtn1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure ToolButton1Click(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure PrintBtn1Click(Sender: TObject);
  private
    aReport : TQuickRep;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmApPrn20: TFmApPrn20;

implementation
uses USoftfirm;
{$R *.DFM}

procedure TFmApPrn20.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
      BEGIN
         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
         VAL := SFMain.n2wBill.Text;
      END;

end;

procedure TFmApPrn20.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
   IF Uppercase(ParName)='PAPBILL' THEN
      ParValue := Label6.Caption;
end;

procedure TFmApPrn20.ToolButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFmApPrn20.EditBtnClick(Sender: TObject);
begin
    frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_PrnCallAP.frf');
    frReport1.DesignReport;
end;

procedure TFmApPrn20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFmApPrn20.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMAIN.XDesign='Y';
end;

procedure TFmApPrn20.PrevBtnClick(Sender: TObject);
begin
    frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_PrnCallAP.frf');
    frReport1.ShowReport;
end;

procedure TFmApPrn20.PrintBtn1Click(Sender: TObject);
begin
   frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_PrnCallAP.frf');
   frReport1.PrepareReport;
   frReport1.PrintPreparedReportDlg;
end;

end.
