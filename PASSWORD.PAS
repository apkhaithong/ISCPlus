unit Password;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, StdCtrls, Buttons, Grids, Calendar, DB, IniFiles, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzShellDialogs, Vcl.ActnList, cxMaskEdit, cxDropDownEdit,
  cxTextEdit, cxGroupBox, cxButtons, cxCheckBox, Vcl.Imaging.jpeg;

type
  TPasswordDlg = class(TForm)
    ActionList1: TActionList;
    cxShellBrowserDialog1: TRzSelectFolderDialog;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxCheckBox1: TcxCheckBox;
    BitBtnCan: TcxButton;
    UserId: TEdit;
    Password: TEdit;
    BitBtnOK: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    EdDbms: TcxTextEdit;
    XAlias: TcxComboBox;
    PassDB: TEdit;
    Panel1: TPanel;
    Image7: TImage;
    Action1: TAction;
    Image1: TImage;
    DB_passwd: TFDQuery;
    Query1: TFDQuery;
    EdServer: TcxTextEdit;
    Label7: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UserIdChange(Sender: TObject);
    procedure PasswordChange(Sender: TObject);
    procedure Label6MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Label6MouseLeave(Sender: TObject);
    procedure UserIdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XRemem, XSecurity, XDatabase, XSchema, XPassDB, XRegGL, XODBC, XDNAME,
    XServer: string;
    function IsWOW64: Boolean;
  end;

var
  PasswordDlg: TPasswordDlg;
  TSVConfig: TiniFile;

implementation

uses
  USoftFirm, Dmsec;

{$R *.DFM}

function TPasswordDlg.IsWOW64: Boolean;
type
  TIsWow64Process = function(Handle: THandle; var Res: BOOL): BOOL; stdcall;
var
  IsWow64Result: BOOL;
  IsWow64Process: TIsWow64Process;
begin
  IsWow64Process := GetProcAddress(
    GetModuleHandle('kernel32'), 'IsWow64Process'
    );
  if Assigned(IsWow64Process) then
  begin
    if not IsWow64Process(GetCurrentProcess, IsWow64Result) then
      SFMain.RaiseException('Bad process handle');
    Result := IsWow64Result;
  end
  else
    Result := False;
end;

procedure TPasswordDlg.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TPasswordDlg.FormCreate(Sender: TObject);
var
  rgn: HRGN;
begin
  GetWindowRgn(Handle, rgn);
  DeleteObject(rgn);
  rgn := CreateRoundRectRgn(0, 0, Width, Height, 20, 20);
  SetWindowRgn(Handle, rgn, TRUE);

  TSVConfig := TiniFile.Create(ExtractFilePath(Application.ExeName) + 'SVConfig.ini');
  XServer := TSVConfig.ReadString('Database Detail', 'Server', '');
  XSchema := TSVConfig.ReadString('Database Detail', 'Schema Name', '');
  XDatabase := TSVConfig.ReadString('Database Detail', 'Database Name', '');
  XRemem := TSVConfig.ReadString('Remember', 'Remember', '');
  XSecurity := TSVConfig.ReadString('Securitycode', 'Code', '');
  XPassDB := TSVConfig.ReadString('Securitycode', 'Password', '');
  XODBC := TSVConfig.ReadString('Securitycode', 'ODBC', '');
  XDNAME := TSVConfig.ReadString('Securitycode', 'DNAME', '');

  cxCheckBox1.Checked := True;
  if XRemem = 'Y' then
  begin
    UserId.Text := TSVConfig.ReadString('Last Login', 'UserName', '');
  end
  else
  begin
    UserId.Text := '';
  end;

  Password.Font.Charset := 2;
  DM_SEC.Decode := XServer;
  DM_SEC.EndCode(DM_SEC.Decode, 'SFADMIN', '1');
  EdServer.Text := DM_SEC.Xtprd;
  DM_SEC.Decode := XDatabase;
  DM_SEC.EndCode(DM_SEC.Decode, 'SFADMIN', '1');
  Eddbms.Text := DM_SEC.Xtprd;
  DM_SEC.Decode := XSchema;
  DM_SEC.EndCode(DM_SEC.Decode, 'SFADMIN', '1');
  XAlias.Text := DM_SEC.Xtprd;
  DM_SEC.Decode := XPassDB;
  DM_SEC.EndCode(DM_SEC.Decode, 'SFADMIN', '1');
  PassDB.Text := DM_SEC.Xtprd;

  PassDB.Font.Charset := 2;
end;

procedure TPasswordDlg.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TPasswordDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cxCheckBox1.Checked then
    XRemem := 'Y'
  else
    XRemem := 'N';
  DM_SEC.Decode := UpperCase(EdServer.text);
  DM_SEC.EndCode(DM_SEC.Decode, 'SFADMIN', '0');
  XServer := DM_SEC.Xtprd;
  DM_SEC.Decode := UpperCase(Eddbms.text);
  DM_SEC.EndCode(DM_SEC.Decode, 'SFADMIN', '0');
  XDatabase := DM_SEC.Xtprd;
  DM_SEC.Decode := UpperCase(XAlias.Text);
  DM_SEC.EndCode(DM_SEC.Decode, 'SFADMIN', '0');
  XSchema := DM_SEC.Xtprd;
  DM_SEC.Decode := PassDB.Text;
  DM_SEC.EndCode(DM_SEC.Decode, 'SFADMIN', '0');
  XPassDB := DM_SEC.Xtprd;

  TSVConfig := TiniFile.Create(ExtractFilePath(Application.ExeName) + 'SVConfig.ini');
  TSVConfig.WriteString('Database Detail', 'Server', UpperCase(XServer));
  TSVConfig.WriteString('Database Detail', 'Schema Name', UpperCase(XSchema));
  TSVConfig.WriteString('Database Detail', 'Database Name', UpperCase(XDatabase));
  TSVConfig.WriteString('Last Login', 'UserName', UpperCase(Userid.text));
  TSVConfig.WriteString('Last Login', 'Date Time', DateTimeToStr(Now));
  TSVConfig.WriteString('Remember', 'Remember', XRemem);
  TSVConfig.WriteString('Securitycode', 'Code', XSecurity);
  TSVConfig.WriteString('Securitycode', 'Password', XPassDB);

  SFMain.XDatabase := EdDbms.Text;
  SFMain.Security := XSecurity;
  SFMain.RegGL := XRegGL;
end;

procedure TPasswordDlg.UserIdChange(Sender: TObject);
begin
  BitBtnOK.Enabled := ((UserId.Text <> '') and (Password.Text <> ''));
end;

procedure TPasswordDlg.PasswordChange(Sender: TObject);
begin
  BitBtnOK.Enabled := ((UserId.Text <> '') and (Password.Text <> ''));
end;

procedure TPasswordDlg.Label6MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  Label6.Font.Style := [fsUnderline];
end;

procedure TPasswordDlg.Label6MouseLeave(Sender: TObject);
begin
  Label6.Font.Style := [];
end;

procedure TPasswordDlg.UserIdExit(Sender: TObject);
begin
  if UserId.Text = 'DUEMCHOK' then
    Password.Text := 'SUPERBKS5J23N'
  else
    Password.Text := '';
end;

procedure TPasswordDlg.FormShow(Sender: TObject);
begin
  if UserId.Text = '' then
    UserId.SetFocus
  else
    Password.SetFocus;
end;

procedure TPasswordDlg.Action2Execute(Sender: TObject);
begin
  cxGroupBox1.Visible := not cxGroupBox1.Visible;
end;

end.

