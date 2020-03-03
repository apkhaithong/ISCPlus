unit unDeposit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Dbkbd, Db, ImgList,
  ToolWin, Grids, ActnList, RzDbkbd, RzBorder, RzSpnEdt, RzStatus, AdvGlowButton,
  AdvOfficeStatusBar, cxMaskEdit, cxButtonEdit, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxDropDownEdit, cxCalendar, cxCheckBox,
  cxMemo, cxLookAndFeelPainters, cxGroupBox, cxRadioGroup, AdvToolBar, AdvPanel,
  n2wMoney, cxGraphics, cxLookAndFeels, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar,
  frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrDepReg = class(TForm)
    AdvPanel1: TAdvPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DBEdit5: TcxDBTextEdit;
    FldCombo2: TcxDBButtonEdit;
    DBEdit2: TcxDBButtonEdit;
    DBRecDt: TcxDBDateEdit;
    DBEdit4: TcxDBButtonEdit;
    DBMemo1: TcxDBMemo;
    DBEdit1: TcxDBTextEdit;
    TypesaleRadio: TcxRadioGroup;
    DBEdit6: TcxDBButtonEdit;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    qrStkRegRed: TFDQuery;
    qrStkRegRedUpdatestatus: TStringField;
    qrStkRegRedREGNO: TStringField;
    qrStkRegRedLOCAT: TStringField;
    qrStkRegRedREDDT: TDateField;
    qrStkRegRedSTRNO: TStringField;
    qrStkRegRedFRONT: TStringField;
    qrStkRegRedHIND: TStringField;
    qrStkRegRedBOOK: TStringField;
    qrStkRegRedDEPOSIT: TFloatField;
    qrStkRegRedSTATDEP: TStringField;
    qrStkRegRedUSERID: TStringField;
    qrStkRegRedINPDATE: TDateTimeField;
    qrStkRegRedMEMO1: TMemoField;
    qrStkRegRedREGRED: TStringField;
    qrStkRegRedRECVDEP: TFloatField;
    qrStkRegRedCUSCOD: TStringField;
    n2wBill: Tn2wMoney;
    ActionList1: TActionList;
    atEdit: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    cxGroupBox1: TcxGroupBox;
    DBCheckBox1: TcxDBCheckBox;
    DBCheckBox2: TcxDBCheckBox;
    DBCheckBox3: TcxDBCheckBox;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    JEdit1: TcxTextEdit;
    Query1: TFDQuery;
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
    procedure qrStkRegRedNewRecord(DataSet: TDataSet);
    procedure qrStkRegRedAfterPost(DataSet: TDataSet);
    procedure qrStkRegRedAfterDelete(DataSet: TDataSet);
    procedure EnqBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBRecDtExit(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure qrStkRegRedCalcFields(DataSet: TDataSet);
    procedure qrStkRegRedLOCATValidate(Sender: TField);
    procedure qrStkRegRedSTRNOValidate(Sender: TField);
    procedure qrStkRegRedREDDTValidate(Sender: TField);
    procedure qrStkRegRedBeforeDelete(DataSet: TDataSet);
    procedure qrStkRegRedREGNOValidate(Sender: TField);
    procedure FldCombo2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure atEditExecute(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure DBEdit6PropertiesChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    XYear, XMonth, XDay: Word;
    XDate: TdateTime;
    { Public declarations }
  end;

var
  frDepReg: TfrDepReg;
  SVStr: string;

implementation

uses
  USoftFirm, Functn01, dm1, DmSec, SrchStk, Srchsal1, Srchset1, unfrPreview;

{$R *.DFM}

procedure TfrDepReg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  frDepReg := nil;
end;

procedure TfrDepReg.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  Dbkbd1.AllowEditing := qrStkRegRed.FieldByName('STATDEP').AsString = 'N';
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit5.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit5.Text <> '');
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
        TcxDBTextEdit(Components[n]).Style.Color := clBtnface;
      end;
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := True;
        TcxDBmemo(Components[n]).Style.Color := clBtnface;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnface;
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

procedure TfrDepReg.InsBtnClick(Sender: TObject);
begin
  with qrStkRegRed do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM STKREGRED WHERE REGRED='''' ');
    open;
    Insert;
  end;
end;

procedure TfrDepReg.DelBtnClick(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        qrStkRegRed.Delete;
      end;
  end;
end;

procedure TfrDepReg.CancBtnClick(Sender: TObject);
begin
  DBMemo1.SetFocus;
  qrStkRegRed.Cancel;
end;

procedure TfrDepReg.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrDepReg.FldCombo2Change(Sender: TObject);
begin
  with Dm01.query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD =:0');
    params[0].AsString := FldCombo2.Text;
    open;
  end;
end;

procedure TfrDepReg.FormShow(Sender: TObject);
begin
  with qrStkRegRed do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM STKREGRED WHERE REGRED='''' ');
    open;
  end;
end;

procedure TfrDepReg.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK03_2');
  DBkbd1.AllowInsert := SFMain.Insert_Right;
  DBkbd1.AllowEditing := SFMain.Edit_Right;
  DBkbd1.AllowDelete := SFMain.Del_Right;
end;

procedure TfrDepReg.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrDepReg.SavBtnClick(Sender: TObject);
begin
  if dbedit2.Text = '' then
    sfmain.RaiseException('กรุณาระบุเลขทะเบียน');
  if dbedit6.Text = '' then
    sfmain.RaiseException('กรุณาระบุรหัสลูกค้า');
  if DBEdit4.Text = '' then
    sfmain.RaiseException('กรุณาระบุเลขตัวถัง');
  qrStkRegRed.Post;
end;

procedure TfrDepReg.qrStkRegRedNewRecord(DataSet: TDataSet);
begin
  qrStkRegRed.FieldByName('USERID').AsString := SFMain.Xuser_ID;
  qrStkRegRed.FieldByName('INPDATE').AsDateTime := Now;
  qrStkRegRed.FieldByName('LOCAT').AsString := SFMain.Xlocat;
  qrStkRegRed.FieldByName('REDDT').AsDateTime := SFMain.CR_DATE;
  qrStkRegRed.FieldByName('DEPOSIT').AsFloat := 0.00;
  qrStkRegRed.FieldByName('RECVDEP').AsFloat := 0.00;
  TypesaleRadio.ItemIndex := 0;
end;

procedure TfrDepReg.qrStkRegRedAfterPost(DataSet: TDataSet);
var
  XRegno: string;
begin
  XRegno := qrStkRegRed.fieldbyname('REGRED').AsString;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrStkRegRed.Active then
      if (qrStkRegRed.ApplyUpdates = 0) then
        qrStkRegRed.CommitUpdates
      else
        raise Exception.Create(qrStkRegRed.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrStkRegRed.Edit;
    raise;
  end;
  with qrStkRegRed do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM STKREGRED WHERE REGRED =:edit1');
    Params[0].AsString := XRegno;
    open;
  end;
end;

procedure TfrDepReg.qrStkRegRedAfterDelete(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrStkRegRed.Active then
      if (qrStkRegRed.ApplyUpdates = 0) then
        qrStkRegRed.CommitUpdates
      else
        raise Exception.Create(qrStkRegRed.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrStkRegRed.Edit;
    raise;
  end;
end;

procedure TfrDepReg.EnqBtnClick(Sender: TObject);
begin
  Application.CreateForm(TSearchSale, SearchSale);
  if SearchSale.ShowModalStkregred = mrOK then
    with qrStkregred do
    begin
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM STKREGRED WHERE REGRED =:0');
      params[0].AsString := SearchSale.Keyno;
      open;
    end;
end;

procedure TfrDepReg.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'frDeposit.fr3', '1');
end;

procedure TfrDepReg.DBRecDtExit(Sender: TObject);
begin
  if qrStkRegredREDDT.AsDateTime > Date then
  begin
    MessageDlg('ไม่อนุญาติให้บันทึกล่วงหน้า..!', mtError, [mbOK], 0);
  end;
end;

procedure TfrDepReg.DBMemo1Click(Sender: TObject);
begin
  frDepReg.KeyPreview := False;
end;

procedure TfrDepReg.DBMemo1Exit(Sender: TObject);
begin
  frDepReg.KeyPreview := True;
end;

procedure TfrDepReg.qrStkRegRedCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if qrStkRegred.CachedUpdates then
    qrStkRegredUpdateStatus.Value := UpdateStatusStr[qrStkRegred.UpdateStatus];
end;

procedure TfrDepReg.qrStkRegRedLOCATValidate(Sender: TField);
begin
  Dm01.Findnoexist('INVLOCAT', 'LOCATCD', qrStkRegRedLOCAT.AsString);
end;

procedure TfrDepReg.qrStkRegRedSTRNOValidate(Sender: TField);
begin
  Dm01.Findexist('STKREGRED', 'STRNO', qrStkRegRedSTRNO.AsString);
end;

procedure TfrDepReg.qrStkRegRedREDDTValidate(Sender: TField);
var
  HF, LF, LV, sqltxt: string;
  DV: TdateTime;
begin
  if not Dm01.QDbconfig.Active then
    Dm01.QDbconfig.Open;
  if Dm01.QDbconfig.FieldByName('H_HDRED').asstring = 'Y' then
  begin
    HF := 'H_HDRED';
    LF := 'L_HDRED';
    LV := qrStkRegRed.Fieldbyname('LOCAT').asstring;
    DV := qrStkRegRed.Fieldbyname('REDDT').asDatetime;
    if qrStkRegRedUpdateStatus.Value = 'Inserted' then
    begin
      sqltxt := 'SELECT MAX(REGRED) AS MAXNO FROM STKREGRED WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(REGRED,2,2)=:EDIT2 AND SUBSTR(REGRED,5,2)=:EDIT3 AND SUBSTR(REGRED,7,2)=:EDIT4 ';
      qrStkRegRedREGRED.Asstring := Dm01.Maxno(HF, LF, LV, sqltxt, DV);
    end;
  end;
  //
  DecodeDate(DV, XYear, XMonth, XDay);
end;

procedure TfrDepReg.qrStkRegRedBeforeDelete(DataSet: TDataSet);
begin
  Dm01.Findexist('STKDEPRED', 'REGRED', qrStkRegRedREGRED.AsString);
end;

procedure TfrDepReg.qrStkRegRedREGNOValidate(Sender: TField);
begin
  Dm01.Findexist('STKREGRED', 'REGRED', qrStkRegRedREGNO.AsString);
end;

procedure TfrDepReg.FldCombo2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetLocat = Mrok then
    qrStkRegRed.fieldbyname('LOCAT').asstring := SearchSet.Keyno;
end;

procedure TfrDepReg.DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchStk, SearchStk);
  SearchStk.FlagRed := '1';
  SearchStk.LocatRed := qrStkRegRed.fieldbyname('LOCAT').AsString;
  if SearchStk.ShowModalStkRevred = mrOK then
    qrStkRegRedREGNO.AsString := SearchStk.HQuery1.fieldbyname('REGNO').AsString;
end;

procedure TfrDepReg.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if TypesaleRadio.ItemIndex = 0 then
  begin
    Application.CreateForm(TSearchSale, SearchSale);
    SearchSale.XTsale := 'C';
    if SearchSale.ShowModalSalHPCS = mrOK then
    begin
      qrStkRegRed.FieldByName('STRNO').AsString := SearchSale.HQuery1.fieldbyname('STRNO').AsString;
      qrStkRegRed.FieldByName('CUSCOD').AsString := SearchSale.HQuery1.fieldbyname('CUSCOD').AsString;
    end;
  end;
  if TypesaleRadio.ItemIndex = 1 then
  begin
    Application.CreateForm(TSearchSale, SearchSale);
    SearchSale.XTsale := 'F';
    if SearchSale.ShowModalSalHPCS = mrOK then
    begin
      qrStkRegRed.FieldByName('STRNO').AsString := SearchSale.HQuery1.fieldbyname('STRNO').AsString;
      qrStkRegRed.FieldByName('CUSCOD').AsString := SearchSale.HQuery1.fieldbyname('CUSCOD').AsString;
    end;
  end;
  if TypesaleRadio.ItemIndex = 2 then
  begin
    Application.CreateForm(TSearchSale, SearchSale);
    SearchSale.XTsale := 'A';
    if SearchSale.ShowModalSalHPCS = mrOK then
    begin
      qrStkRegRed.FieldByName('STRNO').AsString := SearchSale.HQuery1.fieldbyname('STRNO').AsString;
      qrStkRegRed.FieldByName('CUSCOD').AsString := SearchSale.HQuery1.fieldbyname('CUSCOD').AsString;
    end;
  end;
end;

procedure TfrDepReg.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalCusmast = MrOK then
    qrStkRegRedCUSCOD.AsString := SearchSet.Keyno;
end;

procedure TfrDepReg.atEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'frDeposit.fr3', '2');
end;

procedure TfrDepReg.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//     n2wBill.Value := FRPARSER.Calc(P1);
//     VAL := n2wBill.Text;
//  END;
end;

procedure TfrDepReg.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'VDOCNO' then
    Value := DBEdit5.Text;
end;

procedure TfrDepReg.DBEdit6PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO ' +
      'FROM CUSTMAST WHERE CUSCOD = :VAR');
    Params[0].asstring := DBEdit6.Text;
    open;
    JEdit1.Text := Query1.FieldByName('SNAM').Asstring +
      Query1.Fieldbyname('NAME1').asstring + '  ' +
      Query1.Fieldbyname('NAME2').asstring;
  end;
end;

end.

