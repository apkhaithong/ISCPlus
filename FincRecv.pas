unit FincRecv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Mask, DBCtrls, StdCtrls, Grids, DBGrids, DB, ExtCtrls, Dbkbd,
  ComCtrls, ImgList, ToolWin, ActnList, n2wMoney, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit,
  cxImageComboBox, RzDbkbd, cxTextEdit, AdvGlowButton, AdvToolBar, cxMemo,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxContainer, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, AdvOfficeStatusBar, RzLabel, cxLabel,
  cxPC, cxCurrencyEdit, cxCheckBox, cxLookAndFeelPainters, cxGroupBox, AdvPanel,
  cxLookAndFeels, dxDateRanges, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, dxStatusBar,
  cxRadioGroup, frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl,
  frxFDComponents, frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  THandle = Integer;

  TFincForm1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label12: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    FldEdit4: TcxDBTextEdit;
    DBTbmDt: TcxDBDateEdit;
    DBLocat: TcxDBButtonEdit;
    DBCust: TcxDBButtonEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    DBMemo1: TcxDBMemo;
    Runbill: TAdvGlowButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3PAYFOR: TcxGridDBColumn;
    cxGridDBTableView3CONTNO: TcxGridDBColumn;
    cxGridDBTableView3PAYAMT: TcxGridDBColumn;
    cxGridDBTableView3PAYINT: TcxGridDBColumn;
    cxGridDBTableView3VATRTPAY: TcxGridDBColumn;
    cxGridDBTableView3DISCT: TcxGridDBColumn;
    cxGridDBTableView3NETPAY: TcxGridDBColumn;
    cxGridDBTableView3DIVICOD: TcxGridDBColumn;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PAYFOR: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid3DBTableView2: TcxGridDBTableView;
    cxGrid3DBTableView2PAYCODE: TcxGridDBColumn;
    cxGrid3DBTableView2CHQNO: TcxGridDBColumn;
    cxGrid3DBTableView2DTONCHQ: TcxGridDBColumn;
    cxGrid3DBTableView2BANKBOOKCOD: TcxGridDBColumn;
    cxGrid3DBTableView2BANKLOCAT: TcxGridDBColumn;
    cxGrid3DBTableView2AMOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1PAYFOR: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid2DBTableView1AMOUNT: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    cxGridLevel3: TcxGridLevel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxGroupBox1: TcxGroupBox;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    DBEdit4: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    qrPayfor: TFDQuery;
    DataSource4: TDataSource;
    DBkbd1: TRzDBkbd;
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
    PrintBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    tbCrtTax: TAdvGlowButton;
    RadioGroup1: TcxRadioGroup;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    ActionList1: TActionList;
    acDesigner: TAction;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure EnqBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RunbillClick(Sender: TObject);
    procedure ArBtnClick(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure DBLocatChange(Sender: TObject);
    procedure DBCustChange(Sender: TObject);
    procedure DBCustExit(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure cxGridDBTableView3DIVICODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView3CONTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView3PAYFORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid2DBTableView1PAYFORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1PAYFORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure acDesignerExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    ActiveT: TFDQuery;
    ActiveS: TDataSource;
    { Public declarations }
  end;

var
  FincForm1: TFincForm1;
  TmpS: TDataSet;
  NETKANG: DOUBLE;

implementation

uses
  Dmsec, DmFin01, Functn01, Srchset1, USoftFirm, Srchfin, Dm1, frBillMenu; //,OthDebt;
{$R *.DFM}

procedure TFincForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Dmfin.QChqmast.Active then
    Dmfin.QChqmast.Close;
  if Dmfin.QChqtran.Active then
    Dmfin.QChqtran.Close;
  Action := caFree;
  FincForm1 := nil;
end;

procedure TFincForm1.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (FldEdit4.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  PrintBtn.Visible := (DataSource1.State = Dsbrowse) and (FldEdit4.Text <> '');
  cxDBCheckBox1.Properties.ReadOnly := not SavBtn.Visible;

  cxGridDBTableView3.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGridDBTableView3.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGridDBTableView3.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  cxGrid2DBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid2DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid2DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  cxGridDBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGridDBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGridDBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  cxGrid3DBTableView2.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 1) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnFace;
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
    end;
  end
  else if DataSource1.Dataset.State = Dsinsert then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := false;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 1) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
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
    end;
  end
  else if (DataSource1.Dataset.State = DsEdit) then
  begin
    cxGridDBTableView3.NavigatorButtons.Insert.Enabled := False;
    cxGridDBTableView3.NavigatorButtons.Delete.Enabled := False;
    cxGridDBTableView3.NavigatorButtons.Append.Enabled := False;

    cxGrid2DBTableView1.OptionsData.Editing := True;
    cxGridDBTableView1.OptionsData.Editing := True;
    cxGrid3DBTableView2.OptionsData.Editing := True;
  end;
  if not Dm01.QDBConfig.Active then
    Dm01.QDBConfig.Open;
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBTbmDt.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);
  FldEdit4.Properties.Readonly := Dm01.QDbConfig.FieldByName('R_TMPBILL').Asstring = 'Y';
  if FldEdit4.Properties.Readonly then
    FldEdit4.Style.Color := clBtnFace
  else
    FldEdit4.Style.Color := clWhite;

   // cxGrid1DBTableView1PAYINT.Options.Editing := Dmfin.QChqmastPAYTYP.AsString = '90';
end;

procedure TFincForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  Runbill.Enabled := (DmFin.QChqMastBillno.Asstring = '') and (DmFin.QChqMastflag.Asstring <> 'C');
  if (DmFin.QChqMastFlag.Value = 'C') and (DataSource1.State <> Dsinsert) then
    Label14.caption := '*** ยกเลิก ***'
  else
    Label14.caption := '';
end;

procedure TFincForm1.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchfin, Searchfin);
  if Searchfin.ShowModalTmbill = Mrok then
  begin
    with DmFin.QChqMast do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQMAS WHERE TMBILL=:TMBILL AND LOCATRECV=:XlocatRecv ');
      Params[0].Asstring := Searchfin.Keyno;
      Params[1].AsString := SearchFin.HQuery1.fieldbyname('LOCATRECV').AsString;
      Open;
    end;
    with DmFin.QChqtran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN WHERE TMBILL=:TMBILL AND LOCATRECV=:XlocatRecv ');
      Params[0].Asstring := Searchfin.Keyno;
      Params[1].AsString := SearchFin.HQuery1.fieldbyname('LOCATRECV').AsString;
      Open;
    end;

    with DmFin.QChqtran_Oth do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN_OTH WHERE TMBILL=:TMBILL ');
      Params[0].Asstring := Searchfin.Keyno;
      Open;
    end;

    with DmFin.QChqtran_Dec do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN_DEC WHERE TMBILL=:TMBILL ');
      Params[0].Asstring := Searchfin.Keyno;
      Open;
    end;

    with DmFin.QChqtran_Typ do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CHQTRAN_TYP WHERE TMBILL=:TMBILL ');
      Params[0].Asstring := Searchfin.Keyno;
      Open;
    end;
    qrPayfor.Close;
    qrPayfor.Open;
  end;
end;

procedure TFincForm1.DelBtnClick(Sender: TObject);
begin
  if DmFin.QChqMastFlag.Value = 'C' then
    SFMain.RaiseException('ใบรับชั่วคราวใบนี้ถูกยกเลิกแล้ว');
  if DmFin.QChqMastFlag.Value = 'B' then
    SFMain.RaiseException('เช็คใบนี้ได้ Payin แล้ว');
  if DmFin.QChqMastFlag.Value = 'P' then
    SFMain.RaiseException('เช็คใบนี้ผ่าน แล้ว');

  if DmFin.QChqMastPOSTGL.AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN01_1', 'CANCEL', DBEdit11.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        DmFin.CancelTmbill;
      end;
  end;
end;

procedure TFincForm1.SavBtnClick(Sender: TObject);
begin
  if (DmFin.QChqTran.eof and DmFin.QChqTran.bof) then
    SFMain.RaiseException('กรุณาป้อนข้อมูลให้ครบถ้วน');

  DmFin.QChqTran_Oth.DisableControls;
  DmFin.QChqTran_Oth.First;
  while not (DmFin.QChqTran_Oth.Eof) do
  begin
    if (DmFin.QChqTran_OthAMOUNT.Asfloat <= 0) then
      DmFin.QChqTran_Oth.Delete
    else
      DmFin.QChqTran_Oth.Next;
  end;
  DmFin.QChqTran_Oth.EnableControls;

  DmFin.QChqTran_Dec.DisableControls;
  DmFin.QChqTran_Dec.First;
  while not (DmFin.QChqTran_Dec.Eof) do
  begin
    if (DmFin.QChqTran_DecAMOUNT.Asfloat <= 0) then
      DmFin.QChqTran_Dec.Delete
    else
      DmFin.QChqTran_Dec.Next;
  end;
  DmFin.QChqTran_Dec.EnableControls;

  DmFin.QChqTran_Typ.DisableControls;
  DmFin.QChqTran_Typ.First;
  while not (DmFin.QChqTran_Typ.Eof) do
  begin
    if (DmFin.QChqTran_TypPAYCODE.AsString = '02') then
    begin
      if DmFin.QChqTran_TypCHQNO.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดเลขที่เช็ค..!');
    end;

    if (DmFin.QChqTran_TypPAYCODE.AsString = '10') then
    begin
      if DmFin.QChqTran_TypBANKBOOKCOD.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดรหัสธนาคาร..!');
    end;

    if (DmFin.QChqTran_TypAMOUNT.Asfloat <= 0) then
      DmFin.QChqTran_Typ.Delete
    else
      DmFin.QChqTran_Typ.Next;
  end;
  DmFin.QChqTran_Typ.EnableControls;

  if DmFin.QChqTran_Typ.RecordCount = 0 then
  begin
    cxGrid3DBTableView2.Focused := True;
    DmFin.QChqTran_Typ.Append;
    SFMain.RaiseException('กรุณาบันทึกข้อมูลให้ครบก่อนบันทึก..!');
  end;

  if DmFin.XCount > 1 then
    SFMain.RaiseException('บันทึกข้อมูลไม่ได้เพราะมีรายการซ้ำ');

  if (DmFin.QChqTran.State in Dseditmodes) and (DmFin.QChqtranNetPay.Asfloat > 0) then
    DmFin.QChqTran.Post;

  if (DmFin.QChqTran_oth.State in Dseditmodes) and (DmFin.QChqTran_othAmount.Asfloat > 0) then
    DmFin.QChqTran_oth.Post;

  if (DmFin.QChqTran_dec.State in Dseditmodes) and (DmFin.QChqTran_decAmount.Asfloat > 0) then
    DmFin.QChqTran_dec.Post;

  if (DmFin.QChqTran_typ.State in Dseditmodes) and (DmFin.QChqTran_typAmount.Asfloat > 0) then
    DmFin.QChqTran_typ.Post;
  //
  DmFin.QChqMast.Post;

  if DmFin.QChqMast.Fieldbyname('BILLNO').asstring = '' then
  begin
    DmFin.RunBill;
    if (DmFin.QBillmas.FieldByName('BILLNO').Asstring <> '')
      and (DmFin.RB = 'Y') then
    begin
      DmFin.QChqmast.Edit;
      DmFin.QChqmastBILLNO.Asstring := DmFin.QBillmas.FieldByName('BILLNO').Asstring;
      DmFin.QChqmastBILLDT.Asdatetime := DmFin.QBillmas.FieldByName('BILLDT').Asdatetime;
      if not ((DmFin.QChqMast.Fieldbyname('Taxno').asstring = '') and
        (DmFin.QChqMast.Fieldbyname('Taxfl').asstring = 'Y')) or (DmFin.XVatamt = 0) then
        DmFin.QChqmast.Post;
    end;
  end;
  //
  if (DmFin.QChqMast.Fieldbyname('Taxno').asstring = '') and
    (DmFin.QChqMast.Fieldbyname('Taxfl').asstring = 'Y') then
  begin
    DmFin.RunTaxno;
    if (DmFin.Qtaxtran.FieldByName('TAXNO').Asstring <> '') then
    begin
      //
      Dmfin.QChqtran.First;
      while not (Dmfin.QChqtran.Eof) do
      begin
        Dmfin.QChqtran.Edit;
        DmFin.QChqtranTAXNO.Asstring := DmFin.QTaxtran.FieldByName('TAXNO').Asstring;
        Dmfin.QChqtran.Next;
      end;
      //
      DmFin.QChqmast.Edit;
      DmFin.QChqmastTAXNO.Asstring := DmFin.QTaxtran.FieldByName('TAXNO').Asstring;
      DmFin.QChqmast.Post;
      //---Update Taxno in Arpay---
    end;
  end;
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN01_1', 'INSERT', DBEdit11.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDFIN01_1', 'EDIT', DBEdit11.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TFincForm1.CancBtnClick(Sender: TObject);
begin
  DmFin.QChqMast.Cancel;
end;

procedure TFincForm1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDFIN', 'HDFIN01_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFincForm1.RunbillClick(Sender: TObject);
begin
  if DmFin.QChqmast.Fieldbyname('BILLNO').Asstring = '' then
    if MessageDlg('ต้องการ ReRun ใบเสร็จรับเงิน ?', mtconfirmation, [mbOk, mbcancel], 0) = mrok then
    begin
    {DmFin.QChqTran_Typ.DisableControls ;
    DmFin.QChqTran_Typ.First ;
    while not(DmFin.QChqTran_Typ.Eof) Do
      Begin
        if (DmFin.QChqTran_TypPAYCODE.AsString = '02') then
        SFMain.RaiseException('เป็นการรับด้วยเช็ค');
      End;
    DmFin.QChqTran_Typ.EnableControls ;  }

      if DmFin.QChqtran.RecordCount = 0 then
        sfmain.RaiseException('ยังไม่บันทึกรายการ..!');

      if DmFin.QChqmastPAYTYP.Asstring = '02' then
        SFMain.RaiseException('เป็นการรับด้วยเช็ค');
      DmFin.RunBill;
      DmFin.QChqmast.Edit;
      DmFin.QChqmastBILLNO.Asstring := DmFin.QBillmas.FieldByName('BILLNO').Asstring;
      DmFin.QChqmastBILLDT.Asdatetime := DmFin.QBillmas.FieldByName('BILLDT').Asdatetime;
      DmFin.QChqmast.Post;
    end;
end;

procedure TFincForm1.ArBtnClick(Sender: TObject);
begin
{  Application.CreateForm(TDebtForm1,DebtForm1);
  DebtForm1.XCuscod := DBCust.Text;
  DebtForm1.ShowModal;     }
end;

procedure TFincForm1.DataSource2DataChange(Sender: TObject; Field: TField);
begin
 // DBPayby.Enabled :=(Dmfin.QChqtran.Bof and Dmfin.QChqtran.Eof);
//  DBCust.Enabled :=(Dmfin.QChqtran.Bof and Dmfin.QChqtran.Eof);
end;

procedure TFincForm1.FormShow(Sender: TObject);
begin
  PrintBtn.Visible := SFMain.XReprint = 'Y';
  with DmFin.QChqMast do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQMAS WHERE TMBILL = '''' AND LOCATRECV = '''' ');
    Open;
  end;
  with DmFin.QChqtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN WHERE TMBILL = '''' AND LOCATRECV = '''' ');
    Open;
  end;
  with DmFin.QChqtran_oth do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN_OTH WHERE TMBILL = '''' ');
    Open;
  end;
  with DmFin.QChqtran_Dec do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN_DEC WHERE TMBILL = '''' ');
    Open;
  end;
  with DmFin.QChqtran_Typ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN_TYP WHERE TMBILL = '''' ');
    Open;
  end;
end;

procedure TFincForm1.InsBtnClick(Sender: TObject);
begin
  with DmFin.QChqMast do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQMAS WHERE TMBILL = '''' AND LOCATRECV = '''' ');
    Open;
    INSERT;
  end;

  with DmFin.QChqtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN WHERE TMBILL = '''' AND LOCATRECV = '''' ');
    Open;
  end;

  with DmFin.QChqtran_oth do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN_OTH WHERE TMBILL = '''' ');
    Open;
  end;

  with DmFin.QChqtran_Dec do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN_DEC WHERE TMBILL = '''' ');
    Open;
  end;

  with DmFin.QChqtran_Typ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CHQTRAN_TYP WHERE TMBILL = '''' ');
    Open;
  end;

  cxGridDBTableView3.Focused := not cxGridDBTableView3.Focused;
end;

procedure TFincForm1.PrintBtnClick(Sender: TObject);
begin
  if FldEdit4.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');

  if Radiogroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Tmpbill.fr3', '1')
 {1 = Preview Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnBill.fr3', '1'); {1 = Preview Report}
end;

procedure TFincForm1.DBLocatChange(Sender: TObject);
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

procedure TFincForm1.DBCustChange(Sender: TObject);
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

procedure TFincForm1.DBCustExit(Sender: TObject);
begin
  if (DmFin.QChqtranCuscod.Asstring <> '') and
    (DmFin.Query1.FieldByName('CUSCOD').Asstring <> DmFin.QChqtranCuscod.Asstring) then
    SFMain.RaiseException('รหัสลูกค้าไม่ถูกต้อง');
end;

procedure TFincForm1.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F2) and (SavBtn.Visible) then
    SavBtnClick(Sender);
  if (Key = VK_F5) and (InsBtn.Visible) then
    InsBtnClick(Sender);
  if (Key = VK_F6) and (PrintBtn.Visible) then
    PrintBtnClick(Sender);
  if (Key = VK_F7) and (EnqBtn.Visible) then
    EnqBtnClick(Sender);
  if (Key = VK_F8) and (Delbtn.Visible) then
    DelBtnClick(Sender);
end;

procedure TFincForm1.DBMemo1Click(Sender: TObject);
begin
  FincForm1.KeyPreview := False;
end;

procedure TFincForm1.DBMemo1Exit(Sender: TObject);
begin
  FincForm1.KeyPreview := True;
end;

procedure TFincForm1.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    DmFin.QChqMast.FieldByname('LOCATRECV').Asstring := Searchset.Keyno;
end;

procedure TFincForm1.DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalCusmast = Mrok then
    DmFin.QChqMastCuscod.Asstring := Searchset.Keyno;
end;

procedure TFincForm1.CloseBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFincForm1.cxGridDBTableView3DIVICODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalDIVISION = Mrok then
    DmFin.QChqtran.FieldByname('DIVICOD').Asstring := Searchset.Keyno;
end;

procedure TFincForm1.cxGrid3DBTableView2PAYCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetPaytyp = Mrok then
  begin
    if (DmFin.QChqmast.state in Dseditmodes) and (DmFin.QChqtran_typ.State = Dsbrowse) then
      DmFin.QChqtran_Typ.Edit;
    DmFin.QChqtran_Typ.FieldByname('PAYCODE').Asstring := Searchset.Keyno;
  end;
end;

procedure TFincForm1.cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if DmFin.QChqtran_Typ.FieldByName('PAYCODE').AsString = '02' then
  begin
    Application.Createform(TSearchset, Searchset);
    if Searchset.ShowModalSetBank = Mrok then
    begin
      DmFin.QChqtran_Typ.Edit;
      DmFin.QChqtran_Typ.FieldByname('BANKBOOKCOD').Asstring := Searchset.Keyno;
    end;
  end
  else
  begin
    Application.CreateForm(TSearchset, Searchset);
    if Searchset.ShowModalBankbook = MrOk then
    begin
      DmFin.QChqtran_Typ.Edit;
      DmFin.QChqtran_Typ.FieldByName('BANKBOOKCOD').AsString := Searchset.Keyno;
      DmFin.QChqtran_Typ.FieldByName('BANKLOCAT').AsString := Searchset.HQuery1.fieldbyname('BANKLOCNAM').AsString;
    end;
  end;
end;

procedure TFincForm1.cxGridDBTableView3CONTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (DataSource1.DataSet.State = DsInsert) then
  begin
    if DmFin.QChqtranTsale.Asstring = 'T' then
    begin
      Application.Createform(TSearchset, Searchset);
      if Searchset.ShowModalCusmast = Mrok then
        DmFin.QChqtran.FieldByname('CONTNO').Asstring := Searchset.Keyno;
    end
    else
    begin
      Application.Createform(TSearchfin, Searchfin);
      Searchfin.XPayfor := DmFin.QChqtran.FieldByname('PAYFOR').Asstring;

      //--- เลือกประเภทการขาย ---


      if DmFin.QChqtranTsale.Asstring = 'C' then
        Searchfin.TypeCombo.ItemIndex := 0
      else if DmFin.QChqtranTsale.Asstring = 'F' then
        Searchfin.TypeCombo.ItemIndex := 1
      else if DmFin.QChqtranTsale.Asstring = 'O' then
        Searchfin.TypeCombo.ItemIndex := 3
      else if DmFin.QChqtranTsale.Asstring = 'R' then
        Searchfin.TypeCombo.ItemIndex := 4
      else if DmFin.QChqtranTsale.Asstring = 'X' then
        Searchfin.TypeCombo.ItemIndex := 5
      else      {If DmFin.QChqtranTsale.Asstring = 'I' Then
         Searchfin.TypeCombo.ItemIndex := 6
      Else
      If DmFin.QChqtranTsale.Asstring = 'J' Then
         Searchfin.TypeCombo.ItemIndex := 7
      Else }
if DmFin.QChqtranTsale.Asstring = 'A' then
        Searchfin.TypeCombo.ItemIndex := 2
      else if DmFin.QChqtranTsale.Asstring = '' then
        SFMain.RaiseException('ยังไม่ระบุประเภทการชำระค่า');


      //--- Show and retrive contno ---
      if Searchfin.ShowModalfinall = Mrok then
      begin
        if (DmFin.QChqtranTsale.Asstring = 'I') or (DmFin.QChqtranTsale.Asstring = 'J') then
          DmFin.QChqtran.FieldByname('CONTNO').Asstring := Searchfin.Keyno
        else
        begin
          DmFin.QChqtran.FieldByname('LOCATPAY').Asstring := Searchfin.HQuery1.Fieldbyname('LOCAT').Asstring;
          DmFin.QChqtran.FieldByname('CONTNO').Asstring := Searchfin.Keyno;
        end;
      end;
    end;
  end;
end;

procedure TFincForm1.cxGridDBTableView3PAYFORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (DataSource1.DataSet.State = DsInsert) then
  begin
    Application.Createform(TSearchset, Searchset);
    if Searchset.ShowModalSetPayfor = Mrok then
    begin
      if (DmFin.QChqmast.state in Dseditmodes) and (DmFin.QChqtran.State = Dsbrowse) then
        DmFin.QChqtran.Edit;
      DmFin.QChqtran.FieldByname('PAYFOR').Asstring := Searchset.Keyno;
    end;
  end;
end;

procedure TFincForm1.cxGrid2DBTableView1PAYFORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (DataSource1.DataSet.State in DsEditModes) then
  begin
    Application.Createform(TSearchset, Searchset);
    Searchset.XSysSet := 'N';
    if Searchset.ShowModalSetPayfor = Mrok then
    begin
      if (DmFin.QChqmast.state in Dseditmodes) and (DmFin.QChqtran_Oth.State = Dsbrowse) then
        DmFin.QChqtran_Oth.Edit;
      DmFin.QChqtran_Oth.FieldByname('PAYFOR').Asstring := Searchset.Keyno;
      DmFin.QChqtran_Oth.FieldByname('DESCRIPTION').Asstring := Searchset.HQuery1.fieldbyname('FORDESC').AsString;
    end;
  end;
end;

procedure TFincForm1.cxGrid1DBTableView1PAYFORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (DataSource1.DataSet.State in DsEditModes) then
  begin
    Application.Createform(TSearchset, Searchset);
    Searchset.XSysSet := 'N';
    if Searchset.ShowModalSetPayfor = Mrok then
    begin
      if (DmFin.QChqmast.state in Dseditmodes) and (DmFin.QChqtran_Dec.State = Dsbrowse) then
        DmFin.QChqtran_Dec.Edit;
      DmFin.QChqtran_Dec.FieldByname('PAYFOR').Asstring := Searchset.Keyno;
      DmFin.QChqtran_Dec.FieldByname('DESCRIPTION').Asstring := Searchset.HQuery1.fieldbyname('FORDESC').AsString;
    end;
  end;
end;

procedure TFincForm1.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
//  if UPPERCASE(Name) = 'DATETOTHAI' then
//    Val := SFMain.DateToThai(FRPARSER.Calc(p1), FRPARSER.Calc(p2));
end;

procedure TFincForm1.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'VTMBILL' then
    Value := FldEdit4.Text;
  if Uppercase(VarName) = 'VLOCRECV' then
    Value := DBLocat.Text;
end;

procedure TFincForm1.acDesignerExecute(Sender: TObject);
begin
  if Radiogroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Tmpbill.fr3', '2')
 {2 = Design Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnBill.fr3', '2'); {2 = Design Report}
end;

end.

