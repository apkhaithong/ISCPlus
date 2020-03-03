unit CrdSalAr_invoi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Db, Dbkbd, ImgList, ComCtrls,
  ToolWin, RzSpnEdt, AdvGlowButton, AdvOfficeStatusBar, AdvToolBar,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, RzBorder, AdvPanel, ActnList, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, System.Actions, BusinessSkinForm,
  dxStatusBar, frxBarcode, frxFDComponents, frxTableObject, frxChBox,
  frxGradient, frxRich, frxExportXLSX, frxExportImage, frxCross, frxExportCSV,
  frxClass, frxExportBaseDialog, frxExportPDF, frxBDEComponents, frxDCtrl,
  frxChart;

type
  TFCredSalAr_invoi = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    dbDisDebt: TcxDBButtonEdit;
    dbRefNo: TcxDBButtonEdit;
    DBEdit2: TcxDBButtonEdit;
    DBLocat: TcxDBButtonEdit;
    FldEdit2: TcxDBTextEdit;
    wwDBarDate: TcxDBDateEdit;
    FldEdit1: TcxDBTextEdit;
    FldEdit4: TcxDBTextEdit;
    FldEdit5: TcxDBTextEdit;
    FldEdit6: TcxDBTextEdit;
    FldEdit7: TcxDBTextEdit;
    FldEdit8: TcxDBTextEdit;
    FldEdit9: TcxDBTextEdit;
    FldEdit10: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    FldEdit3: TcxDBButtonEdit;
    DBkbd1: TDBkbd;
    DataSource1: TDataSource;
    ActionList1: TActionList;
    atEdit: TAction;
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
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrnbtnClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure FormShow(Sender: TObject);
    procedure dbRefNoExit(Sender: TObject);
    procedure dbDisDebtPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dbRefNoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo5PropertiesChange(Sender: TObject);
    procedure FldEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure atEditExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure FindRefNo;
    procedure Del_CrdAgn;
  public
    { Public declarations }
    S: string;
  end;

var
  FCredSalAr_invoi: TFCredSalAr_invoi;
  XCase: string;

implementation

uses
  Dm1, DmTax, SrchTax1, Srchset1, Srchsal1, USoftFirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFCredSalAr_invoi.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDTAX', 'HDTAX02_4');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFCredSalAr_invoi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Tax.QCredAgn.Close;
  Action := Cafree;
  FCredSalAr_invoi := nil;
end;

procedure TFCredSalAr_invoi.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (FldEdit1.Text <> '');
  EnqBtn.Visible := InsBtn.Visible;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  PrnBtn.Visible := (DataSource1.State = Dsbrowse) and (FldEdit1.Text <> '');
  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
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
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
    end;
  end;
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  wwDBarDate.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);

  if DataSource1.State = DsEdit then
  begin
    DBLocat.Enabled := False;
    dbDisDebt.Enabled := False;
    dbRefNo.Enabled := False;
    FldEdit1.Enabled := False;
    wwDBarDate.Enabled := False;
  end
  else if (DataSource1.State = DsInsert) then
  begin
    DBLocat.Enabled := True;
    dbDisDebt.Enabled := True;
    dbRefNo.Enabled := True;
    FldEdit1.Enabled := True;
    wwDBarDate.Enabled := True;
  end;
  if Dm_Tax.QCredAgn.fieldbyname('FLAG').Asstring = 'C' then
  begin
    Label19.Visible := True;
    FldEdit1.Style.Color := clBtnFace;
    Delbtn.Visible := False;
  end
  else
  begin
    Label19.Visible := False;
    FldEdit1.Style.Color := ClWhite;
    delbtn.Visible := True;
  end;
end;

procedure TFCredSalAr_invoi.InsBtnClick(Sender: TObject);
begin
  if not Dm_Tax.QDbConfig.Active then
    Dm_Tax.QDbConfig.Open;
  with Dm_Tax.QCredAgn do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO='''' ');
    open;
    Insert;
  end;
end;

procedure TFCredSalAr_invoi.CancBtnClick(Sender: TObject);
begin
  FldEdit5.SetFocus;
  Dm_Tax.QCredAgn.Cancel;
end;

procedure TFCredSalAr_invoi.DelBtnClick(Sender: TObject);
begin
  if FldEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        if Dm_Tax.QCredAgn.FieldByName('Tsale').Asstring = 'A' then
          Del_CrdAgn;

        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_4', 'DELETE', FldEdit1.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

        with Dm_Tax.QCredAgn do
        begin
          Close;
          Sql.clear;
          Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO=:Var0');
          Params[0].Asstring := '';
          open;
        end;
      end;
  end;
end;

procedure TFCredSalAr_invoi.SavBtnClick(Sender: TObject);
begin
  if Dm_Tax.QCredAgnStrno.value = '' then
    SFMain.RaiseException('ยังไม่ได้ระบุเลขตัวถัง');
  if Dm_tax.QArSaleM.FieldByName('TOTPRC').AsFloat <= 0 then
    SFMain.RaiseException('สัญญานี้ยอดขาย=ศูนย์');
  if Dm_tax.QAr_Trans.FieldByName('CrdAmt').AsFloat > 0 then
    SFMain.RaiseException('สัญญานี้ออกใบลดหนี้บางส่วนแล้ว')
  else
  begin
    S := Dm_Tax.QCredAgn.FieldByName('Taxno').Asstring;
    if Dm_Tax.QCredAgn.state in [Dsinsert, Dsedit] then
    begin
      if (Dm_Tax.QCredAgnRefNo.value <> '') and
        (Dm_Tax.QCredAgnTotAmt.value <> 0) and
        (Dm_Tax.QCredAgnStrno.value <> '') then
      begin
        Dm_Tax.QCredAgn.Post;
      end
      else
        SFMain.RaiseException('ยังป้อนข้อมูลไม่ครบ');
    end;
    with Dm_Tax.QCredAgn do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO=:EDIT1');
      Params[0].Asstring := S;
      open;
    end;
    if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_4', 'INSERT', FldEdit1.Text)
    else
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_43', 'EDIT', FldEdit1.Text);
    if DM_SEC.qrRecent.UpdatesPending then
      if (DM_SEC.qrRecent.ApplyUpdates = 0) then
        DM_SEC.qrRecent.CommitUpdates
      else
        raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  end;
end;

procedure TFCredSalAr_invoi.EnqBtnClick(Sender: TObject);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  if SearchTax.ShowModalTaxCrd = MrOk then
  begin
    with Dm_Tax.QCredAgn do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO=:EDIT1');
      Params[0].Asstring := SearchTax.Keyno;
      open;
    end;
    with Dm_tax.QTaxtrn2 do
    begin
      Close;
      Sql.clear;
      SQL.Add('SELECT * FROM TAXTRAN WHERE TAXNO = :V0');
      Params[0].Asstring := Dm_Tax.QCredAgn.FieldByName('REFNO').Asstring;
      Open;
      if Eof and Bof then
        SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
    end;
    with Dm_tax.QArSaleM do
    begin
      Close;
      Sql.clear;
      SQL.Add('SELECT CONTNO,LOCAT,TAXNO,CRDAMT,NPRICE,VATPRC,TOTPRC,' +
        'TSALE,SDATE FROM AR_INVOI WHERE TAXNO = :V0');
      Params[0].Asstring := Dm_Tax.QTaxtrn2.FieldByName('TAXNO').Asstring;
      Open;
    end;
    with Dm_tax.QAr_Trans do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT *  FROM AR_TRANS ' +
        'WHERE STRNO =:V0 ');
      Params[0].Asstring := Dm_tax.QCredAgnSTRNO.AsString;
      OPEN;
    end;
    with Dm_tax.QInvtran1 do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT STRNO,SDATE,PRICE,TSALE,CONTNO,' +
        'CURSTAT,FLAG  FROM INVTRAN ' +
        'WHERE STRNO =:V0 ');
      Params[0].Asstring := Dm_tax.QCredAgnSTRNO.AsString;
      OPEN;
    end;
    if Dm_Tax.QCredAgn.FieldByName('Tsale').Asstring <> 'A' then
      SFMain.RaiseException('ไม่ใช่การขายส่งเอเยนต์');
  end;
end;

procedure TFCredSalAr_invoi.FindRefNo;
begin
  with Dm_tax.QTaxtrn2 do
  begin
    Close;
    Sql.clear;
    SQL.Add('SELECT * FROM TAXTRAN WHERE TAXNO = :V0 ' +
      'AND TSALE=''A'' ');
    Params[0].Asstring := Dm_Tax.QCredAgn.FieldByName('REFNO').Asstring;
    Open;
    if Eof and Bof then
      SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
  end;
  Dm_Tax.QCredAgn.FieldByName('REFDT').AsDateTime := Dm_tax.QTaxtrn2.FieldByName('TAXDT').AsDateTime;
  Dm_Tax.QCredAgn.FieldByName('REFNO').Asstring := Dm_tax.QTaxtrn2.FieldByName('TAXNO').AsString;
  Dm_Tax.QCredAgn.FieldByName('CONTNO').Asstring := Dm_tax.QTaxtrn2.FieldByName('CONTNO').AsString;
  Dm_Tax.QCredAgn.FieldByName('CUSCOD').Asstring := Dm_tax.QTaxtrn2.FieldByName('CUSCOD').AsString;
  Dm_Tax.QCredAgn.FieldByName('SNAM').Asstring := Dm_tax.QTaxtrn2.FieldByName('SNAM').AsString;
  Dm_Tax.QCredAgn.FieldByName('NAME1').Asstring := Dm_tax.QTaxtrn2.FieldByName('NAME1').AsString;
  Dm_Tax.QCredAgn.FieldByName('NAME2').Asstring := Dm_tax.QTaxtrn2.FieldByName('NAME2').AsString;
  Dm_Tax.QCredAgn.FieldByName('TSALE').Asstring := Dm_tax.QTaxtrn2.FieldByName('TSALE').AsString;
  Dm_Tax.QCredAgn.Fieldbyname('VATRT').Asfloat := Dm_tax.QTaxtrn2.FieldByName('VATRT').AsFloat;
  with Dm_tax.QArSaleM do
  begin
    Close;
    Sql.clear;
    SQL.Add('SELECT CONTNO,LOCAT,SDATE,TAXNO,CRDAMT,' +
      'NPRICE,VATPRC,TOTPRC ' +
      'FROM AR_INVOI WHERE TAXNO = :V0');
    Params[0].Asstring := Dm_Tax.QTaxtrn2.FieldByName('TAXNO').Asstring;
    Open;
    if Dm_tax.QArSaleM.FieldByName('TOTPRC').AsFloat <= 0 then
      SFMain.RaiseException('สัญญานี้ยอดขาย=ศูนย์');
  end;
end;

procedure TFCredSalAr_invoi.Del_CrdAgn;
begin
  with Dm_tax do
  begin
    if QInvtran1.FieldByname('Flag').Asstring = 'D' then
    begin
      QArSaleM.Edit;
      QArSaleM.FieldByName('NPRICE').AsFloat := QArSaleM.FieldByName('NPRICE').AsFloat + QCredAgnNETAmt.AsFloat;
      QArSaleM.FieldByName('VATPRC').AsFloat := QArSaleM.FieldByName('VATPRC').AsFloat + QCredAgnVATAmt.AsFloat;
      QArSaleM.FieldByName('TOTPRC').AsFloat := QArSaleM.FieldByName('TOTPRC').AsFloat + QCredAgnTOTAmt.AsFloat;
      QArSaleM.FieldByName('CrdAmt').AsFloat := QArSaleM.FieldByName('CrdAmt').AsFloat - QCredAgnTOTAmt.AsFloat;
      QArSaleM.Post;

      QAr_Trans.Edit;
      QAr_Trans.FieldByName('NPRICE').AsFloat := QAr_Trans.FieldByName('NPRICE').AsFloat + QCredAgnNETAmt.AsFloat;
      QAr_Trans.FieldByName('VATPRC').AsFloat := QAr_Trans.FieldByName('VATPRC').AsFloat + QCredAgnVATAmt.AsFloat;
      QAr_Trans.FieldByName('TOTPRC').AsFloat := QAr_Trans.FieldByName('TOTPRC').AsFloat + QCredAgnTOTAmt.AsFloat;
      QAr_Trans.FieldByName('CrdAmt').AsFloat := QAr_Trans.FieldByName('CrdAmt').AsFloat - QCredAgnTotAmt.AsFloat;
      QAr_Trans.FieldByName('CrdTxno').Asstring := '';
      QAr_Trans.Post;

      QInvtran1.Edit;
      QInvtran1.FieldByname('Sdate').AsDateTime := Dm_tax.QArSaleM.FieldByName('Sdate').Asdatetime;
      QInvtran1.FieldByname('TSale').Asstring := Dm_tax.QArSaleM.FieldByName('Tsale').Asstring;
      QInvtran1.FieldByname('Flag').Asstring := 'C';
      QInvtran1.FieldByname('Contno').Asstring := Dm_tax.QArSaleM.FieldByName('Contno').Asstring;
      QInvtran1.FieldByname('Price').Asfloat := QCredAgnTOTAmt.AsFloat;
      QInvtran1.Post;

      QCredAgn.Edit;
      QCredAgn.FieldByName('Flag').Asstring := 'C';
      QCredAgn.FieldByName('Candt').Asdatetime := Now;
      QCredAgn.FieldByName('FlCancl').Asstring := SFMain.Xuser_Id;
      QCredAgn.Post;
    end
    else
      SFMain.RaiseException('รถคันนี้ถูกขายแล้วไม่สามารถยกเลิกรายการได้');
  end;
end;

procedure TFCredSalAr_invoi.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFCredSalAr_invoi.PrnbtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnDisCred.fr3','1'); {1 = Preview Report}
end;

procedure TFCredSalAr_invoi.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//     SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//     VAL := SFMain.n2wBill.Text;
//  END;
end;

procedure TFCredSalAr_invoi.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'VTAXNO' then
    Value := FldEdit1.Text;
end;

procedure TFCredSalAr_invoi.FormShow(Sender: TObject);
begin
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;
  with Dm_Tax.QCredAgn do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO=:EDIT1');
    Params[0].Asstring := '';
    open;
  end;
end;

procedure TFCredSalAr_invoi.dbRefNoExit(Sender: TObject);
begin
  FindRefno;
end;

procedure TFCredSalAr_invoi.dbDisDebtPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  SearchTax.ShowModalTypCred;
end;

procedure TFCredSalAr_invoi.dbRefNoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  if SearchTax.ShowModalTaxno1 = MrOk then
  begin
    Dm_Tax.QCredAgn.FieldByName('REFNO').Asstring := SearchTax.KeyNo;
    FindRefno;
  end;
end;

procedure TFCredSalAr_invoi.FldCombo5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetreson = Mrok then
    Dm_Tax.QCredAgn.FieldByName('RESONCD').Asstring := SearchSet.KeyNo;
end;

procedure TFCredSalAr_invoi.FldCombo5PropertiesChange(Sender: TObject);
begin
  with Dm_Tax.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SETRESON WHERE RESONCD=:0');
    Params[0].Asstring := Dm_Tax.QCredAgn.FieldByName('RESONCD').Asstring;
    Open;
    if not (eof and bof) then
      Edit1.Text := FieldByName('Resndes').Asstring
    else
      Edit1.Text := '';
  end;
end;

procedure TFCredSalAr_invoi.FldEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  SearchTax.Xcont := Dm_Tax.QCredAgn.FieldByName('CONTNO').Asstring;
  if SearchTax.ShowModalAgnStrno = MrOk then
    Dm_Tax.QCredAgn.FieldByName('Strno').Asstring := SearchTax.KeyNo;
  with Dm_tax.QAr_Trans do
  begin
    Close;
    Sql.clear;
    SQL.Add('SELECT * FROM AR_TRANS WHERE STRNO = :V0');
    Params[0].Asstring := Dm_Tax.QCredAgn.FieldByName('Strno').Asstring;
    Open;
    if (eof and bof) then
      SFMain.RaiseException('ไม่มีรถเลขถังนี้ในสัญญาเลขที่นี้');
  end;
  Dm_Tax.QCredAgn.FieldByName('NetAmt').Asfloat := Dm_tax.QAr_Trans.FieldByName('NPrice').Asfloat;
  Dm_Tax.QCredAgn.FieldByName('VatAmt').Asfloat := Dm_tax.QAr_Trans.FieldByName('Vatprc').Asfloat;
  Dm_Tax.QCredAgn.FieldByName('TotAmt').Asfloat := Dm_tax.QAr_Trans.FieldByName('Totprc').Asfloat;
end;

procedure TFCredSalAr_invoi.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetLoCat = Mrok then
    Dm_Tax.QCredAgn.FieldByName('LOCAT').Asstring := SearchSet.KeyNo;
end;

procedure TFCredSalAr_invoi.atEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnDisCred.fr3','2'); {2 = Design Report}
end;

end.

