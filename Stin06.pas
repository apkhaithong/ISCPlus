unit STIn06;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask, DB, ComCtrls,
  Dbkbd, ImgList, ToolWin, RzButton, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxContainer, cxMaskEdit, AdvGlowButton, AdvToolBar, AdvPanel,
  ActnList, cxLookAndFeels, cxLookAndFeelPainters, dxDateRanges, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, RzDbkbd,
  dxStatusBar, cxMemo, frxExportXLSX, frxRich, frxTableObject, frxClass,
  frxDCtrl, frxFDComponents, frxGradient, frxExportImage, frxExportPDF,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFmSTIn06 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label8: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label16: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranQTYMOV: TcxGridDBColumn;
    cxGridTranUPRICE: TcxGridDBColumn;
    cxGridTranTOTPRC: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    Edit1: TcxTextEdit;
    Edit3: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit4: TcxTextEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TFDQuery;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    dxStatusBar1: TdxStatusBar;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    cxGridTranPARTDESC: TcxGridDBColumn;
    Label32: TLabel;
    DBEdit2: TcxDBTextEdit;
    Label1: TLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxGridTranWAREHOUSECOD: TcxGridDBColumn;
    Label22: TLabel;
    cxTextEdit1: TcxTextEdit;
    MovDate: TcxDBDateEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit4: TcxDBButtonEdit;
    DBEdit11: TcxDBButtonEdit;
    DBEdit5: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    DBMemo1: TcxDBMemo;
    AdvGlowButton1: TAdvGlowButton;
    Action1: TAction;
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
    procedure editBtnClick(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit4PropertiesChange(Sender: TObject);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit11PropertiesChange(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit5PropertiesChange(Sender: TObject);
    procedure MovDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGridTranWAREHOUSECODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    NALLOW: string;
  end;

var
  FmSTIn06: TFmSTIn06;
  XYear, XMonth, XDay: Word;
  OnHn1: double;

implementation

uses
  Dmic01, Dlginvms, DmSet1, uSrcDlg, USoftFirm, unfrPreview, Dmsec, uSrcDLG1,
  uSrcDLGAr;

{$R *.DFM}

procedure TFmSTIn06.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmSTIn06 := Nil;
  Action := Cafree;
end;

procedure TFmSTIn06.DataSource1StateChange(Sender: TObject);
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
  FmDmic01.QDBConfig.Close;
  FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_TRB').asstring = 'Y';
  DBEdit1.Enabled := (SFMain.XChgLoc = 'Y') and (DataSource1.Dataset.State = Dsinsert);
  MovDate.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = Dsinsert);
  DBEdit4.Enabled := DataSource1.Dataset.State = Dsinsert;
end;

procedure TFmSTIn06.insBtnClick(Sender: TObject);
begin
  with FmDmic01.Mvinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MV_INVOI WHERE MOVNO ='''' ');
    OPEN;
    INSERT;
  end;

  with FmDmic01.Mvtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MV_TRANS WHERE MOVNO ='''' ');
    OPEN;
  end;
  DBEdit4.SetFocus;
end;

procedure TFmSTIn06.CancBtnClick(Sender: TObject);
begin
  FmDmic01.Mvinv.Cancel;
end;

procedure TFmSTIn06.delBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_2_1', 'DELETE', FmDmic01.Mvinv.FieldByName('MOVNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.Mvinv.Delete;
      end;
  end;
end;

procedure TFmSTIn06.SaveBtnClick(Sender: TObject);
begin
  if DBEdit4.Text = '' then
    SFMain.RaiseException('ยังไม่ได้ใส่สาขาที่รับโอน');
  if FmDmic01.MvinvOFFICCOD.AsString = '' then
    SFMain.RaiseException('ไม่มีพนักงานโอนย้าย');
  if FmDmic01.MvinvAPPROVCD.AsString = '' then
    SFMain.RaiseException('ไม่มีผู้อนุมัติโอนย้าย');
  if FmDmic01.MvTran.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_2_1', 'INSERT', FmDmic01.Mvinv.FieldByName('MOVNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_2_1', 'EDIT', FmDmic01.Mvinv.FieldByName('MOVNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  FmDmic01.Mvinv.Post;
end;

procedure TFmSTIn06.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := '';
  fSrcDlg.Key_a := '';
  if fSrcDlg.ShowModalMOVETO = Mrok then
  begin
    with FmDmic01.Mvinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MV_INVOI WHERE MOVNO =:XMOVNO ');
      PARAMS[0].ASSTRING := fSrcDlg.KEYNO;
      OPEN;
    end;

    with FmDmic01.MvTran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MV_TRANS WHERE MOVNO =:XMOVNO ');
      PARAMS[0].ASSTRING := fSrcDlg.KEYNO;
      OPEN;
    end;

    with query1 do
    begin
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM OFFICER WHERE CODE=:0');
      Params[0].AsString := FmDmic01.Mvinv.Fieldbyname('RECVCOD').Asstring;
      Open;
    end;

    if FmDmic01.Mvinv.Fieldbyname('Flag').Asstring = '' then
    begin
      Label8.Caption := 'สถานะ : รับโอนเรียบร้อยแล้ว โดย ' + Query1.fieldByName('NAME').AsString + ' [' + FmDmic01.Mvinv.Fieldbyname('RECVCOD').Asstring + ']';
      DBkbd1.AllowDelete := False;
      DBkbd1.AllowEditing := False;
      DBkbd1.AllowInsert := False;
      DataSource1StateChange(Sender);
    end
    else
    begin
      Label8.Caption := 'สถานะ : ยังไม่รับโอน';
      DBkbd1.AllowDelete := sfMain.Del_right;
      DBkbd1.AllowEditing := sfMain.Edit_right;
      DBkbd1.AllowInsert := sfMain.Insert_right;
      DataSource1StateChange(Sender);
    end;
  end;
end;

procedure TFmSTIn06.DBGrid2EditButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      Sql.Add('SELECT PARTNO FROM INVENTOR WHERE (LOCAT =:XLOCAT) ' +
        'AND (PARTNO =:XPARTNO) ');
      Params[0].asString := FmDmic01.MvInvMOVFRM.asstring;
      Params[1].asString := fSrcDlg.Keyno;
      Open;
    end;
    FmDmic01.MvTranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
  end;
end;

procedure TFmSTIn06.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFmSTIn06.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_2_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmSTIn06.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn06.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      Sql.Add('SELECT PARTNO FROM INVENTOR WHERE (LOCAT =:XLOCAT) ' +
        'AND (PARTNO =:XPARTNO) ');
      Params[0].asString := FmDmic01.MvInvMOVFRM.asstring;
      Params[1].asString := fSrcDlg.Keyno;
      Open;
    end;
    FmDmic01.MvTranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
  end;
end;

procedure TFmSTIn06.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.MvInvMOVFRM.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn06.DBEdit1PropertiesChange(Sender: TObject);
begin
  Edit1.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBEdit1.Text);
end;

procedure TFmSTIn06.DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.MvInvMOVTo.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn06.DBEdit4PropertiesChange(Sender: TObject);
begin
  Edit2.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBEdit4.Text);
end;

procedure TFmSTIn06.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.MvInvOfficcod.AsString := fSrcDlg.Keyno;
end;

procedure TFmSTIn06.DBEdit11PropertiesChange(Sender: TObject);
begin
  Edit3.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit11.Text);
end;

procedure TFmSTIn06.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.MvInvApprovcd.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn06.DBEdit5PropertiesChange(Sender: TObject);
begin
  Edit4.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit5.Text);
end;

procedure TFmSTIn06.MovDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Mvinv.fieldbyname('MOVDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Mvinv.fieldbyname('MOVDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Mvinv.fieldbyname('MOVDT').AsDateTime := FmDmic01.Mvinv.fieldbyname('MOVDT').AsDateTime;
  end;
end;

procedure TFmSTIn06.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TFmSTIn06.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PMOVTNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn06.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Tranfer.fr3','2');
end;

procedure TFmSTIn06.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Tranfer.fr3','1');
end;

procedure TFmSTIn06.FormShow(Sender: TObject);
begin
  with FmDmic01.Mvinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MV_INVOI WHERE MOVNO =:XMOVNO');
    PARAMS[0].ASSTRING := '';
    OPEN;
  end;
  if not (FmDmic01.CondPay.Active) then
    FmDmic01.CondPay.Open;
  NAllow := FmDmic01.CondPay.Fieldbyname('NStkLob').Asstring; {ไม่ยอมให้สต็อกติดลบ?}
end;

procedure TFmSTIn06.DBMemo1Click(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFmSTIn06.DBMemo1Exit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFmSTIn06.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalTypeClaim = Mrok then
  begin
    cxButtonEdit3.Text := fSrcDlg1.KeyNo;
  end;
end;

procedure TFmSTIn06.cxGridTranWAREHOUSECODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalTypeClaim = Mrok then
  begin
    FmDmic01.Mvtran.fieldbyname('WAREHOUSECOD').AsString := fSrcDlg1.KeyNo;
  end;
end;

procedure TFmSTIn06.AdvGlowButton1Click(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_TranferInv.fr3','1');
end;

procedure TFmSTIn06.Action1Execute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_TranferInv.fr3','2');
end;

procedure TFmSTIn06.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalAR = Mrok then
    FmDmic01.MvInvCUSCOD.AsString := fSrcDlgAR.Keyno;
end;

procedure TFmSTIn06.cxDBButtonEdit1PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCUSCOD ');
    Params[0].Asstring := cxDBButtonEdit1.Text;
    Open;
  end;
  cxTextEdit1.Text := Query1.Fieldbyname('SNAM').Asstring + ' ' +
    Query1.Fieldbyname('NAME1').Asstring + ' '
    + Query1.Fieldbyname('NAME2').Asstring;
end;

end.

