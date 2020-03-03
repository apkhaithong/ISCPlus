unit Set_inv2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, cxLookAndFeelPainters, Dbkbd,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar,
  AdvPanel, AdvOfficeButtons, DBAdvOfficeButtons, cxControls, cxContainer,
  cxEdit, cxGroupBox, RzPanel, ActnList, cxGraphics, cxLookAndFeels,
  BusinessSkinForm, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxDateRanges,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxStatusBar, frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl,
  frxFDComponents, frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TSetInvloc = class(TForm)
    AdvPanel1: TAdvPanel;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    SoInventor: TDataSource;
    ActionList1: TActionList;
    actEditPrn: TAction;
    Label17: TLabel;
    Label19: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TcxDBButtonEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    DBEdit7: TcxDBButtonEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit19: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    DBEdit22: TcxDBTextEdit;
    DBEdit20: TcxDBTextEdit;
    DBEdit24: TcxDBButtonEdit;
    DBEdit26: TcxDBTextEdit;
    DBEdit23: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    CrBarcode: TAdvGlowButton;
    FbtSeler: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    QHlpbinv: TFDQuery;
    DataSource2: TDataSource;
    ac: TcxGrid;
    acDBTableView1: TcxGridDBTableView;
    acLevel1: TcxGridLevel;
    QHlpbinvPARTNO: TStringField;
    QHlpbinvRLCODE: TStringField;
    QHlpbinvRLNAME: TStringField;
    QHlpbinvQTY: TFloatField;
    acDBTableView1RLCODE: TcxGridDBColumn;
    acDBTableView1RLNAME: TcxGridDBColumn;
    acDBTableView1QTY: TcxGridDBColumn;
    Label11: TLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    Label9: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
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
    procedure InsBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FldCombo6BtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure CrBarcodeClick(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure FbtSelerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actEditPrnExecute(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    XEditpric: string;
  public
    { Public declarations }
  end;

var
  SetInvloc: TSetInvloc;

implementation

uses
  DmSet1, USoftFirm, uSrcDlg, u_BarCode, uFindData, uSrcDlg1, Dmsec, unfrPreview;

{$R *.DFM}

procedure TSetInvloc.InsBtnClick(Sender: TObject);
begin
  with Dm_Set1.QInventor do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO = :XPARTNO AND LOCAT=:XLOC');
    Params[0].Asstring := '';
    Params[1].Asstring := SFMain.Xlocat;
    Open;
    Insert;
  end;
  //
  DBEdit1.SetFocus;
  with Dm_Set1.QInvanls do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVANLS WHERE PARTNO = :XPARTNO AND LOCAT=:EDIT2 ');
    Params[0].Asstring := '';
    Params[1].Asstring := SFMain.Xlocat;
    Open;
  end;

  with Dm_Set1.QPtStore do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PTSTORE WHERE PARTNO = :XPARTNO ');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TSetInvloc.SaveBtnClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสสินค้าก่อนบันทึก!');
  if DBEdit7.Text = '' then
    SFMain.RaiseException('กรุณาใส่รหัสกลุ่มสินค้าก่อนบันทึก!');
  if Dm_Set1.QInventorMIN1.AsFloat > Dm_Set1.QInventorMAX1.AsFloat then
    SFMain.RaiseException('สต็อกต่ำสุด > สต็อกสูงสุด');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_9', 'INSERT', Dm_Set1.QInventor.FieldByName('PARTNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSET02_9', 'EDIT', Dm_Set1.QInventor.FieldByName('PARTNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_Set1.QInventor.Post;
end;

procedure TSetInvloc.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSET02_9', 'DELETE', Dm_Set1.QInventor.FieldByName('PARTNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        Dm_Set1.QInventor.Delete;
      end;
  end;
end;

procedure TSetInvloc.CancBtnClick(Sender: TObject);
begin
  if Dm_Set1.QInventor.Active then
    Dm_Set1.QInventor.Cancel;
end;

procedure TSetInvloc.EditBtnClick(Sender: TObject);
var
  XYear, XMonth, XDay: Word;
begin
  DecodeDate(Now, XYear, XMonth, XDay);

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with Dm_Set1.QInventor do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO = :XPART AND LOCAT=:XLOC');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Params[1].Asstring := SFMain.Xlocat;
      Open;
    end;
    with Dm_Set1.QInvanls do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVANLS WHERE PARTNO = :XPART AND LOCAT=:XLOC AND YEAR1=:XYear');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Params[1].Asstring := SFMain.Xlocat;
      Params[2].Asstring := Inttostr(XYear);
      Open;
    end;

    with Dm_Set1.QPtStore do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PTSTORE WHERE PARTNO = :XPART  AND LOCAT=:XLOC');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Params[1].Asstring := SFMain.Xlocat;
      Open;
    end;
  end;
end;

procedure TSetInvloc.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  //InsBtn.Visible         := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (Dm_Set1.QinventorPARTNO.AsString <> '');
  editBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  PrnBtn.Visible := (DataSource1.State = Dsbrowse) and (Dm_Set1.QinventorPARTNO.AsString <> '');
  CrBarcode.Visible := PrnBtn.Visible;
  FbtSeler.Visible := PrnBtn.Visible;

  acDBTableView1.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  acDBTableView1.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  acDBTableView1.NavigatorButtons.Append.Enabled := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
        TcxDBButtonEdit(Components[n]).Style.Color := clBtnface;
      end;

      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnface;
      end;

      if (Components[n] is TcxGridDBTableView) and (TcxGridDBTableView(Components[n]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[n]).OptionsData.Editing := False;
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

      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxGridDBTableView) and (TcxGridDBTableView(Components[n]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[n]).OptionsData.Editing := True;
      end;
    end;
  end;
  if DataSource1.State = DsEdit then
  begin
    DBEdit18.Properties.Readonly := XEditpric <> 'Y';
    DBEdit19.Properties.Readonly := XEditpric <> 'Y';
    DBEdit21.Properties.Readonly := XEditpric <> 'Y';
    DBEdit22.Properties.Readonly := XEditpric <> 'Y';
    DBEdit22.Properties.Readonly := true;
    DBEdit2.Properties.ReadOnly := True;
    DBEdit1.Properties.ReadOnly := True;
    DBEdit1.Enabled := False;
  end;
end;

procedure TSetInvloc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Setinvloc := Nil;
  Action := caFree;
end;

procedure TSetInvloc.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSET', 'HDSET02_9');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;

  Dm_set1.QDBconfig.Open;
  DBEdit19.Enabled := Dm_set1.QDBconfig.FieldByname('L_prc2').Asstring = 'N';
  DBEdit21.Enabled := Dm_set1.QDBconfig.FieldByname('L_prc2').Asstring = 'N';
  DBEdit22.Enabled := Dm_set1.QDBconfig.FieldByname('L_prc2').Asstring = 'N';
  Label38.Enabled := DBEdit19.Enabled;
  Label40.Enabled := DBEdit22.Enabled;

  XEditpric := 'N';
  with Dm_Set1.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Editpric,EditDisc FROM SECRET WHERE USERID =:XEdit');
    PARAMS[0].ASSTRING := SFMain.Xuser_id;
    Open;
    XEditpric := Dm_Set1.Query1.Fieldbyname('Editpric').Asstring;
  end;
end;

procedure TSetInvloc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      if DelBtn.Visible then
        DelBtnClick(Sender);
    Vk_F2:
      if SaveBtn.Visible then
        SaveBtnClick(Sender);
        //Vk_F5 : if InsBtn.Visible Then InsBtnClick(Sender);
  end;
end;

procedure TSetInvloc.FldCombo6BtnClick(Sender: TObject);
begin
  if Dm_Set1.QInventor.State = Dsbrowse then
    Exit;

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Dm_Set1.QInventor.Fieldbyname('Locat').Asstring := fSrcDlg.Keyno;
end;

procedure TSetInvloc.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSetInvloc.CrBarcodeClick(Sender: TObject);
begin
  if not Assigned(F_BarCode) then
    F_BarCode := TF_BarCode.Create(Application);
  F_BarCode.show;
end;

procedure TSetInvloc.DBEdit18Exit(Sender: TObject);
begin
  if Dm_Set1.QInventor.State in Dseditmodes then
  begin
    Dm_Set1.QInventor.Fieldbyname('PRICE2').Asfloat := (1 + Dm_set1.QDBconfig.FieldByname('C_prc2').AsFloat / 100) *
      Dm_Set1.QInventor.Fieldbyname('PRICE1').Asfloat;
    Dm_Set1.QInventor.Fieldbyname('PRICE3').Asfloat := (1 + Dm_set1.QDBconfig.FieldByname('C_prc3').AsFloat / 100) *
      Dm_Set1.QInventor.Fieldbyname('PRICE1').Asfloat;
    Dm_Set1.QInventor.Fieldbyname('PRICE4').Asfloat := (1 + Dm_set1.QDBconfig.FieldByname('C_prc4').AsFloat / 100) *
      Dm_Set1.QInventor.Fieldbyname('PRICE1').Asfloat;
  end;
end;

procedure TSetInvloc.FbtSelerClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    exit;
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Key_a := DBEdit2.Text;
  fSrcDlg.ShowModalApbypart;
end;

procedure TSetInvloc.FormShow(Sender: TObject);
begin
  with Dm_Set1.QInventor do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO = :XPARTNO AND LOCAT=:XLOC ');
    Params[0].Asstring := '';
    Params[1].Asstring := SFMain.Xlocat;
    Open;
  end;

  //
  with Dm_Set1.QInvanls do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVANLS WHERE PARTNO = :XPARTNO AND LOCAT=:EDIT2 ');
    Params[0].Asstring := '';
    Params[1].Asstring := SFMain.Xlocat;
    Open;
  end;

  //
  with Dm_Set1.QPtStore do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PTSTORE WHERE PARTNO = :XPARTNO AND LOCAT=:EDIT2 ');
    Params[0].Asstring := '';
    Params[1].Asstring := SFMain.Xlocat;
    Open;
  end;
end;

procedure TSetInvloc.DBEdit2PropertiesChange(Sender: TObject);
begin
  Fbtseler.Enabled := DBEdit2.Text <> '';
end;

procedure TSetInvloc.cxDBButtonEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAP = Mrok then
  begin
    Dm_Set1.QInventor.FieldByName('SUPPLIER').Asstring := fSrcDlg.Keyno;
    Dm_Set1.QInventor.FieldByName('MANUFAC').Asstring := fSrcDlg.qrFindDat.Fieldbyname('Apname').Asstring;
  end;
end;

procedure TSetInvloc.DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetTYPE = Mrok then
    Dm_Set1.QInventor.FieldByName('TYPE').Asstring := fFindData.KeyNo;
end;

procedure TSetInvloc.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDLG.xgrouptyp := '1';
  if fSrcDlg.ShowModalGroup = Mrok then
    Dm_Set1.QInventor.FieldByName('GROUP1').Asstring := fSrcDlg.KeyNo;
end;

procedure TSetInvloc.DBEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalModel = Mrok then
    Dm_Set1.QInventor.FieldByName('MODEL').Asstring := fSrcDlg1.KeyNo;
end;

procedure TSetInvloc.DBEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Dm_Set1.QInventor.Fieldbyname('CODE_T').Asstring := fSrcDlg.KeyNo;
end;

procedure TSetInvloc.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Datasource1.State = dsInsert then
  begin
    Application.Createform(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalLocat = Mrok then
      Dm_Set1.QInventor.Fieldbyname('Locat').Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TSetInvloc.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_INVMASTLOCAT.fr3', '2');
end;

procedure TSetInvloc.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PCODE' then
    Value := DBEdit2.Text + '%';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := DBEdit1.Text + '%';
end;

procedure TSetInvloc.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_INVMASTLOCAT.fr3', '1');
end;

procedure TSetInvloc.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDLG.xgrouptyp := '2';
  if fSrcDlg.ShowModalGroup = Mrok then
    Dm_Set1.QInventor.FieldByName('SUBGROUP').Asstring := fSrcDlg.KeyNo;
end;

end.

