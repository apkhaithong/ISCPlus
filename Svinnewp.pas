unit Svinnewp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, Dbkbd, ImgList,
  ComCtrls, ToolWin, RzButton, RzSpnEdt, RzDBGrid, RzDbkbd, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, AdvGlowButton, AdvToolBar, AdvPanel,
  ActnList, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator,
  dxDateRanges, System.Actions, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxButtonEdit, BusinessSkinForm, dxStatusBar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, frxClass, frxExportXLSX, frxRich,
  frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TFSvnewProb = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    DBEdit2: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit23: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    DBEdit22: TcxDBTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel3: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranNO: TcxGridDBColumn;
    cxGridTranORDQTY: TcxGridDBColumn;
    cxGridTranRSCODE: TcxGridDBColumn;
    cxGridTranPBDESC: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    dxStatusBar1: TdxStatusBar;
    Label1: TLabel;
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
    procedure EnqBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FbtJobClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure cxGridTranPBDESCPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSvnewProb: TFSvnewProb;
  frPath: string;

implementation

uses
  Dmsv, Srchdlg1, uSrcDlg1, Set_Res, PrnProb1, DMSEC, USoftFirm, Hlpjobnew,
  unfrPreview;
{$R *.DFM}

procedure TFSvnewProb.EnqBtnClick(Sender: TObject);
begin
  Application.CreateForm(THelpJobNew, HelpJobNew);
  if HelpJobNew.ShowModal = MrOk then
  begin
    with Dm_Sv.QJoborder3 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNO ');
      Params[0].Asstring := HelpJobNew.QHlp.FieldByName('JOBNO').Asstring;
      Open;
    end;
    if Dm_Sv.QJoborder3.Bof and Dm_Sv.QJoborder3.eof then
      SFMain.RaiseException('ไม่มีข้มมูล ');
    with Dm_Sv.QSvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM VIEW_SVMAST WHERE STRNO= :XSTRNO  ');
      Params[0].Asstring := Dm_Sv.QJoborder3.FieldByName('STRNO').Asstring;
      Open;
    end;
    if Dm_Sv.QSvmast.Bof and Dm_Sv.QSvmast.eof then
      SFMain.RaiseException('ไม่มีขอ้มูล.ในแฟ้มประวัติรถ');

    with Dm_Sv.QNewprob do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM NEWPROB WHERE STRNO = :Edit1 AND JOBNO=:Edit2 ');
      Params[0].Asstring := Dm_Sv.QJoborder3.FieldByName('STRNO').Asstring;
      Params[1].Asstring := Dm_Sv.QJoborder3.FieldByName('JOBNO').Asstring;
      Open;
    end;
    Dm_Sv.QNewprob.Last;
    Dm_sv.No1 := Dm_Sv.QNewprob.FieldByname('no').asfloat + 1;
  end;
end;

procedure TFSvnewProb.DataSource1StateChange(Sender: TObject);
begin
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := DataSource1.State in DsEditmodes;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  EnqBtn.Visible := (DataSource1.State = Dsbrowse);
end;

procedure TFSvnewProb.FormShow(Sender: TObject);
begin
  Dm_sv.No1 := 1;
  SavBtn.Visible := False;
  CancBtn.Visible := False;
end;

procedure TFSvnewProb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Sv.QNewprob.Close;
  Dm_Sv.QJoborder3.Close;
  Action := Cafree;
  FSvnewProb := nil;
end;

procedure TFSvnewProb.SavBtnClick(Sender: TObject);
begin
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV1_05', 'INSERT', DBEdit2.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV1_05', 'EDIT', DBEdit2.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_Sv.QJoborder3.Post;
end;

procedure TFSvnewProb.CancBtnClick(Sender: TObject);
begin
  Dm_Sv.QJoborder3.Cancel;
end;

procedure TFSvnewProb.SpeedButton1Click(Sender: TObject);
begin
  FSvnewProb.Showmodal;
end;

procedure TFSvnewProb.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnProb1.fr3', '1');
end;

procedure TFSvnewProb.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFSvnewProb.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'PJOBNO' then
    Value := DBEDIT2.Text;
end;

procedure TFSvnewProb.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSV', 'HDSV1_05');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFSvnewProb.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EnqBtnClick(Sender);
    Vk_F2:
      if SavBtn.Visible then
        SavBtnClick(Sender);
  end;
end;

procedure TFSvnewProb.FbtJobClick(Sender: TObject);
begin
  Application.CreateForm(THelpJobNew, HelpJobNew);
  if HelpJobNew.ShowModal = MrOk then
  begin
    with Dm_Sv.QJoborder3 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNO ');
      Params[0].Asstring := HelpJobNew.QHlp.FieldByName('JOBNO').Asstring;
      Open;
    end;
    if Dm_Sv.QJoborder3.Bof and Dm_Sv.QJoborder3.eof then
      SFMain.RaiseException('ไม่มีข้มมูล ');
    with Dm_Sv.QSvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM View_SVMAST WHERE STRNO= :XSTRNO  ');
      Params[0].Asstring := Dm_Sv.QJoborder3.FieldByName('STRNO').Asstring;
      Open;
    end;
    if Dm_Sv.QSvmast.Bof and Dm_Sv.QSvmast.eof then
      SFMain.RaiseException('ไม่มีขอ้มูลในแฟ้มประวัติรถ');

    with Dm_Sv.QNewprob do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM NEWPROB WHERE STRNO = :Edit1 AND JOBNO=:Edit2 ');
      Params[0].Asstring := Dm_Sv.QJoborder3.FieldByName('STRNO').Asstring;
      Params[1].Asstring := Dm_Sv.QJoborder3.FieldByName('JOBNO').Asstring;
      Open;
    end;
    Dm_Sv.QNewprob.Last;
    Dm_sv.No1 := Dm_Sv.QNewprob.FieldByname('no').asfloat + 1;
  end;
end;

procedure TFSvnewProb.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnProb1.fr3', '2');
end;

procedure TFSvnewProb.cxGridTranPBDESCPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalRESULT = Mrok then
  begin
    Dm_Sv.Qnewprob.FieldByName('RSCODE').Asstring := fSrcDlg1.Keyno;
  end;
end;

end.

