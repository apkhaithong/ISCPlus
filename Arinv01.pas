unit Arinv01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Buttons, Mask, DB, cxLookAndFeelPainters,
  ActnList, Dbkbd, cxGroupBox, cxRadioGroup, cxDBEdit, cxMemo, cxButtonEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, AdvGlowButton, AdvToolBar, AdvPanel,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxGraphics, cxLookAndFeels,
  System.Actions, BusinessSkinForm, dxStatusBar, frxBDEComponents, frxExportPDF,
  frxExportCSV, frxCross, frxExportImage, frxClass, frxExportBaseDialog,
  frxExportXLSX, frxRich, frxGradient, frxChBox, frxTableObject,
  frxFDComponents, frxChart, frxDCtrl, frxBarcode;

type
  TArinv_1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label20: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label23: TLabel;
    Label38: TLabel;
    Label18: TLabel;
    Edit3: TcxTextEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label41: TLabel;
    DBEdit8: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    SaleDate: TcxDBDateEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit9: TcxDBButtonEdit;
    DBEdit12: TcxDBTextEdit;
    TaxDate: TcxDBDateEdit;
    DBEdit7: TcxDBTextEdit;
    DueDate: TcxDBDateEdit;
    DBEdit30: TcxDBButtonEdit;
    DBEdit27: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    DBRadioGroup1: TcxDBRadioGroup;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
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
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxChartObject1: TfrxChartObject;
    frxFDComponents1: TfrxFDComponents;
    frxReportTableObject1: TfrxReportTableObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxPDFExport1: TfrxPDFExport;
    frxBDEComponents1: TfrxBDEComponents;
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SaveBtnClick(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit16Click(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClosBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit9Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1BtnClick(Sender: TObject);
    procedure DBEdit9BtnClick(Sender: TObject);
    procedure FldCombo1BtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBRadioGroup1PropertiesChange(Sender: TObject);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit5PropertiesChange(Sender: TObject);
    procedure DBEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit9PropertiesChange(Sender: TObject);
    procedure DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure SaleDateExit(Sender: TObject);
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
  Arinv_1: TArinv_1;

implementation

uses
  DmAr, functn01, SrchDlgAr, USoftFirm, DmSet1, uSrcDlgAR, unfrPreview, Dmsec;

{$R *.DFM}

procedure TArinv_1.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit4.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  DBRadioGroup1.Properties.ReadOnly := not SaveBtn.Visible;

  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit4.Text <> '');
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
    end;
  end;

  if not Dm_Ar.QDBConfig.Active then
    Dm_Ar.QDBConfig.Open;
  DBEdit4.Properties.Readonly := Dm_Ar.QDBConfig.Fieldbyname('H_OTH').asstring = 'Y';
   //
  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  SaleDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
end;

procedure TArinv_1.InsBtnClick(Sender: TObject);
begin
  with Dm_Ar.QArinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = '''' ');
    Open;
    Insert;
  end;
  DBRadioGroup1PropertiesChange(Sender);
  if DBEdit1.Enabled = false then
    DBEdit5.SetFocus
  else
    DBEdit1.SetFocus;
end;

procedure TArinv_1.DBEdit1Change(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :XLOCATCOD ');
    Params[0].Asstring := DBEdit1.Text;
    Open;
  end;
end;

procedure TArinv_1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if not (ActiveControl is TDbMemo) then
    begin
      Perform(Wm_NextDlgCtl, 0, 0);
      Key := #0;
    end;
end;

procedure TArinv_1.SaveBtnClick(Sender: TObject);
var
  XINV: string;
begin
  if DBEdit4.Text = '' then
    sfMain.RaiseException(' ไม่มีเลขที่ Invoice ');
  if DueDate.Text = '' then
    sfMain.RaiseException(' ยังไม่บันทึกวัน Due');
  if DBEdit5.Text = '' then
    sfMain.RaiseException(' ยังไม่บันทึกรหัสลูกค้า');
  if Dm_Ar.QArinv1.fieldbyname('TOTAL').asFloat = 0 then
    sfMain.RaiseException(' ยังไม่บันทึกยอดหนี้');
//  If DBEdit30.Text = '' Then
//     sfMain.RaiseException(' ยังไม่บันทึกชำระค่า');

  XINV := Dm_Ar.QArinv1.fieldbyname('INVNO').asstring;
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV13', 'INSERT', XINV)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV13', 'EDIT', XINV);

  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_Ar.QArinv1.Post;

  with Dm_Ar.QArinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = ' + '''' + XINV + '''' + '  ');
    Open;
  end;
end;

procedure TArinv_1.DBEdit13Exit(Sender: TObject);
begin
  if Dm_Ar.QArinv1.FieldByName('VATTYPE').Asstring = '1' then
  begin
    DBEdit16.Properties.ReadOnly := False;
    DBEdit14.Properties.ReadOnly := True;
  end
  else
  begin
    DBEdit16.Properties.ReadOnly := True;
    DBEdit14.Properties.ReadOnly := False;
  end;
  if Dm_Ar.QArinv1.FieldByName('VATTYPE').Asstring = '1' then
    DBEdit16.SetFocus;
  if Dm_Ar.QArinv1.FieldByName('VATTYPE').Asstring = '2' then
    DBEdit14.SetFocus;
end;

procedure TArinv_1.DBEdit16Click(Sender: TObject);
begin
  if Dm_Ar.QArinv1.FieldByName('VATRT').Asstring = '' then
  begin
    DBEdit13.SetFocus;
    sfMain.RaiseException('ยังไม่บันทึก ''อัตราภาษี'' ');
  end;
end;

procedure TArinv_1.DBEdit16Exit(Sender: TObject);
var
  XTOTAL, VVAT: Double;
  CTOTAL, CVAT: string;
begin
  if Dm_Ar.QArinv1.FieldByName('VATAMT').AsFloat = 0 then
  begin
    Dm_Ar.QArinv1.FieldByName('TOTAL').AsFloat := Dm_Ar.QArinv1.FieldByName('NETTOTAL').AsFloat;
    Dm_Ar.QArinv1.FieldByName('VATAMT').AsFloat := 0;
  end;
  begin
    XTOTAL := (Dm_Ar.QArinv1.FieldByName('NETTOTAL').AsFloat * 100
      / (100 + Dm_Ar.QArinv1.FieldByName('VATRT').AsFloat));
    CTOTAL := FloatToStrF(XTOTAL, ffFixed, 12, 2);
    Dm_Ar.QArinv1.FieldByName('TOTAL').AsFloat := StrToFloat(CTOTAL);
    VVAT := (Dm_Ar.QArinv1.FieldByName('NETTOTAL').AsFloat
      * Dm_Ar.QArinv1.FieldByName('VATRT').AsFloat
      / (100 + Dm_Ar.QArinv1.FieldByName('VATRT').AsFloat));
    CVAT := FloatToStrF(VVAT, ffFixed, 12, 2);
    Dm_Ar.QArinv1.FieldByName('VATAMT').AsFloat := StrToFloat(CVAT);
  end;
end;

procedure TArinv_1.DBEdit14Exit(Sender: TObject);
var
  XNET, VVAT: Double;
  CNET, CVAT: string;
begin
  XNET := (Dm_Ar.QArinv1.FieldByName('TOTAL').AsFloat *
    (100 + Dm_Ar.QArinv1.FieldByName('VATRT').AsFloat) / 100);
  CNET := FloatToStrF(XNET, ffFixed, 12, 2);
  Dm_Ar.QArinv1.FieldByName('NETTOTAL').AsFloat := StrToFloat(CNET);
  VVAT := (Dm_Ar.QArinv1.FieldByName('TOTAL').AsFloat *
    (Dm_Ar.QArinv1.FieldByName('VATRT').AsFloat) / 100);
  CVAT := FloatToStrF(VVAT, ffFixed, 12, 2);
  Dm_Ar.QArinv1.FieldByName('VATAMT').AsFloat := StrToFloat(CVAT);
  Dm_Ar.QArinv1.FieldByName('NETTOTAL').AsFloat := Dm_Ar.QArinv1.FieldByName('TOTAL').AsFloat
    + Dm_Ar.QArinv1.FieldByName('VATAMT').AsFloat;
end;

procedure TArinv_1.DBEdit17Exit(Sender: TObject);
begin
  Dm_Ar.QArinv1.FieldByName('INVDUE').AsDateTime := Dm_Ar.QArinv1.FieldByName('INVDATE').AsDateTime
    + Dm_Ar.QArinv1.FieldByName('CREDTM').AsFloat;
end;

procedure TArinv_1.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  fSrcDlgAR.XSC := ' AND FLAG = ''D'' ';
  if sfmain.XChgLoc = 'Y' then
    fSrcDlgAR.XSrLocat := ''
  else
    fSrcDlgAR.XSrLocat := sfmain.Xlocat;
  if fSrcDlgAR.ShowModalArinv1 = Mrok then
  begin
    with Dm_Ar.QArinv1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = :XINVNO ');
      Params[0].Asstring := fSrcDlgAR.Keyno;
      Open;
    end;
    DBEdit13.Properties.ReadOnly := True;
    DBEdit14.Properties.ReadOnly := True;
    DBEdit16.Properties.ReadOnly := True;
  end;
end;

procedure TArinv_1.CancBtnClick(Sender: TObject);
begin
  if Dm_Ar.QArinv1.Active then
    Dm_Ar.QArinv1.Cancel;
end;

procedure TArinv_1.DelBtnClick(Sender: TObject);
var
  P1: Double;
begin
  if DBEdit4.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  P1 := Dm_ar.QArinv1.FieldByName('Smpay').AsFloat +
    Dm_ar.QArinv1.FieldByName('Smchq').AsFloat;
  if P1 > 0 then
    sfMain.RaiseException('มีการชำระเงินแล้ว');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSV13', 'DELETE', Dm_Ar.QArinv1.FieldByName('INVNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        Dm_Ar.QArinv1.delete;
      end;
  end;
end;

procedure TArinv_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Ar.QArinv1.Close;
  Arinv_1 := Nil;
  Action := Cafree;
end;

procedure TArinv_1.ClosBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TArinv_1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
    Vk_F7:
      EditBtnClick(Sender);
    Vk_ESCAPE:
      CancBtnClick(Sender);
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

procedure TArinv_1.DBEdit9Exit(Sender: TObject);
begin
  with Dm_Ar.QOfficer do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE = :XOFFICCOD ');
    Params[0].Asstring := DBEdit9.Text;
    Open;
    if (DBedit9.Text <> '') and (Dm_Ar.QOfficer.Bof) and (Dm_Ar.QOfficer.Eof) then
      sfMain.RaiseException('ไม่พบรหัสพนักงาน');
  end;
end;

procedure TArinv_1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSV', 'HDSV13');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TArinv_1.DBEdit1BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalLocat = Mrok then
    Dm_Ar.QArinv1.FieldByName('LOCAT').Asstring := fSrcDlgAR.Keyno;
end;

procedure TArinv_1.DBEdit9BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalOffic = Mrok then
  begin
    with Dm_set1.QOfficer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OFFICER WHERE CODE=:OFFICCOD');
      Params[0].Asstring := fSrcDlgAR.KeyNo;
      Open;
    end;
    if Dm_Set1.QOfficer.EOF and Dm_Set1.QOfficer.BOF then
      sfMain.RaiseException('ไม่มีข้อมูล');
    Dm_Ar.QArinv1.FieldByName('OFFICCOD').Asstring := Dm_Set1.QOfficer.Fieldbyname('CODE').Asstring;
  end;
end;

procedure TArinv_1.FldCombo1BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalPayfor = Mrok then
    Dm_Ar.QArinv1.FieldByName('payfor').Asstring := fSrcDlgAR.KEYNO;
end;

procedure TArinv_1.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TArinv_1.DBEdit22Exit(Sender: TObject);
begin
  with Dm_Ar.QOfficer do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE = :XOFFICCOD ');
    Params[0].Asstring := DBEdit9.Text;
    Open;
    if (DBedit9.Text <> '') and (Dm_Ar.QOfficer.Bof) and (Dm_Ar.QOfficer.Eof) then
      sfMain.RaiseException('ไม่พบรหัสพนักงาน');
  end;
end;

procedure TArinv_1.PrnBtnClick(Sender: TObject);
begin
  if DBEdit4.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');


  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnArOth.fr3','1');
end;

procedure TArinv_1.DBRadioGroup1PropertiesChange(Sender: TObject);
begin
  if DBRadioGroup1.Itemindex = 0 then
  begin
    DBEdit14.Properties.ReadOnly := True;
    DBEdit15.Properties.ReadOnly := True;
    DBEdit16.Properties.ReadOnly := False;
    DBEdit14.Style.Color := $00FFFFC6;
    DBEdit16.Style.Color := clWindow;

    DBEdit14.Tabstop := False;
    DBEdit15.Tabstop := False;
    DBEdit16.Tabstop := True;
  end;
  if DBRadioGroup1.Itemindex = 1 then
  begin
    DBEdit14.Properties.ReadOnly := False;
    DBEdit16.Style.Color := $00FFFFC6;
    DBEdit14.Style.Color := clWindow;
    DBEdit15.Properties.ReadOnly := True;
    DBEdit16.Properties.ReadOnly := True;

    DBEdit14.Tabstop := True;
    DBEdit15.Tabstop := False;
    DBEdit16.Tabstop := False;
  end;
end;

procedure TArinv_1.cxDBMemo1Click(Sender: TObject);
begin
  Arinv_1.KeyPreview := False;
end;

procedure TArinv_1.cxDBMemo1Exit(Sender: TObject);
begin
  Arinv_1.KeyPreview := True;
end;

procedure TArinv_1.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalLocat = Mrok then
    Dm_Ar.QArinv1.FieldByName('LOCAT').AsString := fSrcDlgAR.qrFindDat.FieldByName('LOCATCD').AsString;
end;

procedure TArinv_1.DBEdit1PropertiesChange(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :0 ');
    Params[0].Asstring := DBEdit1.Text;
    Open;
  end;
  Edit3.Text := Dm_Ar.Query1.fieldbyname('LOCATNM').AsString;
end;

procedure TArinv_1.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalAR = Mrok then
    Dm_Ar.QArinv1.FieldByName('CUSCODE').Asstring := fSrcDlgAR.KeyNo;
end;

procedure TArinv_1.DBEdit5PropertiesChange(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCUSCOD ');
    Params[0].Asstring := DBEdit5.Text;
    Open;
  end;
  Edit1.Text := Dm_Ar.Query1.Fieldbyname('SNAM').Asstring + ' ' +
    Dm_Ar.Query1.Fieldbyname('NAME1').Asstring + ' '
    + Dm_Ar.Query1.Fieldbyname('NAME2').Asstring;
end;

procedure TArinv_1.DBEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalOffic = Mrok then
    Dm_Ar.QArinv1.FieldByName('OFFICCOD').Asstring := fSrcDlgAR.KeyNo;
end;

procedure TArinv_1.DBEdit9PropertiesChange(Sender: TObject);
begin
  with Dm_Ar.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE =:EDIT');
    Params[0].Asstring := DBEdit9.Text;
    Open;
  end;
  Edit2.Text := Dm_Ar.Query1.fieldbyname('NAME').AsString;
end;

procedure TArinv_1.DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlgAR, fSrcDlgAR);
  if fSrcDlgAR.ShowModalPayfor = Mrok then
    Dm_Ar.QArinv1.FieldByName('payfor').Asstring := fSrcDlgAR.KEYNO;
end;

procedure TArinv_1.SaleDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Ar.QArinv1.fieldbyname('INVDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Ar.QArinv1.fieldbyname('INVDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Ar.QArinv1.fieldbyname('INVDATE').AsDateTime := Dm_Ar.QArinv1.fieldbyname('INVDATE').AsDateTime;
  end;
end;

procedure TArinv_1.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TArinv_1.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PINVNO' then
    Value := DBEdit4.Text;
end;

procedure TArinv_1.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnArOth.fr3','2');
end;

procedure TArinv_1.FormShow(Sender: TObject);
begin
  with Dm_Ar.QArinv1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = '''' ');
    Open;
  end;
end;

end.

