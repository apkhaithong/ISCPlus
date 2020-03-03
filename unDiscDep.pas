unit unDiscDep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Dbkbd, Db, ImgList,
  ToolWin, Grids, ActnList, RzDbkbd, RzBorder, RzSpnEdt, RzStatus, RzLabel,
  RzDBLbl, AdvGlowButton, AdvOfficeStatusBar, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxCheckBox, cxMemo, AdvToolBar, AdvPanel, n2wMoney, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar,
  cxGroupBox, frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject,
  frxExportPDF, frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrDisDep = class(TForm)
    AdvPanel1: TAdvPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    FldCombo2: TcxDBButtonEdit;
    DBEdit4: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    DBRecDt: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBTextEdit;
    DBMemo1: TcxDBMemo;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    qrStkDepRed: TFDQuery;
    qrStkDepRedUpdatestatus: TStringField;
    qrStkDepRedDEPRED: TStringField;
    qrStkDepRedLOCAT: TStringField;
    qrStkDepRedDEPDT: TDateField;
    qrStkDepRedREGRED: TStringField;
    qrStkDepRedFRONT: TStringField;
    qrStkDepRedHIND: TStringField;
    qrStkDepRedBOOK: TStringField;
    qrStkDepRedDEPOSIT: TFloatField;
    qrStkDepRedDISCDEP: TFloatField;
    qrStkDepRedMEMO1: TMemoField;
    qrStkDepRedUSERID: TStringField;
    qrStkDepRedINPDATE: TDateTimeField;
    qrStkDepRedREGNO: TStringField;
    n2wBill: Tn2wMoney;
    ActionList1: TActionList;
    atEdit: TAction;
    DBEdit3: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cxGroupBox1: TcxGroupBox;
    DBCheckBox1: TcxDBCheckBox;
    DBCheckBox2: TcxDBCheckBox;
    DBCheckBox3: TcxDBCheckBox;
    Query1: TFDQuery;
    qrStkDepRedSTRNO: TStringField;
    qrStkDepRedCUSCOD: TStringField;
    Query2: TFDQuery;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FldCombo2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SavBtnClick(Sender: TObject);
    procedure qrStkDepRedNewRecord(DataSet: TDataSet);
    procedure qrStkDepRedAfterPost(DataSet: TDataSet);
    procedure qrStkDepRedAfterDelete(DataSet: TDataSet);
    procedure EnqBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBRecDtExit(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure qrStkDepRedCalcFields(DataSet: TDataSet);
    procedure qrStkDepRedLOCATValidate(Sender: TField);
    procedure qrStkDepRedREGREDValidate(Sender: TField);
    procedure qrStkDepRedDEPDTValidate(Sender: TField);
    procedure FldCombo2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure atEditExecute(Sender: TObject);
    procedure qrStkDepRedDEPREDChange(Sender: TField);
    procedure qrStkDepRedREGREDChange(Sender: TField);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    XYear, XMonth, XDay: Word;
    XDate: TdateTime;
    { Public declarations }
  end;

var
  frDisDep: TfrDisDep;
  SVStr: string;

implementation

uses
  USoftFirm, Functn01, dm1, DmSec, SrchStk, Srchsal1, Srchset1, unfrPreview;

{$R *.DFM}

procedure TfrDisDep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  frDisDep := nil;
end;

procedure TfrDisDep.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');
  DBCheckBox1.Properties.ReadOnly := not SavBtn.Visible;
  DBCheckBox2.Properties.ReadOnly := not SavBtn.Visible;
  DBCheckBox3.Properties.ReadOnly := not SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := True;
        TcxDBmemo(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
      end;
      if (Components[n] is TcxDBCheckBox) and (TcxDBCheckBox(Components[n]).Tag = 0) then
      begin
        TcxDBCheckBox(Components[n]).Properties.Readonly := True;
        TcxDBCheckBox(Components[n]).Style.Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := False;
        TcxDBmemo(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := false;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
      end;
      if (Components[n] is TcxDBCheckBox) and (TcxDBCheckBox(Components[n]).Tag = 0) then
      begin
        TcxDBCheckBox(Components[n]).Properties.Readonly := False;
        TcxDBCheckBox(Components[n]).Style.Color := clBtnFace;
      end;
    end;
  end;
  if (DataSource1.Dataset.State = DsEdit) then
  begin
    FldCombo2.Enabled := False;
    DBRecDt.Enabled := False;
  end
  else
  begin
    FldCombo2.Enabled := True;
    DBRecDt.Enabled := True;
  end;
  if not Dm01.QDbConfig.Active then
    Dm01.QDbConfig.Open;
  DBEdit5.Properties.ReadOnly := Dm01.QDbConfig.FieldByName('H_HDRED').AsString = 'Y';
  FldCombo2.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBRecdt.Enabled := (SFMain.XChgdate = 'Y') and (DataSource1.Dataset.State = DsInsert);
end;

procedure TfrDisDep.InsBtnClick(Sender: TObject);
begin
  with qrStkDepRed do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM STKDEPRED WHERE DEPRED='''' ');
    open;
    Insert;
  end;
  DBCheckBox1.Checked := True;
  DBCheckBox2.Checked := True;
  DBCheckBox3.Checked := True;
end;

procedure TfrDisDep.DelBtnClick(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  if qrStkDepRedDISCDEP.AsFloat > 0 then
    SFMain.RaiseException('ลดหนี้เงินมัดจำแล้ว');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        qrStkDepRed.Delete;
      end;
  end;
end;

procedure TfrDisDep.CancBtnClick(Sender: TObject);
begin
  qrStkDepRed.Cancel;
end;

procedure TfrDisDep.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrDisDep.FldCombo2Change(Sender: TObject);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD =:0');
    params[0].AsString := FldCombo2.Text;
    open;
  end;
  Edit1.Text := query1.fieldbyname('LOCATNM').AsString;
end;

procedure TfrDisDep.FormShow(Sender: TObject);
begin
  with qrStkDepRed do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM STKDEPRED WHERE DEPRED='''' ');
    open;
  end;
end;

procedure TfrDisDep.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK03_3');
  DBkbd1.AllowInsert := SFMain.Insert_Right;
  DBkbd1.AllowEditing := SFMain.Edit_Right;
  DBkbd1.AllowDelete := SFMain.Del_Right;
end;

procedure TfrDisDep.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F7 then
    EnqBtnClick(Sender);
  if Key = VK_F2 then
    SavBtnClick(Sender);
  if (Key = VK_F8) and (Delbtn.Visible = True) then
    DelBtnClick(Sender);
  if (Key = VK_F5) and (InsBtn.Visible = True) then
    InsBtnClick(Sender);
end;

procedure TfrDisDep.SavBtnClick(Sender: TObject);
begin
  DBMemo1.SetFocus;
  if DBEdit4.Text = '' then
    SFMain.RaiseException('ยังไม่ระบุเลขคู่มืออ้างอิง..!');
  if qrStkDepred.FieldByName('DISCDEP').AsFloat = 0 then
    SFMain.RaiseException('ยังไม่ระบุจำนวนเงินลดหนี้..!');
  qrStkdepred.Post;
end;

procedure TfrDisDep.qrStkDepRedNewRecord(DataSet: TDataSet);
begin
  qrStkdepred.FieldByName('INPDATE').AsDateTime := Now;
  qrStkdepred.FieldByName('USERID').AsString := SFMain.Xuser_ID;
  qrStkdepred.FieldByName('LOCAT').AsString := SFMain.Xlocat;
  qrStkdepred.FieldByName('DEPDT').AsDateTime := SFMain.CR_DATE;
  qrStkdepred.FieldByName('DISCDEP').AsFloat := 0.00;
  qrStkdepred.FieldByName('DEPOSIT').AsFloat := 0.00;
end;

procedure TfrDisDep.qrStkDepRedAfterPost(DataSet: TDataSet);
var
  XRegno: string;
begin
  XRegno := qrStkdepRed.fieldbyname('DEPRED').AsString;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrStkdepRed.Active then
      if (qrStkdepRed.ApplyUpdates = 0) then
        qrStkdepRed.CommitUpdates
      else
        raise Exception.Create(qrStkdepRed.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrStkdepRed.Edit;
    raise;
  end;
  //
  with qrStkdepred do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM STKDEPRED WHERE DEPRED =:edit1');
    Params[0].AsString := XRegno;
    open;
  end;
end;

procedure TfrDisDep.qrStkDepRedAfterDelete(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrStkdepRed.Active then
      if (qrStkdepRed.ApplyUpdates = 0) then
        qrStkdepRed.CommitUpdates
      else
        raise Exception.Create(qrStkdepRed.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrStkdepRed.Edit;
    raise;
  end;
end;

procedure TfrDisDep.EnqBtnClick(Sender: TObject);
begin
  Application.CreateForm(TSearchSale, SearchSale);
  if SearchSale.ShowModalStkdepred = mrOK then
    with qrStkdepred do
    begin
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM STKDEPRED WHERE DEPRED =:0');
      params[0].AsString := SearchSale.Keyno;
      open;
    end;
end;

procedure TfrDisDep.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'frDisDeposit.fr3', '1');
end;

procedure TfrDisDep.DBRecDtExit(Sender: TObject);
begin
  if qrStkdepredDEPDT.AsDateTime > Date then
  begin
    sfmain.RaiseException('ไม่อนุญาตให้บันทึกล่วงหน้า');
  end;
end;

procedure TfrDisDep.DBMemo1Click(Sender: TObject);
begin
  frDisdep.KeyPreview := False;
end;

procedure TfrDisDep.DBMemo1Exit(Sender: TObject);
begin
  frDisdep.KeyPreview := True;
end;

procedure TfrDisDep.qrStkDepRedCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if qrStkdepred.CachedUpdates then
    qrStkdepredUpdateStatus.Value := UpdateStatusStr[qrStkdepred.UpdateStatus];
end;

procedure TfrDisDep.qrStkDepRedLOCATValidate(Sender: TField);
begin
  qrStkDepRedDEPDTValidate(Sender);
end;

procedure TfrDisDep.qrStkDepRedREGREDValidate(Sender: TField);
begin
  Dm01.Findnoexist('STKREGRED', 'REGRED', qrStkDepRedREGRED.AsString)
end;

procedure TfrDisDep.qrStkDepRedDEPDTValidate(Sender: TField);
var
  HF, LF, LV, sqltxt: string;
  DV: TdateTime;
begin
  if not Dm01.QDbconfig.Active then
    Dm01.QDbconfig.Open;
  if Dm01.QDbconfig.FieldByName('H_HDDEP').asstring = 'Y' then
  begin
    HF := 'H_HDDEP';
    LF := 'L_HDDEP';
    LV := qrStkdepred.Fieldbyname('LOCAT').asstring;
    DV := qrStkdepred.Fieldbyname('DEPDT').asDatetime;
    if qrStkdepredUpdateStatus.Value = 'Inserted' then
    begin
      sqltxt := 'SELECT MAX(DEPRED) AS MAXNO FROM STKDEPRED WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(DEPRED,2,2)=:EDIT2 AND SUBSTR(DEPRED,5,2)=:EDIT3 AND SUBSTR(DEPRED,7,2)=:EDIT4 ';
      qrStkdepredDEPRED.Asstring := Dm01.Maxno(HF, LF, LV, sqltxt, DV);
    end;
  end;
  //
  DecodeDate(DV, XYear, XMonth, XDay);
end;

procedure TfrDisDep.FldCombo2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetLocat = Mrok then
    qrStkDepred.fieldbyname('LOCAT').asstring := SearchSet.Keyno;
end;

procedure TfrDisDep.DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSale, SearchSale);
  SearchSale.StatDep := 'N';
  if SearchSale.ShowModalStkregred = mrOK then
    qrStkDepRed.FieldByName('REGRED').AsString := SearchSale.Keyno;
end;

procedure TfrDisDep.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//     n2wBill.Value := FRPARSER.Calc(P1);
//     VAL := n2wBill.Text;
//  END;
end;

procedure TfrDisDep.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'VDOCNO' then
    Value := DBEdit5.Text;
end;

procedure TfrDisDep.atEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'frDisDeposit.fr3', '2');
end;

procedure TfrDisDep.qrStkDepRedDEPREDChange(Sender: TField);
begin
  if (qrStkDepRed.State in dsEditModes) then
  begin
    with Dm01.Query1 do
    begin
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM STKREGRED WHERE REGRED =:0');
      params[0].AsString := DBEdit4.Text;
      open;
      qrStkDepRed.FieldByName('DEPOSIT').AsFloat := Dm01.Query1.fieldbyname('DEPOSIT').AsFloat - Dm01.Query1.fieldbyname('RECVDEP').AsFloat;
      qrStkDepRed.FieldByName('REGNO').AsString := Dm01.Query1.fieldbyname('REGNO').AsString;
    end;
  end;
end;

procedure TfrDisDep.qrStkDepRedREGREDChange(Sender: TField);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM STKREGRED WHERE REGRED =:EDIT1');
    params[0].AsString := qrStkDepRedREGRED.AsString;
    open;

    qrStkDepRedREGNO.AsString := query1.fieldbyname('REGNO').AsString;
    qrStkDepRedCUSCOD.AsString := query1.fieldbyname('REGNO').AsString;
    qrStkDepRedSTRNO.AsString := query1.fieldbyname('REGNO').AsString;
  end;
end;

end.

