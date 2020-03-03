unit Stin08;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask, DB, Dbkbd, ImgList,
  ToolWin, ComCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxTextEdit, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxContainer, cxMaskEdit, AdvGlowButton, AdvToolBar, AdvPanel, ActnList, cxMemo,
  cxLookAndFeels, cxLookAndFeelPainters, dxDateRanges, System.Actions,
  cxNavigator, RzDbkbd, dxStatusBar, frxExportXLSX, frxRich, frxTableObject,
  frxClass, frxDCtrl, frxFDComponents, frxGradient, frxExportImage,
  frxExportPDF, frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross,
  frxChBox, frxChart, frxBarcode;

type
  TFmSTIn08 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranQTYOUT: TcxGridDBColumn;
    cxGridTranUCOST: TcxGridDBColumn;
    cxGridTranNETCOST: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    Edit3: TcxTextEdit;
    Edit2: TcxTextEdit;
    AdjDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit11: TcxDBButtonEdit;
    DBMemo1: TcxDBMemo;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
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
    procedure insBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBEdit11BtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit11PropertiesChange(Sender: TObject);
    procedure AdjDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    NALLOW: string;
  end;

var
  FmSTIn08: TFmSTIn08;
  XDate: TDateTime;
  XDay, XMonth, XYear: Word;

implementation

uses
  Dmic01, DmSet1, uSrcDlg, Dlginvms, USoftFirm, unfrPreview, Dmsec;
{$R *.DFM}

var
  XRECVNO: string;

procedure TFmSTIn08.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmSTIn08 := Nil;
  Action := Cafree;
end;

procedure TFmSTIn08.insBtnClick(Sender: TObject);
begin
  with FmDmic01.ADJinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ADJ_INVOI WHERE ADJNO ='''' ');
    OPEN;
    INSERT;
  end;
  with FmDmic01.ADJtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ADJ_TRANS WHERE ADJNO ='''' ');
    OPEN;
  end;
end;

procedure TFmSTIn08.DataSource1StateChange(Sender: TObject);
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
  if not FmDmic01.QDBConfig.Active then
    FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_QA1').asstring = 'Y';
   //
end;

procedure TFmSTIn08.CancBtnClick(Sender: TObject);
begin
  FmDmic01.ADJinv.CancelUpdates;
  FmDmic01.ADJtran.CancelUpdates;
end;

procedure TFmSTIn08.SaveBtnClick(Sender: TObject);
begin
  if FmDmic01.AdjTran.RecordCount = 0 then
    sfMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_B_1', 'INSERT', FmDmic01.ADJinv.FieldByName('ADJNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_B_1', 'EDIT', FmDmic01.ADJinv.FieldByName('ADJNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  FmDmic01.ADJinv.Post;
end;

procedure TFmSTIn08.delBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');

  if FmDmic01.ADJinvPOSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_B_1', 'DELETE', FmDmic01.ADJinv.FieldByName('ADJNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.ADJinv.Delete;
      end;
  end;
end;

procedure TFmSTIn08.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAdjust = Mrok then
  begin
    with FmDmic01.ADJinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ADJ_INVOI WHERE ADJNO =:XADJNO');
      PARAMS[0].ASSTRING := fSrcDlg.Keyno;
      OPEN;
    end;

    with FmDmic01.ADJtran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM ADJ_TRANS WHERE ADJNO =:XADJNO');
      PARAMS[0].ASSTRING := FmDmic01.ADJinvADJNO.AsString;
      OPEN;
    end;
    with FmDmic01.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT  PARTNO  FROM ADJ_TRANS WHERE  ADJNO =:0 ');
      Params[0].asstring := '';
      open;
    end;

    FmDmic01.ADJtran.first;
    while not FmDmic01.ADJtran.eof do
    begin
      FmDmic01.qtemp.insert;
      FmDmic01.qtemp.fieldbyname('PARTNO').asstring := FmDmic01.ADJtran.fieldbyname('PARTNO').asstring;
      FmDmic01.qtemp.post;
      FmDmic01.ADJtran.Next;
    end;
  end;
end;

procedure TFmSTIn08.DBGrid2DblClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
      Params[0].Asstring := FmDmic01.ADJinv.Fieldbyname('ADJLOC').Asstring;
      Params[1].Asstring := fSrcDlg.KeyNo;
      ;
      Open;
      if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
        sfMain.RaiseException('ไม่พบรหัสสินค้า');
      FmDmic01.AdjtranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
    end;
  end;
end;

procedure TFmSTIn08.DBEdit11BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
  begin
    with Dm_set1.QOfficer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD=:OFFICCOD');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.QOfficer.EOF and Dm_Set1.QOfficer.BOF then
      sfMain.RaiseException('ไม่มีข้อมูล');
    FmDmic01.ADJinvOfficcod.Asstring := Dm_Set1.QOfficer.Fieldbyname('OFFICCOD').Asstring;
    Edit2.text := Dm_Set1.QOfficer.Fieldbyname('OFFICNAM').Asstring;
  end;
end;

procedure TFmSTIn08.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFmSTIn08.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_B_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  if not FmDmic01.CondPay.Active then
    FmDmic01.CondPay.Open;
  NAllow := FmDmic01.CondPay.Fieldbyname('NStkLob').Asstring; {ไม่ยอมให้สต็อกติดลบ?}
end;

procedure TFmSTIn08.DBGrid2Enter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TFmSTIn08.DBGrid2Exit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TFmSTIn08.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn08.FormShow(Sender: TObject);
begin
  with FmDmic01.ADJinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ADJ_INVOI WHERE ADJNO ='''' ');
    OPEN;
  end;
  with FmDmic01.ADJtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ADJ_TRANS WHERE ADJNO ='''' ');
    OPEN;
  end;
end;

procedure TFmSTIn08.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    if FmDmic01.Adjtran.State = DsBrowse then
      FmDmic01.Adjtran.Edit;
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
      Params[0].Asstring := FmDmic01.ADJinv.Fieldbyname('ADJLOC').Asstring;
      Params[1].Asstring := fSrcDlg.KeyNo;
      ;
      Open;
      if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
        sfMain.RaiseException('ไม่พบรหัสสินค้า');
      FmDmic01.AdjtranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
    end;
  end;
end;

procedure TFmSTIn08.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.ADJinvADJLoc.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn08.DBEdit1PropertiesChange(Sender: TObject);
begin
  Edit3.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBEdit1.Text);
end;

procedure TFmSTIn08.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.ADJinvOfficcod.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn08.DBEdit11PropertiesChange(Sender: TObject);
begin
  Edit2.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit11.Text);
end;

procedure TFmSTIn08.AdjDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.ADJinv.fieldbyname('ADJDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.ADJinv.fieldbyname('ADJDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.ADJinv.fieldbyname('ADJDATE').AsDateTime := FmDmic01.ADJinv.fieldbyname('ADJDATE').AsDateTime;
  end;
end;

procedure TFmSTIn08.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TFmSTIn08.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PADJNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn08.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_AdjInv.fr3', '1');
end;

procedure TFmSTIn08.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_AdjInv.fr3', '2');
end;

procedure TFmSTIn08.DBMemo1Click(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFmSTIn08.DBMemo1Exit(Sender: TObject);
begin
  KeyPreview := True;
end;

end.

