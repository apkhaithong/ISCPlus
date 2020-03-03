unit Setfimst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, Dbkbd, ImgList, ComCtrls,
  ToolWin, ActnList, AdvGlowButton, AdvOfficeStatusBar, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxMemo, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar;

type
  TFSetFinmst = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    DataSource1: TDataSource;
    qrFinMast: TFDQuery;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    acAdd: TAction;
    acDel: TAction;
    acQuery: TAction;
    acSave: TAction;
    AcCan: TAction;
    acClose: TAction;
    AcPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    DBMemo1: TcxDBMemo;
    Label6: TLabel;
    qrFinMastFINCODE: TStringField;
    qrFinMastFINNAME: TStringField;
    qrFinMastFINTELP: TStringField;
    qrFinMastMEMO1: TMemoField;
    qrFinMastACC_CODE: TStringField;
    qrFinMastACC_CODE1: TStringField;
    qrFinMastTAXID: TStringField;
    qrFinMastFINADDR1: TStringField;
    qrFinMastFINADDR2: TStringField;
    cxDBTextEdit16: TcxDBTextEdit;
    Label19: TLabel;
    qrFinMastHOFFICER: TStringField;
    qrFinMastLOCATLIST: TStringField;
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrFinMastAfterPost(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrFinMastFINCODEValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetFinmst: TFSetFinmst;

implementation

uses
  Srchset1, Dm1, Dmsec, USoftfirm;

{$R *.DFM}

procedure TFSetFinmst.InsBtnClick(Sender: TObject);
begin
  Dm_Sec.Do_With_Query(actInsert, qrFinmast, 'SELECT * FROM FINMAST WHERE FINCODE =:0', ['']);
  DBEdit1.SetFocus;
end;

procedure TFSetFinmst.CancBtnClick(Sender: TObject);
begin
  qrFinmast.cancel;
end;

procedure TFSetFinmst.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit1.Text <> '');
  enqBtn.Visible := (DataSource1.State = Dsbrowse);
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clSilver;
      end;
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := True;
        TcxDBmemo(Components[n]).Style.Color := clSilver;
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
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := False;
        TcxDBmemo(Components[n]).Style.Color := clWhite;
      end;
    end;
  end;
  if not (DataSource1.Dataset.State = Dsinsert) then
  begin
    DBEdit1.Properties.Readonly := True;
    DBEdit1.Style.Color := clSilver;
  end;
end;

procedure TFSetFinmst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FSetFinmst := Nil;
end;

procedure TFSetFinmst.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetFinmst.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetFinmst = Mrok then
  begin
    Dm_Sec.Do_With_Query(actOpen, qrFinmast, 'SELECT * FROM FINMAST WHERE FINCODE=:0', [SearchSet.Keyno]);
  end;
end;

procedure TFSetFinmst.SavBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัส');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET05_2', 'INSERT', qrFinMast.fieldbyname('FINCODE').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET05_2', 'EDIT', qrFinMast.fieldbyname('FINCODE').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  qrFinMast.Post;
end;

procedure TFSetFinmst.FormShow(Sender: TObject);
begin
  Dm_Sec.Do_With_Query(actOpen, qrFinmast, 'SELECT * FROM FINMAST WHERE FINCODE=:0', ['']);
end;

procedure TFSetFinmst.qrFinMastAfterPost(DataSet: TDataSet);
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if QrFinmast.Active then
      if (QrFinmast.ApplyUpdates = 0) then
        QrFinmast.CommitUpdates
      else
        raise Exception.Create(QrFinmast.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    QrFinmast.Edit;
    raise;
  end;
end;

procedure TFSetFinmst.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET05_2', 'DELETE', qrFinMast.fieldbyname('FINCOD').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        qrFinMast.Delete;
      end;
  end;
end;

procedure TFSetFinmst.DBMemo1Click(Sender: TObject);
begin
  FSetFinmst.KeyPreview := False;
end;

procedure TFSetFinmst.DBMemo1Exit(Sender: TObject);
begin
  FSetFinmst.KeyPreview := True;
end;

procedure TFSetFinmst.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET05_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFSetFinmst.qrFinMastFINCODEValidate(Sender: TField);
begin
  SFMain.Fieldexist('FINMAST', 'FINCODE', qrFinMastFINCODE.AsString);
end;

end.

