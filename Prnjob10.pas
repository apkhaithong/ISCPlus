unit Prnjob10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, QuickRpt, ExtCtrls, DB, Grids, DBGrids,
  ComCtrls, ToolWin, ImgList;

type
  TFprnjob10 = class(TForm)
    Shape1: TShape;
    Label4: TLabel;
    Label1: TLabel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    PrintBtn1: TToolButton;
    PrevBtn: TToolButton;
    CloseBtn: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure ToolButton1Click(Sender: TObject);
  private
    procedure SetForm;
    { Private declarations }
  public
    { Public declarations }
    Xtop,Xheader,Xleft,Xfooter:Integer;
  end;
var
  Fprnjob10 : TFprnjob10;
  N : integer;
  CTP,TF,frPath :String;

implementation
uses DMSV,Prnjob11,FlatFile, DmSvSet,USoftFirm;

{$R *.DFM}


procedure TFprnjob10.SetForm;
begin
  // Setup Frame
  Application.CreateForm(TFmflagfile,Fmflagfile);
  With Fmflagfile Do
  Begin
    Formnm := Fprnjob10.Name;
    ReadMargin;
    Xtop    := SpinEdit1.Value  ;
    XHeader := SpinEdit2.Value;
    Xleft   := SpinEdit3.Value;
    Xfooter := SpinEdit4.Value;
  end;
  Fmflagfile.Close;
  //
end;

procedure TFprnjob10.BitBtn3Click(Sender: TObject);
begin
   if Label1.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ JOBNO. ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
//  frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnJob.frf');
//  frReport1.ShowReport;
end;

procedure TFprnjob10.PrintBtnClick(Sender: TObject);
begin
   if Label1.caption = '' then
   begin
      MessageDlg(' ไม่มีเลขที่ JOBNO. ',mtInformation, [mbYes], 0);
      MessageBeep(0);
      Abort;
   end;
//  frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnJob.frf');
//  frReport1.PrepareReport;
//  frReport1.PrintPreparedReportDlg;

end;

procedure TFprnjob10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Label1.Caption := '';
  Action := caFree;
end;


procedure TFprnjob10.CloseBtnClick(Sender: TObject);
begin
      if SFMAIN.XDesign<>'Y' Then
      Begin
          MessageDlg('ไม่มีสิทธิแก้ไขฟอร์ม', mtWarning, [mbOK], 0);
          Exit;
      End Else
      Begin
//      frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_PrnJob.frf');
//      frReport1.DesignReport;
      End;
end;

procedure TFprnjob10.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
     IF Uppercase(ParName)='PJOBNO' THEN
        ParValue := Label1.Caption;
end;

procedure TFprnjob10.ToolButton1Click(Sender: TObject);
begin
        Close;
end;

end.
