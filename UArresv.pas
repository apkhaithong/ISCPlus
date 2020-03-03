unit UArresv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, ImgList, ToolWin,
  ComCtrls, DB, Dbkbd, n2wMoney, AdvGlowButton, AdvOfficeStatusBar, RzLabel,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxDropDownEdit, cxCalendar, cxMemo, AdvToolBar, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxPC, Menus, cxLookAndFeelPainters,
  cxButtons, RzBorder, AdvPanel, ActnList, cxGroupBox, cxLookAndFeels,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  BusinessSkinForm, dxStatusBar, cxRadioGroup, cxImageComboBox, RzDBLbl,
  frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFArresv = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label27: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label29: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    DBEdit4: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    Query2: TFDQuery;
    ActionList1: TActionList;
    atEdit: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cxRadioGroup1: TcxRadioGroup;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    Label11: TLabel;
    Label13: TLabel;
    BookCan: TcxButton;
    DBEdit11: TcxDBButtonEdit;
    Label25: TLabel;
    Edit5: TcxTextEdit;
    RzDBLabel1: TRzDBLabel;
    Label19: TLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    Label20: TLabel;
    Label21: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBRadioGroup2: TcxDBRadioGroup;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    DBLocat: TcxDBButtonEdit;
    DBResvDt: TcxDBDateEdit;
    DBEdit3: TcxDBTextEdit;
    DBCust: TcxDBButtonEdit;
    DBEdit13: TcxDBButtonEdit;
    dbSales: TcxDBButtonEdit;
    DBComboBox1: TcxDBImageComboBox;
    FldCombo6: TcxDBButtonEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    DBEdit21: TcxDBButtonEdit;
    DBEdit22: TcxDBButtonEdit;
    DBEdit23: TcxDBButtonEdit;
    DBEdit24: TcxDBButtonEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit25: TcxDBButtonEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    DBMemo1: TcxDBMemo;
    Label26: TLabel;
    cxDBButtonEdit3: TcxDBButtonEdit;
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
    procedure BookCanClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure FormShow(Sender: TObject);
    procedure DBCustChange(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure dbSalesChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dbSalesPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
    procedure atEditExecute(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit25PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit21PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit24PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FldCombo6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBRadioGroup1PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    S, Xtaxno: string;               //,uResvCarDlg
  end;

var
  FArresv: TFArresv;

implementation

uses
  USoftFirm, Dmsec, dm1, dmsal, SrchStk, Srchset1, Srchsal1, resv11, unfrPreview;
{$R *.dfm}

procedure TFArresv.BookCanClick(Sender: TObject);
begin
  if MessageDlg('แน่ใจหรือไม่ที่จะยกเลิกการระบุเลขถัง ?', Mtconfirmation, [mbok, mbcancel], 0) = mrcancel then
    Abort;

  if Dm_sal.QArresvSdate.Asstring <> '' then
    SFMain.RaiseException('ใบจองนี้ถูกขายไปแล้ว ');

  with Dm_sal.QInvResv do
  begin
    close;
    sql.clear;
    sql.add('SELECT RESVDT,RESVNO,STRNO,TYPE,MODEL,BAAB,COLOR,CC,STAT, ' +
      'FLAG,CRLOCAT,CURSTAT FROM INVTRAN ' +
      'WHERE STRNO = :S ');
    params[0].asstring := Dm_sal.QArresvStrno.Asstring;
    open;
  end;
  if not (Dm_sal.QInvResv.Eof and Dm_sal.QInvResv.Bof) then
  begin
    if Dm_sal.QInvResv.Fieldbyname('FLAG').asstring = 'C' then
      SFMain.RaiseException('รถคันนี้ถูกขายไปแล้ว');

    Dm_sal.QInvResv.Edit;
    Dm_sal.QInvResv.Fieldbyname('CURSTAT').asstring := '';
    Dm_sal.QInvResv.Fieldbyname('RESVDT').asstring := '';
    Dm_sal.QInvResv.Fieldbyname('RESVNo').asstring := '';
    Dm_sal.QInvResv.Post;
  end;
   //
  if Dm_sal.QArresv.State = DsBrowse then
    Dm_sal.QArresv.Edit;
  Dm_sal.QArresvStrno.Asstring := '';
end;

procedure TFArresv.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit3.Text <> '');
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CancBtn.Visible := SavBtn.Visible;
  BookCan.Enabled := (Dm_sal.QArresv.Fieldbyname('STRNO').Asstring <> '');
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit3.Text <> '');

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
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBImageCombobox) and (TcxDBImageCombobox(Components[n]).Tag = 0) then
      begin
        TcxDBImageCombobox(Components[n]).Properties.Readonly := True;
        TcxDBImageCombobox(Components[n]).Style.Color := clBtnFace;
      end;
    end;
  end
  else if (DataSource1.Dataset.State in DsEditmodes) and (Dm_sal.QArresv.Fieldbyname('STRNO').Asstring = '') then
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
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBImageCombobox) and (TcxDBImageCombobox(Components[n]).Tag = 0) then
      begin
        TcxDBImageCombobox(Components[n]).Properties.Readonly := False;
        TcxDBImageCombobox(Components[n]).Style.Color := clWhite;
      end;
    end;
  end
  else if (DataSource1.Dataset.State = DsEdit) and (Dm_sal.QArresv.Fieldbyname('STRNO').Asstring <> '') then
  begin
    DBMemo1.Properties.Readonly := False;
    DBMemo1.Style.Color := clWhite;
    cxDBTextEdit1.Properties.ReadOnly := True;
  end;

  if (DataSource1.DataSet.State = DsEdit) then
  begin
    DBCust.Properties.ReadOnly := True;
    DBCust.Style.Color := clBtnFace;
    DBEdit13.Properties.ReadOnly := True;
    DBEdit13.Style.Color := clBtnFace;
    dbSales.Properties.ReadOnly := True;
    dbSales.Style.Color := clBtnFace;
    cxDBTextEdit1.Properties.ReadOnly := True;
    cxDBTextEdit2.Properties.ReadOnly := True;
  end;

  if not (Dm_SAL.QDbConfig.Active) then
    Dm_SAL.QDbConfig.Open;
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBResvDt.Enabled := (SFMain.XChgdate = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBEdit3.Properties.Readonly := Dm_SAL.QDbConfig.FieldByName('R_RESV').Asstring = 'Y';
  if DBEdit3.Properties.Readonly then
    DBEdit3.Style.Color := clBtnFace
  else
  begin
    DBEdit3.Style.Color := clWhite;
    DBEdit6.Properties.Readonly := True;
    DBEdit6.Style.Color := clBtnFace;
  end;
end;

procedure TFArresv.InsBtnClick(Sender: TObject);
begin
  if not (DM_SAL.QDbConfig.Active) then
    Dm_sal.QDbConfig.Open;
  begin
    Dm_sal.XRunResv := Dm_sal.QDbConfig.FieldByName('R_RESV').Asstring;
    Dm_sal.XRunTax := Dm_sal.QDbConfig.FieldByName('R_TXRESV').Asstring;
  end;
  DM01.Do_With_Query(actInsert, Dm_sal.QArresv, 'SELECT * FROM ARRESV WHERE RESVNO =:0', ['']);
  DM01.Do_With_Query(actOpen, Dm_sal.QInvResv, 'SELECT RESVDT,RESVNO,STRNO,MODEL,BAAB,COLOR,STAT,TYPE,FLAG,CRLOCAT,CURSTAT FROM INVTRAN  WHERE STRNO = :0 ', ['']);
  DBCust.Setfocus;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
end;

procedure TFArresv.DelBtnClick(Sender: TObject);
begin
  if Dm_sal.QArresv.FieldByName('FLCANCLE').AsString = 'C' then
    SFMain.RaiseException('เอกสารยกเลิกอยู่แล้ว..!');

  if DBEdit3.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        if (Dm_sal.QArresv.FieldByName('STRNO').AsString <> '') then
          SFMain.RaiseException('กรุณายกเลิกการระบุเลขตัวถังก่อน...!');
        if (Dm_sal.QArresvSmpay.Asfloat + Dm_sal.QArresvSmchq.Asfloat) =
          (Dm_sal.QArresvRESPAY.Asfloat) then
          SFMain.RaiseException('มีการรับชำระเงินจองแล้ว');
        if Dm_sal.QArresvFLRESON.AsString = '' then
          SFMain.RaiseException('กรุณาเลือกสาเหตุการยกเลิกก่อน...!');

       {ยกเลิก tax}
        with Query2 do
        begin
          close;
          sql.clear;
          sql.add('update TAXTRAN set flag = ''C'',candt =:date1,flcancl =:edit1 WHERE TAXNO =:TAXNO ');
          params[0].AsDateTime := Date;
          params[1].AsString := SFMain.XUser_id;
          params[2].asstring := DBEdit4.Text;
          execSql;
        end;

        Dm_sal.QArresv.Edit;
        Dm_sal.QArresv.FieldByName('FLCANCLE').AsString := 'C';
        Dm_sal.QArresv.FieldByName('FLID').AsString := SFMain.Xuser_ID;
        Dm_sal.QArresv.FieldByName('FLDT').AsDateTime := Now;
       // Dm_sal.QArresv.FieldByName('TRESVNO').AsString :='';
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_1', 'DELETE', DBEdit3.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

        Dm_sal.QArresv.Post;
      end;
  end;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
end;

procedure TFArresv.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SFMain.XChgloc = 'Y' then
    Searchsale.XLocat := ''
  else
    Searchsale.XLocat := SFMain.Xlocat;
  if SearchSale.ShowModalRESV = Mrok then
  begin
    Dm01.Do_With_Query(actOpen, Dm_Sal.QArresv, 'SELECT * FROM ARRESV WHERE RESVNO =:0', [SearchSale.KeyNo]);
  end;
end;

procedure TFArresv.SavBtnClick(Sender: TObject);
begin
  DBMemo1.SetFocus;

  if Dm_sal.QArresv.state in [Dsinsert, Dsedit] then
    if Dm_sal.QArresv.FieldByName('RESPAY').AsFloat = 0 then
      SFMain.RaiseException('ยอดจองเป็น 0 กรุณาตรวจสอบ...!');
  if Dm_sal.QArresv.FieldByName('CUSCOD').AsString = '' then
    SFMain.RaiseException('กรุณาบันทึกรหัสลูกค้า..!');
  if Dm_sal.QArresv.FieldByName('RECVCD').AsString = '' then
    SFMain.RaiseException('กรุณาบันทึกรหัสผู้รับจอง...!');

  Dm_sal.QArresv.Post;

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_1', 'INSERT', DBEdit3.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_1', 'EDIT', DBEdit3.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

  if not (Dm01.QCondpay.Active) then
    Dm01.QCondpay.Open;
  if (Xtaxno = '') and (Dm01.QCondpay.FieldByName('Resvtx').Asstring = 'Y') then
  begin
    Application.CreateForm(TFResv11, FResv11);
    FResv11.XResvno := S;
    if Duplicate2 then
    begin
      FResv11.Showmodal;
    end;
  end;

  with Dm_sal.QArresv do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM ARRESV WHERE RESVNO=:EDIT1');
    Params[0].Asstring := S;
    open;
  end;

  with Dm_sal.QInvResv do
  begin
    close;
    sql.clear;
    sql.add('SELECT RESVDT,RESVNO,STRNO,TYPE,MODEL,BAAB,COLOR,CC,STAT, ' +
      'FLAG,CRLOCAT,CURSTAT FROM INVTRAN ' +
      'WHERE STRNO = :XSTRNO');
    Params[0].asstring := Dm_sal.QArresv.FieldByName('Strno').Asstring;
    OPEN;
  end;
end;

procedure TFArresv.CancBtnClick(Sender: TObject);
begin
  Dm_sal.QArresv.cancel;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
end;

procedure TFArresv.CloseBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFArresv.PrnBtnClick(Sender: TObject);
begin
  if cxRadioGroup1.ItemIndex = 0 then
    DM_Sec.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnReserv.fr3', '1')
  else
    DM_Sec.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnTaxResv.fr3', '1');
end;

procedure TFArresv.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F7 then
    EnqBtnClick(Sender);
  if Key = VK_F2 then
    SavBtnClick(Sender);
  if (Key = VK_F8) and (Delbtn.Visible = true) then
    DelBtnClick(Sender);
  if Key = VK_F5 then
    InsBtnClick(Sender);
  if Key = VK_F6 then
    PrnBtnClick(Sender);
end;

procedure TFArresv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DataSource1.State in DsEditmodes then
    SFMain.RaiseException('กรุณาออกจากระบบตามขั้นตอน...!');

  Dm_Sal.QArresv.Close;
  FArresv := nil;
  Action := Cafree;
end;

procedure TFArresv.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//   IF UPPERCASE(NAME)='BAHTTEXT' THEN
//      BEGIN
//         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//         VAL := SFMain.n2wBill.Text;
//   END;
//   IF UPPERCASE(NAME)='DATETOTHAI' THEN
//      VAL := SFMain.DateToThai(FRPARSER.Calc(P1),FRPARSER.Calc(P2));
end;

procedure TFArresv.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PRESVNO' then
    Value := DBEDit3.Text;
  if UpperCase(VarName) = 'PTAXNO' then
    Value := DBEDit4.Text;
end;

procedure TFArresv.FormShow(Sender: TObject);
begin
  if not (Dm_sal.QDbConfig.Active) then
    Dm_sal.QDbConfig.Open;
  begin
    Dm_sal.XRunResv := Dm_sal.QDbConfig.FieldByName('R_RESV').Asstring;
    Dm_sal.XRunTax := Dm_sal.QDbConfig.FieldByName('R_TXRESV').Asstring;
  end;
  with Dm_sal.QArresv do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM ARRESV WHERE RESVNO='''' ');
    open;
  end;
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM TRESERV  WHERE RESVNO ='''' ');
    open;
  end;
  if not (Query1.Eof) and (Query1.Bof) then
  begin
    Dm_sal.QArresv.FieldByName('TRESVNO').AsString := Query1.fieldbyname('RESVNO').AsString;
    Dm_sal.QArresv.FieldByName('VATRT').AsString := Query1.Fieldbyname('VATRT').AsString;
    Dm_sal.QArresv.FieldByName('CUSCOD').AsString := Query1.fieldbyname('CUSCOD').AsString;
    Dm_sal.QArresv.FieldByName('RECVCD').AsString := Query1.fieldbyname('RESCOD').AsString;
    Dm_sal.QArresv.FieldByName('SALCOD').AsString := Query1.fieldbyname('SALCOD').AsString;
    Dm_sal.QArresv.FieldByName('GRPCOD').AsString := Query1.fieldbyname('GRPCOD').AsString;
    Dm_sal.QArresv.FieldByName('TYPE').AsString := Query1.fieldbyname('TYPE').AsString;
    Dm_sal.QArresv.FieldByName('MODEL').AsString := Query1.fieldbyname('MODEL').AsString;
    Dm_sal.QArresv.FieldByName('BAAB').AsString := Query1.fieldbyname('BAAB').AsString;
    Dm_sal.QArresv.FieldByName('CC').AsString := Query1.fieldbyname('CC').AsString;
    Dm_sal.QArresv.FieldByName('COLOR').AsString := Query1.fieldbyname('COLOR').AsString;
    Dm_sal.QArresv.FieldByName('PRICE').AsFloat := Query1.fieldbyname('TOTPRC').AsFloat;
    Dm_sal.QArresv.FieldByName('RESPAY').AsFloat := Query1.fieldbyname('TOTPRES').AsFloat;
  end;
  with Dm_sal.QInvResv do
  begin
    close;
    sql.clear;
    sql.add('SELECT RESVDT,RESVNO,STRNO,MODEL,BAAB,COLOR,STAT,TYPE, ' +
      'FLAG,CRLOCAT,CURSTAT FROM INVTRAN ' +
      'WHERE STRNO = :XSTRNO');
    Params[0].asstring := '';
    open;
  end;
end;

procedure TFArresv.DBCustChange(Sender: TObject);
begin
  Dm01.Do_With_Query(actOpen, Dm_sal.QCustRes, 'SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST WHERE CUSCOD=:0', [DBCust.Text]);
  Edit1.Text := Dm_sal.QCustRes.FieldByName('SNAM').Asstring +
    Dm_sal.QCustRes.FieldByName('NAME1').Asstring + '  ' +
    Dm_sal.QCustRes.Fieldbyname('NAME2').AsString;
end;

procedure TFArresv.DBEdit13Change(Sender: TObject);
begin
  with Dm_sal.Query1 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT CODE,NAME FROM OFFICER ' +
      'WHERE CODE=:Var0');
    Params[0].Asstring := DBEdit13.text;
    open;
    if not (eof and BOF) then
    begin
      Edit2.Text := FieldByName('NAME').Asstring;
    end
    else
    begin
      Edit2.Text := '';
    end;
  end;
end;

procedure TFArresv.RzBitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TSearchSale, SearchSale);
//   SearchSale.XFlag := 'Y';
  if SearchSale.ShowModalResvOpt = MrOk then
  begin
    Dm_sal.QArresv.FieldByName('TRESVNO').AsString := SearchSale.Keyno;
    Dm_sal.QArresv.FieldByName('CUSCOD').AsString := SearchSale.HQuery1.fieldbyname('CUSCOD').AsString;
    Dm_sal.QArresv.FieldByName('RECVCD').AsString := SearchSale.HQuery1.fieldbyname('RESCOD').AsString;
    Dm_sal.QArresv.FieldByName('SALCOD').AsString := SearchSale.HQuery1.fieldbyname('SALCOD').AsString;
    Dm_sal.QArresv.FieldByName('GRPCOD').AsString := SearchSale.HQuery1.fieldbyname('GRPCOD').AsString;
    Dm_sal.QArresv.FieldByName('TYPE').AsString := SearchSale.HQuery1.fieldbyname('TYPE').AsString;
    Dm_sal.QArresv.FieldByName('MODEL').AsString := SearchSale.HQuery1.fieldbyname('MODEL').AsString;
    Dm_sal.QArresv.FieldByName('BAAB').AsString := SearchSale.HQuery1.fieldbyname('BAAB').AsString;
    Dm_sal.QArresv.FieldByName('CC').AsString := SearchSale.HQuery1.fieldbyname('CC').AsString;
    Dm_sal.QArresv.FieldByName('COLOR').AsString := SearchSale.HQuery1.fieldbyname('COLOR').AsString;
    Dm_sal.QArresv.FieldByName('PRICE').AsFloat := SearchSale.HQuery1.fieldbyname('TOTPRC').AsFloat;
  end;
end;

procedure TFArresv.dbSalesChange(Sender: TObject);
begin
  Dm01.Do_With_Query(actOpen, Dm_sal.Query1, 'SELECT CODE,NAME FROM OFFICER WHERE CODE=:0', [dbSales.Text]);
  Edit3.Text := Dm_sal.Query1.fieldbyname('NAME').AsString;
end;

procedure TFArresv.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if (Dm_sal.QArresvFlCANCLE.Value = 'C') and (DataSource1.State <> Dsinsert) then
    Label27.caption := 'Canceled ***'
  else
    Label27.caption := '';
end;

procedure TFArresv.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetLocat = Mrok then
    Dm_sal.QArresv.Fieldbyname('LOCAT').Asstring := SearchSet.Keyno;
end;

procedure TFArresv.DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalCuscod = Mrok then
  begin
    Dm_sal.QArresv.Fieldbyname('CUSCOD').Asstring := SearchSale.Keyno;
    with Dm_sal.Query1 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST ' +
        'WHERE CUSCOD=:Var0');
      Params[0].Asstring := Dm_sal.QArresv.Fieldbyname('CUSCOD').Asstring;
      open;
      if not (eof and BOF) then
      begin
        Edit1.Text := FieldByName('SNAM').Asstring +
          FieldByName('NAME1').Asstring + '  ' +
          Fieldbyname('NAME2').ASSTRING;
      end
      else
      begin
        Edit1.Text := '';
      end;
    end;
  end;
end;

procedure TFArresv.DBEdit13PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetOfficer = Mrok then
  begin
    Dm_sal.QArresv.Fieldbyname('RECVCD').Asstring := SearchSet.Keyno;
    with Dm_sal.Query1 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CODE,NAME FROM OFFICER ' +
        'WHERE CODE=:Var0');
      Params[0].Asstring := Dm_sal.QArresv.Fieldbyname('RECVCD').Asstring;
      open;
      if not (eof and BOF) then
      begin
        Edit2.Text := FieldByName('NAME').Asstring;
      end
      else
      begin
        Edit2.Text := '';
      end;
    end;
  end;
end;

procedure TFArresv.dbSalesPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetOfficer = Mrok then
  begin
    Dm_sal.QArresv.Fieldbyname('SALCOD').Asstring := SearchSet.Keyno;
    with Dm_sal.Query1 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CODE,NAME FROM OFFICER ' +
        'WHERE CODE=:Var0');
      Params[0].Asstring := Dm_sal.QArresv.Fieldbyname('SALCOD').Asstring;
      open;
      if not (eof and BOF) then
      begin
        Edit3.Text := FieldByName('NAME').Asstring;
      end
      else
      begin
        Edit3.Text := '';
      end;
    end;
  end;
end;

procedure TFArresv.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSL', 'HDSL01_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFArresv.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchset, Searchset);
  if Searchset.ShowModalsetReson = MrOk then
    Dm_sal.QArresv.FieldByName('FLRESON').AsString := Searchset.Keyno;
end;

procedure TFArresv.DBMemo1Exit(Sender: TObject);
begin
  FArresv.KeyPreview := True;
end;

procedure TFArresv.DBMemo1Click(Sender: TObject);
begin
  FArresv.KeyPreview := False;
end;

procedure TFArresv.DBEdit11Change(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM SETRESON WHERE RESONCD=:0');
    params[0].AsString := DBEdit11.Text;
    open;
    Edit5.Text := fieldbyname('RESNDES').AsString;
  end;
end;

procedure TFArresv.atEditExecute(Sender: TObject);
begin
  if cxRadioGroup1.ItemIndex = 0 then
    DM_Sec.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnReserv.fr3', '2')
  else
    DM_Sec.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnTaxResv.fr3', '2');
end;

procedure TFArresv.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Dm_sal.QArresvSdate.Asstring <> '' then
    SFMain.RaiseException('ใบจองนี้ถูกตัดขายไปแล้ว ');

  Application.Createform(TSearchSale, SearchSale);
  SearchSale.Xflg := 'D';
  if SearchSale.ShowModalStrno = Mrok then
  begin
    with Dm_sal.QInvResv do
    begin
      close;
      sql.clear;
      sql.add('SELECT RESVDT,RESVNO,STRNO,TYPE,MODEL,BAAB,COLOR,CC,STAT, ' +
        'FLAG,CRLOCAT,CURSTAT,GCODE,STDPRC FROM INVTRAN ' +
        'WHERE STRNO = :XSTRNO');
      Params[0].asstring := SearchSale.Keyno;
      OPEN;
      if not (Dm_sal.QInvResv.eof and Dm_sal.QInvResv.bof) then
      begin
        if Dm_sal.QInvResv.FieldByName('CURSTAT').Asstring = 'R' then
          SFMain.RaiseException('รถคันนี้ถูกจองแล้ว');
        if Dm_sal.QInvResv.FieldByName('CRLOCAT').Asstring <>
          Dm_sal.QArresv.FieldByName('LOCAT').Asstring then
          SFMain.RaiseException('ระบุรถที่จองต่างสาขาไม่ได้');
        if Dm_sal.QInvResv.FieldByName('FLAG').Asstring = 'C' then
          SFMain.RaiseException('รถคันนี้ถูกขายไปแล้ว');

        Dm_sal.QInvResv.Edit;
        Dm_sal.QInvResv.Fieldbyname('CURSTAT').asstring := 'R';
        Dm_sal.QInvResv.Fieldbyname('RESVDT').asDatetime := Dm_sal.QArresvResvdt.Asdatetime;
        Dm_sal.QInvResv.Fieldbyname('RESVNo').asstring := Dm_sal.QArresvResvNo.Asstring;

        Dm_sal.QArresvGRPCOD.Asstring := Dm_sal.QInvResv.FieldByName('GCODE').Asstring;
        Dm_sal.QArresvType.Asstring := Dm_sal.QInvResv.FieldByName('TYPE').Asstring;
        Dm_sal.QArresvModel.Asstring := Dm_sal.QInvResv.FieldByName('Model').Asstring;
        Dm_sal.QArresvBaab.Asstring := Dm_sal.QInvResv.FieldByName('Baab').Asstring;
        Dm_sal.QArresvColor.Asstring := Dm_sal.QInvResv.FieldByName('Color').Asstring;
        Dm_sal.QArresvStat.Asstring := Dm_sal.QInvResv.FieldByName('Stat').Asstring;
        Dm_sal.QArresvPRICE.AsFloat := Dm_sal.QInvResv.FieldByName('STDPRC').AsFloat;

        Dm_sal.QInvResv.Post;

        if Dm_sal.QArresv.State = DsBrowse then
          Dm_sal.QArresv.Edit;
        Dm_sal.QArresvStrno.Asstring := Dm_sal.QInvResv.Fieldbyname('STRNO').Asstring;
      end;
    end;
  end;
end;

procedure TFArresv.DBEdit25PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetgrp = Mrok then
    Dm_sal.QArresv.Fieldbyname('GRPCOD').Asstring := SearchSet.Keyno;
end;

procedure TFArresv.DBEdit21PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalType = Mrok then
    Dm_sal.QArresv.Fieldbyname('TYPE').Asstring := SearchSet.Keyno;
end;

procedure TFArresv.DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalBaab = Mrok then
    Dm_sal.QArresv.Fieldbyname('BAAB').Asstring := SearchSet.Keyno;
end;

procedure TFArresv.DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalModel = Mrok then
    Dm_sal.QArresv.Fieldbyname('MODEL').Asstring := SearchSet.Keyno;
end;

procedure TFArresv.DBEdit24PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalColor = Mrok then
    Dm_sal.QArresv.Fieldbyname('Color').Asstring := SearchSet.Keyno;
end;

procedure TFArresv.FldCombo6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetFinmst = Mrok then
    Dm_sal.QArresv.Fieldbyname('FINCOD').Asstring := SearchSet.Keyno;
end;

procedure TFArresv.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetOfficer = Mrok then
    Dm_sal.QArresv.Fieldbyname('OFFCODE').Asstring := SearchSet.Keyno;
end;

procedure TFArresv.cxDBRadioGroup1PropertiesChange(Sender: TObject);
begin
  Label21.Enabled := cxDBRadioGroup1.ItemIndex = 2;
  cxDBDateEdit1.Enabled := cxDBRadioGroup1.ItemIndex = 2;
end;

procedure TFArresv.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
 // if SFMain.XChgloc= 'Y' then Searchsale.XLocat := '' else Searchsale.XLocat := SFMain.Xlocat;
  SearchSale.ResvSale := ' AND SDATE IS NULL AND FLCANCLE <>''C'' ';
  if SearchSale.ShowModalResv = Mrok then
    Dm_sal.QArresv.Fieldbyname('REFRESVNO').Asstring := SearchSale.Keyno;
end;

end.

