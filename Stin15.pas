unit Stin15;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask, DB, ComCtrls,
  Dbkbd, ImgList, ToolWin, RzButton, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxContainer, cxMaskEdit, AdvGlowButton, AdvToolBar, AdvPanel,
  ActnList, cxMemo, cxGroupBox, QExport4DBF, QExport4PDF, QExport4RTF,
  QExport4Docx, QExport4, QExport4XLS, QExport4Xlsx, bsSkinShellCtrls, Menus,
  AdvMenus, cxRadioGroup, FireDAC.Phys.Intf, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator,
  dxDateRanges, BusinessSkinForm, System.Actions, RzDbkbd, dxStatusBar,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxDCtrl, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTIn15 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label8: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label16: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranQTYMOV: TcxGridDBColumn;
    cxGridTranUPRICE: TcxGridDBColumn;
    cxGridTranTOTPRC: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    Edit1: TcxTextEdit;
    Edit3: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit4: TcxTextEdit;
    DataSource2: TDataSource;
    Query1: TFDQuery;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    dxStatusBar1: TdxStatusBar;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cxGridTranPARTDESC: TcxGridDBColumn;
    Label32: TLabel;
    cxGroupBox2: TcxGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxTextEdit6: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    Query3: TFDQuery;
    Query2: TFDQuery;
    Q_ListRecv: TFDQuery;
    qrChkPeriod: TFDQuery;
    MvInv: TFDQuery;
    MvInvMOVDT: TDateField;
    MvInvMOVNO: TStringField;
    MvInvOFFICCOD: TStringField;
    MvInvAPPROVCD: TStringField;
    MvInvRECVCOD: TStringField;
    MvInvRECVDT: TDateField;
    MvInvTOTPRC: TFloatField;
    MvInvMEMO1: TMemoField;
    MvInvFLAG: TStringField;
    MvInvUSERID: TStringField;
    MvInvTIME1: TDateTimeField;
    MvInvUpdatestatus: TStringField;
    Mvtran: TFDQuery;
    MvtranMOVTO: TStringField;
    MvtranPARTNO: TStringField;
    MvtranUPRICE: TFloatField;
    MvtranQTYMOV: TFloatField;
    MvtranTOTPRC: TFloatField;
    MvtranUSERID: TStringField;
    MvtranTIME1: TDateTimeField;
    MvtranUpdatestatus: TStringField;
    MvtranPARTDESC: TStringField;
    SoMvInv: TDataSource;
    SoMvTran: TDataSource;
    MvInvMOVFRM: TStringField;
    MvInvMOVTO: TStringField;
    MvtranMOVNO: TStringField;
    MvtranMOVFRM: TStringField;
    QDbconfig: TFDQuery;
    Condpay: TFDQuery;
    QLastno: TFDQuery;
    MvInvLOCAT: TStringField;
    MvtranLOCAT: TStringField;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    MovDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit4: TcxDBButtonEdit;
    DBEdit11: TcxDBButtonEdit;
    DBEdit5: TcxDBButtonEdit;
    DBMemo1: TcxDBMemo;
    cxRadioGroup1: TcxRadioGroup;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxDialogControls1: TfrxDialogControls;
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure insBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit4PropertiesChange(Sender: TObject);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit11PropertiesChange(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit5PropertiesChange(Sender: TObject);
    procedure MovDateExit(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure cxButtonEdit1PropertiesChange(Sender: TObject);
    procedure cxTextEdit6FocusChanged(Sender: TObject);
    procedure MvInvAfterCancel(DataSet: TDataSet);
    procedure MvInvAfterPost(DataSet: TDataSet);
    procedure MvInvBeforeClose(DataSet: TDataSet);
    procedure MvInvBeforeDelete(DataSet: TDataSet);
    procedure MvInvBeforePost(DataSet: TDataSet);
    procedure MvInvCalcFields(DataSet: TDataSet);
    procedure MvInvNewRecord(DataSet: TDataSet);
    procedure MvInvUpdateError(DataSet: TDataSet; E: EDatabaseError; UpdateKind: TFDUpdateRequest; var UpdateAction: TFDErrorAction);
    procedure MvtranBeforeDelete(DataSet: TDataSet);
    procedure MvtranBeforePost(DataSet: TDataSet);
    procedure MvtranCalcFields(DataSet: TDataSet);
    procedure MvtranNewRecord(DataSet: TDataSet);
    procedure MvInvMOVTOValidate(Sender: TField);
    procedure MvInvMOVDTValidate(Sender: TField);
    procedure MvtranPARTNOValidate(Sender: TField);
    procedure MvtranPARTNOChange(Sender: TField);
    procedure MvtranUPRICEValidate(Sender: TField);
    procedure MvtranQTYMOVValidate(Sender: TField);
    procedure MvtranAfterPost(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesChange(Sender: TObject);
    procedure MvInvLOCATValidate(Sender: TField);
    procedure SoMvInvStateChange(Sender: TObject);
    procedure MvInvMOVFRMValidate(Sender: TField);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    Allo, Cost, NALLOW, nPartno: string;
  end;

var
  FmSTIn15: TFmSTIn15;
  XYear, XMonth, XDay: Word;
  OnHn1: double;
  XDate: TdateTime;

implementation

uses
  Dmic01, Functn01, Dlginvms, DmSet1, uSrcDlg, USoftFirm, unfrPreview, Dmsec,
  uFindData;

{$R *.DFM}

procedure TFmSTIn15.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmSTIn15 := Nil;
  Action := Cafree;
end;

procedure TFmSTIn15.insBtnClick(Sender: TObject);
begin
  with Mvinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MV_WHINVOI WHERE MOVNO ='''' ');
    OPEN;
    INSERT;
  end;

  with Mvtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MV_WHTRANS WHERE MOVNO ='''' ');
    OPEN;
  end;
  DBEdit1.SetFocus;
end;

procedure TFmSTIn15.CancBtnClick(Sender: TObject);
begin
  Mvinv.Cancel;
end;

procedure TFmSTIn15.delBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_2_3', 'DELETE', Mvinv.FieldByName('MOVNO').AsString);
        if DM_SEC.qrRecent.Active then
          DM_SEC.qrRecent.ApplyUpdates;
        if DM_SEC.qrRecent.Active then
          DM_SEC.qrRecent.CommitUpdates;
        Mvinv.Delete;
      end;
  end;
end;

procedure TFmSTIn15.SaveBtnClick(Sender: TObject);
begin
 { if sfmain.Xoveryear <> 'Y' then
  begin
    dm_sec.ChkWorkDT(MovDate.Date);
    dm_sec.ChkWorkMONTH(MovDate.Date,sfmain.XCurDtFrmDB);
  end;

  Dm_sec.Do_With_Query(actOpen,qrChkPeriod,'SELECT * FROM ACCPERIOD WHERE (:DATE BETWEEN STARTDT AND ENDDT)',[MovDate.Date]);

  if not(qrChkPeriod.eof and qrChkPeriod.bof) and (qrChkPeriod.FieldByName('CLSSTAT').AsString = 'Y') then
  sfmain.RaiseException('ปิดงวดบัญชีประจำเดือนนี้แล้วไม่สามารถทำรายการได้..!');  }

  if DBEdit1.Text = '' then
    SFMain.RaiseException('ยังไม่ได้ระบุคลังที่โอน');
  if DBEdit4.Text = '' then
    SFMain.RaiseException('ยังไม่ได้ระบุคลังที่รับโอน');
  if MvinvOFFICCOD.AsString = '' then
    SFMain.RaiseException('ไม่มีพนักงานโอนย้าย');
  if MvinvAPPROVCD.AsString = '' then
    SFMain.RaiseException('ไม่มีผู้อนุมัติโอนย้าย');
  if MvTran.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  if SoMvInv.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_2_3', 'INSERT', Mvinv.FieldByName('MOVNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_2_3', 'EDIT', Mvinv.FieldByName('MOVNO').AsString);
  if DM_SEC.qrRecent.Active then
    DM_SEC.qrRecent.ApplyUpdates;
  if DM_SEC.qrRecent.Active then
    DM_SEC.qrRecent.CommitUpdates;
  Mvinv.Post;
end;

procedure TFmSTIn15.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Flag_a := '';
  fSrcDlg.Key_a := '';
  if fSrcDlg.ShowModalWhInvoi = Mrok then
  begin
    with Mvinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MV_WHINVOI WHERE MOVNO =:XMOVNO ');
      PARAMS[0].ASSTRING := fSrcDlg.KEYNO;
      OPEN;
    end;

    with MvTran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM MV_WHTRANS WHERE MOVNO =:XMOVNO ');
      PARAMS[0].ASSTRING := fSrcDlg.KEYNO;
      OPEN;
    end;
  end;
end;

procedure TFmSTIn15.DBGrid2EditButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with Query1 do
    begin
      Close;
      SQL.Clear;
      Sql.Add('SELECT PARTNO FROM INVENTOR WHERE (LOCAT =:XLOCAT) ' +
        'AND (PARTNO =:XPARTNO) ');
      Params[0].asString := MvInvLOCAT.asstring;
      Params[1].asString := fSrcDlg.Keyno;
      Open;
    end;
    MvTranPARTNO.Asstring := Query1.Fieldbyname('PARTNO').Asstring;
  end;
end;

procedure TFmSTIn15.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFmSTIn15.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_2_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFmSTIn15.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn15.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  //fSrcDlg.xLock := 'Y';
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    with Query1 do
    begin
      Close;
      SQL.Clear;
      Sql.Add('SELECT PARTNO FROM INVENTOR WHERE (LOCAT =:XLOCAT) ' +
        'AND (PARTNO =:XPARTNO) ');
      Params[0].asString := MvInvLOCAT.asstring;
      Params[1].asString := fSrcDlg.Keyno;
      Open;
    end;
    MvTranPARTNO.Asstring := Query1.Fieldbyname('PARTNO').Asstring;
  end;
end;

procedure TFmSTIn15.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(Tffinddata, ffinddata);
//  if ffinddata.ShowModalSetwarehouse = Mrok then
//    MvInvMOVFRM.Asstring := ffinddata.Keyno;
end;

procedure TFmSTIn15.DBEdit1PropertiesChange(Sender: TObject);
begin
  Edit1.Text := SFMain.FindShowDesc('SETWAREHOUSE', 'WAREHOUSEDESC', 'WAREHOUSECOD', DBEdit1.Text);
end;

procedure TFmSTIn15.DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(Tffinddata, ffinddata);
//  if ffinddata.ShowModalSetwarehouse = Mrok then
//    MvInvMOVTo.Asstring := ffinddata.Keyno;
end;

procedure TFmSTIn15.DBEdit4PropertiesChange(Sender: TObject);
begin
  Edit2.Text := SFMain.FindShowDesc('SETWAREHOUSE', 'WAREHOUSEDESC', 'WAREHOUSECOD', DBEdit4.Text);
end;

procedure TFmSTIn15.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    MvInvOfficcod.AsString := fSrcDlg.Keyno;
end;

procedure TFmSTIn15.DBEdit11PropertiesChange(Sender: TObject);
begin
  Edit3.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit11.Text);
end;

procedure TFmSTIn15.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    MvInvApprovcd.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn15.DBEdit5PropertiesChange(Sender: TObject);
begin
  Edit4.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit5.Text);
end;

procedure TFmSTIn15.MovDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if SoMvInv.State in dsEditmodes then
  begin
    DecodeDate(Mvinv.fieldbyname('MOVDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Mvinv.fieldbyname('MOVDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Mvinv.fieldbyname('MOVDT').AsDateTime := Mvinv.fieldbyname('MOVDT').AsDateTime;
  end;
end;

procedure TFmSTIn15.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PMOVTNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn15.actEditPrnExecute(Sender: TObject);
begin
  if cxRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Tranfer2.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'FR_TRANFER2A5.FR3', '2');
end;

procedure TFmSTIn15.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  if cxRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Tranfer2.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'FR_TRANFER2A5.FR3', '1');
end;

procedure TFmSTIn15.FormShow(Sender: TObject);
begin
  with Mvinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MV_WHINVOI WHERE MOVNO =:XMOVNO');
    PARAMS[0].ASSTRING := '';
    OPEN;
  end;
  if not (CondPay.Active) then
    CondPay.Open;
  NAllow := CondPay.Fieldbyname('NStkLob').Asstring; {ไม่ยอมให้สต็อกติดลบ?}
end;

procedure TFmSTIn15.DBMemo1Click(Sender: TObject);
begin
  KeyPreview := False;
end;

procedure TFmSTIn15.DBMemo1Exit(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFmSTIn15.cxButtonEdit1PropertiesChange(Sender: TObject);
var
  LVPrice, Allo, Cost, Price: string;
  nBal, nRedu, nTot: Double;
begin
  Xdate := MvinvMOVDT.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);

  with Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *  FROM INVENTOR WHERE (BARCODE =:XBARCODE) AND LOCAT=:XLOC');
    PARAMS[0].ASSTRING := trim(cxButtonEdit1.Text);
    PARAMS[1].ASSTRING := MvinvLOCAT.asstring;
    Open;
  end;
  nPartno := Query2.fieldbyname('PARTNO').AsString;
  cxTextEdit6.Text := Query2.fieldbyname('DESC1').AsString;

  if (cxButtonEdit1.Text <> '') and (not Query2.Eof and Query2.Bof) then
  begin
    Mvtran.Append;
    MvtranPARTNO.Asstring := nPartno;
    MvtranPARTDESC.Asstring := Query2.fieldbyname('DESC1').AsString;
    MvtranQTYMOV.AsFloat := StrToInt(cxComboBox1.Text);

    with Query3 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Cost + ',' + Allo + ' FROM INVANLS WHERE ' +
        'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
      Params[0].Asstring := MvtranPARTNO.asstring;
      Params[1].Asstring := MvinvLOCAT.asstring;
      Params[2].Asstring := Inttostr(Xyear);
      if not Query3.Prepared then
        Query3.Prepare;
      Open;
    end;

    if (NAllow = 'Y') and (MvtranQTYMOV.AsFloat > Query3.FieldByName(Allo).AsFloat) then
    begin
        {DBGrid1.Setfocus;
        DBGrid1.SelectedIndex:=0;
        SFMain.RaiseException('ในระบบ Setup ไม่อนุญาตให้สต็อกติดลบ'); }
      MvtranQTYMOV.AsFloat := 0;
      Mvtran.Delete;
    end;

    cxTextEdit6.Text := '';
    cxComboBox1.Text := '1';
    cxButtonEdit1.Text := '';

    cxButtonEdit1.SetFocus;
    Mvtran.Post;
    Mvtran.Append;
  end;
  cxButtonEdit1.SetFocus;
end;

procedure TFmSTIn15.cxTextEdit6FocusChanged(Sender: TObject);
begin
  cxButtonEdit1.SetFocus;
end;

procedure TFmSTIn15.MvInvAfterCancel(DataSet: TDataSet);
begin
  if Mvinv.Active then
    Mvinv.CancelUpdates;
  if Mvtran.Active then
    Mvtran.CancelUpdates;
  if QLastno.Active then
    QLastno.CancelUpdates;
end;

procedure TFmSTIn15.MvInvAfterPost(DataSet: TDataSet);
var
  S: string;
begin
  S := MvInvMOVNO.Asstring;
  DM_SEC.HI_DBMS.StartTransaction;
  try
    if Mvinv.Active then
      Mvinv.ApplyUpdates;
    if Mvtran.Active then
      Mvtran.ApplyUpdates;
    if QLastno.Active then
      QLastno.ApplyUpdates;

    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
     //MvInvBeforeCancel(MvInv);
    Mvinv.edit;
    raise;
  end;
  if Mvinv.Active then
    Mvinv.CommitUpdates;
  if Mvtran.Active then
    Mvtran.CommitUpdates;
  if QLastno.Active then
    QLastno.CommitUpdates;

  with Mvinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MV_WHINVOI WHERE MOVNO =:XMOVNO ');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
  with MvTran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM MV_WHTRANS WHERE MOVNO =:XMOVNO ');
    PARAMS[0].ASSTRING := S;
    OPEN;
  end;
end;

procedure TFmSTIn15.MvInvBeforeClose(DataSet: TDataSet);
begin
  if Mvtran.Active then
    Mvtran.Close;
  if QLastno.Active then
    QLastno.Close;
end;

procedure TFmSTIn15.MvInvBeforeDelete(DataSet: TDataSet);
begin

  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      SFmain.RaiseException('ไม่มีสิทธิ์ในการลบข้อมูล');
  //****Delete ****
  Mvtran.AfterDelete := Nil;
  Mvtran.first;
  while not Mvtran.Eof do
    Mvtran.delete;
end;

procedure TFmSTIn15.MvInvBeforePost(DataSet: TDataSet);
begin
  Mvtran.First;

  if MvInvUpdatestatus.Value = 'Inserted' then
  begin
    // Rerun
    if Duplicate then
    begin
      MvInvMOVDTValidate(MvInvMOVDT);

      Mvtran.DisableControls;
      Mvtran.AfterPost := Nil;
      Mvtran.First;
      while not Mvtran.Eof do
      begin
        Mvtran.Edit;
        MvtranMOVNO.Asstring := MvInvMOVNO.Asstring;
        Mvtran.Next
      end;
      Mvtran.AfterPost := MvtranAfterPost;
      Mvtran.EnableControls;
    end;
  end;
end;

procedure TFmSTIn15.MvInvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
        'Inserted', 'Deleted');
begin
  if Mvinv.CachedUpdates then
    MvinvUpdateStatus.Value := UpdateStatusStr[Mvinv.UpdateStatus];
end;

procedure TFmSTIn15.MvInvNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  if not CondPay.Active then
    CondPay.Open;

  MvinvFlag.AsString := 'T';
  MvInvLOCAT.AsString := SFMain.XLocat;
  MvinvMOVDT.AsDateTime := Now;
  MvInvUSERID.AsString := SFMain.XUser_ID;
  MvInvtime1.AsDateTime := now;
  MvinvOfficcod.AsString := SFMain.XOffCod;
end;

procedure TFmSTIn15.MvInvUpdateError(DataSet: TDataSet; E: EDatabaseError; UpdateKind: TFDUpdateRequest; var UpdateAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TFmSTIn15.MvtranBeforeDelete(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := MvinvMovDt.AsdateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);

  XDate := MvInvMOVDT.AsdateTime;
  Xord := MvtranQTYMOV.AsFloat;
  Xqty := MvtranQTYMOV.AsFloat;
  Xpart := MvtranPARTNO.Asstring;
  Xlocat := MvtranLOCAT.Asstring;
  Xflag := MvInvFLAG.Asstring;

   //UpdStock(XQty,Xcost,XPART,XLOCAT,'3','+',XDATE);
end;

procedure TFmSTIn15.MvtranBeforePost(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  XDate := MvinvMovDt.AsdateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);

  XDate := MvInvMOVDT.AsdateTime;
  Xord := MvtranQTYMOV.AsFloat;
  Xqty := MvtranQTYMOV.AsFloat;
  Xpart := MvtranPARTNO.Asstring;
  Xlocat := MvtranLOCAT.Asstring;
  Xflag := MvInvFLAG.Asstring;

  if MvtranUpdateStatus.Value = 'Inserted' then
  begin
     //UpdStock(XQty,Xcost,XPART,XLOCAT,'3','-',XDATE);
  end;
end;

procedure TFmSTIn15.MvtranCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if Mvtran.CachedUpdates then
    MvtranUpdateStatus.Value := UpdateStatusStr[Mvtran.UpdateStatus];
end;

procedure TFmSTIn15.MvtranNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(Mvtran);
  MvTranLOCAT.AsString := MvInvLOCAT.AsString;
  MvTranMovfrm.AsString := MvinvMovFrm.AsString;
  MvTranMovTo.AsString := MvinvMovTo.AsString;
  MvTranMovNo.AsString := MvinvMovNo.AsString;
  MvtranUSERID.AsString := SFMain.XUser_ID;
  Mvtrantime1.AsDateTime := now;
end;

procedure TFmSTIn15.MvInvMOVTOValidate(Sender: TField);
begin
  if MvInvMOVTO.AsString = MvInvMOVFRM.AsString then
    SFmain.RaiseException('ไม่สามารถโอนภายใต้คลังเดียวกันได้');

  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from setwarehouse where locat =:edit1 and warehousecod =:edit2');
    params[0].AsString := MvInvLOCAT.AsString;
    params[1].AsString := MvInvMOVTO.AsString;
    open;

    if (eof and bof) then
      sfmain.RaiseException('ไม่ใช่คลังสินค้าภายใต้สาขานี้');
  end;
end;

procedure TFmSTIn15.MvInvMOVDTValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  HF := 'H_MVWH';
  LF := 'L_MVWH';
  if not QDBConfig.Active then
    QDBConfig.Open;
  if QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := Mvinv.Fieldbyname('LOCAT').asstring;
    DV := Mvinv.Fieldbyname('MOVDT').asDatetime;
    if MvInvUpdatestatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(MOVNO) AS MAXNO FROM MV_WHINVOI WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(MOVNO,2,2)=:EDIT2 AND SUBSTR(MOVNO,5,2)=:EDIT3 AND SUBSTR(MOVNO,7,2)=:EDIT4 ';
      //If Duplicate Then
      MvInvMOVNO.Asstring := FmDmic01.Maxno(HF, LF, LV, SQLTXT, DV);
      //Else
        //MvInvMOVNO.Asstring := RunNo01(HF,LF,LV,DV);
    end;
  end;
end;

procedure TFmSTIn15.MvtranPARTNOValidate(Sender: TField);
begin
  Xdate := MvinvMovDT.AsdateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Cost := 'COST_' + inttostr(XMonth);
  Allo := 'Allo_' + inttostr(XMonth);

  if MvtranPARTNO.asstring = '' then
    sfmain.raiseException('ยังไม่บันทึกรหัสสินค้า');

  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
    PARAMS[0].ASSTRING := MvtranPARTNO.asstring;
    PARAMS[1].ASSTRING := MvInvLOCAT.asstring;
    Open;
  end;

  if Query1.Bof and Query1.Eof then
  begin
    Application.CreateForm(TFsvmast, Fsvmast);
    with Fsvmast.Hquery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO LIKE :XPARTNO AND LOCAT=:XLOC');
      PARAMS[0].ASSTRING := MvtranPARTNO.asstring + '%';
      PARAMS[1].ASSTRING := MvInvLOCAT.asstring;
      Open;
    end;
    if (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) then
    begin
      Fsvmast.Close;
      sfmain.raiseException('ไม่พบรหัสสินค้าในแฟ้มหลัก');
    end
    else
    begin
      if Fsvmast.Showmodal = mrok then
        MvtranPARTNO.asstring := Fsvmast.Hquery1.Fieldbyname('Partno').asstring;
      Fsvmast.Close;
    end;
  end;

  with Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO  FROM ANLSWAREHOUSE WHERE PARTNO =:XPARTNO AND ' +
      'WAREHOUSECOD = :Edit2');
    PARAMS[0].ASSTRING := MvtranPARTNO.asstring;
    PARAMS[1].ASSTRING := MvInvMOVTO.asstring;
    Open;
    if (Bof and Eof) then
      sfmain.raiseException('ไม่พบรหัสสินค้าในคลังที่จะโอนไปให้ ->' + MvInvMOVTO.asstring + #13#13 + ' กรุณาสร้างรหัสสินค้าก่อนทำรายการ..!');
  end;

  with Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Cost + ',' + Allo + ' FROM INVANLS WHERE ' +
      'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
    Params[0].Asstring := MvtranPartno.asstring;
    Params[1].Asstring := MvInvLOCAT.asstring;
    Params[2].Asstring := Inttostr(Xyear);
    Open;
  end;

  MvTranUPRICE.Asfloat := Query2.Fieldbyname(Cost).Asfloat;
end;

procedure TFmSTIn15.MvtranPARTNOChange(Sender: TField);
begin
  with Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM Inventor WHERE PARTNO =:XPARTNO AND lOCAT=:XLOCAT');
    PARAMS[0].ASSTRING := MvtranPARTNO.Asstring;
    PARAMS[1].ASSTRING := MvtranLOCAT.Asstring;
    Open;
    Mvtran.FieldByName('PARTDESC').Asstring := Query2.fieldbyname('DESC1').AsString;
  end;
end;

procedure TFmSTIn15.MvtranUPRICEValidate(Sender: TField);
begin
  MvTranTotprc.AsFloat := MvTranUPrice.Asfloat * MvTranQTYMov.Asfloat;
end;

procedure TFmSTIn15.MvtranQTYMOVValidate(Sender: TField);
begin
  CondPay.Close;
  CondPay.Open;
  NAllow := CondPay.Fieldbyname('NStkLob').Asstring; {ไม่ยอมให้สต็อกติดลบ?}

  Xdate := MvinvMovDT.AsdateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Cost := 'COST_' + inttostr(XMonth);
  Allo := 'Allo_' + inttostr(XMonth);

  with Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Cost + ',' + Allo + ' FROM INVANLS WHERE ' +
      'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
    Params[0].Asstring := MvtranPartno.asstring;
    Params[1].Asstring := MvInvLOCAT.asstring;
    Params[2].Asstring := Inttostr(Xyear);
    Open;
  end;

  if (NAllow = 'Y') and (Query2.Fieldbyname(Allo).AsFloat < MvTranQTYMov.Asfloat) then
    sfmain.raiseException('ในระบบ Setup ไม่อนุญาตให้สต็อกติดลบ');
  MvTranTotprc.AsFloat := MvTranUPrice.Asfloat * MvTranQTYMov.Asfloat;
end;

procedure TFmSTIn15.MvtranAfterPost(DataSet: TDataSet);
var
  Smnettot: double;
begin
  MvTran.DisableControls;
  Smnettot := 0;
  MvTran.first;
  while not MvTran.Eof do
  begin
    Smnettot := Smnettot + FRound((MvTranTotprc.AsFloat), 2);
    MvTran.Next;
  end;
  Mvinv.Edit;
  MvinvTotPrc.AsFloat := Smnettot;
   //MvinvTotPrc.AsFloat := StrTofloat(FloattostrF((Smnettot),ffFixed,15,2));
  MvTran.EnableControls;
end;

procedure TFmSTIn15.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    MvInvLOCAT.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn15.cxDBButtonEdit1PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', cxDBButtonEdit1.Text);
end;

procedure TFmSTIn15.MvInvLOCATValidate(Sender: TField);
begin
  if MvInvMOVDT.Asstring <> '' then
    MvInvMOVDTValidate(Sender);
end;

procedure TFmSTIn15.SoMvInvStateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (SoMvInv.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (SoMvInv.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EditBtn.Visible := SoMvInv.State = Dsbrowse;
  CloseBtn.Enabled := (SoMvInv.State = Dsbrowse);
  SaveBtn.Visible := (SoMvInv.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  PrnBtn.Visible := (SoMvInv.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');

  cxGridTran.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SaveBtn.Visible;

  cxButtonEdit1.Enabled := SaveBtn.Visible;
  cxComboBox1.Enabled := SaveBtn.Visible;

  if SoMvInv.Dataset.State = Dsbrowse then
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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
      end;

      if (Components[N] is TcxButtonEdit) and (TcxButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxButtonEdit(Components[N]).Enabled := False;
        TcxButtonEdit(Components[N]).Style.Color := clBtnFace;
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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxButtonEdit) and (TcxButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxButtonEdit(Components[N]).Enabled := True;
        TcxButtonEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
    //
  QDBConfig.Close;
  QDBConfig.Open;
  DBEdit2.Properties.Readonly := QDBConfig.Fieldbyname('H_MVWH').asstring = 'Y';
  cxDBButtonEdit1.Enabled := (SFMain.XChgLoc = 'Y') and (SoMvInv.Dataset.State = Dsinsert);
  MovDate.Enabled := (SFMain.XChgDate = 'Y') and (SoMvInv.Dataset.State = Dsinsert);
  DBEdit4.Enabled := SoMvInv.Dataset.State = Dsinsert;
end;

procedure TFmSTIn15.MvInvMOVFRMValidate(Sender: TField);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from setwarehouse where locat =:edit1 and warehousecod =:edit2');
    params[0].AsString := MvInvLOCAT.AsString;
    params[1].AsString := MvInvMOVFRM.AsString;
    open;

    if (eof and bof) then
      sfmain.RaiseException('ไม่ใช่คลังสินค้าภายใต้สาขานี้');
  end;
end;

end.

