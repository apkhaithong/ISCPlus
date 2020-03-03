unit SvIn10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons, ComCtrls, Grids, DBGrids, ImgList,
  ToolWin, cxTextEdit, cxButtonEdit, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, AdvGlowButton, AdvToolBar, AdvPanel,
  cxLookAndFeelPainters, cxCheckBox, cxPC, cxGroupBox, cxRadioGroup, cxMemo,
  AdvSmoothTabPager, RzBorder, AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons,
  ActnList, cxGraphics, cxLookAndFeels, dxBarBuiltInMenu, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzDbkbd, dxStatusBar,
  RzDBGrid, frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject,
  frxExportPDF, frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TSvIn_10 = class(TForm)
    DataSource1: TDataSource;
    QServ: TFDQuery;
    QPart: TFDQuery;
    DataSource4: TDataSource;
    DataSource3: TDataSource;
    QGrpmst: TFDQuery;
    DataSource2: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel1: TAdvPanel;
    Label10: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label32: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label27: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label31: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    qaDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    Edit1: TcxTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit10: TcxDBButtonEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit18: TcxDBButtonEdit;
    DBEdit19: TcxDBButtonEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    DBMemo1: TcxDBMemo;
    DBRadioGroup2: TcxDBRadioGroup;
    DBEdit11: TcxDBTextEdit;
    CheckBox2: TcxCheckBox;
    raSelect: TcxRadioGroup;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    cxRadioGroup1: TcxRadioGroup;
    Label22: TLabel;
    DBEdit20: TcxDBButtonEdit;
    DBEdit21: TcxDBTextEdit;
    AutoBtn: TAdvGlowButton;
    DBRadioGroup1: TcxDBRadioGroup;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    DBGrid1: TRzDBGrid;
    AdvPanel3: TAdvPanel;
    PartBtn: TAdvGlowButton;
    CancBtn1: TAdvGlowButton;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label24: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    DBDateEdit1: TcxDBDateEdit;
    DBDateEdit2: TcxDBDateEdit;
    DBEdit23: TcxDBTextEdit;
    DBEdit24: TcxDBTextEdit;
    DBEdit26: TcxDBTextEdit;
    DBEdit27: TcxDBTextEdit;
    DBDateEdit3: TcxDBDateEdit;
    DBEdit22: TcxDBTextEdit;
    DBMemo2: TcxDBMemo;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxGroupBox1: TcxGroupBox;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit3: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    dxStatusBar1: TdxStatusBar;
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
    procedure InsBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure CancBtn1Click(Sender: TObject);
    procedure AutoBtnClick(Sender: TObject);
    procedure PartBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure HotSvmastClick(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FldCombo4BtnClick(Sender: TObject);
    procedure FldCombo6BtnClick(Sender: TObject);
    procedure ColrBtnClick(Sender: TObject);
    procedure FldCombo7BtnClick(Sender: TObject);
    procedure FldCombo8BtnClick(Sender: TObject);
    procedure FldCombo9BtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FbtRepairClick(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure AddAutoClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit18Change(Sender: TObject);
    procedure DBEdit19Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit18PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBMemo2Click(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure DBEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure DBEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit19PropertiesChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvIn_10: TSvIn_10;

implementation

uses
  DmSv, Srchdlg1, SvSt10, Functn01, USoftFirm, uSrcDlg1, unfrPreview, Dmsec,
  uSrchdlg1;

{$R *.DFM}

procedure TSvIn_10.InsBtnClick(Sender: TObject);
begin
  with Dm_Sv.QQa_invoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM QA_INVOI WHERE QUOTNO ='''' ');
    Open;
    Insert;
  end;
  with Dm_Sv.QQa_tran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM QA_TRAN WHERE QUOTNO ='''' ');
    Open;
  end;

  if DBEdit1.Enabled = false then
    DBEdit10.SetFocus
  else
    DBEdit1.SetFocus;
end;

procedure TSvIn_10.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if sfmain.XChgLoc = 'Y' then
    fSrcDlg1.XSrLocat := ''
  else
    fSrcDlg1.XSrLocat := sfmain.Xlocat;
  if fSrcDlg1.ShowModalQuata = Mrok then
  begin
    with Dm_Sv.QQa_invoi1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM QA_INVOI WHERE QUOTNO = :XQUO ');
      Params[0].Asstring := fSrcDlg1.Keyno;
      Open;
    end;
    if Dm_Sv.QQa_invoi1.Bof and Dm_Sv.QQa_invoi1.eof then
      SFMain.RaiseException('ไม่มีข้มมูล ');
    with Dm_Sv.QSvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM View_SVMAST WHERE STRNO= :XSTRNO  ');
      Params[0].Asstring := Dm_Sv.QQa_invoi1.FieldByName('STRNO').Asstring;
      Open;
    end;
    if Dm_Sv.QSvmast.Bof and Dm_Sv.QSvmast.eof then
      SFMain.RaiseException('ไม่มีขอ้มูล.ในแฟ้มประวัติรถ');
    with Dm_Sv.QQa_tran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM QA_TRAN WHERE QUOTNO = :XQUO ');
      Params[0].Asstring := Dm_Sv.QQa_invoi1.FieldByName('QUOTNO').Asstring;
      Open;
    end;

   {with Dm_Sv.QSvstock do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM SVSTOCK WHERE CODE= :XCODE AND LOCAT = :XLOCAT ');
     Params[0].Asstring := Dm_Sv.QQa_tran1.FieldByName('PARTNO').Asstring;
     Params[1].Asstring := Dm_Sv.QQa_invoi1.FieldByName('LOCAT').Asstring;
     Open ;
    end;
    }
    with QGrpmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPMST WHERE GCODE = :XCODE ');
      Params[0].Asstring := Dm_Sv.QQa_invoi1.FieldByname('GCODE').asstring;
      Open;
    end;
  end;
end;

procedure TSvIn_10.SavBtnClick(Sender: TObject);
begin
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV1_01', 'INSERT', DBEdit2.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV1_01', 'EDIT', DBEdit2.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_Sv.QQa_invoi1.Post;
end;

procedure TSvIn_10.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSV1_01', 'DELETE', DBEdit2.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        Dm_Sv.QQa_invoi1.delete;
      end;
  end;
end;

procedure TSvIn_10.CancBtnClick(Sender: TObject);
begin
  if Dm_Sv.QQa_invoi1.Active then
    Dm_Sv.QQa_invoi1.Cancel;
end;

procedure TSvIn_10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QServ.Close;
  QPart.Close;
  QGrpmst.Close;
  Dm_Sv.QSvmast.Close;
  Dm_Sv.QQa_invoi1.Close;
  Dm_Sv.QQa_Tran1.Close;
  Action := Cafree;
  SvIn_10 := Nil;
end;

procedure TSvIn_10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSV', 'HDSV1_01');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSvIn_10.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  //
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');
  DBRadioGroup1.Properties.Readonly := not SavBtn.Visible;
  DBRadioGroup2.Properties.Readonly := not SavBtn.Visible;
  DBGrid1.Readonly := not SavBtn.Visible;
  PartBtn.Enabled := SavBtn.Visible;
  CancBtn1.Enabled := SavBtn.Visible;
  AutoBtn.Enabled := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := ClBtnFace;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := True;
        TcxDBDateEdit(Components[N]).Style.Color := ClBtnFace;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).Enabled := False;
        TRzDBGrid(Components[N]).Color := ClBtnFace;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := False;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).Enabled := True;
        TRzDBGrid(Components[N]).Color := clWhite;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;

  if not (Dm_SV.QDBConfig.Active) then
    DM_SV.QDBConfig.Open;
  DBEdit2.Properties.Readonly := Dm_Sv.QDBConfig.Fieldbyname('H_QA').asstring = 'Y';
  //
  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  QaDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State in dsEditModes);
end;

procedure TSvIn_10.DBGrid1DblClick(Sender: TObject);
begin
  if Dm_Sv.QQa_invoi1.FieldByName('QUOTNO').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกวันที่ใบเสนอราคา');

  Dm_Sv.QQa_tran1.Append;

  if raSelect.ItemIndex = 0 then
  begin
    Application.Createform(TfSrcDlg1, fSrcDlg1);
    if fSrcDlg1.ShowModalParts = Mrok then
    begin
      with Dm_sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO = :XPART AND LOCAT=:XLOC');
        Params[0].Asstring := fSrcDlg1.KeyNo;
        Params[1].Asstring := Dm_Sv.QQa_invoi1.FieldByName('LOCAT').Asstring;
        Open;
      end;
      if Dm_sv.Query1.Bof and Dm_sv.Query1.Eof then
        SFMain.RaiseException('ไม่พบข้อมูล');
      Dm_Sv.QQa_tran1.FieldByName('PARTNO').Asstring := Dm_sv.Query1.FieldByName('PARTNO').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('Desc1').Asstring := Dm_sv.Query1.FieldByName('Desc1').Asstring;
      if CheckBox2.Checked then
        Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := Dm_sv.Query1.FieldByName('STDBUY').AsFloat
      else
        Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := Dm_sv.Query1.FieldByName('PRICE1').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat := 1;
      Dm_Sv.QQa_tran1.FieldByName('REDU').AsFloat := 0;
      Dm_Sv.QQa_tran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('TOTALPRC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
    end;
  end;

  if raSelect.ItemIndex = 1 then
  begin
    Application.Createform(TfSrcDlg1, fSrcDlg1);
    if fSrcDlg1.ShowModalTabsv = Mrok then
    begin
      Dm_Sv.QQa_tran1.FieldByName('Partno').Asstring := fSrcDlg1.qrFindDat.FieldByName('SVCODE').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('Desc1').Asstring := fSrcDlg1.qrFindDat.FieldByName('Descp').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := fSrcDlg1.qrFindDat.FieldByName('SVPRIC').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat := fSrcDlg1.qrFindDat.FieldByName('FRT').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('REDU').AsFloat := 0;
      Dm_Sv.QQa_tran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('TOTALPRC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
    end;
  end;

  if raSelect.ItemIndex = 2 then
  begin
    Application.Createform(TfSrcDlg1, fSrcDlg1);
    if fSrcDlg1.ShowModalTabsv = Mrok then
    begin
      Dm_Sv.QQa_tran1.FieldByName('Partno').Asstring := fSrcDlg1.qrFindDat.FieldByName('SVCODE').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('Desc1').Asstring := fSrcDlg1.qrFindDat.FieldByName('Descp').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := fSrcDlg1.qrFindDat.FieldByName('SVPRIC').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat := fSrcDlg1.qrFindDat.FieldByName('FRT').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('REDU').AsFloat := 0;
      Dm_Sv.QQa_tran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('TOTALPRC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
    end;
  end;
end;

procedure TSvIn_10.DBGrid1ColExit(Sender: TObject);
var
  D: Double;
begin
  if DBGrid1.SelectedField.FieldName = 'PARTNO' then
  begin
    if Dm_Sv.QQa_tran1.State = Dsbrowse then
      Dm_Sv.QQa_tran1.Edit;
    {If Dm_Sv.QQa_tran1.FieldByName('PARTNO').Asstring = ''  Then
     SFMain.RaiseException('ยังไม่บันทึก  รหัสสินค้า ') ;}
    if raSelect.ItemIndex = 0 then
    begin
      with Dm_Sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO= :XCODE AND LOCAT= :XLOCAT ');
        Params[0].Asstring := Dm_Sv.QQa_tran1.FieldByName('PARTNO').Asstring;
        Params[1].Asstring := Dm_Sv.QQa_invoi1.FieldByName('LOCAT').Asstring;
        Open;
      end;
     {if Dm_Sv.Query1.Bof and Dm_Sv.Query1.eof then
     Begin
      //If MessageDlg('ไม่พบรหัสอะไหล่ ต้องการบันทึกเอง ?',Mtconfirmation,[Mbok,MbCancel],0)=MrCancel Then
      SFMain.RaiseException('ไม่พบรหัสอะไหล่ กรุณาไป Setup ก่อน');
     end;}


      Dm_Sv.QQa_tran1.FieldByName('PARTNO').Asstring := Dm_sv.Query1.FieldByName('PARTNO').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('Desc1').Asstring := Dm_sv.Query1.FieldByName('Desc1').Asstring;
      if CheckBox2.Checked then
        Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := Dm_sv.Query1.FieldByName('STDBUY').AsFloat
      else
        Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := Dm_sv.Query1.FieldByName('PRICE1').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat := 1;
      Dm_Sv.QQa_tran1.FieldByName('REDU').AsFloat := 0;
      Dm_Sv.QQa_tran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('TOTALPRC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('TRNFLG').Asstring := 'P';
    end;
    if raSelect.ItemIndex = 1 then
    begin
      with Dm_Sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM TBLABOR WHERE SVCODE= :XCODE ');
        Params[0].Asstring := Dm_Sv.QQa_tran1.FieldByName('PARTNO').Asstring;
        Open;
      end;
      if Dm_Sv.Query1.Bof and Dm_Sv.Query1.eof then
      begin
        if MessageDlg('ไม่พบรหัสค่าแรง ต้องการบันทึกเอง ?', Mtconfirmation, [Mbok, MbCancel], 0) = MrCancel then
          SFMain.RaiseException('ไม่ต้องการบันทึกเอง');
      end;
      if not Dm_Sv.Condpay.Active then
        Dm_Sv.Condpay.Open;

 //    Dm_Sv.QQa_tran1.FieldByName('Partno').Asstring := Dm_Sv.Query1.FieldByName('SVCODE').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('Desc1').Asstring := Dm_Sv.Query1.FieldByName('Descp').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := Dm_Sv.Condpay.FieldByName('SVRATE').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat := Dm_Sv.Query1.FieldByName('FRT').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('REDU').AsFloat := 0;
      Dm_Sv.QQa_tran1.FieldByName('NETPRIC').AsFloat := FRound(Dm_Sv.QQa_tran1.FieldByName('Qty').AsFloat * Dm_Sv.Condpay.FieldByName('SVRATE').AsFloat, 2);
      Dm_Sv.QQa_tran1.FieldByName('TOTALPRC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('NETPRIC').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('TRNFLG').Asstring := 'S';
    end;

    if raSelect.ItemIndex = 2 then
    begin
      with Dm_Sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM TBLABOR WHERE SVCODE= :XCODE ');
        Params[0].Asstring := Dm_Sv.QQa_tran1.FieldByName('PARTNO').Asstring;
        Open;
      end;
      if Dm_Sv.Query1.Bof and Dm_Sv.Query1.eof then
      begin
        if MessageDlg('ไม่พบรหัส ต้องการบันทึกเอง ?', Mtconfirmation, [Mbok, MbCancel], 0) = MrCancel then
          SFMain.RaiseException('ไม่ต้องการบันทึกเอง');
      end;
 //    Dm_Sv.QQa_tran1.FieldByName('Partno').Asstring := Dm_Sv.Query1.FieldByName('SVCODE').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('Desc1').Asstring := Dm_Sv.Query1.FieldByName('Descp').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := Dm_Sv.Query1.FieldByName('SVPRIC').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat := Dm_Sv.Query1.FieldByName('FRT').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('REDU').AsFloat := 0;
      Dm_Sv.QQa_tran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('TOTALPRC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('TRNFLG').Asstring := 'C';
    end;
  end;

  if Uppercase(DBGrid1.SelectedField.FieldName) = 'REDU' then
  begin
    D := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat *
      (1 - Dm_Sv.QQa_tran1.FieldByName('REDU').AsFloat / 100);

    Dm_Sv.QQa_tran1.FieldByName('NETPRIC').AsFloat := D;

    Dm_Sv.QQa_tran1.FieldByName('TOTALPRC').AsFloat := D * Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat;
  end;
end;

procedure TSvIn_10.DBGrid1Enter(Sender: TObject);
begin
  if Dm_Sv.QQa_invoi1.FieldByName('QUOTNO').Asstring = '' then
  begin
    SFMain.RaiseException('ยังไม่บันทึกเลขที่ใบเสนอราคา');
  end;
end;

procedure TSvIn_10.CancBtn1Click(Sender: TObject);
begin
  if Dm_Sv.QQa_tran1.Active then
    Dm_Sv.QQa_tran1.Delete;
end;

procedure TSvIn_10.AutoBtnClick(Sender: TObject);
begin
  if Dm_Sv.QQa_invoi1.Fieldbyname('Gcode').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสกลุ่ม');
  if MessageDlg('ต้องการโอนรายการจาก Setup ?', Mtconfirmation, [Mbok, Mbcancel], 0) = MrOk then
  begin
    with QSERV do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT G.GCODE,G.MDLCOD,G.SVCODE,T.SVCODE,T.DESCP,T.FRT,T.SVPRIC  FROM ' +
        ' GRPSERV G,TBLABOR T  WHERE (G.SVCODE=T.SVCODE) AND ' +
        ' G.GCODE=:Edit1 AND (G.MDLCOD=T.MDLCOD)');
      Params[0].Asstring := QGrpmst.FieldByname('GCODE').asstring;
      Open;
    end;

    with QPart do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT G.GCODE,G.MDLCOD,G.PARTNO,g.QTY,T.PARTNO,T.DESC1,T.PRICE1,(G.QTY*T.PRICE1) AS TOTAL  FROM ' +
        ' GRPPART G,INVENTOR T  WHERE (G.PARTNO=T.PARTNO) AND ' +
        ' G.GCODE=:Edit1 AND G.MDLCOD=:Edit2 AND T.LOCAT=:LOC');
      Params[0].Asstring := QGrpmst.FieldByname('GCODE').asstring;
      Params[1].Asstring := QGrpmst.FieldByname('MDLCOD').asstring;
      Params[2].Asstring := sfMain.Xlocat;
      Open;
    end;

    if not Dm_Sv.Condpay.Active then
      Dm_Sv.Condpay.Open;

    QSERV.First;
    while not QSERV.Eof do
    begin
      with Dm_Sv.QQa_tran1 do
      begin
        Append;
        FieldByName('PARTNO').Asstring := QSERV.FieldByName('SVCODE').Asstring;
        FieldByName('Desc1').Asstring := QSERV.FieldByName('DESCP').Asstring;
        FieldByName('QTY').AsFloat := QSERV.FieldByName('FRT').AsFloat;
        FieldByName('UPRICE').AsFloat := Dm_Sv.Condpay.FieldByName('SVRATE').AsFloat;
        FieldByName('REDU').AsFloat := 0;
        FieldByName('NETPRIC').AsFloat := FRound(Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat * Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat, 2);
        FieldByName('TOTALPRC').AsFloat := FieldByName('NETPRIC').AsFloat;
        FieldByName('TRNFLG').Asstring := 'S';
        Dm_Sv.QQa_tran1.Post;
      end;
      QSERV.Next;
    end;

    QPart.First;
    while not QPart.Eof do
    begin
      with Dm_Sv.QQa_tran1 do
      begin
        Append;
        FieldByName('PARTNO').Asstring := QPart.FieldByName('PARTNO').Asstring;
        FieldByName('Desc1').Asstring := QPart.FieldByName('DESC1').Asstring;
        FieldByName('QTY').AsFloat := QPart.FieldByName('QTY').AsFloat;
        FieldByName('UPRICE').AsFloat := QPart.FieldByName('PRICE1').AsFloat;
        FieldByName('REDU').AsFloat := 0;
        FieldByName('NETPRIC').AsFloat := QPart.FieldByName('PRICE1').AsFloat;
        FieldByName('TOTALPRC').AsFloat := QPart.FieldByName('TOTAL').AsFloat;
        FieldByName('TRNFLG').Asstring := 'P';
        Dm_Sv.QQa_tran1.Post;
      end;
      QPart.Next;
    end;
  end;
end;

procedure TSvIn_10.PartBtnClick(Sender: TObject);
begin
  Dm_Sv.QQa_tran1.Append;
end;

procedure TSvIn_10.PrnBtnClick(Sender: TObject);
begin
  if Dm_Sv.QQa_invoi1.Fieldbyname('QUOTNO').Asstring = '' then
    SFMain.RaiseException('ยังไม่เลขที่ใบเสนอราคา');

  if cxRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Quo1.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Quo3.fr3', '1');
end;

procedure TSvIn_10.HotSvmastClick(Sender: TObject);
begin
  Application.CreateForm(TSvSt_10, SvSt_10);
  SvSt_10.ShowModal;
end;

procedure TSvIn_10.DBMemo1Exit(Sender: TObject);
begin
  SvIn_10.KeyPreview := True;
end;

procedure TSvIn_10.FldCombo4BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
  begin
    Dm_Sv.QQa_invoi1.FieldByName('LOCAT').Asstring := fSrcDlg1.KeyNo;
  end;
end;

procedure TSvIn_10.FldCombo6BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvmst = Mrok then
  begin
    Dm_Sv.QQa_invoi1.FieldByName('STRNO').Asstring := fSrcDlg1.KeyNo;
  end;
end;

procedure TSvIn_10.ColrBtnClick(Sender: TObject);
begin
  Dm_Sv.QQa_tran1.Append;
end;

procedure TSvIn_10.FldCombo7BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalGrpMst = Mrok then
  begin
    with QGrpmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPMST WHERE GCODE =:EDIT1');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
    if QGrpmst.Bof and QGrpmst.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    Dm_Sv.QQa_invoi1GCODE.Asstring := QGrpmst.Fieldbyname('Gcode').Asstring;
  end;
end;

procedure TSvIn_10.FldCombo8BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalOffic = Mrok then
  begin
    Dm_Sv.QQa_invoi1.FieldByName('REPCOD').Asstring := fSrcDlg1.KeyNo;
  end;
end;

procedure TSvIn_10.FldCombo9BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvtype = Mrok then
  begin
    Dm_Sv.QQa_invoi1.FieldByName('REPTYPE').Asstring := fSrcDlg1.Keyno;
  end;
end;

procedure TSvIn_10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvIn_10.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EnqBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SavBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TSvIn_10.DBGrid1EditButtonClick(Sender: TObject);
begin
  if Dm_Sv.QQa_invoi1.FieldByName('QUOTNO').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกวันที่ใบเสนอราคา');

  if raSelect.ItemIndex = 0 then
  begin
    Application.Createform(TfSrcDlg1, fSrcDlg1);
    if fSrcDlg1.ShowModalParts = Mrok then
    begin
      with Dm_sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO = :XPART AND LOCAT=:XLOC');
        Params[0].Asstring := fSrcDlg1.KeyNo;
        Params[1].Asstring := Dm_Sv.QQa_invoi1.FieldByName('LOCAT').Asstring;
        Open;
      end;
      if Dm_sv.Query1.Bof and Dm_sv.Query1.Eof then
        SFMain.RaiseException('ไม่พบข้อมูล');
      Dm_Sv.QQa_tran1.FieldByName('PARTNO').Asstring := Dm_sv.Query1.FieldByName('PARTNO').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('Desc1').Asstring := Dm_sv.Query1.FieldByName('Desc1').Asstring;
      if CheckBox2.Checked then
        Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := Dm_sv.Query1.FieldByName('STDBUY').AsFloat
      else
        Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := Dm_sv.Query1.FieldByName('PRICE1').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat := 1;
      Dm_Sv.QQa_tran1.FieldByName('REDU').AsFloat := 0;
      Dm_Sv.QQa_tran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('TOTALPRC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
    end;
  end;

  if raSelect.ItemIndex = 1 then
  begin
    Application.Createform(TfSrcDlg1, fSrcDlg1);
    if fSrcDlg1.ShowModalTabsv = Mrok then
    begin
      Dm_Sv.QQa_tran1.FieldByName('Partno').Asstring := fSrcDlg1.qrFindDat.FieldByName('SVCODE').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('Desc1').Asstring := fSrcDlg1.qrFindDat.FieldByName('Desc').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := fSrcDlg1.qrFindDat.FieldByName('SVPRIC').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat := fSrcDlg1.qrFindDat.FieldByName('FRT').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('REDU').AsFloat := 0;
      Dm_Sv.QQa_tran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('TOTALPRC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
    end;
  end;

  if raSelect.ItemIndex = 2 then
  begin
    Application.Createform(TfSrcDlg1, fSrcDlg1);
    if fSrcDlg1.ShowModalTabsv = Mrok then
    begin
      Dm_Sv.QQa_tran1.FieldByName('Partno').Asstring := fSrcDlg1.qrFindDat.FieldByName('SVCODE').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('Desc1').Asstring := fSrcDlg1.qrFindDat.FieldByName('Desc').Asstring;
      Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat := fSrcDlg1.qrFindDat.FieldByName('SVPRIC').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat := fSrcDlg1.qrFindDat.FieldByName('FRT').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('REDU').AsFloat := 0;
      Dm_Sv.QQa_tran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QQa_tran1.FieldByName('TOTALPRC').AsFloat := Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat;
    end;
  end;
end;

procedure TSvIn_10.FbtRepairClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvtype = Mrok then
  begin
    Dm_Sv.QQa_invoi1.FieldByName('REPTYPE').Asstring := fSrcDlg1.Keyno;
  end;
end;

procedure TSvIn_10.NextBtnClick(Sender: TObject);
begin
  Dm_Sv.QQa_tran1.Append;
end;

procedure TSvIn_10.DeleBtnClick(Sender: TObject);
begin
  if Dm_Sv.QQa_tran1.Active then
    Dm_Sv.QQa_tran1.Delete;
end;

procedure TSvIn_10.AddAutoClick(Sender: TObject);
begin
  if Dm_Sv.QQa_invoi1.Fieldbyname('Gcode').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสกลุ่ม');
  if MessageDlg('ต้องการโอนรายการจาก Setup ?', Mtconfirmation, [Mbok, Mbcancel], 0) = MrOk then
  begin
    with QSERV do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT G.GCODE,G.MDLCOD,G.SVCODE,T.SVCODE,T.DESCP,T.FRT,T.SVPRIC  FROM ' +
        ' GRPSERV G,TBLABOR T  WHERE (G.SVCODE=T.SVCODE) AND ' +
        ' G.GCODE=:Edit1 AND (G.MDLCOD=T.MDLCOD)');
      Params[0].Asstring := QGrpmst.FieldByname('GCODE').asstring;
      Open;
    end;

    with QPart do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT G.GCODE,G.MDLCOD,G.PARTNO,g.QTY,T.PARTNO,T.DESC1,T.PRICE1,(G.QTY*T.PRICE1) AS TOTAL  FROM ' +
        ' GRPPART G,INVENTOR T  WHERE (G.PARTNO=T.PARTNO) AND ' +
        ' G.GCODE=:Edit1 AND G.MDLCOD=:Edit2 AND T.LOCAT=:LOC');
      Params[0].Asstring := QGrpmst.FieldByname('GCODE').asstring;
      Params[1].Asstring := QGrpmst.FieldByname('MDLCOD').asstring;
      Params[2].Asstring := sfMain.Xlocat;
      Open;
    end;

    if not Dm_Sv.Condpay.Active then
      Dm_Sv.Condpay.Open;

    QSERV.First;
    while not QSERV.Eof do
    begin
      with Dm_Sv.QQa_tran1 do
      begin
        Append;
        FieldByName('PARTNO').Asstring := QSERV.FieldByName('SVCODE').Asstring;
        FieldByName('Desc1').Asstring := QSERV.FieldByName('DESCP').Asstring;
        FieldByName('QTY').AsFloat := QSERV.FieldByName('FRT').AsFloat;
        FieldByName('UPRICE').AsFloat := Dm_Sv.Condpay.FieldByName('SVRATE').AsFloat;
        FieldByName('REDU').AsFloat := 0;
        FieldByName('NETPRIC').AsFloat := FRound(Dm_Sv.QQa_tran1.FieldByName('QTY').AsFloat * Dm_Sv.QQa_tran1.FieldByName('UPRICE').AsFloat, 2);
        FieldByName('TOTALPRC').AsFloat := FieldByName('NETPRIC').AsFloat;
        FieldByName('TRNFLG').Asstring := 'S';
        Dm_Sv.QQa_tran1.Post;
      end;
      QSERV.Next;
    end;

    QPart.First;
    while not QPart.Eof do
    begin
      with Dm_Sv.QQa_tran1 do
      begin
        Append;
        FieldByName('PARTNO').Asstring := QPart.FieldByName('PARTNO').Asstring;
        FieldByName('Desc1').Asstring := QPart.FieldByName('DESC1').Asstring;
        FieldByName('QTY').AsFloat := QPart.FieldByName('QTY').AsFloat;
        FieldByName('UPRICE').AsFloat := QPart.FieldByName('PRICE1').AsFloat;
        FieldByName('REDU').AsFloat := 0;
        FieldByName('NETPRIC').AsFloat := QPart.FieldByName('PRICE1').AsFloat;
        FieldByName('TOTALPRC').AsFloat := QPart.FieldByName('TOTAL').AsFloat;
        FieldByName('TRNFLG').Asstring := 'P';
        Dm_Sv.QQa_tran1.Post;
      end;
      QPart.Next;
    end;
  end;
end;

procedure TSvIn_10.DBEdit1Change(Sender: TObject);
begin
  with Dm_sv.Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD =:Edit1');
    params[0].AsString := DBEdit1.Text;
    open;
  end;
  Edit1.Text := Dm_SV.Query1.fieldbyname('LOCATNM').AsString;
end;

procedure TSvIn_10.DBEdit18Change(Sender: TObject);
begin
  with Dm_Sv.Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM OFFICER WHERE CODE =:Edit1');
    params[0].AsString := DBEdit18.Text;
    open;
  end;
  Edit2.Text := Dm_Sv.Query1.fieldbyname('NAME').AsString;
end;

procedure TSvIn_10.DBEdit19Change(Sender: TObject);
begin
  with Dm_sv.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SVTYPE WHERE TYPCOD =:EDITD1');
    Params[0].AsString := DBEdit19.Text;
    Open;
  end;
  Edit3.Text := Dm_Sv.Query1.fieldbyname('TYPNAME').AsString;
end;

procedure TSvIn_10.FormShow(Sender: TObject);
begin
  with Dm_Sv.QQa_invoi1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM QA_INVOI WHERE QUOTNO = '''' ');
    Open;
  end;
end;

procedure TSvIn_10.DBEdit10Change(Sender: TObject);
begin
  with Dm_Sv.QSvmast do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM View_SVMAST WHERE STRNO= :XSTRNO  ');
    Params[0].Asstring := DBEdit10.text;
    Open;
  end;
end;

procedure TSvIn_10.DBMemo1Click(Sender: TObject);
begin
  SvIn_10.KeyPreview := False;
end;

procedure TSvIn_10.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
  begin
    Dm_Sv.QQa_invoi1.FieldByName('LOCAT').Asstring := fSrcDlg1.KeyNo;
  end;
end;

procedure TSvIn_10.DBEdit10PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvmst = Mrok then
  begin
    Dm_Sv.QQa_invoi1.FieldByName('STRNO').Asstring := fSrcDlg1.KeyNo;
  end;
end;

procedure TSvIn_10.DBEdit18PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalOffic = Mrok then
  begin
    Dm_Sv.QQa_invoi1.FieldByName('REPCOD').Asstring := fSrcDlg1.KeyNo;
  end;
end;

procedure TSvIn_10.DBMemo2Click(Sender: TObject);
begin
  SvIn_10.KeyPreview := False;
end;

procedure TSvIn_10.DBMemo2Exit(Sender: TObject);
begin
  SvIn_10.KeyPreview := True;
end;

procedure TSvIn_10.DBEdit20PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalGrpMst = Mrok then
  begin
    with QGrpmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPMST WHERE GCODE =:EDIT1');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Open;
    end;
    if QGrpmst.Bof and QGrpmst.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    Dm_Sv.QQa_invoi1GCODE.Asstring := QGrpmst.Fieldbyname('Gcode').Asstring;
  end;
end;

procedure TSvIn_10.actEditPrnExecute(Sender: TObject);
begin
  if cxRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Quo1.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Quo3.fr3', '2');
end;

procedure TSvIn_10.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//      BEGIN
//         SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//         VAL := SFMain.n2wBill.Text;
//      END;
end;

procedure TSvIn_10.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'PQUOTNO' then
    Value := DBEdit2.text;
end;

procedure TSvIn_10.DBEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrchDlg1, fSrchDlg1);
  if fSrchDlg1.ShowModalSvtype = Mrok then
  begin
    Dm_Sv.QQa_invoi1.FieldByName('REPTYPE').Asstring := fSrchDlg1.Keyno;
  end;
end;

procedure TSvIn_10.DBEdit19PropertiesChange(Sender: TObject);
begin
  with Dm_Sv.Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM SVTYPE WHERE TYPCOD =:Edit1');
    params[0].AsString := DBEdit19.Text;
    open;
  end;
  Edit3.Text := Dm_Sv.Query1.fieldbyname('TYPNAME').AsString;
end;

end.

