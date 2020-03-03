unit uClose;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookAndFeels, cxLookAndFeelPainters,
  cxButtons, Menus, dxGDIPlusClasses, AdvToolBar;

type
  TFrmClose = class(TForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    NxComboBox1: TcxComboBox;
    Bevel1: TBevel;
    BitBtnOK: TcxButton;
    BitBtnCan: TcxButton;
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnCanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxComboBox1PropertiesChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClose: TFrmClose;

implementation
uses USoftFirm, Dmsec;

{$R *.dfm}

procedure TFrmClose.BitBtnOKClick(Sender: TObject);
begin
   If NxComboBox1.ItemIndex = 1 Then
   Begin
     SFMain.Close;
     SFMain.Command := 'ISCPlus.exe' +#0;
     If WinExec(@SFMain.Command[1], SW_SHOWNORMAL) < 32 then
     MessageDlg('ไม่สามารถเข้าใช้งานโปรแกรมได้...!' + SFMain.Command, mtError, [mbOK], 0);
   End Else
     SFMain.Close;
end;

procedure TFrmClose.FormCreate(Sender: TObject);
begin
  NxComboBox1.Properties.Items.Add('คุณต้องการออกจากโปรแกรม?');
  NxComboBox1.Properties.Items.Add('คุณต้องการเปลี่ยนผู้ใช้งาน?');
  NxComboBox1.ItemIndex := 0;
end;

procedure TFrmClose.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    perform(wm_NextDlgCtl,0,0);
    key := #0;
  end;
end;

procedure TFrmClose.BitBtnCanClick(Sender: TObject);
begin
  //SFMain.Image1.Visible := True;
  SFMain.Color  := clWhite;
  AdvToolBarPager1.Win7ScenicRibbon := False;
end;

procedure TFrmClose.FormShow(Sender: TObject);
begin
  //SFMain.Image1.Visible := False;
  SFMain.Color  := $003F3F3F;
end;

procedure TFrmClose.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmClose.NxComboBox1PropertiesChange(Sender: TObject);
begin
  If NxComboBox1.ItemIndex = 0 Then
  Label1.Caption := 'ยกเลิกการทำงาน,ปิดระบบการทำงานทั้งหมดของโปรแกรม ISCPlus...' else
  Label1.Caption := 'เปลี่ยนผู้ใช้งานจากรหัส  ['+SFMain.Xuser_ID+']  เป็นรหัสผู้ใช้งานอื่น..';
end;

end.
