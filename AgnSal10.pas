unit AgnSal10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, DBCtrls, Buttons, Grids,
  DBGrids, ExtCtrls, Mask, DB, Dbkbd, RzDBGrid, RzDbkbd, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit,
  cxTextEdit, AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons, AdvGlowButton,
  AdvToolBar, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar, cxContainer,
  cxMaskEdit, AdvOfficeStatusBar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxPC, AdvPanel, n2wMoney, ActnList, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarBuiltInMenu, cxNavigator, dxDateRanges,
  System.Actions, dxStatusBar, cxGroupBox, cxRadioGroup, frxBDEComponents,
  frxExportPDF, frxExportCSV, frxCross, frxExportImage, frxClass,
  frxExportBaseDialog, frxExportXLSX, frxRich, frxGradient, frxChBox,
  frxTableObject, frxFDComponents, frxChart, frxDCtrl, frxBarcode;

type
  TShowDllProc = procedure(XSchemadll, Taxnodll: string);

  THandle = Integer;

  TFAgnSal1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    DBLocat: TcxDBButtonEdit;
    FldEdit12: TcxDBTextEdit;
    DBCust: TcxDBButtonEdit;
    dbSales: TcxDBButtonEdit;
    wwDBdtSdate: TcxDBDateEdit;
    FldEdit2: TcxDBTextEdit;
    FldEdit3: TcxDBTextEdit;
    FldEdit10: TcxDBTextEdit;
    wwDBDTDDate: TcxDBDateEdit;
    FldEdit4: TcxDBTextEdit;
    FldEdit5: TcxDBTextEdit;
    FldEdit1: TcxDBTextEdit;
    DBMemo1: TcxDBMemo;
    JEdit1: TcxTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1STRNO: TcxGridDBColumn;
    cxGridDBTableView1KEYIN: TcxGridDBColumn;
    cxGridDBTableView1NPRICE: TcxGridDBColumn;
    cxGridDBTableView1VATRT: TcxGridDBColumn;
    cxGridDBTableView1VATPRC: TcxGridDBColumn;
    cxGridDBTableView1TOTPRC: TcxGridDBColumn;
    cxGridDBTableView1CRDTXNO: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    atEdit: TAction;
    n2wBill: Tn2wMoney;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    BtnTaxno: TAdvGlowButton;
    BitBtn5: TAdvGlowButton;
    DBRadioGroup1: TcxDBRadioGroup;
    dxStatusBar1: TdxStatusBar;
    Edit3: TcxTextEdit;
    Label7: TLabel;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxChartObject1: TfrxChartObject;
    frxFDComponents1: TfrxFDComponents;
    frxReportTableObject1: TfrxReportTableObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxPDFExport1: TfrxPDFExport;
    frxBDEComponents1: TfrxBDEComponents;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBCustChange(Sender: TObject);
    procedure cxGridDBTableView1STRNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView1STRNOPropertiesEditValueChanged(Sender: TObject);
    procedure BtnTaxnoClick(Sender: TObject);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dbSalesPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure atEditExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLocatPropertiesChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    S, SvTax: string;
  end;

var
  FAgnSal1: TFAgnSal1;

implementation

uses
  Dmsec, Dm1, Dmsal, Srchset1, Srchsal1, SrchStk, Functn01, USoftFirm, CshSalAgn,
  unfrPreview; //AgnSal11,Agndlg1,

{$R *.dfm}

procedure TFAgnSal1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSL', 'HDSL01_4');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFAgnSal1.BitBtn5Click(Sender: TObject);
begin
  DM_Sec.Do_Prev_Edit_FastReport(frxReport1,'fr_Arinvoi.fr3','1'); {1 = Preview Report}
end;

procedure TFAgnSal1.InsBtnClick(Sender: TObject);
begin
  if not Dm_sal.QDbConfig.Active then
    Dm_sal.QDbConfig.Open;
  Dm_sal.XRunCont := Dm_sal.QDbConfig.FieldByName('R_AGENNO').Asstring;
  //  Dm_sal.XRunTax  := Dm_sal.QDbConfig.FieldByName('R_TXAGEN').Asstring;
  Dm01.Do_With_Query(actInsert, Dm_sal.QAgnSale, 'SELECT * FROM AR_INVOI WHERE CONTNO=:EDIT1', ['']);
  Dm01.Do_With_Query(actOpen, Dm_Sal.QAgnSalT, 'SELECT * FROM AR_TRANS WHERE CONTNO =:XCONT And LOCAT =:XLocat', ['', '']);
  JEdit1.Clear;
  DBCust.Setfocus;
end;

procedure TFAgnSal1.DelBtnClick(Sender: TObject);
begin
  if FldEdit10.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        if Dm_sal.QAgnSalePOSTGL.AsString = 'Y' then
          SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

        if (Dm_sal.QAgnSaleSmpay.Asfloat + Dm_sal.QAgnSaleSmchq.Asfloat) > 0 then
          SFMain.RaiseException('มีการรับชำระเงินแล้ว');

        Dm_sal.QAgnSale.Edit;
        Dm_sal.QAgnSale.Fieldbyname('Flcancl').asstring := 'C';
        Dm_sal.QAgnSale.Fieldbyname('Delid').asstring := SFMain.Xuser_Id;
        Dm_sal.QAgnSale.Fieldbyname('deldt').asdatetime := Now;
        Dm_sal.QAgnSale.Post;
        Dm_sal.QAgnSale.Delete;

        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_4', 'DELETE', FldEdit10.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
      end;
  end;
  JEdit1.Text := '';
end;

procedure TFAgnSal1.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalArAgen = Mrok then
  begin
    Dm01.Do_With_Query(actOpen, Dm_Sal.QAgnSale, 'SELECT * FROM AR_INVOI WHERE CONTNO=:CONT', [SearchSale.Keyno]);
    Dm01.Do_With_Query(actOpen, Dm_Sal.QAgnSalT, 'SELECT * FROM AR_TRANS WHERE CONTNO=:CONT AND LOCAT=:XLOCAT', [Dm_Sal.QAgnSale.FieldByName('Contno').Asstring,
      Dm_Sal.QAgnSale.FieldByName('Locat').Asstring]);
  end;
end;

procedure TFAgnSal1.SavBtnClick(Sender: TObject);
begin
  S := Dm_sal.QAgnSale.FieldByName('Contno').Asstring;
  { If (Dm_sal.QAgnSale.FieldByName('Taxno').Asstring = '') then
      Svtax := ''
   else
      Svtax := Dm_sal.QAgnSale.FieldByName('Taxno').Asstring;   }
  if Dm_sal.QAgnSale.state in [Dsinsert, Dsedit] then
    if (Dm_Sal.QAgnSaleSmpay.value + Dm_Sal.QAgnSaleSmchq.value) = 0 then
    begin
      Dm_Sal.QAgnSale.Post;
    end
    else
    begin
      Dm_Sal.QAgnSale.BeforePost := Nil;
      Dm_Sal.QAgnSale.Post;
      Dm_Sal.QAgnSale.BeforePost := Dm_Sal.QAgnSale.BeforePost;
    end;

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_4', 'INSERT', FldEdit10.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_4', 'EDIT', FldEdit10.Text);

  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

 {  If (Svtax = '') Then
   Begin
      Application.CreateForm(TFAgnSal2,FAgnSal2);
      FAgnSal2.XContno := S;
      If Duplicate2 Then
         FAgnSal2.Showmodal;
   end; }
   //
  with Dm_sal.QAgnSale do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM AR_INVOI WHERE CONTNO=:EDIT1');
    Params[0].Asstring := S;
    open;
  end;

  with Dm_sal.QAgnSalT do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM AR_TRANS ' +
      'WHERE CONTNO = :XCONT');
    Params[0].asstring := Dm_sal.QAgnSale.FieldByName('ContNo').Asstring;
    OPEN;
  end;
end;

procedure TFAgnSal1.CancBtnClick(Sender: TObject);
begin
  Dm_sal.QAgnSale.cancel;
end;

procedure TFAgnSal1.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFAgnSal1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FAgnSal1 := nil
end;

procedure TFAgnSal1.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (FldEdit10.Text <> '');
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  DBRadioGroup1.Properties.ReadOnly := not SavBtn.Visible;
  BitBtn5.Visible := (DataSource1.Dataset.State = DsBrowse) and (FldEdit10.Text <> '');
  cxGridDBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGridDBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
      end;
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := True;
        TcxDBmemo(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TrzDBGrid) and (TrzDBGrid(Components[n]).Tag = 0) then
      begin
        TrzDBGrid(Components[n]).Readonly := True;
        TrzDBGrid(Components[n]).Color := clBtnFace;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
    end;
  end
  else if DataSource1.Dataset.State = Dsinsert then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
      end;
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := False;
        TcxDBmemo(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TrzDBGrid) and (TrzDBGrid(Components[n]).Tag = 0) then
      begin
        TrzDBGrid(Components[n]).Readonly := False;
        TrzDBGrid(Components[n]).Color := clWhite;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clWhite;
      end;
    end;
    FldEdit10.Properties.Readonly := Dm_sal.QDbConfig.FieldByName('R_AGENNO').Asstring = 'Y';
  end
  else if (DataSource1.Dataset.State = DsEdit) then
  begin
    DBMemo1.Properties.Readonly := False;
    DBMemo1.Style.Color := clWhite;
    FldEdit3.Properties.Readonly := False;
    FldEdit3.Style.Color := clWhite;
    DBCust.Properties.Readonly := False;
    DBCust.Style.Color := clWhite;
    DBSales.Properties.Readonly := False;
    DBSales.Style.Color := clWhite;
    cxGridDBTableView1.NavigatorButtons.Insert.Enabled := False;
    cxGridDBTableView1.NavigatorButtons.Delete.Enabled := False;
    DBRadioGroup1.Enabled := False;
  end;
    //--Lock Branch---
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  wwDBdtSdate.Enabled := (SFMain.XChgdate = 'Y') and (DataSource1.Dataset.State = DsInsert);
  cxGridDBTableView1.OptionsData.Editing := (Dm_sal.QAgnSale.Fieldbyname('SMPAY').AsFloat + Dm_sal.QAgnSale.Fieldbyname('SMPAY').AsFloat = 0);
  FldEdit10.Properties.Readonly := Dm_sal.QDbConfig.FieldByName('R_AGENNO').Asstring = 'Y';
  if FldEdit10.Properties.Readonly then
    FldEdit10.Style.Color := clBtnFace
  else
    FldEdit10.Style.Color := clWhite;
  if FldEdit12.Properties.Readonly then
    FldEdit12.Style.Color := clBtnFace
  else
    FldEdit12.Style.Color := clWhite;
end;

procedure TFAgnSal1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F7 then
    EnqBtnClick(Sender);
  if Key = VK_F2 then
    SavBtnClick(Sender);
  if (Key = VK_F8) and (Delbtn.Visible = true) then
    DelBtnClick(Sender);
  if Key = VK_F5 then
    InsBtnClick(Sender);
end;

procedure TFAgnSal1.DBCustChange(Sender: TObject);
begin
  with Dm_sal.QCustRes do
  begin
    close;
    sql.clear;
    sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO ' +
      'FROM CUSTMAST WHERE CUSCOD = :VAR');
    Params[0].asstring := DBCust.Text;
    OPEN;
    if not (bof and eof) then
    begin
      JEdit1.Text := FieldByName('Snam').Asstring +
        FieldByName('name1').Asstring + '  ' +
        FieldByName('name2').Asstring;
    end;
  end;
end;

procedure TFAgnSal1.cxGridDBTableView1STRNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  SearchSale.Xflg := 'D';
  SearchSale.XLocat := Dm_sal.QAgnSale.Fieldbyname('Locat').Asstring;
  if SearchSale.ShowModalStrno = Mrok then
  begin
    with Dm_Sal.Query1 do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM INVTRAN WHERE STRNO = :XSTRNO ' +
        'AND CRLOCAT = :LOCAT ');
      params[0].asstring := SearchSale.HQuery1.fieldbyname('Strno').Asstring;
      params[1].asstring := SearchSale.HQuery1.fieldbyname('CRLOCAT').Asstring;
      open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรถหมายเลขตัวถังนี้ตามสาขาที่เปิดขาย');
    end;

    if DM_Sal.QAgnSaleUpdateStatus.Value = 'Inserted' then
      DM_Sal.QAgnSalT.Edit;
    DM_Sal.QAgnSalT.FieldByname('Tsale').Asstring := Dm_sal.QAgnSale.Fieldbyname('Tsale').Asstring;
    DM_Sal.QAgnSalT.FieldByname('Locat').Asstring := Dm_sal.QAgnSale.Fieldbyname('Locat').Asstring;
    DM_Sal.QAgnSalT.FieldByname('Contno').Asstring := Dm_sal.QAgnSale.Fieldbyname('Contno').Asstring;
    DM_Sal.QAgnSalT.FieldByname('Strno').Asstring := SearchSale.HQuery1.fieldbyname('Strno').Asstring;
    DM_Sal.QAgnSalT.FieldByname('Keyin').AsFloat := Dm_Sal.Query1.FieldByname('Stdprc').Asfloat;
  end;
end;

procedure TFAgnSal1.cxGridDBTableView1STRNOPropertiesEditValueChanged(Sender: TObject);
var
  E: Double;
begin
  with Dm_Sal.Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM INVTRAN WHERE STRNO = :XSTRNO ' +
      'AND CRLOCAT = :LOCAT ');
    params[0].asstring := Dm_Sal.QAgnSalT.fieldbyname('Strno').Asstring;
    params[1].asstring := Dm_Sal.QAgnSale.fieldbyname('LOCAT').Asstring;
    OPEN;
    if Bof and Eof then
      SFMain.RaiseException('ไม่พบรถหมายเลขตัวถังนี้ตามสาขาที่เปิดขาย');
    Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat := Dm_Sal.Query1.FieldByname('Stdprc').Asfloat;
  end;

  if Dm_Sal.QAgnSaleInclvat.Asstring = 'Y' then
  begin
    E := FRound(Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat * Dm_Sal.QAgnSaleVatrt.Asfloat / (100 + Dm_Sal.QAgnSaleVatrt.Asfloat), 2);
    Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat := E;
    Dm_Sal.QAgnSalT.Fieldbyname('Nprice').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat - E;
    Dm_Sal.QAgnSalT.Fieldbyname('TotPrc').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat + Dm_Sal.QAgnSalT.Fieldbyname('NPrice').Asfloat;
  end
  else
  begin
    E := FRound(Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat * (Dm_Sal.QAgnSaleVatrt.Asfloat) / 100, 2);
    Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat := E;
    Dm_Sal.QAgnSalT.Fieldbyname('Nprice').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('Keyin').Asfloat;
    Dm_Sal.QAgnSalT.Fieldbyname('TotPrc').Asfloat := Dm_Sal.QAgnSalT.Fieldbyname('NPrice').Asfloat + Dm_Sal.QAgnSalT.Fieldbyname('VatPrc').Asfloat;
  end;
  if Dm_Sal.QAgnSaleUpdateStatus.Value = 'Inserted' then
  begin
    if Dm_Sal.Query1.Fieldbyname('FLAG').Asstring = 'C' then
      SFMain.RaiseException('รถหมายเลขถังนี้ถูกขายไปแล้ว บันทึกไม่ได้ '#13#13 +
        'กด ยกเลิก  แล้วบันทึกคันใหม่');
  end;
end;

procedure TFAgnSal1.BtnTaxnoClick(Sender: TObject);
begin
  if Dm_sal.QAgnSale.FieldByName('Contno').Asstring = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่สัญญาก่อนทำรายการ..!');

  S := Dm_sal.QAgnSale.FieldByName('Contno').Asstring;
  Application.CreateForm(TFCshSalAgn, FCshSalAgn);
  FCshSalAgn.XContno := S;
  FCshSalAgn.Showmodal;
end;

procedure TFAgnSal1.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetLocat = Mrok then
    Dm_sal.QAgnSale.Fieldbyname('LOCAT').Asstring := SearchSet.Keyno;
end;

procedure TFAgnSal1.DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalCuscod = Mrok then
  begin
    Dm_sal.QAgnSale.Fieldbyname('CUSCOD').Asstring := SearchSale.Keyno;
    with Dm_sal.Query1 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST ' +
        'WHERE CUSCOD=:Var0');
      Params[0].Asstring := Dm_sal.QAgnSale.Fieldbyname('CUSCOD').Asstring;
      open;
      if not (eof and BOF) then
      begin
        JEdit1.Text := FieldByName('SNAM').Asstring +
          FieldByName('NAME1').Asstring + '  ' +
          FieldByName('NAME2').Asstring;
      end
      else
      begin
        JEdit1.Text := '';
      end;
    end;
  end;
end;

procedure TFAgnSal1.dbSalesPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetOfficer = Mrok then
    Dm_sal.QAgnSale.Fieldbyname('SALCOD').Asstring := SearchSet.Keyno;
end;

procedure TFAgnSal1.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//     SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//     VAL := SFMain.n2wBill.Text;
//  END;
end;

procedure TFAgnSal1.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'VTAXNO' then
    Value := FldEdit10.Text;
end;

procedure TFAgnSal1.atEditExecute(Sender: TObject);
begin
  DM_Sec.Do_Prev_Edit_FastReport(frxReport1,'fr_Arinvoi.fr3','2'); {2 = Design Report}
end;

procedure TFAgnSal1.FormShow(Sender: TObject);
begin
  if not Dm_sal.QDbConfig.Active then
    Dm_sal.QDbConfig.Open;
  Dm01.Do_With_Query(actOpen, Dm_sal.QAgnsale, 'SELECT * FROM AR_INVOI WHERE CONTNO=:EDIT1', ['']);
  Dm01.Do_With_Query(actOpen, Dm_Sal.QAgnSalT, 'SELECT * FROM AR_TRANS WHERE CONTNO =:XCONT And LOCAT =:XLocat', ['', '']);
end;

procedure TFAgnSal1.DBLocatPropertiesChange(Sender: TObject);
begin
  Edit3.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBLocat.Text);
end;

end.

