unit FcanPo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Grids, ExtCtrls, DB, DBGrids, ImgList,
  ComCtrls, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCheckBox, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxContainer, cxTextEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator, dxCore, cxDateUtils, dxDateRanges,
  BusinessSkinForm, dxStatusBar;

type
  TFCanorder = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPONO: TcxGridDBColumn;
    cxGridTranPODATE: TcxGridDBColumn;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranPOLOCAT: TcxGridDBColumn;
    cxGridTranORDQTY: TcxGridDBColumn;
    cxGridTranRECQTY: TcxGridDBColumn;
    cxGridTranBALANCE: TcxGridDBColumn;
    cxGridTranFLAG: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    edFDate: TcxDateEdit;
    FbtEdit: TAdvGlowButton;
    edTDate: TcxDateEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    DataSource1: TDataSource;
    dxStatusBar1: TdxStatusBar;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cxGridTranPARTDESC: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesChange(Sender: TObject);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesChange(Sender: TObject);
    procedure FbtEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCanorder: TFCanorder;

implementation

uses
  Dmpo, uFindPO, USoftFirm, Dmsec;
{$R *.DFM}

procedure TFCanorder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FCanorder := Nil;
  Action := Cafree;
end;

procedure TFCanorder.SaveBtnClick(Sender: TObject);
begin
  if Dm_po.Qorder1.State in Dseditmodes then
    Dm_po.Qorder1.Post;
  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_8', 'UPDATE', 'Update Data');
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if Dm_Po.Qorder1.Active then
      if (Dm_Po.Qorder1.ApplyUpdates = 0) then
        Dm_Po.Qorder1.CommitUpdates
      else
        raise Exception.Create(Dm_Po.Qorder1.RowError.Message);
    if DM_SEC.qrRecent.Active then
      if (DM_SEC.qrRecent.ApplyUpdates = 0) then
        DM_SEC.qrRecent.CommitUpdates
      else
        raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
    Dm_Sec.HI_DBMS.Commit;
  except
    Dm_Sec.HI_DBMS.RollBack;
    Dm_Po.Qorder1.Edit;
    raise;
  end;
  SaveBtn.Enabled := False;
  FbtEditClick(Sender);
end;

procedure TFCanorder.DataSource1StateChange(Sender: TObject);
begin
  if DataSource1.DataSet.State = DsEdit then
    SaveBtn.Enabled := true;

  if DataSource1.Dataset.State = DsInsert then
    DataSource1.Dataset.Cancel;

  CancBtn.Visible := SaveBtn.Visible;
  Closebtn.Enabled := not (SaveBtn.Visible);
end;

procedure TFCanorder.CancBtnClick(Sender: TObject);
begin
  Dm_po.Qorder1.CancelUpdates;
  SaveBtn.Enabled := False;
  Closebtn.Enabled := not (SaveBtn.Enabled);
end;

procedure TFCanorder.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFCanorder.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_8');
  edFDate.Date := Date;
  edTDate.Date := Date;
  cxButtonEdit1.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  cxButtonEdit1.Text := SFMain.Xlocat;
end;

procedure TFCanorder.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalLocat = Mrok then
    cxButtonEdit1.Text := fFindPO.Keyno;
end;

procedure TFCanorder.cxButtonEdit1PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', cxButtonEdit1.text);
end;

procedure TFCanorder.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindPO, fFindPO);
  if fFindPO.ShowModalAP = Mrok then
    cxButtonEdit2.Text := fFindPO.qrFindDat.FieldByName('APCODE').Asstring;
end;

procedure TFCanorder.cxButtonEdit2PropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Text := SFMain.FindShowDesc('APMAST', 'APNAME', 'APCODE', cxButtonEdit2.text);
end;

procedure TFCanorder.FbtEditClick(Sender: TObject);
begin
  with Dm_Po.Qorder1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PO_TRANS WHERE (ORDQTY-RECQTY>0) ' +
      'AND POLOCAT like :EDIT1 AND (PODATE>=:EDIT2 AND PODATE<=:EDIT3) ' +
      'AND APCODE Like :EDIT4');
    Params[0].Asstring := cxButtonEdit1.TEXT + '%';
    Params[1].AsDate := edFDate.Date;
    Params[2].AsDate := edTDate.Date;
    Params[3].Asstring := cxButtonEdit2.TEXT + '%';
    OPEN;
  end;
end;

end.

