unit STIn05;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, Buttons, Mask, DB, ComCtrls, ImgList,
  ToolWin, DBGrids, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxButtonEdit, cxLookAndFeelPainters, cxTextEdit, cxDBEdit, cxContainer,
  cxGroupBox, AdvGlowButton, AdvToolBar, AdvPanel, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxRadioGroup, ActnList, cxLookAndFeels, dxDateRanges,
  System.Actions, cxNavigator, RzDbkbd, dxStatusBar, cxMemo, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTIn05 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label19: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label15: TLabel;
    Label31: TLabel;
    Label38: TLabel;
    Label16: TLabel;
    Label39: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranQTYRTN: TcxGridDBColumn;
    cxGridTranQTYINV: TcxGridDBColumn;
    cxGridTranUPRICE: TcxGridDBColumn;
    cxGridTranNETPRC: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit14: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    RtDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit3: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit20: TcxDBButtonEdit;
    DBEdit22: TcxDBButtonEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit25: TcxDBTextEdit;
    DBEdit26: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBRadioGroup2: TcxDBRadioGroup;
    DBRadioGroup1: TcxDBRadioGroup;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    cxDBMemo1: TcxDBMemo;
    Label6: TLabel;
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
    procedure DataSource1StateChange(Sender: TObject);
    procedure insBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit3BtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit20PropertiesChange(Sender: TObject);
    procedure DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit22PropertiesChange(Sender: TObject);
    procedure RtDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    BufFree: string;
    { Public declarations }
  end;

var
  FmSTIn05: TFmSTIn05;

implementation

uses
  Dmic01, STHelp, uSrcDlg, USoftFirm, DmSet1, DmAp, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmSTIn05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FmDmic01.Rtinv.State in Dseditmodes then
    SFMain.RaiseException('กรุณากดปุ่ม ยกเลิก และ ออก ตามขั้นตอน ');

  FmDmic01.Rtinv.Close;
  FmDmic01.QDBConfig.Close;
  Action := Cafree;
  FmStin05 := nil;
end;

procedure TFmSTIn05.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (FmDmic01.RtinvRTNNO.AsString <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  DBRadioGroup1.Properties.ReadOnly := not SaveBtn.Visible;
  DBRadioGroup2.Properties.ReadOnly := not SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SaveBtn.Visible;
  PrnBtn.Visible := (DataSource1.State = Dsbrowse) and (FmDmic01.RtinvRTNNO.AsString <> '');

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
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
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
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_RCG').asstring = 'Y';
  DBEdit8.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_CRN').asstring = 'Y';
  DBEdit9.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_CRN').asstring = 'Y';
    //
  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  RtDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
end;

procedure TFmSTIn05.insBtnClick(Sender: TObject);
begin
  with FmDmic01.Rtinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RT_INVOI WHERE RTNNO ='''' ');
    OPEN;
    INSERT;
  end;
  with FmDmic01.Rttran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RT_TRAN WHERE RTNNO ='''' ');
    OPEN;
  end;
   //
  if dbedit1.Enabled = false then
    dbedit3.SetFocus
  else
    dbedit1.SetFocus;
end;

procedure TFmSTIn05.CancBtnClick(Sender: TObject);
begin
  FmDmic01.Rtinv.Cancel;
end;

procedure TFmSTIn05.delBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  if FmDmic01.RtinvPOSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSP06', 'DELETE', FmDmic01.Rtinv.FieldByName('RTNNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.Rtinv.Delete;
      end;
  end;
end;

procedure TFmSTIn05.SaveBtnClick(Sender: TObject);
begin
  if FmDmic01.RtTran.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSP06', 'INSERT', FmDmic01.Rtinv.FieldByName('RTNNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSP06', 'EDIT', FmDmic01.Rtinv.FieldByName('RTNNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  FmDmic01.Rtinv.Post;
end;

procedure TFmSTIn05.DBRadioGroup1Click(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 0 then
    FmDmic01.RtinvVATTYP.Asstring := '1';
  if DBRadioGroup1.ItemIndex = 1 then
    FmDmic01.RtinvVATTYP.Asstring := '2';
end;

procedure TFmSTIn05.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := '7';
  if sfmain.XChgLoc = 'Y' then
    fSrcDlg.XSrLocat := ''
  else
    fSrcDlg.XSrLocat := sfmain.Xlocat;
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

procedure TFmSTIn05.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_IcInvRT.fr3', '1');
end;

procedure TFmSTIn05.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
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

procedure TFmSTIn05.DBEdit3BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalTaxno = Mrok then
  begin
    FmDmic01.RtinvINVNO.Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TFmSTIn05.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSP', 'HDSP06');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmSTIn05.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn05.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFmSTIn05.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if FmDmic01.RtinvJOBNO.Asstring = '' then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM IC_TRANS WHERE Invno =:XInvno');
      Params[0].AsString := FmDmic01.RtinvTAXREFNO.Asstring;
      Open;
    end;
    //
    if not ((FmDmic01.Query1.Bof) and (FmDmic01.Query1.Eof)) then
    begin
      Application.CreateForm(TFmSTHelp, FmSTHelp);
      FmSTHelp.SoQuery1.Dataset := FmDmic01.Query1;
      FmSTHelp.IctranGrid.Visible := True;
      if FmSTHelp.Showmodal = Mrok then
      begin
        FmDmic01.Rttran.Edit;
        FmDmic01.RttranPartno.Asstring := FmDmic01.Query1.Fieldbyname('Partno').Asstring;
        FmDmic01.RttranQtyinv.Asfloat := FmDmic01.Query1.Fieldbyname('QTYOUT').AsFloat;
        FmDmic01.RttranUPRICE.Asfloat := FmDmic01.Query1.Fieldbyname('Netprc').AsFloat;
        FmDmic01.Rttrancost.Asfloat := FmDmic01.Query1.Fieldbyname('Avgcost').AsFloat;
        BufFree := FmDmic01.Query1.Fieldbyname('Free').Asstring;
      end;
    end
  end;
  //
  if FmDmic01.RtinvJOBNO.Asstring <> '' then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PARTTRAN WHERE JOBNO=:XJOB');
      Params[0].AsString := FmDmic01.RtinvJOBNO.Asstring;
      Open;
    end;
    //
    if not ((FmDmic01.Query1.Bof) and (FmDmic01.Query1.Eof)) then
    begin
      Application.CreateForm(TFmSTHelp, FmSTHelp);
      FmSTHelp.SoQuery1.Dataset := FmDmic01.Query1;
      FmSTHelp.Ictran_job.Visible := True;
      if FmSTHelp.Showmodal = Mrok then
      begin
        FmDmic01.Rttran.Edit;
        FmDmic01.RttranPartno.Asstring := FmDmic01.Query1.Fieldbyname('Partno').Asstring;
        FmDmic01.RttranQtyinv.Asfloat := FmDmic01.Query1.Fieldbyname('QTY').AsFloat;
        FmDmic01.RttranUPRICE.Asfloat := FmDmic01.Query1.Fieldbyname('UPRICE').AsFloat;
        FmDmic01.Rttrancost.Asfloat := FmDmic01.Query1.Fieldbyname('Avgcost').AsFloat;
      end;
    end
    else
      SFMain.RaiseException('JOB นี้ไม่มีรายการเบิกสินค้า');
  end;
end;

procedure TFmSTIn05.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.RtinvRTNLoc.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn05.DBEdit1PropertiesChange(Sender: TObject);
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

procedure TFmSTIn05.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalTaxno = Mrok then
    FmDmic01.RtinvINVNO.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn05.DBEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAR = Mrok then
    FmDmic01.RtinvApcode.Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn05.DBEdit20PropertiesChange(Sender: TObject);
begin
  with Dm_Ap1.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCODE ');
    Params[0].Asstring := DBEdit20.Text;
    Open;
    cxTextEdit2.Text := Dm_Ap1.Query1.FieldByName('NAME1').Asstring + ' ' + Dm_Ap1.Query1.FieldByName('NAME2').Asstring;
  end;
end;

procedure TFmSTIn05.DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.RtinvOfficcod.Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn05.DBEdit22PropertiesChange(Sender: TObject);
begin
  cxTextEdit4.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit22.text);
end;

procedure TFmSTIn05.RtDateExit(Sender: TObject);
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

procedure TFmSTIn05.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
 { IF Uppercase(NAME)='DATETHAI' Then
  Begin
     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
  End;}
end;

procedure TFmSTIn05.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PRTNNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn05.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_IcInvRT.fr3', '2');
end;

procedure TFmSTIn05.FormShow(Sender: TObject);
begin
  FmDmic01.XRtFlg := '7';
  with FmDmic01.Rtinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RT_INVOI WHERE RTNNO =:XRTNNO');
    PARAMS[0].ASSTRING := '';
    OPEN;
  end;
  if not (FmDmic01.CondPay.Active) then
    FmDmic01.CondPay.Open;
end;

procedure TFmSTIn05.cxDBMemo1Click(Sender: TObject);
begin
  FmSTIn05.KeyPreview := False;
end;

procedure TFmSTIn05.cxDBMemo1Exit(Sender: TObject);
begin
  FmSTIn05.KeyPreview := True;
end;

end.

