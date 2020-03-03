unit STIn04;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask, DB, ComCtrls,
  Dbkbd, ToolWin, ImgList, RzDbkbd, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, AdvGlowButton, AdvToolBar, AdvPanel,
  cxLookAndFeelPainters, cxGroupBox, cxRadioGroup, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxContainer, ActnList, cxLookAndFeels,
  dxDateRanges, System.Actions, cxNavigator, dxStatusBar, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTIn04 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label13: TLabel;
    Label18: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label21: TLabel;
    Label31: TLabel;
    Label38: TLabel;
    Label22: TLabel;
    Label39: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranTAXREFNO: TcxGridDBColumn;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranQTYINV: TcxGridDBColumn;
    cxGridTranQTYRTN: TcxGridDBColumn;
    cxGridTranUPRICE: TcxGridDBColumn;
    cxGridTranNETPRC: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit14: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    RtDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit24: TcxDBButtonEdit;
    DBEdit20: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit3: TcxDBButtonEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit27: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
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
    frxBarCodeObject1: TfrxBarCodeObject;
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxGradientObject1: TfrxGradientObject;
    frxFDComponents1: TfrxFDComponents;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure insBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit1BtnClick(Sender: TObject);
    procedure DBEdit3BtnClick(Sender: TObject);
    procedure FldCombo1BtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FbtInvoiClick(Sender: TObject);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit24PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit24PropertiesChange(Sender: TObject);
    procedure RtDateExit(Sender: TObject);
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
  FmSTIn04: TFmSTIn04;
  XDate: TdateTime;
  Xyear, Xmonth, XDay: Word;

implementation

uses
  Dmic01, STHelp, DmSet1, uSrcDlg, USoftFirm, DmAp, unfrPreview, Dmsec;
{$R *.DFM}

procedure TFmSTIn04.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FmDmic01.Rtinv.State in Dseditmodes then
    SFMain.RaiseException('กรุณากดปุ่ม ยกเลิก และ ออก ตามขั้นตอน ');
  FmDmic01.Rtinv.Close;
  FmDmic01.QDBConfig.Close;
  Action := Cafree;
  FmSTIn04 := nil;
end;

procedure TFmSTIn04.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbGrid) and
      not (ActiveControl is TDBMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end
end;

procedure TFmSTIn04.insBtnClick(Sender: TObject);
begin
  with FmDmic01.Rtinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RT_INVOI WHERE RTNNO ='''' ');
    OPEN;
    INSERT;
  end;
  DBRadioGroup1.ItemIndex := 1;

  with FmDmic01.Rttran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RT_TRAN WHERE RTNNO ='''' ');
    OPEN;
  end;
  if DBEdit1.Enabled = false then
    DBEdit3.SetFocus
  else
    DBEdit1.SetFocus;
end;

procedure TFmSTIn04.DataSource1StateChange(Sender: TObject);
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
  DBRadioGroup1.Properties.ReadOnly := not SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SaveBtn.Visible;
  PrnBtn.Visible := (DataSource1.State = Dsbrowse) and (DBEdit2.Text <> '');

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

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
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

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
    end;
  end;

  if not (FmDmic01.QDBConfig.Active) then
    FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_RTG').asstring = 'Y';
   //
  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  RtDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
  DBEdit27.Properties.ReadOnly := True;
end;

procedure TFmSTIn04.CancBtnClick(Sender: TObject);
begin
  FmDmic01.Rtinv.Cancel;
end;

procedure TFmSTIn04.SaveBtnClick(Sender: TObject);
begin
  if FmDmic01.RtinvCREDNO.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบลดหนี้');

  if FmDmic01.RtTran.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_7', 'INSERT', FmDmic01.Rtinv.FieldByName('RTNNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_7', 'EDIT', FmDmic01.Rtinv.FieldByName('RTNNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  FmDmic01.Rtinv.Post;
end;

procedure TFmSTIn04.delBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_7', 'DELETE', FmDmic01.Rtinv.FieldByName('RTNNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.Rtinv.Delete;
      end;
  end;
end;

procedure TFmSTIn04.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbGrid) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end
    else if (ActiveControl is TDbGrid) then
      with TDBGrid(ActiveControl) do
        if Selectedindex < (FieldCount - 1) then
          Selectedindex := Selectedindex + 1
        else
        begin
          Selectedindex := 0;
          if FmDmic01.Rttran.State in [DsInsert] then
            FmDmic01.Rttran.Append;
          if FmDmic01.Rttran.State in [DsBrowse, DsEdit] then
            FmDmic01.Rttran.Next;
        end;
end;

procedure TFmSTIn04.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
  end;
end;

procedure TFmSTIn04.DBGrid1Exit(Sender: TObject);
begin
//   FmRt01.OnkeyDown  := FormKeyDown;
  FmSTIn04.OnkeyPress := FormKeyPress;
end;

procedure TFmSTIn04.DBGrid1Enter(Sender: TObject);
begin
  FmSTIn04.OnkeyDown := nil;
  FmSTIn04.OnkeyPress := nil;
end;

procedure TFmSTIn04.DBRadioGroup1Click(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 0 then
    FmDmic01.RtinvVATTYP.Asstring := '1';
  if DBRadioGroup1.ItemIndex = 1 then
    FmDmic01.RtinvVATTYP.Asstring := '2';
end;

procedure TFmSTIn04.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := '6';
  if fSrcDlg.ShowModalRtinv = Mrok then
  begin
    with FmDmic01.Rtinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM RT_INVOI WHERE RTNNO =:XRTNNO');
      PARAMS[0].ASSTRING := fSrcDlg.Keyno;
      OPEN;
    end;

    with FmDmic01.Rttran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM RT_TRAN WHERE RTNNO =:XRTNNO');
      PARAMS[0].ASSTRING := FmDmic01.RtinvRTNNO.AsString;
      OPEN;
    end;
  end;
end;

procedure TFmSTIn04.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');


  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_ApInvRT.fr3','1');
end;

procedure TFmSTIn04.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      if DelBtn.Visible then
        DelBtnClick(Sender);
    Vk_F2:
      if SaveBtn.Visible then
        SaveBtnClick(Sender);
    Vk_F5:
      if InsBtn.Visible then
        InsBtnClick(Sender);
  end;
end;

procedure TFmSTIn04.DBEdit1BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
  begin
    FmDmic01.RtinvRTNLoc.Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TFmSTIn04.DBEdit3BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalRcinvRt = Mrok then
  begin
    FmDmic01.RtinvINVNO.Asstring := fSrcDlg.qrFindDat.Fieldbyname('INVNO').Asstring;
  end;
end;

procedure TFmSTIn04.FldCombo1BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
  begin
    FmDmic01.RtinvOfficcod.Asstring := fSrcDlg.KeyNo;
  end;
end;

procedure TFmSTIn04.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_7');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmSTIn04.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn04.FbtInvoiClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalRcinvRt = Mrok then
    FmDmic01.RtinvINVNO.Asstring := fSrcDlg.qrFindDat.Fieldbyname('INVNO').Asstring;
end;

procedure TFmSTIn04.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO IN ' +
      '(SELECT RECVNO FROM RC_INVOI WHERE INVNO=:edit1)');
    Params[0].AsString := FmDmic01.RttranTAXREFNO.Asstring;
    Open;
    if not ((FmDmic01.Query1.Bof) and (FmDmic01.Query1.Eof)) then
    begin
      Application.CreateForm(TFmSTHelp, FmSTHelp);
      FmSTHelp.SoQuery1.Dataset := FmDmic01.Query1;
      FmSTHelp.RctranGrid.Visible := True;
      if FmSTHelp.Showmodal = Mrok then
      begin
        FmDmic01.RttranYear1.Asstring := FmDmic01.Query1.Fieldbyname('Year1').Asstring;
        FmDmic01.RttranPartno.Asstring := FmDmic01.Query1.Fieldbyname('Partno').Asstring;
        FmDmic01.RttranQtyinv.Asfloat := FmDmic01.Query1.Fieldbyname('QTYRECV').AsFloat;
        FmDmic01.RttranUPRICE.Asfloat := FmDmic01.Query1.Fieldbyname('NETCOST').AsFloat;
        FmDmic01.RttranCOST.Asfloat := FmDmic01.Query1.Fieldbyname('NETCOST').AsFloat;
      end;
    end;
  end;
  SFMain.Do_Show_DisplayFormat_Floating(FmDmic01.Query1);
end;

procedure TFmSTIn04.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.RtinvRTNLoc.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn04.DBEdit1PropertiesChange(Sender: TObject);
begin
  with Dm_Ap1.QLocat do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XLOCATCOD ');
    Params[0].Asstring := DBEdit1.Text;
    Open;
  end;
  cxTextEdit1.Text := Dm_Ap1.QLocat.fieldByName('LOCATNM').Asstring;
end;

procedure TFmSTIn04.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalRcinvRt = Mrok then
    FmDmic01.RtinvINVNO.Asstring := fSrcDlg.qrFindDat.Fieldbyname('INVNO').Asstring;
end;

procedure TFmSTIn04.DBEdit24PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.RtinvOfficcod.Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn04.DBEdit24PropertiesChange(Sender: TObject);
begin
  cxTextEdit4.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit24.text);
end;

procedure TFmSTIn04.RtDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Rtinv.fieldbyname('RTNDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Rtinv.fieldbyname('RTNDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Rtinv.fieldbyname('RTNDT').AsDateTime := FmDmic01.Rtinv.fieldbyname('RTNDT').AsDateTime;
  end;
end;

procedure TFmSTIn04.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
 { IF Uppercase(NAME)='DATETHAI' Then
  Begin
     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
  End; }
end;

procedure TFmSTIn04.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PAPRTNNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn04.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_ApInvRT.fr3','2');
end;

procedure TFmSTIn04.FormShow(Sender: TObject);
begin
  FmDmic01.XRtFlg := '6';
  with FmDmic01.Rtinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RT_INVOI WHERE RTNNO =:XRTNNO');
    PARAMS[0].ASSTRING := '';
    OPEN;
  end;
end;

end.

