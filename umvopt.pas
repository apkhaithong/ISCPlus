unit Umvopt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ComCtrls,
  ToolWin, DB, ImgList, Dbkbd, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit, RzDbkbd, cxTextEdit,
  AdvGlowButton, AdvToolBar, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxContainer, cxMaskEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  AdvOfficeStatusBar, AdvPanel, ActnList, cxLookAndFeels, cxLookAndFeelPainters,
  cxNavigator, dxDateRanges, System.Actions, BusinessSkinForm, dxStatusBar,
  frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmvopt = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1OPTCODE: TcxGridDBColumn;
    cxGrid1DBTableView1MOVQTY: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DBLocat: TcxDBButtonEdit;
    DBRcLocat: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    wwDBDtMopt: TcxDBDateEdit;
    DBMemo1: TcxDBMemo;
    JEdit1: TcxTextEdit;
    JEdit2: TcxTextEdit;
    DBEdit6: TcxDBButtonEdit;
    DBEdit13: TcxDBButtonEdit;
    JEdit3: TcxTextEdit;
    JEdit4: TcxTextEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    atEdit: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    Label13: TLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReportTableObject1: TfrxReportTableObject;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxReport1: TfrxReport;
    procedure DataSource1StateChange(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLocatChange(Sender: TObject);
    procedure DBRcLocatChange(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBRcLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure atEditExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    frPath: string;
  public
    { Public declarations }
  end;

var
  Fmvopt: TFmvopt;

implementation

uses
  dm1, dmstock, functn01, srchset1, USoftFirm, srchstk, unfrPreview, Dmsec;
{$R *.dfm}

procedure TFmvopt.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DMstk.QOptMovMMOVENO.AsString <> '');
  enqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  PrnBtn.Visible := (DataSource1.State = Dsbrowse) and (DMstk.QOptMovMMOVENO.AsString <> '');
  cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 0) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := True;
        TcxDBmemo(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := True;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 0) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := False;
        TcxDBmemo(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := False;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  if not Dm01.QDBConfig.Active then
    Dm01.QDBConfig.Open;
  begin
    DBEdit5.Properties.Readonly := Dm01.QDBConfig.Fieldbyname('R_TFOPT').asstring = 'Y';
    if DBEdit5.Properties.Readonly then
      DBEdit5.Style.Color := clBtnFace
    else
      DBEdit5.Style.Color := clWhite;
  end;
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  wwDBDtMopt.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBRcLocat.Enabled := DataSource1.Dataset.State = DsInsert;
end;

procedure TFmvopt.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  // Edit1.Text := IntTostr(Dmstk.QOptMovT.Recordcount);
end;

procedure TFmvopt.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK01_4');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmvopt.InsBtnClick(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actInsert, Dmstk.QOptMovM, 'SELECT * FROM OPTMOVM WHERE MOVENO =:0', ['']);
  DM_SEC.Do_With_Query(actOpen, Dmstk.QOptMovT, 'SELECT * FROM OPTMOVT WHERE MOVENO =:0', ['']);
end;

procedure TFmvopt.DelBtnClick(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_4', 'DELETE', DBEdit5.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        Dmstk.QOptMovM.DELETE;
      end;
  end;
end;

procedure TFmvopt.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchstk, Searchstk);
  if Searchstk.ShowModalMovopt = Mrok then
  begin
    DM_SEC.Do_With_Query(actOpen, Dmstk.QOptMovM, 'SELECT * FROM OPTMOVM WHERE MOVENO =:0', [Searchstk.Keyno]);
    DM_SEC.Do_With_Query(actOpen, Dmstk.QOptMovT, 'SELECT * FROM OPTMOVT WHERE MOVENO =:0', [Searchstk.Keyno]);
  end;
end;

procedure TFmvopt.SavBtnClick(Sender: TObject);
begin
  Dmstk.QOptMovT.Datasource := nil;
  if Datasource2.State = DsInsert then
    Dmstk.QOptMovT.Post;
  Dmstk.QOptMovM.Post;
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_4', 'INSERT', DBEdit5.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_4', 'EDIT', DBEdit5.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TFmvopt.CancBtnClick(Sender: TObject);
begin
  Dmstk.QOptMovM.Cancel;
  with Dmstk do
  begin
    QOptMovM.close;
    QOptMovM.sql.clear;
    QOptMovM.sql.add('SELECT * FROM OPTMOVM WHERE MOVENO = '''' ');
    QOptMovM.OPEN;

    QOPTMOVT.close;
    QOPTMOVT.sql.clear;
    QOPTMOVT.sql.add('SELECT * FROM OPTMOVT WHERE MOVENO = '''' ');
    QOPTMOVT.OPEN;
  end;
end;

procedure TFmvopt.CloseBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFmvopt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dmstk.QOptMovM.close;
  Dmstk.QOptMovT.close;
  Action := Cafree;
  Fmvopt := Nil;
end;

procedure TFmvopt.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F7 then
    EnqBtnClick(Sender);
  if Key = VK_F2 then
    SavBtnClick(Sender);
  if Key = VK_F8 then
    DelBtnClick(Sender);
  if Key = VK_F5 then
    InsBtnClick(Sender);
end;

procedure TFmvopt.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'VMOVENO' then
    Value := DBEdit5.text;
end;

procedure TFmvopt.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_MoveOpt.fr3', '1');
end;

procedure TFmvopt.FormShow(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, Dmstk.QOptMovM, 'SELECT * FROM OPTMOVM WHERE MOVENO =:0', ['']);
  DM_SEC.Do_With_Query(actOpen, Dmstk.QOptMovT, 'SELECT * FROM OPTMOVT WHERE MOVENO =:0', ['']);
end;

procedure TFmvopt.DBLocatChange(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, Dmstk.Query1, 'SELECT * FROM INVLOCAT WHERE LOCATCD =:0', [DBLocat.Text]);
  JEdit1.Text := Dmstk.Query1.Fieldbyname('Locatnm').Asstring;
end;

procedure TFmvopt.DBRcLocatChange(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, Dmstk.Query2, 'SELECT * FROM INVLOCAT WHERE LOCATCD =:0', [DBRcLocat.Text]);
  JEdit2.Text := Dmstk.Query2.Fieldbyname('Locatnm').Asstring;
end;

procedure TFmvopt.DBEdit13Change(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, Dmstk.Query3, 'SELECT * FROM OFFICER WHERE CODE =:0', [DBEdit13.Text]);
  JEdit3.Text := Dmstk.Query3.Fieldbyname('Name').Asstring;
end;

procedure TFmvopt.DBEdit6Change(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, Dmstk.Query4, 'SELECT * FROM OFFICER WHERE CODE =:0', [DBEdit6.Text]);
  JEdit4.Text := Dmstk.Query4.Fieldbyname('Name').Asstring;
end;

procedure TFmvopt.DBMemo1Click(Sender: TObject);
begin
  Fmvopt.KeyPreview := False;
end;

procedure TFmvopt.DBMemo1Exit(Sender: TObject);
begin
  Fmvopt.KeyPreview := True;
end;

procedure TFmvopt.cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (DataSource1.DataSet.State = DsInsert) then
  begin
    Application.Createform(TSearchstk, Searchstk);
    Searchstk.Xlocat := DBLocat.Text;
    if Searchstk.ShowModalOptmas = Mrok then
    begin
      if Dmstk.QOptMovT.State = Dsbrowse then
        Dmstk.QOptMovT.Edit;
      Dmstk.QOptMovT.fieldbyname('OPTCODE').Value := Searchstk.Keyno;
    end;
  end;
end;

procedure TFmvopt.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    DMstk.QOptMovM.fieldbyname('MoveFm').asstring := Searchset.Keyno;
end;

procedure TFmvopt.DBRcLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    DMstk.QOptMovM.fieldbyname('MoveTo').asstring := Searchset.Keyno;
end;

procedure TFmvopt.DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = Mrok then
  begin
    Dmstk.QOptMovM.fieldbyname('Movenm').Value := Searchset.Keyno;
    JEdit3.Text := Searchset.HQuery1.fieldbyname('Name').asstring;
  end;
end;

procedure TFmvopt.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = Mrok then
  begin
    Dmstk.QOptMovM.fieldbyname('MoveRV').Value := Searchset.Keyno;
    JEdit4.Text := Searchset.HQuery1.fieldbyname('Name').asstring;
  end;
end;

procedure TFmvopt.atEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_MoveOpt.fr3', '2');
end;

end.

