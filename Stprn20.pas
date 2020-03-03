unit Stprn20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class;

type
  TFmStprn20 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    EditBtn: TToolButton;
    frReport1: TfrReport;
    CloseBtn: TToolButton;
    ToolButton1: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    aReport : TQuickRep;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn20: TFmStprn20;
  frPath :String;

implementation
uses Dmic01,Stin08,Stprn21,uSoftFirm;

{$R *.DFM}

procedure TFmStprn20.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบปรังปรุง',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
    frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_ADJINV.frf');
    frReport1.ShowReport;

end;

procedure TFmStprn20.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบปรังปรุง',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
    frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_ADJINV.frf');
    frReport1.PrepareReport;
    frReport1.PrintPreparedReportDlg;
end;

procedure TFmStprn20.EditBtnClick(Sender: TObject);
begin
        frReport1.LoadFromFile(sfmain.frpath+'\FORMS\fr_ADJINV.frf');
        frReport1.DesignReport;
end;

procedure TFmStprn20.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
     IF Uppercase(ParName)='PADJNO' THEN
        ParValue := Label6.Caption;
end;

procedure TFmStprn20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action:=Cafree;
end;

procedure TFmStprn20.CloseBtnClick(Sender: TObject);
begin
        Close;
end;

procedure TFmStprn20.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMAIN.XDesign='Y';
end;

end.
