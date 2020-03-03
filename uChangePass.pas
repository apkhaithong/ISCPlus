unit uChangePass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, StdCtrls, ActnList, DB, Dbkbd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrChqPasswd = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    ToolBar1: TToolBar;
    SavBtn: TToolButton;
    CloseBtn: TToolButton;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    qrChqPasswd: TFDQuery;
    DBkbd1: TDBkbd;
    ToolButton1: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frChqPasswd: TfrChqPasswd;

implementation
uses Usoftfirm,DMSEC;

{$R *.dfm}

procedure TfrChqPasswd.FormShow(Sender: TObject);
begin
    qrChqPasswd.Close;
    qrChqPasswd.ParamByName('VUSERID').AsString := SFMain.Xuser_ID;
    qrChqPasswd.ParamByName('VPASSWD').AsString := SFMain.XPasswd;
    qrChqPasswd.Open;
    if not (qrChqPasswd.Eof and qrChqPasswd.Bof) then
       GroupBox1.Caption :='เปลี่ยนรหัสผ่าน ของ User [ '+qrChqPasswd.fieldbyname('USERID').AsString +' ]';
end;

procedure TfrChqPasswd.Edit1Exit(Sender: TObject);
begin
    DM_SEC.Decode := Edit1.Text;
    DM_SEC.EndCode(DM_SEC.Decode,SFMain.Xuser_ID,'0');
    qrChqPasswd.Close;
    qrChqPasswd.ParamByName('VUSERID').AsString := SFMain.Xuser_ID;
    qrChqPasswd.ParamByName('VPASSWD').AsString := DM_SEC.Xtprd;
    qrChqPasswd.Open;
    if qrChqPasswd.Eof and qrChqPasswd.Bof then
    begin
       MessageDlg('รหัสผ่านไม่ถูกต้องกรุณาใส่ใหม่', mtError, [mbOK], 0);
       Edit1.SetFocus;
    end;
end;

procedure TfrChqPasswd.Edit3Exit(Sender: TObject);
begin
   if Edit2.Text=Edit3.Text then
      SavBtn.Enabled := True
   else
   begin
      MessageDlg('ยืนยันรัหสผ่านไม่ถูกต้องกรุณาตรวจสอบใหม่', mtError, [mbOK], 0);
      Edit3.SetFocus;
   end;      

end;

procedure TfrChqPasswd.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrChqPasswd.SavBtnClick(Sender: TObject);
begin
    DM_SEC.Decode := Edit3.Text;
    DM_SEC.EndCode(DM_SEC.Decode,SFMain.Xuser_ID,'0');
    with qrChqPasswd do
    Begin
       close;
       sql.Clear;
       sql.Add('UPDATE SECRET SET ENDCODE=:0,PASSWD=:1 WHERE USERID=:2');
       params[0].AsString := DM_SEC.Xtprd;
       params[1].AsString := '@@@@@@@@';
       params[2].AsString := SFMain.Xuser_ID;
       ExecSql;
    end;
    MessageDlg('เปลี่ยนรหัสผ่านเรียบร้อยแล้ว', mtConfirmation, [mbOK], 0);
    SavBtn.Enabled := False;
end;

procedure TfrChqPasswd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
  frChqPasswd := nil;
end;

end.
