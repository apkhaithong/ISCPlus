unit Stin00;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, Mask, DBCtrls, ComCtrls, Grids, DBGrids, DB,
  Menus, ImgList, ToolWin, RzButton, RzSpnEdt, RzDBGrid, RzPanel, RzDbkbd,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxButtonEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxCheckBox, cxDBEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, cxLookAndFeelPainters,
  cxGroupBox, cxRadioGroup, ActnList, cxLookAndFeels, dxDateRanges,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxNavigator, cxDBLookupComboBox, dxStatusBar, cxImageComboBox, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTIn00 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label21: TLabel;
    Label31: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranPONO: TcxGridDBColumn;
    cxGridTranQTYORD: TcxGridDBColumn;
    cxGridTranQTYRECV: TcxGridDBColumn;
    cxGridTranUCOST: TcxGridDBColumn;
    cxGridTranDISCAMT: TcxGridDBColumn;
    cxGridTranREDU1: TcxGridDBColumn;
    cxGridTranREDU2: TcxGridDBColumn;
    cxGridTranREDU3: TcxGridDBColumn;
    cxGridTranNETCOST: TcxGridDBColumn;
    cxGridTranNETTOT: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    DBCheckBox1: TcxDBCheckBox;
    CheckBox1: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit12: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit23: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit19: TcxDBTextEdit;
    wwDBDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit7: TcxDBButtonEdit;
    DBEdit11: TcxDBButtonEdit;
    DBEdit3: TcxDBTextEdit;
    InvDate: TcxDBDateEdit;
    DBEdit8: TcxDBTextEdit;
    DueDate: TcxDBDateEdit;
    DBEdit14: TcxDBTextEdit;
    TaxDate: TcxDBDateEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    TmpQuery: TFDQuery;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    ADDPO: TAdvGlowButton;
    PoHisBtn: TAdvGlowButton;
    DataSource2: TDataSource;
    AutoAdd: TAdvGlowButton;
    cxGridTranPARTDESC: TcxGridDBColumn;
    cxGridTranGROUP1: TcxGridDBColumn;
    DataSource3: TDataSource;
    qrHelp1: TFDQuery;
    qrHelp1GROUPCOD: TStringField;
    qrHelp1GROUPNAM: TStringField;
    cxGridTranLOTNO: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    Label14: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Label8: TLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    Label15: TLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DataSource1StateChange(Sender: TObject);
    procedure insBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrnBtnClick(Sender: TObject);
    procedure ADDPOClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBEdit5BtnClick(Sender: TObject);
    procedure DBEdit11BtnClick(Sender: TObject);
    procedure DBEdit7BtnClick(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGridTranPONOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit11PropertiesChange(Sender: TObject);
    procedure wwDBDateExit(Sender: TObject);
    procedure InvDateExit(Sender: TObject);
    procedure DueDateExit(Sender: TObject);
    procedure TaxDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure PoHisBtnClick(Sender: TObject);
    procedure AutoAddClick(Sender: TObject);
    procedure cxDBImageComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure Showap;
    procedure ShowPo;
  public
    { Public declarations }
    imppo1, boo1: boolean;
  end;

var
  FmSTIn00: TFmSTIn00;
  Smnettot: Double;
  i: integer;

implementation

uses
  Dmic01, DmSet1, Imppo, RecvHistory, uSrcDlg, Functn01, USoftFirm, unfrPreview,
  Dmsec, Set_Inv, uFindData;

{$R *.DFM}

procedure TFmSTIn00.DataSource1StateChange(Sender: TObject);
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
  DBRadioGroup1.Properties.ReadOnly := not SaveBtn.Visible;
  //cxGridTran.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SaveBtn.Visible;
  ADDPO.Enabled := SaveBtn.Visible;
  PoHisBtn.Enabled := SaveBtn.Visible;
  DBCheckBox1.Properties.ReadOnly := not SaveBtn.Visible;
  cxDBCheckBox1.Properties.ReadOnly := not SaveBtn.Visible;
  PrnBtn.Visible := (DataSource1.State = Dsbrowse) and (DBEdit2.Text <> '');
  AutoAdd.Enabled := SaveBtn.Visible;

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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
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

      if (Components[N] is TcxDBImageComboBox) and (TcxDBImageComboBox(Components[N]).Tag = 0) then
      begin
        TcxDBImageComboBox(Components[N]).Properties.ReadOnly := True;
        TcxDBImageComboBox(Components[N]).Style.Color := clBtnFace;
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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
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

      if (Components[N] is TcxDBImageComboBox) and (TcxDBImageComboBox(Components[N]).Tag = 0) then
      begin
        TcxDBImageComboBox(Components[N]).Properties.ReadOnly := False;
        TcxDBImageComboBox(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  if DataSource1.Dataset.State = DsEdit then
  begin
    DBEdit3.Properties.Readonly := True;
    DBEdit1.Enabled := False;
    DBEdit2.Enabled := False;
    DBRadioGroup1.Properties.Readonly := True;
    DBCheckBox1.Properties.Readonly := True;
      //cxGridTran.OptionsData.Editing  := False;
      //cxGridTran.NavigatorButtons.Insert.Enabled := False;
      //cxGridTran.NavigatorButtons.Delete.Enabled := False;
      //cxGridTran.NavigatorButtons.Append.Enabled := False;
  end;
    //
  if not (FmDmic01.QDBConfig.Active) then
    FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_STIN').asstring = 'Y';
  DBEDIT1.Enabled := (SFMain.XChgLoc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  wwDBDate.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);
  if SFMain.Xseecost = 'Y' then
  begin
    cxGridTranNETCOST.Options.Editing := True;
    cxGridTranNETCOST.Options.Focusing := True;
    cxGridTranNETTOT.Options.Editing := True;
    cxGridTranNETTOT.Options.Focusing := True;
  end
  else
  begin
    cxGridTranNETCOST.Options.Editing := False;
    cxGridTranNETCOST.Options.Editing := False;
    cxGridTranNETTOT.Options.Editing := False;
    cxGridTranNETTOT.Options.Focusing := False;
  end;
end;

procedure TFmSTIn00.insBtnClick(Sender: TObject);
begin
  with FmDmic01.Rcinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO ='''' ');
    if not FmDmic01.Rcinv.Prepared then
      FmDmic01.Rcinv.Prepare;
    OPEN;
    INSERT;
  end;

  with FmDmic01.Rctran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO ='''' ');
    if not FmDmic01.Rcinv.Prepared then
      FmDmic01.Rcinv.Prepare;
    OPEN;
  end;
  if DBEdit1.Enabled = False then
    DBEdit7.SetFocus
  else
    DBEdit1.SetFocus;
end;

procedure TFmSTIn00.FormShow(Sender: TObject);
begin
  with FmDmic01.Rcinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO ='''' ');
    OPEN;
  end;
  qrHelp1.Open;
end;

procedure TFmSTIn00.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    fsrcDlg.XSrLocat := ''
  else
    fsrcDlg.XSrLocat := sfmain.Xlocat;
  fSrcDlg.Key_a := ' AND (CHCODE IS NULL OR CHCODE='''') ';
  fSrcDlg.nPaytyp := 'A';
  if fSrcDlg.ShowModalRcinv = Mrok then
  begin
    with FmDmic01.Rcinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO =:XRECVNO');
      PARAMS[0].ASSTRING := fSrcDlg.Keyno;
      OPEN;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบใบรับสินค้า');
    end;
    with FmDmic01.Rctran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO =:XRECVNO');
      PARAMS[0].ASSTRING := FmDmic01.RcinvRECVNO.Asstring;
      OPEN;
    end;
    with FmDmic01.QTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO =:XRECVNO');
      PARAMS[0].ASSTRING := '';
      OPEN;
    end;

    FmDmic01.rctran.first;
    while not FmDmic01.rctran.eof do
    begin
      FmDmic01.qtemp.insert;
      FmDmic01.qtemp.fieldbyname('PARTNO').asstring := FmDmic01.rctran.fieldbyname('PARTNO').asstring;
      FmDmic01.qtemp.fieldbyname('PONO').asstring := FmDmic01.rctran.fieldbyname('PONO').asstring;
      FmDmic01.qtemp.post;
      FmDmic01.rctran.Next;
    end;
  end;
end;

procedure TFmSTIn00.CancBtnClick(Sender: TObject);
begin
  FmDmic01.rctran.Cancel;
  FmDmic01.Rcinv.Cancel;
end;

procedure TFmSTIn00.delBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  if FmDmic01.RcinvPOSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_1', 'DELETE', FmDmic01.Rcinv.FieldByName('RECVNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.Rcinv.Delete;
        if FmDmic01.QTemp.Active then
          FmDmic01.QTemp.Close;
      end;
  end;
end;

procedure TFmSTIn00.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_ESCAPE:
      CancBtnClick(Sender);
    Vk_F3:
      DBEdit7Btnclick(Sender);
    Vk_F8:
      if DelBtn.Enabled then
        DelBtnClick(Sender);
    Vk_F2:
      if SaveBtn.Enabled then
        SaveBtnClick(Sender);
    Vk_F5:
      if InsBtn.Visible then
        InsBtnClick(Sender);
  end;
end;

procedure TFmSTIn00.SaveBtnClick(Sender: TObject);
begin
  if DBEdit3.Text = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบส่งของ');
  if DBEdit7.Text = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสเจ้าหนี้');
  if FmDmic01.RcTran.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  if FmDmic01.val <> 0 then
    SFMain.RaiseException('มีรหัสสินค้าซ้ำ')
  else
  begin
    if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_1', 'INSERT', FmDmic01.Rcinv.FieldByName('RECVNO').AsString)
    else
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_1', 'EDIT', FmDmic01.Rcinv.FieldByName('RECVNO').AsString);
    if DM_SEC.qrRecent.UpdatesPending then
      if (DM_SEC.qrRecent.ApplyUpdates = 0) then
        DM_SEC.qrRecent.CommitUpdates
      else
        raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
    FmDmic01.Qtemp.Close;
    FmDmic01.Rcinv.Post;
  end;
end;

procedure TFmSTIn00.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FmDmic01.Rcinv.State in Dseditmodes then
    SFMain.RaiseException('กรุณากดปุ่ม ยกเลิก และ ออก ตามขั้นตอน ');
  FmDmic01.Rcinv.Close;
  FmDmic01.Rctran.Close;
  qrHelp1.Close;
  Action := Cafree;
  FmSTin00 := Nil;
end;

procedure TFmSTIn00.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Rcinv.fr3','1');
end;

procedure TFmSTIn00.ADDPOClick(Sender: TObject);
var
  SmUcost1, SmUcost2, SmUcost3, Ucost1, Ucost2, Ucost3: Double;
  temp, temp1: string;
begin
  if DBEdit5.Text = '' then
    sfmain.RaiseException('กรุณาเลือกใบสั่งซื้อ..!');
  Application.CreateForm(TFImppo, FImppo);
  FImppo.XPono := FmDmic01.RcinvPONO.Asstring;

  if FImppo.ShowModal = Mrok then
  begin
    FmDmic01.ckImp := 1;
    Fimppo.Qpotran.First;
    while not Fimppo.Qpotran.Eof do
    begin
      if (Fimppo.Qpotran.Fieldbyname('Balance').AsFloat > 0) and (Fimppo.Qpotran.Fieldbyname('FLAG').AsString = 'Y') then
      begin
        temp := Fimppo.Qpotran.Fieldbyname('PARTNO').Asstring;
        temp1 := Fimppo.Qpotran.Fieldbyname('PONO').Asstring;

        with FmDmic01.QTemp do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO =:XRECVNO');
          PARAMS[0].ASSTRING := '';
          OPEN;
        end;

        FmDmic01.Qtemp.first;
        while not FmDmic01.Qtemp.eof do
        begin
          if (FmDmic01.Qtemp.fieldbyname('PARTNO').asstring = temp)
            and (FmDmic01.Qtemp.fieldbyname('PONO').asstring = temp1) then
            SFMain.RaiseException('รหัสสินค้า :' + temp + ' ซ้ำ');
          FmDmic01.Qtemp.next;
        end;
        FmDmic01.Qtemp.Edit;
        FmDmic01.Qtemp.FieldByName('PARTNO').AsString := Fimppo.Qpotran.Fieldbyname('PARTNO').Asstring;
        FmDmic01.Qtemp.FieldByName('PONO').AsString := Fimppo.Qpotran.Fieldbyname('PONO').Asstring;
        FmDmic01.Qtemp.Post;

        FmDmic01.Rctran.Append;
        FmDmic01.RctranPARTNO.Asstring := Fimppo.Qpotran.Fieldbyname('PARTNO').Asstring;
        FmDmic01.RctranQTYORD.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDQTY').AsFloat;
        FmDmic01.RctranQTYRECV.AsFloat := Fimppo.Qpotran.Fieldbyname('BALANCE').AsFloat;
        FmDmic01.RctranPono.ASstring := Fimppo.Qpotran.Fieldbyname('PONO').ASstring;
        FmDmic01.RctranLOTNO.ASstring := Fimppo.Qpotran.Fieldbyname('LOTNO').ASstring;
        FmDmic01.RctranUCOST.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDCOST').AsFloat;
        FmDmic01.RctranREDU1.AsFloat := Fimppo.Qpotran.Fieldbyname('REDU').AsFloat;
        FmDmic01.RctranNetcost.AsFloat := Fimppo.Qpotran.Fieldbyname('NETCOST').AsFloat;
        FmDmic01.RctranNettot.AsFloat := FRound(FmDmic01.RctranQTYRECV.AsFloat * FmDmic01.RctranNetcost.AsFloat, 2);

        FmDmic01.Rctran.Post;
      end;
      Fimppo.Qpotran.Next
    end;
  end;
  FmDmic01.ckImp := 0;
end;

procedure TFmSTIn00.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  ADDPo.Enabled := FmDmic01.RcinvPono.Asstring <> '';
  DBedit7.Enabled := Dbedit5.Text = '';
end;

procedure TFmSTIn00.DBEdit5BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Key_a := ' AND (CHCODE = '''' OR CHCODE IS NULL) ';
  if fSrcDlg.ShowModalPO = Mrok then
  begin
    FmDmic01.RcinvPONO.Asstring := fSrcDlg.KeyNo;
    ShowPo;
    Showap;
  end;
end;

procedure TFmSTIn00.DBEdit11BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.Rcinv.FieldByname('OFFICCOD').Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn00.DBEdit7BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAP = Mrok then
  begin
    FmDmic01.Rcinv.FieldByname('APCODE').Asstring := fSrcDlg.KeyNo;
    Showap;
  end;
end;

procedure TFmSTIn00.DBRadioGroup1Click(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 0 then
    FmDmic01.Rcinv.FieldByName('VATTYPE').Asstring := '1';
  if DBRadioGroup1.ItemIndex = 1 then
    FmDmic01.Rcinv.FieldByName('VATTYPE').Asstring := '2';
end;

procedure TFmSTIn00.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;

  if not (FmDmic01.CondPay.Active) then
    FmDmic01.CondPay.Open;
  if FmDmic01.CondPay.Fieldbyname('Disbath').Asstring = 'Y' then
  begin
    cxGridTranDISCAMT.Visible := True;
    cxGridTranREDU1.Visible := False;
    cxGridTranREDU2.Visible := False;
    cxGridTranREDU3.Visible := False;
  end
  else
  begin
    cxGridTranDISCAMT.Visible := False;
    cxGridTranREDU1.Visible := True;
    cxGridTranREDU2.Visible := True;
    cxGridTranREDU3.Visible := True;
  end;
  imppo1 := false;
  boo1 := false;
end;

procedure TFmSTIn00.DBMemo1Enter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TFmSTIn00.DBMemo1Exit(Sender: TObject);
begin
  DBkbd1.Disable := False;
  FmSTIn00.KeyPreview := True;
end;

procedure TFmSTIn00.DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if DBCheckBox1.Checked then
  begin
    cxGridTranDISCAMT.Visible := True;
    cxGridTranREDU1.Visible := False;
    cxGridTranREDU2.Visible := False;
    cxGridTranREDU3.Visible := False;
  end
  else
  begin
    cxGridTranDISCAMT.Visible := False;
    cxGridTranREDU1.Visible := True;
    cxGridTranREDU2.Visible := True;
    cxGridTranREDU3.Visible := True;
  end;
end;

procedure TFmSTIn00.ShowPo;
begin
  if Datasource1.State in dsEditmodes then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PO_INVOI WHERE PONO =:XPONO');
      PARAMS[0].ASSTRING := DBEdit5.Text;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบเลขที่ใบสั่งซื้อนี้');
      FmDmic01.RcinvPONO.Asstring := FmDmic01.Query1.Fieldbyname('PONO').Asstring;
      FmDmic01.RcinvDisct.Asstring := FmDmic01.Query1.Fieldbyname('Disct').Asstring;
      FmDmic01.RcinvAPCODE.Asstring := FmDmic01.Query1.Fieldbyname('apCode').Asstring;
    end;
  end;
end;

procedure TFmSTIn00.Showap;
begin
  if DBEdit7.Text <> '' then
  begin
    with TmpQuery do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM APMAST WHERE APCODE = :XAPCODE ');
      Params[0].Asstring := DBEdit7.Text;
      Open;
    end;
    if TmpQuery.EOF and TmpQuery.BOF then
      SFMain.RaiseException('ไม่พบรหัสเจ้าหนี้ในระบบ');
    if FmDmic01.Rcinv.State in Dseditmodes then
    begin
      FmDmic01.Rcinv.FieldByname('APCODE').Asstring := TmpQuery.Fieldbyname('APCODE').Asstring;
      FmDmic01.Rcinv.FieldByname('DISCT').Asstring := TmpQuery.Fieldbyname('DISCT').Asstring;
      FmDmic01.Rcinv.FieldByname('CREDTM').Asfloat := TmpQuery.Fieldbyname('CREDTM').Asfloat;
    end;
  end;
end;

procedure TFmSTIn00.DBEdit7Exit(Sender: TObject);
begin
  if DBEdit7.Text <> '' then
    Showap;
end;

procedure TFmSTIn00.DBEdit5Exit(Sender: TObject);
begin
  if DBEdit5.Text <> '' then
    ShowPo;
end;

procedure TFmSTIn00.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn00.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    Vk_F5:
      if InsBtn.Visible then
        InsBtnClick(Sender);
  end;
end;

procedure TFmSTIn00.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if FmDmic01.RctranPONO.Asstring = '' then
  begin
    Application.Createform(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalParts = Mrok then
    begin
      if FmDmic01.RcTran.State = Dsbrowse then
        FmDmic01.RcTran.Edit;
      FmDmic01.RctranPARTNO.Asstring := fSrcDlg.KeyNo;
    end;
  end
  else
  begin
    Application.CreateForm(TFImppo, FImppo);
    FImppo.XPono := FmDmic01.RcinvPONO.Asstring;
    if FImppo.ShowModal = Mrok then
    begin
      if FmDmic01.RcTran.State = Dsbrowse then
        FmDmic01.RcTran.Edit;
      FmDmic01.RctranPARTNO.Asstring := Fimppo.Qpotran.Fieldbyname('PARTNO').Asstring;
      FmDmic01.RctranQTYORD.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDQTY').AsFloat;
      FmDmic01.RctranQTYRECV.AsFloat := Fimppo.Qpotran.Fieldbyname('Balance').AsFloat;
      FmDmic01.RctranUCOST.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDCOST').AsFloat;
      FmDmic01.RctranREDU1.AsFloat := Fimppo.Qpotran.Fieldbyname('REDU').AsFloat;
    end;
  end;
end;

procedure TFmSTIn00.cxGridTranPONOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Key_a := ' AND (CHCODE = '''' OR CHCODE IS NULL) ';
  if fSrcDlg.ShowModalPo = Mrok then
    FmDmic01.RctranPONO.Asstring := fSrcDlg.KeyNo;
    //
  Application.CreateForm(TFImppo, FImppo);
  FImppo.XPono := FmDmic01.RcinvPONO.Asstring;
  if FImppo.ShowModal = Mrok then
  begin
    FmDmic01.RctranPARTNO.Asstring := Fimppo.Qpotran.Fieldbyname('PARTNO').Asstring;
    FmDmic01.RctranQTYORD.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDQTY').AsFloat;
    FmDmic01.RctranQTYRECV.AsFloat := Fimppo.Qpotran.Fieldbyname('Balance').AsFloat;
    FmDmic01.RctranUCOST.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDCOST').AsFloat;
    FmDmic01.RctranREDU1.AsFloat := Fimppo.Qpotran.Fieldbyname('REDU').AsFloat;
  end;
end;

procedure TFmSTIn00.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
//  fSrcDlg.Key_a := ' AND (CHCODE = '''' OR CHCODE IS NULL) ';
  fSrcDlg.XSrLocat := DBEdit1.Text;
  if fSrcDlg.ShowModalPO = Mrok then
  begin
    FmDmic01.RcinvPONO.Asstring := fSrcDlg.KeyNo;
    ShowPo;
    Showap;
  end;
end;

procedure TFmSTIn00.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.Rcinv.FieldByname('RECVLOC').Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn00.DBEdit1PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBEdit1.text);
end;

procedure TFmSTIn00.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAP = Mrok then
  begin
    FmDmic01.Rcinv.FieldByname('APCODE').Asstring := fSrcDlg.KeyNo;
    Showap;
  end;
end;

procedure TFmSTIn00.DBEdit7PropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Text := SFMain.FindShowDesc('APMAST', 'APNAME', 'APCODE', DBEdit7.text);
end;

procedure TFmSTIn00.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.Rcinv.FieldByname('OFFICCOD').Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn00.DBEdit11PropertiesChange(Sender: TObject);
begin
  cxTextEdit4.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit11.text);
end;

procedure TFmSTIn00.wwDBDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Rcinv.fieldbyname('RECVDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Rcinv.fieldbyname('RECVDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Rcinv.fieldbyname('RECVDT').AsDateTime := FmDmic01.Rcinv.fieldbyname('RECVDT').AsDateTime;
  end;
end;

procedure TFmSTIn00.InvDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Rcinv.fieldbyname('INVDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Rcinv.fieldbyname('INVDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Rcinv.fieldbyname('INVDATE').AsDateTime := FmDmic01.Rcinv.fieldbyname('INVDATE').AsDateTime;
  end;
end;

procedure TFmSTIn00.DueDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Rcinv.fieldbyname('INVDUE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Rcinv.fieldbyname('INVDUE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Rcinv.fieldbyname('INVDUE').AsDateTime := FmDmic01.Rcinv.fieldbyname('INVDUE').AsDateTime;
  end;
end;

procedure TFmSTIn00.TaxDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Rcinv.fieldbyname('TAXDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Rcinv.fieldbyname('TAXDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Rcinv.fieldbyname('TAXDATE').AsDateTime := FmDmic01.Rcinv.fieldbyname('TAXDATE').AsDateTime;
  end;
end;

procedure TFmSTIn00.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
 { IF Uppercase(NAME)='DATETHAI' Then
  Begin
     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
  End; }
end;

procedure TFmSTIn00.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PRECVNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn00.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Rcinv.fr3','2');
end;

procedure TFmSTIn00.PoHisBtnClick(Sender: TObject);
begin
  if FmDmic01.RctranPARTNO.Asstring = '' then
    sfmain.RaiseException('ไม่พบรหัสสินค้าที่อ้างอิง..!');

  if not Assigned(FRecvHistory) then
    FRecvHistory := TFRecvHistory.Create(Application);
  FRecvHistory.cxButtonEdit1.Text := FmDmic01.RctranPARTNO.Asstring;
  FRecvHistory.Show;
end;

procedure TFmSTIn00.AutoAddClick(Sender: TObject);
begin
  if not Assigned(SetInvMst) then
    SetInvMst := TSetInvMst.Create(Application);
  SetInvMst.Show;
end;

procedure TFmSTIn00.cxDBImageComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  cxDBCheckBox1.Checked := cxDBImageComboBox1.EditValue = 'A'
end;

procedure TFmSTIn00.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    fsrcDlg.XSrLocat := ''
  else
    fsrcDlg.XSrLocat := SFmain.Xlocat;
  FSrcDlg.Flag_a := '1';
  if fSrcDlg.ShowModalpk = Mrok then
    FmDmic01.RcinvREFNO.AsString := fsrcDlg.Keyno;
end;

procedure TFmSTIn00.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    fsrcDlg.XSrLocat := ''
  else
    fsrcDlg.XSrLocat := SFmain.Xlocat;
  FSrcDlg.Flag_a := '1';
  if fSrcDlg.ShowModalpk = Mrok then
    FmDmic01.RcinvLCNO.AsString := fsrcDlg.Keyno;
end;

end.

