unit Chgregno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ComCtrls, StdCtrls, Dbkbd, NxEdit, RzButton, Mask,
  RzEdit;

type
  TFChgregno = class(TForm)
    Label40: TLabel;
    Label41: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    DBkbd1: TDBkbd;
    Edit3: TRzEdit;
    Edit4: TRzEdit;
    Edit5: TRzEdit;
    ProcBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure ProcBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure Edit2ButtonClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChgregno: TFChgregno;

implementation
Uses Dmsvset,Srchdlg,uSrcDlg;
{$R *.DFM}

procedure TFChgregno.ProcBtn1Click(Sender: TObject);
begin
  If (Edit1.Text ='') and (Edit2.Text ='') Then
  SFMain.RaiseException('ยังไม่บันทึกเลขทะเบียนเดิม หรือ เลขตัวถัง');

  ProgressBar1.Position := 10;
  With Dm_svset.Query1 Do
  Begin
    Close;
    SQL.Clear;
    If (EDIT1.TEXT='') and (EDIT2.TEXT<>'') Then
     SQL.Add('UPDATE SVMAST SET REGNO=:EDIT1 WHERE (REGNO IS NULL OR REGNO=:EDIT2) AND STRNO=:EDIT3')
    Else
     SQL.Add('UPDATE SVMAST SET REGNO=:EDIT1 WHERE REGNO=:EDIT2 AND STRNO=:EDIT3');

    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    Params[2].asstring := EDIT2.TEXT;
    ExecSql;
  End;

  ProgressBar1.Position := 50;
  With Dm_svset.Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE BOOKSERV SET REGNO=:EDIT1 WHERE REGNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Position := 70;
  With Dm_svset.Query1 Do
  Begin
    Close;
    SQL.Clear;
    If (EDIT1.TEXT='') and (EDIT2.TEXT<>'') Then
     SQL.Add('UPDATE QA_INVOI SET REGNO=:EDIT1 WHERE (REGNO IS NULL OR REGNO=:EDIT2) AND STRNO=:EDIT3')
    Else
     SQL.Add('UPDATE QA_INVOI SET REGNO=:EDIT1 WHERE REGNO=:EDIT2 AND STRNO=:EDIT3');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    Params[2].asstring := EDIT2.TEXT;
    ExecSql;
  End;
  ProgressBar1.Position := 90;
  With Dm_svset.Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE TOPCAR SET REGNO=:EDIT1 WHERE REGNO=:EDIT2');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Position := 100;
  ProgressBar1.Position := 0;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
end;


procedure TFChgregno.Edit1Exit(Sender: TObject);
begin
  If Edit1.Text<>'' Then
  With Dm_svset.Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SVMAST WHERE REGNO=:EDIT1');
    Params[0].asstring := EDIT1.Text;
    Open;
    If Dm_svset.Query1.Bof and Dm_svset.Query1.Eof Then
    begin
      Edit1.Setfocus;
      SFMain.RaiseException('ไม่พบทะเบียนหมายเลขนี้');
    end;
    Edit2.Text := Dm_svset.Query1.Fieldbyname('STRNO').asstring;
    Edit3.Text := Dm_svset.Query1.Fieldbyname('Baab').asstring;
    Edit4.Text := Dm_svset.Query1.Fieldbyname('Color').asstring;
  End;
end;

procedure TFChgregno.Edit1Change(Sender: TObject);
begin
  ProcBtn1.Enabled := (Edit1.Text<>'') Or (Edit2.Text<>'');
end;


procedure TFChgregno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFChgregno.Edit1ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalSvmst=Mrok Then
  Edit1.Text := fSrcDlg.qrFindDat.Fieldbyname('Regno').asstring;
end;

procedure TFChgregno.Edit2ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalSvmst=Mrok Then
  Edit2.Text := fSrcDlg.Keyno;
end;

procedure TFChgregno.RzBitBtn2Click(Sender: TObject);
begin
        close;
end;

end.
