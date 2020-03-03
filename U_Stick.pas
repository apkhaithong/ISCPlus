unit U_Stick;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  ExtCtrls, FR_Class, Mask, FR_Desgn,
  RzButton,  ComCtrls, ToolWin, RzSpnEdt, RzPanel;

type
  TUstick = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    Edit2: TEdit;
    Edit6: TEdit;
    Edit11: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    frReport1: TfrReport;
    Label8: TLabel;
    SpeedButton1: TRzRapidFireButton;
    SpeedButton2: TRzRapidFireButton;
    Bevel1: TBevel;
    RzStatusBar1: TRzStatusBar;
    Bevel2: TBevel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    BitBtn1: TToolButton;
    BitBtn4: TToolButton;
    BitBtn2: TToolButton;
    ToolButton4: TToolButton;
    BitBtn3: TToolButton;
    Edit10: TEdit;
    RzRapidFireButton1: TRzRapidFireButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ustick: TUstick;
  frPath :String;

implementation
Uses DmSvSet,SrchDlgSet,USoftFirm,Functn01, DmSet1,uSrcDlg;
{$R *.dfm}

procedure TUstick.SpeedButton1Click(Sender: TObject);
begin
  Application.Createform(Tfsrcdlg,fSrcDlg);
  If fsrcdlg.ShowModalAR=Mrok Then
  Edit1.Text := fsrcdlg.Keyno;
End;
procedure TUstick.SpeedButton2Click(Sender: TObject);
begin
  Application.Createform(Tfsrcdlg,fSrcDlg);
  If fsrcdlg.ShowModalAR=Mrok Then
  Edit4.Text := fsrcdlg.Keyno;
End;

procedure TUstick.BitBtn3Click(Sender: TObject);
begin
        Close;
end;

procedure TUstick.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
     if UpperCase(ParName) = 'PFCUSCOD' then
     ParValue := Edit1.Text;
     if UpperCase(ParName) = 'PTCUSCOD' then
     ParValue := Edit4.Text;
     if UpperCase(ParName) = 'PSALLEV' then
     ParValue := Edit2.Text+'%';
     if UpperCase(ParName) = 'PGRADE' then
     ParValue := Edit6.Text+'%';
     if UpperCase(ParName) = 'PTUMB' then
     ParValue := Edit7.Text+'%';
     if UpperCase(ParName) = 'PAUMP' then
     ParValue := Edit8.Text+'%';
     if UpperCase(ParName) = 'PPROV' then
     ParValue := Edit9.Text+'%';
     if UpperCase(ParName) = 'PPROSPECT' then
     ParValue := Edit11.Text+'%';
     IF UpperCase(ParName) = 'PGAR' Then
     ParValue := Edit10.Text+'%';

end;

procedure TUstick.BitBtn1Click(Sender: TObject);
begin
        If edit4.Text='' Then
        Begin
        Edit4.Text := 'Î';
        frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_StickerAR.frf');
        frReport1.ShowReport;
        End
        Else
        Begin
        frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_StickerAR.frf');
        frReport1.ShowReport;
        End;
end;

procedure TUstick.BitBtn2Click(Sender: TObject);
begin
        If Edit4.Text='' Then
        Begin
        Edit4.Text := 'Î';
        frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_StickerAR.frf');
        frReport1.PrepareReport;
        frReport1.PrintPreparedReportDlg;
        End Else
        Begin
        frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_StickerAR.frf');
        frReport1.PrepareReport;
        frReport1.PrintPreparedReportDlg;
        End;
end;

procedure TUstick.BitBtn4Click(Sender: TObject);
begin
        frReport1.LoadFromFile(ExtractFilePath(Application.EXEName)+'\FORMS\fr_StickerAR.frf');
        frReport1.DesignReport;
end;

procedure TUstick.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action:=Cafree;
end;

procedure TUstick.FormCreate(Sender: TObject);
begin
   SFMain.Check_right('HDSET', 'FILE02_31');
end;

procedure TUstick.RzRapidFireButton1Click(Sender: TObject);
begin
  Application.Createform(Tfsrcdlg,fSrcDlg);
  If fsrcdlg.ShowModalARGROUP=Mrok Then
     Edit10.Text := fsrcdlg.Keyno;

end;

end.
