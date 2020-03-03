unit STIn12;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, Mask, ComCtrls, DB,
  Dbkbd, ImgList, ToolWin, RzButton, RzPanel, RzSpnEdt, RzDbkbd, RzDBGrid,
  AdvGlowButton, AdvToolBar, AdvPanel, cxLookAndFeelPainters, cxTextEdit,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGraphics, ActnList,
  cxLookAndFeels, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, dxStatusBar, cxMemo, cxButtons, frxExportXLSX,
  frxRich, frxDCtrl, frxClass, frxTableObject, frxExportPDF, frxExportImage,
  frxGradient, frxFDComponents, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTIn12 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel2: TBevel;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label39: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label46: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label15: TLabel;
    DBGrid1: TRzDBGrid;
    cxGroupBox1: TcxGroupBox;
    Label6: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit10: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    DBRadioGroup2: TcxDBRadioGroup;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    Edit5: TcxTextEdit;
    Edit1: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    DBEdit3: TcxDBTextEdit;
    RtDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit7: TcxDBButtonEdit;
    DBEdit11: TcxDBButtonEdit;
    DBEdit6: TcxDBButtonEdit;
    DBEdit27: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    Query2: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    AdvPanel3: TAdvPanel;
    NextBtn: TcxButton;
    DeleBtn: TcxButton;
    Label2: TLabel;
    DBMemo1: TcxDBMemo;
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
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure insBtnClick(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DBEdit1BtnClick(Sender: TObject);
    procedure DBEdit7BtnClick(Sender: TObject);
    procedure DBEdit11BtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure RtDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit3PropertiesChange(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTIn12: TFmSTIn12;
  Smnettot: Double;
  NmPart: string;
  QTYOut: Double;
  XDate: TdateTime;
  Xyear, Xmonth, XDay: Word;

implementation

uses
  Dmic01, DmSet1, Functn01, USoftFirm, uSrcDlg, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmSTIn12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmDmic01.Pkinv.Close;
  FmDmic01.PkTran.Close;
  FmDmic01.QDbconfig.close;
  Action := Cafree;
  FmSTIn12 := nil;
end;

procedure TFmSTIn12.FormShow(Sender: TObject);
begin
  FmDmic01.Flag_a := 'S';
  with FmDmic01.Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := '';
    OPEN;
  end;
  if not FmDmic01.CondPay.Active then
    FmDmic01.CondPay.Open;
end;

procedure TFmSTIn12.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbGrid) and
      not (ActiveControl is TDBMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end;
end;

procedure TFmSTIn12.insBtnClick(Sender: TObject);
begin
  with FmDmic01.Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := '';
    OPEN;
    INSERT;
  end;

  with FmDmic01.PKtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := '';
    OPEN;
  end;
  FmDmic01.PkinvFlag.asstring := 'S';
  FmDmic01.PkinvPKDATE.AsDateTime := Now;
  DBRadioGroup2.ItemIndex := 0;

  Edit1.Text := '';
  Edit5.Text := '';
  if DBEdit1.Enabled = false then
    DBEdit7.SetFocus
  else
    DBEdit1.SetFocus;
end;

procedure TFmSTIn12.NextBtnClick(Sender: TObject);
begin
  DBGrid1.Setfocus;
  DBGrid1.SelectedIndex := 0;
  if FmDmic01.Pktran.State in Dseditmodes then
    SFMain.RaiseException('ยังไม่Enter ผ่านช่องสุดท้าย');

  FmDmic01.Pktran.Append;
end;

procedure TFmSTIn12.CancBtnClick(Sender: TObject);
begin
  Edit1.text := '';
  Edit5.text := '';
  FmDmic01.Pkinv.Cancel;
end;

procedure TFmSTIn12.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');
  NextBtn.Enabled := (DataSource1.Dataset.State in DsEditModes);
  DeleBtn.Enabled := NextBtn.Enabled;
  //
  DBRadioGroup1.Properties.ReadOnly := not (DataSource1.Dataset.State = DsInsert);
  DBRadioGroup2.Properties.ReadOnly := DBRadioGroup1.Properties.ReadOnly;

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
        TRzDBGrid(Components[N]).ReadOnly := True;
        TRzDBGrid(Components[N]).Color := clBtnFace;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
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

      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := False;
        TRzDBGrid(Components[N]).Color := clWhite;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  if not FmDmic01.QDBConfig.Active then
    FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_RTSV').asstring = 'Y';
  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  RtDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
end;

procedure TFmSTIn12.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := 'S';
  if fSrcDlg.ShowModalpk = Mrok then
  begin
    with FmDmic01.Pkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := fSrcDlg.KeyNo;
      OPEN;
    end;

    with FmDmic01.PKtran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := FmDmic01.PkinvPkno.Asstring;
      OPEN;
    end;

    with FmDmic01.Query2 do
    begin
      close;
      sql.clear;
      sql.add('select cuscod,snam,name1,name2 from CUSTMAST ' +
        'WHERE (cuscod =:EDIT1) ORDER BY cuscod ');
      Params[0].AsString := FmDmic01.PkinvCusCod.AsString;
      OPEN;
    end;
    Edit5.Text := FmDmic01.Query2.Fieldbyname('SNAM').Asstring +
      FmDmic01.Query2.Fieldbyname('NAME1').Asstring + '   ' +
      FmDmic01.Query2.Fieldbyname('NAME2').Asstring;
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT REGNO FROM SVMAST WHERE CUSCOD = :XCus');
      Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('Cuscod').Asstring;
      Open;
    end;
    Edit1.Text := FmDmic01.Query1.FieldByName('REGNO').Asstring;

    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT Status FROM JOBORDER WHERE JOBNO = :XNOO ');
      Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('Jobno').asstring;
      Open;
    end;

    if FmDmic01.Query2.Fieldbyname('Status').asstring <> 'W' then
    begin
      DBKbd1.AllowEditing := False;
      DBkbd1.AllowInsert := False;
      DBkbd1.AllowDelete := False;
      DBGrid1.Readonly := True;
      DBRadioGroup1.Properties.Readonly := true;
      DBRadioGroup2.Properties.Readonly := true;
    end
    else
    begin
      DBKbd1.AllowEditing := true;
      DBkbd1.AllowInsert := true;
      DBkbd1.AllowDelete := true;
      DBGrid1.Readonly := false;
      DBRadioGroup1.Properties.Readonly := False;
      DBRadioGroup2.Properties.Readonly := False;
    end;

    Label15.Visible := True;
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'W' then
      Label15.Caption := 'สถานะ : กำลังซ่อม';
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'F' then
      Label15.Caption := 'สถานะ : ปิด Job แล้ว';
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'R' then
      Label15.Caption := 'สถานะ : รับรถแล้ว';
  end;
end;

procedure TFmSTIn12.DBRadioGroup1Click(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 0 then
    FmDmic01.PkinvVATTYPE.Asstring := '1';
  if DBRadioGroup1.ItemIndex = 1 then
    FmDmic01.PkinvVATTYPE.Asstring := '2';
end;

procedure TFmSTIn12.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SvPkRT.fr3', '1');
end;

procedure TFmSTIn12.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
  end;
end;

procedure TFmSTIn12.DBRadioGroup2Click(Sender: TObject);
begin
  if DBRadioGroup2.ItemIndex = 0 then
    FmDmic01.PkinvSVCOLOR.Asstring := 'N';
  if DBRadioGroup2.ItemIndex = 1 then
    FmDmic01.PkinvSVCOLOR.Asstring := 'Y';
end;

procedure TFmSTIn12.DBGrid1ColExit(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
begin
  if (DbGrid1.SelectedField.FieldName) = 'QTYORD' then
  begin
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,PKNO,QTY,GROUP1,TIME1 FROM PARTTRAN ' +
        'WHERE PKNO =:XPKNO AND PARTNO=:XPART AND QTY=:XQTY');
      Params[0].asString := FmDmic01.Pkinv.FieldByName('RTNPK').Asstring;
      Params[1].asString := FmDmic01.PkTran.FieldByName('PARTNO').Asstring;
      Params[2].asfloat := FmDmic01.PkTran.FieldByName('Qtyord').AsFloat;
      Open;
      if Bof and Eof then
        MessageDlg('ไม่พบรหัสสินค้าและจำนวนตามที่ระบุใน Job นี้ใช้ ' + #13 + #10 + 'Help ช่วยเหลือ (ช่องรหัสสินค้า)', mtWarning, [mbOK], 0);
    end;

    {With FmDmic01.Query2 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT' );
      PARAMS[0].ASSTRING := FmDmic01.PkTran.FieldByName('PARTNO').Asstring;
      PARAMS[1].ASSTRING := FmDmic01.PkTran.FieldByName('Pklocat').Asstring;
      Open;
      RzDBLabel1.Caption := FmDmic01.Query2.Fieldbyname('Desc1').Asstring;
    end;}

    if not (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
    begin
      FmDmic01.Pktran.FieldByName('QTYORD').AsFloat := FmDmic01.Query1.FieldByName('QTY').AsFloat;
      FmDmic01.Pktran.FieldByName('GROUP1').Asstring := FmDmic01.Query1.FieldByName('GROUP1').Asstring;
      FmDmic01.Pktran.FieldByName('TIME1').Asdatetime := now; //FmDmic01.Query1.FieldByName('TIME1').Asdatetime;
    end
    else
      MessageDlg('ไม่มีสินค้าในใบจ่ายที่อ้างอิง', mtConfirmation, [mbOK], 0);
    //
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PK_TRANS ' +
        'WHERE PKNO =:XPKNO AND PARTNO=:XPART ');
      Params[0].asString := FmDmic01.Pkinv.FieldByName('RTNPK').Asstring;
      Params[1].asString := FmDmic01.PkTran.FieldByName('PARTNO').Asstring;
      Open;
    end;
    //
    if not (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
    begin
      FmDmic01.Pktran.FieldByName('PARTNO').Asstring := FmDmic01.Query1.FieldByName('PARTNO').Asstring;
      FmDmic01.Pktran.FieldByName('REDU1').AsFloat := FmDmic01.Query1.FieldByName('REDU1').AsFloat;
      FmDmic01.Pktran.FieldByName('REDU2').AsFloat := FmDmic01.Query1.FieldByName('REDU2').AsFloat;
      FmDmic01.Pktran.FieldByName('REDU3').AsFloat := FmDmic01.Query1.FieldByName('REDU3').AsFloat;
      FmDmic01.Pktran.FieldByName('NETFL').Asstring := FmDmic01.Query1.FieldByName('NETFL').Asstring;
      FmDmic01.Pktran.FieldByName('UPRICE').AsFloat := FmDmic01.Query1.FieldByName('UPRICE').AsFloat;
      FmDmic01.Pktran.FieldByName('AVGCOST').AsFloat := FmDmic01.Query1.FieldByName('AVGCOST').AsFloat;
      FmDmic01.Pktran.FieldByName('NETPRC').AsFloat := FmDmic01.Query1.FieldByName('NETPRC').AsFloat;
    end
    else
      MessageDlg('รหัสสินค้านี้ไม่มีในใบจ่ายที่อ้างอิง', mtInformation, [mbOK], 0);
  end;

  if (DbGrid1.SelectedField.FieldName) = 'QTYOUT' then
  begin
    if FmDmic01.Pktran.FieldByName('QTYOUT').AsFloat = 0 then
    begin
      DBGrid1.Setfocus;
      DBGrid1.SelectedIndex := 0;
      SFMain.RaiseException('ยอดคืนเป็น 0');
    end;

    if FmDmic01.Pktran.FieldByName('QTYOUT').AsFloat > FmDmic01.Pktran.FieldByName('QTYORD').AsFloat then
    begin
      DBGrid1.Setfocus;
      DBGrid1.SelectedIndex := 0;
      SFMain.RaiseException('ยอดคืนมากกว่ายอดเบิก');
    end;
  end;

  if (DbGrid1.SelectedField.FieldName) = 'UPRICE' then
  begin
    Pric1 := (FmDmic01.PktranUPrice.value * (FmDmic01.PktranRedu1.value / 100)); //ราคา-ส่วนลด(%)
    SmPric1 := FmDmic01.PktranUPrice.value - Pric1;  //ราคา-ส่วนลด
    Pric2 := SmPric1 * (FmDmic01.Pktranredu2.value / 100);
    SmPric2 := SmPric1 - Pric2;
    Pric3 := SmPric2 * (FmDmic01.Pktranredu3.value / 100);
    SmPric3 := SmPric2 - Pric3;
    FmDmic01.PktranNetprc.AsFloat := FRound(SmPric3, 2);
    FmDmic01.PktranTotPrc.AsFloat := FRound(FmDmic01.PktranNetprc.AsFloat * FmDmic01.PktranQTYOUT.AsFloat, 2);
  end;
end;

procedure TFmSTIn12.SaveBtnClick(Sender: TObject);
var
  S: string;
begin
  S := DBEdit2.text;
  if FmDmic01.PkTran.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_9_2', 'INSERT', FmDmic01.Pkinv.FieldByName('PKNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_9_2', 'EDIT', FmDmic01.Pkinv.FieldByName('PKNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  FmDmic01.Pkinv.Post;
  Edit1.text := '';
  Edit5.text := '';
end;

procedure TFmSTIn12.DBEdit1BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.PkinvPKLOCAT.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn12.DBEdit7BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
  begin
    with Dm_set1.QOfficer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD=:OFFICCOD');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.QOfficer.EOF and Dm_Set1.QOfficer.BOF then
      SFMain.RaiseException('ไม่มีข้อมูล');
    FmDmic01.PkinvOFFICCOD.Asstring := Dm_Set1.QOfficer.Fieldbyname('OFFICCOD').Asstring;
  end;
end;

procedure TFmSTIn12.DBEdit11BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := '3';
  if fSrcDlg.ShowModalpk = Mrok then
  begin
    FmDmic01.Pkinv.FieldByName('RTNPK').Asstring := fSrcDlg.KeyNo;
  end;
end;

procedure TFmSTIn12.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DeleBtnClick(Sender);
    Vk_F2:
      SaveBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFmSTIn12.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_9_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmSTIn12.DBEdit3Change(Sender: TObject);
begin
  if DBEdit3.Text <> '' then
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM VIEW_SVMAST WHERE CUSCOD = :XCUD  ');
      Params[0].Asstring := DBEdit3.Text;
      Open;
      Edit1.Text := FmDmic01.Query1.FieldByName('REGNO').Asstring;
      Edit5.Text := FmDmic01.Query1.Fieldbyname('SNAM').Asstring +
        FmDmic01.Query1.Fieldbyname('NAME1').Asstring + '   ' +
        FmDmic01.Query1.Fieldbyname('NAME2').Asstring;
    end;
end;

procedure TFmSTIn12.DeleBtnClick(Sender: TObject);
begin
  FmDmic01.Pktran.Delete;
end;

procedure TFmSTIn12.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn12.RzBitBtn1Click(Sender: TObject);
begin
  DBGrid1.Setfocus;
  DBGrid1.SelectedIndex := 0;
  if FmDmic01.Pktran.State in Dseditmodes then
    SFMain.RaiseException('ยังไม่Enter ผ่านช่องสุดท้าย');

  FmDmic01.Pktran.Append;
end;

procedure TFmSTIn12.RzBitBtn2Click(Sender: TObject);
begin
  FmDmic01.Pktran.Delete;
end;

procedure TFmSTIn12.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.PkinvPKLOCAT.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn12.DBEdit1PropertiesChange(Sender: TObject);
begin
  Edit2.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBEdit1.Text);
end;

procedure TFmSTIn12.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.PkinvOFFICCOD.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn12.DBEdit7PropertiesChange(Sender: TObject);
begin
  Edit3.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit7.Text);
end;

procedure TFmSTIn12.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := '3';
  if fSrcDlg.ShowModalpk = Mrok then
    FmDmic01.Pkinv.FieldByName('RTNPK').Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn12.RtDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime := FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime;
  end;
end;

procedure TFmSTIn12.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TFmSTIn12.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PRTNNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn12.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SvPkRT.fr3', '2');
end;

procedure TFmSTIn12.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_9_2', 'DELETE', FmDmic01.Pkinv.FieldByName('PKNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.Pkinv.Delete;
      end;
  end;
end;

procedure TFmSTIn12.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F2:
      if (DbGrid1.SelectedField.FieldName) = 'PARTNO' then
        DBGrid1DblClick(Sender);
  end;
end;

procedure TFmSTIn12.DBGrid1EditButtonClick(Sender: TObject);
begin
  {Application.Createform(TfSrcDlg,fSrcDlg);
  with fSrcDlg.qrFindDat do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT LOCAT AS PKLOCAT,PARTNO,PARTDESC,PKNO,PKDATE,JOBNO,QTY,GROUP1 FROM PARTTRAN '+
            'WHERE PKNO =:XPKNO ');
    Params[0].asString := FmDmic01.Pkinv.FieldByName('RTNPK').Asstring;
    Open ;
    if fSrcDlg.qrFindDat.Bof and fSrcDlg.qrFindDat.Eof then
    SFMain.RaiseException('ไม่มีข้อมูลใบเบิก');
  end;}

  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.SearchEd.Properties.Readonly := True;
  fSrcDlg.Key_a := FmDmic01.Pkinv.FieldByName('RTNPK').Asstring;
  if fSrcDlg.ShowModalPktrnSV = Mrok then
  begin
    if FmDmic01.Pktran.State = DsBrowse then
      FmDmic01.Pktran.Edit;
    FmDmic01.Pktran.FieldByName('PARTNO').Asstring := fSrcDlg.qrFindDat.FieldByName('PARTNO').Asstring;
    FmDmic01.Pktran.FieldByName('QTYORD').AsFloat := fSrcDlg.qrFindDat.FieldByName('QTY').AsFloat;
  end;
end;

procedure TFmSTIn12.DBGrid1DblClick(Sender: TObject);
begin
  {Application.Createform(TfSrcDlg,fSrcDlg);
  with fSrcDlg.qrFindDat do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.LOCAT AS PKLOCAT,A.PARTNO,A.PARTDESC,A.PKNO,A.PKDATE,A.JOBNO,A.QTY,A.GROUP1 '+
            'FROM PARTTRAN A WHERE A.PKNO =:XPKNO ');
    Params[0].asString := FmDmic01.Pkinv.FieldByName('RTNPK').Asstring;
    Open ;
    if fSrcDlg.qrFindDat.Bof and fSrcDlg.qrFindDat.Eof then
    SFMain.RaiseException('ไม่มีข้อมูลใบเบิก');
  end;
  if fSrcDlg.ShowModalpk = MrOk then
  begin
    IF FmDmic01.Pktran.State = DsBrowse then FmDmic01.Pktran.Edit;
    FmDmic01.Pktran.FieldByName('PARTNO').Asstring := fSrcDlg.qrFindDat.FieldByName('PARTNO').Asstring;
    FmDmic01.Pktran.FieldByName('QTYORD').AsFloat  := fSrcDlg.qrFindDat.FieldByName('QTY').AsFloat;
  end; }

  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.SearchEd.Properties.Readonly := True;
  fSrcDlg.Key_a := FmDmic01.Pkinv.FieldByName('RTNPK').Asstring;
  if fSrcDlg.ShowModalPktrnSV = Mrok then
  begin
    if FmDmic01.Pktran.State = DsBrowse then
      FmDmic01.Pktran.Edit;
    FmDmic01.Pktran.FieldByName('PARTNO').Asstring := fSrcDlg.qrFindDat.FieldByName('PARTNO').Asstring;
    FmDmic01.Pktran.FieldByName('QTYORD').AsFloat := fSrcDlg.qrFindDat.FieldByName('QTY').AsFloat;
  end;
end;

procedure TFmSTIn12.DBEdit3PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.STRNO,A.REGNO,A.CUSCOD,B.SNAM,B.NAME1,B.NAME2 ' +
      'FROM SVMAST A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD AND A.CUSCOD=:XCODE');

    Params[0].Asstring := DBEdit3.Text;
    Open;
  end;

  Edit1.Text := FmDmic01.Query1.FieldByName('REGNO').Asstring;
  Edit5.Text := FmDmic01.Query1.Fieldbyname('SNAM').Asstring +
    FmDmic01.Query1.Fieldbyname('NAME1').Asstring + '   ' +
    FmDmic01.Query1.Fieldbyname('NAME2').Asstring;
end;

procedure TFmSTIn12.DBMemo1Click(Sender: TObject);
begin
  FmSTIn12.KeyPreview := False;
end;

procedure TFmSTIn12.DBMemo1Exit(Sender: TObject);
begin
  FmSTIn12.KeyPreview := True;
end;

end.

