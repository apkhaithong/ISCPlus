unit PRNBIL101;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  n2wMoney, AdvGlowButton, AdvToolBar;

type
  TFmprnbil101 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    tbClose: TAdvGlowButton;
    Prevbtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevbtnClick(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure tbCloseClick(Sender: TObject);
  private

    { Private declarations }

  public
    { Public declarations }
    Xtop, Xheader, Xleft, Xfooter: Integer;
  end;

var
  Fmprnbil101: TFmprnbil101;
  CTP, frPath: string;
  CK: Boolean;

implementation

uses
  FlatFile, DmAr, USoftFirm, unfrPreview;

{$R *.DFM}

procedure TFmprnbil101.BitBtn3Click(Sender: TObject);
begin
  if Label6.caption = '' then
  begin
    MessageDlg(' ไม่มีเลขที่ Bill no. ', mtInformation, [mbYes], 0);
    MessageBeep(0);
    Abort;
  end;
//   frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_BillArPay.frf');
//   frReport1.ShowReport;
end;

procedure TFmprnbil101.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//      BEGIN
//         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//         VAL := SFMain.n2wBill.Text;
//      END;
end;

procedure TFmprnbil101.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if Uppercase(ParName) = 'PBILLNO' then
    ParValue := Label6.Caption;
end;

procedure TFmprnbil101.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFmprnbil101.PrevbtnClick(Sender: TObject);
begin
  if Label6.caption = '' then
  begin
    MessageDlg(' ไม่มีเลขที่ Bill no. ', mtInformation, [mbYes], 0);
    MessageBeep(0);
    Abort;
  end;
//  frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FR\fr_BillArPay.frf');
//  if frReport1.PrepareReport then
//  Begin
//    frReport1.ShowPreparedReport;
//    frCustPrev.ShowModal;
//  end;
end;

procedure TFmprnbil101.DesignBtnClick(Sender: TObject);
begin
  if SFMAIN.XDesign <> 'Y' then
  begin
    MessageDlg('ไม่มีสิทธิ์แก้ไข', mtWarning, [mbOK], 0);
    Exit;
  end
  else
  begin
//     frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FR\fr_BillArPay.frf');
//     frReport1.DesignReport;
  end;
end;

procedure TFmprnbil101.tbCloseClick(Sender: TObject);
begin
  close;
end;

end.

