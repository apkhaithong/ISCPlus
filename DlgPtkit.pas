unit DlgPtkit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, Dbkbd,
  QuickRpt, printers, RzDBGrid, RzButton, ToolWin, ComCtrls, RzEdit, RzDBEdit,
  RzDbkbd, RzSpnEdt, RzPanel, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, AdvGlowButton, AdvToolBar, AdvPanel, cxButtonEdit,
  cxContainer, cxTextEdit, cxDBEdit, cxLookAndFeels, cxLookAndFeelPainters,
  dxDateRanges, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxNavigator, cxDBLookupComboBox, Vcl.ActnList,
  BusinessSkinForm, dxStatusBar, frxBarcode, frxFDComponents, frxTableObject,
  frxChBox, frxGradient, frxRich, frxExportXLSX, frxExportImage, frxCross,
  frxExportCSV, frxClass, frxExportBaseDialog, frxExportPDF, frxBDEComponents,
  frxDCtrl, frxChart;

type
  TFDlgptkit = class(TForm)
    dxStatusBar1: TdxStatusBar;
    AdvPanel1: TAdvPanel;
    Bevel2: TBevel;
    Label7: TLabel;
    Label2: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1PARTNO: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    QKittrn: TFDQuery;
    QKittrnKITCODE: TStringField;
    QKittrnNUMBER: TIntegerField;
    QKittrnPARTNO: TStringField;
    QKittrnQTY: TFloatField;
    QKittrnMARK: TStringField;
    Query1: TFDQuery;
    DBkbd1: TRzDBkbd;
    DataSource2: TDataSource;
    QKitinv: TFDQuery;
    QKitinvKITCODE: TStringField;
    DataSource1: TDataSource;
    Bevel1: TBevel;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    QKittrnPARTDESC: TStringField;
    cxGridDBTableView1PARTDESC: TcxGridDBColumn;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    PrnBtn: TAdvGlowButton;
    ActionList1: TActionList;
    actEditPrn: TAction;
    QKittrnUNIT: TStringField;
    cxGridDBTableView1UNIT: TcxGridDBColumn;
    DataSource3: TDataSource;
    Query2: TFDQuery;
    Query2UNITCODE: TStringField;
    Query2UNITDESC: TStringField;
    QKitinvKITNAME: TStringField;
    QKittrnGROUP1: TStringField;
    QKittrnUPRICE: TFloatField;
    QKittrnNETPRC: TFloatField;
    QKittrnTOTPRC: TFloatField;
    frxChartObject1: TfrxChartObject;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxCrossObject1: TfrxCrossObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxReportTableObject1: TfrxReportTableObject;
    frxFDComponents1: TfrxFDComponents;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure InsBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure QKitinvBeforeDelete(DataSet: TDataSet);
    procedure QKitinvAfterPost(DataSet: TDataSet);
    procedure QKitinvAfterCancel(DataSet: TDataSet);
    procedure QKittrnNewRecord(DataSet: TDataSet);
    procedure EditBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure QKitinvAfterDelete(DataSet: TDataSet);
    procedure QKittrnPARTNOValidate(Sender: TField);
    procedure cxGridDBTableView1PARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QKitinvKITCODEValidate(Sender: TField);
    procedure QKittrnPARTNOChange(Sender: TField);
    procedure QKitinvBeforePost(DataSet: TDataSet);
    procedure QKitinvNewRecord(DataSet: TDataSet);
    procedure cxGridDBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure actEditPrnExecute(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure cxGridDBTableView1UNITPropertiesInitPopup(Sender: TObject);
    procedure cxGridDBTableView1UNITPropertiesCloseUp(Sender: TObject);
    procedure QKittrnQTYValidate(Sender: TField);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    function RunDocno: string;
  public
    { Public declarations }
  end;

var
  FDlgptkit: TFDlgptkit;

implementation

uses
  Dmic01, uSrcDlg, uSoftFirm, Dmsec, Functn01;
{$R *.DFM}

function TFDlgptkit.RunDocno: string;
var
  H, L, R: string;
  I, C: Integer;
begin
  H := 'KIT-';
  with Query1 do
  begin
    Close;
    Sql.Clear;
    SQl.Add('SELECT MAX(KITCODE) as Maxno FROM PTKITINV WHERE SUBSTR(KITCODE,1,3) = ''KIT'' ');
    Open;
    if not (Bof and Eof) then
    begin
      L := Copy(Query1.Fieldbyname('Maxno').Asstring, 5, 4);
      Val(L, I, C);
      I := I + 1;
      R := Dm_Sec.ZeroLead(Inttostr(I), 4);
      Result := H + R;
    end
    else
    begin
      R := Dm_Sec.ZeroLead(Inttostr(1), 4);
      Result := H + R;
    end;
  end;
end;

procedure TFDlgptkit.InsBtnClick(Sender: TObject);
begin
  with QKitinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PTKITINV WHERE KITCODE ='''' ');
    OPEN;
    INSERT;
  end;

  with QKittrn do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PTKITTRN WHERE KITCODE ='''' ');
    OPEN;
  end;
  cxDBTextEdit3.SetFocus;
end;

procedure TFDlgptkit.FormCreate(Sender: TObject);
begin
  SFMAIN.Check_right('HDSET', 'HDSET02_A');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFDlgptkit.CancBtnClick(Sender: TObject);
begin
  QKitinv.Cancel;
  QKittrn.Cancel;
end;

procedure TFDlgptkit.SaveBtnClick(Sender: TObject);
begin
  if QKittrn.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการ');
  if cxDBTextEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้ใส่รหัสสินค้า');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_A', 'INSERT', QKitinvKITCODE.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_A', 'EDIT', QKitinvKITCODE.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Qkittrn.First;
  QKitinv.Post;
end;

procedure TFDlgptkit.NextBtnClick(Sender: TObject);
begin
  QKittrn.Append;
end;

procedure TFDlgptkit.DeleBtnClick(Sender: TObject);
begin
  if MessageDlg('แน่ใจหรือไม่ที่จะลบรายการ ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
    QKittrn.Delete;
end;

procedure TFDlgptkit.DelBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET02_A', 'DELETE', QKitinvKITCODE.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QKitinv.Delete;
      end;
  end;
end;

procedure TFDlgptkit.QKitinvBeforeDelete(DataSet: TDataSet);
begin
  QKittrn.First;
  while not QKittrn.Eof do
    QKittrn.Delete;
end;

procedure TFDlgptkit.QKitinvAfterPost(DataSet: TDataSet);
var
  K: string;
begin
  K := QKitinv.fieldByName('KITCODE').AsString;
  if not DM_SEC.HI_DBMS.InTransaction then
    DM_SEC.HI_DBMS.StartTransaction;
  try
    if QKitinv.Active then
      if (QKitinv.ApplyUpdates = 0) then
        QKitinv.CommitUpdates
      else
        raise Exception.Create(QKitinv.RowError.Message);
    if QKittrn.Active then
      if (QKittrn.ApplyUpdates = 0) then
        QKittrn.CommitUpdates
      else
        raise Exception.Create(QKittrn.RowError.Message);

    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QKitinv.Edit;
    raise;
  end;

  with QKitinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PTKITINV WHERE KITCODE =:XNO');
    PARAMS[0].ASSTRING := K;
    OPEN;
  end;

  with QKittrn do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PTKITTRN WHERE KITCODE =:XNO');
    PARAMS[0].ASSTRING := K;
    OPEN;
  end;
end;

procedure TFDlgptkit.QKitinvAfterCancel(DataSet: TDataSet);
begin
  if QKitinv.Active then
    QKitinv.CancelUpdates;
  if QKittrn.Active then
    QKittrn.CancelUpdates;
end;

procedure TFDlgptkit.QKittrnNewRecord(DataSet: TDataSet);
begin
  QKittrn.Fieldbyname('KITCODE').AsString := QKitinv.Fieldbyname('KITCODE').AsString;
  QKittrn.Fieldbyname('Qty').AsFloat := 1;
  QKittrnNUMBER.AsInteger := 0;
end;

procedure TFDlgptkit.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPtkit = Mrok then
  begin
    with QKitinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PTKITINV WHERE KITCODE =:XNO');
      PARAMS[0].ASSTRING := fSrcDlg.Keyno;
      OPEN;
    end;

    with QKittrn do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PTKITTRN WHERE KITCODE =:XNO ORDER BY NUMBER');
      PARAMS[0].ASSTRING := QKitinv.Fieldbyname('Kitcode').Asstring;
      OPEN;
    end;
  end;
end;

procedure TFDlgptkit.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFDlgptkit.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SaveBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFDlgptkit.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QKitinvKITCODE.AsString <> '');
  Editbtn.Enabled := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  cxGridDBTableView1.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGridDBTableView1.NavigatorButtons.Append.Enabled := SaveBtn.Visible;
  cxGridDBTableView1.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
    end;
  end;
  if (DataSource1.Dataset.State = DsEdit) then  // Don't Edit Primary key
    cxDBTextEdit1.Properties.ReadOnly := True;
end;

procedure TFDlgptkit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Query2.Close;
  FDlgptkit := Nil;
  Action := cAfree;
end;

procedure TFDlgptkit.FormShow(Sender: TObject);
begin
  with QKitinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PTKITINV WHERE KITCODE ='''' ');
    OPEN;
  end;
  with QKittrn do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PTKITTRN WHERE KITCODE ='''' ');
    OPEN;
  end;
  Query2.Open;
end;

procedure TFDlgptkit.QKitinvAfterDelete(DataSet: TDataSet);
begin
  Dm_Sec.hi_DBMS.StartTransaction;
  try
    if QKitinv.Active then
      if (QKitinv.ApplyUpdates = 0) then
        QKitinv.CommitUpdates
      else
        raise Exception.Create(QKitinv.RowError.Message);
    Dm_Sec.hi_DBMS.Commit;
  except
    Dm_Sec.hi_DBMS.Rollback;
    QKitinv.Edit;
    raise;
  end;

end;

procedure TFDlgptkit.QKittrnPARTNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
    PARAMS[0].ASSTRING := QKittrn.Fieldbyname('Partno').Asstring;
    PARAMS[1].ASSTRING := SFMain.Xlocat;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรหัสสินค้า');
  end;
end;

procedure TFDlgptkit.cxGridDBTableView1PARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    QKittrn.Fieldbyname('Partno').Asstring := fSrcDlg.Keyno;
end;

procedure TFDlgptkit.QKitinvKITCODEValidate(Sender: TField);
begin
  sfmain.Fieldexist('PTKITINV', 'KITCODE', QKitinvKITCODE.AsString);
end;

procedure TFDlgptkit.QKittrnPARTNOChange(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := QKittrnPARTNO.Asstring;
    PARAMS[1].ASSTRING := SFMain.Xlocat;
    Open;
    QKittrn.FieldByName('GROUP1').Asstring := Query1.fieldbyname('GROUP1').AsString;
    QKittrn.FieldByName('PARTDESC').Asstring := Query1.fieldbyname('DESC1').AsString;
    QKittrn.FieldByName('UPRICE').AsFloat := Query1.fieldbyname('STDBUY').AsFloat;
    QKittrn.FieldByName('NetPrc').AsFloat := Query1.fieldbyname('PRICE1').AsFloat;
  end;
end;

procedure TFDlgptkit.QKitinvBeforePost(DataSet: TDataSet);
var
  NRun: Integer;
begin
  QKittrn.DisableControls;
  QKittrn.First;
  while not (QKittrn.EoF) do
  begin
    if QKittrn.FieldByName('PARTNO').Asstring = '' then
      QKittrn.Delete;
    QKittrn.Next;
  end;
  QKittrn.EnableControls;

  if QKittrn.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');

  NRun := 1;
  if QKitinv.State in dsEditModes then
  begin
    QKittrn.DisableControls;
    QKittrn.First;
    while not QKittrn.Eof do
    begin
      QKittrn.Edit;
      QKittrnKITCODE.Asstring := QKitinvKITCODE.Asstring;
      QKittrnNUMBER.AsInteger := NRun;
      QKittrn.Next;
      Inc(NRun);
    end;
    QKittrn.EnableControls;
  end;
end;

procedure TFDlgptkit.QKitinvNewRecord(DataSet: TDataSet);
begin
  QKitinvKITCODE.AsString := RunDocno;
end;

procedure TFDlgptkit.cxGridDBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AStyle: TcxStyle;
  IndNo: string;
begin
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;
  ATextRect := AViewInfo.ContentBounds;
  AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
  InflateRect(ATextRect, -2, -1);
  if AIndicatorViewInfo.GridRecord.Selected then
    AStyle := sfmain.styleSelected
  else
    AStyle := sfmain.styleNormal;

  if AIndicatorViewInfo.GridRecord.Index + 1 = 0 then
    IndNo := ''
  else
    IndNo := IntToStr(AIndicatorViewInfo.GridRecord.Index + 1);

  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    ATextRect, [], cxBordersAll, cxbsNormal, taCenter, TcxAlignmentVert.vaCenter,
    False, False, IndNo,
    AStyle.Font, AStyle.TextColor, AStyle.Color);
  ADone := True;
end;

procedure TFDlgptkit.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PTKITINV.fr3', '2');
end;

procedure TFDlgptkit.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PTKITINV.fr3', '1');
end;

procedure TFDlgptkit.cxGridDBTableView1UNITPropertiesInitPopup(Sender: TObject);
begin
  Query2.Close;
  Query2.Open;
end;

procedure TFDlgptkit.cxGridDBTableView1UNITPropertiesCloseUp(Sender: TObject);
begin
  cxGrid2.SetFocus;
end;

procedure TFDlgptkit.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PKITCODE' then
    Value := cxDBTextEdit1.Text;
end;

procedure TFDlgptkit.QKittrnQTYValidate(Sender: TField);
begin
  if Datasource1.State in Dseditmodes then
    QKittrn.FieldByName('TotPrc').AsFloat := FRound((QKittrnNetprc.AsFloat * QKittrnQTY.AsFloat), 2);
end;

end.

