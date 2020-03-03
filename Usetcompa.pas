unit Usetcompa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ComCtrls, DB, ToolWin, StdCtrls, Mask, DBCtrls, ExtCtrls,
  Dbkbd, ImgList, Buttons, RzEdit, RzBtnEdt, RzSpnEdt, AdvGlowButton, AdvToolBar,
  cxPC, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxCheckBox,
  AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons, cxGraphics, cxSpinEdit,
  cxDropDownEdit, cxImageComboBox, cxMaskEdit, cxButtonEdit, AdvPanel, RzBckgnd,
  cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TFsetcompa = class(TForm)
    AdvPanel1: TAdvPanel;
    cxPageControl3: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label37: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    Label80: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    DBEdit5: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit31: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBCheckBox2: TcxDBCheckBox;
    DBCheckBox3: TcxDBCheckBox;
    DBCheckBox4: TcxDBCheckBox;
    DBCheckBox16: TcxDBCheckBox;
    DBCheckBox5: TcxDBCheckBox;
    DBCheckBox6: TcxDBCheckBox;
    DBCheckBox7: TcxDBCheckBox;
    DBCheckBox8: TcxDBCheckBox;
    DBCheckBox10: TcxDBCheckBox;
    DBEdit9: TcxDBTextEdit;
    DBCheckBox17: TcxDBCheckBox;
    DBEdit14: TcxDBTextEdit;
    DBCheckBox18: TcxDBCheckBox;
    DBCheckBox31: TcxDBCheckBox;
    DBEdit25: TcxDBTextEdit;
    DBEdit34: TcxDBTextEdit;
    DBCheckBox37: TcxDBCheckBox;
    DBEdit35: TcxDBTextEdit;
    DBRadioGroup1: TDBAdvOfficeRadioGroup;
    DBCheckBox1: TcxDBCheckBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    DBEdit12: TcxDBTextEdit;
    DBCheckBox12: TcxDBCheckBox;
    DBCheckBox33: TcxDBCheckBox;
    DBEdit60: TcxDBTextEdit;
    DBEdit62: TcxDBTextEdit;
    DBCheckBox34: TcxDBCheckBox;
    DBEdit63: TcxDBTextEdit;
    DBCheckBox35: TcxDBCheckBox;
    DBEdit66: TcxDBTextEdit;
    DBCheckBox36: TcxDBCheckBox;
    DBEdit38: TcxDBTextEdit;
    DBCheckBox32: TcxDBCheckBox;
    DBCheckBox11: TcxDBCheckBox;
    DBEdit2: TcxDBTextEdit;
    DBEdit22: TcxDBTextEdit;
    DBCheckBox13: TcxDBCheckBox;
    DBCheckBox14: TcxDBCheckBox;
    DBEdit23: TcxDBTextEdit;
    DBEdit24: TcxDBTextEdit;
    DBCheckBox15: TcxDBCheckBox;
    DBEdit61: TcxDBTextEdit;
    DBCheckBox19: TcxDBCheckBox;
    DBEdit27: TcxDBTextEdit;
    DBCheckBox20: TcxDBCheckBox;
    DBEdit41: TcxDBTextEdit;
    DBCheckBox38: TcxDBCheckBox;
    DBCheckBox9: TcxDBCheckBox;
    DBEdit1: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBCheckBox21: TcxDBCheckBox;
    DBEdit15: TcxDBTextEdit;
    DBCheckBox22: TcxDBCheckBox;
    DBCheckBox23: TcxDBCheckBox;
    DBEdit28: TcxDBTextEdit;
    DBEdit29: TcxDBTextEdit;
    DBCheckBox24: TcxDBCheckBox;
    DBEdit30: TcxDBTextEdit;
    DBCheckBox25: TcxDBCheckBox;
    DBEdit19: TcxDBTextEdit;
    DBCheckBox26: TcxDBCheckBox;
    DBEdit20: TcxDBTextEdit;
    DBCheckBox27: TcxDBCheckBox;
    DBCheckBox28: TcxDBCheckBox;
    DBEdit33: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    DBCheckBox29: TcxDBCheckBox;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    SavBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    DBkbd1: TDBkbd;
    SoCondpay: TDataSource;
    QCondpay: TFDQuery;
    SoDbconfig: TDataSource;
    QDbconfig: TFDQuery;
    dsLastno: TDataSource;
    qrLastno: TFDQuery;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SoCondpayStateChange(Sender: TObject);
    procedure QCondpayAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsetcompa: TFsetcompa;
  year, month, day: word;
  day1, month1, year1, Lday1: string;

implementation

uses
  dm1, dmsec, uSoftFirm, Functn01;
{$R *.dfm}

procedure TFsetcompa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qCondpay.Close;
  qDbconfig.Close;
  Action := Cafree;
  Fsetcompa := Nil;
end;

procedure TFsetcompa.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET01_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;

  Qcondpay.Open;
  QDbconfig.Open;
end;

procedure TFsetcompa.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFsetcompa.SavBtnClick(Sender: TObject);
begin
  if QCondpay.State in [Dsinsert, Dsedit] then
    QCondpay.Post;
  if QDBConfig.State in [Dsinsert, Dsedit] then
    QDBConfig.Post;
  if qrLastno.State in [Dsinsert, Dsedit] then
    qrLastno.Post;

  QCondpay.Close;
  QCondpay.Open;
  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET01_2', 'Edit', 'Documents');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Close;
end;

procedure TFsetcompa.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';

  if not QCondpay.Active then
    qCondpay.Open;
  decodedate(Date, year, month, day);
  chqdatetos(day1, month1, year1, 1, Date);
end;

procedure TFsetcompa.SoCondpayStateChange(Sender: TObject);
var
  n: word;
begin
  CloseBtn.Enabled := (SoCondpay.State = Dsbrowse);
  SavBtn.Enabled := (SoCondpay.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
//  CancBtn.Enabled := SavBtn.Enabled;

  if SoCondpay.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := $00EAF3F4;
      end;
      if (Components[n] is TcxDBCheckBox) and (TcxDBCheckBox(Components[n]).Tag = 0) then
      begin
        TcxDBCheckBox(Components[n]).Properties.Readonly := True;
        TcxDBCheckBox(Components[n]).Style.Color := $00EAF3F4;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBCheckBox) and (TcxDBCheckBox(Components[n]).Tag = 0) then
      begin
        TcxDBCheckBox(Components[n]).Properties.Readonly := False;
        TcxDBCheckBox(Components[n]).Style.Color := clWhite;
      end;
    end;
  end;
end;

procedure TFsetcompa.QCondpayAfterPost(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QCondpay.Active then
      if (QCondpay.ApplyUpdates = 0) then
        QCondpay.CommitUpdates
      else
        raise Exception.Create(QCondpay.RowError.Message);
    if QrLastno.Active then
      if (QrLastno.ApplyUpdates = 0) then
        QrLastno.CommitUpdates
      else
        raise Exception.Create(QrLastno.RowError.Message);
    if Qdbconfig.Active then
      if (Qdbconfig.ApplyUpdates = 0) then
        Qdbconfig.CommitUpdates
      else
        raise Exception.Create(Qdbconfig.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QCondpay.Edit;
    raise;
  end;
end;

end.

