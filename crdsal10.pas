unit CrdSal10;

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
  TFCredSal1 = class(TForm)
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
    Label19: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbDisDebt: TcxDBButtonEdit;
    dbRefNo: TcxDBButtonEdit;
    DBEdit2: TcxDBButtonEdit;
    DBLocat: TcxDBButtonEdit;
    FldEdit2: TcxDBTextEdit;
    wwDBarDate: TcxDBDateEdit;
    FldEdit1: TcxDBTextEdit;
    FldEdit4: TcxDBTextEdit;
    FldEdit3: TcxDBTextEdit;
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
    DBkbd1: TDBkbd;
    DataSource1: TDataSource;
    ActionList1: TActionList;
    atEdit: TAction;
    dxStatusBar1: TdxStatusBar;
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
    procedure atEditExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure FindRefNo;
    procedure Del_CrdSal;
  public
    { Public declarations }
    S: string;
  end;

var
  FCredSal1: TFCredSal1;
  XCase: string;

implementation

uses
  Dm1, DmTax, SrchTax1, Srchset1, Srchsal1, USoftFirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFCredSal1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDTAX', 'HDTAX02_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFCredSal1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Tax.QCredSal.Close;
  Dm_Tax.QArSaleM.Close;
  Dm_Tax.QInvtran1.Close;
  Dm01.QLastno.Close;
  Action := Cafree;
  FCredSal1 := nil;
end;

procedure TFCredSal1.DataSource1StateChange(Sender: TObject);
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
  if Dm_Tax.QCredSal.fieldbyname('FLAG').Asstring = 'C' then
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

procedure TFCredSal1.InsBtnClick(Sender: TObject);
begin
  if not Dm_tax.QDbConfig.Active then
    Dm_tax.QDbConfig.Open;
  with Dm_Tax.QCredSal do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO=:EDIT1');
    Params[0].Asstring := '';
    open;
    Insert;
  end;
end;

procedure TFCredSal1.CancBtnClick(Sender: TObject);
begin
  Dm_Tax.QCredSal.Cancel;
end;

procedure TFCredSal1.DelBtnClick(Sender: TObject);
begin
  if FldEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Del_CrdSal;
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_3', 'DELETE', FldEdit1.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        with Dm_Tax.QCredSal do
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

procedure TFCredSal1.SavBtnClick(Sender: TObject);
begin
  if Dm_Tax.QCredSal.FieldByName('RESONCD').AsString = '' then
    SFMain.RaiseException('ยังไม่มีสาเหตุการลดหนี้...!');
  if Dm_tax.QArSaleM.FieldByName('TOTPRC').AsFloat <= 0 then
    SFMain.RaiseException('สัญญานี้ยอดขาย=ศูนย์');
  if Dm_tax.QArSaleM.FieldByName('CRDAMT').AsFloat > 0 then
    SFMain.RaiseException('สัญญานี้ออกใบลดหนี้บางส่วนแล้ว')
  else
  begin
    S := Dm_Tax.QCredSal.FieldByName('Taxno').Asstring;
    if Dm_Tax.QCredSal.state in [Dsinsert, Dsedit] then
    begin
      if (Dm_Tax.QCredSalRefNo.value <> '') and
        (Dm_Tax.QCredSalTotAmt.value <> 0) then
      begin
        if ((Dm_Tax.QCredSalTsale.value = 'C') or
          (Dm_Tax.QCredSalTSale.value = 'F')) then
        begin
          Dm_Tax.QCredSal.Post;
        end
        else
          SFMain.RaiseException('ไม่ใช่การขายรถที่สามารถออกใบลดหนี้ได้');
      end
      else
        SFMain.RaiseException('ไม่ใช่การขายรถที่สามารถออกใบลดหนี้ได้');
    end;
    with Dm_Tax.QCredSal do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO=:EDIT1');
      Params[0].Asstring := S;
      open;
    end;

    if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_3', 'INSERT', FldEdit1.Text)
    else
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_3', 'EDIT', FldEdit1.Text);
    if DM_SEC.qrRecent.UpdatesPending then
      if (DM_SEC.qrRecent.ApplyUpdates = 0) then
        DM_SEC.qrRecent.CommitUpdates
      else
        raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  end;
end;

procedure TFCredSal1.EnqBtnClick(Sender: TObject);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  if SearchTax.ShowModalTaxCrd = MrOk then
  begin
    with Dm_Tax.QCredSal do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO =:EDIT1');
      Params[0].Asstring := SearchTax.Keyno;
      open;
    end;
    with Dm_tax.QTaxtrn2 do
    begin
      Close;
      Sql.clear;
      SQL.Add('SELECT * FROM TAXTRAN WHERE TAXNO = :V0');
      Params[0].Asstring := Dm_Tax.QCredSal.FieldByName('REFNO').Asstring;
      Open;
      if Eof and Bof then
        SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
    end;
    if Dm_Tax.QTaxtrn2.Fieldbyname('Tsale').Asstring = 'C' then
      XCase := ' ARCRED ';
    if Dm_Tax.QTaxtrn2.Fieldbyname('Tsale').Asstring = 'F' then
      XCase := ' ARFINC ';
    with Dm_tax.QArSaleM do
    begin
      Close;
      Sql.clear;
      SQL.Add('SELECT CONTNO,LOCAT,TAXNO,CRDTXNO,CRDAMT,NPRICE,VATPRC,TOTPRC,' +
        'TSALE,SDATE,RESVNO FROM ' + XCASE + ' WHERE TAXNO = :V0');
      Params[0].Asstring := Dm_Tax.QTaxtrn2.FieldByName('TAXNO').Asstring;
      Open;
    end;
    with Dm_tax.QInvtran1 do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT STRNO,SDATE,PRICE,TSALE,CONTNO,' +
        'CURSTAT,FLAG  FROM INVTRAN ' +
        'WHERE STRNO =:V0 ');
      Params[0].Asstring := Dm_tax.QCredSalSTRNO.AsString;
      OPEN;
    end;
    with Dm_tax.QArinopt do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('SELECT * FROM ARINOPT ' +
        'WHERE CONTNO =:V0 AND TSALE =:1');
      Params[0].Asstring := Dm_tax.QCredSal.FieldByName('CONTNO').AsString;
      Params[1].Asstring := Dm_tax.QCredSal.FieldByName('TSALE').AsString;
      OPEN;
    end;
  end;
end;

procedure TFCredSal1.FindRefNo;
begin
  with Dm_tax.QTaxtrn2 do
  begin
    Close;
    Sql.clear;
    SQL.Add('SELECT * FROM TAXTRAN WHERE TAXNO = :V0 AND (TSALE=''F'' OR TSALE=''C'') ');
    Params[0].Asstring := Dm_Tax.QCredSal.FieldByName('REFNO').Asstring;
    Open;
    if Eof and Bof then
      SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
  end;
  if Dm_tax.QTaxtrn2.FieldByName('TSALE').Asstring = 'A' then
    SFMain.RaiseException('ไม่อนุญาติให้ออกใบลดหนี้สำหรับการขายส่งเอเยนต์...!')
  else
  begin
    if (Dm_tax.QTaxtrn2.FieldByName('TSALE').Asstring = 'C') or
      (Dm_tax.QTaxtrn2.FieldByName('TSALE').Asstring = 'F') then
    begin
      Dm_Tax.QCredSal.FieldByName('REFDT').AsDateTime := Dm_tax.QTaxtrn2.FieldByName('TAXDT').AsDateTime;
      Dm_Tax.QCredSal.FieldByName('STRNO').Asstring := Dm_tax.QTaxtrn2.FieldByName('STRNO').AsString;
      Dm_Tax.QCredSal.FieldByName('REFNO').Asstring := Dm_tax.QTaxtrn2.FieldByName('TAXNO').AsString;
      Dm_Tax.QCredSal.FieldByName('CONTNO').Asstring := Dm_tax.QTaxtrn2.FieldByName('CONTNO').AsString;
      Dm_Tax.QCredSal.FieldByName('CUSCOD').Asstring := Dm_tax.QTaxtrn2.FieldByName('CUSCOD').AsString;
      Dm_Tax.QCredSal.FieldByName('FINCOD').Asstring := Dm_tax.QTaxtrn2.FieldByName('FINCOD').AsString;
      Dm_Tax.QCredSal.FieldByName('SNAM').Asstring := Dm_tax.QTaxtrn2.FieldByName('SNAM').AsString;
      Dm_Tax.QCredSal.FieldByName('NAME1').Asstring := Dm_tax.QTaxtrn2.FieldByName('NAME1').AsString;
      Dm_Tax.QCredSal.FieldByName('NAME2').Asstring := Dm_tax.QTaxtrn2.FieldByName('NAME2').AsString;
      Dm_Tax.QCredSal.FieldByName('TSALE').Asstring := Dm_tax.QTaxtrn2.FieldByName('TSALE').AsString;
      Dm_Tax.QCredSal.Fieldbyname('VATRT').Asfloat := Dm_tax.QTaxtrn2.FieldByName('VATRT').AsFloat;
      Dm_Tax.QCredSal.Fieldbyname('NETAMT').Asfloat := Dm_tax.QTaxtrn2.FieldByName('NETAMT').AsFloat;
      Dm_Tax.QCredSal.Fieldbyname('VATAMT').Asfloat := Dm_tax.QTaxtrn2.FieldByName('VATAMT').AsFloat;
      Dm_Tax.QCredSal.Fieldbyname('TOTAMT').Asfloat := Dm_tax.QTaxtrn2.FieldByName('TOTAMT').AsFloat;
      if Dm_Tax.QCredSal.Fieldbyname('Tsale').Asstring = 'C' then
        XCase := ' ARCRED ';
      if Dm_Tax.QCredSal.Fieldbyname('Tsale').Asstring = 'F' then
        XCase := ' ARFINC ';
      with Dm_tax.QArSaleM do
      begin
        Close;
        Sql.clear;
        SQL.Add('SELECT CONTNO,LOCAT,TAXNO,CRDTXNO,CRDAMT,NPRICE,VATPRC,TOTPRC,RESVNO ' +
          'FROM ' + XCASE + ' WHERE TAXNO = :V0');
        Params[0].Asstring := Dm_Tax.QTaxtrn2.FieldByName('TAXNO').Asstring;
        Open;
        if Dm_tax.QArSaleM.FieldByName('CRDTXNO').Asstring <> '' then
          SFMain.RaiseException('สัญญานี้ออกใบลดหนี้ทั้งรายการแล้ว');
        if Dm_tax.QArSaleM.FieldByName('CRDAMT').AsFloat > 0 then
          SFMain.RaiseException('สัญญานี้ออกใบลดหนี้บางส่วนแล้ว');
      end;
      with Dm_tax.QInvtran1 do
      begin
        Close;
        SQL.Clear;
        SQL.ADD('SELECT STRNO,SDATE,PRICE,TSALE,CONTNO,' +
          'CURSTAT,FLAG  FROM INVTRAN WHERE STRNO =:V0 ');
        Params[0].Asstring := Dm_tax.QCredSalSTRNO.AsString;
        OPEN;
      end;
      with Dm_tax.QArinopt do
      begin
        Close;
        SQL.Clear;
        SQL.ADD('SELECT * FROM ARINOPT WHERE CONTNO =:V0 AND TSALE =:1');
        Params[0].Asstring := Dm_tax.QCredSal.FieldByName('CONTNO').AsString;
        Params[1].Asstring := Dm_tax.QCredSal.FieldByName('TSALE').AsString;
        OPEN;
      end;
      with Dm_tax.QOptmast do
      begin
        Close;
        SQL.Clear;
        SQL.ADD('SELECT * FROM OPTMAST WHERE OPTCODE =:OPTCODE AND LOCAT =:LOCAT');
        OPEN;
      end;
    end;
  end;
end;

procedure TFCredSal1.Del_CrdSal;
begin
  with Dm_tax do
  begin
    if (QInvtran1.FieldByname('Flag').Asstring = 'D') then
    begin
      if (QArSaleM.FieldByName('RESVNO').Asstring <> '') then
      begin
        with QArresv do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT RESVNO,SDATE FROM ARRESV WHERE RESVNO=:0');
          Params[0].Asstring := QArSaleM.FieldByName('RESVNO').Asstring;
          Open;
          Edit;
          FieldByName('Sdate').Asdatetime := QArSaleM.FieldByName('Sdate').Asdatetime;
          Post;
        end;
      end;

      QArSaleM.Edit;
      QArSaleM.FieldByName('NPRICE').AsFloat := QArSaleM.FieldByName('NPRICE').AsFloat + QCredSalNETAmt.AsFloat;
      QArSaleM.FieldByName('VATPRC').AsFloat := QArSaleM.FieldByName('VATPRC').AsFloat + QCredSalVATAmt.AsFloat;
      QArSaleM.FieldByName('TOTPRC').AsFloat := QArSaleM.FieldByName('TOTPRC').AsFloat + QCredSalTOTAmt.AsFloat;
      QArSaleM.FieldByName('Crdtxno').Asstring := '';
      QArSaleM.FieldByName('CrdAmt').AsFloat := 0;
      QArSaleM.Post;

      QInvtran1.Edit;
      QInvtran1.FieldByname('Sdate').Asdatetime := Dm_tax.QArSaleM.FieldByName('Sdate').Asdatetime;
      QInvtran1.FieldByname('TSale').Asstring := Dm_tax.QArSaleM.FieldByName('Tsale').Asstring;
      QInvtran1.FieldByname('Flag').Asstring := 'C';
      QInvtran1.FieldByname('Contno').Asstring := Dm_tax.QArSaleM.FieldByName('Contno').Asstring;
      QInvtran1.FieldByname('Price').Asfloat := Dm_tax.QArSaleM.FieldByName('TotPrc').AsFloat;
      QInvtran1.Post;

      Dm_tax.QArinopt.First;
      while not Dm_tax.QArinopt.eof do
      begin
        Dm_tax.QArinopt.Edit;
        Dm_tax.QArinopt.FieldByName('RtnFlag').Asstring := '';
        Dm_tax.QArinopt.Next;
      end;

      QCredSal.Edit;
      QCredSal.FieldByName('Flag').Asstring := 'C';
      QCredSal.FieldByName('Candt').Asdatetime := Date;
      QCredSal.FieldByName('FlCancl').Asstring := SFMain.Xuser_Id;
      QCredSal.Post;
    end
    else
      SFMain.RaiseException('รถคันนี้ถูกขายแล้วไม่สามารถยกเลิกรายการได้');
  end;
end;

procedure TFCredSal1.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFCredSal1.PrnbtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnDisCred.fr3', '1'); {1 = Preview Report}
end;

procedure TFCredSal1.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//     SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//     VAL := SFMain.n2wBill.Text;
//  END;
end;

procedure TFCredSal1.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'VTAXNO' then
    Value := FldEdit1.Text;
end;

procedure TFCredSal1.FormShow(Sender: TObject);
begin
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;
  with Dm_Tax.QCredSal do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO=:EDIT1');
    Params[0].Asstring := '';
    open;
  end;
end;

procedure TFCredSal1.dbRefNoExit(Sender: TObject);
begin
  FindRefno;
end;

procedure TFCredSal1.dbDisDebtPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  SearchTax.ShowModalTypCred;
end;

procedure TFCredSal1.dbRefNoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  if SearchTax.ShowModalTaxno1 = MrOk then
  begin
    Dm_Tax.QCredSal.FieldByName('REFNO').Asstring := SearchTax.KeyNo;
    FindRefno;
  end;
end;

procedure TFCredSal1.FldCombo5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetreson = Mrok then
    Dm_Tax.QCredSal.FieldByName('RESONCD').Asstring := SearchSet.KeyNo;
end;

procedure TFCredSal1.FldCombo5PropertiesChange(Sender: TObject);
begin
  with Dm_Tax.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SETRESON WHERE RESONCD=:0');
    Params[0].Asstring := Dm_Tax.QCredSal.FieldByName('RESONCD').Asstring;
    Open;
    if not (eof and bof) then
      Edit1.Text := FieldByName('Resndes').Asstring
    else
      Edit1.Text := '';
  end;
end;

procedure TFCredSal1.atEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnDisCred.fr3', '2'); {2 = Design Report}
end;

end.

