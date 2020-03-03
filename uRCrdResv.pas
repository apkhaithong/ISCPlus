unit uRCrdResv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Dbkbd, Db, ComCtrls, ToolWin,
  ImgList, RzSpnEdt, cxTextEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxMaskEdit, cxButtonEdit, cxControls, cxContainer, cxEdit, AdvOfficeStatusBar,
  AdvGlowButton, AdvToolBar, RzBorder, AdvPanel, ActnList, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar,
  frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfCrdResv = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label19: TLabel;
    DBEdit6: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    atEdit: TAction;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    DBLocat: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    wwDBarDate: TcxDBDateEdit;
    DBEdit2: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    DBEdit4: TcxDBButtonEdit;
    Query1: TFDQuery;
    DBEdit8: TcxDBButtonEdit;
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
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure atEditExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure FindRefNo;
    procedure Del_CrdSal2;
  public
    { Public declarations }
  end;

var
  fCrdResv: TfCrdResv;
  XCase, S: string;

implementation

uses
  Dm1, DmTax, SrchTax1, Srchset1, Srchsal1, USoftFirm, unfrPreview, Dmsec, DmSal,
  CRDFincRecv;

{$R *.DFM}

procedure TfCrdResv.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDTAX', 'HDTAX02_6');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TfCrdResv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Tax.qCredResv.Close;
  Dm_Tax.QArSaleM.Close;
  Dm_Tax.QInvtran1.Close;
  Dm01.QLastno.Close;
  Action := Cafree;
  fCrdResv := nil;
end;

procedure TfCrdResv.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit5.Text <> '');
  EnqBtn.Visible := InsBtn.Visible;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  PrnBtn.Visible := (DataSource1.State = Dsbrowse) and (DBEdit5.Text <> '');
  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Properties.Readonly := True;
        TcxDBButtonEdit(Components[n]).Style.Color := clBtnFace;
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
        TcxDBButtonEdit(Components[n]).Properties.Readonly := False;
        TcxDBButtonEdit(Components[n]).Style.Color := clWhite;
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

  if DataSource1.State = DsEdit then
  begin
    DBLocat.Enabled := False;
    DBEdit1.Enabled := False;
    DBEdit2.Enabled := False;
    wwDBarDate.Enabled := False;
    DBEdit5.Enabled := False;
    DBEdit11.Enabled := False;
    DBEdit12.Enabled := False;
    DBEdit13.Enabled := False;
  end
  else if (DataSource1.State = DsInsert) then
  begin
    DBLocat.Enabled := True;
    DBEdit1.Enabled := True;
    DBEdit2.Enabled := True;
    wwDBarDate.Enabled := True;
    DBEdit5.Enabled := True;
    DBEdit11.Enabled := True;
    DBEdit12.Enabled := True;
    DBEdit13.Enabled := True;
  end;

  if Dm_Tax.qCredResv.fieldbyname('FLAG').Asstring = 'C' then
  begin
    Label19.Visible := True;
    DBEdit5.Style.Color := clBtnFace;
    Delbtn.Visible := False;
  end
  else
  begin
    Label19.Visible := False;
    DBEdit5.Style.Color := ClWhite;
    Delbtn.Visible := True;
  end;
end;

procedure TfCrdResv.InsBtnClick(Sender: TObject);
begin
  if not Dm_tax.QDbConfig.Active then
    Dm_tax.QDbConfig.Open;
  with Dm_Tax.qCredResv do
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
    SQL.Add('SELECT RESVNO,LOCAT,TAXNO,CRDTXNO,CRDTXDT,CRDAMT,RESPAY ' +
      'FROM ARRESV WHERE RESVNO = '''' ');
    Open;
  end;
end;

procedure TfCrdResv.CancBtnClick(Sender: TObject);
begin
  DBEdit16.SetFocus;
  Dm_Tax.qCredResv.Cancel;
end;

procedure TfCrdResv.DelBtnClick(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Del_CrdSal2;

        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_6', 'DELETE', DBEdit5.Text);
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

procedure TfCrdResv.FindRefNo;
begin
  with Dm_tax.QTaxtrn2 do
  begin
    Close;
    Sql.clear;
    SQL.Add('SELECT * FROM TAXTRAN WHERE TAXNO = :V0 AND TAXTYP=''R'' ');
    Params[0].Asstring := Dm_Tax.qCredResv.FieldByName('REFNO').Asstring;
    Open;
    if Eof and Bof then
      SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
  end;
  Dm_Tax.qCredResv.FieldByName('REFDT').AsDateTime := Dm_tax.QTaxtrn2.FieldByName('TAXDT').AsDateTime;
  Dm_Tax.qCredResv.FieldByName('STRNO').Asstring := Dm_tax.QTaxtrn2.FieldByName('STRNO').AsString;
  Dm_Tax.qCredResv.FieldByName('REFNO').Asstring := Dm_tax.QTaxtrn2.FieldByName('TAXNO').AsString;
  Dm_Tax.qCredResv.FieldByName('CONTNO').Asstring := Dm_tax.QTaxtrn2.FieldByName('CONTNO').AsString;
  Dm_Tax.qCredResv.FieldByName('CUSCOD').Asstring := Dm_tax.QTaxtrn2.FieldByName('CUSCOD').AsString;
  Dm_Tax.qCredResv.FieldByName('SNAM').Asstring := Dm_tax.QTaxtrn2.FieldByName('SNAM').AsString;
  Dm_Tax.qCredResv.FieldByName('NAME1').Asstring := Dm_tax.QTaxtrn2.FieldByName('NAME1').AsString;
  Dm_Tax.qCredResv.FieldByName('NAME2').Asstring := Dm_tax.QTaxtrn2.FieldByName('NAME2').AsString;
  Dm_Tax.qCredResv.FieldByName('TSALE').Asstring := Dm_tax.QTaxtrn2.FieldByName('TSALE').AsString;
  Dm_Tax.qCredResv.Fieldbyname('VATRT').Asfloat := Dm_tax.QTaxtrn2.FieldByName('VATRT').AsFloat;
  Dm_Tax.qCredResv.Fieldbyname('NETAMT').Asfloat := Dm_tax.QTaxtrn2.FieldByName('NETAMT').AsFloat;
  Dm_Tax.qCredResv.Fieldbyname('VATAMT').Asfloat := Dm_tax.QTaxtrn2.FieldByName('VATAMT').AsFloat;
  Dm_Tax.qCredResv.Fieldbyname('TOTAMT').Asfloat := Dm_tax.QTaxtrn2.FieldByName('TOTAMT').AsFloat;

  with Dm_tax.QArSaleM do
  begin
    Close;
    Sql.clear;
    SQL.Add('SELECT RESVNO,LOCAT,TAXNO,CRDTXNO,CRDTXDT,CRDAMT,RESPAY ' +
      'FROM ARRESV WHERE RESVNO = :V0');
    Params[0].Asstring := Dm_Tax.QTaxtrn2.FieldByName('CONTNO').Asstring;
    Open;

    if Dm_tax.QArSaleM.FieldByName('CRDTXNO').Asstring <> '' then
      SFMain.RaiseException('สัญญานี้ออกใบลดหนี้ทั้งรายการแล้ว');
    if Dm_tax.QArSaleM.FieldByName('RESPAY').AsFloat <= 0 then
      SFMain.RaiseException('สัญญานี้ยอดจองเป็น 0');
  end;
end;

procedure TfCrdResv.SavBtnClick(Sender: TObject);
begin
  Edit1.SetFocus;
  if DBEdit2.Text = '' then
    SFMain.RaiseException('กรุณาอ้างอิงเลขที่อ้างอิง..!');

  if Dm_tax.QArSaleM.FieldByName('CRDTXNO').Asstring <> '' then
    SFMain.RaiseException('สัญญานี้ออกใบลดหนี้ทั้งรายการแล้ว')
  else
  begin
    S := Dm_Tax.qCredResv.FieldByName('Taxno').Asstring;
    if Dm_Tax.qCredResv.state in [Dsinsert, Dsedit] then
    begin
      if (Dm_Tax.qCredResvRefNo.value <> '') and
        (Dm_Tax.qCredResvTotAmt.value <> 0) then
      begin
        Dm_Tax.qCredResv.Post;
      end
      else
        SFMain.RaiseException('กรุณาอ้างถึงใบกำกับเลขที่ให้เรียบร้อย');
    end;
    with Dm_Tax.qCredResv do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO=:EDIT1');
      Params[0].Asstring := S;
      open;
    end;

    if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_6', 'INSERT', DBEdit5.Text)
    else
      Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX02_6', 'EDIT', DBEdit5.Text);
    if DM_SEC.qrRecent.UpdatesPending then
      if (DM_SEC.qrRecent.ApplyUpdates = 0) then
        DM_SEC.qrRecent.CommitUpdates
      else
        raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  end;
end;

procedure TfCrdResv.EnqBtnClick(Sender: TObject);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  SearchTax.XTaxtyp := ' and (Taxtyp=''9'' or Taxtyp = ''R'') ';
  if SearchTax.ShowModalTaxCrd = MrOk then
  begin
    with Dm_Tax.qCredResv do
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
      Params[0].Asstring := Dm_Tax.qCredResv.FieldByName('REFNO').Asstring;
      Open;
      if Eof and Bof then
        SFMain.RaiseException('ไม่พบเลขที่ใบกำกับนี้');
    end;
    with Dm_tax.QArSaleM do
    begin
      Close;
      Sql.clear;
      SQL.Add('SELECT RESVNO,LOCAT,TAXNO,CRDTXNO,CRDTXDT,CRDAMT,RESPAY,' +
        'SDATE FROM ARRESV WHERE TAXNO = :V0');
      Params[0].Asstring := Dm_Tax.QTaxtrn2.FieldByName('TAXNO').Asstring;
      Open;
    end;
    if Dm_Tax.qCredResv.Fieldbyname('Strno').Asstring <> '' then
    begin
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
end;

procedure TfCrdResv.Del_CrdSal2;
begin
  with Dm_tax do
  begin
    if Dm_Tax.QTaxtrn2.Fieldbyname('Tsale').Asstring <> 'R' then
    begin
      QArSaleM.FieldByName('CrdTXNO').AsString := '';
      QArSaleM.FieldByName('Crdtxdt').AsDateTime := 0;
      QArSaleM.FieldByName('CrdAmt').AsFloat := 0;
      QArSaleM.Post;
    end;
    qCredResv.Edit;
    qCredResv.FieldByName('Flag').Asstring := 'C';
    qCredResv.FieldByName('Candt').Asdatetime := Now;
    qCredResv.FieldByName('FlCancl').Asstring := SFMain.Xuser_Id;
    qCredResv.Post;

    with query1 do
    begin
      close;
      sql.Clear;
      sql.Add('update arresv set CRDTXNO = '''',CRDTXDT = null,CRDAMT = 0 where CRDTXNO =:edit1');
      params[0].AsString := qCredResv.FieldByName('TAXNO').Asstring;
      execSql;
    end;
  end;
end;

procedure TfCrdResv.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TfCrdResv.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnTaxRd.fr3','1'); {1 = Preview Report}
end;

procedure TfCrdResv.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//     SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//     VAL := SFMain.n2wBill.Text;
//  END;
end;

procedure TfCrdResv.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'VFCONT' then
    Value := DBEdit5.Text;
end;

procedure TfCrdResv.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F2 then
    SavBtnClick(Sender);
  if Key = VK_F5 then
    InsBtnClick(Sender);
  if Key = VK_F7 then
    EnqBtnClick(Sender);
  if Key = VK_F8 then
    DelBtnClick(Sender);
end;

procedure TfCrdResv.DBEdit2Exit(Sender: TObject);
begin
  FindRefno;
end;

procedure TfCrdResv.DBEdit4Change(Sender: TObject);
begin
  with Dm_Tax.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SETRESON WHERE RESONCD=:0');
    Params[0].Asstring := Dm_Tax.qCredResv.FieldByName('RESONCD').Asstring;
    Open;
    if not (eof and bof) then
      Edit1.Text := FieldByName('Resndes').Asstring
    else
      Edit1.Text := '';
  end;
end;

procedure TfCrdResv.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetLoCat = Mrok then
    Dm_Tax.qCredResv.FieldByName('LOCAT').Asstring := SearchSet.KeyNo;
end;

procedure TfCrdResv.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  SearchTax.ShowModalTypCred;
end;

procedure TfCrdResv.DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchTax, SearchTax);
  SearchTax.XTaxtyp := ' AND (TAXTYP=''R'') ';
  if SearchTax.ShowModalTaxno = MrOk then
  begin
    Dm_Tax.qCredResv.FieldByName('REFNO').Asstring := SearchTax.KeyNo;
    FindRefno;
  end;
end;

procedure TfCrdResv.DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetreson = Mrok then
    Dm_Tax.qCredResv.FieldByName('RESONCD').Asstring := SearchSet.KeyNo;
end;

procedure TfCrdResv.atEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnTaxRd.fr3','2'); {2 = Design Report}
end;

procedure TfCrdResv.FormShow(Sender: TObject);
begin
  if not (Dm01.QCondpay.Active) then
    Dm01.QCondpay.Open;
  with Dm_Tax.qCredResv do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO=:EDIT1');
    Params[0].Asstring := '';
    open;
  end;
end;

procedure TfCrdResv.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  SearchSale.Xflg := 'C';
  SearchSale.XLocat := Dm_sal.QCshSale.Fieldbyname('Locat').Asstring;
  if SearchSale.ShowModalStrno = Mrok then
    if (Datasource1.State in DsEditModes) then
      Dm_Tax.qCredResv.Fieldbyname('Strno').Asstring := SearchSale.Keyno;
end;

procedure TfCrdResv.DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalCuscod = Mrok then
  begin
    Dm_Tax.qCredResv.Fieldbyname('CUSCOD').Asstring := SearchSale.Keyno;
    with Dm_Tax.Query1 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST ' +
        'WHERE CUSCOD=:Var0');
      Params[0].Asstring := Dm_Tax.qCredResv.Fieldbyname('CUSCOD').Asstring;
      open;
    end;
  end;
end;

end.

