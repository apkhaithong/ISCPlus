unit unInvoiceAdd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, DB, ExtCtrls, ComCtrls,
  Dbkbd, ImgList, ToolWin, RzButton, RzDBGrid, RzSpnEdt, RzDbkbd, RzPanel,
  RzBorder, AdvGlowButton, AdvToolBar, AdvPanel, cxLookAndFeelPainters,
  cxGroupBox, cxRadioGroup, cxDBEdit, cxCheckBox, cxButtonEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxControls, cxContainer, cxEdit,
  ActnList, cxGraphics, cxLookAndFeels, dxDateRanges, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  dxStatusBar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFrInvoiceAdd = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label7: TLabel;
    Label32: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label17: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBCheckBox1: TcxDBCheckBox;
    DBRadioGroup4: TcxDBRadioGroup;
    DBRadioGroup3: TcxDBRadioGroup;
    DBRadioGroup2: TcxDBRadioGroup;
    DBEdit9: TcxDBTextEdit;
    AddPart: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    AddSv: TAdvGlowButton;
    AddBtn3: TAdvGlowButton;
    DBEdit7: TcxDBTextEdit;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn2: TAdvGlowButton;
    cxRadioGroup1: TcxRadioGroup;
    dxStatusBar1: TdxStatusBar;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranCODE: TcxGridDBColumn;
    cxGridTranQTY: TcxGridDBColumn;
    cxGridTranUPRICE: TcxGridDBColumn;
    cxGridTranTOTPRIC: TcxGridDBColumn;
    cxGridTranREDU: TcxGridDBColumn;
    cxGridTranNETCOST: TcxGridDBColumn;
    cxGridTranDESC1: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    BillBtn: TAdvGlowButton;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    BillDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit12: TcxDBButtonEdit;
    DBEdit5: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    TaxDate: TcxDBDateEdit;
    dueDate: TcxDBDateEdit;
    cxRadioGroup2: TcxRadioGroup;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    DBEdit11: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
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
    procedure InsBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure AddBtn3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AddPartClick(Sender: TObject);
    procedure AddSvClick(Sender: TObject);
    procedure DBRadioGroup4Click(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit5PropertiesChange(Sender: TObject);
    procedure BillDateExit(Sender: TObject);
    procedure TaxDateExit(Sender: TObject);
    procedure dueDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure PrnBtn2Click(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridTranCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure BillBtnClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrInvoiceAdd: TFrInvoiceAdd;
  XCusno: string;

implementation

uses
  DmSv, fUNCTN01, uSrcDlg1, Payoth, Dmfinc, USoftFirm, unfrPreview, Dmsec,
  HlpJob;

{$R *.DFM}

procedure TFrInvoiceAdd.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSV', 'HDSV12_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFrInvoiceAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Sv.QOthinvoi1.Close;
  Dm_Sv.QOthtran1.Close;
  Dm_Sv.QParttran1.Close;
  Action := Cafree;
  FrInvoiceAdd := nil;
end;

procedure TFrInvoiceAdd.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  //DBkbd1.AllowEditing:= (Dm_SV.QOthinvoi1TAXNO.Asstring='') and (SFMain.Edit_right);

  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;
  //
  PrnBtn2.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');
  BillBtn.Visible := (DataSource1.Dataset.State = Dsbrowse);
  DBCheckBox1.Properties.ReadOnly := not SaveBtn.Visible;
  AddPart.Enabled := SaveBtn.Visible;
  AddSv.Enabled := SaveBtn.Visible;
  AddBtn3.Enabled := SaveBtn.Visible;

  cxGridTran.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SaveBtn.Visible;

  DBRadioGroup2.Properties.Readonly := not (DataSource1.Dataset.State = Dsinsert);
  DBRadioGroup3.Properties.Readonly := not (DataSource1.Dataset.State = Dsinsert);
  DBRadioGroup4.Properties.Readonly := not (DataSource1.Dataset.State = Dsinsert);

  if Dm_Sv.QOthinvoi1.Fieldbyname('CancelId').Asstring <> '' then
  begin
    Label7.Visible := True;
    DBkbd1.AllowEditing := False;
  end
  else
  begin
    Label7.Visible := False;
  end;

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

      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).Readonly := True;
        TRzDBGrid(Components[N]).Color := ClBtnFace;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
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

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).Readonly := False;
        TRzDBGrid(Components[N]).Color := clWhite;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
    end;
  end;

  if not Dm_SV.QDBConfig.Active then
    DM_SV.QDBConfig.Open;
  DBEdit2.Properties.Readonly := Dm_Sv.QDBConfig.Fieldbyname('H_DVOH').asstring = 'Y';
end;

procedure TFrInvoiceAdd.DBEdit3Exit(Sender: TObject);
begin
  with Dm_Sv.QJoborder do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO= :XNO AND LOCAT = :XLOCAT ORDER BY JOBNO ');
    Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
    Params[1].Asstring := Dm_Sv.QOthinvoi1.FieldByName('LOCAT').Asstring;
    Open;
  end;
  if Dm_Sv.QJoborder.Bof and Dm_Sv.QJoborder.eof then
    SFMain.RaiseException('ไม่มีหมายเลขJOBนี้ในแฟ้มข้อมูล');
  Dm_Sv.QOthinvoi1.FieldByName('JOBDATE').AsDateTime := Dm_Sv.QJoborder.FieldByName('RECVDATE').AsDateTime;
  Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.QJoborder.FieldByName('CUSCOD').Asstring;
  Dm_Sv.QOthinvoi1.FieldByName('STRNO').Asstring := Dm_Sv.QJoborder.FieldByName('STRNO').Asstring;
end;

procedure TFrInvoiceAdd.InsBtnClick(Sender: TObject);
begin
  with Dm_Sv.QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO ='''' ');
    Open;
    Insert;
  end;

  with Dm_Sv.QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHTRAN WHERE INVNO ='''' ');
    Open;
  end;
  DBRadioGroup2Click(Sender);
end;

procedure TFrInvoiceAdd.SaveBtnClick(Sender: TObject);
begin
  if Dm_Sv.QOthtran1.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการ..!');
  if Dm_Sv.QOthinvoi1.Fieldbyname('Cancelid').Asstring <> '' then
    SFMain.RaiseException('ยกเลิกไปแล้ว');

  if Dm_Sv.QOthinvoi1CUSCOD.Asstring = '' then
    SFmain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');

  if Dm_Sv.QOthinvoi1.Fieldbyname('JOBNO').Asstring = '' then
    SFMain.RaiseException('กรุณาอ้างอิง JOB ก่อนทำบันทึก..!');

  if (TaxDate.Text = '') and (DBCheckBox1.Checked) then
    SFMain.RaiseException('ยังไม่บันทึกวันที่ใบกำกับ');

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV12_1', 'INSERT', Dm_Sv.QOthinvoi1.FieldByName('INVNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV12_1', 'EDIT', Dm_Sv.QOthinvoi1.FieldByName('INVNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_Sv.QOthinvoi1.Post;
  //
  if (Dm_Sv.QOthinvoi1PTYPE.Asstring = 'S') and (Dm_Sv.QOthinvoi1CLAIMTYP.AsString = 'Y') then
  begin
    Application.CreateForm(TFpayoth, Fpayoth);
    FPayoth.Xinvno := Dm_Sv.QOthinvoi1INVNO.Asstring;
    Fpayoth.Showmodal;
  end
  else
  begin
    DBCheckBox1.Checked := True;
    if (Dm_Sv.QOthinvoi1.FieldByName('ISSUTAX').Asstring = 'Y') then
      Dm_Sv.Runtaxothinv;
  end;
end;

procedure TFrInvoiceAdd.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  if (Dm_Sv.Qothinvoi1.Fieldbyname('Cancelid').asstring <> '') then
    SFMain.RaiseException('ถูกยกเลิกแล้ว');

  if (Dm_Sv.Qothinvoi1.Fieldbyname('Taxno').asstring <> '') and
    (Dm_Sv.Qothinvoi1.Fieldbyname('Taxno').asstring = Dm_Sv.Qothinvoi1.Fieldbyname('Billno').asstring) then
    SFMain.RaiseException('ออกใบเสร็จ/ใบกำกับแล้ว กรุณาไปยกเลิกก่อน');

  if Dm_Sv.QOthinvoi1.FieldByName('POSTGL').AsString = 'Y' then
    SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

  if Dm_Sv.QOthinvoi1.Fieldbyname('Cancelid').Asstring <> '' then
    SFMain.RaiseException('ยกเลิกไปแล้ว');

  if Dm_Sv.QOthinvoi1Paid.Asfloat > 0 then
    SFMain.RaiseException('มีการชำระเงินแล้ว ต้องยกเลิกการชำระก่อน');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        with Dm_Sv.QTaxsal do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
          Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('TAXNO').Asstring;
          Open;
        end;

        if not (Dm_Sv.QTaxsal.Bof and Dm_Sv.QTaxsal.Eof) then
        begin
          if Dm_Sv.QTaxsal.State = Dsbrowse then
            Dm_Sv.QTaxsal.Edit;
          Dm_Sv.QTaxsal.Fieldbyname('CANCELID').asstring := SFMain.Xuser_id;
          Dm_Sv.QTaxsal.Fieldbyname('CANDAT').asDatetime := Now;
          Dm_Sv.QTaxsal.Post;
        end;
      //
        if Dm_Sv.QOthinvoi1.State = Dsbrowse then
          Dm_Sv.QOthinvoi1.Edit;
        Dm_Sv.QOthinvoi1.Fieldbyname('CANCELID').asstring := SFMain.Xuser_id;
        Dm_Sv.QOthinvoi1.Fieldbyname('CANDAT').asDatetime := Now;

        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSV12_1', 'DELETE', Dm_Sv.QOthinvoi1.FieldByName('BILLNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        Dm_Sv.QOthinvoi1.Post;
      end;
  end;
end;

procedure TFrInvoiceAdd.CancBtnClick(Sender: TObject);
begin
  if Dm_Sv.QOthinvoi1.Active then
    Dm_Sv.QOthinvoi1.Cancel;
  with Dm_Sv.QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
  with Dm_Sv.QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHTRAN WHERE INVNO = :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TFrInvoiceAdd.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if SFMain.XChgLoc = 'Y' then
    fSrcDlg1.XSrLocat := ''
  else
    fSrcDlg1.XSrLocat := SFmain.Xlocat;
  if fSrcDlg1.ShowModalOthinv = Mrok then
  begin
    with Dm_Sv.QOthinvoi1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = :XNO ');
      Params[0].Asstring := fSrcDlg1.Keyno;
      Open;
      if Dm_Sv.QOthinvoi1.Bof and Dm_Sv.QOthinvoi1.eof then
        SFMain.RaiseException('ไม่มีข้อมูล ');
    end;

    if Dm_Sv.QOthinvoi1.Fieldbyname('CancelId').Asstring <> '' then
    begin
      Label7.Visible := True;
      DBkbd1.AllowEditing := False;
    end
    else
    begin
      Label7.Visible := False;
    end;

    with Dm_Sv.QOthtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OTHTRAN WHERE INVNO = :XNO ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('INVNO').Asstring;
      Open;
    end;
  //
    with Dm_Sv.QTaxsal do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('TAXNO').Asstring;
      Open;
    end;
    DBRadioGroup2Click(Sender);
  end;
end;

procedure TFrInvoiceAdd.AddBtn3Click(Sender: TObject);
begin
  if Dm_Sv.QOthinvoi1.State = dsInsert then
  begin
    if DBEdit12.Text = '' then
      SFMain.RaiseException('ยังไม่ระบุเลขที่แจ้งซ่อม...!');
    with Dm_Sv.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS,VAT FROM JOBORDER WHERE JOBNO=:EDIT1 ');
      Params[0].asstring := Dm_Sv.QOthinvoi1JOBNO.AsString;
      Open;
      if not (Bof and Eof) then
      begin
        if Dm_Sv.Query1.FieldByName('Status').Asstring = 'W' then
          SFMain.RaiseException('ยังไม่ปิด Job');

        Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RECVDATE').AsDatetime;
        Dm_Sv.QOthinvoi1.FieldByName('STRNO').Asstring := Dm_Sv.Query1.Fieldbyname('STRNO').Asstring;

        if DBRadioGroup4.ItemIndex = 1 then
          Dm_Sv.QOthinvoi1VAT.Asfloat := 0
        else
          Dm_Sv.QOthinvoi1VAT.Asfloat := Dm_Sv.Query1.Fieldbyname('VAT').AsFloat;

        if XCusno <> '' then
          Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
        else if Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring <> Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring then
        begin
          MessageBeep(0);
          if MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่', mtconfirmation, [Mbyes, mbno], 0) = MRyes then
            Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring;
        end;
      end
      else
        SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');
    end;
    //
    with Dm_Sv.QOthtran1 do
    begin
      close;
      sql.Clear;
      sql.Add('delete from OTHTRAN where jobno =:edit1');
      params[0].AsString := dbedit12.Text;
      execSql;

      close;
      sql.Clear;
      sql.Add('SELECT * FROM OTHTRAN WHERE INVNO = '''' ');
      open;
    end;

    with Dm_Sv.QServtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO= :XDT1 AND (CLAIM=''I'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
      //Params[1].Asstring := XCusno+'%';
      Open;
    end;

    if not (Dm_Sv.QServtran1.Bof and Dm_Sv.QServtran1.Eof) then
    begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QServtran1.First;
      while not Dm_Sv.QServtran1.Eof do
      begin
        if Dm_Sv.QOthtran1.State = Dsbrowse then
          Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring := Dm_Sv.QServtran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring := Dm_Sv.QServtran1.Fieldbyname('CODE').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring := Dm_Sv.QServtran1.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat := Dm_Sv.QServtran1.Fieldbyname('FRT').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat := Dm_Sv.QServtran1.Fieldbyname('REDU').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QServtran1.Fieldbyname('UPrice').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QServtran1.Fieldbyname('Price').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QServtran1.Fieldbyname('NetPric').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QServtran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CAMPNO').Asstring := Dm_Sv.QServtran1.Fieldbyname('CAMPNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat := Dm_Sv.QServtran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring := '2'; //ค่าบริการ
        Dm_Sv.QOthtran1.post;

        Dm_Sv.QServtran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end;
    // ค่าอะไหล่
    with Dm_Sv.QParttran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PARTTRAN WHERE JOBNO= :XDT1 AND (CLAIM=''I'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
      //Params[1].Asstring := XCusno+'%';
      Open;
    end;
    if not (Dm_Sv.QParttran1.Bof and Dm_Sv.QParttran1.Eof) then
    begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QParttran1.First;
      while not Dm_Sv.QParttran1.Eof do
      begin
        if Dm_Sv.QOthtran1.State = Dsbrowse then
          Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring := Dm_Sv.QParttran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring := Dm_Sv.QParttran1.Fieldbyname('PARTNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring := Dm_Sv.QPartdes.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('UCOST').AsFloat := Dm_Sv.QParttran1.Fieldbyname('AVGCOST').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat := Dm_Sv.QParttran1.Fieldbyname('QTY').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QParttran1.Fieldbyname('UPrice').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat := (Dm_Sv.QParttran1.Fieldbyname('UPrice').Asfloat *
          Dm_Sv.QParttran1.Fieldbyname('QTY').Asfloat);
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QParttran1.Fieldbyname('TotPrc').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTCOST').AsFloat := Dm_Sv.QParttran1.FieldByName('AVGCOST').AsFloat *
          Dm_Sv.QParttran1.FieldByName('QTY').AsFloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QParttran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CAMPNO').Asstring := Dm_Sv.QParttran1.Fieldbyname('CAMPNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat := Dm_Sv.QParttran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring := '3'; //อะไหล่
        Dm_Sv.QOthtran1.post;
        Dm_Sv.QParttran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end;
    // งานสี
    with Dm_Sv.QColrtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO=:XJOB  AND (CLAIM=''I'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
      //Params[1].Asstring := XCusno+'%';
      Open;
    end;
    if not (Dm_Sv.QColrtran1.Bof and Dm_Sv.QColrtran1.Eof) then
    begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QColrtran1.First;
      while not Dm_Sv.QColrtran1.Eof do
      begin
        if Dm_Sv.QOthtran1.State = Dsbrowse then
          Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring := Dm_Sv.QColrtran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring := Dm_Sv.QColrtran1.Fieldbyname('CODE').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring := Dm_Sv.QColrtran1.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat := 1;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QColrtran1.Fieldbyname('Price').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QColrtran1.Fieldbyname('Price').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Redu').AsFloat := Dm_Sv.QColrtran1.Fieldbyname('Redu').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QColrtran1.Fieldbyname('NetPric').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QColrtran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat := Dm_Sv.QColrtran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring := '4'; //งานสี
        Dm_Sv.QOthtran1.post;
        Dm_Sv.QColrtran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end;
    //--งานนอก---
    with Dm_Sv.QOuttran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO=:XJOB AND (CLAIM=''I'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
      //Params[1].Asstring := XCusno+'%';
      Open;
    end;
    if not (Dm_Sv.QOuttran1.Bof and Dm_Sv.QOuttran1.Eof) then
    begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QOuttran1.First;
      while not Dm_Sv.QOuttran1.Eof do
      begin
        if Dm_Sv.QOthtran1.State = Dsbrowse then
          Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring := Dm_Sv.QOuttran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring := Dm_Sv.QOuttran1.Fieldbyname('CODE').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring := Dm_Sv.QOuttran1.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('UCOST').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('UCOST').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('QTY').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('UPrice').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('TOTPRIC').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTCOST').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('TOTCOST').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('REDU').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('NETPRIC').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QOuttran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat := Dm_Sv.QOuttran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('FLAG').Asstring := '5'; //งานนอก
        Dm_Sv.QOthtran1.post;
        Dm_Sv.QOuttran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end;
  end;
end;

procedure TFrInvoiceAdd.SpeedButton3Click(Sender: TObject);
begin
  if Dm_Sv.QOthtran1.RecordCount = 0 then
    sfmain.RaiseException('เลือกรายการค่าอะไหล่หรือค่าแรง<br/>ก่อนสร้างใบกำกับ..!');

  if DBCheckBox1.Checked then
    Dm_Sv.Runtaxothinv;
end;

procedure TFrInvoiceAdd.DBRadioGroup2Click(Sender: TObject);
begin
  DBCheckBox1.Enabled := (DBRadioGroup2.Itemindex = 1) and (SaveBtn.Enabled = True);
  DBCheckBox1.Checked := DBRadioGroup2.Itemindex = 1;
  PrnBtn2.Enabled := DBRadioGroup2.Itemindex <> 2;
  SpeedButton3.Enabled := (DBRadioGroup2.Itemindex = 1) and (Dm_Sv.QOthinvoi1.FieldByName('TAXNO').Asstring = '');

  DBEdit5PropertiesChange(Sender);

  if Dm_SV.QOthinvoi1.State in Dseditmodes then
  begin
    if DBCheckBox1.Checked then
      Dm_SV.QOthinvoi1ISSUTAX.Asstring := 'Y'
    else
      Dm_SV.QOthinvoi1ISSUTAX.Asstring := 'N';
  end;
end;

procedure TFrInvoiceAdd.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFrInvoiceAdd.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrInvoiceAdd.AddPartClick(Sender: TObject);
begin
  if Dm_Sv.QOthinvoi1.State = dsInsert then
  begin
    if DBEdit12.Text = '' then
      SFMain.RaiseException('ยังไม่ระบุเลขที่แจ้งซ่อม...!');
    with Dm_Sv.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS FROM JOBORDER WHERE JOBNO=:EDIT1 ');
      Params[0].asstring := Dm_Sv.QOthinvoi1JOBNO.AsString;
      Open;
      if not (Bof and Eof) then
      begin
        if Dm_Sv.Query1.FieldByName('Status').Asstring = 'W' then
          SFMain.RaiseException('ยังไม่ปิด Job');

        Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RECVDATE').AsDatetime;
        Dm_Sv.QOthinvoi1.FieldByName('STRNO').Asstring := Dm_Sv.Query1.Fieldbyname('STRNO').Asstring;
        if XCusno <> '' then
          Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
        else if Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring <> Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring then
        begin
          MessageBeep(0);
          if MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่', mtconfirmation, [Mbyes, mbno], 0) = MRyes then
            Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring;
        end;
      end
      else
        SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');
    end;
    // ค่าอะไหล่

    with Dm_Sv.QOthtran1 do
    begin
      close;
      sql.Clear;
      sql.Add('delete from OTHTRAN where jobno =:edit1');
      params[0].AsString := dbedit12.Text;
      execSql;

      close;
      sql.Clear;
      sql.Add('SELECT * FROM OTHTRAN WHERE INVNO = '''' ');
      open;
    end;

    with Dm_Sv.QParttran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PARTTRAN WHERE JOBNO= :XDT1 AND (CLAIM=''I'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
      //Params[1].Asstring := XCusno+'%';
      Open;
    end;

    if not (Dm_Sv.QParttran1.Bof and Dm_Sv.QParttran1.Eof) then
    begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QParttran1.First;
      while not Dm_Sv.QParttran1.Eof do
      begin
        if Dm_Sv.QOthtran1.State = Dsbrowse then
          Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring := Dm_Sv.QParttran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring := Dm_Sv.QParttran1.Fieldbyname('PARTNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring := Dm_Sv.QPartdes.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('UCOST').AsFloat := Dm_Sv.QParttran1.Fieldbyname('AVGCOST').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat := Dm_Sv.QParttran1.Fieldbyname('QTY').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QParttran1.Fieldbyname('UPrice').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat := (Dm_Sv.QParttran1.Fieldbyname('UPrice').Asfloat *
          Dm_Sv.QParttran1.Fieldbyname('QTY').Asfloat);
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QParttran1.Fieldbyname('TotPrc').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTCOST').AsFloat := Dm_Sv.QParttran1.FieldByName('AVGCOST').AsFloat *
          Dm_Sv.QParttran1.FieldByName('QTY').AsFloat;
        Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat := Dm_Sv.QParttran1.Fieldbyname('REDU1').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QParttran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat := Dm_Sv.QParttran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring := '3'; //อะไหล่
        Dm_Sv.QOthtran1.post;
        Dm_Sv.QParttran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end;
  end;
end;

procedure TFrInvoiceAdd.AddSvClick(Sender: TObject);
begin
  if Dm_Sv.QOthinvoi1.State = dsInsert then
  begin
    if DBEdit12.Text = '' then
      SFMain.RaiseException('ยังไม่ระบุเลขที่แจ้งซ่อม...!');

    with Dm_Sv.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT JOBNO,CUSCOD,RECVDATE,STRNO,STATUS FROM JOBORDER WHERE JOBNO=:EDIT1 ');
      Params[0].asstring := Dm_Sv.QOthinvoi1JOBNO.AsString;
      Open;
      if not (Bof and Eof) then
      begin
        if Dm_Sv.Query1.FieldByName('Status').Asstring = 'W' then
          SFMain.RaiseException('ยังไม่ปิด Job');

        Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring := Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthinvoi1.FieldByName('JOBDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RECVDATE').AsDatetime;
        Dm_Sv.QOthinvoi1.FieldByName('STRNO').Asstring := Dm_Sv.Query1.Fieldbyname('STRNO').Asstring;
        if XCusno <> '' then
          Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := XCusno
        else if Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring <> Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring then
        begin
          MessageBeep(0);
          if MessageDlg('รหัสลูกค้าไม่ตรงกับที่เปิด Job ต้องการแก้ไขให้ตรงกับ Job หรือไม่', mtconfirmation, [Mbyes, mbno], 0) = MRyes then
            Dm_Sv.QOthinvoi1.FieldByName('CUSCOD').Asstring := Dm_Sv.Query1.Fieldbyname('CUSCOD').Asstring;
        end;
      end
      else
        SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');
    end;
    //
    with Dm_Sv.QOthtran1 do
    begin
      close;
      sql.Clear;
      sql.Add('delete from OTHTRAN where jobno =:edit1');
      params[0].AsString := dbedit12.Text;
      execSql;

      close;
      sql.Clear;
      sql.Add('SELECT * FROM OTHTRAN WHERE INVNO = '''' ');
      open;
    end;

    with Dm_Sv.QServtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO= :XDT1 AND (CLAIM=''I'') AND (BILCLAIM IS NULL OR BILCLAIM<>''Y'') ');
      Params[0].Asstring := Dm_Sv.QOthinvoi1.FieldByName('JOBNO').Asstring;
      //Params[1].Asstring := XCusno+'%';
      Open;
    end;

    if not (Dm_Sv.QServtran1.Bof and Dm_Sv.QServtran1.Eof) then
    begin
      Dm_Sv.QOthtran1.DisableControls;
      Dm_sv.QServtran1.First;
      while not Dm_Sv.QServtran1.Eof do
      begin
        if Dm_Sv.QOthtran1.State = Dsbrowse then
          Dm_Sv.QOthtran1.Append;
        Dm_Sv.QOthtran1.FieldByName('JOBNO').Asstring := Dm_Sv.QServtran1.Fieldbyname('JOBNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CODE').Asstring := Dm_Sv.QServtran1.Fieldbyname('CODE').Asstring;
        Dm_Sv.QOthtran1.FieldByName('DESC1').Asstring := Dm_Sv.QServtran1.Fieldbyname('DESC1').Asstring;
        Dm_Sv.QOthtran1.FieldByName('QTY').AsFloat := Dm_Sv.QServtran1.Fieldbyname('FRT').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('REDU').AsFloat := Dm_Sv.QServtran1.Fieldbyname('REDU').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QServtran1.Fieldbyname('UPrice').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QServtran1.Fieldbyname('Price').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QServtran1.Fieldbyname('NetPric').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QServtran1.Fieldbyname('SERVCOD').Asstring;
        Dm_Sv.QOthtran1.FieldByName('CAMPNO').Asstring := Dm_Sv.QServtran1.Fieldbyname('CAMPNO').Asstring;
        Dm_Sv.QOthtran1.FieldByName('SERTIME').AsFloat := Dm_Sv.QServtran1.Fieldbyname('SERTIME').Asfloat;
        Dm_Sv.QOthtran1.FieldByName('Flag').Asstring := '2'; //ค่าบริการ
        Dm_Sv.QOthtran1.post;
        Dm_Sv.QServtran1.Next;
      end;
      Dm_Sv.QOthtran1.EnableControls;
    end;
  end;
end;

procedure TFrInvoiceAdd.DBRadioGroup4Click(Sender: TObject);
begin
  if DBRadioGroup4.ItemIndex = 1 then
  begin
    DBEdit4.Enabled := False;
    Dm_Sv.QOthinvoi1VAT.Asfloat := 0;
  end
  else
  begin
    DBEdit4.Enabled := True;
    Dm_Sv.QOthinvoi1VAT.Asfloat := Dm_Sv.Condpay.Fieldbyname('VATRT').asfloat;
  end;
end;

procedure TFrInvoiceAdd.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
    Dm_Sv.QOthinvoi1.FieldByName('LOCAT').Asstring := fSrcDlg1.KeyNo;
end;

procedure TFrInvoiceAdd.DBEdit1PropertiesChange(Sender: TObject);
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

procedure TFrInvoiceAdd.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalAR = Mrok then
    Dm_Sv.QOthinvoi1.Fieldbyname('Cuscod').Asstring := fSrcDlg1.KeyNo;
end;

procedure TFrInvoiceAdd.DBEdit5PropertiesChange(Sender: TObject);
begin
  with Dm_Sv.Query3 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT Cuscod,Snam,Name1,Name2,Credit FROM CUSTMAST WHERE CUSCOD= :XCUSCOD');
    Params[0].Asstring := DBEdit5.Text;
    Open;
    Edit1.Text := Dm_Sv.Query3.Fieldbyname('SNam').Asstring + ' ' + Dm_Sv.Query3.Fieldbyname('Name1').Asstring + ' ' + Dm_Sv.Query3.Fieldbyname('Name2').Asstring;
  end;
end;

procedure TFrInvoiceAdd.BillDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Sv.QOthinvoi1.fieldbyname('INVDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Sv.QOthinvoi1.fieldbyname('INVDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Sv.QOthinvoi1.fieldbyname('INVDATE').AsDateTime := Dm_Sv.QOthinvoi1.fieldbyname('INVDATE').AsDateTime;
  end;
end;

procedure TFrInvoiceAdd.TaxDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Sv.QOthinvoi1.fieldbyname('TAXDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Sv.QOthinvoi1.fieldbyname('TAXDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Sv.QOthinvoi1.fieldbyname('TAXDT').AsDateTime := Dm_Sv.QOthinvoi1.fieldbyname('TAXDT').AsDateTime;
  end;
end;

procedure TFrInvoiceAdd.dueDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Sv.QOthinvoi1.fieldbyname('DUEDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Sv.QOthinvoi1.fieldbyname('DUEDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Sv.QOthinvoi1.fieldbyname('DUEDATE').AsDateTime := Dm_Sv.QOthinvoi1.fieldbyname('DUEDATE').AsDateTime;
  end;
end;

procedure TFrInvoiceAdd.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
//  if Uppercase(Name) = 'DATETHAI' then
//  begin
//    Val := SFMain.DateThai(Frparser.Calc(p1), Frparser.Calc(p2));
//  end;
end;

procedure TFrInvoiceAdd.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XOption: string;
begin
  if UpperCase(VarName) = 'PINVNO' then
    Value := DBEdit2.Text;
  if UpperCase(VarName) = 'PTAXNO' then
    Value := DBEdit9.Text;
  if cxRadioGroup2.ItemIndex = 0 then
    XOption := '1'
  else
    XOption := '2';

  if UpperCase(VarName) = 'POPTION' then
    Value := XOption;
end;

procedure TFrInvoiceAdd.PrnBtn2Click(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  if cxRadioGroup1.ItemIndex = 0 then
  begin
    if DBRadioGroup4.itemindex = 0 then
      DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSVInvS1.fr3', '1')
    else
      DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSVInvS2.fr3', '1');
  end
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSVInvS3.fr3', '1');
end;

procedure TFrInvoiceAdd.actEditPrnExecute(Sender: TObject);
begin
  if cxRadioGroup1.ItemIndex = 0 then
  begin
    if DBRadioGroup4.itemindex = 0 then
      DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSVInvS1.fr3', '2')
    else
      DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSVInvS2.fr3', '2');
  end
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSVInvS3.fr3', '2');
end;

procedure TFrInvoiceAdd.FormShow(Sender: TObject);
begin
  if not Dm_sv.Condpay.Active then
    Dm_sv.Condpay.Open;
  with Dm_Sv.QOthinvoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHINVOI WHERE INVNO = '''' ');
    Open;
  end;

  with Dm_Sv.QOthtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OTHTRAN WHERE INVNO = '''' ');
    Open;
  end;
end;

procedure TFrInvoiceAdd.cxGridTranCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvpart = Mrok then
    Dm_Sv.QOthtran1.FieldByName('CODE').Asstring := fSrcDlg1.qrFindDat.FieldByName('CODE').Asstring;
end;

procedure TFrInvoiceAdd.DBEdit12PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(THelpjob, Helpjob);
  HelpJob.State := 1;
  if HelpJob.ShowModal = MrOk then
  begin
    Dm_Sv.QOthinvoi1JOBNO.AsString := Helpjob.QHlp.FieldByName('JOBNO').Asstring;
  end;
end;

procedure TFrInvoiceAdd.BillBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFpayoth, Fpayoth);
  Fpayoth.Xinvno := Dm_Sv.QOthinvoi1INVNO.Asstring;
  Fpayoth.Showmodal;
end;

procedure TFrInvoiceAdd.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalAR = Mrok then
    Dm_Sv.QOthinvoi1.Fieldbyname('CLAIMNO').Asstring := fSrcDlg1.KeyNo;
end;

procedure TFrInvoiceAdd.cxDBButtonEdit1PropertiesChange(Sender: TObject);
begin
  with Dm_Sv.Query3 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT Cuscod,Snam,Name1,Name2,Credit FROM CUSTMAST WHERE CUSCOD= :XCUSCOD');
    Params[0].Asstring := cxDBButtonEdit1.Text;
    Open;
    cxTextEdit1.Text := Dm_Sv.Query3.Fieldbyname('SNam').Asstring + ' ' + Dm_Sv.Query3.Fieldbyname('Name1').Asstring + ' ' + Dm_Sv.Query3.Fieldbyname('Name2').Asstring;
  end;
end;

end.

