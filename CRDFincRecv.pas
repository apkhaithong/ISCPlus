unit CRDFincRecv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Mask, DBCtrls, StdCtrls, Grids, DBGrids, DB, ExtCtrls, Dbkbd,
  ComCtrls, ImgList, ToolWin, ActnList, n2wMoney, RzDBGrid, RzLabel, RzDbkbd,
  RzSpnEdt, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, AdvGlowButton, AdvToolBar, cxContainer, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxDBEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, AdvOfficeStatusBar, cxDropDownEdit, cxCalendar, cxPC, cxMemo, AdvPanel,
  cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, dxDateRanges,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  BusinessSkinForm, dxStatusBar, frxBarcode, frxFDComponents, frxTableObject,
  frxChBox, frxGradient, frxRich, frxExportXLSX, frxExportImage, frxCross,
  frxExportCSV, frxClass, frxExportBaseDialog, frxExportPDF, frxBDEComponents,
  frxDCtrl, frxChart;

type
  THandle = Integer;

  TCRDFincForm1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    DBEdit11: TcxDBButtonEdit;
    FldEdit1: TcxDBTextEdit;
    DBChqDt: TcxDBDateEdit;
    DBBank: TcxDBButtonEdit;
    Edit4: TcxTextEdit;
    FldEdit2: TcxDBTextEdit;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    Edit3: TcxTextEdit;
    DBLocat: TcxDBTextEdit;
    DBCust: TcxDBTextEdit;
    dbPayBy: TcxDBButtonEdit;
    FldEdit4: TcxDBTextEdit;
    DBTbmDt: TcxDBDateEdit;
    DBEdit1: TDBEdit;
    DBMemo1: TcxDBMemo;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PAYFOR: TcxGridDBColumn;
    cxGrid1DBTableView1CONTNO: TcxGridDBColumn;
    cxGrid1DBTableView1PAYAMT: TcxGridDBColumn;
    cxGrid1DBTableView1PAYINT: TcxGridDBColumn;
    cxGrid1DBTableView1VATRTPAY: TcxGridDBColumn;
    cxGrid1DBTableView1DISCT: TcxGridDBColumn;
    cxGrid1DBTableView1NETPAY: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    qrPayfor: TFDQuery;
    DataSource4: TDataSource;
    DBkbd1: TRzDBkbd;
    DataSource5: TDataSource;
    Query1: TFDQuery;
    Query2: TFDQuery;
    DataSource6: TDataSource;
    ActionList1: TActionList;
    atEdit: TAction;
    Label10: TLabel;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrintBtn: TAdvGlowButton;
    Query3: TFDQuery;
    Query4: TFDQuery;
    frxChartObject1: TfrxChartObject;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxCrossObject1: TfrxCrossObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxReportTableObject1: TfrxReportTableObject;
    frxFDComponents1: TfrxFDComponents;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure DBLocatChange(Sender: TObject);
    procedure DBCustChange(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure CloseBtnfClick(Sender: TObject);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit11PropertiesChange(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure dbPayByChange(Sender: TObject);
    procedure dbPayByPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dbPayByPropertiesChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBBankPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBBankPropertiesChange(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure atEditExecute(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    ActiveT: TFDQuery;
    ActiveS: TDataSource;
    { Public declarations }
  end;

var
  CRDFincForm1: TCRDFincForm1;
  TmpS: TDataSet;
  NETKANG: DOUBLE;

implementation

uses
  Dmsec, DmFin01, Functn01, Srchset1, USoftFirm, Srchfin, uRCrdResv, Dm1,
  frCrdBillMenu, Srchsal1, unfrPreview, Dmtax;
{$R *.DFM}

procedure TCRDFincForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dmfin.CRdChqmas.Close;
  Dmfin.CRdChqtran.Close;
  Dm01.QLastno.Close;
  Action := caFree;
  CRDFincForm1 := nil;
end;

procedure TCRDFincForm1.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (FldEdit4.Text <> '');
  Enqbtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  PrintBtn.Visible := (DataSource1.State = Dsbrowse) and (FldEdit4.Text <> '');
  cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Enabled;
  cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Enabled;
  cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Enabled;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 0) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := True;
        TcxDBmemo(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := True;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
      end;
      if (Components[N] is TcxDBmemo) and (TcxDBmemo(Components[N]).Tag = 0) then
      begin
        TcxDBmemo(Components[N]).Properties.Readonly := False;
        TcxDBmemo(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := False;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;

  if (DataSource1.Dataset.State = DsEdit) then
  begin

    cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := False;
    cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := False;
    cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := False;
  end;
  if not Dm01.QDBConfig.Active then
    Dm01.QDBConfig.Open;
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBTbmDt.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);
  FldEdit4.Properties.Readonly := Dm01.QDbConfig.FieldByName('R_RESVDIS').Asstring = 'Y';
  if FldEdit4.Properties.Readonly then
    FldEdit4.Style.Color := $00EAF3F4
  else
    FldEdit4.Style.Color := clWhite;
end;

procedure TCRDFincForm1.EnqBtnClick(Sender: TObject);
begin
  Application.CreateForm(TSearchSale, SearchSale);
//  SearchSale.XFlag := 'D';
  if SearchSale.ShowModalDisNtChqmas = MrOk then
  begin
    with Dmfin.CRdChqmas do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CRDCHQMAS WHERE TMBILL=:TMBILL AND LOCATRECV=:XlocatRecv ');
      Params[0].Asstring := SearchSale.Keyno;
      Params[1].AsString := SearchSale.HQuery1.fieldbyname('LOCATRECV').AsString;
      Open;
    end;
    with Dmfin.CRdChqtran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CRDCHQTRAN WHERE TMBILL=:TMBILL AND LOCATRECV=:XlocatRecv ');
      Params[0].Asstring := SearchSale.Keyno;
      Params[1].AsString := SearchSale.HQuery1.fieldbyname('LOCATRECV').AsString;
      Open;
    end;
  end;
end;

procedure TCRDFincForm1.DelBtnClick(Sender: TObject);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if Dmfin.CRdChqmasFlag.Value = 'C' then
    SFMain.RaiseException('ใบลดหนี้ใบนี้ถูกยกเลิกแล้ว');

  if Dmfin.CRdChqmasPOSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN01_2', 'CANCEL', FldEdit4.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        DmFin.CancelCRDTmbill;

        with Query1 do
        begin
          close;
          sql.Clear;
          sql.Add('SELECT * FROM CRDCHQTRAN WHERE TMBILL = :EDIT1 AND PAYFOR = ''008'' ');
          params[0].AsString := Dmfin.CRdChqtranTMBILL.AsString;
          open;
        end;

        if not AsSigned(fCrdResv) then
        begin
          fCrdResv := TfCrdResv.Create(Application);
          fCrdResv.Show;
          with Dm_Tax.qCredResv do
          begin
            close;
            sql.Clear;
            sql.Add('SELECT * FROM TAXTRAN WHERE FLAG <> ''C'' AND TAXTYP = ''9'' AND CONTNO =:EDIT1 ');
            params[0].AsString := Query1.fieldbyname('CONTNO').AsString;
            open;
          end;
          self.Close;
        end;
      end;
  end;
end;

procedure TCRDFincForm1.CancBtnClick(Sender: TObject);
begin
  Dmfin.CRdChqmas.Cancel;
  DBEdit1.Text := '';
end;

procedure TCRDFincForm1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDFIN', 'HDFIN01_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TCRDFincForm1.FormShow(Sender: TObject);
begin
  PrintBtn.Visible := SFMain.XReprint = 'Y';
  with Dmfin.CRdChqmas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CRDCHQMAS WHERE TMBILL = '''' AND LOCATRECV = '''' ');
    Open;
  end;
  with Dmfin.CRdChqtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CRDCHQTRAN WHERE TMBILL = '''' AND LOCATRECV = '''' ');
    Open;
  end;
end;

procedure TCRDFincForm1.InsBtnClick(Sender: TObject);
begin
  with Dmfin.CRdChqmas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CRDCHQMAS WHERE TMBILL = '''' AND LOCATRECV = '''' ');
    Open;
    INSERT;
  end;

  with Dmfin.CRdChqtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CRDCHQTRAN WHERE TMBILL = '''' AND LOCATRECV = '''' ');
    Open;
  end;
end;

procedure TCRDFincForm1.PrintBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_CrdTmpbill.fr3', '1'); {1 = Preview Report}
end;

procedure TCRDFincForm1.DBLocatChange(Sender: TObject);
begin
  Edit2.Text := '';
  with DmFin.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD=:0 ');
    Params[0].Asstring := DBLocat.Text;
    Open;
    Edit2.Text := Fieldbyname('LOCATNM').Asstring;
  end;
end;

procedure TCRDFincForm1.DBCustChange(Sender: TObject);
begin
  Edit1.Text := '';
  with DmFin.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select Cuscod,Snam,Name1,Name2 From Custmast Where Cuscod=:0 ');
    Params[0].AsString := DBCust.Text;
    Open;
    Edit1.Text := Fieldbyname('SNAM').Asstring + Fieldbyname('NAME1').Asstring + '  ' +
      Fieldbyname('NAME2').asstring;
  end;
end;

procedure TCRDFincForm1.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F2) and (SavBtn.Visible) then
    SavBtnClick(Sender);
  if (Key = VK_F5) and (InsBtn.Visible) then
    InsBtnClick(Sender);
  if (Key = VK_F6) and (PrintBtn.Visible) then
    PrintBtnClick(Sender);
  if (Key = VK_F7) and (EnqBtn.Visible) then
    EnqBtnClick(Sender);
  if (Key = VK_F8) and (delbtn.Visible) then
    DelBtnClick(Sender);
end;

procedure TCRDFincForm1.DBMemo1Click(Sender: TObject);
begin
  CRDFincForm1.KeyPreview := False;
end;

procedure TCRDFincForm1.DBMemo1Exit(Sender: TObject);
begin
  CRDFincForm1.KeyPreview := True;
end;

procedure TCRDFincForm1.CloseBtnfClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TCRDFincForm1.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSale, SearchSale);
  SearchSale.XFlag := 'H';
  if SearchSale.ShowModalDisNtArresv = MrOk then
    DmFin.CRdChqmasBILLNO.AsString := SearchSale.HQuery1.fieldbyname('BILLNO').AsString;
end;

procedure TCRDFincForm1.DBEdit11PropertiesChange(Sender: TObject);
begin
  if Datasource1.State = DsInsert then
  begin
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT C.TMBILL,C.BILLNO,C.BILLDT,C.LOCATRECV,T.LOCATPAY,C.CUSCOD,M.SNAM,M.NAME1,M.NAME2,C.PAYTYP,T.PAYFOR,T.CONTNO,T.PAYAMT,T.TSALE, ' +
        'T.PAYINT,T.VATRTPAY,T.DISCT,T.NETPAY,C.MEMO1,C.FLAG,C.REFDOCNO ' +
        'FROM CHQMAS C,CHQTRAN T,CUSTMAST M WHERE C.TMBILL=T.TMBILL AND C.CUSCOD=M.CUSCOD ' +
        'AND T.PAYFOR=''008'' AND C.FLAG NOT IN (''C'',''D'') AND C.REFDOCNO='''' AND C.BILLNO =:0');
      params[0].AsString := DBEdit11.Text;
      open;
    end;
    if not (Query1.Eof and Query1.Bof) then
    begin
      Dmfin.CRdChqmasLOCATRECV.AsString := Query1.fieldbyname('LOCATRECV').AsString;
      Dmfin.CRdChqmasCUSCOD.AsString := Query1.fieldbyname('CUSCOD').AsString;
      Dmfin.CRdChqmasPAYTYP.AsString := Query1.fieldbyname('PAYTYP').AsString;
      Dmfin.CRdChqmasMEMO1.AsString := Query1.fieldbyname('MEMO1').AsString;
    end;
    Query1.First;
    while not Query1.Eof do
    begin
      with Dmfin.CRdChqtran do
      begin
        Append;
        fieldbyname('PAYFOR').AsString := Query1.fieldbyname('PAYFOR').AsString;
        fieldbyname('CONTNO').AsString := Query1.fieldbyname('CONTNO').AsString;
        fieldbyname('LOCATPAY').AsString := Query1.fieldbyname('LOCATPAY').AsString;
        fieldbyname('PAYAMT').AsFloat := Query1.fieldbyname('PAYAMT').AsFloat;
        fieldbyname('PAYINT').AsFloat := Query1.fieldbyname('PAYINT').AsFloat;
        fieldbyname('VATRTPAY').AsFloat := Query1.fieldbyname('VATRTPAY').AsFloat;
        fieldbyname('DISCT').AsFloat := Query1.fieldbyname('DISCT').AsFloat;
        fieldbyname('NETPAY').AsFloat := Query1.fieldbyname('NETPAY').AsFloat;
        Dmfin.CRdChqtran.Post;
      end;
      Query1.Next;
    end;
  end;
end;

procedure TCRDFincForm1.SavBtnClick(Sender: TObject);
begin
  if (DmFin.CRdChqtran.eof and DmFin.CRdChqtran.bof) then
    SFMain.RaiseException('กรุณาป้อนข้อมูลให้ครบถ้วน');
  DmFin.CRdChqtran.First;
  DmFin.CRdChqmas.Post;
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN01_2', 'INSERT', FldEdit4.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN01_2', 'EDIT', FldEdit4.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM TAXTRAN WHERE TAXTYP = ''R'' AND CONTNO =:EDIT1 ');
    params[0].AsString := Dmfin.CRdChqtranCONTNO.AsString;
    open;
  end;

  if not AsSigned(fCrdResv) then
  begin
    fCrdResv := TfCrdResv.Create(Application);
    fCrdResv.Show;
    fCrdResv.InsBtnClick(Sender);
    Dm_Tax.qCredResv.FieldByName('REFNO').AsString := Query1.fieldbyname('TAXNO').AsString;
    fCrdResv.DBEdit2.SetFocus;
    self.Close;
  end;
end;

procedure TCRDFincForm1.dbPayByChange(Sender: TObject);
begin
  Edit3.Text := '';
  with DmFin.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PAYTYP WHERE PAYCODE=:EDIT1');
    Params[0].Asstring := DBPayBy.Text;
    Open;
    Edit3.Text := Fieldbyname('Paydesc').Asstring;
  end;
end;

procedure TCRDFincForm1.dbPayByPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetPaytyp = Mrok then
    DmFin.CRdChqmas.FieldByname('PAYTYP').Asstring := Searchset.Keyno;
end;

procedure TCRDFincForm1.dbPayByPropertiesChange(Sender: TObject);
begin
  with DmFin.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PAYTYP WHERE PAYCODE=:EDIT1');
    Params[0].Asstring := DBPayBy.Text;
    Open;
    Edit3.Text := Fieldbyname('Paydesc').Asstring;
  end;
  if DBPayBy.Text <> '02' then
  begin
    Label6.Caption := 'เลขที่โอน';
    Label7.Caption := 'วันที่โอน';
  end
  else
  begin
    Label6.Caption := 'เลขที่เช็ค';
    Label7.Caption := 'วันที่เช็ค';
  end;
end;

procedure TCRDFincForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if (DmFin.CRdChqmasFlag.Value = 'C') then
    Label14.caption := '*** ยกเลิก ***'
  else
    Label14.Caption := '';
end;

procedure TCRDFincForm1.DBBankPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if DmFin.CRdChqmas.FieldByName('PAYTYP').AsString = '02' then
  begin
    Application.Createform(TSearchset, Searchset);
    if Searchset.ShowModalSetBank = Mrok then
      DmFin.CRdChqmas.FieldByname('CHQBK').Asstring := Searchset.Keyno;
  end
  else
  begin
    Application.CreateForm(TSearchset, Searchset);
    if Searchset.ShowModalBankbook = MrOk then
    begin
      DmFin.CRdChqmas.FieldByName('CHQBK').AsString := Searchset.Keyno;
      DmFin.CRdChqmas.FieldByName('CHQBR').AsString := Searchset.HQuery1.fieldbyname('BANKLOCNAM').AsString;
    end;
  end;
end;

procedure TCRDFincForm1.DBBankPropertiesChange(Sender: TObject);
begin
  if DmFin.CRdChqmas.FieldByName('PAYTYP').AsString = '02' then
  begin
    with DmFin.Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM SETBANK WHERE BANKCOD=:0');
      params[0].AsString := DBBank.Text;
      open;
      Edit4.Text := DmFin.Query1.fieldbyname('BANKNAM').AsString;
    end;
  end
  else
  begin
    with DmFin.Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM BANKBOOK WHERE BANKBOOKCOD =:0');
      params[0].AsString := DBBank.Text;
      open;
      Edit4.Text := DmFin.Query1.fieldbyname('BOOKNAM').AsString;
    end;
  end;
end;

procedure TCRDFincForm1.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
//  if UPPERCASE(Name) = 'DATETOTHAI' then
//    Val := SFMain.DateToThai(FRPARSER.Calc(p1), FRPARSER.Calc(p2));
end;

procedure TCRDFincForm1.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'VTMBILL' then
    Value := FldEdit4.Text;
  if Uppercase(VarName) = 'VLOCRECV' then
    Value := DBLocat.Text;
end;

procedure TCRDFincForm1.atEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_CrdTmpbill.fr3', '2'); {2 = Design Report}
end;

procedure TCRDFincForm1.CloseBtnClick(Sender: TObject);
begin
  close;
end;

end.

