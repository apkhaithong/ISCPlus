unit CrdSal30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Dbkbd, Db, ComCtrls, ToolWin,
  ImgList, RzSpnEdt, AdvGlowButton, AdvOfficeStatusBar, AdvToolBar, cxTextEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxButtonEdit, RzBorder, AdvPanel, ActnList, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, System.Actions, BusinessSkinForm,
  dxStatusBar, frxBarcode, frxFDComponents, frxTableObject, frxChBox,
  frxGradient, frxRich, frxExportXLSX, frxExportImage, frxCross, frxExportCSV,
  frxClass, frxExportBaseDialog, frxExportPDF, frxBDEComponents, frxDCtrl,
  frxChart;

type
  TFCredSal3 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
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
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
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
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbRefNoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dbDisDebtPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dbRefNoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit2PropertiesChange(Sender: TObject);
    procedure atEditExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure FindRefNo;
    procedure Del_CrdSal2;
  public
    { Public declarations }
  end;

var
  FCredSal3: TFCredSal3;
  XCase, S: string;

implementation

uses
  Dm1, DmTax, SrchTax1, Srchset1, Srchsal1, USoftFirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFCredSal3.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDTAX', 'HDTAX02_5');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFCredSal3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Tax.QCredSal2.Close;
  Dm_Tax.QArSaleM.Close;
  Dm_Tax.QInvtran1.Close;
  Dm01.QLastno.Close;
  Action := Cafree;
  FCredSal3 := nil;
end;

procedure TFCredSal3.DataSource1StateChange(Sender: TObject);
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
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := false;
        TcxDBTextEdit(Components[n]).Style.Color := clwhite;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
    end;
  end;

  if DataSource1.State = DsEdit then
  begin
    DBLocat.Enabled := False;
    DBDisDebt.Enabled := False;
    DBRefno.Enabled := False;
    wwDBarDate.Enabled := False;
    FldEdit1.Enabled := False;
    DBEdit11.Enabled := False;
    DBEdit12.Enabled := False;
    DBEdit13.Enabled := False;
    DBEdit11.Style.Color := clBtnFace;
    DBEdit12.Style.Color := clBtnFace;
    DBEdit13.Style.Color := clBtnFace;
  end
  else if (DataSource1.State = DsInsert) then
  begin
    DBLocat.Enabled := True;
    DBDisDebt.Enabled := True;
    DBRefno.Enabled := True;
    wwDBarDate.Enabled := True;
    FldEdit1.Enabled := True;
    DBEdit11.Enabled := True;
    DBEdit12.Enabled := True;
    DBEdit13.Enabled := True;
    DBEdit11.Style.Color := clWhite;
    DBEdit12.Style.Color := clWhite;
    DBEdit13.Style.Color := clWhite;
  end;
  if FldEdit1.Properties.Readonly then
    FldEdit1.Style.Color := clBtnFace
  else
    FldEdit1.Style.Color := clWhite;

  if Dm_Tax.QCredSal2.fieldbyname('FLAG').Asstring = 'C' then
  begin
    Label19.Visible := True;
    FldEdit1.Style.Color := clBtnFace;
    Delbtn.Visible := False;
  end
  else
  begin
    Label19.Visible := False;
    FldEdit1.Style.Color := ClWhite;
    Delbtn.Visible := True;
  end;
end;

procedure TFCredSal3.InsBtnClick(Sender: TObject);
begin
  if not Dm_tax.QDbConfig.Active then
    Dm_tax.QDbConfig.Open;
  with Dm_Tax.QCredSal2 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXTRAN WHERE CONTNO=:EDIT1');
    Params[0].Asstring := '';
    open;
    Insert;
  end;
  with Dm_tax.QArSaleM do
  begin
    Close;
    Sql.clear;
    SQL.Add('SELECT CONTNO,LOCAT,TAXNO,CRDTXNO,CRDAMT,NPRICE,VATPRC,TOTPRC ' +
      'FROM ARCRED WHERE CONTNO = '''' ');
    Open;
  end;
end;

procedure TFCredSal3.CancBtnClick(Sender: TObject);
begin
  Dm_Tax.QCredSal2.Cancel;
end;

procedure TFCredSal3.DelBtnClick(Sender: TObject);
begin
  if FldEdit1.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Del_CrdSal2;
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_5', 'DELETE', FldEdit1.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        with Dm_Tax.qCredResv do
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

procedure TFCredSal3.FindRefNo;
begin
  with Dm_tax.QTaxtrn2 do
  begin
    Close;
    Sql.clear;
    SQL.Add('SELECT * FROM TAXTRAN WHERE TAXNO = :V0 ');
    Params[0].Asstring := Dm_Tax.QCredSal2.FieldByName('REFNO').Asstring;
    Open;
    if Eof and Bof then
      SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
  end;
  if Dm_tax.QTaxtrn2.FieldByName('TSALE').Asstring = 'A' then
    SFMain.RaiseException('ไม่อนุญาติให้ออกใบลดหนี้สำหรับการขายส่งเอเยนต์....!')
  else
  begin
    Dm_Tax.QCredSal2.FieldByName('REFDT').AsDateTime := Dm_tax.QTaxtrn2.FieldByName('TAXDT').AsDateTime;
    Dm_Tax.QCredSal2.FieldByName('STRNO').Asstring := Dm_tax.QTaxtrn2.FieldByName('STRNO').AsString;
    Dm_Tax.QCredSal2.FieldByName('REFNO').Asstring := Dm_tax.QTaxtrn2.FieldByName('TAXNO').AsString;
    Dm_Tax.QCredSal2.FieldByName('CONTNO').Asstring := Dm_tax.QTaxtrn2.FieldByName('CONTNO').AsString;
    Dm_Tax.QCredSal2.FieldByName('CUSCOD').Asstring := Dm_tax.QTaxtrn2.FieldByName('CUSCOD').AsString;
    Dm_Tax.QCredSal2.FieldByName('SNAM').Asstring := Dm_tax.QTaxtrn2.FieldByName('SNAM').AsString;
    Dm_Tax.QCredSal2.FieldByName('NAME1').Asstring := Dm_tax.QTaxtrn2.FieldByName('NAME1').AsString;
    Dm_Tax.QCredSal2.FieldByName('NAME2').Asstring := Dm_tax.QTaxtrn2.FieldByName('NAME2').AsString;
    Dm_Tax.QCredSal2.FieldByName('TSALE').Asstring := Dm_tax.QTaxtrn2.FieldByName('TSALE').AsString;
    Dm_Tax.QCredSal2.Fieldbyname('VATRT').Asfloat := Dm_tax.QTaxtrn2.FieldByName('VATRT').AsFloat;
    if (Dm_Tax.QCredSal2.Fieldbyname('Tsale').Asstring = 'C') or
      (Dm_Tax.QCredSal2.Fieldbyname('Tsale').Asstring = 'F') then
    begin
      if Dm_Tax.QCredSal2.Fieldbyname('Tsale').Asstring = 'C' then
        XCase := ' ARCRED ';
      if Dm_Tax.QCredSal2.Fieldbyname('Tsale').Asstring = 'F' then
        XCase := ' ARFINC ';
      if Dm_Tax.QCredSal2.Fieldbyname('Tsale').Asstring = 'O' then
        XCase := ' AROPMST ';
      with Dm_tax.QArSaleM do
      begin
        Close;
        Sql.clear;
        SQL.Add('SELECT CONTNO,LOCAT,TAXNO,CRDTXNO,CRDAMT,NPRICE,VATPRC,TOTPRC ' +
          'FROM ' + XCASE + ' WHERE CONTNO = :V0 AND TAXNO =:V1');
        Params[0].Asstring := Dm_Tax.QTaxtrn2.FieldByName('CONTNO').Asstring;
        Params[1].AsString := Dm_Tax.QTaxtrn2.FieldByName('TAXNO').Asstring;
        Open;
        if Dm_tax.QArSaleM.FieldByName('CRDTXNO').Asstring <> '' then
          SFMain.RaiseException('สัญญานี้ออกใบลดหนี้ทั้งรายการแล้ว');
        if Dm_tax.QArSaleM.FieldByName('TOTPRC').AsFloat <= 0 then
          SFMain.RaiseException('สัญญานี้ยอดขายเป็น 0');
      end;
    end;
  end;
end;

procedure TFCredSal3.SavBtnClick(Sender: TObject);
begin
  if Dm_tax.QArSaleM.FieldByName('CRDTXNO').Asstring <> '' then
    SFMain.RaiseException('สัญญานี้ออกใบลดหนี้ทั้งรายการแล้ว')
  else
  begin
    S := Dm_Tax.QCredSal2.FieldByName('Taxno').Asstring;
    if Dm_Tax.QCredSal2.state in [Dsinsert, Dsedit] then
    begin
      if (Dm_Tax.QCredSal2RefNo.value <> '') and
        (Dm_Tax.QCredSal2TotAmt.value <> 0) then
      begin
        Dm_Tax.QCredSal2.Post;
      end
      else
        SFMain.RaiseException('ป้อนอ้างถึงใบกำกับเลขที่ให้เรียบร้อย');
    end;
    with Dm_Tax.QCredSal2 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO=:EDIT1');
      Params[0].Asstring := S;
      open;
    end;
    if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_5', 'INSERT', FldEdit1.Text)
    else
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_5', 'EDIT', FldEdit1.Text);
    if DM_SEC.qrRecent.UpdatesPending then
      if (DM_SEC.qrRecent.ApplyUpdates = 0) then
        DM_SEC.qrRecent.CommitUpdates
      else
        raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  end;
end;

procedure TFCredSal3.EnqBtnClick(Sender: TObject);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  if SearchTax.ShowModalTaxCrd = MrOk then
  begin
    with Dm_Tax.QCredSal2 do
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
      Params[0].Asstring := Dm_Tax.QCredSal2.FieldByName('REFNO').Asstring;
      Open;
      if Eof and Bof then
        SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
    end;
    if Dm_Tax.QTaxtrn2.Fieldbyname('Tsale').Asstring = 'C' then
      XCase := ' ARCRED ';
    if Dm_Tax.QTaxtrn2.Fieldbyname('Tsale').Asstring = 'F' then
      XCase := ' ARFINC ';
    if (Dm_Tax.QTaxtrn2.Fieldbyname('Tsale').Asstring = 'C') or
      (Dm_Tax.QTaxtrn2.Fieldbyname('Tsale').Asstring = 'F') then
    begin
      with Dm_tax.QArSaleM do
      begin
        Close;
        Sql.clear;
        SQL.Add('SELECT CONTNO,LOCAT,TAXNO,CRDTXNO,CRDAMT,NPRICE,VATPRC,TOTPRC,' +
          'TSALE,SDATE FROM ' + XCASE + ' WHERE TAXNO = :V0');
        Params[0].Asstring := Dm_Tax.QTaxtrn2.FieldByName('TAXNO').Asstring;
        Open;
      end;
    end;
    if Dm_Tax.QCredSal2.Fieldbyname('Strno').Asstring <> '' then
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
  end;
end;

procedure TFCredSal3.Del_CrdSal2;
begin
  with Dm_tax do
  begin
    if Dm_Tax.QTaxtrn2.Fieldbyname('Tsale').Asstring <> 'R' then
    begin
      QArSaleM.Edit;
      QArSaleM.FieldByName('NPRICE').AsFloat := QArSaleM.FieldByName('NPRICE').AsFloat + QCredSal2NETAmt.AsFloat;
      QArSaleM.FieldByName('VATPRC').AsFloat := QArSaleM.FieldByName('VATPRC').AsFloat + QCredSal2VATAmt.AsFloat;
      QArSaleM.FieldByName('TOTPRC').AsFloat := QArSaleM.FieldByName('TOTPRC').AsFloat + QCredSal2TOTAmt.AsFloat;
      QArSaleM.FieldByName('CrdAmt').AsFloat := QArSaleM.FieldByName('CrdAmt').AsFloat - QCredSal2TOTAmt.AsFloat;
      QArSaleM.Post;
    end;
    QCredSal2.Edit;
    QCredSal2.FieldByName('Flag').Asstring := 'C';
    QCredSal2.FieldByName('Candt').Asdatetime := Now;
    QCredSal2.FieldByName('FlCancl').Asstring := SFMain.Xuser_Id;
    QCredSal2.Post;
  end;
end;

procedure TFCredSal3.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFCredSal3.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
end;

procedure TFCredSal3.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'VFCONT' then
    Value := FldEdit1.Text;
end;

procedure TFCredSal3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F7 then
  begin
//    DM_Sec.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnTaxRd.fr3', '2');
  end;
end;

procedure TFCredSal3.dbRefNoExit(Sender: TObject);
begin
  FindRefno;
end;

procedure TFCredSal3.FormShow(Sender: TObject);
begin
  if not Dm01.QCondpay.Active then
    Dm01.QCondpay.Open;
  with Dm_Tax.QCredSal2 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO=:EDIT1');
    Params[0].Asstring := '';
    open;
  end;
end;

procedure TFCredSal3.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnTaxRd.fr3', '1'); {1 = Preview Report}
end;

procedure TFCredSal3.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetLoCat = Mrok then
    Dm_Tax.QCredSal2.FieldByName('LOCAT').Asstring := SearchSet.KeyNo;
end;

procedure TFCredSal3.dbDisDebtPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  SearchTax.ShowModalTypCred;
end;

procedure TFCredSal3.dbRefNoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  if SearchTax.ShowModalTaxno1 = MrOk then
  begin
    Dm_Tax.QCredSal2.FieldByName('REFNO').Asstring := SearchTax.KeyNo;
    FindRefno;
  end;
end;

procedure TFCredSal3.DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetreson = Mrok then
    Dm_Tax.QCredSal2.FieldByName('RESONCD').Asstring := SearchSet.KeyNo;
end;

procedure TFCredSal3.DBEdit2PropertiesChange(Sender: TObject);
begin
  with Dm_Tax.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SETRESON WHERE RESONCD=:0');
    Params[0].Asstring := Dm_Tax.QCredSal2.FieldByName('RESONCD').Asstring;
    Open;
    if not (eof and bof) then
      Edit1.Text := FieldByName('Resndes').Asstring
    else
      Edit1.Text := '';
  end;
end;

procedure TFCredSal3.atEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnTaxRd.fr3', '2'); {2 = Design Report}
end;

end.

