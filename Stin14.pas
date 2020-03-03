unit Stin14;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, Mask, ComCtrls, DB,
  Dbkbd, ImgList, ToolWin, RzButton, RzDBGrid, RzSpnEdt, RzDbkbd, RzPanel,
  cxLookAndFeelPainters, cxTextEdit, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxGroupBox, AdvGlowButton, AdvToolBar, AdvPanel, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxButtonEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxRadioGroup, cxMaskEdit, cxDropDownEdit,
  cxCalendar, ActnList, cxLookAndFeels, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, dxStatusBar, cxButtons,
  frxExportXLSX, frxRich, frxDCtrl, frxClass, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTIn14 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label10: TLabel;
    Label20: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label39: TLabel;
    Label21: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    DBGrid1: TRzDBGrid;
    cxGroupBox1: TcxGroupBox;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit12: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    DBEdit23: TcxDBTextEdit;
    DBEdit24: TcxDBTextEdit;
    DBEdit25: TcxDBTextEdit;
    DBEdit26: TcxDBTextEdit;
    Edit3: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit5: TcxTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    rtDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit11: TcxDBButtonEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit7: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBText1: TcxDBTextEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBkbd1: TRzDBkbd;
    Query1: TFDQuery;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    AdvPanel3: TAdvPanel;
    NextBtn: TcxButton;
    DeleBtn: TcxButton;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure insBtnClick(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DBEdit11BtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure RzDBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DeleteBtnClick(Sender: TObject);
    procedure DBEdit3PropertiesChange(Sender: TObject);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure rtDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTIn14: TFmSTIn14;

implementation

uses
  Dmic01, DmSet1, uSrcDlg, Functn01, USoftFirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmSTIn14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FmDmic01.Pkinv.State in Dseditmodes then
    SFMain.RaiseException('กรุณากดปุ่ม ยกเลิก และ ออก ตามขั้นตอน ');

  FmDmic01.Pkinv.Close;
  FmDmic01.PkTran.Close;
  FmDmic01.QDbconfig.close;
  Action := Cafree;
  FmSTIn14 := nil;
end;

procedure TFmSTIn14.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbGrid) and
      not (ActiveControl is TDBMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end
end;

procedure TFmSTIn14.insBtnClick(Sender: TObject);
begin
  with FmDmic01.Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO ='''' ');
    OPEN;
    INSERT;
  end;

  with FmDmic01.PKtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO ='''' ');
    OPEN;
  end;
  if dbedit1.Enabled = false then
    dbedit7.SetFocus
  else
    dbedit1.SetFocus;
end;

procedure TFmSTIn14.NextBtnClick(Sender: TObject);
begin
  DBGrid1.Setfocus;
  DBGrid1.SelectedIndex := 0;

  if FmDmic01.Pktran.State in Dseditmodes then
    SFMain.RaiseException('ยังไม่Enter ผ่านช่องสุดท้าย');

  FmDmic01.Pktran.Append;
end;

procedure TFmSTIn14.CancBtnClick(Sender: TObject);
begin
  Edit5.text := '';
  FmDmic01.Pkinv.Cancel;
end;

procedure TFmSTIn14.DataSource1StateChange(Sender: TObject);
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
  NextBtn.Enabled := (DataSource1.Dataset.State in DsEditModes);
  DeleBtn.Enabled := NextBtn.Enabled;
  //
  DBRadioGroup1.Properties.ReadOnly := not (DataSource1.Dataset.State = DsInsert);

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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
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

      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := True;
        TRzDBGrid(Components[N]).Color := clBtnFace;
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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
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

      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := False;
        TRzDBGrid(Components[N]).Color := clWhite;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;

  FmDmic01.QDBConfig.Close;
  FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_RTPT').asstring = 'Y';
   //
  DBEdit1.Enabled := (SFMain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  RtDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
   //
  if FmDmic01.Pkinv.Fieldbyname('REFNO').asstring <> '' then
  begin
    DBKbd1.AllowEditing := False;
    DBkbd1.AllowInsert := False;
    DBkbd1.AllowDelete := False;
    DBGrid1.Readonly := True;
  end
  else
  begin
    DBKbd1.AllowEditing := true;
    DBkbd1.AllowInsert := true;
    DBkbd1.AllowDelete := true;
    DBGrid1.Readonly := false;
  end;
end;

procedure TFmSTIn14.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := 'R';
  if fSrcDlg.ShowModalpk = Mrok then
  begin
    with FmDmic01.Pkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := fSrcDlg.KeyNo;
      OPEN;
    end;

    with FmDmic01.PKtran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := FmDmic01.PkinvPkno.Asstring;
      OPEN;
    end;

    with FmDmic01.Query2 do
    begin
      close;
      sql.clear;
      sql.add('select cuscod,snam,name1,name2 from CUSTMAST WHERE cuscod =:EDIT1 ');
      Params[0].AsString := FmDmic01.PkinvCusCod.AsString;
      OPEN;
    end;
    Edit5.Text := FmDmic01.Query2.Fieldbyname('SNAM').Asstring +
      FmDmic01.Query2.Fieldbyname('NAME1').Asstring + '   ' +
      FmDmic01.Query2.Fieldbyname('NAME2').Asstring;

    DataSource1StateChange(Sender);
  end;
end;

procedure TFmSTIn14.DBRadioGroup1Click(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 0 then
    FmDmic01.PkinvVATTYPE.Asstring := '1';
  if DBRadioGroup1.ItemIndex = 1 then
    FmDmic01.PkinvVATTYPE.Asstring := '2';
end;

procedure TFmSTIn14.DBGrid1EditButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.SearchEd.Properties.Readonly := True;
  fSrcDlg.Key_a := FmDmic01.Pkinv.FieldByName('RTNPK').Asstring;
  if fSrcDlg.ShowModalPktrn = Mrok then
  begin
    FmDmic01.Pktran.FieldByName('PARTNO').Asstring := fSrcDlg.Keyno;
    FmDmic01.Pktran.FieldByName('QTYORD').AsFloat := fSrcDlg.qrFindDat.FieldByName('QTYOUT').AsFloat - fSrcDlg.qrFindDat.FieldByName('QTYBOD').AsFloat;
  end;
end;

procedure TFmSTIn14.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_IcPkRT.fr3','1');
end;

procedure TFmSTIn14.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
  end;
end;

procedure TFmSTIn14.DBGrid1ColExit(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
begin
  if (DbGrid1.SelectedField.FieldName) = 'PARTNO' then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO AND PARTNO=:XPART ');
      Params[0].asString := FmDmic01.Pkinv.FieldByName('RTNPK').Asstring;
      Params[1].asString := FmDmic01.PkTran.FieldByName('PARTNO').Asstring;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรหัสสินค้าตามใบเบิกนี้');
    end;
    if not (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
    begin
      FmDmic01.Pktran.FieldByName('QTYORD').AsFloat := FmDmic01.Query1.FieldByName('QTYOUT').AsFloat - FmDmic01.Query1.FieldByName('QTYBOD').AsFloat;
      FmDmic01.Pktran.FieldByName('UPRICE').AsFloat := FmDmic01.Query1.FieldByName('UPRICE').AsFloat;
      FmDmic01.Pktran.FieldByName('REDU1').AsFloat := FmDmic01.Query1.FieldByName('REDU1').AsFloat;
      FmDmic01.Pktran.FieldByName('REDU2').AsFloat := FmDmic01.Query1.FieldByName('REDU2').AsFloat;
      FmDmic01.Pktran.FieldByName('REDU3').AsFloat := FmDmic01.Query1.FieldByName('REDU3').AsFloat;
      FmDmic01.Pktran.FieldByName('NETFL').Asstring := FmDmic01.Query1.FieldByName('NETFL').Asstring;
      FmDmic01.Pktran.FieldByName('NETPRC').AsFloat := FmDmic01.Query1.FieldByName('NETPRC').AsFloat;
      FmDmic01.Pktran.FieldByName('AVGCOST').AsFloat := FmDmic01.Query1.FieldByName('AVGCOST').AsFloat;
      FmDmic01.Pktran.FieldByName('GROUP1').Asstring := FmDmic01.Query1.FieldByName('GROUP1').Asstring;
    end;

    {With FmDmic01.Query2 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT' );
      PARAMS[0].ASSTRING := FmDmic01.PkTran.FieldByName('PARTNO').Asstring;
      PARAMS[1].ASSTRING := FmDmic01.PkTran.FieldByName('Pklocat').Asstring;
      Open;
      RzDBLabel1.Caption := FmDmic01.Query2.Fieldbyname('Desc1').Asstring;
    end;}
  end;

  if (DbGrid1.SelectedField.FieldName) = 'QTYOUT' then
  begin
    if FmDmic01.Pktran.FieldByName('QTYOUT').AsFloat = 0 then
      SFMain.RaiseException('ยอดคืนเป็น 0');
    if FmDmic01.Pktran.FieldByName('QTYOUT').AsFloat > FmDmic01.Pktran.FieldByName('QTYORD').AsFloat then
      SFMain.RaiseException('ยอดคืนมากกว่ายอดเบิก');
  end;

  if (DbGrid1.SelectedField.FieldName = 'UPRICE') or
    (DbGrid1.SelectedField.FieldName = 'REDU1') then
  begin
    Pric1 := FRound(FmDmic01.PktranUPrice.Asfloat * (FmDmic01.PktranRedu1.Asfloat / 100), 2); //ราคา-ส่วนลด(%)
    SmPric1 := FmDmic01.PktranUPrice.Asfloat - Pric1;  //ราคา-ส่วนลด
    Pric2 := SmPric1 * (FmDmic01.Pktranredu2.Asfloat / 100);
    SmPric2 := SmPric1 - Pric2;
    Pric3 := SmPric2 * (FmDmic01.Pktranredu3.Asfloat / 100);
    SmPric3 := SmPric2 - Pric3;
    FmDmic01.PktranNetprc.AsFloat := SmPric3;
    FmDmic01.PktranTotPrc.AsFloat := FmDmic01.PktranNetprc.AsFloat * FmDmic01.PktranQTYOUT.AsFloat;
  end;
end;

procedure TFmSTIn14.SaveBtnClick(Sender: TObject);
var
  S: string;
begin
  S := DBEdit2.text;
  if FmDmic01.PkTran.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_D_2', 'INSERT', FmDmic01.Pkinv.FieldByName('PKNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_D_2', 'EDIT', FmDmic01.Pkinv.FieldByName('PKNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  FmDmic01.Pkinv.Post;

  Edit5.text := '';
end;

procedure TFmSTIn14.DBEdit11BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := '1';
  if fSrcDlg.ShowModalpk = Mrok then
  begin
    FmDmic01.Pkinv.FieldByName('RTNPK').Asstring := fSrcDlg.KeyNo;
  end;
end;

procedure TFmSTIn14.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_D_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  FmDmic01.Flag_a := 'R';
end;

procedure TFmSTIn14.DBGrid1Exit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TFmSTIn14.DeleBtnClick(Sender: TObject);
begin
  FmDmic01.Pktran.Delete;
end;

procedure TFmSTIn14.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  if FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring <> '' then
    SFMain.RaiseException('ออกใบส่งของ/ใบกำกับภาษีแล้ว #' + FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring);

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_D_2', 'DELETE', FmDmic01.Pkinv.FieldByName('PKNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.Pkinv.Delete;
      end;
  end;
end;

procedure TFmSTIn14.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn14.RzDBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F9:
      PrnBtnClick(Sender);
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

procedure TFmSTIn14.DeleteBtnClick(Sender: TObject);
begin
  if FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring <> '' then
    SFMain.RaiseException('ออกใบส่งของ/ใบกำกับภาษีแล้ว #' + FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring);
  if MessageDlg('คุณต้องการลบข้อมูล ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
    FmDmic01.Pkinv.delete;
end;

procedure TFmSTIn14.DBEdit3PropertiesChange(Sender: TObject);
begin
  if DBEdit3.Text <> '' then
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT SNAM,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD = :XCUD  ');
      Params[0].Asstring := DBEdit3.Text;
      Open;
      Edit5.Text := FmDmic01.Query1.Fieldbyname('SNAM').Asstring +
        FmDmic01.Query1.Fieldbyname('NAME1').Asstring + '   ' +
        FmDmic01.Query1.Fieldbyname('NAME2').Asstring;
    end;
end;

procedure TFmSTIn14.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.PkinvOFFICCOD.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn14.DBEdit7PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:EDIT');
    params[0].asstring := DBEdit7.Text;
    Open;
    Edit2.Text := Query1.Fieldbyname('NAME').asstring;
  end;
end;

procedure TFmSTIn14.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := '1';
  if fSrcDlg.ShowModalpk = Mrok then
    FmDmic01.Pkinv.FieldByName('RTNPK').Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn14.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.PkinvPKLOCAT.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn14.DBEdit1PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT LOCATNM FROM INVLOCAT WHERE LOCATCD =:0');
    PARAMS[0].ASSTRING := DBEdit1.TEXT;
    OPEN;
    EDIT3.TEXT := FmDmic01.Query2.FieldByname('LOCATNM').Asstring;
  end;
end;

procedure TFmSTIn14.rtDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime := FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime;
  end;
end;

procedure TFmSTIn14.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
 { IF Uppercase(NAME)='DATETHAI' Then
  Begin
     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
  End;  }
end;

procedure TFmSTIn14.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PRTNNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn14.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_IcPkRT.fr3','2');
end;

procedure TFmSTIn14.FormShow(Sender: TObject);
begin
  with FmDmic01.Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := '';
    OPEN;
  end;
  if not (FmDmic01.CondPay.Active) then
    FmDmic01.CondPay.Open;
end;

end.

