unit u_BarCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzButton, RzLabel, DB, Dbkbd, ExtCtrls, RzPanel, Buttons,
  RzSpnEdt, ComCtrls, ToolWin, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGlowButton, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, BusinessSkinForm, AdvToolBar, dxStatusBar, AdvPanel;

type
  TF_BarCode = class(TForm)
    AdvPanel1: TAdvPanel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel1: TRzLabel;
    edGroup: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    DBkbd1: TDBkbd;
    dxStatusBar1: TdxStatusBar;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure RzBitBtn3Click(Sender: TObject);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edGroupPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_BarCode: TF_BarCode;

implementation
uses uSoftFirm,uSrcDlg, unfrPreview, Dmsec;
{$R *.dfm}

procedure TF_BarCode.RzBitBtn3Click(Sender: TObject);
begin
   Close;
end;

procedure TF_BarCode.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
   if Edit2.Text = '' then
      Edit2.Text := 'тттттттттт';

   If UpperCase(ParName)='PGROUP' Then
      ParValue := edGroup.Text+'%';
   if UpperCase(ParName)='PFPART' Then
      ParValue := Edit1.Text;
   If UpperCase(ParName)='PTPART' Then
      ParValue := Edit2.Text;
end;

procedure TF_BarCode.PrevBtnClick(Sender: TObject);
begin
//  DM_SEC.Do_Prev_Edit_FastReport(frReport1,'fr_MkBarCode.frf','1');
end;

procedure TF_BarCode.EditBtnClick(Sender: TObject);
begin
//  DM_SEC.Do_Prev_Edit_FastReport(frReport1,'fr_MkBarCode.frf','2');
end;

procedure TF_BarCode.FormShow(Sender: TObject);
begin
  EditBtn.Visible    := Sfmain.XDesign = 'Y';
end;

procedure TF_BarCode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
   F_BarCode := nil;
end;

procedure TF_BarCode.edGroupPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalGroup=Mrok Then
     edGroup.Text := fSrcDlg.Keyno;
end;

procedure TF_BarCode.Edit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalInvmast=Mrok Then
     Edit1.Text := fSrcDlg.Keyno;
end;

procedure TF_BarCode.Edit4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalInvmast=Mrok Then
      Edit2.Text := fSrcDlg.Keyno;
end;

procedure TF_BarCode.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

end.
