unit Set_Inv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, cxLookAndFeelPainters, Dbkbd,
  cxMaskEdit, cxButtonEdit, cxDBEdit, cxTextEdit, AdvOfficeButtons,
  DBAdvOfficeButtons, cxControls, cxContainer, cxEdit, cxGroupBox, AdvGlowButton,
  AdvToolBar, AdvPanel, RzPanel, ActnList, cxGraphics, cxLookAndFeels,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxDCtrl, frxClass, frxTableObject, frxFDComponents, frxExportXLS,
  frxExportCSV, frxChart, frxChBox, frxBarcode, frxCross, frxRich, frxGradient,
  frxExportPDF, frxExportBaseDialog, frxExportImage, frxBDEComponents,
  frxExportXLSX, Vcl.Menus, Vcl.ExtDlgs, BusinessSkinForm, cxButtons,
  dxStatusBar, cxCheckBox;

type
  TSetInvMst = class(TForm)
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    QInvmast: TFDQuery;
    QInvmastPARTNO: TStringField;
    QInvmastDESC1: TStringField;
    QInvmastGROUP1: TStringField;
    QInvmastTYPE: TStringField;
    QInvmastMODEL: TStringField;
    QInvmastUNIT: TStringField;
    QInvmastVATCAL: TStringField;
    QInvmastCOST: TFloatField;
    QInvmastSTDBUY: TFloatField;
    QInvmastLSTBUY: TFloatField;
    QInvmastLSTBDATE: TDateField;
    QInvmastPRICE1: TFloatField;
    QInvmastPRICE2: TFloatField;
    QInvmastPRICE3: TFloatField;
    QInvmastPRICE4: TFloatField;
    QInvmastMOVDATE: TDateField;
    QInvmastCREATDAT: TDateField;
    QInvmastCODE_T: TStringField;
    QInvmastMINCAL: TFloatField;
    QInvmastNETPRC: TStringField;
    QInvmastDISCON: TStringField;
    QInvmastBACKORD: TFloatField;
    QInvmastONORDER: TFloatField;
    QInvmastFRT: TFloatField;
    QInvmastEMGCOST: TFloatField;
    QInvmastMANUFAC: TStringField;
    QInvmastSUPPLIER: TStringField;
    QInvmastCHARGFLG: TStringField;
    QInvmastSESFLAG: TStringField;
    QInvmastYEAR1: TStringField;
    QInvmastMAXDISC: TFloatField;
    QInvmastMIN1: TFloatField;
    QInvmastMAX1: TFloatField;
    QInvmastLOCK: TStringField;
    QInvmastUPD: TStringField;
    QInvmastLABEL: TStringField;
    QInvmastPARTCHG: TStringField;
    QInvmastPRIC1CHG: TFloatField;
    QInvmastLASTCHG: TDateField;
    QInvmastENGDESC: TStringField;
    QInvmastUNITENG: TStringField;
    QInvmastBARCODE: TStringField;
    Query1: TFDQuery;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel1: TAdvPanel;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Label25: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    CrBarcode: TAdvGlowButton;
    SpeedButton1: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    cxGroupBox1: TcxGroupBox;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit19: TcxDBTextEdit;
    DBEdit20: TcxDBButtonEdit;
    DBEdit21: TcxDBTextEdit;
    DBEdit22: TcxDBTextEdit;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    dxStatusBar1: TdxStatusBar;
    DBAdvOfficeCheckBox1: TcxDBCheckBox;
    DBAdvOfficeCheckBox2: TcxDBCheckBox;
    DBAdvOfficeCheckBox3: TcxDBCheckBox;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Label5: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    QInvmastPICTPATH: TStringField;
    Label6: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    QInvmastKIND: TStringField;
    Label11: TLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    QInvmastSUBGROUP: TStringField;
    Label9: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    QInvmastNUM_UNIT: TFloatField;
    cxDBTextEdit3: TcxDBTextEdit;
    Label12: TLabel;
    cxButton1: TcxButton;
    Query2: TFDQuery;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxGradientObject1: TfrxGradientObject;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxChartObject1: TfrxChartObject;
    frxCSVExport1: TfrxCSVExport;
    frxFDComponents1: TfrxFDComponents;
    frxReportTableObject1: TfrxReportTableObject;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxBDEComponents1: TfrxBDEComponents;
    frxXLSXExport1: TfrxXLSXExport;
    procedure InsBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FldCombo5BtnClick(Sender: TObject);
    procedure FldCombo1Change(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure CrBarcodeClick(Sender: TObject);
    procedure FldEdit5Exit(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure QInvmastAfterPost(DataSet: TDataSet);
    procedure QInvmastBeforeDelete(DataSet: TDataSet);
    procedure QInvmastBeforeEdit(DataSet: TDataSet);
    procedure QInvmastBeforePost(DataSet: TDataSet);
    procedure QInvmastNewRecord(DataSet: TDataSet);
    procedure QInvmastNETPRCValidate(Sender: TField);
    procedure QInvmastGROUP1Validate(Sender: TField);
    procedure QInvmastPARTNOValidate(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure QInvmastAfterCancel(DataSet: TDataSet);
    procedure DBAdvOfficeCheckBox2Click(Sender: TObject);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure QInvmastPARTNOChange(Sender: TField);
    procedure QInvmastBARCODEValidate(Sender: TField);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    XEditpric, XYear: string;
  public
    { Public declarations }
  end;

var
  SetInvMst: TSetInvMst;

implementation

uses
  shwonh, USoftFirm, uSrcDlg, u_BarCode, DmSet1, Functn01, uFindData, Dmsec,
  uSrcDlg1, unfrPreview;

{$R *.DFM}

procedure TSetInvMst.InsBtnClick(Sender: TObject);
begin
  with QInvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST WHERE PARTNO = '''' ');
    Open;
    Insert;
  end;
  dbedit1.SetFocus;
end;

procedure TSetInvMst.SaveBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสสินค้าก่อนบันทึก!');
  if DBEdit5.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสกลุ่มสินค้าก่อนบันทึก!');
  if QInvmastMIN1.AsFloat > QInvmastMAX1.AsFloat then
    SFMain.RaiseException('สต็อกต่ำสุด > สต็อกสูงสุด');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_8', 'INSERT', QInvmastPARTNO.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_8', 'EDIT', QInvmastPARTNO.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QInvmast.Post;
end;

procedure TSetInvMst.DelBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET02_8', 'DELETE', QInvmastPARTNO.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        QInvmast.Delete;
      end;
  end;
end;

procedure TSetInvMst.CancBtnClick(Sender: TObject);
begin
  QInvmast.Cancel
end;

procedure TSetInvMst.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalInvmast = Mrok then
  begin
    with QInvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST WHERE PARTNO = :XPART ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
  end;
end;

procedure TSetInvMst.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (QInvmastPARTNO.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  DBAdvOfficeCheckBox1.Properties.ReadOnly := not SaveBtn.Visible;
  DBAdvOfficeCheckBox2.Properties.ReadOnly := not SaveBtn.Visible;
  DBAdvOfficeCheckBox3.Properties.ReadOnly := not SaveBtn.Visible;
  PrnBtn.Visible := (DataSource1.State = Dsbrowse) and (QInvmastPARTNO.AsString <> '');
  CrBarcode.Visible := PrnBtn.Visible;
  SpeedButton1.Visible := PrnBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
        TcxDBButtonEdit(Components[n]).Style.Color := clBtnface;
      end;

      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag in [0, 1]) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnface;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
        TcxDBButtonEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 1) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
        TcxDBButtonEdit(Components[n]).Style.Color := $00DDDDFF;
      end;
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 1) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := $00DDDDFF;
      end;
    end;
  end;
  DBEdit22.Properties.ReadOnly := DBAdvOfficeCheckBox2.Checked;

  if DataSource1.State = DsEdit then
  begin
    DBEdit14.Properties.Readonly := XEditpric <> 'Y';
    DBEdit15.Properties.Readonly := XEditpric <> 'Y';
    DBEdit16.Properties.Readonly := XEditpric <> 'Y';
    DBEdit17.Properties.Readonly := XEditpric <> 'Y';
    DBEdit1.Properties.Readonly := True;
  end;
end;

procedure TSetInvMst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QInvmast.Close;
  Action := caFree;
  SetInvMst := Nil;
end;

procedure TSetInvMst.SpeedButton1Click(Sender: TObject);
begin
  if not Assigned(FInvanls) then
    FInvanls := TFInvanls.Create(Application);
  FInvanls.Show;
end;

procedure TSetInvMst.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET02_8');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;

  if not (Dm_set1.QDBconfig.Active) then
    Dm_set1.QDBconfig.Open;

  DBEdit15.Enabled := Dm_set1.QDBconfig.FieldByname('L_prc2').Asstring = 'N';
  DBEdit16.Enabled := Dm_set1.QDBconfig.FieldByname('L_prc2').Asstring = 'N';
  DBEdit17.Enabled := Dm_set1.QDBconfig.FieldByname('L_prc2').Asstring = 'N';
  Label18.Enabled := DBEdit15.Enabled;
  Label19.Enabled := DBEdit16.Enabled;
  Label20.Enabled := DBEdit17.Enabled;

  XEditpric := 'N';
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Editpric,EditDisc FROM SECRET WHERE USERID =:XEdit');
    PARAMS[0].ASSTRING := SFMain.Xuser_id;
    OPEN;
    XEditpric := Query1.Fieldbyname('Editpric').Asstring;
  end;
end;

procedure TSetInvMst.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnclick(Sender);
    Vk_F8:
      if Delbtn.Visible then
        DelBtnClick(Sender);
    Vk_F2:
      if SaveBtn.Visible then
        SaveBtnClick(Sender);
    Vk_F5:
      if InsBtn.Visible then
        InsBtnClick(Sender);
  end;
end;

procedure TSetInvMst.FldCombo5BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAP = Mrok then
  begin
    QInvmast.FieldByName('SUPPLIER').Asstring := fSrcDlg.Keyno;
    QInvmast.FieldByName('MANUFAC').Asstring := fSrcDlg.qrFindDat.Fieldbyname('Apname').Asstring;
  end;
end;

procedure TSetInvMst.FldCombo1Change(Sender: TObject);
begin
  SpeedButton1.Enabled := DBEdit1.Text <> '';
end;

procedure TSetInvMst.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSetInvMst.CrBarcodeClick(Sender: TObject);
begin
  if not Assigned(F_BarCode) then
    F_BarCode := TF_BarCode.Create(Application);
  F_BarCode.Show;
end;

procedure TSetInvMst.FldEdit5Exit(Sender: TObject);
begin
  if (QInvmast.FieldByName('STDBUY').AsFloat = 0) then
  begin
    MessageDlg('ไม่อนุญาตให้ใส่ราคาซื้อเป็น 0 กรุณาใส่ราคาซื้อ', mtError, [mbOK], 0);
    DBEdit11.SetFocus;
  end;
end;

procedure TSetInvMst.ToolButton2Click(Sender: TObject);
begin
  Application.CreateForm(TF_BarCode, F_BarCode);
  F_BarCode.ShowModal;
end;

procedure TSetInvMst.QInvmastAfterPost(DataSet: TDataSet);
var
  nPartno: string;
begin
  nPartno := QInvmastPARTNO.AsString;

  DM_Sec.HI_DBMS.StartTRansaction;
  try
    if QInvmast.Active then
      if (QInvmast.ApplyUpdates = 0) then
        QInvmast.CommitUpdates
      else
        raise Exception.Create(QInvmast.RowError.Message);

    DM_Sec.HI_DBMS.Commit;
  except
    DM_Sec.HI_DBMS.RollBack;
    Qinvmast.Edit;
    raise;
  end;
  with QInvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST WHERE PARTNO = :XPARTNO');
    Params[0].Asstring := nPartno;
    Open;
  end;
end;

procedure TSetInvMst.QInvmastBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('RC_TRANS', 'PARTNO', QInvmast.FieldByName('PARTNO').Asstring);

  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT ONHN_12 FROM INVANLS WHERE ONHN_12>0 AND (PARTNO =:XPART AND YEAR1=:xYear1) ');
    Params[0].Asstring := QInvmast.FieldByName('Partno').Asstring;
    Params[1].Asstring := XYear;
    Open;
    if not (Query1.Eof and Query1.Bof) then
      SFMain.RaiseException('ไม่สามารถลบได้ ในสต็อกยังมีสินค้า กรุณาปรับยอดก่อนลบ')
  end;
end;

procedure TSetInvMst.QInvmastBeforeEdit(DataSet: TDataSet);
begin
  Xprice1 := QInvmastPRICE1.Asfloat;
end;

procedure TSetInvMst.QInvmastBeforePost(DataSet: TDataSet);
begin
  if QInvmast.State = Dsedit then
  begin
    if Xprice1 <> QInvmastPRICE1.asfloat then
    begin
      QInvmastPRIC1CHG.Asfloat := Xprice1;
      QInvmastLASTCHG.Asdatetime := Now;
    end;

    if QInvmastUPD.Asstring = '' then
      QInvmastUPD.Asstring := 'X'
    else
      QInvmastUPD.Asstring := '';
  end;
  ////////////////////////////
end;

procedure TSetInvMst.QInvmastNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QInvmast);
  QInvmast.FieldByName('DISCON').Asstring := 'N';
  QInvmast.FieldByName('NETPRC').Asstring := ' ';
  QInvmast.FieldByName('SESFLAG').Asstring := ' ';
  QInvmast.FieldByName('VATCAL').Asstring := 'Y';
  QInvmast.FieldByName('CHARGFLG').Asstring := 'N';
  QInvmast.FieldByName('TYPE').Asstring := '';
  QInvmast.FieldByName('YEAR1').AsString := Dm_set1.XYEAR;
  QInvmast.FieldByName('CREATDAT').Asdatetime := Date;
  QInvmast.FieldByName('MOVDATE').Asdatetime := Date;
end;

procedure TSetInvMst.QInvmastNETPRCValidate(Sender: TField);
begin
  if (QInvmastNETPRC.Value <> 'N') and (QInvmastNETPRC.Value <> ' ') then
    SFMain.RaiseException('ราคาสุทธิบันทึก N');
end;

procedure TSetInvMst.QInvmastGROUP1Validate(Sender: TField);
begin
  with Dm_Set1.QGroup do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD =:GROUPCOD');
    Params[0].Asstring := QInvmastGROUP1.Value;
    Open;
  end;
  if Dm_Set1.QGroup.EOF and Dm_Set1.QGroup.BOF then
    SFMain.RaiseException('ไม่มีกลุ่มสินค้าในแฟ้มข้อมูล');
end;

procedure TSetInvMst.QInvmastPARTNOValidate(Sender: TField);
begin
  SFMain.Fieldexist('INVMAST', 'PARTNO', QInvmastPARTNO.AsString);
end;

procedure TSetInvMst.FormShow(Sender: TObject);
begin
  cxButton1.Visible := (sfmain.XLevel = '1') and (sfmain.XChqCost = 'Y');
  Label12.Visible := (sfmain.XLevel = '1') and (sfmain.XChqCost = 'Y');
  cxDBTextEdit3.Visible := (sfmain.XLevel = '1') and (sfmain.XChqCost = 'Y');

  with QInvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST WHERE PARTNO ='''' ');
    Open;
  end;
end;

procedure TSetInvMst.DBEdit14Exit(Sender: TObject);
var
  XMAX: Double;
begin
  XMAX := 0;
  if (QInvmast.FieldByName('PRICE1').AsFloat = 0) then
  begin
    sfmain.AdvSmoothMessageDialog1.Caption := 'Message warning';
    sfmain.AdvSmoothMessageDialog1.HTMLText.Text := 'ไม่อนุญาตให้ราคาขายเป็น 0 กรุณาใส่ราคาขาย';
    sfmain.AdvSmoothMessageDialog1.ExecuteDialog;
    DBEdit14.SetFocus;
  end
  else
  begin
    if QInvmast.State in Dseditmodes then
    begin
      QInvmastPRICE2.Asfloat := (1 + Dm_set1.QDBconfig.FieldByname('C_prc2').AsFloat / 100) *
        QInvmastPRICE1.Asfloat;
      QInvmastPRICE3.Asfloat := (1 + Dm_set1.QDBconfig.FieldByname('C_prc3').AsFloat / 100) *
        QInvmastPRICE1.Asfloat;
      QInvmastPRICE4.Asfloat := (1 + Dm_set1.QDBconfig.FieldByname('C_prc4').AsFloat / 100) *
        QInvmastPRICE1.Asfloat;
      XMAX := 100 - (QInvmast.fieldByName('STDBUY').AsFloat / QInvmast.FieldByname('PRICE1').AsFloat) * 100;
      QInvmastMAXDISC.AsFloat := XMAX;
    end;
  end;
end;

procedure TSetInvMst.QInvmastAfterCancel(DataSet: TDataSet);
begin
  if QInvmast.Active then
    QInvmast.CancelUpDates;
  with QInvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST WHERE PARTNO = :XPARTNO');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TSetInvMst.DBAdvOfficeCheckBox2Click(Sender: TObject);
begin
  if (DBAdvOfficeCheckBox2.Checked) and (QInvmast.State in dseditmodes) then
  begin
    QInvmastMaxdisc.Asfloat := 0;
  end;
  DBEdit22.Properties.ReadOnly := DBAdvOfficeCheckBox2.Checked;
end;

procedure TSetInvMst.DBEdit1PropertiesChange(Sender: TObject);
begin
  SpeedButton1.Enabled := DBEdit1.Text <> '';
end;

procedure TSetInvMst.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDLG.xgrouptyp := '1';
  if fSrcDlg.ShowModalGroup = Mrok then
  begin
    with Dm_Set1.QGroup do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD =:GROUPCOD');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.QGroup.EOF and Dm_Set1.QGroup.BOF then
      SFMain.RaiseException('ไม่มีกลุ่มสินค้าในแฟ้มข้อมูล');
    if Dm_Set1.QGroup.FieldByName('TYPGROUP').AsString <> '1' then
      SFMain.RaiseException('รหัสนี้ไม่ใช่กลุ่มสินค้าหลัก');
    QInvmast.FieldByName('GROUP1').Asstring := Dm_Set1.QGroup.FieldByName('GroupCod').Asstring;
  end;
end;

procedure TSetInvMst.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetTYPE = Mrok then
    QInvmast.FieldByName('TYPE').Asstring := FFindData.Keyno;
end;

procedure TSetInvMst.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalModel = Mrok then
    Qinvmast.FieldByName('MODEL').Asstring := fSrcDlg1.KeyNo;
end;

procedure TSetInvMst.DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST WHERE PARTNO =:XPART ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Query1.Bof and Query1.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    QInvmastPARTCHG.Asstring := Query1.FieldByName('Partno').Asstring;
  end;
end;

procedure TSetInvMst.DBEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAP = Mrok then
  begin
    QInvmast.FieldByName('SUPPLIER').Asstring := fSrcDlg.Keyno;
    QInvmast.FieldByName('MANUFAC').Asstring := fSrcDlg.qrFindDat.Fieldbyname('Apname').Asstring;
  end;
end;

procedure TSetInvMst.frReport1GetValue(const ParName: string; var ParValue: Variant);
begin
  if UpperCase(ParName) = 'PCODE' then
    ParValue := DBEdit1.Text + '%';
end;

procedure TSetInvMst.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_INVMAST.fr3','2');
end;

procedure TSetInvMst.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_INVMAST.fr3','1');
end;

procedure TSetInvMst.QInvmastPARTNOChange(Sender: TField);
begin
  QInvmastBARCODE.AsString := QInvmastPARTNO.AsString;
end;

procedure TSetInvMst.QInvmastBARCODEValidate(Sender: TField);
begin
  SFMain.Fieldexist('INVMAST', 'BARCODE', QInvmastBARCODE.AsString);
end;

procedure TSetInvMst.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if OpenPictureDialog1.Execute then
  begin
    QInvmast.FieldByName('PICTPATH').AsString := OpenPictureDialog1.FileName;
  end;
end;

procedure TSetInvMst.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDLG.xgrouptyp := '2';
  if fSrcDlg.ShowModalGroup = Mrok then
  begin
    with Dm_Set1.QGroup do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GROUPMST WHERE GROUPCOD =:GROUPCOD');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.QGroup.EOF and Dm_Set1.QGroup.BOF then
      SFMain.RaiseException('ไม่มีกลุ่มสินค้าในแฟ้มข้อมูล');
    if Dm_Set1.QGroup.FieldByName('TYPGROUP').AsString <> '2' then
      SFMain.RaiseException('รหัสนี้ไม่ใช่กลุ่มสินค้าย่อย');
    QInvmast.FieldByName('SUBGROUP').Asstring := Dm_Set1.QGroup.FieldByName('GroupCod').Asstring;
  end;
end;

procedure TSetInvMst.cxButton1Click(Sender: TObject);
var
  nPartno: string;
begin
  if DBEdit1.Text = '' then
    sfmain.RaiseException('เลือกรหัสสินค้าก่อนปรับปรุง..!');
  nPartno := QInvmastPARTNO.AsString;
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT RECVLOC,PARTNO,RECVDATE,UCOST ' +
      'FROM RC_TRANS t1 ' +
      'WHERE RECVDATE=(SELECT max(RECVDATE) FROM RC_TRANS t2 WHERE t1.partno=t2.partno) ' +
      'AND SUBSTR(T1.RECVNO,2,2) = ''IP'' AND PARTNO =:EDIT1 ');
    params[0].AsString := nPartno;
    open;
  end;

  with query2 do
  begin
    close;
    sql.Clear;
    sql.Add('UPDATE INVMAST SET COST=:EDI1 WHERE PARTNO =:EDIT2');
    params[0].AsFloat := Query1.fieldbyname('UCOST').AsFloat;
    params[1].AsString := nPartno;
    execSql;

    close;
    sql.Clear;
    sql.Add('UPDATE INVENTOR SET COST=:EDI1 WHERE PARTNO =:EDIT2');
    params[0].AsFloat := Query1.fieldbyname('UCOST').AsFloat;
    params[1].AsString := nPartno;
    execSql;
  end;

  MessageDlg('Update cost successfully..', mtInformation, [mbOK], 0);

  with QInvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST WHERE PARTNO =:XPART ');
    Params[0].Asstring := nPartno;
    Open;
  end;
end;

end.

