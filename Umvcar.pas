unit Umvcar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DB, StdCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit, RzDbkbd,
  cxTextEdit, AdvGlowButton, AdvToolBar, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxMemo, cxContainer, cxMaskEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, AdvOfficeStatusBar, cxPC, AdvPanel, ActnList, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator, dxDateRanges, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  dxStatusBar, frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject,
  frxExportPDF, frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmvcar = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBLocat: TcxDBButtonEdit;
    DBRcLocat: TcxDBButtonEdit;
    DBEdit13: TcxDBButtonEdit;
    DBEdit6: TcxDBButtonEdit;
    DBEdit7: TcxDBTextEdit;
    DBdtMove: TcxDBDateEdit;
    JEdit1: TcxTextEdit;
    JEdit2: TcxTextEdit;
    JEdit3: TcxTextEdit;
    JEdit4: TcxTextEdit;
    DBMemo1: TcxDBMemo;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1STRNO: TcxGridDBColumn;
    cxGrid1DBTableView1MOVEFM: TcxGridDBColumn;
    cxGrid1DBTableView1MOVETO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TFDQuery;
    Query2: TFDQuery;
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
    Label5: TLabel;
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
    procedure FormCreate(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBLocatChange(Sender: TObject);
    procedure DBRcLocatChange(Sender: TObject);
    procedure DBRcLocatExit(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1STRNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBRcLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure SavBtnClick(Sender: TObject);
    procedure atEditExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmvcar: TFmvcar;

implementation

uses
  dm1, dmstock, functn01, srchset1, USoftfirm, srchstk, srchsal1, unfrPreview,
  Dmsec;
{$R *.dfm}

procedure TFmvcar.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK01_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmvcar.InsBtnClick(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actInsert, Dmstk.QinvMovM, 'SELECT * FROM INVMOVM WHERE MOVENO =:0', ['']);
  DM_SEC.Do_With_Query(actOpen, Dmstk.QinvMovT, 'SELECT * FROM INVMOVT WHERE MOVENO =:0', ['']);
  JEdit2.Text := '';
  JEdit3.Text := '';
  JEdit4.Text := '';
  DBRcLocat.SetFocus;
end;

procedure TFmvcar.DelBtnClick(Sender: TObject);
begin
  if DBEdit7.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_2', 'DELETE', DBEdit7.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        Dmstk.QINVMOVM.DELETE;
      end;
  end;
end;

procedure TFmvcar.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchstk, Searchstk);
  if Searchstk.ShowModalMovcar = Mrok then
  begin
    DM_SEC.Do_With_Query(actOpen, Dmstk.QinvMovM, 'SELECT * FROM INVMOVM WHERE MOVENO = :MOVENO', [Searchstk.Keyno]);
    DM_SEC.Do_With_Query(actOpen, Dmstk.QinvMovT, 'SELECT * FROM INVMOVT WHERE MOVENO = :MOVENO', [Searchstk.Keyno]);
    DM_SEC.Do_With_Query(actOpen, Query1, 'SELECT * FROM INVTRAN WHERE STRNO=:XSTRNO AND CRLOCAT=:XCRLOCAT',
      [Dmstk.Qinvmovt.fieldbyname('STRNO').Asstring,
      Dmstk.Qinvmovt.fieldbyname('MOVEFM').Asstring]);
  end;
end;

procedure TFmvcar.CancBtnClick(Sender: TObject);
begin
  Dmstk.QInvMovM.Cancel;
  JEdit1.Text := '';
  JEdit2.Text := '';
  JEdit3.Text := '';
  JEdit4.Text := '';
end;

procedure TFmvcar.CloseBtnClick(Sender: TObject);
begin
  Dmstk.QinvMovM.close;
  Dmstk.QinvMovT.close;
  self.Close;
end;

procedure TFmvcar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  Fmvcar := nil;
end;

procedure TFmvcar.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DMstk.QinvMovMMOVENO.AsString <> '');
  ;
  enqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  PrnBtn.Visible := (DataSource1.State = Dsbrowse) and (DMstk.QinvMovMMOVENO.AsString <> '');
  cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 2) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 0) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := True;
        TcxDBmemo(Components[N]).Style.Color := clBtnFace;
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
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 2) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 0) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := False;
        TcxDBmemo(Components[N]).Style.Color := clWhite;
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
    //
  if not (Dm01.QDBConfig.Active) then
    Dm01.QDBConfig.Open;
  begin
    DBEdit7.Properties.Readonly := Dm01.QDBConfig.Fieldbyname('R_TFCAR').asstring = 'Y';
    if DBEdit7.Properties.Readonly then
      DBEdit7.Style.Color := clBtnFace
    else
      DBEdit7.Style.Color := clWhite;
  end;
  DBdtMove.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBRcLocat.Enabled := DataSource1.Dataset.State = DsInsert;
end;

procedure TFmvcar.DataSource2DataChange(Sender: TObject; Field: TField);
begin
   // Edit1.Text := IntTostr(Dmstk.QInvMovT.Recordcount);
end;

procedure TFmvcar.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F7:
      EnqBtnClick(Sender);
    VK_F2:
      SavBtnClick(Sender);
    VK_F8:
      DelBtnClick(Sender);
    VK_F5:
      InsBtnClick(Sender);
  end
end;

procedure TFmvcar.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_MoveCar.fr3', '1');
end;

procedure TFmvcar.DBLocatChange(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, Dmstk.Query1, 'SELECT * FROM INVLOCAT WHERE LOCATCD =:0', [DBLocat.Text]);
  JEdit1.Text := Dmstk.Query1.Fieldbyname('Locatnm').Asstring;
end;

procedure TFmvcar.DBRcLocatChange(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, Dmstk.Query1, 'SELECT * FROM INVLOCAT WHERE LOCATCD =:0', [DBRcLocat.Text]);
  JEdit2.Text := Dmstk.Query1.Fieldbyname('Locatnm').Asstring;
end;

procedure TFmvcar.DBRcLocatExit(Sender: TObject);
begin
  if (DBLocat.Text = DBRcLocat.Text) then
  begin
    MessageDlg('ไม่สามารถโอนรถภายใต้สาขาเดียวกันได้', mtError, [mbCancel], 0);
    DBRcLocat.SetFocus;
  end;
end;

procedure TFmvcar.DBEdit13Change(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, Dmstk.Query1, 'SELECT * FROM OFFICER WHERE CODE=:0', [DBEdit13.Text]);
  JEdit3.Text := Dmstk.Query1.Fieldbyname('Name').Asstring;
end;

procedure TFmvcar.DBEdit6Change(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, Dmstk.Query1, 'SELECT * FROM OFFICER WHERE CODE=:0', [DBEdit6.Text]);
  JEdit4.Text := Dmstk.Query1.Fieldbyname('Name').Asstring;
end;

procedure TFmvcar.DBMemo1Click(Sender: TObject);
begin
  Fmvcar.KeyPreview := False;
end;

procedure TFmvcar.DBMemo1Exit(Sender: TObject);
begin
  Fmvcar.KeyPreview := True;
end;

procedure TFmvcar.FormShow(Sender: TObject);
begin
  DM_SEC.Do_With_Query(actOpen, Dmstk.QinvMovM, 'SELECT * FROM INVMOVM WHERE MOVENO=:0', ['']);
  DM_SEC.Do_With_Query(actOpen, Dmstk.QinvMovT, 'SELECT * FROM INVMOVT WHERE MOVENO=:0', ['']);
end;

procedure TFmvcar.cxGrid1DBTableView1STRNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if DataSource1.DataSet.State = DsInsert then
  begin
    Application.Createform(TSearchSale, SearchSale);
    SearchSale.Xflg := 'D';
    SearchSale.XLocat := Dmstk.Qinvmovm.Fieldbyname('MOVEFM').Asstring;
    if SearchSale.ShowModalStrno = Mrok then
    begin
      if Dmstk.QInvMovT.State = Dsbrowse then
        Dmstk.QInvMovT.Edit;
      Dmstk.QInvMovT.fieldbyname('Strno').value := SearchSale.Keyno;
    end;
  end;
end;

procedure TFmvcar.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
  begin
    Dmstk.QInvMovM.fieldbyname('MoveFm').value := Searchset.Keyno;
    JEdit1.Text := Searchset.HQuery1.fieldbyname('Locatnm').asstring;
  end;
end;

procedure TFmvcar.DBRcLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
  begin
    Dmstk.QInvMovM.fieldbyname('MoveTo').value := Searchset.Keyno;
  end;
end;

procedure TFmvcar.DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = Mrok then
  begin
    Dmstk.QInvMovM.fieldbyname('Movenm').value := Searchset.Keyno;
    JEdit3.Text := Searchset.HQuery1.fieldbyname('Name').asstring;
  end;
end;

procedure TFmvcar.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalsetOfficer = Mrok then
  begin
    Dmstk.QInvMovM.fieldbyname('MoveRV').value := Searchset.Keyno;
    JEdit4.Text := Searchset.HQuery1.fieldbyname('Name').asstring;
  end;
end;

procedure TFmvcar.SavBtnClick(Sender: TObject);
begin
  if DBEdit7.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกเลขที่');

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_2', 'INSERT', DBEdit7.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK01_2', 'EDIT', DBEdit7.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dmstk.QInvMovM.Post;
end;

procedure TFmvcar.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'VMOVENO' then
    Value := DBEdit7.Text;
end;

procedure TFmvcar.atEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_MoveCar.fr3', '2');
end;

end.

