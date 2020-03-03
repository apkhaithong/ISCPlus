unit uUpdConfig;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCheckBox, cxDBLookupComboBox, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxMaskEdit, cxButtonEdit, cxContainer, cxTextEdit, AdvGlowButton, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ComCtrls, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator, cxGroupBox, cxRadioGroup,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxDateRanges,
  dxBarBuiltInMenu, dxStatusBar, AdvPanel;

type
  TfrUpdConfig = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label5: TLabel;
    SavBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    UserId: TcxButtonEdit;
    cxTextEdit3: TcxTextEdit;
    QMenumst: TFDQuery;
    QMenumstMENUDESC: TStringField;
    QMenumstPARENT: TStringField;
    QMenumstUSERID: TStringField;
    QMenumstSYSTEMCOD: TStringField;
    QMenumstMENUCODE: TStringField;
    QMenumstM_ACCESS: TStringField;
    QMenumstM_EDIT: TStringField;
    QMenumstM_INSERT: TStringField;
    QMenumstM_DELETE: TStringField;
    Somenumst: TDataSource;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxStatusBar1: TdxStatusBar;
    cxRadioGroup1: TcxRadioGroup;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridLevelI: TcxGridLevel;
    cxGridTranMENUDESC: TcxGridDBColumn;
    cxGridTranMENUCODE: TcxGridDBColumn;
    cxGridTranM_ACCESS: TcxGridDBColumn;
    cxGridTranM_EDIT: TcxGridDBColumn;
    cxGridTranM_INSERT: TcxGridDBColumn;
    cxGridTranM_DELETE: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SomenumstStateChange(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure QMenumstAfterPost(DataSet: TDataSet);
    procedure QMenumstAfterCancel(DataSet: TDataSet);
    procedure SavBtnClick(Sender: TObject);
    procedure UserIdPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure UserIdPropertiesChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nGridIndex: string;
  end;

var
  frUpdConfig: TfrUpdConfig;

implementation

uses
  uSoftfirm, Dmsec, uFindData;
{$R *.DFM}

procedure TfrUpdConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QMenumst.Close;
  frUpdConfig := nil;
  Action := Cafree;
end;

procedure TfrUpdConfig.SomenumstStateChange(Sender: TObject);
begin
  CloseBtn.Enabled := (Somenumst.State = Dsbrowse);
  SavBtn.Enabled := (Somenumst.State in DsEditmodes);
  CancBtn.Enabled := (SavBtn.Enabled) or (UserId.Text = '');
end;

procedure TfrUpdConfig.CancBtnClick(Sender: TObject);
begin
  QMenumst.Cancel;
end;

procedure TfrUpdConfig.CloseBtnClick(Sender: TObject);
begin
  SFMain.Authorize;
  SFMain.Do_AdvPolyList_Autosize;
  self.Close;
end;

procedure TfrUpdConfig.QMenumstAfterPost(DataSet: TDataSet);
begin
  dm_sec.HI_DBMS.StartTransaction;
  try
    if QMenumst.Active then
      if (QMenumst.ApplyUpdates = 0) then
        QMenumst.CommitUpdates
      else
        raise Exception.Create(QMenumst.RowError.Message);
    dm_sec.HI_DBMS.Commit;
  except
    dm_sec.HI_DBMS.Rollback;
    QMenumst.Edit;
    raise;
  end;
end;

procedure TfrUpdConfig.QMenumstAfterCancel(DataSet: TDataSet);
begin
  QMenumst.CancelUpdates;
end;

procedure TfrUpdConfig.SavBtnClick(Sender: TObject);
begin
  QMenumst.Next;
end;

procedure TfrUpdConfig.UserIdPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfFindData, fFindData);
  if fFindData.ShowModalPasswd = mrOk then
  begin
    UserId.Text := fFindData.Keyno;
  end;
end;

procedure TfrUpdConfig.UserIdPropertiesChange(Sender: TObject);
begin
  cxTextEdit3.Text := SFMain.FindShowDesc('SECRET', 'USERNAME', 'USERID', Userid.Text);
  with QMenumst do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM MENUTRNDMS WHERE SYSTEMCOD =''HDSET'' and USERID =:edit1');
    params[0].AsString := UserId.Text;
    open;
  end;
end;

procedure TfrUpdConfig.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TfrUpdConfig.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSET', 'HDSET01_1');
end;

procedure TfrUpdConfig.cxRadioGroup1PropertiesChange(Sender: TObject);
var
  nMenu: string;
begin
  case cxRadioGroup1.ItemIndex of
    0:
      nMenu := 'HDSET';
    1:
      nMenu := 'HDSTK';
    2:
      nMenu := 'HDSP';
    3:
      nMenu := 'HDFIN';
    4:
      nMenu := 'HDREO';
    5:
      nMenu := 'HDHLP';
  end;

  with QMenumst do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM MENUTRNDMS WHERE SYSTEMCOD =:EDIT1 AND USERID =:EDIT2');
    params[0].AsString := nMenu;
    params[1].AsString := UserId.Text;
    open;
  end;
end;

procedure TfrUpdConfig.FormShow(Sender: TObject);
begin
  with QMenumst do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM MENUTRNDMS WHERE SYSTEMCOD =''HDSET'' and USERID =:edit1');
    params[0].AsString := UserId.Text;
    open;
  end;
end;

end.

