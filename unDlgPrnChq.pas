unit unDlgPrnChq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class, FR_BDEDB, FR_Desgn;

type
  TfrDlgPrnCqh = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    frReport1: TfrReport;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure PrevBtnClick(Sender: TObject);
    procedure PrintBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
  private
    { Private declarations }
    CTP,frPath : string;
  public
    { Public declarations }
  end;

var
  frDlgPrnCqh: TfrDlgPrnCqh;

implementation
uses USoftFirm;

{$R *.DFM}

procedure TfrDlgPrnCqh.FormCreate(Sender: TObject);
begin
  ShortDateFormat :='DD/MM/YYYY';
  EditBtn.Visible := SFMAIN.XDesign='Y';
end;


procedure TfrDlgPrnCqh.EditBtnClick(Sender: TObject);
begin
   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnPayChq.frf');
   frReport1.DesignReport;
end;

procedure TfrDlgPrnCqh.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
   If UpperCase(ParName)='PPAYCHQ' then
      ParValue := Label6.Caption;
end;

procedure TfrDlgPrnCqh.PrevBtnClick(Sender: TObject);
begin
    frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnPayChq.frf');
    frReport1.ShowReport;
end;

procedure TfrDlgPrnCqh.PrintBtn1Click(Sender: TObject);
begin
    frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnPayChq.frf');
    frReport1.PrepareReport;
    frReport1.PrintPreparedReportDlg;
end;

procedure TfrDlgPrnCqh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=caFree;
end;

procedure TfrDlgPrnCqh.ToolButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrDlgPrnCqh.frReport1UserFunction(const Name: String; p1, p2,
p3: Variant; var Val: Variant);
begin
  IF UPPERCASE(NAME)='BAHTTEXT' THEN
  BEGIN
      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
      VAL := SFMain.n2wBill.Text;
  END;
end;

end.
