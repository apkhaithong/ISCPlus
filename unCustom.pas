unit unCustom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, ComCtrls, DB, DBGrids, Dbkbd,
  ImgList, ToolWin, cxControls, cxContainer, cxEdit, cxImage, cxDBEdit, cxStyles,
  inifiles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, AdvSmoothButton,
  AdvGlowButton, AdvToolBar, AdvPanel, cxDropDownEdit, cxMaskEdit, cxButtonEdit,
  cxTextEdit, AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons, cxMemo,
  cxCalendar, cxLookAndFeelPainters, cxGroupBox, cxRadioGroup, cxLookAndFeels,
  FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator,
  dxDateRanges, dxStatusBar;

type
  TFormCustmst = class(TForm)
    AdvPanel1: TAdvPanel;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    QCustmast: TFDQuery;
    QCustmastCUSCOD: TStringField;
    QCustmastSNAM: TStringField;
    QCustmastNAME1: TStringField;
    QCustmastNAME2: TStringField;
    QCustmastNICKNM: TStringField;
    QCustmastBIRTHDT: TDateField;
    QCustmastADDRNO: TStringField;
    QCustmastIDCARD: TStringField;
    QCustmastIDNO: TStringField;
    QCustmastISSUBY: TStringField;
    QCustmastISSUDT: TDateField;
    QCustmastEXPDT: TDateField;
    QCustmastNATION: TStringField;
    QCustmastOCCUP: TStringField;
    QCustmastOFFIC: TStringField;
    QCustmastGRADE: TStringField;
    QCustmastACPDT: TDateField;
    QCustmastUSERID: TStringField;
    QCustmastMINCOME: TFloatField;
    QCustmastMAXCRED: TFloatField;
    QCustmastUpdateStatus: TStringField;
    QCustmastMEMBCOD: TStringField;
    QCustmastGRPCUS: TStringField;
    QCustmastPICTURE: TStringField;
    QCustmastDISCT: TFloatField;
    QCustmastSALLEV: TStringField;
    QCustmastSINCOME: TFloatField;
    QCustmastADDR_I: TStringField;
    QCustmastRODE_I: TStringField;
    QCustmastTUMB_I: TStringField;
    QCustmastAUMPID_I: TStringField;
    QCustmastPROVID_I: TStringField;
    QCustmastZIP_I: TStringField;
    QCustmastTELP_I: TStringField;
    QCustmastADDR_II: TStringField;
    QCustmastRODE_II: TStringField;
    QCustmastTUMB_II: TStringField;
    QCustmastAUMPID_II: TStringField;
    QCustmastPROVID_II: TStringField;
    QCustmastZIP_II: TStringField;
    QCustmastTELP_II: TStringField;
    QCustmastTEXT: TMemoField;
    QCustmastPROSPECT: TStringField;
    QCustmastEMAIL1: TStringField;
    QCustmastTAXID: TStringField;
    Socustmast: TDataSource;
    Query1: TFDQuery;
    QCondpay: TFDQuery;
    QDbconfig: TFDQuery;
    qrHisCar: TFDQuery;
    qrHisCarSTRNO: TStringField;
    qrHisCarREGNO: TStringField;
    qrHisCarTYPE: TStringField;
    qrHisCarMDLCOD: TStringField;
    qrHisCarCOLOR: TStringField;
    qrHisCarCUSCOD: TStringField;
    qrHisCarLASTSERV: TDateField;
    dsHisCar: TDataSource;
    qrHelp: TFDQuery;
    qrHelpCUSTNAME: TStringField;
    DataSource2: TDataSource;
    AdvPanel2: TAdvPanel;
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
    dxStatusBar1: TdxStatusBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    QCustmastTEL_MOBILE: TStringField;
    QCustmastTEL_HOME: TStringField;
    QCustmastTEL_OFFICE: TStringField;
    qrConvert: TFDQuery;
    ConvertBtn: TAdvGlowButton;
    Query2: TFDQuery;
    qrConvertCUSCOD: TStringField;
    qrConvertSNAM: TStringField;
    qrConvertNAME1: TStringField;
    qrConvertNAME2: TStringField;
    qrConvertTUMB_I: TStringField;
    qrConvertAUMPID_I: TStringField;
    qrConvertPROVID_I: TStringField;
    qrConvertZIP_I: TStringField;
    qrConvertAUMPCOD: TStringField;
    qrConvertPROVCOD: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Label35: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    Label40: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBRadioGroup1: TcxDBRadioGroup;
    cxGroupBox1: TcxGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    DBEdit22: TcxDBButtonEdit;
    DBEdit23: TcxDBButtonEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBButtonEdit4: TcxDBButtonEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBButtonEdit;
    DBEdit15: TcxDBTextEdit;
    DBComboBox3: TcxDBComboBox;
    DBEdit6: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBDateEdit1: TcxDBDateEdit;
    DBEdit32: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGrid2: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CUSTNAME: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    AdvGlowButton1: TAdvGlowButton;
    QCustmastLOCATLIST: TStringField;
    cxDBTextEdit16: TcxDBTextEdit;
    Label12: TLabel;
    QCustmastAGE: TIntegerField;
    QCustmastCREDIT: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure QCustmastAfterCancel(DataSet: TDataSet);
    procedure QCustmastAfterPost(DataSet: TDataSet);
    procedure QCustmastNewRecord(DataSet: TDataSet);
    procedure QCustmastCalcFields(DataSet: TDataSet);
    procedure QCustmastBIRTHDTValidate(Sender: TField);
    procedure QCustmastIDNOValidate(Sender: TField);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure QCustmastGRADEValidate(Sender: TField);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure QCustmastGRPCUSValidate(Sender: TField);
    procedure QCustmastPROVID_IValidate(Sender: TField);
    procedure QCustmastAUMPID_IValidate(Sender: TField);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QCustmastAUMPID_IChange(Sender: TField);
    procedure DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit22PropertiesChange(Sender: TObject);
    procedure DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit23PropertiesChange(Sender: TObject);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure QCustmastCUSCODValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit6PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit4PropertiesChange(Sender: TObject);
    procedure QCustmastBeforePost(DataSet: TDataSet);
    procedure ConvertBtnClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure QCustmastUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
  private
    { Private declarations }
    function ZeroLead(St: string; len: integer): string;
  public
    { Public declarations }
    Naddr, xaddrno, xaump, xprov, xzip, xtelp, Xaddr1, Xaddr2, Xtumb, YLocat, XRunCus: string;
    function RunCusCod(): string;
  end;

var
  FormCustmst: TFormCustmst;
  Data, xclick, x: integer;
  TmpS: TDataSet;
  Duplicate: Boolean;
  TSVConfig: TiniFile;

implementation

uses
  USoftFirm, Functn01, uFindData, DMSEC, DMSvSet, uSrcDlg;

{$R *.DFM}
procedure TFormCustmst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TSVConfig.WriteString('Last Aumpcod', 'Aumpcod', DBEdit22.Text);
  TSVConfig.WriteString('Last Provcod', 'Provcod', DBEdit23.Text);
  TSVConfig.WriteString('Last Snam', 'Snam', DBComboBox3.Text);

  QCustmast.Close;
  Action := caFree;
  FormCustmst := nil;
end;

procedure TFormCustmst.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QCustmastCUSCOD.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  DBRadioGroup1.Properties.ReadOnly := not SaveBtn.Enabled;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
      end;
      if (Components[N] is TcxDBComBoBox) and (TcxDBComBoBox(Components[N]).Tag = 0) then
      begin
        TcxDBComBoBox(Components[N]).Properties.ReadOnly := True;
        TcxDBComBoBox(Components[N]).Style.Color := clBtnFace;
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
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBComBoBox) and (TcxDBComBoBox(Components[N]).Tag = 0) then
      begin
        TcxDBComBoBox(Components[N]).Properties.ReadOnly := False;
        TcxDBComBoBox(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;

  if Datasource1.State = DsEdit then
    DBEdit1.Properties.ReadOnly := True;

  if not QDbConfig.Active then
    QDbConfig.Active;
  if QDbConfig.FieldByName('R_CUSCOD').Asstring = 'Y' then
  begin
    DBEdit1.Properties.ReadOnly := True;
    DBEdit1.Style.Color := clBtnface;
  end
  else
  begin
    DBEdit1.Properties.ReadOnly := False;
    DBEdit1.Style.Color := clWhite;
  end;

  DBRadioGroup1.Properties.ReadOnly := sfmain.XEditprc = 'N';
end;

procedure TFormCustmst.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        SFMain.Findexist('JOBORDER', 'CUSCOD', QCustmast.FieldByName('Cuscod').Asstring);
        SFMain.Findexist('ARCRED', 'CUSCOD', QCustmast.FieldByName('Cuscod').Asstring);
        SFMain.Findexist('ARFINC', 'CUSCOD', QCustmast.FieldByName('Cuscod').Asstring);
        SFMain.Findexist('ARRESV', 'CUSCOD', QCustmast.FieldByName('Cuscod').Asstring);
        SFMain.Findexist('AROPTMST', 'CUSCOD', QCustmast.FieldByName('Cuscod').Asstring);
        SFMain.Findexist('SVMAST', 'CUSCOD', QCustmast.FieldByName('Cuscod').Asstring);
        SFMain.Findexist('PK_INVOI', 'CUSCOD', QCustmast.FieldByName('Cuscod').Asstring);
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET03_5', 'DELETE', QCustmastCUSCOD.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QCustmast.Delete;
      end;
  end;
end;

procedure TFormCustmst.InsBtnClick(Sender: TObject);
begin
  if not QDbConfig.Active then
    QDbConfig.Active;
  XRunCus := QDbConfig.FieldByName('R_CUSCOD').Asstring;
  YLOCAT := SFMain.xlocat;
  with QCustmast do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :Edit1 ');
    Params[0].asstring := '';
    Open;
    Insert;
  end;
  with qrHisCar do
  begin
    Close;
    sql.Clear;
    Sql.Add('SELECT * FROM SVMAST WHERE CUSCOD=:0 ');
    Params[0].AsString := '';
    Open;
  end;

  if TSVConfig.ReadString('Last Aumpcod', 'Aumpcod', '') <> '' then
  begin
    QCustmastAUMPID_I.AsString := TSVConfig.ReadString('Last Aumpcod', 'Aumpcod', '');
    QCustmastPROVID_I.AsString := TSVConfig.ReadString('Last Provcod', 'Provcod', '');
    QCustmastSNAM.AsString := TSVConfig.ReadString('Last Snam', 'Snam', '');
  end;
end;

procedure TFormCustmst.CancBtnClick(Sender: TObject);
begin
  if cxGrid2.Visible = True then
    cxGrid2.Visible := False;

  QCustmast.cancel;
end;

procedure TFormCustmst.SaveBtnClick(Sender: TObject);
begin
  {if  qCustmast.FieldByName('GRPCUS').AsString = '' then
      SFMain.RaiseException('ยังไม่ได้บันทึกกลุ่มลูกค้า'); }
  {if  qCustmast.FieldByName('SNAM').AsString = '' then
      SFMain.RaiseException('ยังไม่ได้บันทึกคำนำหน้าลูกค้า');}
  if qCustmast.FieldByName('NAME1').AsString = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกชื่อลูกค้า');
  {if  qCustmast.FieldByName('NAME2').AsString = '' then
      SFMain.RaiseException('ยังไม่ได้บันทึกสกุลลูกค้า');}
  if qCustmast.FieldByName('AUMPID_I').AsString = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัสอำเภอ');
  if qCustmast.FieldByName('PROVID_I').AsString = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัสจังหวัด');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_5', 'INSERT', QCustmastCUSCOD.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_5', 'EDIT', QCustmastCUSCOD.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QCustmast.Post;
end;

procedure TFormCustmst.EditBtnClick(Sender: TObject);
begin
  if cxGrid2.Visible = True then
    cxGrid2.Visible := False;

  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalCusmast = Mrok then
  begin
    with QCustmast do
    begin
      close;
      sql.clear;
      Sql.add('SELECT * FROM CUSTMAST WHERE CUSCOD=:CUSCOD');
      Params[0].AsString := fFindData.Keyno;
      OPEN;
    end;
  end;
end;

procedure TFormCustmst.QCustmastAfterCancel(DataSet: TDataSet);
begin
  if QCustmast.Active then
    QCustmast.CancelUpdates;
  if QCondpay.Active then
    QCondpay.CancelUpdates;
end;

procedure TFormCustmst.QCustmastAfterPost(DataSet: TDataSet);
var
  S1: string;
begin
  S1 := QCustmast.Fieldbyname('Cuscod').Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QCustmast.Active then
      if (QCustmast.ApplyUpdates = 0) then
        QCustmast.CommitUpdates
      else
        raise Exception.Create(QCustmast.RowError.Message);
    if QCondpay.Active then
      if (QCondpay.ApplyUpdates = 0) then
        QCondpay.CommitUpdates
      else
        raise Exception.Create(QCondpay.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    QCustmast.Edit;
    raise;
  end;
  //
  with QCustmast do
  begin
    close;
    sql.clear;
    Sql.add('SELECT * FROM CUSTMAST WHERE CUSCOD=:CUSCOD');
    Params[0].AsString := S1;
    OPEN;
  end;
end;

procedure TFormCustmst.QCustmastNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QCustmast);
  Duplicate := False;
  //QCustmast.Fieldbyname('Cuscod').Asstring := RunCusCod();
  QCustmast.Fieldbyname('Addrno').Asstring := '1';
  QCustmast.Fieldbyname('PROSPECT').Asstring := 'N';
  QCustmast.Fieldbyname('SALLEV').Asstring := '1';
  QCustmast.Fieldbyname('Nation').Asstring := 'ไทย';
  QCustmast.Fieldbyname('IDCARD').Asstring := 'บัตรประชาชน';
end;

procedure TFormCustmst.QCustmastCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QCustmast.CachedUpdates then
    QCustmastUpdateStatus.Value := UpdateStatusStr[QCustmast.UpdateStatus];
end;

procedure TFormCustmst.QCustmastBIRTHDTValidate(Sender: TField);
var
  Year1, Month1, Day1, Year2, Month2, Day2: word;
  BirthY: TDateTime;
begin
  BirthY := QCustmast.FieldByName('Birthdt').AsDateTime;
  DecodeDate(BirthY, Year1, Month1, Day1);
  DecodeDate(Date, Year2, Month2, Day2);
  if Year1 > 1910 then
    QCustmast.FieldByName('Age').AsInteger := Year2 - Year1
  else
    QCustmast.FieldByName('Age').AsInteger := 0;
end;

procedure TFormCustmst.QCustmastIDNOValidate(Sender: TField);
begin
  //SFmain.Fieldexist('CUSTMAST','IDNO',QCustmastIDNO.AsString);

  if QCustmastIDNO.AsString <> '' then
  begin
    if not SFMain.ChkIdno(QCustmastIDNO.AsString) then
      sfmain.RaiseException('เลขที่บัตรประจำตัวไม่ถูกต้อง..!');
  end;
end;

function TFormCustmst.RunCusCod(): string;
var
  LC, H, L, R, Lno: string;
  I, C: Integer;
begin

  with Qcondpay do
  begin
    Close;
    Sql.clear;
    Sql.Add('SELECT H_CUSCOD,L_CUSCOD,DIRNAME FROM CONDPAY ');
    Open;
  end;
  if XRunCus = 'Y' then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      SQl.Add('SELECT LOCATCD,SHORTL FROM INVLOCAT WHERE LOCATCD=:V0');
      Params[0].Asstring := YLocat;
      Open;
      if not (Bof and Eof) then
        LC := FieldByName('SHORTL').Asstring;
    end;
    H := LC + Qcondpay.Fieldbyname('H_CUSCOD').Asstring;
    with Query1 do
    begin
      Close;
      Sql.Clear;
      SQl.Add('SELECT MAX(CUSCOD) AS MAXNO FROM CUSTMAST WHERE SUBSTR(CUSCOD,1,5)=:V0');
      Params[0].Asstring := H;
      Open;
      if not (Bof and Eof) then
      begin
        L := Copy(Query1.Fieldbyname('Maxno').Asstring, 6, 7);
        Val(L, I, C);
        I := I + 1;
        R := ZeroLead(Inttostr(I), 7);
        Result := H + R;
        Lno := Result;
      end
      else
      begin
        R := ZeroLead(Inttostr(1), 7);
        Result := H + R;
        Lno := Result;
      end;
    end;

  {   If Lno > L Then
     begin
       Qcondpay.Edit;
       Qcondpay.Fieldbyname('L_Cuscod').Asstring:= Lno;
       Qcondpay.Post;
     end;  }
  end;
end;

function TFormCustmst.ZeroLead(St: string; len: integer): string;
var
  Zero, Chr1: string;
  j, ll: integer;
begin
  Chr1 := Trim(St);
  Zero := '';
  ll := length(Chr1);
  if len < ll then
    len := ll;
  for j := 1 to len - ll do
    Zero := Zero + '0';
  Result := Zero + Chr1;
end;

procedure TFormCustmst.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFormCustmst.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F7 then
    EditBtnClick(Sender);
  if Key = VK_F2 then
    SaveBtnClick(Sender);
  if (Key = VK_F8) and (delbtn.Enabled = true) then
    DelBtnClick(Sender);
  if Key = VK_F5 then
    InsBtnClick(Sender);
end;

procedure TFormCustmst.FormShow(Sender: TObject);
begin
  if not QDbconfig.Active then
    QDbConfig.Open;
  with QCustmast do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = '''' ');
    Open;
  end;
  DBRadioGroup1.Visible := sfmain.XEditprc = 'Y';
end;

procedure TFormCustmst.QCustmastGRADEValidate(Sender: TField);
begin
  SFMain.FindNoExist('SETGRADE', 'GRDCOD', QCustmastGRADE.AsString);
end;

procedure TFormCustmst.DBDateEdit1Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(QCustmast.FieldByName('Birthdt').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      QCustmast.FieldByName('Birthdt').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      QCustmast.FieldByName('Birthdt').AsDateTime := QCustmast.FieldByName('Birthdt').AsDateTime;
  end;
end;

procedure TFormCustmst.QCustmastGRPCUSValidate(Sender: TField);
begin
  SFMain.FindNoExist('ARGROUP', 'ARGCOD', QCustmastGRPCUS.AsString);
end;

procedure TFormCustmst.QCustmastPROVID_IValidate(Sender: TField);
begin
  sfmain.FindNotExist('PROVCOD', 'SETPROV', QCustmastPROVID_I.AsString);
end;

procedure TFormCustmst.QCustmastUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TFormCustmst.QCustmastAUMPID_IValidate(Sender: TField);
begin
  sfmain.FindNotExist('AUMPCOD', 'SETAUMP', QCustmastAUMPID_I.AsString);
end;

procedure TFormCustmst.DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDLG, fSrcDLG);
  if fSrcDLG.ShowModalArgroup = Mrok then
    QCustMast.FieldByName('GRPCUS').AsString := fSrcDLG.Keyno;
end;

procedure TFormCustmst.QCustmastAUMPID_IChange(Sender: TField);
begin
  if (DataSource1.Dataset.State = DsInsert) or (DataSource1.Dataset.State = DsEdit) then
  begin
    QCustmast.FieldByName('ZIP_I').Asstring := QCustmast.FieldByName('AUMPID_I').Asstring;
    dm_sec.Do_With_Query(actOpen, query1, 'SELECT PROVCOD FROM SETAUMP WHERE AUMPCOD =:EDIT1', [QCustmast.FieldByName('AUMPID_I').Asstring]);
    if query1.FieldByName('PROVCOD').AsString <> '' then
      QCustmast.FieldByName('PROVID_I').Asstring := query1.FieldByName('PROVCOD').AsString;
  end;
end;

procedure TFormCustmst.DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetAump = Mrok then
  begin
    QCustmast.FieldByName('AUMPID_I').AsString := fFindData.Keyno;
  end;
end;

procedure TFormCustmst.DBEdit22PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM SETAUMP WHERE AUMPCOD=:XAUMP ');
    Params[0].asstring := DBEdit22.Text;
    OPEN;
    Edit1.Text := Query1.FieldByName('AumpDes').asstring;
  end;
end;

procedure TFormCustmst.DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetProv = Mrok then
  begin
    QCustmast.FieldByName('PROVID_I').AsString := fFindData.Keyno;
  end;
end;

procedure TFormCustmst.DBEdit23PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM SETPROV WHERE PROVCOD=:XPROV ');
    Params[0].asstring := DBEdit23.Text;
    OPEN;
    Edit2.Text := Query1.FieldByName('ProvDes').asstring;
  end;
end;

procedure TFormCustmst.cxDBMemo1Click(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFormCustmst.cxDBMemo1Exit(Sender: TObject);
begin
  KeyPreview := true;
end;

procedure TFormCustmst.QCustmastCUSCODValidate(Sender: TField);
begin
  sfmain.Fieldexist('CUSTMAST', 'CUSCOD', QCustmastCUSCOD.AsString);
end;

procedure TFormCustmst.FormCreate(Sender: TObject);
begin
  TSVConfig := TiniFile.Create(ExtractFilePath(Application.ExeName) + 'SVConfig.ini');
  SFMain.Check_right('HDSET', 'HDSET03_5');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFormCustmst.DBEdit6PropertiesChange(Sender: TObject);
begin
  if ((Datasource1.DataSet.State in dsEditmodes) and (sfmain.Xsrch = 'Y')) then
  begin
    cxGrid2.Visible := True;
    with qrHelp do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM VIEW_CUST WHERE CUSTNAME LIKE :EDIT1');
      qrHelp.Params[0].Asstring := Uppercase('%' + DBEdit6.Text + '%');
      qrHelp.Open;
    end;
  end;
end;

procedure TFormCustmst.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetAump = Mrok then
  begin
    QCustmast.FieldByName('AUMPID_II').AsString := fFindData.Keyno;
  end;
end;

procedure TFormCustmst.cxDBButtonEdit3PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM SETAUMP WHERE AUMPCOD=:XAUMP ');
    Params[0].asstring := cxDBButtonEdit3.Text;
    OPEN;
    cxTextEdit1.Text := Query1.FieldByName('AumpDes').asstring;
  end;
end;

procedure TFormCustmst.cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetProv = Mrok then
  begin
    QCustmast.FieldByName('PROVID_II').AsString := fFindData.Keyno;
  end;
end;

procedure TFormCustmst.cxDBButtonEdit4PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM SETPROV WHERE PROVCOD=:XPROV ');
    Params[0].asstring := cxDBButtonEdit4.Text;
    OPEN;
    cxTextEdit2.Text := Query1.FieldByName('ProvDes').asstring;
  end;
end;

procedure TFormCustmst.QCustmastBeforePost(DataSet: TDataSet);
begin
  if QCustmast.State = Dsinsert then
    QCustmast.Fieldbyname('Cuscod').Asstring := RunCusCod();
end;

procedure TFormCustmst.ConvertBtnClick(Sender: TObject);
begin
  with qrConvert do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT A.CUSCOD,A.SNAM,A.NAME1,A.NAME2,A.TUMB_I,A.AUMPID_I,A.PROVID_I,A.ZIP_I,SUBSTR(B.AUMPCOD,1,5) AUMPCOD,B.PROVCOD ' +
      'FROM CUSTMAST A,MAZDA.ARMAST_BAK B WHERE A.CUSCOD=B.CUSCOD');
    open;
  end;

  qrConvert.First;
  while not qrConvert.Eof do
  begin
    with query2 do
    begin
      close;
      sql.Clear;
      sql.Add('update CUSTMAST set aumpid_i =:0,zip_i =:1 where cuscod=:2');
      params[0].AsString := qrConvert.fieldbyname('AUMPCOD').AsString;
      params[1].AsString := qrConvert.fieldbyname('AUMPCOD').AsString;
      params[2].AsString := qrConvert.fieldbyname('CUSCOD').AsString;
      execSql;
    end;
    qrConvert.Next;
  end;
  showmessage('Success..');
end;

procedure TFormCustmst.AdvGlowButton1Click(Sender: TObject);
begin
  with qrConvert do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT A.CUSCOD,A.SNAM,A.NAME1,A.NAME2,A.TUMB_I,A.AUMPID_I,A.PROVID_I,A.ZIP_I,SUBSTR(B.AUMPCOD,1,5) AUMPCOD,B.PROVCOD ' +
      'FROM CUSTMAST A,MAZDA.ARMAST_BAK1 B WHERE A.CUSCOD=B.CUSCOD');
    open;
  end;

  qrConvert.First;
  while not qrConvert.Eof do
  begin
    with query2 do
    begin
      close;
      sql.Clear;
      sql.Add('update CUSTMAST set provid_i =:0 where cuscod=:1');
      params[0].AsString := qrConvert.fieldbyname('PROVCOD').AsString;
      params[1].AsString := qrConvert.fieldbyname('CUSCOD').AsString;
      execSql;
    end;
    qrConvert.Next;
  end;
  showmessage('Success..');
end;

end.

