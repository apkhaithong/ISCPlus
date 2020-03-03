unit Svst10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, ExtCtrls, Dbkbd, Csv_txt, ImgList,
  ToolWin, iniFiles, DateUtils, Menus, AdvGlowButton, AdvToolBar, AdvPanel,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxControls, cxContainer, cxEdit, cxMemo, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCurrencyEdit, cxImageComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, cxCheckBox, ActnList, cxLookAndFeels, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm,
  cxRadioGroup, dxStatusBar;

type
  TSvSt_10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label1: TLabel;
    Label59: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit9: TcxTextEdit;
    Edit8: TcxTextEdit;
    Edit1: TcxTextEdit;
    Edit3: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
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
    DBEdit25: TcxDBButtonEdit;
    DBEdit8: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    DBEdit28: TcxDBButtonEdit;
    DBEdit30: TcxDBButtonEdit;
    DBEdit31: TcxDBButtonEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit15: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    QSvmast: TFDQuery;
    QSvmastSTRNO: TStringField;
    QSvmastREGNO: TStringField;
    QSvmastENGNO: TStringField;
    QSvmastTYPE: TStringField;
    QSvmastMDLCOD: TStringField;
    QSvmastBAAB: TStringField;
    QSvmastCOLOR: TStringField;
    QSvmastCC: TStringField;
    QSvmastSDATE: TDateField;
    QSvmastCUSCOD: TStringField;
    QSvmastLASTSERV: TDateField;
    QSvmastLASTKILO: TFloatField;
    QSvmastBUYFROM: TStringField;
    QSvmastSVDISCT: TFloatField;
    QSvmastVIPCARD: TStringField;
    QSvmastVIPISSU: TDateField;
    QSvmastVIPEXP: TDateField;
    QSvmastINSURNO: TStringField;
    QSvmastINSURDT: TDateField;
    QSvmastWARANTY: TFloatField;
    QSvmastREGDATE: TDateField;
    QSvmastEXPWARNT: TDateField;
    QSvmastCUSTYPE: TStringField;
    QSvmastFIRSTDT: TDateField;
    QSvmastSTATUS: TStringField;
    QSvmastMEMO1: TMemoField;
    QSvmastUSERID: TStringField;
    QSvmastTIME1: TDateTimeField;
    QSvmastCANCELID: TStringField;
    QSvmastCANDAT: TDateTimeField;
    QSvmastEXPKILO: TFloatField;
    QSvmastEXPTYPE: TStringField;
    QSvmastPTDISCT: TFloatField;
    QSvmastINSURTYP: TStringField;
    QSvmastISCODE: TStringField;
    QSvmastPRBTYP: TStringField;
    QSvmastPRBISCOD: TStringField;
    QSvmastPRBEXPDT: TDateField;
    QSvmastGEARTYPE: TStringField;
    QSvmastMODLYEAR: TStringField;
    QSvmastESTUSE: TFloatField;
    QSvmastLOCAT: TStringField;
    QSvmastBODYNO: TStringField;
    QSvmastGCODE: TStringField;
    QSvmastROUNDKILO: TFloatField;
    QSvmastNEXTDTSV: TDateField;
    QSvmastNEXTKLSV: TFloatField;
    QSvmastROUNDDAY: TIntegerField;
    TmpQuery: TFDQuery;
    Query1: TFDQuery;
    ActionList1: TActionList;
    actEditPrn: TAction;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label61: TLabel;
    DBDateEdit1: TcxDBDateEdit;
    Label18: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label26: TLabel;
    cxTextEdit3: TcxTextEdit;
    Label27: TLabel;
    Label28: TLabel;
    cxTextEdit4: TcxTextEdit;
    cxDBRadioGroup3: TcxDBRadioGroup;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    QSvmastHORSEPOWER: TStringField;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    Label33: TLabel;
    procedure InsBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBMemo2Click(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure DBEdit28PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit28PropertiesChange(Sender: TObject);
    procedure DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit30PropertiesChange(Sender: TObject);
    procedure DBEdit31PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit15PropertiesChange(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure QSvmastBeforePost(DataSet: TDataSet);
    procedure QSvmastAfterPost(DataSet: TDataSet);
    procedure QSvmastAfterDelete(DataSet: TDataSet);
    procedure QSvmastAfterCancel(DataSet: TDataSet);
    procedure QSvmastNewRecord(DataSet: TDataSet);
    procedure QSvmastBeforeDelete(DataSet: TDataSet);
    procedure DBEdit31PropertiesChange(Sender: TObject);
    procedure DBEdit25PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QSvmastSTRNOValidate(Sender: TField);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesChange(Sender: TObject);
    procedure cxDBDateEdit2Exit(Sender: TObject);
    procedure cxDBDateEdit3Exit(Sender: TObject);
    procedure cxDBDateEdit5Exit(Sender: TObject);
    procedure cxDBDateEdit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RecDouble: Integer;
    Keystrno: string;
  end;

var
  SvSt_10: TSvSt_10;
  TSVConfig: TiniFile;

implementation

uses
  uSrcDlg1, USoftFirm, uSrcDLG, Dmsec, unfrPreview, DmSvSet, Srchset1, Dm1,
  uFindData; //,uPasswordFR;
{$R *.DFM}

procedure TSvSt_10.InsBtnClick(Sender: TObject);
begin
  with QSvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVMAST WHERE STRNO ='''' ');
    Open;
    Insert;
  end;
 { with TmpQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCOD ');
    Params[0].Asstring := QSvmast.FieldByName('CUSCOD').Asstring;
    Open;
  end;    }
  dbedit25.SetFocus;
 //  QSvmastGCODE.AsString   := TGLConfig.ReadString('Last GCode','GCode','');
end;

procedure TSvSt_10.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvCUST = Mrok then
  begin
    with QSvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SVMAST WHERE STRNO = :XCODE ');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
    if QSvmast.EOF and QSvmast.BOF then
      SFMain.RaiseException('ไม่มีข้อมูล');
    with TmpQuery do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCOD ');
      Params[0].Asstring := QSvmast.FieldByName('CUSCOD').Asstring;
      Open;
    end;
    if TmpQuery.EOF and TmpQuery.BOF then
      SFMain.RaiseException('ไม่มีรหัสในแฟ้มรหัสลูกหนี้');
  end;
end;

procedure TSvSt_10.SaveBtnClick(Sender: TObject);
begin
  if DBEdit25.Text = '' then
    SFMain.RaiseException('กรุณาใส่เลขตัวถังก่อนบันทึก!');
 // SFMain.ChkInteger(QSvmastTELP.AsString);

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_6', 'INSERT', QSvmastSTRNO.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET03_6', 'EDIT', QSvmastSTRNO.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QSvmast.Post;
end;

procedure TSvSt_10.DelBtnClick(Sender: TObject);
begin
  if DBEdit8.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET03_6', 'DELETE', QSvmastSTRNO.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QSvmast.Delete;
      end;
  end;
end;

procedure TSvSt_10.CancBtnClick(Sender: TObject);
begin
  if QSvmast.Active then
    QSvmast.Cancel;
end;

procedure TSvSt_10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TSVConfig.WriteString('Last GCode', 'GCode', DBEdit1.Text);
  QSvmast.Close;
  Action := Cafree;
  SvSt_10 := nil;
end;

procedure TSvSt_10.FormShow(Sender: TObject);
begin
  with QSvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVMAST WHERE STRNO ='''' ');
    Open;
  end;
end;

procedure TSvSt_10.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QSvmastSTRNO.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBImageComboBox) and (TcxDBImageComboBox(Components[N]).Tag = 0) then
      begin
        TcxDBImageComboBox(Components[N]).Properties.ReadOnly := True;
        TcxDBImageComboBox(Components[N]).Style.Color := clBtnFace;
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
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBImageComboBox) and (TcxDBImageComboBox(Components[N]).Tag = 0) then
      begin
        TcxDBImageComboBox(Components[N]).Properties.ReadOnly := False;
        TcxDBImageComboBox(Components[N]).Style.Color := clWhite;
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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
    end;
  end;
    //DBEdit25.Properties.Readonly := (DataSource1.State=DsEdit) or (DataSource1.State=DsBrowse);

  if Datasource1.State = DsEdit then
  begin
    DBEdit25.Properties.ReadOnly := True;
  end;
end;

procedure TSvSt_10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvSt_10.FormCreate(Sender: TObject);
begin
  TSVConfig := TiniFile.Create(ExtractFilePath(Application.ExeName) + 'SVConfig.ini');
  SFMain.Check_right('HDSET', 'HDSET03_6');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSvSt_10.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TSvSt_10.DBMemo2Click(Sender: TObject);
begin
  SvSt_10.KeyPreview := False;
end;

procedure TSvSt_10.DBMemo2Exit(Sender: TObject);
begin
  SvSt_10.KeyPreview := True;
end;

procedure TSvSt_10.cxDBMemo1Click(Sender: TObject);
begin
  SvSt_10.KeyPreview := False;
end;

procedure TSvSt_10.cxDBMemo1Exit(Sender: TObject);
begin
  SvSt_10.KeyPreview := True;
end;

procedure TSvSt_10.DBEdit28PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalType = Mrok then
    QSvmast.FieldByName('TYPE').Asstring := fSrcDlg1.KeyNo;
end;

procedure TSvSt_10.DBEdit28PropertiesChange(Sender: TObject);
begin
  Edit8.Text := SFMain.FindShowDesc('SETTYPE', 'TYPEDES', 'TYPECOD', DBEdit28.text);
end;

procedure TSvSt_10.DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalModel = Mrok then
  begin
    QSvmast.FieldByName('MDLCOD').Asstring := fSrcDlg1.qrFindDat.Fieldbyname('MODELCOD').AsString;
    QSvmast.FieldByName('BAAB').Asstring := fSrcDlg1.qrFindDat.Fieldbyname('SUBMODEL').AsString;
  end;
end;

procedure TSvSt_10.DBEdit30PropertiesChange(Sender: TObject);
begin
  Edit9.Text := SFMain.FindShowDesc('SETMODEL', 'MODELDES', 'MODELCOD', DBEdit30.text);
end;

procedure TSvSt_10.DBEdit31PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSetColor = Mrok then
    QSvmast.FieldByName('COLOR').Asstring := fSrcDlg1.KeyNo;
end;

procedure TSvSt_10.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSetgroup = Mrok then
    QSvmast.FieldByName('GCODE').Asstring := fSrcDlg1.Keyno;
end;

procedure TSvSt_10.DBEdit1PropertiesChange(Sender: TObject);
begin
  Edit1.Text := SFMain.FindShowDesc('SETGROUP', 'GDESC', 'GCODE', DBEdit1.text);
end;

procedure TSvSt_10.DBEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalAR = Mrok then
    QSvmast.FieldByName('CUSCOD').Asstring := fSrcDlg1.KeyNo;
  ;
end;

procedure TSvSt_10.DBEdit15PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCOD ');
    Params[0].Asstring := QSvmast.FieldByName('CUSCOD').Asstring;
    Open;
    Edit3.Text := Query1.Fieldbyname('Snam').Asstring + Query1.Fieldbyname('Name1').Asstring + ' ' +
      Query1.Fieldbyname('Name2').Asstring;
  end;
end;

procedure TSvSt_10.DBDateEdit1Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(QSvmast.FieldByName('SDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      QSvmast.FieldByName('SDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      QSvmast.FieldByName('SDATE').AsDateTime := QSvmast.FieldByName('SDATE').AsDateTime;
  end;
end;

procedure TSvSt_10.QSvmastBeforePost(DataSet: TDataSet);
begin
  if QSvmast.Fieldbyname('STRNO').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกหมายเลขตัวถัง');
  if QSvmast.Fieldbyname('CUSCOD').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
  if QSvmast.Fieldbyname('MDLCOD').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรุ่นรถ');
end;

procedure TSvSt_10.QSvmastAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QSvmastSTRNO.AsString;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QSvmast.Active then
      if (QSvmast.ApplyUpdates = 0) then
        QSvmast.CommitUpdates
      else
        raise Exception.Create(QSvmast.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;

  Dm01.Do_With_Query(actOpen, QSvmast, 'select * from SVMAST where STRNO =:0', [S]);
end;

procedure TSvSt_10.QSvmastAfterDelete(DataSet: TDataSet);
begin
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if QSvmast.Active then
      if (QSvmast.ApplyUpdates = 0) then
        QSvmast.CommitUpdates
      else
        raise Exception.Create(QSvmast.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TSvSt_10.QSvmastAfterCancel(DataSet: TDataSet);
begin
  if QSvmast.Active then
    QSvmast.CancelUpdates;
end;

procedure TSvSt_10.QSvmastNewRecord(DataSet: TDataSet);
begin
  Qsvmast.Fieldbyname('Custype').Asstring := '1';
  Qsvmast.Fieldbyname('INSURTYP').Asstring := 'N';
  Qsvmast.Fieldbyname('PRBTYP').Asstring := 'N';
  Qsvmast.Fieldbyname('Svdisct').AsFloat := 0;
  QSvmast.Fieldbyname('Firstdt').AsDatetime := Now;
  Qsvmast.Fieldbyname('USERID').Asstring := SFMain.XUser_id;
  QSvmast.Fieldbyname('Time1').AsDatetime := Now;
  Qsvmast.Fieldbyname('LOCAT').Asstring := SFMain.XLocat;
  Qsvmast.Fieldbyname('GEARTYPE').Asstring := 'A';
  Qsvmast.Fieldbyname('ESTUSE').AsFloat := 0;
  Qsvmast.Fieldbyname('EXPTYPE').Asstring := 'Y';
end;

procedure TSvSt_10.QSvmastBeforeDelete(DataSet: TDataSet);
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFMain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT STRNO FROM JOBORDER WHERE STRNO=:XCUS');
    Params[0].asstring := QSvmast.Fieldbyname('Strno').Asstring;
    Open;
    if not (Bof and Eof) then
      SFMain.RaiseException('หมายเลขถังนี้มีการเปิด Job แล้ว ควรใช้วิธีเปลี่ยนแปลงเลขถัง ');
  end;
end;

procedure TSvSt_10.DBEdit31PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('SETCOLOR', 'COLORDES', 'COLORCOD', DBEdit31.text);
end;

procedure TSvSt_10.DBEdit25PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalDetailCar = Mrok then
    QSvmast.FieldByName('STRNO').Asstring := fSrcDlg.KeyNo;
end;

procedure TSvSt_10.QSvmastSTRNOValidate(Sender: TField);
begin
  SFMain.Fieldexist('SVMAST', 'STRNO', QSvmastSTRNO.AsString);

 // If (DataSource1.State=DsInsert) or (DataSource1.State=DsEdit) then
 // begin
  with TmpQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM VIEW_DETAILCAR WHERE STRNO =:0 ');
    Params[0].AsString := QSvmastSTRNO.AsString;
    Open;
  end;
  if not (TmpQuery.Eof and TmpQuery.Bof) then
  begin
    QSvmastENGNO.Asstring := TmpQuery.FieldByName('ENGNO').Asstring;
    QSvmastREGNO.Asstring := TmpQuery.FieldByName('REGNO').Asstring;
    QSvmastCUSCOD.Asstring := TmpQuery.FieldByName('CUSCOD').Asstring;
    QSvmastTYPE.Asstring := TmpQuery.FieldByName('TYPE').Asstring;
    QSvmastMDLCOD.Asstring := TmpQuery.FieldByName('MODEL').Asstring;
    QSvmastGCODE.Asstring := TmpQuery.FieldByName('GCODE').Asstring;
    QSvmastCOLOR.Asstring := TmpQuery.FieldByName('COLOR').Asstring;
    QSvmastCC.AsFloat := TmpQuery.FieldByName('CC').AsFloat;
    QSvmastSDATE.AsDateTime := TmpQuery.FieldByName('SDATE').AsDateTime;
  end;
   //end;
end;

procedure TSvSt_10.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetFinmst = Mrok then
    QSvmastPRBISCOD.AsString := SearchSet.Keyno;
end;

procedure TSvSt_10.cxDBButtonEdit2PropertiesChange(Sender: TObject);
begin
  cxTextEdit3.Text := DM01.FindShowDesc('FINMAST', 'FINNAME', 'FINCODE', cxDBButtonEdit2.Text);
end;

procedure TSvSt_10.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalInsur = Mrok then
    QSvmastISCODE.AsString := fFindData.Keyno;
end;

procedure TSvSt_10.cxDBButtonEdit1PropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Text := DM01.FindShowDesc('INSURAN', 'ISNAME', 'ISCODE', cxDBButtonEdit1.Text);
end;

procedure TSvSt_10.cxDBDateEdit2Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(QSvmast.FieldByName('REGDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      QSvmast.FieldByName('REGDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      QSvmast.FieldByName('REGDATE').AsDateTime := QSvmast.FieldByName('REGDATE').AsDateTime;
  end;
end;

procedure TSvSt_10.cxDBDateEdit3Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(QSvmast.FieldByName('EXPWARNT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      QSvmast.FieldByName('EXPWARNT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      QSvmast.FieldByName('EXPWARNT').AsDateTime := QSvmast.FieldByName('EXPWARNT').AsDateTime;
  end;
end;

procedure TSvSt_10.cxDBDateEdit5Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(QSvmast.FieldByName('INSURDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      QSvmast.FieldByName('INSURDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      QSvmast.FieldByName('INSURDT').AsDateTime := QSvmast.FieldByName('INSURDT').AsDateTime;
  end;
end;

procedure TSvSt_10.cxDBDateEdit4Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(QSvmast.FieldByName('FIRSTDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      QSvmast.FieldByName('FIRSTDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      QSvmast.FieldByName('FIRSTDT').AsDateTime := QSvmast.FieldByName('FIRSTDT').AsDateTime;
  end;
end;

end.

