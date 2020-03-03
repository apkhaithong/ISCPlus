unit unTaxClaim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, DB, ExtCtrls, ComCtrls,
  Dbkbd, ImgList, ToolWin, RzButton, RzDBGrid, RzSpnEdt, RzDbkbd, RzPanel, Math,
  RzLabel, RzDBLbl, RzBorder, AdvGlowButton, AdvToolBar, AdvPanel,
  cxLookAndFeelPainters, Menus, cxMemo, cxDBEdit, cxButtons, cxGroupBox,
  cxRadioGroup, cxDropDownEdit, cxCalendar, cxButtonEdit, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxGraphics, cxLookAndFeels, dxDateRanges,
  System.Actions, FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  Vcl.ActnList, dxStatusBar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrTaxClaim = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TcxDBButtonEdit;
    DBEdit3: TcxDBButtonEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    edRepFm: TcxButtonEdit;
    edRepTo: TcxButtonEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    BillDate: TcxDBDateEdit;
    DBDateEdit1: TcxDBDateEdit;
    dbSelType: TcxDBRadioGroup;
    AddBtn2: TAdvGlowButton;
    DBMemo1: TcxDBMemo;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    DBkbd1: TRzDBkbd;
    QOthinvoi1: TFDQuery;
    QOthinvoi1Updatestatus: TStringField;
    QOthinvoi1LOCAT: TStringField;
    QOthinvoi1TAXNO: TStringField;
    QOthinvoi1TAXDATE: TDateField;
    QOthinvoi1CREDTM: TFloatField;
    QOthinvoi1DUEDATE: TDateField;
    QOthinvoi1CUSCOD: TStringField;
    QOthinvoi1DESCP: TStringField;
    QOthinvoi1VATRT: TFloatField;
    QOthinvoi1AMOUNT: TFloatField;
    QOthinvoi1REDU: TFloatField;
    QOthinvoi1BALANCE: TFloatField;
    QOthinvoi1VAT: TFloatField;
    QOthinvoi1TOTTAX: TFloatField;
    QOthinvoi1SMPAY: TFloatField;
    QOthinvoi1SMCHQ: TFloatField;
    QOthinvoi1LPAID: TDateField;
    QOthinvoi1KANG: TFloatField;
    QOthinvoi1BILLNO: TStringField;
    QOthinvoi1BILLDATE: TDateField;
    QOthinvoi1FLAG: TStringField;
    QOthinvoi1PAYTYPE: TStringField;
    QOthinvoi1USERID: TStringField;
    QOthinvoi1INPDATE: TDateTimeField;
    QOthinvoi1CANCELID: TStringField;
    QOthinvoi1CANDAT: TDateTimeField;
    QOthinvoi1REMARK: TMemoField;
    QOthinvoi1CLAIMNO: TStringField;
    QOthinvoi1TAXTYPE: TStringField;
    QOthtran1: TFDQuery;
    SoOthtran1: TDataSource;
    Query2: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranREPNO: TcxGridDBColumn;
    cxGridTranREPDT: TcxGridDBColumn;
    cxGridTranSTRNO: TcxGridDBColumn;
    cxGridTranPTNET: TcxGridDBColumn;
    cxGridTranSVNET: TcxGridDBColumn;
    cxGridTranOTHNET: TcxGridDBColumn;
    cxGridTranTOTNET: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    QOthtran1REPNO: TStringField;
    cxGroupBox1: TcxGroupBox;
    Label9: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    DBEdit8: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    Label8: TLabel;
    ActionList1: TActionList;
    actEditPrn: TAction;
    QOthtran1LOCAT: TStringField;
    QOthtran1TAXNO: TStringField;
    QOthtran1TAXDATE: TDateField;
    QOthtran1REPDT: TDateField;
    QOthtran1JOBNO: TStringField;
    QOthtran1STRNO: TStringField;
    QOthtran1PTTOT: TFloatField;
    QOthtran1PTVAT: TFloatField;
    QOthtran1PTNET: TFloatField;
    QOthtran1SVTOT: TFloatField;
    QOthtran1SVVAT: TFloatField;
    QOthtran1SVNET: TFloatField;
    QOthtran1OUTTOT: TFloatField;
    QOthtran1OUTVAT: TFloatField;
    QOthtran1OUTNET: TFloatField;
    QOthtran1COLTOT: TFloatField;
    QOthtran1COLVAT: TFloatField;
    QOthtran1COLNET: TFloatField;
    QOthtran1OTHTOT: TFloatField;
    QOthtran1OTHVAT: TFloatField;
    QOthtran1OTHNET: TFloatField;
    QOthtran1VATRT: TFloatField;
    QOthtran1TOTPRC: TFloatField;
    QOthtran1TOTVAT: TFloatField;
    QOthtran1TOTNET: TFloatField;
    QOthtran1USERID: TStringField;
    QOthtran1INPDATE: TDateTimeField;
    QOthtran1CANCELID: TStringField;
    QOthtran1CANDAT: TDateTimeField;
    QOthtran1APPROVEPT: TFloatField;
    QOthtran1APPROVESV: TFloatField;
    QOthtran1APPROVEOTH: TFloatField;
    QOthtran1APPROVETOT: TFloatField;
    QOthinvoi1DEPOSTNO: TStringField;
    QOthinvoi1DEPOSAMT: TFloatField;
    QOthinvoi1DEPOSVAT: TFloatField;
    QOthinvoi1DEPOSTAX: TStringField;
    QOthinvoi1POSTGL: TStringField;
    QOthinvoi1APPROVE: TStringField;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure AddBtn2Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure QOthinvoi1CalcFields(DataSet: TDataSet);
    procedure QOthinvoi1NewRecord(DataSet: TDataSet);
    procedure QOthtran1NewRecord(DataSet: TDataSet);
    procedure QOthtran1AfterPost(DataSet: TDataSet);
    procedure QOthinvoi1BeforePost(DataSet: TDataSet);
    procedure QOthinvoi1AfterPost(DataSet: TDataSet);
    procedure DBEdit3Change(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure QOthinvoi1BeforeDelete(DataSet: TDataSet);
    procedure QOthinvoi1TAXDATEValidate(Sender: TField);
    procedure QOthinvoi1CREDTMValidate(Sender: TField);
    procedure edRepFmChange(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edRepFmPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edRepToPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cxGridTranREPNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QOthtran1REPNOValidate(Sender: TField);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure QOthtran1PTNETValidate(Sender: TField);
    procedure QOthtran1SVNETValidate(Sender: TField);
    procedure QOthtran1OTHNETValidate(Sender: TField);
    procedure QOthinvoi1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frTaxClaim: TfrTaxClaim;
  XCusno: string;

implementation

uses
  DmSv, HlpJob, fUNCTN01, uSrcDlg1, Srchdlg1, USoftFirm, unDlgTaxClaim, Dmsec;

{$R *.DFM}

procedure TfrTaxClaim.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSV', 'HDSV11_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TfrTaxClaim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QOthinvoi1.Close;
  QOthtran1.Close;
  Action := Cafree;
  frTaxClaim := nil;
end;

procedure TfrTaxClaim.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  DBKbd1.AllowEditing := qOthinvoi1.State = DsEdit;
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  Enqbtn.Enabled := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  AddBtn2.Enabled := SavBtn.Visible;

  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');

  cxGridTran.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SavBtn.Visible;

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

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
      end;

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxButtonEdit) and (TcxButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxButtonEdit(Components[N]).Properties.ReadOnly := True;
        TcxButtonEdit(Components[N]).Style.Color := clBtnFace;
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
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxButtonEdit) and (TcxButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxButtonEdit(Components[N]).Properties.ReadOnly := False;
        TcxButtonEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  if not (DM_SEC.Condpay.Active) then
    DM_SEC.Condpay.Open;
  if not (DM_SEC.QDBConfig.Active) then
    DM_SEC.QDBConfig.Open;
  DBEdit2.Properties.Readonly := DM_SEC.QDBConfig.Fieldbyname('R_TAX').asstring = 'Y';
end;

procedure TfrTaxClaim.DBEdit3Exit(Sender: TObject);
begin
  with Dm_Sv.QJoborder do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO= :XNO AND LOCAT = :XLOCAT ORDER BY JOBNO ');
    Params[0].Asstring := QOthinvoi1.FieldByName('JOBNO').Asstring;
    Params[1].Asstring := QOthinvoi1.FieldByName('LOCAT').Asstring;
    Open;
  end;
  if Dm_Sv.QJoborder.Bof and Dm_Sv.QJoborder.eof then
    SFMain.RaiseException('ไม่มีหมายเลขJOBนี้ในแฟ้มข้อมูล');
  QOthinvoi1.FieldByName('JOBDATE').AsDateTime := Dm_Sv.QJoborder.FieldByName('RECVDATE').AsDateTime;
  QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.QJoborder.FieldByName('CUSCOD').Asstring;
  QOthinvoi1.FieldByName('STRNO').Asstring := Dm_Sv.QJoborder.FieldByName('STRNO').Asstring;
end;

procedure TfrTaxClaim.CancBtnClick(Sender: TObject);
begin
  if QOthinvoi1.Active then
    QOthinvoi1.Cancel;
  with QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCLAIM WHERE TAXNO = :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
  with QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCLAIMTR WHERE TAXNO = :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TfrTaxClaim.AddBtn2Click(Sender: TObject);
var
  SqlText: string;
begin
  if edRepFm.Text = '' then
    edRepFm.Text := '0';

  if edRepTo.Text = '' then
    edRepTo.Text := 'โโโ';

  if dbSelType.ItemIndex = 0 then
    SqlText := 'SELECT * FROM CLAIMINVOI WHERE (CLAIMTYP=''C'') AND (FLAGCLAIM=''N'') AND (TAXDT IS NULL) '
  else
    SqlText := 'SELECT * FROM CLAIMINVOI WHERE (CLAIMTYP=''S'') AND (FLAGCLAIM=''N'') AND (TAXDT IS NULL) ';

  with Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add(SqlText + 'AND REPNO BETWEEN :0 AND :1 ');
    Params[0].Asstring := edRepFm.Text;
    Params[1].Asstring := edRepTo.Text;
    Open;
  end;

   {เคลียร์ Buffer}
  if Datasource1.State in [DsInsert] then
  begin
    if not QOthtran1.IsEmpty then
      QOthtran1.Delete;
    with QOthtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARCLAIMTR WHERE REPNO = '''' ');
      Open;
    end;
  end;

  if not (Query2.Bof and Query2.eof) then
  begin
    QOthtran1.DisableControls;
    Query2.First;
    while not (Query2.Eof) do
    begin
      if QOthtran1.State = Dsbrowse then
        QOthtran1.Edit;
      QOthtran1.Append;
      QOthtran1.FieldByName('REPNO').Asstring := query2.FieldByName('REPNO').Asstring;
      QOthtran1.FieldByName('STRNO').Asstring := query2.FieldByName('STRNO').Asstring;
      QOthtran1.FieldByName('JOBNO').Asstring := query2.FieldByName('JOBNO').Asstring;
      QOthtran1.FieldByName('REPDT').AsDateTime := query2.FieldByName('REPDT').AsDateTime;
      QOthtran1.FieldByName('PTTOT').AsFloat := query2.FieldByName('PTTOT').AsFloat;
      QOthtran1.FieldByName('SVTOT').AsFloat := query2.FieldByName('SVTOT').AsFloat;
      QOthtran1.FieldByName('OTHTOT').AsFloat := query2.FieldByName('OTHTOT').AsFloat;
      QOthtran1.FieldByName('PTNET').AsFloat := query2.FieldByName('PTNET').AsFloat;
      QOthtran1.FieldByName('SVNET').AsFloat := query2.FieldByName('SVNET').AsFloat;
      QOthtran1.FieldByName('OTHNET').AsFloat := query2.FieldByName('OTHNET').AsFloat;
      QOthtran1.FieldByName('PTVAT').AsFloat := query2.FieldByName('PTVAT').AsFloat;
      QOthtran1.FieldByName('SVVAT').AsFloat := query2.FieldByName('SVVAT').AsFloat;
      QOthtran1.FieldByName('OTHVAT').AsFloat := query2.FieldByName('OTHVAT').AsFloat;
      QOthtran1.FieldByName('TOTPRC').AsFloat := query2.FieldByName('TOTPRC').AsFloat;
      QOthtran1.FieldByName('TOTVAT').AsFloat := query2.FieldByName('TOTVAT').AsFloat;
      QOthtran1.FieldByName('TOTNET').AsFloat := query2.FieldByName('TOTNET').AsFloat;
      QOthtran1.post;
      query2.Next;
    end;
    QOthtran1.EnableControls;
  end;
end;

procedure TfrTaxClaim.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrTaxClaim.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EnqBtnClick(Sender);
    Vk_F2:
      SavBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TfrTaxClaim.DBEdit1Change(Sender: TObject);
begin
  with Query1 do
  begin
    sql.clear;
    close;
    Sql.add('SELECT * FROM INVLOCAT WHERE LOCATCD=:Xloc');
    params[0].Asstring := DBEdit1.text;
    open;
  end;
  Edit2.text := Query1.Fieldbyname('LOCATNM').Asstring;
end;

procedure TfrTaxClaim.DBMemo1Click(Sender: TObject);
begin
  frTaxClaim.KeyPreview := False;
end;

procedure TfrTaxClaim.DBMemo1Exit(Sender: TObject);
begin
  frTaxClaim.KeyPreview := True;
end;

procedure TfrTaxClaim.InsBtnClick(Sender: TObject);
begin
  with QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCLAIM WHERE TAXNO ='''' ');
    Open;
    Insert;
  end;
  with QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCLAIMTR WHERE TAXNO ='''' ');
    Open;
  end;
  Label15.Visible := qOthinvoi1.FieldByName('FLAG').AsString = 'C';
  DBEdit3.SetFocus;
end;

procedure TfrTaxClaim.QOthinvoi1CalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QOthinvoi1.CachedUpdates then
    QOthinvoi1UpdateStatus.Value := UpdateStatusStr[QOthinvoi1.UpdateStatus];
end;

procedure TfrTaxClaim.QOthinvoi1NewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(QOthinvoi1);
  qOthinvoi1LOCAT.AsString := SFMain.Xlocat;
  qOthinvoi1USERID.AsString := SFMain.Xuser_ID;
  QOthinvoi1INPDATE.Asdatetime := Now;
  QOthinvoi1TAXDATE.Asdatetime := Date;
  QOthinvoi1VATRT.AsFloat := DM_SEC.Condpay.fieldbyname('VATRT').AsFloat;
  qOthinvoi1PAYTYPE.AsString := 'C'; // ประเภทลูกค้า
  qOthinvoi1TAXTYPE.AsString := 'C'; // ประเภทการเคลม
  qOthinvoi1DESCP.AsString := 'ใบกำกับเคลมสินค้า';
  qOthinvoi1APPROVE.AsString := 'Y';
  QOthinvoi1DUEDATE.AsDateTime := Date;
end;

procedure TfrTaxClaim.QOthtran1NewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(QOthtran1);
  QOthtran1.FieldByName('LOCAT').AsString := qOthinvoi1LOCAT.AsString;
  QOthtran1.FieldByName('TAXNO').AsString := qOthinvoi1TAXNO.AsString;
  QOthtran1.FieldByName('TAXDATE').AsDateTime := qOthinvoi1TAXDATE.AsDateTime;
  QOthtran1.FieldByName('USERID').Asstring := SFmain.XUser_ID;
  QOthtran1.FieldByName('INPDATE').Asdatetime := Now;
end;

procedure TfrTaxClaim.QOthtran1AfterPost(DataSet: TDataSet);
var
  Xtotprc, XtotVat, XNetprc: Double;
  TT: string;
  bk: Tbookmark;
begin
  Xtotprc := 0;
  XtotVat := 0;
  XNetprc := 0;
  QOthtran1.DisableControls;
  bk := QOthtran1.GetBookmark;
  QOthtran1.First;
  while not (QOthtran1.eof) do
  begin
    XNetprc := XNetprc + QOthtran1.FieldByName('TOTNET').AsFloat;
    //XTotprc := XTotprc+ QOthtran1.FieldByName('TOTPRC').AsFloat;
    //XTotvat := XTotvat+ QOthtran1.FieldByName('TOTVAT').AsFloat;
    QOthtran1.Next;
  end;
  QOthinvoi1.FieldByName('AMOUNT').AsFloat := XNetprc;
  QOthinvoi1.FieldByName('BALANCE').AsFloat := XNetprc;
  QOthinvoi1.FieldByName('VAT').AsFloat := ((XNetprc * QOthinvoi1VATRT.AsFloat) / 100);
  QOthinvoi1.FieldByName('TOTTAX').AsFloat := XNetprc + ((XNetprc * QOthinvoi1VATRT.AsFloat) / 100);
  QOthinvoi1.FieldByName('KANG').AsFloat := QOthinvoi1.FieldByName('TOTTAX').AsFloat;
  QOthtran1.EnableControls;
  QOthtran1.GotoBookMark(bk);
  QOthtran1.FreeBookmark(bk);
end;

procedure TfrTaxClaim.QOthinvoi1BeforePost(DataSet: TDataSet);
begin
  QOthtran1.First;
  if (Datasource1.State = DsInsert) then
  begin
    if Duplicate then
    begin
      QOthinvoi1TAXDATEValidate(QOthinvoi1TAXDATE);
      QOthtran1.DisableControls;
      QOthtran1.AfterPost := Nil;
      QOthtran1.First;
      while not (QOthtran1.eof) do
      begin
        QOthtran1.Edit;
        QOthtran1.FieldByName('LOCAT').AsString := DBEdit1.Text;
        QOthtran1.FieldByName('TAXNO').AsString := DBEdit2.Text;
        QOthtran1.FieldByName('TAXDATE').AsDateTime := BillDate.Date;
        QOthtran1.FieldByName('INPDATE').Asdatetime := now;
        QOthtran1.Next;
      end;
      QOthtran1.AfterPost := QOthtran1AfterPost;
      QOthtran1.EnableControls;
    end;
  end;
end;

procedure TfrTaxClaim.QOthinvoi1AfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := QOthinvoi1.FieldByName('TAXNO').Asstring;
  Dm_SEC.HI_DBMS.StartTransaction;
  try
    if QOthinvoi1.Active then
      if (QOthinvoi1.ApplyUpdates = 0) then
        QOthinvoi1.CommitUpdates
      else
        raise Exception.Create(QOthinvoi1.RowError.Message);
    if QOthtran1.Active then
      if (QOthtran1.ApplyUpdates = 0) then
        QOthtran1.CommitUpdates
      else
        raise Exception.Create(QOthtran1.RowError.Message);
    if Dm_SEC.LastNo.Active then
      if (Dm_SEC.LastNo.ApplyUpdates = 0) then
        Dm_SEC.LastNo.CommitUpdates
      else
        raise Exception.Create(Dm_SEC.LastNo.RowError.Message);
    Dm_SEC.HI_DBMS.Commit;
  except
    Dm_SEC.HI_DBMS.RollBack;
    QOthinvoi1.Edit;
    raise;
  end;
  //
  with QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCLAIM WHERE TAXNO = :XNO ');
    Params[0].Asstring := S;
    Open;
  end;
  with QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCLAIMTR WHERE TAXNO = :XNO ');
    Params[0].Asstring := S;
    Open;
  end;
end;

procedure TfrTaxClaim.DBEdit3Change(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT CUSCOD,SNAM,NAME1,NAME2,CREDIT FROM CUSTMAST WHERE CUSCOD= :XCUSCOD');
    Params[0].Asstring := DBEdit3.Text;
    Open;
    Edit1.Text := Query1.Fieldbyname('SNam').Asstring + ' ' + Query1.Fieldbyname('Name1').Asstring + ' ' + Query1.Fieldbyname('Name2').Asstring;
  end;
end;

procedure TfrTaxClaim.DelBtnClick(Sender: TObject);
begin
  if QOthinvoi1.Fieldbyname('Cancelid').asstring <> '' then
    SFMain.RaiseException('ถูกยกเลิกแล้ว');
  if (QOthinvoi1.Fieldbyname('SMPAY').AsFloat + QOthinvoi1.Fieldbyname('SMCHQ').AsFloat) > 0 then
    SFMain.RaiseException('รับชำระเงินแล้วให้ยกเลิกรับเงินก่อน..!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        if QOthinvoi1.State = Dsbrowse then
          QOthinvoi1.Edit;
        QOthinvoi1.Fieldbyname('Cancelid').Asstring := SFMain.XUser_id;
        QOthinvoi1.Fieldbyname('CanDat').Asdatetime := Now;
        QOthinvoi1.Fieldbyname('Flag').Asstring := 'C';
        QOthinvoi1.Post;
        with Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('UPDATE ARCLAIMTR SET CANCELID=:EDIT1 ,CANDAT=:EDIT2 WHERE TAXNO=:EDIT3');
          Params[0].Asstring := SFMain.Xuser_id;
          Params[1].Asdatetime := Now;
          Params[2].Asstring := QOthinvoi1.Fieldbyname('TAXNO').Asstring;
          Execsql;
        end;
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSV11_2', 'CANCEL', DBEdit2.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        CancBtnClick(Sender);
      end;
  end;
end;

procedure TfrTaxClaim.QOthinvoi1BeforeDelete(DataSet: TDataSet);
begin
  QOthtran1.First;
  while not (QOthtran1.Eof and QOthtran1.Bof) do
    QOthtran1.Delete;
end;

procedure TfrTaxClaim.QOthinvoi1TAXDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if QOthinvoi1UpdateStatus.Value = 'Inserted' then
  begin
    HF := 'H_TAX';
    LF := 'L_TAX';
    if QOthinvoi1TAXDATE.Asdatetime > Date then
      SFMain.RaiseException('วันที่เอกสารมากกว่าวันปัจจุบัน...!');

    if not (DM_SEC.QDBConfig.Active) then
      DM_SEC.QDBConfig.Open;

    if DM_SEC.QDBConfig.Fieldbyname('R_TAX').asstring = 'Y' then
    begin
      LV := QOthinvoi1.Fieldbyname('LOCAT').asstring;
      DV := QOthinvoi1.Fieldbyname('TAXDATE').asDatetime;
      SQLTXT := 'SELECT MAX(TAXNO) AS MAXNO FROM ARCLAIM WHERE LOCAT=:0 AND ' +
        'SUBSTR(TAXNO,2,2)=:1 AND SUBSTR(TAXNO,5,2)=:2 AND SUBSTR(TAXNO,7,2)=:3';
      if Duplicate then
        QOthinvoi1TAXNO.Asstring := DM_SEC.MaxRunNo(HF, LF, LV, SQLTXT, DV)
      else
        QOthinvoi1TAXNO.Asstring := DM_SEC.RunNo(HF, LF, LV, DV);
    end;
  end;
end;

procedure TfrTaxClaim.QOthinvoi1UpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  if (AException is EFDDBEngineException) then
    if (AException as EFDDBEngineException).Errors[0].Errorcode = eKeyViol then
    begin
      Duplicate := True;
    end;
end;

procedure TfrTaxClaim.QOthinvoi1CREDTMValidate(Sender: TField);
begin
  QOthinvoi1DUEDATE.AsDateTime := QOthinvoi1TAXDATE.AsDateTime + QOthinvoi1CREDTM.AsFloat;
end;

procedure TfrTaxClaim.edRepFmChange(Sender: TObject);
begin
  AddBtn2.Enabled := edRepFm.Text <> '';
end;

procedure TfrTaxClaim.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if SFMain.XChgLoc = 'Y' then
    fSrcDlg1.XSrLocat := ''
  else
    fSrcDlg1.XSrLocat := SFmain.Xlocat;
  if fSrcDlg1.ShowModalClaimtax = Mrok then
  begin
    with QOthinvoi1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARCLAIM WHERE TAXNO = :XNO ');
      Params[0].Asstring := fSrcDlg1.Keyno;
      Open;
      if QOthinvoi1.Bof and QOthinvoi1.eof then
        SFMain.RaiseException('ไม่มีข้อมูล ');
      Label15.Visible := qOthinvoi1.FieldByName('FLAG').AsString = 'C';
    end;
    with QOthtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARCLAIMTR WHERE TAXNO = :XNO ');
      Params[0].Asstring := QOthinvoi1.FieldByName('TAXNO').Asstring;
      Open;
    end;
  end;
end;

procedure TfrTaxClaim.SavBtnClick(Sender: TObject);
begin
  DBMemo1.SetFocus;
  if DBEdit2.Text = '' then
    SFMain.RaiseException('ยังไม่ระบุรหัสผู้รายงาน...!');
  if DBEdit6.Text = '' then
    SFMain.RaiseException('ยังไม่ระบุเลขอนุมัติเคลม...!');

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV11_2', 'INSERT', DBEdit2.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV11_2', 'EDIT', DBEdit2.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  QOthinvoi1.Post;
end;

procedure TfrTaxClaim.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_TaxClaim.fr3', '1');
end;

procedure TfrTaxClaim.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if not (QOthinvoi1.State in Dseditmodes) then
    Exit;

  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
  begin
    QOthinvoi1.FieldByName('LOCAT').Asstring := fSrcDlg1.KeyNo;
    Edit2.text := fSrcDlg1.qrFindDat.Fieldbyname('LOCATNM').Asstring;
  end;
end;

procedure TfrTaxClaim.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if not (QOthinvoi1.State in Dseditmodes) then
    Exit;
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalAR = Mrok then
  begin
    QOthinvoi1.Fieldbyname('Cuscod').Asstring := fSrcDlg1.KeyNo;
  end;
end;

procedure TfrTaxClaim.edRepFmPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  fSrcDlg1.XClaim := ' AND C.FLAGCLAIM=''N'' ';
  if fSrcDlg1.ShowModalClaimiv = Mrok then
    edRepFm.Text := fSrcDlg1.Keyno;
end;

procedure TfrTaxClaim.edRepToPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  fSrcDlg1.XClaim := ' AND C.FLAGCLAIM=''N'' ';
  if fSrcDlg1.ShowModalClaimiv = Mrok then
    edRepTo.Text := fSrcDlg1.Keyno;
end;

procedure TfrTaxClaim.FormShow(Sender: TObject);
begin
  with QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCLAIM WHERE TAXNO ='''' ');
    Open;
  end;
  with QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARCLAIMTR WHERE TAXNO ='''' ');
    Open;
  end;
end;

procedure TfrTaxClaim.cxGridTranREPNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if QOthinvoi1TAXTYPE.AsString = 'C' then
    fSrcDlg1.XClaim := ' AND C.FLAGCLAIM=''N'' AND C.CLAIMTYP=''C'' '
  else
    fSrcDlg1.XClaim := ' AND C.FLAGCLAIM=''N'' AND C.CLAIMTYP=''S'' ';
  if fSrcDlg1.ShowModalClaimiv = Mrok then
  begin
    QOthtran1.FieldByName('REPNO').AsString := fSrcDlg1.Keyno;
    QOthtran1.FieldByName('STRNO').Asstring := fSrcDlg1.qrFindDat.Fieldbyname('STRNO').Asstring;
    QOthtran1.FieldByName('JOBNO').Asstring := fSrcDlg1.qrFindDat.FieldByName('JOBNO').Asstring;
    QOthtran1.FieldByName('REPDT').AsDateTime := fSrcDlg1.qrFindDat.FieldByName('REPDT').AsDateTime;
    QOthtran1.FieldByName('PTTOT').AsFloat := fSrcDlg1.qrFindDat.FieldByName('PTTOT').AsFloat;
    QOthtran1.FieldByName('SVTOT').AsFloat := fSrcDlg1.qrFindDat.FieldByName('SVTOT').AsFloat;
    QOthtran1.FieldByName('OTHTOT').AsFloat := fSrcDlg1.qrFindDat.FieldByName('OTHTOT').AsFloat;
    QOthtran1.FieldByName('PTNET').AsFloat := fSrcDlg1.qrFindDat.FieldByName('PTNET').AsFloat;
    QOthtran1.FieldByName('SVNET').AsFloat := fSrcDlg1.qrFindDat.FieldByName('SVNET').AsFloat;
    QOthtran1.FieldByName('OTHNET').AsFloat := fSrcDlg1.qrFindDat.FieldByName('OTHNET').AsFloat;
    QOthtran1.FieldByName('PTVAT').AsFloat := fSrcDlg1.qrFindDat.FieldByName('PTVAT').AsFloat;
    QOthtran1.FieldByName('SVVAT').AsFloat := fSrcDlg1.qrFindDat.FieldByName('SVVAT').AsFloat;
    QOthtran1.FieldByName('OTHVAT').AsFloat := fSrcDlg1.qrFindDat.FieldByName('OTHVAT').AsFloat;
    QOthtran1.FieldByName('TOTPRC').AsFloat := fSrcDlg1.qrFindDat.FieldByName('TOTPRC').AsFloat;
    QOthtran1.FieldByName('TOTVAT').AsFloat := fSrcDlg1.qrFindDat.FieldByName('TOTVAT').AsFloat;
    QOthtran1.FieldByName('TOTNET').AsFloat := fSrcDlg1.qrFindDat.FieldByName('TOTNET').AsFloat;
  end;
end;

procedure TfrTaxClaim.QOthtran1REPNOValidate(Sender: TField);
//Var DisTot:Double;
begin
  {with Query2 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM CLAIMINVOI WHERE REPNO= :XCODE AND FLAGCLAIM=''N'' '+
           'AND TAXDT IS NULL');
   Params[0].Asstring := QOthtran1.FieldByName('REPNO').Asstring;
   Open;
  end;
  if Not(Query2.Bof and Query2.eof) then
  Begin
     QOthtran1.Edit;
     QOthtran1.FieldByName('REPNO').Asstring  := query2.FieldByName('REPNO').Asstring;
     QOthtran1.FieldByName('STRNO').Asstring  := query2.FieldByName('STRNO').Asstring;
     QOthtran1.FieldByName('JOBNO').Asstring  := query2.FieldByName('JOBNO').Asstring;
     QOthtran1.FieldByName('REPDT').AsDateTime:= query2.FieldByName('REPDT').AsDateTime;
     QOthtran1.FieldByName('PTTOT').AsFloat   := query2.FieldByName('PTTOT').AsFloat;
     QOthtran1.FieldByName('SVTOT').AsFloat   := query2.FieldByName('SVTOT').AsFloat;
     QOthtran1.FieldByName('OTHTOT').AsFloat  := query2.FieldByName('OTHTOT').AsFloat;
     QOthtran1.FieldByName('PTNET').AsFloat   := query2.FieldByName('PTNET').AsFloat;
     QOthtran1.FieldByName('SVNET').AsFloat   := query2.FieldByName('SVNET').AsFloat;
     QOthtran1.FieldByName('OTHNET').AsFloat  := query2.FieldByName('OTHNET').AsFloat;
     QOthtran1.FieldByName('PTVAT').AsFloat   := query2.FieldByName('PTVAT').AsFloat;
     QOthtran1.FieldByName('SVVAT').AsFloat   := query2.FieldByName('SVVAT').AsFloat;
     QOthtran1.FieldByName('OTHVAT').AsFloat  := query2.FieldByName('OTHVAT').AsFloat;
     QOthtran1.FieldByName('TOTPRC').AsFloat  := query2.FieldByName('TOTPRC').AsFloat;
     QOthtran1.FieldByName('TOTVAT').AsFloat  := query2.FieldByName('TOTVAT').AsFloat;
     QOthtran1.FieldByName('TOTNET').AsFloat  := query2.FieldByName('TOTNET').AsFloat;
  end;}
end;

procedure TfrTaxClaim.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_TaxClaim.fr3', '2');
end;

procedure TfrTaxClaim.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
end;

procedure TfrTaxClaim.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PTAXNO' then
    Value := DBEdit2.Text;
end;

procedure TfrTaxClaim.QOthtran1PTNETValidate(Sender: TField);
begin
  QOthtran1TOTNET.AsFloat := FRound(QOthtran1PTNET.AsFloat + QOthtran1SVNET.AsFloat + QOthtran1OTHNET.AsFloat, 2);
end;

procedure TfrTaxClaim.QOthtran1SVNETValidate(Sender: TField);
begin
  QOthtran1TOTNET.AsFloat := FRound(QOthtran1PTNET.AsFloat + QOthtran1SVNET.AsFloat + QOthtran1OTHNET.AsFloat, 2);
end;

procedure TfrTaxClaim.QOthtran1OTHNETValidate(Sender: TField);
begin
  QOthtran1TOTNET.AsFloat := FRound(QOthtran1PTNET.AsFloat + QOthtran1SVNET.AsFloat + QOthtran1OTHNET.AsFloat, 2);
end;

end.

