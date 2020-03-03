unit uChgPwd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls, ExtCtrls, Dbkbd, DB,
  AdvGlowButton, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  dxStatusBar, AdvPanel;

type
  TfrChgPwd = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    SavBtn: TAdvGlowButton;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frChgPwd: TfrChgPwd;

implementation
uses USoftFirm, Dmsec;

{$R *.dfm}

procedure TfrChgPwd.CloseBtnClick(Sender: TObject);
begin
    Close;
end;

procedure TfrChgPwd.FormShow(Sender: TObject);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT P.USERID,O.NAME FROM SECRET P,OFFICER O WHERE P.CUSCOD=O.CODE AND P.USERID =:0');
    params[0].AsString := sfmain.Xuser_ID;
    open;
  end;
end;

procedure TfrChgPwd.SavBtnClick(Sender: TObject);
begin
  Edit1.SetFocus;
    dm_sec.Decode := Edit3.Text;
    dm_sec.EndCode(dm_sec.Decode,sfmain.Xuser_ID,'0');

    with query1 do
    begin
      close;
      sql.Clear;
      sql.Add('UPDATE SECRET SET ENDCODE=:EDIT3 WHERE USERID =:EDIT1');
      params[0].AsString := dm_sec.Xtprd;
      params[1].AsString := sfmain.Xuser_ID;
      execSql;
    end;
    MessageDlg('เปลี่ยนรหัสผ่านใหม่แล้ว', mtInformation, [mbOK], 0);
    SavBtn.Enabled := False;
    frChgPwd.Close;
end;

procedure TfrChgPwd.Edit1Exit(Sender: TObject);
begin
    dm_sec.Decode := Edit1.Text;
    dm_sec.EndCode(dm_sec.Decode,sfmain.Xuser_ID,'0');

    with query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT USERID,PASSWD,ENDCODE FROM SECRET WHERE USERID =:0 AND ENDCODE =:1');
      params[0].AsString := sfmain.Xuser_ID;
      params[1].AsString := dm_sec.Xtprd;
      open;
    end;
    if Query1.Bof and Query1.Eof then
    Begin
      MessageDlg('รหัสผ่านไม่ถูกต้อง..!', mtError, [mbOK], 0);
      Edit1.SetFocus;
      Label4.Visible := True;
    End else
      Label4.Visible := False;
end;

procedure TfrChgPwd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   frChgPwd :=nil;
   action :=cafree;
end;

procedure TfrChgPwd.Edit3Exit(Sender: TObject);
begin
    if Edit3.Text <> Edit2.Text then
    Begin
       MessageDlg('ยืนยันรหัสผ่านไม่ตรงกัน..!', mtError, [mbOK], 0);
       Edit3.SetFocus;
       Label6.Visible := True;
    End Else
    begin
       SavBtn.Enabled := True;
       Edit2.Enabled := False;
       Edit3.Enabled := False;
       Label6.Visible := False;
    end;   
end;

procedure TfrChgPwd.Edit2Exit(Sender: TObject);
begin
   if Edit2.Text = Edit1.Text then
   Begin
      MessageDlg('เป็นรหัสเดิมที่มีอยู่แล้ว..!', mtError, [mbOK], 0);
      Edit2.SetFocus;
      Label5.Visible := True;
   End else
      Label5.Visible := False;
end;

procedure TfrChgPwd.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSET','HDSET01_B');
end;

end.
