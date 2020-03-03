unit Stprn30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, ImgList, ComCtrls, ToolWin,
  FR_Class, Dbkbd;

type
  TFmStprn30 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    CloseBtn: TToolButton;
    frReport1: TfrReport;
    EditBtn: TToolButton;
    ToolButton1: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    aReport : TQuickRep;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStprn30: TFmStprn30;

implementation
uses Dmic01,Stin10,USoftFirm;

{$R *.DFM}

procedure TFmStprn30.BitBtn3Click(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบปรับปรุง ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(SFMAIN.frpath+'\FORMS\fr_AdjTmpUpdate.frf');
   frReport1.ShowReport;
end;

procedure TFmStprn30.PrintBtnClick(Sender: TObject);
begin
   if Label6.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ใบปรับปรุง ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
   frReport1.LoadFromFile(SFMAIN.frpath+'\FORMS\fr_AdjTmpUpdate.frf');
   frReport1.PrepareReport;
   frReport1.PrintPreparedReportDlg;
end;

procedure TFmStprn30.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmStprn30.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
        IF UpperCase(Parname)='PADJTMP' THEN
        ParValue:=Label6.Caption;
end;

procedure TFmStprn30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFmStprn30.EditBtnClick(Sender: TObject);
begin
   frReport1.LoadFromFile(SFMAIN.frpath+'\FORMS\fr_AdjTmpUpdate.frf');
   frReport1.DesignReport;
end;

procedure TFmStprn30.FormShow(Sender: TObject);
begin
    EditBtn.Visible := SFMAIN.XDesign='Y';
end;

end.
