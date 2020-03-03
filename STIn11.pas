unit STIn11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, Mask, ComCtrls, DB,
  ImgList, ToolWin, RzEdit, RzDBEdit, RzLabel, RzPanel, RzSpnEdt, RzDBGrid,
  RzDbkbd, RzBorder, RzDBLbl, AdvGlowButton, AdvToolBar, AdvPanel, cxButtonEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxCheckBox, cxLookAndFeelPainters, cxGroupBox,
  cxRadioGroup, ActnList, cxGraphics, cxLookAndFeels, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus,
  dxStatusBar, cxMemo, cxButtons, frxExportXLSX, frxRich, frxTableObject,
  frxClass, frxDCtrl, frxFDComponents, frxGradient, frxExportImage,
  frxExportPDF, frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross,
  frxChBox, frxChart, frxBarcode;

type
  TFmSTIn11 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label6: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label39: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label46: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Edit3: TcxTextEdit;
    Edit4: TcxTextEdit;
    Edit5: TcxTextEdit;
    DBCheckBox1: TcxDBCheckBox;
    DBRadioGroup2: TcxDBRadioGroup;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    CheckBox2: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    DBEdit3: TcxDBTextEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TFDQuery;
    Query2: TFDQuery;
    ActionList1: TActionList;
    actEditPrn: TAction;
    DBkbd1: TRzDBkbd;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator10: TAdvToolBarSeparator;
    AdvToolBarSeparator12: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    DBRadioGroup1: TcxDBRadioGroup;
    AutoBtn: TAdvGlowButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    Pvdate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit7: TcxDBButtonEdit;
    DBEdit11: TcxDBButtonEdit;
    DBEdit6: TcxDBButtonEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit27: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit28: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    dxStatusBar1: TdxStatusBar;
    Label15: TLabel;
    DBGrid1: TRzDBGrid;
    AdvPanel3: TAdvPanel;
    NextBtn: TcxButton;
    DeleBtn: TcxButton;
    Label11: TRzLabel;
    DBMemo1: TcxDBMemo;
    Label2: TLabel;
    AutoJobBtn: TAdvGlowButton;
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
    procedure insBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure DBEdit6BtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure AutoBtnClick(Sender: TObject);
    procedure DBCheckBox2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure AutClick(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PvdateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure AutoJobBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure Showjob;
    procedure ShowGride;
  public
    XEditpric, XEditdisc, NALLOW: string;
    XSrLocat: string;
    XJobdate: Tdatetime;
    { Public declarations }
  end;

var
  FmSTIn11: TFmSTIn11;
  Smnettot: Double;
  NmPart, XEstno, XCampno, XGroup1, XCupong: string;
  QTYOut, AvCost: Double;
  XDate: TdateTime;
  Xyear, Xmonth, XDay: Word;

implementation

uses
  Dmic01, Functn01, DmSet1, Dlginvms, DlgAuto, USoftFirm, uSrcDlg, unfrPreview,
  Dmsec;

{$R *.DFM}

procedure TFmSTIn11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FmDmic01.Pkinv.State in Dseditmodes then
    SFMain.RaiseException('กรุณากดปุ่ม ยกเลิก และ ออก ตามขั้นตอน ');

  FmDmic01.Pkinv.Close;
  FmDmic01.PkTran.Close;
  Action := Cafree;
  FmSTIn11 := nil;
end;

procedure TFmSTIn11.insBtnClick(Sender: TObject);
begin
  with FmDmic01.Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO ='''' ');
    if not FmDmic01.Pkinv.Prepared then
      FmDmic01.Pkinv.Prepare;
    OPEN;
    INSERT;
  end;

  FmDmic01.Pkinv.FieldByName('SALLEV').AsString := '1';

  with FmDmic01.PKtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := '';
    if not FmDmic01.PKtran.Prepared then
      FmDmic01.PKtran.Prepare;
    OPEN;
  end;
  DBRadioGroup2.ItemIndex := 0;
  Edit1.Text := '';
  Edit2.text := '';
  Edit5.Text := '';
  Label15.Visible := False;
  Label6.Visible := False;
  Dbedit6.Properties.ReadOnly := False;
   //
  if DBEdit1.Enabled = false then
    DBEdit7.SetFocus
  else
    DBEdit1.SetFocus;
  ShowGride;
end;

procedure TFmSTIn11.CancBtnClick(Sender: TObject);
begin
  Label15.Visible := False;
  Label6.Visible := False;
  FmDmic01.Pkinv.Cancel;
end;

procedure TFmSTIn11.SaveBtnClick(Sender: TObject);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin

  if FmDmic01.CountFound > 1 then
    SFMain.RaiseException('รหัสสินค้าซ้ำ #' + FmDmic01.DoupPart + ' กรุณาลบก่อน');

  if DBEdit6.Text = '' then
    sfmain.RaiseException('กรุณาอ้างอิงใบแจ้งซ่อม..!');

  if FmDmic01.PkTran.RecordCount = 0 then
    SFMain.RaiseException('ไม่มีรายการสินค้า');

  with FmDmic01.Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT JOBNO,STATUS FROM JOBORDER WHERE JOBNO = :XNOO ');
    Params[0].Asstring := Dbedit6.text;
    Open;
    if FmDmic01.Query2.Fieldbyname('Status').Asstring <> 'W' then
      SFMain.RaiseException('ปิด JOB แล้ว..!');
  end;

  {If FmDmic01.PkinvFLAG.Asstring = '3' Then
  begin
    HF := 'H_PKSV';
    LF := 'L_PKSV';
  end
  Else
  If FmDmic01.PkinvFLAG.Asstring = 'S' Then
  begin
    HF := 'H_RTSV';
    LF := 'L_RTSV';

    ShortDateFormat :='yyyy/mm/dd';
    If datetostr(FmDmic01.PKinv.Fieldbyname('Pkdate').asDatetime)<datetostr(Now) Then
    begin
      ShortDateFormat :='dd/mm/yyyy';
      SFmain.RaiseException('ห้ามรับคืนสินค้า ย้อนวันปัจจุบัน จะกระทบต้นทุนเฉลี่ย');
    end;
    ShortDateFormat :='dd/mm/yyyy';
  end
  Else
  If FmDmic01.PkinvFLAG.Asstring = 'R' Then
  begin
    HF := 'H_RTPT';
    LF := 'L_RTPT';

    ShortDateFormat :='yyyy/mm/dd';
    If datetostr(FmDmic01.PKinv.Fieldbyname('Pkdate').asDatetime)<datetostr(Now) Then
    begin
      ShortDateFormat :='dd/mm/yyyy';
      SFmain.RaiseException('ห้ามรับคืนสินค้า ย้อนวันปัจจุบัน จะกระทบต้นทุนเฉลี่ย');
    end;
    ShortDateFormat :='dd/mm/yyyy';

  end
  Else
  begin
    HF := 'H_PK';
    LF := 'L_PK';
  end;

  If Not FmDmic01.QDBConfig.Active Then FmDmic01.QDBConfig.Open;
  If FmDmic01.QDBConfig.Fieldbyname(HF).asstring='Y' Then
  begin
    LV := FmDmic01.PKinv.Fieldbyname('PkLocat').asstring;
    DV := FmDmic01.PKinv.Fieldbyname('Pkdate').asDatetime;
    If FmDmic01.PkinvUpdateStatus.Value='Inserted' Then
    begin
      SQLTXT :='SELECT MAX(PKNO) AS MAXNO FROM PK_INVOI WHERE PKLOCAT=:EDIT1 AND '+
      'SUBSTR(PKNO,2,2)=:EDIT2 AND SUBSTR(PKNO,5,2)=:EDIT3 AND SUBSTR(PKNO,7,2)=:EDIT4 ';
      If FmDmic01.Duplicate Then
        FmDmic01.PkinvPKNO.Asstring := FmDmic01.Maxno(HF,LF,LV,Sqltxt,DV)
      Else
        FmDmic01.PkinvPKNO.Asstring := FmDmic01.RunNo01(HF,LF,LV,DV);
    end;
  end; }

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_9_1', 'INSERT', FmDmic01.Pkinv.FieldByName('PKNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_9_1', 'EDIT', FmDmic01.Pkinv.FieldByName('PKNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  FmDmic01.PkTran.First;
  FmDmic01.Pkinv.Post;
end;

procedure TFmSTIn11.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');
  AutoBtn.Enabled := SaveBtn.Visible;
  AutoJobBtn.Enabled := SaveBtn.Visible;
  NextBtn.Enabled := (DataSource1.Dataset.State in DsEditModes);
  DeleBtn.Enabled := NextBtn.Enabled;

  DBRadioGroup1.Properties.ReadOnly := not (DataSource1.Dataset.State = DsInsert);
  DBRadioGroup2.Properties.ReadOnly := DBRadioGroup1.Properties.ReadOnly;
  DBCheckBox1.Properties.ReadOnly := DBRadioGroup1.Properties.ReadOnly;

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
  if not (FmDmic01.QDBConfig.Active) then
    FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_PKSV').asstring = 'Y';
  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  PvDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
  DBEdit16.Properties.Readonly := XEditDisc <> 'Y';
end;

procedure TFmSTIn11.DBRadioGroup1Click(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 0 then
    FmDmic01.PkinvVATTYPE.Asstring := '1';
  if DBRadioGroup1.ItemIndex = 1 then
    FmDmic01.PkinvVATTYPE.Asstring := '2';
end;

procedure TFmSTIn11.DBRadioGroup2Click(Sender: TObject);
begin
  if DBRadioGroup2.ItemIndex = 0 then
    FmDmic01.PkinvSVCOLOR.Asstring := 'N';
  if DBRadioGroup2.ItemIndex = 1 then
    FmDmic01.PkinvSVCOLOR.Asstring := 'Y';
end;

procedure TFmSTIn11.DBEdit6BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalJob = Mrok then
  begin
    DBedit6.Text := fSrcDlg.KeyNo;
    Showjob;
  end;
end;

procedure TFmSTIn11.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFmSTIn11.DBEdit6Exit(Sender: TObject);
begin
  if Dbedit6.text <> '' then
  begin
    if DBedit3.Text = '' then
      Showjob;
    Dbedit6.Properties.ReadOnly := True;
  end;
end;

procedure TFmSTIn11.DBEdit4Change(Sender: TObject);
begin
  if not FmDmic01.QDBConfig.Active then
    FmDmic01.QDBConfig.Open;
  if FmDmic01.QDBConfig.Fieldbyname('H_PKSV').asstring = 'Y' then
    DBEdit2.Properties.Readonly := True
  else
    DBEdit2.Properties.Readonly := False;
end;

procedure TFmSTIn11.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');

  if FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring <> '' then
    SFMain.RaiseException('ออกใบส่งของ/ใบกำกับภาษีแล้ว #' + FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring);

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_9_1', 'DELETE', FmDmic01.Pkinv.FieldByName('PKNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.Pkinv.Delete;
      end;
  end;
end;

procedure TFmSTIn11.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_9_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmSTIn11.EditBtnClick(Sender: TObject);
var
  XStrno: string;
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    FSrcDlg.XSrLocat := ''
  else
    FSrcDlg.XSrLocat := sfmain.Xlocat;
  FSrcDlg.Flag_a := '3';

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
        'WHERE (cuscod =:EDIT1) ');
      Params[0].AsString := FmDmic01.PkinvCusCod.AsString;
      OPEN;
      Edit5.Text := FmDmic01.Query2.FieldByname('SNAM').Asstring + ' ' +
        FmDmic01.Query2.FieldByname('NAME1').Asstring + '   ' +
        FmDmic01.Query2.FieldByname('NAME2').Asstring;
    end;

    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT STRNO FROM JOBORDER WHERE JOBNO = :XNOO ');
      Params[0].Asstring := Dbedit6.text;
      Open;
      XStrno := FmDmic01.Query2.Fieldbyname('STRNO').Asstring;
    end;

    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT REGNO FROM SVMAST WHERE STRNO= :XStr');
      Params[0].Asstring := XStrno;
      Open;
    end;
    Edit1.Text := FmDmic01.Query1.FieldByName('REGNO').Asstring;

    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT Status,GROUP1,Campno,Preordno,CUPONGNO FROM JOBORDER WHERE JOBNO = :XNOO ');
      Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('Jobno').asstring;
      Open;
    end;
    XEstno := FmDmic01.Query2.Fieldbyname('Preordno').asstring;
    XCampno := FmDmic01.Query2.Fieldbyname('CAMPNO').asstring;
    XCupong := FmDmic01.Query2.Fieldbyname('CUPONGNO').asstring;

    Xgroup1 := FmDmic01.Query2.FieldByName('GROUP1').Asstring;
    Edit2.Text := Xgroup1;

    Label15.Visible := (DBEdit6.Text <> '') or (DBEdit11.Text <> '');
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'W' then
      Label15.Caption := 'สถานะ Job : กำลังซ่อม';
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'F' then
      Label15.Caption := 'สถานะ Job : ปิด Job แล้ว';
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'R' then
      Label15.Caption := 'สถานะ Job : รับรถแล้ว';

    DataSource1StateChange(Sender);
    ShowGride;
  end;
end;

procedure TFmSTIn11.AutoBtnClick(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  Price: string;
begin
  if DBEdit6.Text = '' then
    sfmain.RaiseException('กรุณาอ้างอิง JOB..!');

  Application.CreateForm(TFDlgAuto, FDlgAuto);
  FDlgAuto.XGroup1 := Edit2.Text;

  if FDlgAuto.ShowModal = MrOk then
  begin
    FDlgAuto.QHlppart.First;
    while not (FDlgAuto.QHlppart.Eof) do
    begin
      if FDlgAuto.QHlppart.FieldByName('MARK').Asstring = 'Y' then
      begin
        with FmDmic01.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO =:0 AND LOCAT=:1 ');
          Params[0].Asstring := FDlgAuto.QHlppart.FieldByName('PARTNO').Asstring;
          Params[1].Asstring := FmDmic01.Pkinv.Fieldbyname('Pklocat').Asstring;
          Open;
        end;
        if not (FmDmic01.Query1.Eof and FmDmic01.Query1.Bof) then
        begin
          Price := 'Price' + DBEdit5.text;
          FmDmic01.Pktran.Append;
          FmDmic01.Pktran.FieldByName('PARTNO').AsString := FDlgAuto.QHlppart.FieldByName('PARTNO').Asstring;
          FmDmic01.Pktran.FieldByName('QTYORD').AsFloat := FDlgAuto.QHlppart.FieldByName('QTY').AsFloat;
          FmDmic01.Pktran.FieldByName('QTYOUT').AsFloat := FDlgAuto.QHlppart.FieldByName('QTY').AsFloat;
          FmDmic01.Pktran.FieldByName('REDU1').AsFloat := FmDmic01.PkinvDISCT.AsFloat;
          FmDmic01.Pktran.FieldByName('REDU2').AsFloat := 0;
          FmDmic01.Pktran.FieldByName('REDU3').AsFloat := 0;
          FmDmic01.Pktran.FieldByName('UPRICE').AsFloat := FmDmic01.Query1.FieldByName(Price).AsFloat;
          FmDmic01.PkTran.FieldByName('GROUP1').Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;

          Pric1 := FRound((FmDmic01.PktranUPrice.value * (FmDmic01.PktranRedu1.value / 100)), 2);
          SmPric1 := FmDmic01.PktranUPrice.value - Pric1;
          Pric2 := SmPric1 * (FmDmic01.Pktranredu2.value / 100);
          SmPric2 := SmPric1 - Pric2;
          Pric3 := SmPric2 * (FmDmic01.Pktranredu3.value / 100);
          SmPric3 := SmPric2 - Pric3;
          FmDmic01.PktranNetprc.AsFloat := SmPric3;
          FmDmic01.PktranTotPrc.AsFloat := FRound((FmDmic01.PktranNetprc.AsFloat * FmDmic01.PkTranQTYOUT.AsFloat), 2);
          FmDmic01.Pktran.Post;
        end;
      end;
      FDlgAuto.QHlppart.Next;
    end;
  end;
end;

procedure TFmSTIn11.Showjob;
begin
  if Dbedit6.text <> '' then
  begin
    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT JOBNO,LOCAT,CUSCOD,STATUS,VATTYPE,STRNO,GROUP1,CAMPNO,CUPONGNO,RECVDATE,PREORDNO ' +
        'FROM JOBORDER WHERE JOBNO = :XNOO ');
      if not FmDmic01.Query2.Prepared then
        FmDmic01.Query2.Prepare;
      Params[0].Asstring := Dbedit6.text;
      Open;
    end;
    XJobdate := FmDmic01.Query2.FieldByName('RECVDATE').Asdatetime;

    if FmDmic01.Query2.Bof and FmDmic01.Query2.eof then
      SFMain.RaiseException('ไม่พบ Job หมายเลขนี้');

    if FmDmic01.Pkinv.FieldByName('PKDATE').Asdatetime < XJobdate then
    begin
      MessageBeep(0);
      PvDate.Setfocus;
      SFMain.RaiseException('วันที่เบิกน้อยกว่าวันที่เปิด Job' + #13#13 +
        'วันที่เปิด Job คือ ' + FmDmic01.Query2.FieldByName('RECVDATE').Asstring);
    end;
    XGroup1 := FmDmic01.Query2.FieldByName('GROUP1').Asstring;
    Edit2.Text := XGroup1;

    XEstno := FmDmic01.Query2.Fieldbyname('Preordno').asstring;
    XCampno := FmDmic01.Query2.Fieldbyname('CAMPNO').asstring;
    XCupong := FmDmic01.Query2.Fieldbyname('CUPONGNO').asstring;

    Label15.Visible := (DBEdit6.Text <> '') or (DBEdit11.Text <> '');
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'W' then
      Label15.Caption := 'สถานะ Job : กำลังซ่อม';
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'F' then
      Label15.Caption := 'สถานะ Job : ปิด Job แล้ว';
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'R' then
      Label15.Caption := 'สถานะ Job : รับรถแล้ว';

    if FmDmic01.Query2.fieldbyname('LOCAT').asstring <> FmDmic01.PkinvPKLOCAT.Asstring then
      SFMain.RaiseException('เป็น Job ของสาขา ' + FmDmic01.Query2.fieldbyname('LOCAT').asstring);

    if FmDmic01.Query2.Fieldbyname('Status').Asstring <> 'W' then
      SFMain.RaiseException('ปิด Job แล้ว');

    Edit2.Text := FmDmic01.Query2.FieldByName('GROUP1').Asstring;

    if FmDmic01.Pkinv.State in Dseditmodes then
    begin
      FmDmic01.Pkinv.FieldByName('JOBNO').Asstring := FmDmic01.Query2.FieldByName('JOBNO').Asstring;
      FmDmic01.Pkinv.FieldByName('CUSCOD').Asstring := FmDmic01.Query2.FieldByName('CUSCOD').Asstring;
      FmDmic01.Pkinv.FieldByName('VATTYPE').Asstring := FmDmic01.Query2.FieldByName('VATTYPE').Asstring;
      FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring := FmDmic01.Query2.FieldByName('CAMPNO').Asstring;
      FmDmic01.Pkinv.FieldByName('CUPONGNO').Asstring := FmDmic01.Query2.FieldByName('CUPONGNO').Asstring;
    end;

    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT A.STRNO,A.REGNO,A.CUSCOD,A.PTDISCT,A.VIPEXP,A.VIPCARD, ' +
        'B.SNAM,B.NAME1,B.NAME2,B.DISCT,B.SALLEV,B.NETADD ' +
        'FROM SVMAST A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD AND A.STRNO=:XSTRNO');
      Params[0].Asstring := FmDmic01.Query2.FieldByName('STRNO').Asstring;
      Open;
      if FmDmic01.Query1.Bof and FmDmic01.Query1.eof then
        SFMain.RaiseException('ไม่พบข้อมูลในแฟ้มประวัติ ');
    end;

    Edit1.Text := FmDmic01.Query1.FieldByName('REGNO').Asstring;
    Edit5.Text := FmDmic01.Query1.Fieldbyname('SNAM').Asstring +
      FmDmic01.Query1.Fieldbyname('NAME1').Asstring + '   ' +
      FmDmic01.Query1.Fieldbyname('NAME2').Asstring;

    if FmDmic01.Pkinv.State in Dseditmodes then
    begin
      if (FmDmic01.Query1.Fieldbyname('VIPCARD').Asstring <> '') then
      begin
        if (FmDmic01.Query1.Fieldbyname('VIPEXP').Asdatetime >= FmDmic01.Query2.Fieldbyname('Recvdate').asdatetime) then
        begin
          FmDmic01.Pkinv.FieldByName('DISCT').AsFloat := FmDmic01.Query1.Fieldbyname('PTDISCT').Asfloat;
          Label6.Caption := 'ใช้ส่วนลดจาก บัตร VIP. No.' + FmDmic01.Query1.Fieldbyname('VIPCARD').Asstring;
          Label6.Visible := True;
          MessageBeep(0);
        end
        else
        begin
          MessageBeep(0);
          Showmessage('บัตร VIP. หมดอายุแล้ว ควรแนะนำลูกค้าให้ต่ออายุ');
          Label6.Caption := 'บัตร VIP หมดอายุแล้ว';
          Label6.Visible := True;
        end;
      end
      else
      begin
       //Showmessage('ไม่มีบัตร VIP โปรแกรมจะเลือกส่วนลดจากรหัสลูกค้า');
        FmDmic01.Pkinv.FieldByName('DISCT').AsFloat := FmDmic01.Query1.fieldbyName('DISCT').AsFloat;
        FmDmic01.Pkinv.FieldByName('NETADD').AsFloat := Fmdmic01.Query1.fieldbyname('NETADD').AsFloat;
      end;
      FmDmic01.Pkinv.FieldByName('SALLEV').Asstring := FmDmic01.Query1.Fieldbyname('SALLEV').Asstring;
       // Asign Campaign ***
      if (FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring <> '') and
        (FmDmic01.Pkinv.State in Dseditmodes) then
      begin
        with FmDmic01.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM CAMPGRP WHERE CAMPNO=:EDIT1');
          Params[0].Asstring := FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring;
          Open;
          if not (Bof and Eof) then
          begin
            if FmDmic01.PkinvPkdate.AsDateTime < FmDmic01.Query1.Fieldbyname('Startdt').AsDatetime then
            begin
              FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring := '';
              XCampno := '';
              Messagebeep(0);
              SFMain.RaiseException('วันที่จ่ายสินค้าน้อยกว่าวันเริ่ม แคมเปญ ' + #13#13 + 'ยกเลิกการใช้แคมเปญ');
            end;
            if FmDmic01.PkinvPkdate.AsDateTime > FmDmic01.Query1.Fieldbyname('Enddate').AsDatetime then
              if MessageDlg('วันที่จ่ายสินค้าเลยกำหนดวันสิ้นสุด แคมเปญ' + #13#13 + 'ยังยืนยันจะใช้แคมเปญหรือไม่ ?', Mtconfirmation, [mbok, mbcancel], 0) = Mrcancel then
              begin
                Messagebeep(0);
                FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring := '';
                XCampno := '';
                Abort;
              end;
            XGroup1 := FmDmic01.Query1.Fieldbyname('Group1').Asstring;
            FmDmic01.Pkinv.FieldByName('DISCT').AsFloat := FmDmic01.Query1.Fieldbyname('PTR_RAT1').Asfloat;
            Label6.Caption := '** ใช้ส่วนลดตาม Campaign Setup **';
            Label6.Visible := True;
            MessageBeep(0);
          end;
        end;
      end;
    end;
  end;
  DataSource1StateChange(DataSource1);
end;

procedure TFmSTIn11.ShowGride;
begin
  if DBCheckBox1.Checked then
  begin
    Dbgrid1.Columns[8].Title.Caption := 'ลด(B)';
    Dbgrid1.Columns[8].Fieldname := 'DISCAMT';
    Dbgrid1.Columns[9].Title.Caption := 'N/A';
    Dbgrid1.Columns[10].Title.Caption := 'N/A';
    Dbgrid1.Columns[9].Readonly := True;
    Dbgrid1.Columns[10].Readonly := True;
  end
  else
  begin
    Dbgrid1.Columns[8].Title.Caption := '%ลด1';
    Dbgrid1.Columns[8].Fieldname := 'REDU1';
    Dbgrid1.Columns[9].Title.Caption := '%ลด2';
    Dbgrid1.Columns[9].Fieldname := 'REDU2';
    Dbgrid1.Columns[10].Title.Caption := '%ลด3';
    Dbgrid1.Columns[10].Fieldname := 'REDU3';
    Dbgrid1.Columns[9].Readonly := False;
    Dbgrid1.Columns[10].Readonly := False;
  end;
end;

procedure TFmSTIn11.DBCheckBox2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if FmDmic01.PkInv.State in Dseditmodes then
    FmDmic01.PkTran.Edit;

  if FmDmic01.PkTran.FieldByName('CAMPNO').Asstring = '' then
  begin
    FmDmic01.PkTran.FieldByName('CAMPNO').Asstring := FmDmic01.PkInv.FieldByName('CAMPNO').Asstring;
    FmDmic01.PkTran.FieldByName('CAMFLG').Asstring := 'Y';
  end
  else
  begin
    FmDmic01.PkTran.FieldByName('CAMPNO').Asstring := '';
    FmDmic01.PkTran.FieldByName('CAMFLG').Asstring := 'N';
  end;
end;

procedure TFmSTIn11.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn11.AutClick(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  Price: string;
begin
  Application.CreateForm(TFDlgAuto, FDlgAuto);
  with FDlgAuto.QHlppart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPPART WHERE GCODE=:Edit1 ');
    Params[0].Asstring := Xgroup1;
    Open;
  end;
  if FDlgAuto.ShowModal = MrOk then
  begin
    FDlgAuto.QHlppart.First;
    while not (FDlgAuto.QHlppart.Eof) do
    begin
      if FDlgAuto.QHlppart.FieldByName('MARK').Asstring = 'Y' then
      begin
        with FmDmic01.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC ');
          Params[0].Asstring := FDlgAuto.QHlppart.FieldByName('PARTNO').Asstring;
          Params[1].Asstring := FmDmic01.Pkinv.Fieldbyname('Pklocat').Asstring;
          Open;
        end;
        if not (FmDmic01.Query1.Eof and FmDmic01.Query1.Bof) then
        begin
          Price := 'Price' + DBEdit5.text;
          FmDmic01.Pktran.Append;
          FmDmic01.Pktran.FieldByName('PARTNO').AsString := FDlgAuto.QHlppart.FieldByName('PARTNO').Asstring;
          FmDmic01.Pktran.FieldByName('QTYORD').AsString := FDlgAuto.QHlppart.FieldByName('QTY').Asstring;
          FmDmic01.Pktran.FieldByName('QTYOUT').AsString := FDlgAuto.QHlppart.FieldByName('QTY').Asstring;
          FmDmic01.Pktran.FieldByName('REDU1').AsFloat := FmDmic01.PkinvDISCT.AsFloat;
          FmDmic01.Pktran.FieldByName('REDU2').AsFloat := 0;
          FmDmic01.Pktran.FieldByName('REDU3').AsFloat := 0;
          FmDmic01.Pktran.FieldByName('UPRICE').AsFloat := FmDmic01.Query1.FieldByName(Price).AsFloat;
          FmDmic01.PkTran.FieldByName('GROUP1').Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
          FmDmic01.PkTran.FieldByName('FREE').Asstring := 'Y';

          Pric1 := FRound((FmDmic01.PktranUPrice.value * (FmDmic01.PktranRedu1.value / 100)), 2);
          SmPric1 := FmDmic01.PktranUPrice.value - Pric1;
          Pric2 := SmPric1 * (FmDmic01.Pktranredu2.value / 100);
          SmPric2 := SmPric1 - Pric2;
          Pric3 := SmPric2 * (FmDmic01.Pktranredu3.value / 100);
          SmPric3 := SmPric2 - Pric3;
          FmDmic01.PktranNetprc.AsFloat := SmPric3;
          FmDmic01.PktranTotPrc.AsFloat := FRound((FmDmic01.PktranNetprc.AsFloat * FmDmic01.PkTranQTYOUT.AsFloat), 2);
          FmDmic01.Pktran.Post;
        end;
      end;
      FDlgAuto.QHlppart.Next;
    end;
  end;
end;

procedure TFmSTIn11.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.PkinvPKLOCAT.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn11.DBEdit1PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD =:EDIT3');
    params[0].AsString := DBEdit1.Text;
    open;
  end;
  edit3.Text := FmDmic01.Query1.fieldbyname('locatnm').AsString;
end;

procedure TFmSTIn11.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.PkinvOFFICCOD.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn11.DBEdit7PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from officer where code =:edit4');
    params[0].AsString := dbedit7.Text;
    open;
  end;
  edit4.Text := FmDmic01.Query1.fieldbyname('name').AsString;
end;

procedure TFmSTIn11.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Allo: string;
begin
  XDate := FmDmic01.Pkinv.FieldByName('PKDATE').AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOdsv = Mrok then
  begin
    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SV_ORDIV Where ORDNO =:XEdit ');
      Params[0].AsString := fSrcDlg.KeyNo;
      Open;
    end;
    if FmDmic01.Query2.Bof and FmDmic01.Query2.Eof then
      SFMain.RaiseException('ไม่พบใบขอเบิก');
    Xgroup1 := FmDmic01.Query2.FieldByName('GCODE').Asstring;
    Edit2.Text := Xgroup1;
    FmDmic01.Pkinv.FieldByName('SVORD').Asstring := FmDmic01.Query2.FieldByName('ORDNO').Asstring;
    FmDmic01.Pkinv.FieldByName('JOBNO').Asstring := FmDmic01.Query2.FieldByName('JOBNO').Asstring;
    FmDmic01.Pkinv.FieldByName('CUSCOD').Asstring := FmDmic01.Query2.FieldByName('CUSCOD').Asstring;
    FmDmic01.Pkinv.FieldByName('VATTYPE').Asstring := FmDmic01.Query2.FieldByName('VATTYPE').Asstring;
    FmDmic01.Pkinv.FieldByName('DISCT').AsFloat := FmDmic01.Query2.Fieldbyname('DISCT').AsFloat;

    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT A.STRNO,A.REGNO,A.CUSCOD,B.SNAM,B.NAME1,B.NAME2 ' +
        'FROM SVMAST A,CUSTMAST B WHERE A.CUSCOD=B.CUSCOD AND A.CUSCOD=:XCODE');

      Params[0].Asstring := FmDmic01.Query2.Fieldbyname('Cuscod').Asstring;
      Open;
      if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
        SFMain.RaiseException('ไม่พบรหัสลูกค้า');
    end;

    Edit1.Text := FmDmic01.Query1.FieldByName('REGNO').Asstring;
    Edit5.Text := FmDmic01.Query1.Fieldbyname('SNAM').Asstring +
      FmDmic01.Query1.Fieldbyname('NAME1').Asstring + '   ' +
      FmDmic01.Query1.Fieldbyname('NAME2').Asstring;

    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT CUSCOD,DISCT,SALLEV FROM CUSTMAST ' +
        'WHERE CUSCOD =:XCUSCOD ');
      Params[0].AsString := FmDmic01.Query2.FieldByName('CUSCOD').Asstring;
      Open;
    end;

    FmDmic01.Pkinv.FieldByName('SALLEV').Asstring := FmDmic01.Query1.Fieldbyname('SALLEV').Asstring;

    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM Sv_OrdTn WHERE Ordno = :XOrdno ');
      Params[0].Asstring := FmDmic01.Pkinv.FieldByName('SVORD').Asstring;
      Open;
    end;

    FmDmic01.Query1.First;
    while not FmDmic01.Query1.Eof do
    begin
      with FmDmic01.Query2 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO=:EDIT1 AND LOCAT=:2');
        params[0].asstring := FmDmic01.Query1.FieldByName('Partno').AsString;
        params[1].asstring := SFMain.Xlocat;
        Open;
      end;
      FmDmic01.PKtran.Append;
      FmDmic01.PKtranYEAR1.AsString := Inttostr(XYear);
      FmDmic01.PKtranPartNo.AsString := FmDmic01.Query1.FieldByName('Partno').AsString;
      FmDmic01.PKtranQtyOrd.AsFloat := FmDmic01.Query1.FieldByName('QtyOrd').AsFloat;
      FmDmic01.PKtranJobNo.AsString := FmDmic01.Query1.FieldByName('Jobno').AsString;
      FmDmic01.PKtranFlag.AsString := FmDmic01.PkinvFLAG.Asstring;
      FmDmic01.PKtranSvColor.AsString := FmDmic01.Pkinv.FieldByName('SVCOLOR').AsString;
      FmDmic01.PkTranGROUP1.Asstring := FmDmic01.Query2.Fieldbyname('GROUP1').Asstring;

      FmDmic01.PKtranQtyOut.AsFloat := FmDmic01.PKtranQtyOrd.AsFloat;

      FmDmic01.PKtranNetFl.AsString := FmDmic01.Query1.FieldByName('NetFl').AsString;
      FmDmic01.PKtranRedu1.AsFloat := FmDmic01.Query1.FieldByName('Redu1').AsFloat;
      FmDmic01.PKtranRedu2.AsFloat := FmDmic01.Query1.FieldByName('Redu2').AsFloat;
      FmDmic01.PKtranRedu3.AsFloat := FmDmic01.Query1.FieldByName('Redu3').AsFloat;
      FmDmic01.PKtranUprice.AsFloat := FmDmic01.Query1.FieldByName('UPRICE').AsFloat;

      FmDmic01.PKtranNetPrc.AsFloat := FmDmic01.PKtranUprice.AsFloat * (1 - FmDmic01.PKtranRedu1.AsFloat / 100);
      FmDmic01.PKtranTotPrc.AsFloat := FmDmic01.PKtranNetPrc.AsFloat * FmDmic01.PKtranQtyOut.AsFloat;

      FmDmic01.Query1.Next;
      FmDmic01.PKtran.Post;
      FmDmic01.PKtran.Append;
    end;

    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNOO ');
      Params[0].Asstring := FmDmic01.Pkinv.FieldByName('JOBNO').Asstring;
      Open;
    end;

    Label15.Visible := (DBEdit6.Text <> '') or (DBEdit11.Text <> '');
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'W' then
      Label15.Caption := 'สถานะ Job : กำลังซ่อม';
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'F' then
      Label15.Caption := 'สถานะ Job : ปิด Job แล้ว';
    if FmDmic01.Query2.Fieldbyname('Status').asstring = 'R' then
      Label15.Caption := 'สถานะ Job : รับรถแล้ว';
  end;
end;

procedure TFmSTIn11.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalJob = Mrok then
  begin
    DBedit6.Text := fSrcDlg.KeyNo;
    Showjob;
  end;
end;

procedure TFmSTIn11.PvdateExit(Sender: TObject);
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

procedure TFmSTIn11.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TFmSTIn11.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PRECVNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn11.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_OutPart.fr3', '2');
end;

procedure TFmSTIn11.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_OutPart.fr3', '1');
end;

procedure TFmSTIn11.FormShow(Sender: TObject);
begin
  with FmDmic01.Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO ='''' ');
    if not FmDmic01.Pkinv.Prepared then
      FmDmic01.Pkinv.Prepare;
    OPEN;
  end;
  XEditpric := 'N';
  XEditdisc := 'N';
  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Editpric,EditDisc FROM SECRET WHERE USERID =:XEdit');
    PARAMS[0].ASSTRING := SFMain.Xuser_id;
    if not FmDmic01.Query1.Prepared then
      FmDmic01.Query1.Prepare;
    OPEN;
    XEditpric := FmDmic01.Query1.Fieldbyname('Editpric').Asstring;
    XEditdisc := FmDmic01.Query1.Fieldbyname('EditDisc').Asstring;
  end;
  FmDmic01.Flag_a := '3';

  FmDmic01.CondPay.Close;
  FmDmic01.CondPay.Open;
  NAllow := FmDmic01.CondPay.Fieldbyname('NStkLob').Asstring; {ไม่ยอมให้สต็อกติดลบ?}
end;

procedure TFmSTIn11.CheckBox2Click(Sender: TObject);
begin
  {if CheckBox2.Checked = True then
  FmDmic01.nCkb2 := 'Y' else FmDmic01.nCkb2 := 'N';}
end;

procedure TFmSTIn11.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  LVPrice: string;
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    if FmDmic01.Pktran.State = DsBrowse then
      FmDmic01.Pktran.Edit;
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
      Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('PKLOCAT').Asstring;
      Params[1].Asstring := fSrcDlg.KeyNo;
      Open;
      if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
        SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end;

    if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.PkinvNETADD.AsFloat > 0) then
    begin
      FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat +
        (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat *
        (FmDmic01.PkinvNETADD.AsFloat / 100));
    end
    else
    begin
      LVPrice := 'Price' + FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring;
      FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
    end;

    FmDmic01.PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
    FmDmic01.PktranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
  end;
end;

procedure TFmSTIn11.DBCheckBox1Click(Sender: TObject);
begin
  ShowGride;
end;

procedure TFmSTIn11.DBGrid1ColExit(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3, vtotprc, npric1: Double;
  XQtyBK, Redu: Double;
  Allo, Cost, LVPrice: string;
begin
  Xdate := FmDmic01.PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);
  if FmDmic01.PkTranUpdateStatus.Value = 'Inserted' then
  begin
    if FmDmic01.PkTran.State = DsBrowse then
      FmDmic01.PkTran.Edit;
  end
  else if (FmDmic01.PkTran.State <> Dsinsert) and (FmDmic01.PkTranPartno.asstring <> '') then
  begin
    DBGrid1.Setfocus;
    DBGrid1.SelectedIndex := 0;
    SFMain.RaiseException('ต้องการแก้ไขให้ลบรายการ แล้วบันทึกใหม่');
  end;
  //
  Label11.Caption := '';
  if (DbGrid1.SelectedField.FieldName) = 'PARTNO' then
  begin
    if FmDmic01.CountFound > 1 then
      SFMain.RaiseException('รหัสสินค้าซ้ำ #' + FmDmic01.DoupPart + ' กรุณาลบก่อน');

    if FmDmic01.PkTranPartno.asstring = '' then
      SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้า');

    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
      PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
      PARAMS[1].ASSTRING := FmDmic01.PkinvPKLOCAT.asstring;
      if not FmDmic01.Query1.Prepared then
        FmDmic01.Query1.Prepare;
      Open;
    end;

    if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
    begin
      Application.CreateForm(TFsvmast, Fsvmast);
      with Fsvmast.Hquery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO LIKE :XPARTNO AND LOCAT=:XLOC');
        PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring + '%';
        PARAMS[1].ASSTRING := FmDmic01.PkinvPKLOCAT.asstring;
        if not Fsvmast.HQuery1.Prepared then
          Fsvmast.HQuery1.Prepare;
        Open;
      end;
      if (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) then
      begin
        Fsvmast.Close;
        SFMain.RaiseException('ไม่พบรหัสสินค้า');
      end
      else
      begin
        if Fsvmast.Showmodal = mrok then
          FmDmic01.PkTranPartno.asstring := Fsvmast.Hquery1.Fieldbyname('Partno').asstring;
        Fsvmast.Close;
      end;
    end;

    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
        'LOCAT = :Edit2');
      PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
      PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
      if not FmDmic01.Query1.Prepared then
        FmDmic01.Query1.Prepare;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end;
    if FmDmic01.Query1.Fieldbyname('GROUP1').Asstring = '' then
      SFMain.RaiseException('ยังไม่บันทึกกลุ่มสินค้าในแฟ้มสาขา ' + FmDmic01.PkTranPklocat.asstring);

    FmDmic01.PkTranGROUP1.Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
    //DBEdit17.Caption := FmDmic01.Query1.Fieldbyname('Desc1').Asstring;

    FmDmic01.PktranFRT.Asstring := FmDmic01.Query1.Fieldbyname('FRT').Asstring;
    FmDmic01.PkTranREDU1.AsFloat := FmDmic01.PkinvDisct.AsFloat;

    FmDmic01.PkTranCampno.Asstring := FmDmic01.PkinvCampno.Asstring;
    if FmDmic01.PkinvCampno.Asstring <> '' then
    begin
      if FmDmic01.PkTranGROUP1.Asstring <> XGroup1 then
      begin
        FmDmic01.PkTranREDU1.AsFloat := 0;
        FmDmic01.PkTranCampno.Asstring := '';
      end;
      if FmDmic01.PkTranCampno.Asstring <> '' then
        FmDmic01.PkTranCamFlg.Asstring := 'Y'
      else
        FmDmic01.PkTranCamFlg.Asstring := 'N';
    end;
  end;

  if (DbGrid1.SelectedField.FieldName) = 'QTYORD' then
  begin
    if FmDmic01.PkTranQtyord.AsFloat = 0 then
      SFMain.RaiseException('จำนวนเป็น 0');

    NmPart := '';
    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Cost + ',' + Allo + ' FROM INVANLS WHERE ' +
        'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
      Params[0].Asstring := FmDmic01.PkTranPartno.asstring;
      Params[1].Asstring := FmDmic01.PkTranPkLocat.asstring;
      Params[2].Asstring := Inttostr(Xyear);
      if not FmDmic01.Query2.Prepared then
        FmDmic01.Query2.Prepare;
      Open;
    end;
 //   LvPrice := 'Price'+FmDmic01.PkinvSALLEV.Value;
    if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.PkinvNETADD.AsFloat > 0) then
    begin
      FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat +
        (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat *
        (FmDmic01.PkinvNETADD.AsFloat / 100));
    end
    else
    begin
      LVPrice := 'Price' + FmDmic01.PkinvSALLEV.Value;
      FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
    end;

    if CheckBox2.Checked then
      FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat
    else
      FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
    FmDmic01.PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
    FmDmic01.PktranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;

    Label11.Caption := 'ยอดคงเหลือ : ' + Floattostr(FmDmic01.Query2.Fieldbyname(Allo).Asfloat);
    if FmDmic01.Query2.FieldByName(Allo).AsFloat < FmDmic01.PktranQTYORD.AsFloat then
    begin
      MessageBeep(0);
      if FmDmic01.Query2.FieldByName(Allo).AsFloat > 0 then
        FmDmic01.PktranQTYOUT.AsFloat := FmDmic01.Query2.FieldByName(Allo).AsFloat;

      FmDmic01.PktranAvgCost.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;

       //Case ไม่มีสินค้าทดแทน
      if FmDmic01.Query1.FieldByName('Code_T').AsString = '' then
      begin
        Showmessage(' จำนวนสินค้าไม่พอจ่าย ');
        NmPart := '';
      end
      else       // Case มี สินค้าทดแทน
      begin
        with FmDmic01.Query3 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
            'LOCAT = :Edit2');
          PARAMS[0].ASSTRING := FmDmic01.Query1.FieldByName('Code_T').AsString;
          PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
          if not FmDmic01.Query3.Prepared then
            FmDmic01.Query3.Prepare;
          Open;
        end;
        if not (FmDmic01.Query3.Bof and FmDmic01.Query3.Eof) then
        begin
          NmPart := FmDmic01.Query3.FieldByName('Partno').AsString;
          QTYOut := FmDmic01.PktranQTYORD.AsFloat - FmDmic01.PktranQTYOUT.AsFloat;
          Avcost := FmDmic01.Query2.FieldByName(Cost).AsFloat;
        end
        else
          Showmessage(' รหัสทดแทนไม่มีในแฟ้มข้อมูล ');
      end;
    end
    else     // Case มีสินค้าพอ
    begin
      NmPart := '';
      FmDmic01.PkTranQTYOUT.AsFloat := FmDmic01.PktranQTYORD.AsFloat;
      FmDmic01.PktranAvgCost.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;
    end;

    {if FmDmic01.PktranAvgcost.AsFloat = 0 Then
    begin
      DBGrid1.Setfocus;
      DBGrid1.SelectedIndex:=0;
      SFMain.RaiseException('ต้นทุนเฉลี่ยเป็น 0 กรุณาแก้ไขให้ถูกต้องก่อน'+#13+
      'หากเป็นการ Set รหัสใหม่ ต้อง Adjust ยอดที่มีต้นทุนด้วย ');
    end;}
  end;

  if (DbGrid1.SelectedField.FieldName) = 'QTYOUT' then
  begin
    if (NAllow = 'Y') and (FmDmic01.PktranQTYOUT.AsFloat > FmDmic01.Query2.FieldByName(Allo).AsFloat) then
    begin
      DBGrid1.Setfocus;
      DBGrid1.SelectedIndex := 0;
      SFMain.RaiseException('ในระบบ Setup ไม่อนุญาตให้สต็อกติดลบ');
    end;
    if FmDmic01.PktranQTYOUT.AsFloat = 0 then
      if Messagedlg('ต้องการ Back Order หรือไม่ ?', Mtconfirmation, [mbNO, mbOk], 0) = MrOk then
        FmDmic01.PktranBACKFLG.Asstring := 'Y'
      else
      begin
        DBGrid1.Setfocus;
        DBGrid1.SelectedIndex := 0;
        SFMain.RaiseException('จำนวนจ่ายเป็น 0');
      end;
  end;

  if (DbGrid1.SelectedField.FieldName) = 'BACKFLG' then
  begin
    if (UpperCase(FmDmic01.PKtranBACKFLG.Asstring) <> 'Y') and
      (UpperCase(FmDmic01.PKtranBACKFLG.Asstring) <> '') then
      SFMain.RaiseException('Y:Back Order หรือ ว่าง :ไม่ Back Order');

    if UpperCase(FmDmic01.PKtranBACKFLG.Asstring) = 'Y' then
      FmDmic01.PktranBACKFLG.Asstring := Uppercase(FmDmic01.PktranBACKFLG.Asstring);
  end;

  if (DbGrid1.SelectedField.FieldName) = 'FREE' then
  begin
    if (UpperCase(FmDmic01.PKtranFree.Asstring) <> 'Y') and
      (UpperCase(FmDmic01.PKtranFree.Asstring) <> 'N') then
      SFMain.RaiseException('Y:ฟรี หรือ N:คิดเงิน ');
    FmDmic01.PktranFree.Asstring := Uppercase(FmDmic01.PktranFree.Asstring);

    Dbgrid1.Columns[6].Readonly := (XEditpric <> 'Y') or (UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y');
  end;

  if FmDmic01.PKtranNETFL.Asstring = 'N' then
  begin
    Dbgrid1.Columns[7].Readonly := True;
    Dbgrid1.Columns[8].Readonly := True;
    Dbgrid1.Columns[9].Readonly := True;
    FmDmic01.PkTranREDU1.AsFloat := 0;
  end
  else
  begin
    Dbgrid1.Columns[7].Readonly := (XEditDisc <> 'Y');
    Dbgrid1.Columns[8].Readonly := (XEditDisc <> 'Y') or (DBCheckBox1.Checked);
    Dbgrid1.Columns[9].Readonly := (XEditDisc <> 'Y') or (DBCheckBox1.Checked);
  end;

  if not DBCheckBox1.Checked then
  begin
    if (DbGrid1.SelectedField.FieldName = 'REDU1') or
      (DbGrid1.SelectedField.FieldName = 'REDU2') or
      (DbGrid1.SelectedField.FieldName = 'REDU3') or
      (DbGrid1.SelectedField.FieldName = 'UPRICE')
      then
    begin
      if (FmDmic01.PktranUprice.AsFloat = 0) then
      begin
        DBGrid1.Setfocus;
        DBGrid1.SelectedIndex := 0;
        SFMain.RaiseException('ราคาขายเป็น 0 ตรวจสอบอีกครั้ง');
      end;
     // ตรวจสอบการลดตาม Maxdisc
      Redu := FmDmic01.PktranRedu1.Asfloat + FmDmic01.PktranRedu2.Asfloat +
        FmDmic01.PktranRedu3.Asfloat;
      if (Redu > FmDmic01.Query1.FieldByName('Maxdisc').Asfloat) and
        (FmDmic01.Query1.FieldByName('Maxdisc').Asfloat > 0) then
      begin
        MessageBeep(0);
        MessageDlg('ลดเกินอัตรา Maximum Discount  '#13 +
          'ระบบจะปรับให้ส่วนลดตามที่ Set ไว้', Mtinformation, [mbok], 0);
        FmDmic01.PktranRedu1.Asfloat := FmDmic01.Query1.FieldByName('Maxdisc').Asfloat;
        FmDmic01.PktranRedu2.Asfloat := 0;
        FmDmic01.PktranRedu3.Asfloat := 0;
      end;
     //
      if (FmDmic01.PktranUprice.AsFloat < FmDmic01.Query2.FieldByName(Cost).AsFloat) and
        (UpperCase(FmDmic01.PKtranFree.Asstring) <> 'Y') and
        (FmDmic01.Query1.FieldByName('CHARGFLG').Asstring <> 'Y') then
        Messagedlg('เตือน : ราคาขายต่ำกว่าต้นทุน', mtwarning, [mbok], 0);
      npric1 := (FmDmic01.PktranUPrice.value * (FmDmic01.PktranRedu1.value / 100));
      Pric1 := Rounder(npric1, 2);
      SmPric1 := FmDmic01.PktranUPrice.value - Pric1;
      Pric2 := SmPric1 * (FmDmic01.Pktranredu2.value / 100);
      SmPric2 := SmPric1 - Pric2;
      Pric3 := SmPric2 * (FmDmic01.Pktranredu3.value / 100);
      SmPric3 := SmPric2 - Pric3;
      FmDmic01.PktranNetprc.AsFloat := Rounder(SmPric3, 2);

      if UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y' then
        FmDmic01.PktranNetprc.AsFloat := 0;
      vtotprc := (FmDmic01.PktranNetprc.AsFloat * FmDmic01.PkTranQTYOUT.AsFloat);
      FmDmic01.PktranTotPrc.AsFloat := Rounder(vtotprc, 2);
    end;
  end
  else if (DbGrid1.SelectedField.FieldName = 'DISCAMT') then
  begin
    FmDmic01.PktranNetprc.AsFloat := FmDmic01.PktranUPrice.Asfloat -
      FmDmic01.PktranDiscamt.AsFloat;

    if UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y' then
      FmDmic01.PktranNetprc.AsFloat := 0;
    vtotprc := (FmDmic01.PktranNetprc.AsFloat * FmDmic01.PkTranQTYOUT.AsFloat);
    FmDmic01.PktranTotPrc.AsFloat := Rounder(vtotprc, 2);
  end;
end;

procedure TFmSTIn11.DBGrid1DblClick(Sender: TObject);
var
  LVPrice: string;
begin
  if DBGrid1.SelectedField.FieldName = 'PARTNO' then
  begin
  {if DBEdit6.Text = '' then
    SFMain.RaiseException('ยังไม่มีเลขที่ใบแจ้งซ่อม');}
    Application.Createform(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalParts = Mrok then
    begin
      if FmDmic01.Pktran.State = DsBrowse then
        FmDmic01.Pktran.Edit;
      with FmDmic01.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
        Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('PKLOCAT').Asstring;
        Params[1].Asstring := fSrcDlg.KeyNo;
        Open;
        if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
          SFMain.RaiseException('ไม่พบรหัสสินค้า');
      end;

      if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.PkinvNETADD.AsFloat > 0) then
      begin
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat +
          (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat *
          (FmDmic01.PkinvNETADD.AsFloat / 100));
      end
      else
      begin
        LVPrice := 'Price' + FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring;
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
      end;

      FmDmic01.PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
      FmDmic01.PktranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
    end;
  end;
end;

procedure TFmSTIn11.DBGrid1EditButtonClick(Sender: TObject);
var
  LVPrice: string;
begin
  if DBGrid1.SelectedField.FieldName = 'PARTNO' then
  begin
  {if DBEdit6.Text = '' then
    SFMain.RaiseException('ยังไม่มีเลขที่ใบแจ้งซ่อม');}
    Application.Createform(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalParts = Mrok then
    begin
      if FmDmic01.Pktran.State = DsBrowse then
        FmDmic01.Pktran.Edit;
      with FmDmic01.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
        Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('PKLOCAT').Asstring;
        Params[1].Asstring := fSrcDlg.KeyNo;
        Open;
        if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
          SFMain.RaiseException('ไม่พบรหัสสินค้า');
      end;

      if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.PkinvNETADD.AsFloat > 0) then
      begin
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat +
          (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat *
          (FmDmic01.PkinvNETADD.AsFloat / 100));
      end
      else
      begin
        LVPrice := 'Price' + FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring;
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
      end;

      FmDmic01.PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
      FmDmic01.PktranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
    end;
  end;
end;

procedure TFmSTIn11.DBGrid1Enter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TFmSTIn11.DBGrid1Exit(Sender: TObject);
begin
  DBkbd1.Disable := false;
end;

procedure TFmSTIn11.NextBtnClick(Sender: TObject);
begin
  DBGrid1.Setfocus;
  DBGrid1.SelectedIndex := 0;
  if FmDmic01.Pktran.State in Dseditmodes then
    SFMain.RaiseException('ยังไม่Enter ผ่านช่องสุดท้าย');

  FmDmic01.Pktran.Append;
end;

procedure TFmSTIn11.DeleBtnClick(Sender: TObject);
begin
  FmDmic01.Pktran.delete;
  DBGrid1.Setfocus;
  DBGrid1.SelectedIndex := 0;
end;

procedure TFmSTIn11.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    with TDBGrid(ActiveControl) do
      if Selectedindex = 0 then
      begin
        if FmDmic01.Pktran.State in [DsInsert] then
        begin
          FmDmic01.Pktran.Append;
          if NmPart <> '' then
          begin
            FmDmic01.PktranPartno.AsString := NmPart;
            FmDmic01.PktranQTYORD.AsFloat := QTYOut;
            FmDmic01.PktranAvgcost.AsFloat := Avcost;
          end;
        end;
      end;
end;

procedure TFmSTIn11.DBMemo1Click(Sender: TObject);
begin
  FmSTIn11.KeyPreview := False;
end;

procedure TFmSTIn11.DBMemo1Exit(Sender: TObject);
begin
  FmSTIn11.KeyPreview := True;
end;

procedure TFmSTIn11.AutoJobBtnClick(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  Allo, Cost, Price: string;
begin
  Xdate := FmDmic01.PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);

  if DBEdit11.Text <> '' then
    sfmain.RaiseException('เป็นการอ้างอิงจากใบขอเบิกอะไหล่');

  if DBEdit6.Text = '' then
    sfmain.RaiseException('กรุณาอ้างอิง JOB..!');

  with FmDmic01.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.PARTNO,A.DESC1,A.QTY,A.REDU,A.UPRICE,A.NETPRIC,B.GROUP1 ' +
      'FROM JOB_TRAN A INNER JOIN INVMAST B ON (A.PARTNO=B.PARTNO) WHERE JOBNO =:0 ORDER BY A.PARTNO ');
    Params[0].Asstring := DBEdit6.Text;
    Open;
  end;

  if (fmDmic01.Query1.Eof and fmDmic01.Query1.Bof) then
    sfmain.RaiseException('ไม่พบอะไหล่จากหน้าเปิด JOB<br/>กรุณาตรวจสอบรหัสอะไหล่ว่ามีในระบบหรือไม่..!');

  FmDmic01.Query1.First;
  while not (FmDmic01.Query1.Eof) do
  begin
    Price := 'Price' + DBEdit5.text;
    FmDmic01.Pktran.Append;
    FmDmic01.Pktran.FieldByName('PARTNO').AsString := FmDmic01.Query1.FieldByName('PARTNO').Asstring;
    FmDmic01.Pktran.FieldByName('PARTDESC').AsString := FmDmic01.Query1.FieldByName('DESC1').Asstring;
    FmDmic01.Pktran.FieldByName('QTYORD').AsFloat := FmDmic01.Query1.FieldByName('QTY').AsFloat;
    FmDmic01.Pktran.FieldByName('QTYOUT').AsFloat := FmDmic01.Query1.FieldByName('QTY').AsFloat;

    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Cost + ',' + Allo + ' FROM INVANLS WHERE ' +
        'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
      Params[0].Asstring := FmDmic01.PkTranPartno.asstring;
      Params[1].Asstring := FmDmic01.PkTranPkLocat.asstring;
      Params[2].Asstring := Inttostr(Xyear);
      if not FmDmic01.Query2.Prepared then
        FmDmic01.Query2.Prepare;
      Open;
    end;

    if (NAllow = 'Y') and (FmDmic01.PktranQTYOUT.AsFloat > FmDmic01.Query2.FieldByName(Allo).AsFloat) then
    begin
      {DBGrid1.Setfocus;
      DBGrid1.SelectedIndex:=0;
      SFMain.RaiseException('ในระบบ Setup ไม่อนุญาตให้สต็อกติดลบ'); }
      FmDmic01.PktranQTYOUT.AsFloat := 0;
    end;
    if FmDmic01.PktranQTYOUT.AsFloat = 0 then
      if Messagedlg('ต้องการ Back Order หรือไม่ ?', Mtconfirmation, [mbNO, mbOk], 0) = MrOk then
        FmDmic01.PktranBACKFLG.Asstring := 'Y'
      else
      begin
      {DBGrid1.Setfocus;
      DBGrid1.SelectedIndex:=0;
      SFMain.RaiseException('จำนวนจ่ายเป็น 0');}
        FmDmic01.Pktran.Delete;
      end;

    FmDmic01.Pktran.FieldByName('REDU1').AsFloat := FmDmic01.Query1.FieldByName('REDU').AsFloat;
    FmDmic01.Pktran.FieldByName('REDU2').AsFloat := 0;
    FmDmic01.Pktran.FieldByName('REDU3').AsFloat := 0;
    FmDmic01.Pktran.FieldByName('UPRICE').AsFloat := FmDmic01.Query1.FieldByName('UPRICE').AsFloat;
    FmDmic01.Pktran.FieldByName('NETPRC').AsFloat := FmDmic01.Query1.FieldByName('NETPRIC').AsFloat;
    FmDmic01.Pktran.FieldByName('TOTPRC').AsFloat := FmDmic01.Query1.FieldByName('NETPRIC').AsFloat;
    FmDmic01.PkTran.FieldByName('GROUP1').Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;

    {Pric1    := FRound((FmDmic01.PktranUPrice.value*(FmDmic01.PktranRedu1.value/100)),2);
    SmPric1  := FmDmic01.PktranUPrice.value-Pric1;
    Pric2    := SmPric1*(FmDmic01.Pktranredu2.value/100);
    SmPric2  := SmPric1-Pric2;
    Pric3    := SmPric2*(FmDmic01.Pktranredu3.value/100);
    SmPric3  := SmPric2-Pric3;
    FmDmic01.PktranNetprc.AsFloat := SmPric3;
    FmDmic01.PktranTotPrc.AsFloat := FRound((FmDmic01.PktranNetprc.AsFloat*FmDmic01.PkTranQTYOUT.AsFloat),2);}
    FmDmic01.Pktran.Post;
    FmDmic01.Query1.Next;
  end;
end;

end.

