unit STIn03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, Mask, ComCtrls, DB,
  Dbkbd, ImgList, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, AdvGlowButton, AdvToolBar, AdvPanel,
  cxLookAndFeelPainters, cxTextEdit, cxDBEdit, cxContainer, cxGroupBox,
  cxRadioGroup, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalendar, ActnList,
  cxLookAndFeels, dxDateRanges, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, Vcl.Menus, RzDbkbd,
  dxStatusBar, cxButtons, RzLabel, RzDBLbl, cxMemo, frxExportXLSX, frxRich,
  frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTIn03 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranQTYORD: TcxGridDBColumn;
    cxGridTranQTYOUT: TcxGridDBColumn;
    cxGridTranNETFL: TcxGridDBColumn;
    cxGridTranFREE: TcxGridDBColumn;
    cxGridTranUPRICE: TcxGridDBColumn;
    cxGridTranDISCAMT: TcxGridDBColumn;
    cxGridTranREDU1: TcxGridDBColumn;
    cxGridTranREDU2: TcxGridDBColumn;
    cxGridTranREDU3: TcxGridDBColumn;
    cxGridTranNETPRC: TcxGridDBColumn;
    cxGridTranTOTPRC: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Label8: TLabel;
    Label21: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit12: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit23: TcxDBTextEdit;
    DBEdit24: TcxDBTextEdit;
    DBEdit25: TcxDBTextEdit;
    DBEdit26: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    cxTextEdit1: TcxTextEdit;
    Edit3: TcxTextEdit;
    Edit1: TcxTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit32: TcxDBTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    DBRadioGroup2: TcxDBRadioGroup;
    DBEdit14: TcxDBTextEdit;
    Edit4: TcxTextEdit;
    DBEdit31: TcxDBTextEdit;
    Edit2: TcxTextEdit;
    TaxDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit3: TcxDBButtonEdit;
    DBEdit30: TcxDBButtonEdit;
    DBEdit15: TcxDBTextEdit;
    DBDateEdit1: TcxDBDateEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    BillBtn: TAdvGlowButton;
    cxRadioGroup1: TcxRadioGroup;
    dxStatusBar1: TdxStatusBar;
    Label10: TLabel;
    Label4: TLabel;
    DBMemo1: TcxDBMemo;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGridTranPARTDESC: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    Label33: TLabel;
    Label6: TLabel;
    Edit_Ref: TcxButtonEdit;
    Edit_Ref1: TcxButtonEdit;
    Aplist: TcxButton;
    RzDBLabel1: TRzDBLabel;
    DBCheckBox1: TcxDBCheckBox;
    DBEdit7: TcxDBButtonEdit;
    Label7: TLabel;
    Query3: TFDQuery;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure insBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure BillBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit4Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure FldCombo1BtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBEdit18Change(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit3PropertiesChange(Sender: TObject);
    procedure DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure TaxDateExit(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure AplistClick(Sender: TObject);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTIn03: TFmSTIn03;
  Smnettot: double;
  Xterm: Integer;

implementation

uses
  Dmic01, STHelp, uSrcDlg, DmSet1, Paymnt, USoftFirm, unfrPreview, Dmsec,
  functn01, uFindData;

{$R *.DFM}

procedure TFmSTIn03.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbGrid) and
      not (ActiveControl is TDBMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end
end;

procedure TFmSTIn03.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FmDmic01.Icinv.State in Dseditmodes then
    SFMain.RaiseException('กรุณากดปุ่ม ยกเลิก และ ออก ตามขั้นตอน ');

  FmDmic01.Icinv.Close; {Dmic01 จะ Close ส่วนที่เหลือ}
  FmDmic01.QDBConfig.Close;
  Action := Cafree;
  FmSTIn03 := nil;
end;

procedure TFmSTIn03.FormShow(Sender: TObject);
begin
  FormatSettings.ShortdateFormat := 'dd/mm/yyyy';
  with FmDmic01.Icinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO =:XINVNO');
    PARAMS[0].ASSTRING := '';
    OPEN;
  end;
  FmDmic01.CondPay.Close;
  FmDmic01.CondPay.Open;
end;

procedure TFmSTIn03.insBtnClick(Sender: TObject);
begin
  with FmDmic01.Icinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO ='''' ');
    OPEN;
    INSERT;
  end;
  DBRadioGroup1.ItemIndex := 1;
  DBRadioGroup2.ItemIndex := 1;
  with FmDmic01.Ictran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO ='''' ');
    OPEN;
  end;
  DBRadioGroup2Click(Sender);
end;

procedure TFmSTIn03.DataSource1StateChange(Sender: TObject);
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
  DBCheckBox1.Properties.ReadOnly := not SaveBtn.Visible;

  PrnBtn.Visible := (DataSource1.Dataset.State = Dsbrowse) and (DBEdit2.Text <> '');
  BillBtn.Visible := (DataSource1.Dataset.State = Dsbrowse);
  DBRadioGroup2.Properties.ReadOnly := not (DataSource1.Dataset.State = DsInsert);
  dbradiogroup1.Properties.ReadOnly := not SaveBtn.Visible;

  Aplist.Enabled := SaveBtn.Visible;

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

      if (Components[N] is TcxButtonEdit) and (TcxButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxButtonEdit(Components[N]).Enabled := False;
        TcxButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDateEdit) and (TcxDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDateEdit(Components[N]).Enabled := False;
        TcxDateEdit(Components[N]).Style.Color := clBtnFace;
      end;
    end;
  end
  else if DataSource1.Dataset.State = Dsinsert then
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

      if (Components[N] is TcxButtonEdit) and (TcxButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxButtonEdit(Components[N]).Enabled := True;
        TcxButtonEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDateEdit) and (TcxDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDateEdit(Components[N]).Enabled := True;
        TcxDateEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end
  else if DataSource1.Dataset.State = DsEdit then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;

  if FmDmic01.IcinvCANCELID.Asstring <> '' then
  begin
    Label10.Visible := True;
     //DBKbd1.AllowEditing := False;
  end
  else
  begin
    Label10.Visible := False;
     //DBKbd1.AllowEditing:=SFMain.Edit_right;
  end;
  //
  FmDmic01.QDBConfig.Close;
  FmDmic01.QDBConfig.Open;
  if FmDmic01.IcinvFLAG.ASstring = '1' then
    DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_CSH').asstring = 'Y';
  if FmDmic01.IcinvFLAG.ASstring = '2' then
    DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_CRD').asstring = 'Y';

  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  TaxDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
end;

procedure TFmSTIn03.CancBtnClick(Sender: TObject);
begin
  FmDmic01.Icinv.Cancel;
  Edit1.Text := '';
  Edit3.Text := '';
end;

procedure TFmSTIn03.DBRadioGroup2Click(Sender: TObject);
begin
  if DBRadioGroup2.ItemIndex = 0 then
    FmDmic01.IcinvFLAG.Asstring := '1';
  if DBRadioGroup2.ItemIndex = 1 then
    FmDmic01.IcinvFLAG.Asstring := '2';

  if DBRadioGroup2.ItemIndex = 1 then
  begin
    FmDmic01.IcinvCredtm.AsFloat := Xterm;
    FmDmic01.IcinvInvdue.AsDatetime := FmDmic01.IcinvInvdate.AsDatetime + Xterm;
  end
  else
  begin
    FmDmic01.IcinvCredtm.AsFloat := 0;
    FmDmic01.IcinvInvdue.AsDatetime := FmDmic01.IcinvInvdate.AsDatetime;
  end;

  if FmDmic01.IcinvINVDATE.Asstring = '' then
    FmDmic01.IcinvINVDATE.AsDateTime := Now;
   //
  FmDmic01.IcinvINVDATEValidate(FmDmic01.IcinvINVDATE);
   //
  if DBedit5.Text <> '' then
  begin
    FmDmic01.Ictran.DisableControls;
    FmDmic01.IcTran.AfterPost := Nil;
    FmDmic01.IcTran.BeforePost := Nil;
    FmDmic01.IcTran.First;
    while not FmDmic01.Ictran.Eof do
    begin
      FmDmic01.Ictran.Edit;
      FmDmic01.IctranInvno.Asstring := FmDmic01.IcinvInvNO.Asstring;
      FmDmic01.Ictran.Next;
    end;
    FmDmic01.IcTran.AfterPost := FmDmic01.IcTranAfterPost;
    FmDmic01.IcTran.BeforePost := FmDmic01.IcTranBeforePost;
    FmDmic01.Ictran.EnableControls;
  end;
end;

procedure TFmSTIn03.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalICINV = Mrok then
  begin
    with FmDmic01.Icinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO =:XINVNO');
      PARAMS[0].ASSTRING := fSrcDlg.Keyno;
      OPEN;
    end;
      //
    with FmDmic01.QPkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO=:XPKNO ');
      PARAMS[0].AsString := FmDmic01.IcinvPKNO.Asstring;
      Open;
    end;

      //
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CODE,NAME,DEPCODE FROM OFFICER ' +
        'Where CODE =:0 ');
      Params[0].AsString := FmDmic01.IcinvOFFICCOD.AsString;
      Open;
      Edit3.Text := FmDmic01.Query1.FieldByname('NAME').Asstring;
    end;

    with FmDmic01.Query1 do
    begin
      close;
      sql.clear;
      sql.add('select cuscod,snam,name1,name2,SALLEV from CUSTMAST ' +
        'WHERE cuscod =:EDIT1 ');
      Params[0].AsString := FmDmic01.IcinvCusCod.AsString;
      OPEN;
      Edit1.Text := FmDmic01.Query1.FieldByname('SNAM').Asstring + ' ' +
        FmDmic01.Query1.FieldByname('NAME1').Asstring + '   ' +
        FmDmic01.Query1.FieldByname('NAME2').Asstring;
      Edit4.Text := FmDmic01.Query1.FieldByname('SALLEV').Asstring;
    end;

    with FmDmic01.ictran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO =:XINVNO');
      PARAMS[0].ASSTRING := fSrcDlg.Keyno;
      OPEN;
    end;

    if FmDmic01.ICinvTAXNO.Asstring <> '' then
    begin
      with FmDmic01.TAXSAL do
      begin
        Close;
        sql.clear;
        Sql.add('SELECT * FROM TAXSAL WHERE TAXNO = :Edit1 ');
        Params[0].Asstring := FmDmic01.IcinvTAXNO.Asstring;
        Open;
        if not (FmDmic01.TaxSal.Eof and FmDmic01.TaxSal.Bof) then
          Edit2.Text := FmDmic01.TaxSal.Fieldbyname('Desc1').Asstring;
      end;
    end;
  end;
end;

procedure TFmSTIn03.SaveBtnClick(Sender: TObject);
begin
  if FmDmic01.IcTran.RecordCount = 0 then
    SFMain.RaiseException('ไม่มีรายการสินค้า');

  if FmDmic01.IcinvOfficcod.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสพนักงาน');

  if FmDmic01.IcTran.Bof and FmDmic01.IcTran.Eof then
    SFMain.RaiseException('ไม่มีรายการสินค้า');

  FmDmic01.Desctax := Edit2.Text;
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSP03', 'INSERT', FmDmic01.Icinv.FieldByName('TAXNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSP03', 'EDIT', FmDmic01.Icinv.FieldByName('TAXNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  FmDmic01.Icinv.post;

  with FmDmic01.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE APINVOI SET SMPAY=NETTOTAL,KANG=0,LPAID=:1 WHERE INVNO=:2');
    Params[0].AsDATEtime := FmDmic01.Icinv.Fieldbyname('INVDATE').Asdatetime;
    Params[1].Asstring := FmDmic01.Icinv.Fieldbyname('Depostno').Asstring;
    ExecSql;
  end;

  if (DBRadioGroup2.ItemIndex = 0) and (FmDmic01.IcinvNETPRC.AsFloat > 0) and (FmDmic01.IcinvCUSCOD.AsString <> '') then
  begin
    Application.CreateForm(TFPaymnt, FPaymnt);
    FPaymnt.Showmodal;
  end;
end;

procedure TFmSTIn03.delBtnClick(Sender: TObject);
var
  XYear, XMonth, XDay: word;
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  with FmDmic01.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT RTNNO,TAXREFNO FROM RT_INVOI WHERE TAXREFNO=:1 AND CANCELID IS NULL');
    Params[0].Asstring := FmDmic01.Icinv.FieldByName('TAXNO').AsString;
    Open;
    if not (Bof and Eof) then
      SFMain.RaiseException('มีการออกใบลดหนี้ #' + FmDmic01.Query1.Fieldbyname('RTNNO').Asstring);
  end;
  //
  if not FmDmic01.Condpay.Active then
    FmDmic01.Condpay.Open;
  DecodeDate(FmDmic01.IcinvINVDATE.Asdatetime, XYear, XMonth, XDay);
  if FmDmic01.Condpay.Fieldbyname('Curyear').Asstring > Inttostr(XYear) then
    SFMain.RaiseException('ปิดบัญชีสิ้นปีแล้ว ยกเลิกข้อมูลเก่าไม่ได้');

  if FmDmic01.IcinvCancelId.AsString <> '' then
    SFMain.RaiseException('ถูกยกเลิกแล้ว');

  if FmDmic01.IcinvPaid.Asfloat > 0 then
    SFMain.RaiseException('มีการชำระเงินแล้ว ต้องยกเลิกการชำระก่อน');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        if SFMain.Xlevel > '1' then
          if not (SFMain.Del_right) then
            SFMain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');

        if FmDmic01.IcInvPkNo.AsString <> '' then
        begin
          FmDmic01.QPkinv.Edit;
          FmDmic01.QPkinv.FieldByName('REFNO').AsString := '';
          FmDmic01.QPkinv.FieldByName('REFDAT').AsString := '';
          FmDmic01.QPkinv.FieldByName('STAT').AsString := 'A';
          FmDmic01.QPkinv.Post;
        end;

        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSP03', 'DELETE', FmDmic01.Icinv.FieldByName('TAXNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
      //
        with FmDmic01.TAXSAL do
        begin
          Close;
          sql.clear;
          Sql.add('SELECT * FROM TAXSAL WHERE TAXNO =:XTAXNO ');
          Params[0].asstring := FmDmic01.IcinvTAXNO.AsString;
          Open;
          if FmDmic01.TAXSAL.FieldByName('POSTGL').AsString = 'Y' then
            SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

          if not (FmDmic01.Taxsal.Bof and FmDmic01.Taxsal.Eof) then
          begin
            FmDmic01.TAXSAL.Edit;
            FmDmic01.TAXSALVATRT.AsFloat := 0;
            FmDmic01.TAXSALAMOUNT.AsFloat := 0;
            FmDmic01.TAXSALBALANCE.AsFloat := 0;
            FmDmic01.TAXSALVAT.AsFloat := 0;
            FmDmic01.TAXSALTOTTAX.AsFloat := 0;
            FmDmic01.TAXSALCancel.AsString := 'C';
            FmDmic01.TAXSALCancelId.AsString := SFMain.Xuser_id;
            FmDmic01.TAXSALCanDat.AsDatetime := Now;
            FmDmic01.TAXSAL.Post;
          end;
        end;
     //
        FmDmic01.Icinv.Edit;
        FmDmic01.IcinvCancelId.AsString := SFMain.Xuser_id;
        FmDmic01.IcinvCanDat.AsDatetime := DATE;

     //
        FmDmic01.IcTran.first;
        while not FmDmic01.IcTran.Eof do
        begin
          FmDmic01.IcTran.Edit;
          FmDmic01.IcTranCancelId.AsString := SFMain.Xuser_id;
          FmDmic01.IcTranCanDat.AsDatetime := DATE;
          FmDmic01.IcTran.Post;
       //
          FmDmic01.IcTranBeforeDelete(FmDmic01.IcTran);
       //
          FmDmic01.IcTran.Next;
        end;
     //
        FmDmic01.Icinv.Post;
     //--ยกเลิกเงินมัดจำ
     {If FmDmic01.ICInv.Fieldbyname('Depostno').Asstring<>'' Then
     With FmDmic01.Query1 Do
     Begin
        Close;
        Sql.Clear;
        Sql.Add('UPDATE APINVOI SET SMPAY=0,KANG=NETTOTAL,LPAID=Null WHERE INVNO=:1');
        Params[0].Asstring := FmDmic01.ICInv.Fieldbyname('Depostno').Asstring;
        ExecSql;
     end;}
      end;
  end;
end;

procedure TFmSTIn03.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  if DBEdit7.Text = '' then
    sfmain.RaiseException('ไม่พบรหัสลูกค้า..!');

  if cxRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnIcInvno.fr3', '1')
  else if cxRadioGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnIcInvnof.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnIcInvnoPost.fr3', '1');
end;

procedure TFmSTIn03.BillBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาอ้างอิงเลขเอกสาร..!');

  if dbedit7.Text = '' then
    SFMain.RaiseException('เป็นการจ่ายสินค้าเข้าศูนย์');

  if DBRadioGroup2.ItemIndex = 1 then
    SFMain.RaiseException('เป็นการขายเชื่อ<br/>ให้รับชำระที่ระบบการเงิน-Service');
  Application.CreateForm(TFPaymnt, FPaymnt);
  FPaymnt.ShowModal;
end;

procedure TFmSTIn03.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFmSTIn03.DBEdit4Change(Sender: TObject);
begin
  if not FmDmic01.QDBConfig.Active then
    FmDmic01.QDBConfig.Open;
  if (FmDmic01.QDBConfig.Fieldbyname('H_CSH').asstring = 'Y') or
    (FmDmic01.QDBConfig.Fieldbyname('H_CRD').asstring = 'Y') then
    DBEdit2.Properties.Readonly := True
  else
    DBEdit2.Properties.Readonly := False;
end;

procedure TFmSTIn03.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSP', 'HDSP03');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  FmDmic01.Runfre := False;
end;

procedure TFmSTIn03.DBEdit5Change(Sender: TObject);
begin
  DBEdit4.Enabled := DBedit5.Text = '';
  DBEdit1.Enabled := DBedit5.Text = '';
end;

procedure TFmSTIn03.FldCombo1BtnClick(Sender: TObject);
begin
  if FmDmic01.Icinv.State = Dsbrowse then
    Exit;

  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Key_a := FmDmic01.Icinv.Fieldbyname('Cuscod').Asstring;
  if fSrcDlg.ShowModalDeposit = Mrok then
    FmDmic01.Icinv.Fieldbyname('Depostno').Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn03.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn03.DBEdit18Change(Sender: TObject);
begin
  DBEdit4.Enabled := DBedit5.Text = '';
  DBEdit1.Enabled := DBedit5.Text = '';
end;

procedure TFmSTIn03.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.IcinvInvLoc.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn03.DBEdit1PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT LOCATNM FROM INVLOCAT WHERE LOCATCD =:0');
    PARAMS[0].ASSTRING := DBEdit1.TEXT;
    OPEN;
    cxTextEdit1.TEXT := FmDmic01.Query2.FieldByname('LOCATNM').Asstring;
  end;
end;

procedure TFmSTIn03.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  XQty, Pric1, SmPric1: Double;
begin
  if FmDmic01.Icinv.State = Dsbrowse then
    Exit;

  FmDmic01.Runfre := False;
  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT A.PKNO,A.PKLOCAT,A.PKDATE,A.CUSCOD,B.CUSTNAME,A.BALANCE,A.VATAMT,A.NETTOTAL,A.USERID,A.TIME1,' +
      'A.CANCELID,A.CANDAT,A.REFNO,A.DISCT,A.VATTYPE,A.Vatrt,A.EXDISAMT,A.DISBATH,A.Officcod,A.SALLEV,A.MEMO1,A.TRANTO ' +
      'FROM PK_INVOI A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) WHERE A.CANCELID IS NULL AND ' +
      '(A.PKLOCAT =:XPKLOCAT) AND (A.STAT =:XSTAT) AND (A.FLAG=''1'' OR A.FLAG=''2'' ) ' +
      'AND (A.CANCELID IS NULL OR A.CANCELID = '') AND (A.REFNO IS NULL OR A.REFNO = '') AND A.PKLOCAT=:EDIT3 ORDER BY A.PKDATE DESC');
    PARAMS[0].ASSTRING := DBEdit1.TEXT;                                           //OR A.FLAG=''3''
    PARAMS[1].ASSTRING := 'A';
    Params[2].AsString := sfmain.Xlocat;
    Open;
  end;

  Application.CreateForm(TFmSTHelp, FmSTHelp);
  FmSTHelp.SoQuery1.Dataset := FmDmic01.Query1;
  FmSTHelp.PkGrid.Visible := True;
  if FmSTHelp.Showmodal = Mrok then
  begin
    if FmDmic01.Query1.Fieldbyname('Cancelid').Asstring <> '' then
      SFMain.RaiseException('ใบเบิกนี้ยกเลิกแล้ว');
    if FmDmic01.Query1.Fieldbyname('REFNO').Asstring <> '' then
      SFMain.RaiseException('ออกใบกำกับภาษีแล้ว');

    if FmDmic01.Query1.Fieldbyname('PKDATE').Asdatetime >
      FmDmic01.IcinvINVDATE.Asdatetime then
      SFMain.RaiseException('วันที่ออกใบกำกับ ก่อนวันที่ใบเบิกไม่ได้');

    FmDmic01.IcinvPKNO.Asstring := FmDmic01.Query1.Fieldbyname('PKNO').Asstring;
    FmDmic01.IcinvCUSCOD.Asstring := FmDmic01.Query1.Fieldbyname('Cuscod').Asstring;
    FmDmic01.IcinvDisct.AsFloat := FmDmic01.Query1.Fieldbyname('DISCT').AsFloat;
    FmDmic01.Icinvvatrt.AsFloat := FmDmic01.Query1.Fieldbyname('Vatrt').AsFloat;
    FmDmic01.IcinvVATTYPE.AsString := FmDmic01.Query1.Fieldbyname('VATTYPE').AsString;
    FmDmic01.IcinvEXDISAMT.AsFloat := FmDmic01.Query1.Fieldbyname('EXDISAMT').AsFloat;
    FmDmic01.IcinvDISBATH.Asstring := FmDmic01.Query1.Fieldbyname('DISBATH').Asstring;
    FmDmic01.IcinvOfficcod.Asstring := FmDmic01.Query1.Fieldbyname('Officcod').Asstring;
    FmDmic01.IcinvMEMO1.Asstring := FmDmic01.Query1.Fieldbyname('MEMO1').Asstring;
    FmDmic01.IcinvTRANTO.Asstring := FmDmic01.Query1.Fieldbyname('TRANTO').Asstring;

    Edit4.text := FmDmic01.Query1.Fieldbyname('SALLEV').Asstring;
    if FmDmic01.IcinvFLAG.Asstring = '1' then
      Edit2.Text := 'ขายสินค้าเงินสดให้ลูกค้า #' + FmDmic01.IcinvCUSCOD.Asstring
    else if FmDmic01.IcinvFLAG.Asstring = '2' then
      Edit2.Text := 'ขายสินค้าเงินเชื่อให้ลูกค้า #' + FmDmic01.IcinvCUSCOD.Asstring
    else if FmDmic01.IcinvFLAG.Asstring = '3' then
      Edit2.Text := 'จ่ายสินค้าเข้าศูนย์เพื่อตัดสต็อก';
    //
    with FmDmic01.QPkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO=:XPKNO ORDER BY PKDATE DESC');
      PARAMS[0].AsString := FmDmic01.IcinvPKNO.Asstring;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบเลขที่ใบเบิก');
    end;
    //
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select cuscod,snam,name1,name2,disct,sallev,Credit from CUSTMAST  ' +
        'WHERE cuscod =:Xcuscod');
      PARAMS[0].AsString := FmDmic01.IcinvCUSCOD.Asstring;
      Open;
    end;
    edit1.text := FmDmic01.Query1.Fieldbyname('snam').Asstring + ' ' +
      FmDmic01.Query1.Fieldbyname('name1').Asstring + '   ' +
      FmDmic01.Query1.Fieldbyname('name2').Asstring;
    Xterm := FmDmic01.Query1.Fieldbyname('Credit').Asinteger;

    if DBRadioGroup2.ItemIndex = 1 then
    begin
      FmDmic01.IcinvCredtm.AsFloat := FmDmic01.Query1.Fieldbyname('Credit').AsFloat;
      FmDmic01.IcinvInvdue.AsDatetime := FmDmic01.IcinvInvdate.AsDatetime +
        FmDmic01.Query1.Fieldbyname('Credit').AsInteger;
    end
    else
    begin
      FmDmic01.IcinvCredtm.AsFloat := 0;
      FmDmic01.IcinvInvdue.AsDatetime := FmDmic01.IcinvInvdate.AsDatetime;
    end;

    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_trans where PKNO =:XPKNO');
      Params[0].Asstring := FmDmic01.IcinvPKNO.Asstring;
      Open;
    end;
    if not (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
    begin
      // Clear Buffer Ictran
      with FmDmic01.Ictran do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO =:XINVNO');
        PARAMS[0].ASSTRING := '';
        OPEN;
      end;

      //
      FmDmic01.Query1.First;
      while not FmDmic01.Query1.Eof do
      begin
        XQty := (FmDmic01.Query1.Fieldbyname('QtyOut').AsFloat - FmDmic01.Query1.Fieldbyname('QtyBOD').AsFloat);
        if XQty > 0 then
        begin
          FmDmic01.IcTran.Insert;
          FmDmic01.IctranNETFL.Asstring := FmDmic01.Query1.Fieldbyname('Netfl').Asstring;
          FmDmic01.IctranYear1.Asstring := FmDmic01.Query1.Fieldbyname('Year1').Asstring;
          FmDmic01.IctranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
          FmDmic01.IctranPARTDESC.Asstring := FmDmic01.Query1.Fieldbyname('PARTDESC').Asstring;
          FmDmic01.IctranFREE.Asstring := FmDmic01.Query1.Fieldbyname('FREE').Asstring;
          FmDmic01.IctranGROUP1.Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
          FmDmic01.IctranDiscamt.Asfloat := FmDmic01.Query1.Fieldbyname('Discamt').Asfloat;
          FmDmic01.IctranQTYORD.AsFloat := FmDmic01.Query1.Fieldbyname('QtyOrd').AsFloat;
          FmDmic01.IctranQTYOUT.AsFloat := XQty;
          FmDmic01.IctranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('UPRICE').AsFloat;
          FmDmic01.IcTranREDU1.AsFloat := FmDmic01.Query1.Fieldbyname('REDU1').AsFloat;

          Pric1 := FRound(FmDmic01.IctranUPRICE.Asfloat * (FmDmic01.IctranREDU1.Asfloat / 100), 2);
          SmPric1 := FmDmic01.IctranUPRICE.Asfloat - Pric1;

          FmDmic01.IctranNetPRC.AsFloat := SmPric1;
          FmDmic01.IctranAVGCost.AsFloat := FmDmic01.Query1.Fieldbyname('AVGCOST').AsFloat;
       //   FmDmic01.IctranTotPRC.AsFloat := XQty* FmDmic01.IctranNetPRC.AsFloat;
          FmDmic01.IctranTotPRC.AsFloat := FmDmic01.Query1.Fieldbyname('TOTPRC').AsFloat;
          FmDmic01.IctranREFPO.Asstring := FmDmic01.Query1.Fieldbyname('REFPO').Asstring;

          FmDmic01.IcTran.Post;
        end;
        FmDmic01.Query1.Next;
      end;
    end;
    //
    if FmDmic01.IcinvDISBATH.Asstring = 'Y' then
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
   //
    if FmDmic01.IcinvNETPRC.AsFloat = 0 then
    begin
      MessageBeep(0);
      //Messagedlg('ยอดเบิกเป็น 0 เป็นการออกเอกสารหมวดไม่คิดมูลค่าสินค้า',Mtinformation,[mbok],0);
      sfmain.AdvSmoothMessageDialog3.HTMLText.Text := 'ยอดเบิกเป็นศูนย์(0)<br/>ระบบจะออกเอกสารในหมวดไม่คิดมูลค่าสินค้า(ฟรี/แถม)';
      sfmain.AdvSmoothMessageDialog3.ExecuteDialog;
      FmDmic01.Runfre := True;
      DBRadioGroup2.Itemindex := 0;
      DBRadioGroup2Click(Sender);
      DBRadioGroup2.Enabled := False;
    end
    else
    begin
      FmDmic01.Runfre := False;
      DBRadioGroup2Click(Sender);
    end;
  end;
end;

procedure TFmSTIn03.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.IcinvOfficcod.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn03.DBEdit3PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CODE,NAME FROM OFFICER WHERE CODE =:0');
    PARAMS[0].ASSTRING := DBEdit3.TEXT;
    OPEN;
    EDIT3.TEXT := FmDmic01.Query2.FieldByname('NAME').Asstring;
  end;
end;

procedure TFmSTIn03.DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Key_a := FmDmic01.Icinv.Fieldbyname('Cuscod').Asstring;
  if fSrcDlg.ShowModalDeposit = Mrok then
    FmDmic01.Icinv.Fieldbyname('Depostno').Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn03.TaxDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Icinv.fieldbyname('INVDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Icinv.fieldbyname('INVDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Icinv.fieldbyname('INVDATE').AsDateTime := FmDmic01.Icinv.fieldbyname('INVDATE').AsDateTime;
  end;
end;

procedure TFmSTIn03.DBDateEdit1Exit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Icinv.fieldbyname('INVDUE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Icinv.fieldbyname('INVDUE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Icinv.fieldbyname('INVDUE').AsDateTime := FmDmic01.Icinv.fieldbyname('INVDUE').AsDateTime;
  end;
end;

procedure TFmSTIn03.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
 { IF Uppercase(NAME)='DATETHAI' Then
  Begin
     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
  End;  }
end;

procedure TFmSTIn03.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PINVNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn03.actEditPrnExecute(Sender: TObject);
begin
  if cxRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnIcInvno.fr3', '2')
  else if cxRadioGroup1.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnIcInvnof.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnIcInvnoPost.fr3', '2');
end;

procedure TFmSTIn03.DBMemo1Click(Sender: TObject);
begin
  FmSTIn03.KeyPreview := False;
end;

procedure TFmSTIn03.DBMemo1Exit(Sender: TObject);
begin
  FmSTIn03.KeyPreview := True;
end;

procedure TFmSTIn03.AplistClick(Sender: TObject);
var
  XQty, Pric1, SmPric1: Double;
begin
  if DBEdit7.Text = '' then
    sfmain.RaiseException('ไม่พบรหัสลูกค้า..!');

  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CUSCOD,PARTNO,NETFL,YEAR1,PARTNO,PARTDESC,FREE,GROUP1, ' +
      'SUM(DISCAMT) DISCAMT,SUM(QTYORD) QTYORD,AVG(UPRICE) UPRICE,SUM(REDU1) REDU1, ' +
      'SUM(AVGCOST) AVGCOST,SUM(TOTPRC) TOTPRC,'''' REFPO ' +
      'FROM PK_TRANS WHERE PKNO BETWEEN :PK1 AND :PK2 AND CUSCOD =:CUSCOD ' +
      'GROUP BY CUSCOD,PARTNO,NETFL,YEAR1,PARTNO,PARTDESC,FREE,GROUP1');
    if Edit_Ref.Text = '' then
      Params[0].AsString := '0'
    else
      Params[0].AsString := Edit_Ref.Text;
    if Edit_Ref1.Text = '' then
      Params[1].AsString := 'ไไไ'
    else
      Params[1].AsString := Edit_Ref1.Text;
    Params[2].AsString := DBEdit7.Text;
    Open;
  end;
  if not (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
  begin
    // Clear Buffer Ictran
    if not FmDmic01.Ictran.IsEmpty then
      FmDmic01.Ictran.Delete;

    with FmDmic01.Ictran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO =:XINVNO');
      PARAMS[0].ASSTRING := '';
      OPEN;
    end;

    FmDmic01.Query1.First;
    while not FmDmic01.Query1.Eof do
    begin
      FmDmic01.IcTran.Insert;
      FmDmic01.IctranNETFL.Asstring := FmDmic01.Query1.Fieldbyname('Netfl').Asstring;
      FmDmic01.IctranYear1.Asstring := FmDmic01.Query1.Fieldbyname('Year1').Asstring;
      FmDmic01.IctranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
      FmDmic01.IctranPARTDESC.Asstring := FmDmic01.Query1.Fieldbyname('PARTDESC').Asstring;
      FmDmic01.IctranFREE.Asstring := FmDmic01.Query1.Fieldbyname('FREE').Asstring;
      FmDmic01.IctranGROUP1.Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
      FmDmic01.IctranDiscamt.Asfloat := FmDmic01.Query1.Fieldbyname('Discamt').Asfloat;
      FmDmic01.IctranQTYORD.AsFloat := FmDmic01.Query1.Fieldbyname('QtyOrd').AsFloat;
      FmDmic01.IctranQTYOUT.AsFloat := FmDmic01.Query1.Fieldbyname('QtyOrd').AsFloat;
      FmDmic01.IctranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('UPRICE').AsFloat;
      FmDmic01.IcTranREDU1.AsFloat := FmDmic01.Query1.Fieldbyname('REDU1').AsFloat;

      Pric1 := FRound(FmDmic01.IctranUPRICE.Asfloat * (FmDmic01.IctranREDU1.Asfloat / 100), 2);
      SmPric1 := FmDmic01.IctranUPRICE.Asfloat - Pric1;

      FmDmic01.IctranNetPRC.AsFloat := SmPric1;
      FmDmic01.IctranAVGCost.AsFloat := FmDmic01.Query1.Fieldbyname('AVGCOST').AsFloat;
     //   FmDmic01.IctranTotPRC.AsFloat := XQty* FmDmic01.IctranNetPRC.AsFloat;
      FmDmic01.IctranTotPRC.AsFloat := FmDmic01.Query1.Fieldbyname('TOTPRC').AsFloat;
      FmDmic01.IctranREFPO.Asstring := FmDmic01.Query1.Fieldbyname('REFPO').Asstring;
      FmDmic01.IcTran.Post;

      FmDmic01.Query1.Next;
    end;
  end;
end;

procedure TFmSTIn03.DBEdit7PropertiesChange(Sender: TObject);
begin
  with Query3 do
  begin
    close;
    sql.clear;
    sql.add('select cuscod,snam,name1,name2 from CUSTMAST ' +
      'WHERE cuscod =:0 ORDER BY cuscod ');
    Params[0].AsString := FmDmic01.IcinvCUSCOD.Asstring;
    OPEN;
    Edit1.Text := Query3.FieldByname('SNAM').Asstring + ' ' +
      Query3.FieldByname('NAME1').Asstring + '   ' +
      Query3.FieldByname('NAME2').Asstring;
  end;
end;

procedure TFmSTIn03.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalCusmast = Mrok then
    FmDmic01.IcinvCUSCOD.Asstring := fFindData.Keyno;
end;

end.

