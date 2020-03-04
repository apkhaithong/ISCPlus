unit STMvRecv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask, DB, ComCtrls,
  Dbkbd, ImgList, ToolWin, RzDbkbd, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxDateRanges, System.Actions, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxButtonEdit,
  cxContainer, BusinessSkinForm, Vcl.ActnList, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxStatusBar, AdvGlowButton, AdvToolBar, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, AdvPanel, frxExportXLSX, frxRich,
  frxDCtrl, frxClass, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmStMvrecv = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label16: TLabel;
    Label10: TLabel;
    Label20: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranQTYRECV: TcxGridDBColumn;
    cxGridTranUCOST: TcxGridDBColumn;
    cxGridTranNETTOT: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    cxTextEdit2: TcxTextEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel3: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    cxGridTranPARTDESC: TcxGridDBColumn;
    Label32: TLabel;
    RecvDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit6: TcxDBButtonEdit;
    DBEdit7: TcxDBButtonEdit;
    DBEdit4: TcxDBButtonEdit;
    DBMemo1: TcxDBMemo;
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
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure insBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure DBEdit4BtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit6PropertiesChange(Sender: TObject);
    procedure DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure RecvDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmStMvrecv: TFmStMvrecv;
  XYear, XMonth, XDay: Word;
  OnHn1: double;

implementation

uses
  Dmic01, STHelp, DmSet1, uSrcDlg, USoftFirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmStMvrecv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmStMvrecv := Nil;
  Action := Cafree;
end;

procedure TFmStMvrecv.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');
  cxGridTran.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := False;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
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
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := True;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
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
  if not FmDmic01.QDBConfig.Active then
    FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_TRA').asstring = 'Y';
    //
  if FmDmic01.Rcinv1.State = dSInsert then
  begin
    DBEdit1.Enabled := SFMain.XChgLoc = 'Y';
  end;
end;

procedure TFmStMvrecv.FormShow(Sender: TObject);
begin
  with FmDmic01.Rcinv1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO ='''' ');
    OPEN;
  end;
end;

procedure TFmStMvrecv.insBtnClick(Sender: TObject);
begin
  with FmDmic01.Rcinv1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO ='''' ');
    OPEN;
    Insert;
  end;

  with FmDmic01.Rctrn1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO ='''' ');
    OPEN;
  end;
end;

procedure TFmStMvrecv.CancBtnClick(Sender: TObject);
begin
  FmDmic01.Rcinv1.Cancel;
end;

procedure TFmStMvrecv.SaveBtnClick(Sender: TObject);
begin
  if FmDmic01.Rcinv1OFFICCOD.AsString = '' then
    sfMain.RaiseException('ยังไม่บันทึกพนักงานรับของ');

  if DBEdit7.Text = '' then
    sfMain.RaiseException('ยังไม่บันทึกผู้ส่งสินค้า');

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_2_2', 'INSERT', FmDmic01.Rcinv1.FieldByName('RECVNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_2_2', 'EDIT', FmDmic01.Rcinv1.FieldByName('RECVNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  FmDmic01.Rcinv1.Post;
end;

procedure TFmStMvrecv.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalMOVEFM = Mrok then
  begin
    with FmDmic01.Rcinv1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO =:XRECVNO ');
      Params[0].AsString := fSrcDlg.Keyno;
      OPEN;
    end;
    with FmDmic01.Rctrn1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO =:XRECVNO ');
      Params[0].AsString := FmDmic01.Rcinv1Recvno.AsString;
      OPEN;
    end;
  end;
end;

procedure TFmStMvrecv.DBEdit4Exit(Sender: TObject);
begin
  if DBEdit1.text = DBEdit4.text then
    sfMain.RaiseException('สาขาเดียวกันไม่สามารถโอนย้ายได้');
end;

procedure TFmStMvrecv.delBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_2_2', 'DELETE', FmDmic01.RcInv1.FieldByName('RECVNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.RcInv1.Delete;
      end;
  end;
end;

procedure TFmStMvrecv.DBEdit4BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := 'T';
  fSrcDlg.Key_a := FmDmic01.Rcinv1RECVLOC.AsString;
  if fSrcDlg.ShowModalMOVETO = Mrok then
  begin
    FmDmic01.Rcinv1INVNO.AsString := fSrcDlg.Keyno;
    //
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MV_INVOI WHERE MOVNO =:XMOVNO');
      PARAMS[0].ASSTRING := FmDmic01.Rcinv1INVNO.AsString;
      OPEN;
      if (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
        sfMain.RaiseException('ไม่พบเลขที่ใบโอนนี้');

      FmDmic01.Rcinv1INVNO.AsString := FmDmic01.Query1.FieldByName('MovNo').AsString;
      FmDmic01.Rcinv1INVDATE.AsDateTime := FmDmic01.Query1.FieldByName('MovDT').AsDateTime;
      FmDmic01.Rcinv1TAXNO.AsString := FmDmic01.Query1.FieldByName('MovNo').AsString;
      FmDmic01.Rcinv1TAXDATE.AsDateTime := FmDmic01.Query1.FieldByName('MovDT').AsDateTime;
      FmDmic01.Rcinv1PONO.AsString := FmDmic01.Query1.FieldByName('MovFrm').AsString;
      FmDmic01.Rcinv1APCODE.AsString := FmDmic01.Query1.FieldByName('Officcod').AsString;
      FmDmic01.Rcinv1Memo1.AsString := FmDmic01.Query1.FieldByName('Memo1').AsString;
      FmDmic01.Rcinv1TOTCOST.AsFloat := FmDmic01.Query1.FieldByName('Totprc').AsFloat;
      FmDmic01.Rcinv1TOTAL.AsFloat := FmDmic01.Query1.FieldByName('Totprc').AsFloat;
      FmDmic01.Rcinv1NETAMT.AsFloat := FmDmic01.Query1.FieldByName('Totprc').AsFloat;
      FmDmic01.Rcinv1BALANCE.AsFloat := FmDmic01.Query1.FieldByName('Totprc').AsFloat;
    end;
    //
    with FmDmic01.Query2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MV_TRANS WHERE MOVNO=:XMOV');
      PARAMS[0].ASSTRING := FmDmic01.Rcinv1INVNO.Asstring;
      OPEN;
    end;

    if not (FmDmic01.Query2.Bof and FmDmic01.Query2.Eof) then
    begin
      FmDmic01.Query2.first;
      while not FmDmic01.Query2.Eof do
      begin
        FmDmic01.RcTrn1.Insert;
        FmDmic01.RcTrn1Recvno.AsString := FmDmic01.Rcinv1Recvno.AsString;
        FmDmic01.RcTrn1Recvloc.AsString := FmDmic01.Rcinv1Recvloc.AsString;
        FmDmic01.RcTrn1Recvdate.AsDateTime := FmDmic01.Rcinv1Recvdt.AsDateTime;
        FmDmic01.RcTrn1Year1.AsString := FmDmic01.Query2.FieldByName('Year1').AsString;
        FmDmic01.RcTrn1Partno.AsString := FmDmic01.Query2.FieldByName('Partno').AsString;
        FmDmic01.RcTrn1Ucost.AsFloat := FmDmic01.Query2.FieldByName('Uprice').AsFloat;
        FmDmic01.RcTrn1QtyORD.AsFloat := FmDmic01.Query2.FieldByName('QtyMov').AsFloat;
        FmDmic01.RcTrn1Qtyrecv.AsFloat := FmDmic01.Query2.FieldByName('QtyMov').AsFloat;
        FmDmic01.RcTrn1Nettot.AsFloat := FmDmic01.Query2.FieldByName('Totprc').AsFloat;
        FmDmic01.RcTrn1NetCOST.AsFloat := FmDmic01.RcTrn1Ucost.AsFloat;
        FmDmic01.RcTrn1FLAG.Asstring := FmDmic01.Rcinv1Flag.AsString;
        FmDmic01.RcTrn1APcode.AsString := 'TF';
        FmDmic01.RcTrn1.Post;

        FmDmic01.Query2.Next;
      end;
    end;
  end;
end;

procedure TFmStMvrecv.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_2_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmStMvrecv.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmStMvrecv.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFmStMvrecv.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.Rcinv1RECVLOC.Asstring := fSrcDlg.Keyno;
end;

procedure TFmStMvrecv.DBEdit1PropertiesChange(Sender: TObject);
begin
  Edit1.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBEdit1.Text);
end;

procedure TFmStMvrecv.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.Rcinv1OFFICCOD.Asstring := fSrcDlg.Keyno;
end;

procedure TFmStMvrecv.DBEdit6PropertiesChange(Sender: TObject);
begin
  Edit2.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit6.Text);
end;

procedure TFmStMvrecv.DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := 'T';
  fSrcDlg.Key_a := FmDmic01.Rcinv1RECVLOC.AsString;
  if fSrcDlg.ShowModalMOVETO = Mrok then
  begin
    FmDmic01.Rcinv1INVNO.AsString := fSrcDlg.Keyno;
    //
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MV_INVOI WHERE MOVNO =:XMOVNO');
      PARAMS[0].ASSTRING := FmDmic01.Rcinv1INVNO.AsString;
      OPEN;
      if (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
        sfMain.RaiseException('ไม่พบเลขที่ใบโอนนี้');
      FmDmic01.Rcinv1INVNO.AsString := FmDmic01.Query1.FieldByName('MovNo').AsString;
      FmDmic01.Rcinv1INVDATE.AsDateTime := FmDmic01.Query1.FieldByName('MovDT').AsDateTime;
      FmDmic01.Rcinv1TAXNO.AsString := FmDmic01.Query1.FieldByName('MovNo').AsString;
      FmDmic01.Rcinv1TAXDATE.AsDateTime := FmDmic01.Query1.FieldByName('MovDT').AsDateTime;
      FmDmic01.Rcinv1PONO.AsString := FmDmic01.Query1.FieldByName('MovFrm').AsString;
      //FmDmic01.Rcinv1APCODE.AsString   := FmDmic01.Query1.FieldByName('Officcod').AsString;
      FmDmic01.Rcinv1Memo1.AsString := FmDmic01.Query1.FieldByName('Memo1').AsString;
      FmDmic01.Rcinv1TOTCOST.AsFloat := FmDmic01.Query1.FieldByName('Totprc').AsFloat;
      FmDmic01.Rcinv1TOTAL.AsFloat := FmDmic01.Query1.FieldByName('Totprc').AsFloat;
      FmDmic01.Rcinv1NETAMT.AsFloat := FmDmic01.Query1.FieldByName('Totprc').AsFloat;
      FmDmic01.Rcinv1BALANCE.AsFloat := FmDmic01.Query1.FieldByName('Totprc').AsFloat;
    end;
    //
    with FmDmic01.Query2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MV_TRANS WHERE MOVNO=:XMOV');
      PARAMS[0].ASSTRING := FmDmic01.Rcinv1INVNO.Asstring;
      OPEN;
    end;

    if not (FmDmic01.Query2.Bof and FmDmic01.Query2.Eof) then
    begin
      FmDmic01.Query2.first;
      while not FmDmic01.Query2.Eof do
      begin
        FmDmic01.RcTrn1.Insert;
        FmDmic01.RcTrn1Recvno.AsString := FmDmic01.Rcinv1Recvno.AsString;
        FmDmic01.RcTrn1Recvloc.AsString := FmDmic01.Rcinv1Recvloc.AsString;
        FmDmic01.RcTrn1Recvdate.AsDateTime := FmDmic01.Rcinv1Recvdt.AsDateTime;
        FmDmic01.RcTrn1Year1.AsString := FmDmic01.Query2.FieldByName('Year1').AsString;
        FmDmic01.RcTrn1Partno.AsString := FmDmic01.Query2.FieldByName('Partno').AsString;
        FmDmic01.RcTrn1PARTDESC.AsString := FmDmic01.Query2.FieldByName('PARTDESC').AsString;
        FmDmic01.RcTrn1Ucost.AsFloat := FmDmic01.Query2.FieldByName('Uprice').AsFloat;
        FmDmic01.RcTrn1QtyORD.AsFloat := FmDmic01.Query2.FieldByName('QtyMov').AsFloat;
        FmDmic01.RcTrn1Qtyrecv.AsFloat := FmDmic01.Query2.FieldByName('QtyMov').AsFloat;
        FmDmic01.RcTrn1Nettot.AsFloat := FmDmic01.Query2.FieldByName('Totprc').AsFloat;
        FmDmic01.RcTrn1NetCOST.AsFloat := FmDmic01.RcTrn1Ucost.AsFloat;
        FmDmic01.RcTrn1FLAG.Asstring := FmDmic01.Rcinv1Flag.AsString;
        FmDmic01.RcTrn1APcode.AsString := 'TF';
        FmDmic01.Query2.Next;
      end;
      DBEdit4.Properties.ReadOnly := True;
      DBEdit4.Style.Color := clBtnFace;
    end;
  end;
end;

procedure TFmStMvrecv.RecvDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Rcinv1.fieldbyname('RECVDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Rcinv1.fieldbyname('RECVDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Rcinv1.fieldbyname('RECVDT').AsDateTime := FmDmic01.Rcinv1.fieldbyname('RECVDT').AsDateTime;
  end;
end;

procedure TFmStMvrecv.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
//  IF Uppercase(NAME)='DATETHAI' Then
//  Begin
//     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
//  End;
end;

procedure TFmStMvrecv.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PMOVTNO' then
    Value := DBEdit2.Text;
end;

procedure TFmStMvrecv.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RecvTranfer.fr3','1');
end;

procedure TFmStMvrecv.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RecvTranfer.fr3','2');
end;

procedure TFmStMvrecv.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAP = Mrok then
  begin
    FmDmic01.Rcinv1.FieldByname('APCODE').Asstring := fSrcDlg.KeyNo;
  end;
end;

procedure TFmStMvrecv.DBEdit7PropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Text := SFMain.FindShowDesc('APMAST', 'APNAME', 'APCODE', DBEdit7.text);
end;

procedure TFmStMvrecv.DBMemo1Click(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFmStMvrecv.DBMemo1Exit(Sender: TObject);
begin
  KeyPreview := True;
end;

end.

