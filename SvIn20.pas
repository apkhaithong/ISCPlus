unit SvIn20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Buttons, Mask, ComCtrls, DB,
  Dbkbd, ImgList, ToolWin, RzDbkbd, cxMemo, cxDBEdit, cxSpinEdit, cxTimeEdit,
  cxTextEdit, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, AdvGlowButton, AdvToolBar, AdvPanel,
  cxLookAndFeelPainters, cxGroupBox, cxRadioGroup, ActnList, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCheckBox, cxImageComboBox,
  cxLookAndFeels, dxBarBuiltInMenu, dxDateRanges, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator,
  dxStatusBar, cxCurrencyEdit, RzPanel, cxPC, frxClass, frxExportXLSX, frxRich,
  frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TSvIn_20 = class(TForm)
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    Bevel2: TBevel;
    ActionList1: TActionList;
    actEditPrn: TAction;
    TmpQuery: TFDQuery;
    Query1: TFDQuery;
    AdvPanel1: TAdvPanel;
    AdvPanel3: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    EstmBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label16: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    Label5: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label19: TLabel;
    QueryBtn: TAdvGlowButton;
    DBRadioGroup1: TcxDBRadioGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxTextEdit1: TcxTextEdit;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit12: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit23: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    DBEdit22: TcxDBTextEdit;
    Label23: TLabel;
    DBEdit3: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    Label15: TLabel;
    Edit1: TcxTextEdit;
    DBEdit1: TcxDBButtonEdit;
    JobDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit4: TcxDBTimeEdit;
    DBEdit7: TcxDBTimeEdit;
    FinDate: TcxDBDateEdit;
    DBEdit19: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit28: TcxDBButtonEdit;
    DBEdit20: TcxDBTextEdit;
    DBEdit25: TcxDBTextEdit;
    DBEdit11: TcxDBButtonEdit;
    DBEdit30: TcxDBButtonEdit;
    DBEdit6: TcxDBButtonEdit;
    DBEdit29: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    Bevel1: TBevel;
    Label25: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label45: TLabel;
    Label34: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit8: TcxDBTextEdit;
    DBEdit26: TcxDBTextEdit;
    cxGrid2: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NO: TcxGridDBColumn;
    cxGrid1DBTableView1CODE: TcxGridDBColumn;
    cxGrid1DBTableView1REPDESC: TcxGridDBColumn;
    cxGrid1DBTableView1FLAG: TcxGridDBColumn;
    cxGrid1DBTableView1FRT: TcxGridDBColumn;
    cxGrid1DBTableView1ESTPRIC: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1CODE: TcxGridDBColumn;
    cxGrid2DBTableView1DESC1: TcxGridDBColumn;
    cxGrid2DBTableView1FRT: TcxGridDBColumn;
    cxGrid2DBTableView1UPRICE: TcxGridDBColumn;
    cxGrid2DBTableView1PRICE: TcxGridDBColumn;
    cxGrid2DBTableView1REDU: TcxGridDBColumn;
    cxGrid2DBTableView1DISCAMT: TcxGridDBColumn;
    cxGrid2DBTableView1NETPRIC: TcxGridDBColumn;
    cxGrid2DBTableView1CLAIM: TcxGridDBColumn;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2PARTNO: TcxGridDBColumn;
    cxGrid2DBTableView2DESC1: TcxGridDBColumn;
    cxGrid2DBTableView2QTY: TcxGridDBColumn;
    cxGrid2DBTableView2UPRICE: TcxGridDBColumn;
    cxGrid2DBTableView2REDU: TcxGridDBColumn;
    cxGrid2DBTableView2NETPRIC: TcxGridDBColumn;
    cxGrid2DBTableView2TOTALPRC: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2Level2: TcxGridLevel;
    Bevel3: TBevel;
    RzPanel2: TRzPanel;
    cxGroupBox2: TcxGroupBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    cxGroupBox3: TcxGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DBEdit27: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    DBEdit65: TcxDBTextEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    DBRadioGroup2: TcxDBRadioGroup;
    cxDBCheckBox3: TcxDBCheckBox;
    Label39: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
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
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QueryBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure HotSvmastClick(Sender: TObject);
    procedure DBEdit1BtnClick(Sender: TObject);
    procedure DBEdit11BtnClick(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure FldEdit5Exit(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure DBMemo1Exit(Sender: TObject);
    procedure EstmBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit28PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit29PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure DBEdit13PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit28PropertiesChange(Sender: TObject);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure cxGrid1DBTableView1CODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid2DBTableView1CODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid2DBTableView2PARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid2ActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
    procedure DBCheckBox6MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBCheckBox7MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBCheckBox12MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure StrShow;
    procedure Close_DB;
  public
    { Public declarations }

    procedure Do_SumEstimate;
  end;

var
  SvIn_20: TSvIn_20;
  XExpKilo: Double;

implementation

uses
  DmSv, SvHlp20, DmSvSet, uSrcDlg, HlpJobNew, Prnjob10, Dlgest, USoftFirm,
  UFindData, uSrchdlg1, uSrcDlg1, unfrPreview, Dmsec, Svst10, Functn01;

{$R *.DFM}

procedure TSVIn_20.Do_SumEstimate;
begin
  with Dm_Sv.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT SUM(SERVTOT) ESTPRIC FROM JOBORDER WHERE JOBNO =:EDIT1 ');
    params[0].AsString := DBEdit2.Text;
    Open;
    cxCurrencyEdit2.EditValue := Dm_Sv.Query1.fieldbyname('ESTPRIC').AsFloat;
  end;

  with Dm_Sv.Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT SUM(TOTALPRC) ESTPRIC FROM JOB_TRAN WHERE JOBNO =:EDIT1 ');
    params[0].AsString := DBEdit2.Text;
    Open;
    cxCurrencyEdit3.EditValue := Dm_Sv.Query2.fieldbyname('ESTPRIC').AsFloat;
  end;

  with Dm_Sv.Query3 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT SUM(ESTPRIC) ESTPRIC FROM ORDREP WHERE JOBNO =:EDIT1 ');
    params[0].AsString := DBEdit2.Text;
    Open;
    cxCurrencyEdit1.EditValue := Dm_Sv.Query3.fieldbyname('ESTPRIC').AsFloat;
  end;
  cxCurrencyEdit4.EditValue := FRound((Dm_Sv.Query1.fieldbyname('ESTPRIC').AsFloat +
    Dm_Sv.Query2.fieldbyname('ESTPRIC').AsFloat +
    Dm_Sv.Query3.fieldbyname('ESTPRIC').AsFloat), 2);
end;

procedure TSvIn_20.InsBtnClick(Sender: TObject);
begin
  cxCurrencyEdit1.EditValue := 0;
  cxCurrencyEdit2.EditValue := 0;
  cxCurrencyEdit3.EditValue := 0;
  cxCurrencyEdit4.EditValue := 0;

  cxTextEdit1.Text := '';
  Close_DB;
  //
  Dm_Sv.VLastkilo := 0;
  with Dm_Sv.QJoborder1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = '''' ');
    Open;
    Insert;
  end;

  with Dm_Sv.QServtran do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = '''' ');
    Open;
  end;

  with Dm_Sv.QJob_tran do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOB_TRAN WHERE JOBNO = '''' ');
    Open;
  end;

  with Dm_Sv.QOrdrep1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ORDREP WHERE JOBNO = '''' ');
    Open;
  end;
  Dm_Sv.No1 := 1;
  if DBEdit1.Enabled = false then
    DBEdit5.SetFocus
  else
    DBEdit1.SetFocus;
end;

procedure TSvIn_20.DelBtnClick(Sender: TObject);
var
  S: string;
  I: Integer;
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from pk_invoi where jobno =:edit1 ');
    params[0].AsString := DBEdit2.Text;
    open;

    if not (eof and bof) then
      sfmain.RaiseException('เบิกอะไหล่แล้ว..!');
  end;

  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSV1_02', 'CANCEL', Dm_Sv.QJoborder1.FieldByName('JOBNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        if Dm_Sv.QJoborder1.FieldByName('Cancelid').Asstring <> '' then
          sfmain.RaiseException('Job นี้ถูกยกเลิกแล้ว');
        if Dm_Sv.QJoborder1.FieldByName('PTAXNO').Asstring <> '' then
          sfmain.RaiseException('ออกใบกำกับภาษีแล้ว');
      //
        with Dm_sv.Query1 do
        begin
          Close;
          Sql.clear;
          Sql.Add('SELECT * FROM PARTTRAN WHERE JOBNO=:XJOB');
          Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
          Open;
          if not (bof and Eof) then
            sfmain.RaiseException('มีการจ่ายอะไหล่เข้า Job นี้ กรุณายกเลิกก่อน');
        end;
      //
        with Dm_sv.Query1 do
        begin
          Close;
          Sql.clear;
          Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO=:XJOB');
          Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
          Open;
          if not (bof and Eof) then
            sfmain.RaiseException('มีการบันทึกค่าแรงเข้า Job นี้ กรุณายกเลิกก่อน');
        end;
      //
        with Dm_sv.Query1 do
        begin
          Close;
          Sql.clear;
          Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO=:XJOB');
          Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
          Open;
          if not (bof and Eof) then
            sfmain.RaiseException('มีการบันทึกค่าแรงเข้า Job นี้ กรุณายกเลิกก่อน');
        end;
      //
        with Dm_sv.Query1 do
        begin
          Close;
          Sql.clear;
          Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO=:XJOB');
          Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
          Open;
          if not (bof and Eof) then
            sfmain.RaiseException('มีการบันทึกค่าบริการงานสี เข้า Job นี้ กรุณายกเลิกก่อน');
        end;

        if Dm_Sv.QJoborder1.State = Dsbrowse then
          Dm_Sv.QJoborder1.Edit;
        Dm_Sv.QJoborder1.FieldByName('Cancelid').Asstring := sfMain.Xuser_id;
        Dm_Sv.QJoborder1.FieldByName('Candat').Asdatetime := Now;
        Dm_Sv.QJoborder1.FieldByName('Status').Asstring := 'C';
        Dm_Sv.QJoborder1.Post;
      end;
  end;
end;

procedure TSvIn_20.CancBtnClick(Sender: TObject);
begin
  cxCurrencyEdit1.EditValue := 0;
  cxCurrencyEdit2.EditValue := 0;
  cxCurrencyEdit3.EditValue := 0;
  cxCurrencyEdit4.EditValue := 0;
  cxTextEdit1.Text := '';
  if Dm_Sv.QJoborder1.State in Dseditmodes then
    Dm_Sv.QJoborder1.Cancel;
  Dm_Sv.QServtran.Cancel;
  Dm_Sv.QJob_tran.Cancel;
end;

procedure TSvIn_20.EditBtnClick(Sender: TObject);
var
  kilo: string;
begin
  Application.CreateForm(THelpJobNew, HelpJobNew);
  if sfmain.XChgLoc = 'Y' then
    HelpJobNew.XSrLocat := ''
  else
    HelpJobNew.XSrLocat := sfmain.Xlocat;
  if HelpJobNew.ShowModal = MrOk then
  begin
    with Dm_Sv.QJoborder1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNOO ');
      Params[0].Asstring := HelpJobNew.QHlp.FieldByName('JOBNO').Asstring;
      Open;
    end;
    if Dm_Sv.QJoborder1.Bof and Dm_Sv.QJoborder1.eof then
      sfmain.RaiseException('ไม่มีข้อมูล');
    with Dm_Sv.QSvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM VIEW_JOBORD WHERE STRNO= :XSTRNO  ');
      Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('STRNO').Asstring;
      Open;
    end;
    if Dm_Sv.QSvmast.Bof and Dm_Sv.QSvmast.eof then
      sfmain.RaiseException('ไม่มีข้อมูล');

    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT STRNO,EXPTYPE,EXPKILO,EXPWARNT FROM SVMAST WHERE STRNO = :XCODE ');
      Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('STRNO').Asstring;
      Open;
    end;

    XExpkilo := Dm_SvSet.Query1.FieldByName('EXPKILO').Asfloat;

    if Dm_SvSet.Query1.FieldByName('EXPWARNT').Asdatetime >= Now then
    begin
    //  Edit1.Font.Color :=clBlue;
      Edit1.Text := 'รถอยู่ในระยะประกัน';
    end
    else
    begin
    //  Edit1.Font.Color :=clFuchsia;
      Edit1.Text := 'รถหมดระยะรับประกัน';
    end;
    if XExpkilo > Dm_Sv.QJoborder1RLKILOMT.Asfloat then
    begin
    //  Edit1.Font.Color :=clBlue;
      Edit1.Text := 'รถอยู่ในระยะประกัน';
    end
    else
    begin
  //    Edit1.Font.Color :=clFuchsia;
      Edit1.Text := 'รถหมดระยะรับประกัน';
    end;

    with Dm_Sv.QOrdrep1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ORDREP WHERE JOBNO = :XNO ');
      Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
      Open;
    end;

    with Dm_Sv.QServtran do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = :XNO ');
      Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
      Open;
    end;

    with Dm_Sv.QJob_tran do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOB_TRAN WHERE JOBNO = :XNO ');
      Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
      Open;
    end;
    cxGrid1DBTableView1.DataController.Groups.FullExpand;

    Dm_Sv.QOrdrep1.Last;
    Dm_Sv.No1 := Dm_Sv.QOrdrep1.FieldByname('no').asfloat + 1;
    if Dm_sv.No1 = 0 then
      Dm_sv.No1 := 1;
  end;
  Do_SumEstimate;
end;

procedure TSvIn_20.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  QueryBtn.Enabled := (DataSource1.Dataset.State in DsEditModes);

  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEDit2.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEDit2.Text <> '');
  DBRadioGroup1.Properties.ReadOnly := not SavBtn.Visible;
  DBRadioGroup2.Properties.ReadOnly := not SavBtn.Visible;
  cxDBCheckBox1.Properties.ReadOnly := not SavBtn.Visible;
  cxDBCheckBox2.Properties.ReadOnly := not SavBtn.Visible;
  cxDBCheckBox3.Properties.ReadOnly := not SavBtn.Visible;

  cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  cxGrid2DBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid2DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid2DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  cxGrid2DBTableView2.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid2DBTableView2.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid2DBTableView2.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  Label22.Visible := Dm_sv.QJoborder1CANCELID.Asstring <> '';

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBTimeEdit) and (TcxDBTimeEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTimeEdit(Components[N]).Enabled := False;
        TcxDBTimeEdit(Components[N]).Style.Color := clBtnFace;
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
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Insert.Enabled := False;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Append.Enabled := False;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Delete.Enabled := False;
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
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBTimeEdit) and (TcxDBTimeEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTimeEdit(Components[N]).Enabled := True;
        TcxDBTimeEdit(Components[N]).Style.Color := clWhite;
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
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Insert.Enabled := True;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Append.Enabled := True;
        TcxGridDBTableView(Components[N]).NavigatorButtons.Delete.Enabled := True;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;

  if (DataSource1.State = DsEdit) then
  begin
    if (Dm_Sv.QJoborder1.Active) and ((Dm_Sv.QJoborder1.fieldbyname('Status').Asstring = 'W')
      or (Dm_Sv.QJoborder1.fieldbyname('Status').Asstring = '')) then
    begin
      DBkbd1.AllowEditing := sfMain.Edit_right;
      cxGrid1DBTableView1.OptionsData.Editing := True;
    end
    else
    begin
      DBkbd1.AllowEditing := False;
      cxGrid1DBTableView1.OptionsData.Editing := False;
    end;
  end;

  if (Dm_Sv.QJoborder1.Active) and (Dm_Sv.QJoborder1.fieldbyname('Status').Asstring <> '') then
  begin
    Label16.Visible := True;
    Label16.Caption := 'Status : ' + Dm_Sv.QJoborder1.fieldbyname('Status').Asstring;
  end
  else
    Label16.Visible := False;

  if not (Dm_SV.QDBConfig.Active) then
    DM_SV.QDBConfig.Open;
  DBEdit2.Properties.Readonly := Dm_Sv.QDBConfig.Fieldbyname('H_JOB').asstring = 'Y';
  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  JobDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
end;

procedure TSvIn_20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Close_DB;
  Action := Cafree;
  SvIn_20 := nil;
end;

procedure TSvIn_20.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSV', 'HDSV1_02');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSvIn_20.QueryBtnClick(Sender: TObject);
begin
  if DBEdit29.Text = '' then
    sfmain.RaiseException('ยังไม่ได้ระบุกลุ่มงาน');

  if cxTextEdit1.Text = '' then
    sfmain.RaiseException('ยังไม่ได้ระบุรุ่น');

  Application.CreateForm(TSvInHlp_20, SvInHlp_20);
  SvInHlp_20.Edit1.Text := Dm_Sv.QJoborder1.FieldByname('GROUP1').asstring;
  SvInHlp_20.cxTextEdit1.Text := cxTextEdit1.Text;
  SvInHlp_20.Getdata;

  {if (SvInHlp_20.QHlpord.Eof and SvInHlp_20.QHlpord.Bof) then
  sfmain.RaiseException('ยังไม่ได้กำหนดระยะซ่อมทำไว้...!');}

  if SvInHlp_20.ShowModal = MrOk then
  begin
    with Dm_Sv.QServtran do
    begin
      close;
      sql.Clear;
      sql.Add('DELETE FROM SERVTRAN WHERE JOBNO =:EDIT1 ');
      Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
      execSql;

      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = '''' ');
      Open;
    end;

    SvInHlp_20.QHlpserv.First;
    while not (SvInHlp_20.QHlpserv.Eof) do
    begin
      if SvInHlp_20.QHlpserv.FieldByName('MARK').Asstring = 'Y' then
      begin
        Dm_Sv.QServtran.Append;
        Dm_Sv.QServtran.FieldByName('JOBNO').Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
        Dm_Sv.QServtran.FieldByName('CODE').Asstring := SvInHlp_20.QHlpserv.FieldByName('SVCODE').Asstring;
        Dm_Sv.QServtran.FieldByName('DESC1').Asstring := SvInHlp_20.QHlpserv.FieldByName('DESC1').Asstring;
        Dm_Sv.QServtran.FieldByName('FRT').AsFloat := SvInHlp_20.QHlpserv.FieldByName('FRT').AsFloat;
        Dm_Sv.QServtran.FieldByName('UPRICE').AsFloat := Dm_Sv.QJoborder1FRRATE.AsFloat;
        Dm_Sv.QServtran.FieldByName('PRICE').AsFloat := SvInHlp_20.QHlpserv.FieldByName('PRC_EST').AsFloat;
        Dm_Sv.QServtran.FieldByName('REDU').AsFloat := 0;
        Dm_Sv.QServtran.FieldByName('DISCAMT').AsFloat := 0;
        Dm_Sv.QServtran.FieldByName('NETPRIC').AsFloat := Dm_Sv.QServtran.FieldByName('PRICE').AsFloat;
        Dm_Sv.QServtran.FieldByName('CLAIM').Asstring := 'N';
        Dm_Sv.QServtran.Post;
      end;
      SvInHlp_20.QHlpserv.Next;
    end;

    with Dm_Sv.QOrdrep1 do
    begin
      close;
      sql.Clear;
      sql.Add('DELETE FROM ORDREP WHERE JOBNO =:EDIT1 ');
      Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
      execSql;

      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ORDREP WHERE JOBNO = '''' ');
      Open;
    end;
    Dm_Sv.No1 := 1;

    SvInHlp_20.QHlpord.First;
    while not (SvInHlp_20.QHlpord.Eof) do
    begin
      if SvInHlp_20.QHlpord.FieldByName('MARK').Asstring = 'Y' then
      begin
        Dm_Sv.QOrdrep1.Append;
        Dm_Sv.QOrdrep1.FieldByName('JOBNO').Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
        Dm_Sv.QOrdrep1.FieldByName('CODE').Asstring := SvInHlp_20.QHlpord.FieldByName('SVCODE').Asstring;
        Dm_Sv.QOrdrep1.FieldByName('REPDESC').Asstring := SvInHlp_20.QHlpord.FieldByName('DESCRP').Asstring;
        Dm_Sv.QOrdrep1.FieldByName('FRT').AsFloat := 0;
        Dm_Sv.QOrdrep1.FieldByName('ESTPRIC').AsFloat := SvInHlp_20.QHlpord.FieldByName('PRC_EST').AsFloat;
        Dm_Sv.QOrdrep1.FieldByName('GRPHD').Asstring := 'C';
        Dm_Sv.QOrdrep1.FieldByName('FLAG').Asstring := 'A';
        Dm_Sv.QOrdrep1.Post;
      end;
      SvInHlp_20.QHlpord.Next;
    end;

    with Dm_Sv.QJob_tran do
    begin
      close;
      sql.Clear;
      sql.Add('DELETE FROM JOB_TRAN WHERE JOBNO =:EDIT1 ');
      Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
      execSql;

      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOB_TRAN WHERE JOBNO = '''' ');
      Open;
    end;

    SvInHlp_20.QHlppart.First;
    while not (SvInHlp_20.QHlppart.Eof) do
    begin
      if SvInHlp_20.QHlppart.FieldByName('MARK').Asstring = 'Y' then
      begin
        Dm_Sv.QJob_tran.Append;
        Dm_Sv.QJob_tran.FieldByName('JOBNO').Asstring := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
        Dm_Sv.QJob_tran.FieldByName('PARTNO').Asstring := SvInHlp_20.QHlppart.FieldByName('PARTNO').Asstring;
        Dm_Sv.QJob_tran.FieldByName('DESC1').Asstring := SvInHlp_20.QHlppart.FieldByName('DESC1').Asstring;
        Dm_Sv.QJob_tran.FieldByName('QTY').AsFloat := SvInHlp_20.QHlppart.FieldByName('QTY').AsFloat;
        Dm_Sv.QJob_tran.FieldByName('UPRICE').AsFloat := SvInHlp_20.QHlppart.FieldByName('PRC_QTY').AsFloat;
        Dm_Sv.QJob_tran.FieldByName('NETPRIC').AsFloat := SvInHlp_20.QHlppart.FieldByName('PRC_EST').AsFloat;
        Dm_Sv.QJob_tran.FieldByName('REDU').AsFloat := 0;
        Dm_Sv.QJob_tran.FieldByName('TOTALPRC').AsFloat := SvInHlp_20.QHlppart.FieldByName('PRC_EST').AsFloat;
        Dm_Sv.QJob_tran.Post;
      end;
      SvInHlp_20.QHlppart.Next;
    end;
    cxGrid1DBTableView1.DataController.Groups.FullExpand;
    Dm_Sv.QOrdrep1.First;
  end;
end;

procedure TSvIn_20.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnJob.fr3', '1');
end;

procedure TSvIn_20.HotSvmastClick(Sender: TObject);
begin
  if not Assigned(SvSt_10) then
    SvSt_10 := TSvSt_10.Create(Application);
  SvSt_10.KeyStrno := DBedit11.text;
  SvSt_10.Show;
end;

procedure TSvIn_20.DBEdit1BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
  begin
    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD = :Edit1 ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_SvSet.Query1.bof and Dm_SvSet.Query1.Eof then
      sfmain.RaiseException('ไมมีรหัสสาขานี้ในแฟ้มข้อมูล');
    Dm_Sv.QJoborder1.FieldByName('LOCAT').Asstring := Dm_SvSet.Query1.FieldByName('LOCATCOD').Asstring
  end;
end;

procedure TSvIn_20.DBEdit11BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalSvmst = Mrok then
  begin
    Dm_Sv.QJoborder1.FieldByName('STRNO').Asstring := fSrcDlg.KeyNo;
    StrShow;
  end;
end;

procedure TSvIn_20.DBEdit10Change(Sender: TObject);
begin
  if Dm_Sv.QJoborder1.FieldByName('CUSCOD').Asstring <> '' then
  begin
    with Dm_SvSet.TmpQuery do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XCOD ');
      Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('CUSCOD').Asstring;
      Open;
    end;
    if Dm_SvSet.TmpQuery.EOF and Dm_SvSet.TmpQuery.BOF then
      sfmain.RaiseException('ไม่พบข้อมูลลูกค้า');

    if Dm_SV.QJoborder1.state in Dseditmodes then
      Dm_SV.QJoborder1.FieldByName('CUST_IN').AsString := Dm_SvSet.TmpQuery.Fieldbyname('SNAM').Asstring +
        Dm_SvSet.TmpQuery.Fieldbyname('Name1').Asstring + '  ' +
        Dm_SvSet.TmpQuery.Fieldbyname('Name2').Asstring;
  end;
end;

procedure TSvIn_20.DBEdit11Exit(Sender: TObject);
begin
  if (DBEdit11.Text <> '') then
    StrShow;
end;

procedure TSvIn_20.FldEdit5Exit(Sender: TObject);
begin
  if XExpkilo > Dm_Sv.QJoborder1RLKILOMT.Asfloat then
  begin
    Edit1.Text := 'รถอยู่ในระยะประกัน';
  end
  else
  begin
    Edit1.Text := 'รถหมดระยะรับประกัน';
    MessageBeep(0);
  end;
end;

procedure TSvIn_20.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  if DBEdit11.Text = '' then
    MessageDlg('ยังไม่บันทึกเลขถัง', Mtwarning, [mbok], 0);
  if DBEdit19.Text = '' then
    MessageDlg('ยังไม่บันทึกประเภทการซ่อม', Mtwarning, [mbok], 0);
  if DBEdit28.Text = '' then
    MessageDlg('ยังไม่บันทึกพนักงานรับรถ', Mtwarning, [mbok], 0);
end;

procedure TSvIn_20.DBMemo1Exit(Sender: TObject);
begin
  SvIn_20.KeyPreview := True;
end;

procedure TSvIn_20.StrShow;
begin
  if Dm_Sv.QJoborder1.FieldByName('STRNO').Asstring <> '' then
  begin
    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT STRNO,CUSCOD,MDLCOD,VIPEXP,SVDISCT,EXPKILO,EXPWARNT,GCODE,LASTKILO,MEMO1 ' +
        ' FROM SVMAST  WHERE STRNO = :XCODE ');
      Params[0].Asstring := Dm_Sv.QJoborder1.FieldByName('STRNO').Asstring;
      if not Dm_SvSet.Query1.Prepared then
        Dm_SvSet.Query1.Prepare;
      Open;
    end;
    if Dm_SvSet.Query1.EOF and Dm_SvSet.Query1.BOF then
      sfmain.RaiseException('ไม่มีข้อมูล');

    if Dm_Sv.QJoborder1.State in dseditmodes then
    begin
      Dm_Sv.QJoborder1.FieldByName('CUSCOD').Asstring := Dm_SvSet.Query1.FieldByName('CUSCOD').Asstring;
      Dm_Sv.QJoborder1.FieldByName('MDLCOD').Asstring := Dm_SvSet.Query1.FieldByName('MDLCOD').Asstring;
      Dm_Sv.QJoborder1.FieldByName('ISCODE').Asstring := Dm_SvSet.Query1.FieldByName('GCODE').Asstring;

      if Dm_SvSet.Query1.FieldByName('MEMO1').Asstring <> '' then
      begin
        sfmain.AdvSmoothMessageDialog3.Caption := 'Warning message';
        sfmain.AdvSmoothMessageDialog3.HTMLText.Text := Dm_SvSet.Query1.FieldByName('MEMO1').Asstring;
        sfmain.AdvSmoothMessageDialog3.ExecuteDialog;
      end;

      if Dm_SvSet.Query1.FieldByName('VIPEXP').Asdatetime >= Dm_Sv.QJoborder1.FieldByName('RECVDATE').AsDatetime then
        Dm_Sv.QJoborder1.FieldByName('DISCSV').AsFloat := Dm_SvSet.Query1.FieldByName('SVDISCT').AsFloat
      else
        Dm_Sv.QJoborder1.FieldByName('DISCSV').AsFloat := 0;
    end;
    XExpkilo := Dm_SvSet.Query1.FieldByName('EXPKILO').Asfloat;

    if Dm_SvSet.Query1.FieldByName('EXPWARNT').Asstring <> '' then
    begin
      if (Dm_SvSet.Query1.FieldByName('EXPWARNT').Asdatetime >= Now) then
      begin
        Edit1.Text := 'รถอยู่ในระยะประกัน';
      end
      else
      begin
        Edit1.Text := 'รถหมดระยะรับประกัน';
        MessageBeep(0);
      end;
    end;
  end;
end;

procedure TSvIn_20.EstmBtnClick(Sender: TObject);
begin
  {Application.CreateForm(TFOptEst,FOptEst);
  If FOptEst.ShowModal = mrOK Then
  Begin

  with Dm_Sv.QJoborder1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = '''' ');
    Open;
    Insert;
  end;
  DBEdit1.Properties.Readonly     := False ;
  JobDate.Properties.Readonly     := False ;
  DBEdit11.Properties.Readonly    := False ;
  with Dm_Sv.QOrdrep1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ORDREP WHERE JOBNO = '''' ');
    Open;
  end;

  Application.Createform(TfSrchDlg1,fSrchDlg1);
  If fSrchDlg1.ShowModalQuata=Mrok Then
  begin
    with Dm_Sv.Query1 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM QA_INVOI WHERE QUOTNO = :XQUO ');
     Params[0].Asstring := fSrchDlg1.Keyno;
     Open ;
     If Bof and Eof Then
     sfmain.RaiseException('ไม่พบใบประเมิน');
     If Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring<>'' Then
     MessageDlg('ใบประเมินนี้มีการเปิด Job แล้ว #'+Dm_Sv.Query1.Fieldbyname('JOBNO').Asstring,Mtwarning,[Mbok],0);

     Dm_Sv.QJoborder1.Fieldbyname('Strno').Asstring   := Dm_Sv.Query1.Fieldbyname('Strno').Asstring;
     Dm_Sv.QJoborder1.Fieldbyname('Preordno').Asstring:= Dm_Sv.Query1.Fieldbyname('Quotno').Asstring;
     Dm_Sv.QJoborder1.Fieldbyname('GROUP1').Asstring  := Dm_Sv.Query1.Fieldbyname('GCode').Asstring;
     Dm_Sv.QJoborder1.Fieldbyname('REPCOD').Asstring  := Dm_Sv.Query1.Fieldbyname('REPCOD').Asstring;
     Dm_Sv.QJoborder1.Fieldbyname('RECVCOD').Asstring  := Dm_Sv.Query1.Fieldbyname('REPCOD').Asstring;
     Dm_Sv.QJoborder1.Fieldbyname('REPTYPE').Asstring  := Dm_Sv.Query1.Fieldbyname('REPTYPE').Asstring;
     Dm_Sv.QJoborder1.Fieldbyname('RLKILOMT').AsFloat := Dm_Sv.Query1.Fieldbyname('RKilo').AsFloat;
     Dm_Sv.QJoborder1.Fieldbyname('Vat').AsFloat      := Dm_Sv.Query1.Fieldbyname('Vatrt').AsFloat;
     Dm_Sv.QJoborder1.Fieldbyname('FINSDATE').Asdatetime := Dm_Sv.Query1.Fieldbyname('RETNDT').Asdatetime;
     Dm_Sv.QJoborder1.Fieldbyname('FINSTIME').Asstring := '15.30';

     //
     If FOptEst.CheckBox1.Checked Then
     Begin
       with Dm_Sv.Query2 do
       begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT * FROM GRPORD WHERE GCODE=:Edit1 ');
         Params[0].Asstring := Dm_Sv.QJoborder1.Fieldbyname('GROUP1').Asstring;
         Open ;
       end;
       If Not (Dm_Sv.Query2.Bof and Dm_Sv.Query2.Eof) Then
       Begin
         Dm_Sv.Query2.First ;
         While not(Dm_Sv.Query2.Eof) do
         begin
           Dm_Sv.QOrdrep1.Append;
           Dm_Sv.QOrdrep1.FieldByName('NO').AsFloat       := Dm_sv.No1 ;
           Dm_Sv.QOrdrep1.FieldByName('JOBNO').Asstring   := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
           Dm_Sv.QOrdrep1.FieldByName('REPDESC').Asstring := Dm_Sv.Query2.FieldByName('DESCRP').Asstring;
           Dm_Sv.QOrdrep1.FieldByName('FLAG').Asstring    := 'A';
           Dm_Sv.QOrdrep1.FieldByName('ESTPRIC').AsFloat  := 0;
           Dm_Sv.QOrdrep1.Post;
           Dm_Sv.Query2.Next;
         end;
       end
       Else
       Begin
         Dm_Sv.QOrdrep1.Append;
         Dm_Sv.QOrdrep1.Fieldbyname('No').Asfloat := 1;
         Dm_Sv.QOrdrep1.Fieldbyname('Repdesc').Asstring :='อ้างอิงใบประเมินเลขที่ '+Dm_Sv.Query1.Fieldbyname('Quotno').Asstring;
         Dm_Sv.QOrdrep1.Fieldbyname('Flag').Asstring := '*';
         Dm_Sv.QOrdrep1.Post;
       end;
       If FOptEst.RadioButton1.Checked Then
       begin
         Dm_Sv.QOrdrep1.Append;
         Dm_Sv.QOrdrep1.FieldByName('FLAG').Asstring   := 'A';
         Dm_Sv.QOrdrep1.FieldByName('REPDESC').Asstring := 'ยอดเงินประเมินค่าใช้จ่าย';
         Dm_Sv.QOrdrep1.FieldByName('ESTPRIC').AsFloat := Dm_Sv.Query1.FieldByName('Totalall').Asfloat;
         Dm_Sv.QOrdrep1.Post;
       end;
     end;
     //
     If (FOptEst.CheckBox2.Checked) Or (FOptEst.RadioButton2.Checked) Then
     Begin
       with Dm_Sv.Query2 do
       begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT * FROM QA_TRAN WHERE QUOTNO=:Edit1 ');
         Params[0].Asstring := Dm_Sv.QJoborder1.Fieldbyname('Preordno').Asstring;
         Open ;
       end;
       If Not (Dm_Sv.Query2.Bof and Dm_Sv.Query2.Eof) Then
       Begin
         Dm_Sv.Query2.First ;
         While not(Dm_Sv.Query2.Eof) do
         begin
           Dm_Sv.QOrdrep1.Append;
           Dm_Sv.QOrdrep1.FieldByName('NO').AsFloat       := Dm_sv.No1 ;
           Dm_Sv.QOrdrep1.FieldByName('JOBNO').Asstring   := Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring;
           Dm_Sv.QOrdrep1.FieldByName('REPDESC').Asstring := Dm_Sv.Query2.FieldByName('DESC1').Asstring;
           Dm_Sv.QOrdrep1.FieldByName('FLAG').Asstring    := 'A';
           Dm_Sv.QOrdrep1.FieldByName('ESTPRIC').AsFloat  := Dm_Sv.Query2.FieldByName('Totalprc').Asfloat;
           Dm_Sv.QOrdrep1.FieldByName('CODE').Asstring    := Copy(Dm_Sv.Query2.FieldByName('PARTNO').AsString,1,15);

           Dm_Sv.QOrdrep1.Post;
           Dm_Sv.Query2.Next;
         end;
       end

     End;

    end;
  end;

  end;
  FOptEst.Free;  }
end;

procedure TSvIn_20.Close_DB;
begin
  Dm_Sv.QJoborder1.Close;
  Dm_Sv.QOrdrep1.Close;
  Dm_Sv.QLastNo.close;
  Dm_Sv.QSvmast.close;
end;

procedure TSvIn_20.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvIn_20.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SavBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TSvIn_20.DBEdit24Exit(Sender: TObject);
begin
  if (DBEdit11.Text <> '') and (Edit1.Text = '') then
    StrShow;
end;

procedure TSvIn_20.DBMemo1Click(Sender: TObject);
begin
  SvIn_20.KeyPreview := False;
end;

procedure TSvIn_20.SavBtnClick(Sender: TObject);
begin
  {if DBEdit29.Text = '' then
  sfmain.RaiseException('ยังไม่ได้ระบุกลุ่มงาน');}

  Dm_Sv.QOrdrep1.DisableControls;
  Dm_Sv.QOrdrep1.First;
  while not (Dm_Sv.QOrdrep1.Eof) do
  begin
    if (Dm_Sv.QOrdrep1.FieldByName('REPDESC').AsString = '') then
      Dm_Sv.QOrdrep1.Delete
    else
      Dm_Sv.QOrdrep1.Next;
  end;
  Dm_Sv.QOrdrep1.EnableControls;

  if Dm_Sv.QOrdrep1.RecordCount = 0 then
    sfmain.RaiseException('ยังไม่บันทึกรายการแจ้งซ่อม..!');

  if Dm_Sv.QJoborder1.State in Dseditmodes then
    Dm_Sv.QJoborder1.Post;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV1_02', 'INSERT', DBEdit2.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV1_02', 'EDIT', DBEdit2.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

  Edit1.Text := '';
  Do_SumEstimate;
end;

procedure TSvIn_20.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
  begin
    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :Edit1 ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_SvSet.Query1.bof and Dm_SvSet.Query1.Eof then
      sfmain.RaiseException('ไม่พบข้อมูลนี้ในระบบ');
    Dm_Sv.QJoborder1.FieldByName('LOCAT').Asstring := Dm_SvSet.Query1.FieldByName('LOCATCD').Asstring
  end;
end;

procedure TSvIn_20.DBEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrchDlg1, fSrchDlg1);
  if fSrchDlg1.ShowModalSvtype = Mrok then
  begin
    Dm_Sv.QJoborder1.FieldByName('REPTYPE').Asstring := fSrchDlg1.Keyno;
  end;
end;

procedure TSvIn_20.DBEdit28PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
 //  fSrcDlg.XDepart := '2%';
  if fSrcDlg.ShowModalOffic = Mrok then
  begin
    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OFFICER WHERE CODE = :XCODE ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_SvSet.Query1.EOF and Dm_SvSet.Query1.BOF then
      sfmain.RaiseException('ไม่มีข้อมูล');
    Dm_Sv.QJoborder1.FieldByName('RECVCOD').Asstring := Dm_SvSet.Query1.FieldByName('CODE').Asstring;
  end;
end;

procedure TSvIn_20.DBEdit30PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalCampn = Mrok then
  begin
    Dm_Sv.QJoborder1.FieldByName('Campno').Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TSvIn_20.DBEdit29PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrchDlg1, fSrchDlg1);
  if fSrchDlg1.ShowModalGrpMst = Mrok then
  begin
    with Dm_SvSet.Grpmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPMST WHERE GCODE =:0');
      Params[0].Asstring := fSrchDlg1.KeyNo;
      Open;
    end;
    if Dm_SvSet.Grpmst.Bof and Dm_SvSet.Grpmst.Eof then
      sfmain.RaiseException('ไม่พบข้อมูล');
    DM_SV.QJoborder1.FieldByName('GROUP1').AsString := Dm_SvSet.Grpmst.FieldByName('GCODE').AsString;
    cxTextEdit1.Text := Dm_SvSet.Grpmst.FieldByName('MDLCOD').AsString;
  end;
end;

procedure TSvIn_20.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalCupong = MrOK then
    Dm_Sv.QJoborder1.FieldByName('CUPONGNO').Asstring := fFindData.KeyNo;
end;

procedure TSvIn_20.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvmst = Mrok then
  begin
    Dm_Sv.QJoborder1.FieldByName('STRNO').Asstring := fSrcDlg1.KeyNo;
    StrShow;
  end;
end;

procedure TSvIn_20.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnJob.fr3', '2');
end;

procedure TSvIn_20.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
 { IF Uppercase(NAME)='DATETHAI' Then
  Begin
     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
  End; }
end;

procedure TSvIn_20.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'PJOBNO' then
    Value := DBEdit2.Text;
end;

procedure TSvIn_20.DBEdit13PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('SETMODEL', 'MODELSV', 'MODELCOD', DBEdit13.Text);
end;

procedure TSvIn_20.FormShow(Sender: TObject);
begin
  if not Dm_sv.Condpay.Active then
    Dm_sv.Condpay.Open;
  with Dm_Sv.QJoborder1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = '''' ');
    Open;
  end;

  with Dm_Sv.QServtran do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = '''' ');
    Open;
  end;

  with Dm_Sv.QJob_tran do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOB_TRAN WHERE JOBNO = '''' ');
    Open;
  end;
end;

procedure TSvIn_20.DBEdit28PropertiesChange(Sender: TObject);
begin
  with Dm_Sv.Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM OFFICER WHERE CODE =:Edit1');
    params[0].AsString := DBEdit28.Text;
    open;
    Edit1.Text := Dm_Sv.Query1.fieldbyname('NAME').AsString;
  end;
end;

procedure TSvIn_20.cxDBMemo1Click(Sender: TObject);
begin
  SvIn_20.KeyPreview := False;
end;

procedure TSvIn_20.cxDBMemo1Exit(Sender: TObject);
begin
  SvIn_20.KeyPreview := True;
end;

procedure TSvIn_20.cxGrid1DBTableView1CODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalTabsv = Mrok then
  begin
    Dm_Sv.QOrdrep1.FieldByName('CODE').Asstring := fSrcDlg1.qrFindDat.FieldByName('SVCODE').Asstring;
    Dm_Sv.QOrdrep1.FieldByName('REPDESC').Asstring := fSrcDlg1.qrFindDat.FieldByName('DESCP').Asstring;
    Dm_Sv.QOrdrep1.FieldByName('FRT').AsFloat := fSrcDlg1.qrFindDat.FieldByName('FRT').AsFloat;
    Dm_Sv.QOrdrep1.FieldByName('ESTPRIC').AsFloat := fSrcDlg1.qrFindDat.FieldByName('SVPRIC').AsFloat;
  end;
end;

procedure TSvIn_20.cxGrid2DBTableView1CODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Dm_Sv.QJoborder1.FieldByName('JOBNO').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกหมายเลข JOB');
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalTabsv = Mrok then
  begin
    Dm_Sv.QServtran.FieldByName('CODE').Asstring := fSrcDlg1.qrFindDat.FieldByName('SVCODE').Asstring;
    Dm_Sv.QServtran.FieldByName('MDLCOD').Asstring := fSrcDlg1.qrFindDat.FieldByName('MDLCOD').Asstring;
    Dm_Sv.QServtran.FieldByName('DESC1').Asstring := fSrcDlg1.qrFindDat.FieldByName('DESCP').Asstring;
    Dm_Sv.QServtran.FieldByName('FRT').AsFloat := fSrcDlg1.qrFindDat.FieldByName('FRT').AsFloat;
  end;
end;

procedure TSvIn_20.cxGrid2DBTableView2PARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    if Dm_Sv.QJob_tran.State = Dsbrowse then
      Dm_Sv.QJob_tran.Edit;
    Dm_Sv.QJob_tranPARTNO.Asstring := fSrcDlg.KeyNo;
  end;
end;

procedure TSvIn_20.cxGrid2ActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
begin
  RzPanel2.Visible := cxGrid2.ActiveView = cxGrid2DBTableView1;
end;

procedure TSvIn_20.DBCheckBox6MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Xsvrt: Double;
begin
  if (DBCheckBox6.Checked) and (MessageDlg('ต้องการให้คำนวณจากอัตราเคลมที่ Setup ไว้ หรือไม่ ?', MtConfirmation, [mbYes, mbNo], 0) = MrYes) then
  begin
    Xsvrt := Dm_Sv.Condpay.Fieldbyname('Svrate2').Asfloat;
    if Dm_Sv.QServtran.State in Dseditmodes then
    begin
      Dm_Sv.QServtran.FieldByName('CLAIM').Asstring := 'Y';
      Dm_Sv.QServtran.FieldByName('UPRICE').AsFloat := Xsvrt;
      Dm_Sv.QServtran.FieldByName('PRICE').AsFloat := Dm_Sv.QServtran.FieldByName('FRT').AsFloat * Xsvrt;
      Dm_Sv.QServtran.FieldByName('NETPRIC').AsFloat := Dm_Sv.QServtran.FieldByName('PRICE').AsFloat *
        (1 - Dm_Sv.QServtran.FieldByName('REDU').AsFloat / 100);
    end;
  end;
  Dm_Sv.QServtran.Post;
end;

procedure TSvIn_20.DBCheckBox7MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Dm_Sv.QServtran.Post;
end;

procedure TSvIn_20.DBCheckBox12MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Dm_Sv.QJoborder1.State in Dseditmodes then
    Dm_Sv.QServtran.Edit;

  if Dm_Sv.QServtran.FieldByName('CAMPNO').Asstring = '' then
  begin
    Dm_Sv.QServtran.FieldByName('CAMPNO').Asstring := Dm_Sv.QJoborder1.FieldByName('CAMPNO').Asstring;
    Dm_Sv.QServtran.FieldByName('CAMFLG').Asstring := 'Y';
  end
  else
  begin
    Dm_Sv.QServtran.FieldByName('CAMPNO').Asstring := '';
    Dm_Sv.QServtran.FieldByName('CAMFLG').Asstring := 'N';
  end;
end;

procedure TSvIn_20.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(THelpJobNew, HelpJobNew);
  if sfmain.XChgLoc = 'Y' then
    HelpJobNew.XSrLocat := ''
  else
    HelpJobNew.XSrLocat := sfmain.Xlocat;
  if HelpJobNew.ShowModal = MrOk then
  begin
    with Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNOO ');
      Params[0].Asstring := HelpJobNew.QHlp.FieldByName('JOBNO').Asstring;
      Open;
    end;
    DM_SV.QJoborder1REFJOBNO.AsString := HelpJobNew.QHlp.FieldByName('JOBNO').Asstring;
  end;
end;

end.

