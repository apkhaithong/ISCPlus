unit ExportSt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Gauges, ExtCtrls, DB, Grids, DBGrids, Dbkbd,
  ImgList, ComCtrls, ToolWin, RzSpnEdt, cxLookAndFeelPainters, cxGroupBox,
  cxRadioGroup, cxDBEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar,
  AdvPanel, ActnList, cxGraphics, cxLookAndFeels, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, bsSkinShellCtrls,
  QExport4XLS, QExport4, QExport4Xlsx, Vcl.Menus, AdvMenus, BusinessSkinForm,
  dxStatusBar, frxBarcode, frxFDComponents, frxTableObject, frxChBox,
  frxGradient, frxRich, frxExportXLSX, frxExportImage, frxCross, frxExportCSV,
  frxClass, frxExportBaseDialog, frxExportPDF, frxBDEComponents, frxDCtrl,
  frxChart;

type
  TFExpStock = class(TForm)
    AdvPanel1: TAdvPanel;
    Label4: TLabel;
    Label5: TLabel;
    Gauge1: TGauge;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label16: TLabel;
    DBEdit1: TcxDBButtonEdit;
    Edit1: TcxTextEdit;
    AdjDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    Edit2: TcxTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit6: TcxDBButtonEdit;
    DBEdit7: TcxDBButtonEdit;
    RadioGp2: TcxRadioGroup;
    DBRadioGroup1: TcxDBRadioGroup;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    QInvmast: TFDQuery;
    QInvmastPARTNO: TStringField;
    QInvmastDESC1: TStringField;
    QInvmastGROUP1: TStringField;
    QInvmastTYPE: TStringField;
    QInvmastMODEL: TStringField;
    QInvmastUNIT: TStringField;
    QInvmastVATCAL: TStringField;
    QInvmastCOST: TFloatField;
    QInvmastSTDBUY: TFloatField;
    QInvmastLSTBUY: TFloatField;
    QInvmastLSTBDATE: TDateField;
    QInvmastPRICE1: TFloatField;
    QInvmastPRICE2: TFloatField;
    QInvmastPRICE3: TFloatField;
    QInvmastPRICE4: TFloatField;
    QInvmastMOVDATE: TDateField;
    QInvmastCREATDAT: TDateField;
    QInvmastCODE_T: TStringField;
    QInvmastMINCAL: TFloatField;
    QInvmastNETPRC: TStringField;
    QInvmastDISCON: TStringField;
    QInvmastBACKORD: TFloatField;
    QInvmastONORDER: TFloatField;
    QInvmastFRT: TFloatField;
    QInvmastEMGCOST: TFloatField;
    QInvmastMANUFAC: TStringField;
    QInvmastSUPPLIER: TStringField;
    QInvmastCHARGFLG: TStringField;
    QInvmastSESFLAG: TStringField;
    QInvmastYEAR1: TStringField;
    QInvmastMAXDISC: TFloatField;
    QInvmastMIN1: TFloatField;
    QInvmastMAX1: TFloatField;
    QInvmastLOCK: TStringField;
    QInvmastUPD: TStringField;
    QInvmastLABEL: TStringField;
    QInvmastPARTCHG: TStringField;
    QInvmastPRIC1CHG: TFloatField;
    QInvmastLASTCHG: TDateField;
    QInvmastENGDESC: TStringField;
    QInvmastUNITENG: TStringField;
    QInvmastBARCODE: TStringField;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    ExportBtn: TAdvGlowButton;
    ExportMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    QExport4Xlsx1: TQExport4Xlsx;
    QExport4XLS1: TQExport4XLS;
    SaveDialog1: TbsSkinSaveDialog;
    Query2: TFDQuery;
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
    Query2PARTNO: TStringField;
    Query2DESC1: TStringField;
    Query2GROUP1: TStringField;
    Query2LOCAT: TStringField;
    Query2SHELF: TStringField;
    Query2ALLO_TOT: TFloatField;
    procedure insBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SaveBtnClick(Sender: TObject);
    procedure DBedit5BtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit11PropertiesChange(Sender: TObject);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AdjDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExportBtnClick(Sender: TObject);
    procedure MenuItem146Click(Sender: TObject);
    procedure MenuItem147Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Do_Export_Data;
  end;

var
  FExpStock: TFExpStock;
  XDate: TdateTime;
  Xyear, Xmonth, XDay: Word;

implementation

uses
  Dmic01, STHpIn10, uSrcDlg, DmSet1, USoftFirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFExpStock.Do_Export_Data;
begin
  with Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.PARTNO,B.DESC1,B.GROUP1,A.ADJLOC LOCAT,B.SHELF,A.QTYORD ALLO_TOT ' +
      'FROM TMPAJTR A,INVENTOR B WHERE A.PARTNO=B.PARTNO AND A.ADJLOC=B.LOCAT AND A.YEAR1=B.YEAR1 ' +
      'AND A.ADJNO = :XEDIT1');
    params[0].AsString := DBEdit2.Text;
    Open;
    if Query2.bof and Query2.Eof then
      sfMain.RaiseException('ไม่พบข้อมูลตามเงื่อนไข..!');
  end;
end;

procedure TFExpStock.insBtnClick(Sender: TObject);
begin
  with FmDmic01.TmpAjIv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TMPAJIV WHERE ADJNO ='''' ');
    OPEN;
    INSERT;
  end;

  with FmDmic01.Tmpajtr do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TMPAJTR WHERE ADJNO ='''' ');
    OPEN;
  end;
end;

procedure TFExpStock.CancBtnClick(Sender: TObject);
begin
  FmDmic01.TmpAjIv.Cancel;
end;

procedure TFExpStock.SpeedButton2Click(Sender: TObject);
var
  P: Longint;
  Allo, ONHN, Cost, Exptyp, Expopt: string;
begin
  Xdate := FmDmic01.TmpAjIvADJDATE.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  ONHN := 'ONHN_' + inttostr(XMonth);
  Cost := 'COST_' + inttostr(XMonth);
  Label10.caption := 'Export เดือน ' + Inttostr(XMonth) + ' ปี ' + Inttostr(XYear);

  case DBRadioGroup1.Itemindex of
    0:
      Exptyp := ' AND A.SHELF LIKE :EDIT2  GROUP BY A.PARTNO,A.GROUP1,A.LOCAT,A.SHELF,B.' + Allo + ',B.' + Cost + ' ORDER BY SHELF,PARTNO ';
    1:
      Exptyp := ' AND A.GROUP1 LIKE :EDIT2 GROUP BY A.PARTNO,A.GROUP1,A.LOCAT,A.SHELF,B.' + Allo + ',B.' + Cost + ' ORDER BY GROUP1,PARTNO ';
    2:
      Exptyp := ' AND A.PARTNO>=:EDIT2 AND A.PARTNO<=:EDIT3 GROUP BY A.PARTNO,A.GROUP1,A.LOCAT,A.SHELF,B.' + Allo + ',B.' + Cost + ' ORDER BY PARTNO ';
  end;

  case RadioGp2.Itemindex of
    0:
      Expopt := '';
    1:
      Expopt := ' AND B.' + Allo + '>0';
    2:
      Expopt := ' AND B.' + Allo + '<0';
    3:
      Expopt := ' AND B.' + Allo + '=0';
    4:
      Expopt := ' AND not(A.Shelf Is Null)';
    5:
      Expopt := ' AND B.' + Allo + '<> B.' + ONHN;
    6:
      Expopt := ' AND B.' + Allo + '<>0';
  end;

  with FmDmic01.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT A.PARTNO,A.GROUP1,A.LOCAT,A.SHELF,B.' + Allo + ',B.' + Cost + ',' +
      '(CASE WHEN SUM(S.QTYIN-S.QTYOUT) = 0 THEN 0 ELSE SUM(S.QTYIN-S.QTYOUT) END) ALLO_TOT ' +
      'FROM INVENTOR A LEFT JOIN STKCARD S ON A.PARTNO=S.PARTNO AND A.LOCAT=S.LOC AND S.STKDATE <=:ADJDATE,INVANLS B ' +
      'WHERE A.PARTNO=B.PARTNO AND A.LOCAT=B.LOCAT AND ' +
      'A.YEAR1=B.YEAR1 AND A.LOCAT=:EDIT1 ' + Expopt + Exptyp);

    if DBRadioGroup1.Itemindex = 2 then
    begin
      if DBEdit7.text = '' then
        DBEdit7.text := 'ZZZZZZZZZZZZZZZZZZ';
      Params[0].AsDate := AdjDate.Date;
      Params[1].Asstring := FmDmic01.TmpAjIvADJLOC.aSSTRING;
      Params[2].Asstring := DBEDIT6.Text;
      Params[3].Asstring := DBEDIT7.Text;
    end
    else if DBRadioGroup1.Itemindex = 1 then
    begin
      Params[0].AsDate := AdjDate.Date;
      Params[1].Asstring := FmDmic01.TmpAjIvADJLOC.aSSTRING;
      Params[2].Asstring := DBedit5.Text + '%';
    end
    else if DBRadioGroup1.Itemindex = 0 then
    begin
      Params[0].AsDate := AdjDate.Date;
      Params[1].Asstring := FmDmic01.TmpAjIvADJLOC.aSSTRING;
      Params[2].Asstring := DBedit3.Text + '%';
    end;

    Open;
    if FmDmic01.Query1.bof and FmDmic01.Query1.Eof then
      sfMain.RaiseException('ไม่มีรหัสสินค้าในแฟ้มหลัก');
  end;

  with FmDmic01.TmpAjTr do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TMPAJTR WHERE ADJNO =:XADJNO');
    PARAMS[0].ASSTRING := '';
    OPEN;
  end;

  Gauge1.MaxValue := FmDmic01.Query1.RecordCount;
  P := 1;

  FmDmic01.Query1.First;
  while not FmDmic01.Query1.Eof do
  begin
    FmDmic01.TmpAjTr.Insert;
    FmDmic01.TmpajtrADjno.Asstring := FmDmic01.TmpAjIvADjno.Asstring;
    FmDmic01.TmpajtrAdjloc.Asstring := FmDmic01.TmpAjIvAdjloc.Asstring;
    FmDmic01.TmpajtrAdjdate.Asdatetime := FmDmic01.TmpAjIvAdjdate.Asdatetime;

    FmDmic01.TmpajtrPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('Partno').Asstring;
    FmDmic01.TmpajtrSHELF.Asstring := FmDmic01.Query1.Fieldbyname('Shelf').Asstring;
    FmDmic01.TmpajtrGROUP1.Asstring := FmDmic01.Query1.Fieldbyname('Group1').Asstring;
    FmDmic01.TmpajtrUCOST.AsFloat := FmDmic01.Query1.Fieldbyname(Cost).AsFloat;
    FmDmic01.TmpajtrQTYORD.AsFloat := FmDmic01.Query1.Fieldbyname('ALLO_TOT').AsFloat; // FmDmic01.Query1.Fieldbyname(Allo).AsFloat;
    FmDmic01.TmpajtrYear1.AsFloat := Xyear;
    FmDmic01.TmpajtrFlag.Asstring := FmDmic01.TmpAjIvFlag.Asstring;
    FmDmic01.TmpajtrITEMNO.AsFloat := P;
    FmDmic01.TmpAjTr.Post;

    P := P + 1;
    Gauge1.Progress := P;
    FmDmic01.Query1.Next;
  end;
  Gauge1.Progress := 0;
end;

procedure TFExpStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FExpStock := Nil;
  Action := Cafree;
end;

procedure TFExpStock.DataSource1StateChange(Sender: TObject);
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
  ExportBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');
  SpeedButton2.Enabled := DataSource1.State = Dsinsert;
  DBRadioGroup1.Properties.ReadOnly := not saveBtn.Visible;
  RadioGp2.Properties.ReadOnly := not saveBtn.Visible;

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

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
end;

procedure TFExpStock.editBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFmSTHpIn10, FmSTHpIn10);
  if FmSTHpIn10.ShowModal = Mrok then
  begin
    with FmDmic01.TMPAJIV do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM TMPAJIV WHERE ADJNO =:XADJNO');
      PARAMS[0].ASSTRING := FmSTHpIn10.Query1.FieldByname('ADJNO').Asstring;
      OPEN;
    end;

    with FmDmic01.TMPAJTr do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM TMPAJTR WHERE ADJNO =:XADJNO');
      PARAMS[0].ASSTRING := FmSTHpIn10.Query1.FieldByname('ADJNO').Asstring;
      OPEN;
    end;
  end;
  Xdate := FmDmic01.TmpAjIvADJDATE.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Label10.caption := 'Export เดือน ' + Inttostr(XMonth) + ' ปี ' + Inttostr(XYear);
end;

procedure TFExpStock.delBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_B_3', 'DELETE', FmDmic01.TmpAjIv.FieldByName('ADJNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.TmpAjIv.Delete;
      end;
  end;
end;

procedure TFExpStock.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_B_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFExpStock.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F9:
      PrnBtnClick(Sender);
    Vk_F7:
      EditBtnClick(Sender);
    Vk_ESCAPE:
      CancBtnClick(Sender);
    Vk_F8:
      if DelBtn.Visible then
        DelBtnClick(Sender);
    Vk_F2:
      if SaveBtn.Visible then
        SaveBtnClick(Sender);
    Vk_F5:
      if InsBtn.Visible then
        InsBtnClick(Sender);
  end;
end;

procedure TFExpStock.SaveBtnClick(Sender: TObject);
begin
  if FmDmic01.Tmpajtr.RecordCount = 0 then
    sfmain.RaiseException('กรุณากดปุ่ม Export ตามเงื่อนไข..!');

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_B_3', 'INSERT', FmDmic01.TmpAjIv.FieldByName('ADJNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_B_3', 'EDIT', FmDmic01.TmpAjIv.FieldByName('ADJNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  FmDmic01.TmpAjIv.Post;
end;

procedure TFExpStock.DBedit5BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
  begin
    DBEDIT5.text := fSrcDlg.Keyno;
  end;
end;

procedure TFExpStock.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFExpStock.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.TmpAjIvADJLoc.Asstring := fSrcDlg.Keyno;
end;

procedure TFExpStock.DBEdit1PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD =:0');
    params[0].AsString := DBEdit1.Text;
    open;
  end;
  Edit1.Text := FmDmic01.Query1.fieldbyname('LOCATNM').AsString;
end;

procedure TFExpStock.DBEdit11PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CODE,NAME FROM OFFICER WHERE CODE =:0');
    PARAMS[0].ASSTRING := DBEdit11.TEXT;
    OPEN;
    EDIT2.TEXT := FmDmic01.Query2.FieldByname('NAME').Asstring;
  end;
end;

procedure TFExpStock.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with QInvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST WHERE PARTNO =:XPART ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if QInvmast.Bof and QInvmast.Eof then
      sfMain.RaiseException('ไม่พบข้อมูล');
    FmDmic01.TmpAjIvPARTNO1.AsString := QInvmast.FieldByName('PartNo').Asstring;
  end;
end;

procedure TFExpStock.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    FmDmic01.TmpAjIvGROUP1.AsString := fSrcDlg.Keyno;
end;

procedure TFExpStock.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with QInvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVMAST WHERE PARTNO =:XPART ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if QInvmast.Bof and QInvmast.Eof then
      sfMain.RaiseException('ไม่พบข้อมูล');
    FmDmic01.TmpAjIvPARTNO2.AsString := QInvmast.FieldByName('PartNo').Asstring;
  end;
end;

procedure TFExpStock.DBRadioGroup1Click(Sender: TObject);
begin
  DBEdit3.Enabled := DBRadioGroup1.Itemindex = 0;
  DBEdit5.Enabled := DBRadioGroup1.Itemindex = 1;
  DBEdit6.Enabled := DBRadioGroup1.Itemindex = 2;
  DBEdit7.Enabled := DBRadioGroup1.Itemindex = 2;
  Label4.Enabled := DBEdit3.Enabled;
  Label5.Enabled := DBEdit5.Enabled;
  Label7.Enabled := DBEdit6.Enabled;
  Label8.Enabled := DBEdit7.Enabled;
end;

procedure TFExpStock.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(wm_nextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFExpStock.AdjDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.TmpAjIv.fieldbyname('ADJDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.TmpAjIv.fieldbyname('ADJDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.TmpAjIv.fieldbyname('ADJDATE').AsDateTime := FmDmic01.TmpAjIv.fieldbyname('ADJDATE').AsDateTime;
  end;
end;

procedure TFExpStock.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
//  IF Uppercase(NAME)='DATETHAI' Then
//  Begin
//     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
//  End;
end;

procedure TFExpStock.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PDOCNO' then
    Value := DBEdit2.Text;
end;

procedure TFExpStock.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_PrnExCkStk.fr3', '1');
end;

procedure TFExpStock.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_PrnExCkStk.fr3', '2');
end;

procedure TFExpStock.FormShow(Sender: TObject);
begin
  with FmDmic01.TmpAjIv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TMPAJIV WHERE ADJNO ='''' ');
    OPEN;
  end;
  Label10.caption := '';
end;

procedure TFExpStock.ExportBtnClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFExpStock.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFExpStock.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

end.

