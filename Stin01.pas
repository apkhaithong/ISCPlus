unit Stin01;

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
  cxNavigator, dxStatusBar, frxExportXLSX, frxRich, frxTableObject, frxClass,
  frxDCtrl, frxFDComponents, frxGradient, frxExportImage, frxExportPDF,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFmSTIn01 = class(TForm)
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
    cxGridTranQTYORD: TcxGridDBColumn;
    cxGridTranUCOST: TcxGridDBColumn;
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
    DataSource3: TDataSource;
    qrHelp1: TFDQuery;
    qrHelp1GROUPCOD: TStringField;
    qrHelp1GROUPNAM: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Label14: TLabel;
    Label8: TLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxGridTranLOTNO: TcxGridDBColumn;
    Label9: TLabel;
    cxDBButtonEdit3: TcxDBButtonEdit;
    Label10: TLabel;
    cxDBButtonEdit4: TcxDBButtonEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
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
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBRadioGroup1Click(Sender: TObject);
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
  FmSTIn01: TFmSTIn01;
  Smnettot: Double;
  i: integer;

implementation

uses
  Dmic01, DmSet1, Imppo, RecvHistory, uSrcDlg, Functn01, USoftFirm, unfrPreview,
  Dmsec, Set_Inv, uFindData;

{$R *.DFM}

procedure TFmSTIn01.DataSource1StateChange(Sender: TObject);
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

  cxDBRadioGroup1.Properties.ReadOnly := not SaveBtn.Visible;

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

procedure TFmSTIn01.insBtnClick(Sender: TObject);
begin
  with FmDmic01.RcInv2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO ='''' ');
    if not FmDmic01.RcInv2.Prepared then
      FmDmic01.RcInv2.Prepare;
    OPEN;
    INSERT;
  end;

  with FmDmic01.RcTran2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO ='''' ');
    if not FmDmic01.RcInv2.Prepared then
      FmDmic01.RcInv2.Prepare;
    OPEN;
  end;
  if DBEdit1.Enabled = False then
    DBEdit3.SetFocus
  else
    DBEdit1.SetFocus;
end;

procedure TFmSTIn01.FormShow(Sender: TObject);
begin
  with FmDmic01.RcInv2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO ='''' ');
    OPEN;
  end;
  qrHelp1.Open;
end;

procedure TFmSTIn01.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    fsrcDlg.XSrLocat := ''
  else
    fsrcDlg.XSrLocat := sfmain.Xlocat;
  fSrcDlg.Key_a := ' AND (CHCODE IS NULL OR CHCODE='''') ';
  fSrcDlg.nPaytyp := 'B';
  if fSrcDlg.ShowModalRcInv = Mrok then
  begin
    with FmDmic01.RcInv2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM RC_INVOI WHERE RECVNO =:XRECVNO');
      PARAMS[0].ASSTRING := fSrcDlg.Keyno;
      OPEN;
      if Bof and Eof then
        SFMain.RaiseException('��辺��Ѻ�Թ���');
    end;
    with FmDmic01.RcTran2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM RC_TRANS WHERE RECVNO =:XRECVNO');
      PARAMS[0].ASSTRING := FmDmic01.RcInv2RECVNO.Asstring;
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

    FmDmic01.RcTran2.first;
    while not FmDmic01.RcTran2.eof do
    begin
      FmDmic01.qtemp.insert;
      FmDmic01.qtemp.fieldbyname('PARTNO').asstring := FmDmic01.RcTran2.fieldbyname('PARTNO').asstring;
      FmDmic01.qtemp.fieldbyname('PONO').asstring := FmDmic01.RcTran2.fieldbyname('PONO').asstring;
      FmDmic01.qtemp.post;
      FmDmic01.RcTran2.Next;
    end;
  end;
end;

procedure TFmSTIn01.CancBtnClick(Sender: TObject);
begin
  FmDmic01.RcTran2.Cancel;
  FmDmic01.RcInv2.Cancel;
end;

procedure TFmSTIn01.delBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('��辺����/�Ţ�����ҧ�ԧ');
  if FmDmic01.RcInv2POSTGL.AsString = 'Y' then
    SFMain.RaiseException('ŧ�ѭ������ ��سҵ�Ǩ�ͺ������...!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_E', 'DELETE', FmDmic01.RcInv2.FieldByName('RECVNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.RcInv2.Delete;
        if FmDmic01.QTemp.Active then
          FmDmic01.QTemp.Close;
      end;
  end;
end;

procedure TFmSTIn01.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFmSTIn01.SaveBtnClick(Sender: TObject);
begin
  if DBEdit3.Text = '' then
    SFMain.RaiseException('�ѧ���ѹ�֡�Ţ�����觢ͧ');
  if DBEdit7.Text = '' then
    SFMain.RaiseException('�ѧ���ѹ�֡�������˹��');
  if FmDmic01.RcTran2.RecordCount = 0 then
    SFMain.RaiseException('�ѧ���ѹ�֡��¡���Թ���');
  if FmDmic01.val <> 0 then
    SFMain.RaiseException('�������Թ��ҫ��')
  else
  begin
    if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_E', 'INSERT', FmDmic01.RcInv2.FieldByName('RECVNO').AsString)
    else
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_E', 'EDIT', FmDmic01.RcInv2.FieldByName('RECVNO').AsString);
    if DM_SEC.qrRecent.UpdatesPending then
      if (DM_SEC.qrRecent.ApplyUpdates = 0) then
        DM_SEC.qrRecent.CommitUpdates
      else
        raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
    FmDmic01.Qtemp.Close;
    FmDmic01.RcInv2.Post;
  end;
end;

procedure TFmSTIn01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FmDmic01.RcInv2.State in Dseditmodes then
    SFMain.RaiseException('��سҡ����� ¡��ԡ ��� �͡ �����鹵͹ ');
  FmDmic01.RcInv2.Close;
  FmDmic01.RcTran2.Close;
  qrHelp1.Close;
  FActive := False;
  Action := Cafree;
  FmSTin01 := Nil;
end;

procedure TFmSTIn01.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('��س����͡�Ţ����͡��á�͹�����..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RcInv2.fr3','1');
end;

procedure TFmSTIn01.ADDPOClick(Sender: TObject);
var
  SmUcost1, SmUcost2, SmUcost3, Ucost1, Ucost2, Ucost3: Double;
  temp, temp1: string;
begin
  if DBEdit5.Text = '' then
    sfmain.RaiseException('��س����͡���觫���..!');
  Application.CreateForm(TFImppo, FImppo);
  FImppo.XPono := FmDmic01.RcInv2PONO.Asstring;

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
            SFMain.RaiseException('�����Թ��� :' + temp + ' ���');
          FmDmic01.Qtemp.next;
        end;
        FmDmic01.Qtemp.Edit;
        FmDmic01.Qtemp.FieldByName('PARTNO').AsString := Fimppo.Qpotran.Fieldbyname('PARTNO').Asstring;
        FmDmic01.Qtemp.FieldByName('PONO').AsString := Fimppo.Qpotran.Fieldbyname('PONO').Asstring;
        FmDmic01.Qtemp.Post;

        FmDmic01.RcTran2.Append;
        FmDmic01.RcTran2PARTNO.Asstring := Fimppo.Qpotran.Fieldbyname('PARTNO').Asstring;
        FmDmic01.RcTran2QTYORD.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDQTY').AsFloat;
        FmDmic01.RcTran2Pono.ASstring := Fimppo.Qpotran.Fieldbyname('PONO').ASstring;
        FmDmic01.RcTran2LOTNO.ASstring := Fimppo.Qpotran.Fieldbyname('LOTNO').ASstring;
        FmDmic01.RcTran2QTYRECV.AsFloat := Fimppo.Qpotran.Fieldbyname('Balance').AsFloat;
        FmDmic01.RcTran2UCOST.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDCOST').AsFloat;
        FmDmic01.RcTran2REDU1.AsFloat := Fimppo.Qpotran.Fieldbyname('REDU').AsFloat;
        FmDmic01.RcTran2Netcost.AsFloat := Fimppo.Qpotran.Fieldbyname('NETCOST').AsFloat;
        FmDmic01.RcTran2Nettot.AsFloat := FRound(Fimppo.Qpotran.Fieldbyname('Balance').AsFloat * Fimppo.Qpotran.Fieldbyname('NETCOST').AsFloat, 2);

        FmDmic01.RcTran2.Post;
      end;
      Fimppo.Qpotran.Next
    end;
  end;
  FmDmic01.ckImp := 0;
end;

procedure TFmSTIn01.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  ADDPo.Enabled := FmDmic01.RcInv2Pono.Asstring <> '';
  DBedit7.Enabled := Dbedit5.Text = '';
end;

procedure TFmSTIn01.DBEdit5BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Key_a := ' AND (CHCODE = '''' OR CHCODE IS NULL) ';
  if fSrcDlg.ShowModalPO = Mrok then
  begin
    FmDmic01.RcInv2PONO.Asstring := fSrcDlg.KeyNo;
    ShowPo;
    Showap;
  end;
end;

procedure TFmSTIn01.DBEdit11BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.RcInv2.FieldByname('OFFICCOD').Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn01.DBEdit7BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAP = Mrok then
  begin
    FmDmic01.RcInv2.FieldByname('APCODE').Asstring := fSrcDlg.KeyNo;
    Showap;
  end;
end;

procedure TFmSTIn01.DBRadioGroup1Click(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 0 then
    FmDmic01.RcInv2.FieldByName('VATTYPE').Asstring := '1';
  if DBRadioGroup1.ItemIndex = 1 then
    FmDmic01.RcInv2.FieldByName('VATTYPE').Asstring := '2';
end;

procedure TFmSTIn01.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_E');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;

  if not (FmDmic01.CondPay.Active) then
    FmDmic01.CondPay.Open;
  {If FmDmic01.CondPay.Fieldbyname('Disbath').Asstring='Y' Then
  Begin
    cxGridTranDISCAMT.Visible := True;
    cxGridTranREDU1.Visible := False;
    cxGridTranREDU2.Visible := False;
    cxGridTranREDU3.Visible := False;
  End  Else
  Begin
    cxGridTranDISCAMT.Visible := False;
    cxGridTranREDU1.Visible := True;
    cxGridTranREDU2.Visible := True;
    cxGridTranREDU3.Visible := True;
  End;}
  imppo1 := false;
  boo1 := false;
  FActive := True;
end;

procedure TFmSTIn01.DBMemo1Enter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TFmSTIn01.DBMemo1Exit(Sender: TObject);
begin
  DBkbd1.Disable := False;
  FmSTIn01.KeyPreview := True;
end;

procedure TFmSTIn01.DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  {If DBCheckBox1.Checked Then
  Begin
    cxGridTranDISCAMT.Visible := True;
    cxGridTranREDU1.Visible := False;
    cxGridTranREDU2.Visible := False;
    cxGridTranREDU3.Visible := False;
  End
  Else
  Begin
    cxGridTranDISCAMT.Visible := False;
    cxGridTranREDU1.Visible := True;
    cxGridTranREDU2.Visible := True;
    cxGridTranREDU3.Visible := True;
  End;}
end;

procedure TFmSTIn01.ShowPo;
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
        SFMain.RaiseException('��辺�Ţ������觫��͹��');
      FmDmic01.RcInv2PONO.Asstring := FmDmic01.Query1.Fieldbyname('PONO').Asstring;
      FmDmic01.RcInv2Disct.Asstring := FmDmic01.Query1.Fieldbyname('Disct').Asstring;
      FmDmic01.RcInv2APCODE.Asstring := FmDmic01.Query1.Fieldbyname('apCode').Asstring;
    end;
  end;
end;

procedure TFmSTIn01.Showap;
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
      SFMain.RaiseException('��辺�������˹����к�');
    if FmDmic01.RcInv2.State in Dseditmodes then
    begin
      FmDmic01.RcInv2.FieldByname('APCODE').Asstring := TmpQuery.Fieldbyname('APCODE').Asstring;
      FmDmic01.RcInv2.FieldByname('DISCT').Asstring := TmpQuery.Fieldbyname('DISCT').Asstring;
      FmDmic01.RcInv2.FieldByname('CREDTM').Asfloat := TmpQuery.Fieldbyname('CREDTM').Asfloat;
    end;
  end;
end;

procedure TFmSTIn01.DBEdit7Exit(Sender: TObject);
begin
  if DBEdit7.Text <> '' then
    Showap;
end;

procedure TFmSTIn01.DBEdit5Exit(Sender: TObject);
begin
  if DBEdit5.Text <> '' then
    ShowPo;
end;

procedure TFmSTIn01.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn01.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFmSTIn01.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if FmDmic01.RcTran2PONO.Asstring = '' then
  begin
    Application.Createform(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalParts = Mrok then
    begin
      if FmDmic01.RcTran2.State = Dsbrowse then
        FmDmic01.RcTran2.Edit;
      FmDmic01.RcTran2PARTNO.Asstring := fSrcDlg.KeyNo;
    end;
  end
  else
  begin
    Application.CreateForm(TFImppo, FImppo);
    FImppo.XPono := FmDmic01.RcInv2PONO.Asstring;
    if FImppo.ShowModal = Mrok then
    begin
      if FmDmic01.RcTran2.State = Dsbrowse then
        FmDmic01.RcTran2.Edit;
      FmDmic01.RcTran2PARTNO.Asstring := Fimppo.Qpotran.Fieldbyname('PARTNO').Asstring;
      FmDmic01.RcTran2QTYORD.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDQTY').AsFloat;
      FmDmic01.RcTran2QTYRECV.AsFloat := Fimppo.Qpotran.Fieldbyname('Balance').AsFloat;
      FmDmic01.RcTran2UCOST.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDCOST').AsFloat;
      FmDmic01.RcTran2REDU1.AsFloat := Fimppo.Qpotran.Fieldbyname('REDU').AsFloat;
    end;
  end;
end;

procedure TFmSTIn01.cxGridTranPONOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Key_a := ' AND (CHCODE = '''' OR CHCODE IS NULL) ';
  if fSrcDlg.ShowModalPo = Mrok then
    FmDmic01.RcTran2PONO.Asstring := fSrcDlg.KeyNo;
    //
  Application.CreateForm(TFImppo, FImppo);
  FImppo.XPono := FmDmic01.RcInv2PONO.Asstring;
  if FImppo.ShowModal = Mrok then
  begin
    FmDmic01.RcTran2PARTNO.Asstring := Fimppo.Qpotran.Fieldbyname('PARTNO').Asstring;
    FmDmic01.RcTran2QTYORD.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDQTY').AsFloat;
    FmDmic01.RcTran2QTYRECV.AsFloat := Fimppo.Qpotran.Fieldbyname('Balance').AsFloat;
    FmDmic01.RcTran2UCOST.AsFloat := Fimppo.Qpotran.Fieldbyname('ORDCOST').AsFloat;
    FmDmic01.RcTran2REDU1.AsFloat := Fimppo.Qpotran.Fieldbyname('REDU').AsFloat;
  end;
end;

procedure TFmSTIn01.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
//  fSrcDlg.Key_a := ' AND (CHCODE = '''' OR CHCODE IS NULL) ';
  fSrcDlg.XSrLocat := DBEdit1.Text;
  if fSrcDlg.ShowModalPO = Mrok then
  begin
    FmDmic01.RcInv2PONO.Asstring := fSrcDlg.KeyNo;
    ShowPo;
    Showap;
  end;
end;

procedure TFmSTIn01.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.RcInv2.FieldByname('RECVLOC').Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn01.DBEdit1PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBEdit1.text);
end;

procedure TFmSTIn01.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAP = Mrok then
  begin
    FmDmic01.RcInv2.FieldByname('APCODE').Asstring := fSrcDlg.KeyNo;
    Showap;
  end;
end;

procedure TFmSTIn01.DBEdit7PropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Text := SFMain.FindShowDesc('APMAST', 'APNAME', 'APCODE', DBEdit7.text);
end;

procedure TFmSTIn01.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.RcInv2.FieldByname('OFFICCOD').Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn01.DBEdit11PropertiesChange(Sender: TObject);
begin
  cxTextEdit4.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit11.text);
end;

procedure TFmSTIn01.wwDBDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.RcInv2.fieldbyname('RECVDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.RcInv2.fieldbyname('RECVDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.RcInv2.fieldbyname('RECVDT').AsDateTime := FmDmic01.RcInv2.fieldbyname('RECVDT').AsDateTime;
  end;
end;

procedure TFmSTIn01.InvDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.RcInv2.fieldbyname('INVDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.RcInv2.fieldbyname('INVDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.RcInv2.fieldbyname('INVDATE').AsDateTime := FmDmic01.RcInv2.fieldbyname('INVDATE').AsDateTime;
  end;
end;

procedure TFmSTIn01.DueDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.RcInv2.fieldbyname('INVDUE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.RcInv2.fieldbyname('INVDUE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.RcInv2.fieldbyname('INVDUE').AsDateTime := FmDmic01.RcInv2.fieldbyname('INVDUE').AsDateTime;
  end;
end;

procedure TFmSTIn01.TaxDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.RcInv2.fieldbyname('TAXDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.RcInv2.fieldbyname('TAXDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.RcInv2.fieldbyname('TAXDATE').AsDateTime := FmDmic01.RcInv2.fieldbyname('TAXDATE').AsDateTime;
  end;
end;

procedure TFmSTIn01.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TFmSTIn01.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PRECVNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn01.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_RcInv2.fr3','2');
end;

procedure TFmSTIn01.PoHisBtnClick(Sender: TObject);
begin
  if FmDmic01.RcTran2PARTNO.Asstring = '' then
    sfmain.RaiseException('��辺�����Թ��ҷ����ҧ�ԧ..!');

  if not Assigned(FRecvHistory) then
    FRecvHistory := TFRecvHistory.Create(Application);
  FRecvHistory.cxButtonEdit1.Text := FmDmic01.RcTran2PARTNO.Asstring;
  FRecvHistory.Show;
end;

procedure TFmSTIn01.AutoAddClick(Sender: TObject);
begin
  if not Assigned(SetInvMst) then
    SetInvMst := TSetInvMst.Create(Application);
  SetInvMst.Show;
end;

procedure TFmSTIn01.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    fsrcDlg.XSrLocat := ''
  else
    fsrcDlg.XSrLocat := SFmain.Xlocat;
  FSrcDlg.Flag_a := '1';
  if fSrcDlg.ShowModalpk = Mrok then
    FmDmic01.RcInv2REFNO.AsString := fsrcDlg.Keyno;
end;

procedure TFmSTIn01.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    fsrcDlg.XSrLocat := ''
  else
    fsrcDlg.XSrLocat := SFmain.Xlocat;
  FSrcDlg.Flag_a := '1';
  if fSrcDlg.ShowModalpk = Mrok then
    FmDmic01.RcInv2LCNO.AsString := fsrcDlg.Keyno;
end;

procedure TFmSTIn01.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    fsrcDlg.XSrLocat := ''
  else
    fsrcDlg.XSrLocat := SFmain.Xlocat;
  FSrcDlg.Flag_a := '1';
  if fSrcDlg.ShowModalpk = Mrok then
    FmDmic01.RcInv2REFNO3.AsString := fsrcDlg.Keyno;
end;

procedure TFmSTIn01.cxDBButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    fsrcDlg.XSrLocat := ''
  else
    fsrcDlg.XSrLocat := SFmain.Xlocat;
  FSrcDlg.Flag_a := '1';
  if fSrcDlg.ShowModalpk = Mrok then
    FmDmic01.RcInv2REFNO4.AsString := fsrcDlg.Keyno;
end;

procedure TFmSTIn01.cxDBRadioGroup1Click(Sender: TObject);
begin
  if cxDBRadioGroup1.ItemIndex = 0 then
  begin
    FmDmic01.VHF := 'H_STIN';
    FmDmic01.VLF := 'L_STIN';
  end
  else
  begin
    FmDmic01.VHF := 'H_SLRC';
    FmDmic01.VLF := 'L_SLRC';
  end;

  if FmDmic01.Rcinv2RECVDT.Asstring = '' then
    FmDmic01.Rcinv2RECVDT.AsDateTime := Now;
   //
  FmDmic01.Rcinv2RECVDTValidate(FmDmic01.Rcinv2RECVDT);
   //
  if DBEdit3.Text <> '' then
  begin
   //   FmDmic01.Rctran2.DisableControls;
    FmDmic01.Rctran2.AfterPost := Nil;
    FmDmic01.Rctran2.BeforePost := Nil;
    FmDmic01.Rctran2.First;
    while not FmDmic01.Rctran2.Eof do
    begin
      FmDmic01.Rctran2.Edit;
      FmDmic01.Rctran2RECVNO.Asstring := FmDmic01.Rcinv2RECVNO.Asstring;
      FmDmic01.Rctran2.Next;
    end;
    FmDmic01.Rctran2.AfterPost := FmDmic01.Rctran2AfterPost;
    FmDmic01.Rctran2.BeforePost := FmDmic01.Rctran2BeforePost;
   //   FmDmic01.Rctran2.EnableControls;
  end;
end;

end.

