unit uPos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, StdCtrls, DBCtrls, RzPanel, Math,
  RzButton, RzTabs, RzRadGrp, RzDBRGrp, RzRadChk, Dbkbd, DB, Mask, RzEdit,
  RzDBEdit, RzDBBnEd, RzLabel, Grids, DBGrids, RzDBGrid, RzDBChk, RzDBLbl,
  RzBorder, ImgList, RzGrids, RzDbkbd, Buttons, RzSpnEdt, cxLookAndFeelPainters,
  cxCheckBox, cxDBEdit, cxTextEdit, cxControls, cxContainer, cxEdit, cxGroupBox,
  AdvGlowButton, AdvToolBar, AdvPanel, cxButtonEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxRadioGroup, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ActnList,
  cxLabel, cxDBLabel, Menus, cxButtons, cxLookAndFeels, dxDateRanges,
  System.Actions, FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxNavigator, cxImage, AdvScrollBox, frxClass, frxExportXLSX, frxRich,
  frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TFPos = class(TForm)
    AdvPanel1: TAdvPanel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TFDQuery;
    DataSource3: TDataSource;
    ActionList1: TActionList;
    actEditPrn: TAction;
    Action1: TAction;
    Pkinv: TFDQuery;
    PkinvPKNO: TStringField;
    PkinvSALLEV: TStringField;
    PkinvVATTYPE: TStringField;
    PkinvOFFICCOD: TStringField;
    PkinvPKDATE: TDateField;
    PkinvTOTPRC: TFloatField;
    PkinvDISCT: TFloatField;
    PkinvDISCAMT: TFloatField;
    PkinvNETAMT: TFloatField;
    PkinvBALANCE: TFloatField;
    PkinvVATRT: TFloatField;
    PkinvVATAMT: TFloatField;
    PkinvNETTOTAL: TFloatField;
    PkinvREFNO: TStringField;
    PkinvREFDAT: TDateField;
    PkinvFLAG: TStringField;
    PkinvSTAT: TStringField;
    PkinvJOBNO: TStringField;
    PkinvMEMO1: TMemoField;
    PkinvCUSCOD: TStringField;
    PkinvSVCOLOR: TStringField;
    PkinvUSERID: TStringField;
    PkinvTIME1: TDateTimeField;
    PkinvPKLOCAT: TStringField;
    PkinvUpdatestatus: TStringField;
    PkinvCANCELID: TStringField;
    PkinvCANDAT: TDateTimeField;
    PkinvPOSTGLDT: TDateTimeField;
    PkinvSVORD: TStringField;
    PkinvRTNPK: TStringField;
    PkinvTOTCOST: TFloatField;
    PkinvSALTYPE: TStringField;
    PkinvDISCTYP: TStringField;
    PkinvEXDISAMT: TFloatField;
    PkinvDISBATH: TStringField;
    PkinvCAMPNO: TStringField;
    PkinvTRANTO: TStringField;
    PkinvNETADD: TFloatField;
    PkinvCUPONGNO: TStringField;
    SoPkinv: TDataSource;
    PkTran: TFDQuery;
    PkTranPKNO: TStringField;
    PkTranPARTNO: TStringField;
    PkTranUPRICE: TFloatField;
    PkTranQTYORD: TFloatField;
    PkTranQTYOUT: TFloatField;
    PkTranQTYBOD: TFloatField;
    PkTranNETFL: TStringField;
    PkTranREDU1: TFloatField;
    PkTranREDU2: TFloatField;
    PkTranREDU3: TFloatField;
    PkTranNETPRC: TFloatField;
    PkTranTOTPRC: TFloatField;
    PkTranACCTNO: TStringField;
    PkTranJOBNO: TStringField;
    PkTranSERIALNO: TStringField;
    PkTranPKDATE: TDateField;
    PkTranUSERID: TStringField;
    PkTranTIME1: TDateTimeField;
    PkTranPKLOCAT: TStringField;
    PkTranSERVCOD: TStringField;
    PkTranFRT: TFloatField;
    PkTranRTNPK: TStringField;
    PkTranFLAG: TStringField;
    PkTranSVCOLOR: TStringField;
    PkTranYEAR1: TStringField;
    PkTranCANDAT: TDateTimeField;
    PkTranBACKFLG: TStringField;
    PkTranCANCELID: TStringField;
    PkTranPOSTGLDT: TDateTimeField;
    PkTranAVGCOST: TFloatField;
    PkTranFREE: TStringField;
    PkTranGROUP1: TStringField;
    PkTranDISCAMT: TFloatField;
    PkTranUpdatestatus: TStringField;
    PkTranCAMPNO: TStringField;
    PkTranCAMFLG: TStringField;
    PkTranCUSCOD: TStringField;
    PkTranREFPO: TStringField;
    PkTranREFNO: TStringField;
    PkTranREFDAT: TDateField;
    PkTranCUPONGNO: TStringField;
    SoPkTran: TDataSource;
    AdvPanel4: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    BillBtn: TAdvGlowButton;
    Label11: TRzLabel;
    PkTranPARTDESC: TStringField;
    Query2: TFDQuery;
    Query3: TFDQuery;
    PrnBtn: TAdvGlowButton;
    DBkbd1: TDBkbd;
    QueryOpen: TFDQuery;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvPanel6: TAdvPanel;
    AdvPanel3: TAdvPanel;
    NextBtn: TAdvGlowButton;
    DeleBtn: TAdvGlowButton;
    CheckBox1: TcxCheckBox;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranPARTDESC: TcxGridDBColumn;
    cxGridTranQTYORD: TcxGridDBColumn;
    cxGridTranUPRICE: TcxGridDBColumn;
    cxGridTranDISCAMT: TcxGridDBColumn;
    cxGridTranTOTPRC: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxTextEdit2: TcxTextEdit;
    CheckBox2: TcxCheckBox;
    AdvPanel2: TAdvPanel;
    Label9: TLabel;
    Label12: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label39: TLabel;
    Label13: TLabel;
    Edit3: TcxTextEdit;
    Edit2: TcxTextEdit;
    PkDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit7: TcxDBButtonEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    DBEdit8: TcxDBTextEdit;
    DBEdit3: TcxDBButtonEdit;
    Edit1: TcxTextEdit;
    AdvPanel7: TAdvPanel;
    AdvPanel5: TAdvPanel;
    cxDBTextEdit2: TcxDBTextEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvScrollBox1: TAdvScrollBox;
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    cxImage4: TcxImage;
    cxImage5: TcxImage;
    cxImage6: TcxImage;
    cxImage7: TcxImage;
    cxImage8: TcxImage;
    cxImage9: TcxImage;
    cxImage10: TcxImage;
    cxImage11: TcxImage;
    cxImage12: TcxImage;
    cxImage13: TcxImage;
    cxImage14: TcxImage;
    cxImage15: TcxImage;
    cxImage16: TcxImage;
    cxImage17: TcxImage;
    cxImage18: TcxImage;
    cxImage19: TcxImage;
    cxImage20: TcxImage;
    DBCheckBox1: TcxDBCheckBox;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label5: TLabel;
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
    procedure EditBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DelBtnClick(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure PkDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure BillBtnClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure PkinvAfterCancel(DataSet: TDataSet);
    procedure PkinvAfterPost(DataSet: TDataSet);
    procedure PkinvBeforeClose(DataSet: TDataSet);
    procedure PkinvBeforeDelete(DataSet: TDataSet);
    procedure PkinvBeforePost(DataSet: TDataSet);
    procedure PkinvCalcFields(DataSet: TDataSet);
    procedure PkinvNewRecord(DataSet: TDataSet);
    procedure PkTranAfterPost(DataSet: TDataSet);
    procedure PkTranAfterOpen(DataSet: TDataSet);
    procedure PkTranBeforeClose(DataSet: TDataSet);
    procedure PkTranBeforeDelete(DataSet: TDataSet);
    procedure PkTranBeforePost(DataSet: TDataSet);
    procedure PkTranCalcFields(DataSet: TDataSet);
    procedure PkTranNewRecord(DataSet: TDataSet);
    procedure PkinvOFFICCODValidate(Sender: TField);
    procedure PkinvPKDATEValidate(Sender: TField);
    procedure PkinvDISCTValidate(Sender: TField);
    procedure PkinvJOBNOValidate(Sender: TField);
    procedure PkinvCUSCODValidate(Sender: TField);
    procedure PkinvPKLOCATValidate(Sender: TField);
    procedure PkinvRTNPKValidate(Sender: TField);
    procedure PkinvEXDISAMTValidate(Sender: TField);
    procedure PkTranPARTNOChange(Sender: TField);
    procedure PkTranPARTNOValidate(Sender: TField);
    procedure PkTranQTYORDValidate(Sender: TField);
    procedure PkTranQTYOUTValidate(Sender: TField);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesChange(Sender: TObject);
    procedure cxTextEdit1FocusChanged(Sender: TObject);
    procedure PkTranUPRICEValidate(Sender: TField);
    procedure PkTranREDU1Validate(Sender: TField);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure cxImage1Click(Sender: TObject);
    procedure cxImage2Click(Sender: TObject);
    procedure cxImage3Click(Sender: TObject);
    procedure cxImage4Click(Sender: TObject);
    procedure cxImage5Click(Sender: TObject);
    procedure cxImage6Click(Sender: TObject);
    procedure cxImage7Click(Sender: TObject);
    procedure cxImage8Click(Sender: TObject);
    procedure cxImage9Click(Sender: TObject);
    procedure cxImage10Click(Sender: TObject);
    procedure cxImage11Click(Sender: TObject);
    procedure cxImage12Click(Sender: TObject);
    procedure cxImage13Click(Sender: TObject);
    procedure cxImage14Click(Sender: TObject);
    procedure cxImage15Click(Sender: TObject);
    procedure cxImage16Click(Sender: TObject);
    procedure cxImage17Click(Sender: TObject);
    procedure cxImage18Click(Sender: TObject);
    procedure cxImage19Click(Sender: TObject);
    procedure cxImage20Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure PkTranDISCAMTValidate(Sender: TField);
    procedure PkinvDISCAMTValidate(Sender: TField);
    procedure PkinvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure ShowCust;
    procedure ShowGride;
  public
    { Public declarations }
    XEditpric, XEditdisc, XPKNO, NALLOW, nDuplicate, Checkcrdt, DoupPart, nNetFl, nPartno: string;
    CountFound, nQty: integer;
    nUprice: Double;
  end;

var
  FPos: TFPos;
  Smnettot: Double;
  NmPart, Cgroup, XCampno, XGroup: string;
  QTYOut, AvCost: Double;
  XDate: TdateTime;
  Xyear, Xmonth, XDay: Word;
  Duplicate: Boolean;

implementation

uses
  Dmic01, Dlginvms, Functn01, DmSet1, uSrcDlg, USoftFirm, uFindPO, unfrPreview,
  Dmsec, uPaymntPos_01, uFindData;
{$R *.dfm}

procedure TFPos.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    fsrcDlg.XSrLocat := ''
  else
    fsrcDlg.XSrLocat := SFmain.Xlocat;
  FSrcDlg.Flag_a := '1';
  FSrcDlg.nSvColor := 'O';
  if fSrcDlg.ShowModalpk = Mrok then
  begin
    with Pkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := fSrcDlg.KeyNo;
      OPEN;
    end;
    XCampno := Pkinv.Fieldbyname('CAMPNO').asstring;

    with FmDmic01.Query2 do
    begin
      close;
      sql.clear;
      sql.add('select cuscod,snam,name1,name2 from CUSTMAST ' +
        'WHERE (cuscod =:EDIT1) ORDER BY cuscod ');
      Params[0].AsString := PkinvCusCod.AsString;
      OPEN;
      Edit1.Text := FmDmic01.Query2.FieldByname('SNAM').Asstring + ' ' +
        FmDmic01.Query2.FieldByname('NAME1').Asstring + '   ' +
        FmDmic01.Query2.FieldByname('NAME2').Asstring;
    end;

    with Pktran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := PkinvPkno.Asstring;
      OPEN;
    end;
      //ShowGride;
  end;
  DataSource1StateChange(DataSource1);

  with query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM PK_INVOI WHERE RTNPK=:0');
    Params[0].AsString := Pkinv.fieldByName('PKNO').AsString;
    Open;
  end;
         //if RzDBLabel1.Caption='' Then Label10.Visible := False else Label10.Visible := True;

  with FmDmic01.Icinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM IC_INVOI WHERE PKNO =:XINVNO');
    PARAMS[0].ASSTRING := Pkinv.fieldByName('PKNO').AsString;
    OPEN;
  end;
end;

procedure TFPos.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  {InsBtn.Visible       := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Visible       := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete) and (DBEdit2.Text<>'');
  EditBtn.Visible      :=  DataSource1.State=Dsbrowse;
  CloseBtn.Enabled     := (DataSource1.State=Dsbrowse);
  SaveBtn.Visible      := (DataSource1.State in DsEditmodes)and
                          ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible      := SaveBtn.Visible;}
  {AdvGlowButton1.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  AdvGlowButton2.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete) and (DBEdit2.Text<>'');
  AdvGlowButton3.Enabled  :=  DataSource1.State=Dsbrowse;
  AdvGlowButton6.Enabled  := (DataSource1.State=Dsbrowse);
  AdvGlowButton4.Enabled  := (DataSource1.State in DsEditmodes)and
                             ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  AdvGlowButton5.Enabled  := SaveBtn.Visible; }


  NextBtn.Enabled := (DataSource1.Dataset.State in DsEditModes);
  DeleBtn.Enabled := NextBtn.Enabled;
  BillBtn.Enabled := InsBtn.Enabled;

  cxGridTran.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SaveBtn.Visible;
  //
  DBRadioGroup1.Properties.ReadOnly := not (DataSource1.Dataset.State = DsInsert);
  DBCheckBox1.Properties.ReadOnly := DBRadioGroup1.Properties.ReadOnly;
  cxButtonEdit1.Enabled := SaveBtn.Visible;
  cxComboBox1.Enabled := SaveBtn.Visible;
  cxTextEdit2.Enabled := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := $00804000;
      end;

      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := $00804000;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := False;
        TcxDBDateEdit(Components[N]).Style.Color := $00804000;
      end;

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := $00804000;
      end;

      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := True;
        TRzDBGrid(Components[N]).Color := $00804000;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := $00804000;
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
        TcxDBButtonEdit(Components[N]).Style.Color := $00804000;
      end;

      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := $00804000;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := True;
        TcxDBDateEdit(Components[N]).Style.Color := $00804000;
      end;

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := $00804000;
      end;

      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := False;
        TRzDBGrid(Components[N]).Color := $00804000;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := $00804000;
      end;
    end;
  end;

  if (PkinvRefno.Asstring <> '') then
  begin
//    Label10.Visible     := True;
    DBkbd1.AllowEditing := False;
    Pkinv.Cancel;
  end
  else
  begin
//    Label10.Visible := False;
    DBkbd1.AllowEditing := True;
  end;
  //
  FmDmic01.QDBConfig.Close;
  FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_PK').asstring = 'Y';
  DBEdit1.Enabled := (SFMain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  Pkdate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
end;

procedure TFPos.CancBtnClick(Sender: TObject);
begin
  Edit1.text := '';
  if Pkinv.State in Dseditmodes then
    Pkinv.Cancel;
end;

procedure TFPos.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFPos.ShowCust;
begin
  with Dm_Set1.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT CUSCOD,SNAM,NAME1,NAME2,GRPCUS,DISCT FROM CUSTMAST WHERE CUSCOD=:CUSCOD');
    PARAMS[0].ASSTRING := DBedit3.Text;
    Open;
    if not (Bof and Eof) then
    begin
      Cgroup := Dm_Set1.Query1.Fieldbyname('GRPCUS').Asstring;
      if (Pkinv.State in Dseditmodes) then
        PkinvCuscod.asstring := Dm_Set1.Query1.Fieldbyname('cuscod').Asstring;

      edit1.text := Dm_Set1.Query1.Fieldbyname('SNAM').Asstring + ' ' +
        Dm_Set1.Query1.Fieldbyname('NAME1').Asstring + ' ' +
        Dm_Set1.Query1.Fieldbyname('NAME2').Asstring;
    end;
  end;
end;

procedure TFPos.ShowGride;
begin
  {If DBCheckBox1.Checked Then
  Begin
    Dbgrid1.Columns[4].Title.Caption :='��ǹŴ�ҷ';
    Dbgrid1.Columns[4].Fieldname := 'DISCAMT';
    Dbgrid1.Columns[4].Width := 95;
  End
  Else
  Begin
    Dbgrid1.Columns[4].Title.Caption :='%��ǹŴ';
    Dbgrid1.Columns[4].Fieldname := 'REDU1';
    Dbgrid1.Columns[4].Width := 95;
  End;}

end;

procedure TFPos.FormShow(Sender: TObject);
begin
  with Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := XPKNO;
    OPEN;
    insert;
  end;
  with Pktran do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM PK_TRANS WHERE PKNO=:XPKNO');
    Params[0].AsString := XPKNO;
    OPEN;
  end;

  with Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVMAST WHERE KIND IS NOT NULL');
    Open;
  end;

  Query2.First;
  while not Query2.Eof do
  begin
    if Query2.FieldByName('KIND').AsString = '01' then
      cxImage1.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '02' then
      cxImage2.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '03' then
      cxImage3.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '04' then
      cxImage4.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '05' then
      cxImage5.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '06' then
      cxImage6.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '07' then
      cxImage7.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '08' then
      cxImage8.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '09' then
      cxImage9.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '10' then
      cxImage10.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '11' then
      cxImage11.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '12' then
      cxImage12.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '13' then
      cxImage13.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '14' then
      cxImage14.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '15' then
      cxImage15.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '16' then
      cxImage16.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '17' then
      cxImage17.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '18' then
      cxImage18.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '19' then
      cxImage19.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    if Query2.FieldByName('KIND').AsString = '20' then
      cxImage20.Picture.LoadFromFile(Query2.FieldbyName('PICTPATH').AsString);
    Query2.Next;
  end;
  InsBtnClick(Sender);
end;

procedure TFPos.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSP', 'HDSP02');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;

  XEditpric := 'N';
  XEditdisc := 'N';
  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Editpric,EditDisc FROM SECRET WHERE USERID =:XEdit');
    PARAMS[0].ASSTRING := SFMain.Xuser_id;
    OPEN;
    XEditpric := FmDmic01.Query1.Fieldbyname('Editpric').Asstring;
    XEditdisc := FmDmic01.Query1.Fieldbyname('EditDisc').Asstring;
  end;

  FmDmic01.CondPay.Close;
  FmDmic01.CondPay.Open;
  NAllow := FmDmic01.CondPay.Fieldbyname('NStkLob').Asstring; {���������ʵ�͡�Դź?}

  if FmDmic01.CondPay.Fieldbyname('Saltype').Asstring = '2' then
    FmDmic01.Flag_a := '2'
  else
    FmDmic01.Flag_a := '1';

  {If FmDmic01.CondPay.Fieldbyname('Disbath').Asstring='Y' Then
  Begin
    Dbgrid1.Columns[4].Title.Caption :='��ǹŴ�ҷ';
    Dbgrid1.Columns[4].Fieldname := 'DISCAMT';
    Dbgrid1.Columns[4].Width     := 95;
  End
  Else
  Begin
    Dbgrid1.Columns[4].Title.Caption :='%��ǹŴ';
    Dbgrid1.Columns[4].Fieldname := 'REDU1';
    Dbgrid1.Columns[4].Width := 95;
  End; }
end;

procedure TFPos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Pkinv.State in Dseditmodes then
    SFMain.RaiseException('��سҡ����� ¡��ԡ ��� �͡ �����鹵͹ ');

  Pkinv.Close;   {Dmic01 Close ��ǹ��������}
  FmDmic01.QDBConfig.Close;
  Pktran.Close;
  Action := Cafree;
  FPos := nil;
end;

procedure TFPos.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      DBEdit3.SetFocus;
    Vk_ESCAPE:
      CancBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
//  Vk_F2 : if SaveBtn.Visible Then SaveBtnClick(Sender);
      Vk_F5:
      InsBtnClick(Sender);
    VK_F3:
      CancBtnClick(Sender);
    Vk_F9:
      BillBtnClick(Sender);
    VK_F2:
      AdvGlowButton4Click(Sender);
  end;
end;

procedure TFPos.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('��辺����/�Ţ�����ҧ�ԧ');
  if Pkinv.Fieldbyname('REFNO').Asstring <> '' then
    SFMain.RaiseException('�͡��觢ͧ/㺡ӡѺ�������� #' + Pkinv.Fieldbyname('REFNO').Asstring);
  if Query1.FieldByName('RTNPK').AsString <> '' then
  begin
    SFMain.RaiseException('���͹حҵ�����䢢����� �����ա���Ѻ�׹��ԡ');
  end
  else
  begin
    case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
      mrOk:
        begin
          DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSP02', 'DELETE', Pkinv.FieldByName('PKNO').AsString);
          if DM_SEC.qrRecent.UpdatesPending then
            if (DM_SEC.qrRecent.ApplyUpdates = 0) then
              DM_SEC.qrRecent.CommitUpdates
            else
              raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
          Pkinv.delete;
        end;
    end;
  end;
end;

procedure TFPos.InsBtnClick(Sender: TObject);
begin
  with Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO ='''' ');
    if not Pkinv.Prepared then
      Pkinv.Prepare;
    OPEN;
    INSERT;
  end;
  with Pktran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO ='''' ');
    if not Pktran.Prepared then
      Pktran.Prepare;
    OPEN;
  end;
  Edit1.Text := '';
  CheckBox1.Checked := True;
  Edit1.Text := FmDmic01.Condpay.fieldbyname('taxaddr').AsString;
  cxButtonEdit1.SetFocus;
  cxButtonEdit1.Text := '';
end;

procedure TFPos.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    PkinvPKLOCAT.Asstring := fSrcDlg.Keyno;
end;

procedure TFPos.DBEdit1PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT LOCATNM FROM INVLOCAT WHERE LOCATCD =:0');
    PARAMS[0].ASSTRING := DBEdit1.TEXT;
    OPEN;
    EDIT3.TEXT := FmDmic01.Query2.FieldByname('LOCATNM').Asstring;
  end;
end;

procedure TFPos.DBEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Pkinv.State = DsBrowse then
    Exit;
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalCampn = Mrok then
  begin
    Pkinv.FieldByName('CAMPNO').Asstring := fSrcDlg.KeyNo;
  end;
end;

procedure TFPos.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    PkinvOFFICCOD.Asstring := fSrcDlg.Keyno;
end;

procedure TFPos.DBEdit7PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:EDIT');
    params[0].asstring := DBEdit7.Text;
    Open;
    Edit2.Text := Query1.Fieldbyname('NAME').asstring;
  end;
end;

procedure TFPos.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Pkinv.State = DsBrowse then
    Exit;

  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalCusmast = Mrok then
  begin
    DBEdit3.Text := fFindData.KeyNo;
    ShowCust;
  end;
end;

procedure TFPos.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalSaltype = Mrok then
    PkinvSaltype.Asstring := fSrcDlg.Keyno;
end;

procedure TFPos.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  LVPrice: string;
begin
  if Pkinv.Fieldbyname('SALLEV').Asstring = '' then
    SFMain.RaiseException('�ѧ���ѹ�֡�дѺ�ҤҢ��');

  if Datasource1.State in dsEditmodes then
  begin
    Application.Createform(TfSrcDlg, fSrcDlg);
    if fSrcDlg.ShowModalParts = Mrok then
    begin
      if Pktran.State = Dsbrowse then
        Pktran.Edit;
      with FmDmic01.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
        Params[0].Asstring := Pkinv.Fieldbyname('PKLOCAT').Asstring;
        Params[1].Asstring := fSrcDlg.KeyNo;
        Open;
        if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
          SFMain.RaiseException('��辺�����Թ���');
      end;
      if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (PkinvNETADD.AsFloat > 0) then
      begin
        PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat +
          (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat *
          (PkinvNETADD.AsFloat / 100));
      end
      else
      begin
        LVPrice := 'Price' + Pkinv.Fieldbyname('SALLEV').Asstring;
        PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
      end;
      PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
      PktranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
      PktranPARTDESC.Asstring := FmDmic01.Query1.Fieldbyname('DESC1').Asstring;
    end;
  end;
end;

procedure TFPos.DBGrid1ColExit(Sender: TObject);
{Var SmPric1,SmPric2,SmPric3,Pric1,Pric2,Pric3 : Double;
    XQtyBK,Redu : Double;
    Allo,Cost,LVPrice : string; }
begin
  {Xdate := PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_'+inttostr(XMonth);
  Cost := 'Cost_'+inttostr(XMonth);
  Label11.Caption :='';
 If PktranUpdatestatus.Value='Inserted' Then
 begin
   If Pktran.State=Dsbrowse Then Pktran.Edit;

   If PkinvCUSCOD.asstring='' Then
      SFMain.RaiseException('�ѧ���ѹ�֡�����١���');

  If (DbGrid1.SelectedField.FieldName) = 'PARTNO' Then
  begin
    If PktranPartno.asstring='' Then
    SFMain.RaiseException('�ѧ���ѹ�֡�����Թ���');

    With FmDmic01.Query1 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC' );
      PARAMS[0].ASSTRING := PktranPartno.asstring;
      PARAMS[1].ASSTRING := PkinvPKLOCAT.asstring;
      Open;
    end;

    If FmDmic01.Query1.Bof and FmDmic01.Query1.Eof Then
    Begin
      Application.CreateForm(TFsvmast,Fsvmast);
      With Fsvmast.Hquery1 Do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR  WHERE PARTNO LIKE :XPARTNO AND LOCAT=:XLOC ' );
        PARAMS[0].ASSTRING := PktranPartno.asstring+'%';
        PARAMS[1].ASSTRING := PkinvPKLOCAT.asstring;
        Open;
      end;
      If (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) Then
      begin
        Fsvmast.Close;
        SFMain.RaiseException('��辺�����Թ���');
      end
      Else
      begin
        If Fsvmast.Showmodal=mrok Then
        PktranPartno.asstring := Fsvmast.Hquery1.Fieldbyname('Partno').asstring;
        Fsvmast.Close;
      end;
    end;
    //
    With FmDmic01.Query1 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND '+
        'LOCAT = :Edit2');
      PARAMS[0].ASSTRING := PktranPartno.asstring;
      PARAMS[1].ASSTRING := PktranPklocat.asstring;
      Open;
      If Bof and Eof Then
      SFMain.RaiseException('��辺�����Թ���');
    end;
    If FmDmic01.Query1.Fieldbyname('GROUP1').Asstring='' Then
    SFMain.RaiseException('�ѧ���ѹ�֡������Թ��������Ң� '+PktranPklocat.asstring);

    //

    PktranGROUP1.Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
    PktranQTYORD.AsFloat  := 1;

    //
    PktranREDU1.AsFloat     := PkinvDisct.AsFloat;
    PktranCampno.Asstring   := PkinvCampno.Asstring;
    If PkinvCampno.Asstring<>'' Then
    Begin
      If PktranGROUP1.Asstring<>XGroup Then
      Begin
        PktranREDU1.AsFloat   :=0;
        PktranCampno.Asstring :='';
      End;
      If PktranCampno.Asstring<>'' Then
         PktranCamFlg.Asstring:='Y'
      Else
         PktranCamFlg.Asstring:='N';
    end;
    PktranTotPrc.AsFloat := FRound((PktranNetprc.AsFloat*PktranQTYOUT.AsFloat),2);

    //NextBtnClick(Sender);
  end;

  If (DbGrid1.SelectedField.FieldName) = 'QTYORD' Then
  Begin

    With FmDmic01.Query2 Do
    Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,LOCAT,YEAR1,'+cost+','+allo+' FROM INVANLS WHERE '+
      'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
      Params[0].Asstring := PktranPartno.asstring;
      Params[1].Asstring := PktranPkLocat.asstring;
      Params[2].Asstring := Inttostr(Xyear);
      Open;
    End;

    if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring='N') and (PkinvNETADD.AsFloat>0) then
    Begin
        PktranUPRICE.AsFloat  :=  FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat+
                                          (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat*
                                          (PkinvNETADD.AsFloat/100))  ;
    end else
    begin
       LvPrice := 'Price'+Pkinv.Fieldbyname('SALLEV').Asstring;
       PktranUPRICE.AsFloat  := FmDmic01.Query1.Fieldbyname(LvPrice).AsFloat;
    end;
    If CheckBox2.Checked Then
       PktranUPRICE.AsFloat    := FmDmic01.Query2.FieldByName(Cost).AsFloat;
       PktranNetFl.Asstring    := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;

       Label11.Caption :='�ʹ������� : '+Floattostr(FmDmic01.Query2.FieldByName(Allo).AsFloat);
     // Case �Թ�������
    If FmDmic01.Query2.FieldByName(Allo).AsFloat < PktranQTYORD.AsFloat Then
    Begin
       MessageBeep(0);
       If FmDmic01.Query2.FieldByName(Allo).AsFloat>0 then
         PktranQTYOUT.AsFloat := FmDmic01.Query2.FieldByName(Allo).AsFloat else
         PktranQTYOUT.AsFloat := PktranQTYORD.AsFloat;

         PktranAvgCost.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;

       //Case ������Թ��ҷ�᷹
     End
     ELSE
     // Case ���Թ��Ҿ�
     begin
       NmPart := '';
       PktranQTYOUT.AsFloat := PktranQTYORD.AsFloat;
       PktranAvgCost.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;
     end;
  End;

  If (DbGrid1.SelectedField.FieldName) = 'QTYOUT' Then
  begin
   If (NAllow='Y') AND (PktranQTYOUT.AsFloat>FmDmic01.Query2.FieldByName(Allo).AsFloat) Then
   begin
     DBGrid1.Setfocus;
     DBGrid1.SelectedIndex:=0;
     SFMain.RaiseException('��к� Setup ���͹حҵ���ʵ�͡�Դź');
   end;
   If PktranQTYOUT.AsFloat=0 Then
   If Messagedlg('��ͧ��� Back Order ������� ?',Mtconfirmation,[mbNO,mbOk],0)=MrOk Then
      PktranBACKFLG.Asstring :='Y'
   Else
   begin
     DBGrid1.Setfocus;
     DBGrid1.SelectedIndex:=0;
     SFMain.RaiseException('�ӹǹ������ 0');
   end;

  end;


  If Not DBCheckBox1.Checked Then
  Begin
    If (DbGrid1.SelectedField.FieldName='REDU1') Or
       (DbGrid1.SelectedField.FieldName='UPRICE')
       Then
    Begin
       if (PktranUprice.AsFloat = 0) then
       begin
         DBGrid1.Setfocus;
         DBGrid1.SelectedIndex:=0;
         SFMain.RaiseException('�ҤҢ���� 0 ��Ǩ�ͺ�ա����');
       end;
      // ��Ǩ�ͺ���Ŵ��� Maxdisc
       Redu :=PktranRedu1.Asfloat+PktranRedu2.Asfloat+
           PktranRedu3.Asfloat;
       If (Redu>FmDmic01.Query1.FieldByName('Maxdisc').Asfloat) and
          (FmDmic01.Query1.FieldByName('Maxdisc').Asfloat>0) Then
       Begin
         MessageBeep(0);
         MessageDlg('Ŵ�Թ�ѵ�� Maximum Discount  '#13+
         '�к��л�Ѻ�����ǹŴ������ Set ���',Mtinformation,[mbok],0);
         PktranRedu1.Asfloat :=FmDmic01.Query1.FieldByName('Maxdisc').Asfloat;
         PktranRedu2.Asfloat :=0;
         PktranRedu3.Asfloat :=0;
       end;
       //
       if (PktranUprice.AsFloat < FmDmic01.Query2.FieldByName(Cost).AsFloat) and
          (UpperCase(PktranFree.Asstring) <> 'Y')  AND
          (FmDmic01.Query1.FieldByName('CHARGFLG').Asstring<>'Y') Then
          Begin
            MessageBeep(0);
            Messagedlg('��͹ : �ҤҢ�µ�ӡ��ҵ鹷ع',mtwarning,[mbok],0);
          End;
       Pric1    := FRound((PktranUPrice.Asfloat*(PktranRedu1.Asfloat/100)),2);
       SmPric1  := PktranUPrice.Asfloat-Pric1;
       Pric2    := FRound(SmPric1*(Pktranredu2.Asfloat/100),2);
       SmPric2  := SmPric1-Pric2;
       Pric3    := FRound(SmPric2*(Pktranredu3.Asfloat/100),2);
       SmPric3  := SmPric2-Pric3;
       PktranNetprc.AsFloat := SmPric3;
       If UpperCase(PktranFree.Asstring) = 'Y' Then
       PktranNetprc.AsFloat := 0;

       PktranTotPrc.AsFloat := FRound((PktranNetprc.AsFloat*PktranQTYOUT.AsFloat),2);
    End;
  End
  Else
  If (DbGrid1.SelectedField.FieldName='DISCAMT') Then
  Begin
    PktranNetprc.AsFloat:= PktranUPrice.Asfloat-
                        PktranDiscamt.AsFloat;

    If UpperCase(PktranFree.Asstring) = 'Y' Then
    PktranNetprc.AsFloat := 0;

    PktranTotPrc.AsFloat := FRound((PktranNetprc.AsFloat*PktranQTYOUT.AsFloat),2);
  End;
 end
 Else
 begin
   DBGrid1.Setfocus;
   DBGrid1.SelectedIndex:=0;
   SFMain.RaiseException('�ҡ��ͧ���������ź��¡�� ���Ǻѹ�֡����');
 end;}
end;

procedure TFPos.NextBtnClick(Sender: TObject);
begin
  Pktran.Append;
end;

procedure TFPos.DeleBtnClick(Sender: TObject);
begin
  if Pktran.RecordCount = 0 then
    sfmain.RaiseException('��辺������..!');
  Pktran.delete;
end;

procedure TFPos.PkDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Pkinv.fieldbyname('PKDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Pkinv.fieldbyname('PKDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Pkinv.fieldbyname('PKDATE').AsDateTime := Pkinv.fieldbyname('PKDATE').AsDateTime;
  end;
end;

procedure TFPos.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TFPos.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
 { if UpperCase(ParName) = 'PINVNO' then
     ParValue := cxDBTextEdit1.Text; }
  if UpperCase(VarName) = 'PRECVNO' then
    Value := DBEdit2.Text;
  if UpperCase(VarName) = 'PUSER' then
    Value := SFMain.Xuser_ID;
end;

procedure TFPos.BillBtnClick(Sender: TObject);
begin

  if DBEdit2.Text = '' then
  begin
    sfmain.RaiseException('��辺�Ţ�����ҧ�ԧ..!');
  end
  else
  begin
    with query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT SUM(QTYORD) SMQTY FROM PK_TRANS WHERE PKNO =:EDIT1');
      params[0].AsString := DBEdit2.Text;
      open;
    end;

    nQty := query1.fieldbyname('SMQTY').AsInteger;

    Application.CreateForm(TFPaymntPos_01, FPaymntPos_01);
    FPaymntPos_01.ShowModal;
  end;
end;

procedure TFPos.DBEdit3Exit(Sender: TObject);
begin
  cxButtonEdit1.SetFocus;
end;

procedure TFPos.PkinvAfterCancel(DataSet: TDataSet);
begin
  if Pkinv.Active then
    Pkinv.CancelUpdates;
  if Pktran.Active then
    Pktran.CancelUpdates;
  if FmDmic01.QLastno.Active then
    FmDmic01.QLastno.CancelUpdates;
end;

procedure TFPos.PkinvAfterPost(DataSet: TDataSet);
var
  S, Flg: string;
begin
  S := PkinvPKNO.Asstring;
  Flg := PkinvFlag.Asstring;
  if not DM_SEC.HI_DBMS.InTransaction then
    DM_SEC.HI_DBMS.StartTransaction;
  try
    if Pkinv.Active then
      if (Pkinv.ApplyUpdates = 0) then
        Pkinv.CommitUpdates
      else
        raise Exception.Create(Pkinv.RowError.Message);
    if Pktran.Active then
      if (Pktran.ApplyUpdates = 0) then
        Pktran.CommitUpdates
      else
        raise Exception.Create(Pktran.RowError.Message);
    if FmDmic01.QLastno.Active then
      if (FmDmic01.QLastno.ApplyUpdates = 0) then
        FmDmic01.QLastno.CommitUpdates
      else
        raise Exception.Create(FmDmic01.QLastno.RowError.Message);

    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.RollBack;
    Pkinv.Edit;
    raise;
  end;
  //
  with Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := S;
    if not Pkinv.Prepared then
      Pkinv.Prepare;
    OPEN;
  end;

  with Pktran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := S;
    if not Pktran.Prepared then
      Pktran.Prepare;
    OPEN;
  end;
end;

procedure TFPos.PkinvBeforeClose(DataSet: TDataSet);
begin
  if Pktran.Active then
    Pktran.Close;
  if FmDmic01.QLastno.Active then
    FmDmic01.QLastno.Close;
end;

procedure TFPos.PkinvBeforeDelete(DataSet: TDataSet);
var
  Xflag: string;
begin
  if SFMain.Xlevel > '1' then
    if not (SFMain.Del_right) then
      sfmain.raiseException('������Է���㹡��ź������');

  //***** Delete Pktran*****
  Pktran.AfterDelete := Nil;
  Pktran.first;
  while not Pktran.Eof do
    Pktran.delete;
end;

procedure TFPos.PkinvBeforePost(DataSet: TDataSet);
var
  Xpart, XVat, Xcost, Xqty: Double;
  Xflag: string;
begin
  if Checkcrdt = 'Y' then
  begin
    if PkinvJOBNO.Asstring <> '' then
    begin
      with Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT Sum(NETTOTAL) As Sum1 FROM PK_INVOI WHERE JOBNO=:0');
        Params[0].Asstring := PkinvJOBNO.Asstring;
        Open;
      end;
    end;
     { With Query2 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT MAXCRED FROM CUSTMAST WHERE CUSCOD=:0');
        Params[0].Asstring := PkinvCUSCOD.Asstring;
        Open;
        If Bof and Eof Then
        sfmain.raiseException('�����١��ҼԴ��Ҵ');
      end;}

      {If Query1.FieldByName('Sum1').Asfloat>Query2.FieldByName('MAXCRED').Asfloat Then
      Begin
        sfmain.AdvSmoothMessageDialog2.Caption := '��سҵ�Ǩ�ͺ������';
        sfmain.AdvSmoothMessageDialog2.HTMLText.Text := '��͹ : �ӹǹ�Թ�Թǧ�Թ����ôԵ ��ͧ��÷ӵ�� ?';
        if sfmain.AdvSmoothMessageDialog2.ExecuteDialog = mrCancel then Abort;
      end;}
    {end
    Else
    If PkinvNETTOTAL.Asfloat>Query2.FieldByName('MAXCRED').Asfloat Then
    Begin
      sfmain.AdvSmoothMessageDialog2.Caption := '��سҵ�Ǩ�ͺ������';
      sfmain.AdvSmoothMessageDialog2.HTMLText.Text := '��͹ : �ӹǹ�Թ�Թǧ�Թ����ôԵ ��ͧ��÷ӵ�� ?';
      if sfmain.AdvSmoothMessageDialog2.ExecuteDialog = mrCancel then Abort;
    end;}
  end;

  PkTran.Last;
  if (PkTranPARTNO.Asstring = '') or ((PkTranQtyout.Asfloat = 0) and (Uppercase(PkTranBackflg.Asstring) <> 'Y')) then
    PkTran.Delete;

  if PkinvUpdateStatus.Value = 'Inserted' then
  begin
    //Rerun
   { If Duplicate Then
    Begin }
    PkinvPKDATEValidate(PkinvPKDATE);
      //
    PkTran.DisableControls;
    PkTran.AfterPost := Nil;
    PkTran.First;
    while not Pktran.Eof do
    begin
      if (PkinvUSERID.AsString = PkTranUSERID.AsString) then
      begin
        Pktran.Edit;
        if PkTranPARTNO.Asstring = '' then
          PkTran.Delete;

        PktranPKno.Asstring := PkinvPKNO.Asstring;
        PkTranPKDATE.AsDateTime := PkinvPKDATE.AsDateTime;
        PkTranCUSCOD.Asstring := PkinvCUSCOD.AsString;
        PkinvPKLOCAT.Asstring := PkinvPKLOCAT.AsString;
      end;
      PkTran.Next;
    end;
    PkTran.AfterPost := PkTranAfterPost;
    PkTran.EnableControls;
    Xflag := PkinvFlag.Asstring;
  //  End;
  end;
end;

procedure TFPos.PkinvCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
      'Inserted', 'Deleted');
begin
  if Pkinv.CachedUpdates then
    PkinvUpdateStatus.Value := UpdateStatusStr[Pkinv.UpdateStatus];
end;

procedure TFPos.PkinvNewRecord(DataSet: TDataSet);
begin
  Duplicate := False;
  ClearAsFloat(Pkinv);
  if not (FmDmic01.CondPay.Active) then
    FmDmic01.CondPay.Open;

  PkinvVatrt.AsFloat := 7; // FmDmic01.Condpay.Fieldbyname('VatRt').Asfloat;
  PkinvFlag.asstring := FmDmic01.Flag_A; // 3 ��������ٹ��
  PkinvPKLOCAT.AsString := SFMain.XLocat;
  PkinvPKDATE.AsDateTime := SFMain.XCurDtFrmDB;
  PkinvUSERID.AsString := SFMain.XUser_ID;
  Pkinvtime1.AsDateTime := SFMain.XCurDtstFrmDB;
  PkinvStat.AsString := 'A';
  PkinvOfficcod.AsString := SFMain.XOffCod;
  PkinvSALTYPE.AsString := 'N';
  PkinvSVCOLOR.AsString := 'O';
  //PkinvXFLAG.AsString   := '1';
  PkinvCUSCOD.AsString := FmDmic01.Condpay.fieldbyname('TAXNAME').AsString;

  if FmDmic01.Condpay.Fieldbyname('Vattype').Asstring <> '' then
    PkinvVATTYPE.Asstring := FmDmic01.Condpay.Fieldbyname('Vattype').Asstring
  else
    PkinvVATTYPE.Asstring := '1';

  if FmDmic01.Condpay.Fieldbyname('Disbath').Asstring <> '' then
    PkinvDISBATH.asstring := FmDmic01.Condpay.Fieldbyname('Disbath').Asstring
  else
    PkinvDISBATH.asstring := 'N';

  if FmDmic01.Condpay.Fieldbyname('Disctyp').Asstring <> '' then
    PkinvDisctyp.Asstring := FmDmic01.Condpay.Fieldbyname('Disctyp').Asstring
  else
    PkinvDisctyp.Asstring := '1';
end;

procedure TFPos.PkTranAfterPost(DataSet: TDataSet);
var
  XNetAmt, NetAmt, Totprc2, Smnettot, sprc, nprc: double;
  SNetAmt: string;
  bk: Tbookmark;
begin
  Pktran.DisableControls;
  Smnettot := 0;
  Totprc2 := 0;
  CountFound := 0;
  bk := Pktran.GetBookmark;

  Pktran.first;
  while not Pktran.Eof do
  begin
    sprc := PkTranUprice.AsFloat * PkTranQTYOUT.AsFloat;
    Totprc2 := Totprc2 + Rounder(sprc, 2);
    Smnettot := Smnettot + PktranTotPrc.AsFloat;

    if Tmppart = PkTranPARTNO.Asstring then
      CountFound := CountFound + 1;

    if CountFound > 1 then
      DoupPart := PkTranPARTNO.Asstring;

    Pktran.Next;
  end;
  if Pkinv.state = Dsbrowse then
    Pkinv.edit;
  PkinvTotprc.AsFloat := Totprc2;
  PkinvDISCAMT.AsFloat := Totprc2 - Smnettot + PkinvEXDISAMT.Asfloat;
  PkinvBALANCE.AsFloat := Smnettot - PkinvEXDISAMT.Asfloat;

  if PkinvVATTYPE.Asstring = '1' then
  begin
    PkinvNettotal.AsFloat := PkinvBALANCE.AsFloat;
//      XNETAMT := FRound((PkinvBALANCE.AsFloat*100)/(100+PkinvVatrt.AsFloat),2);
    nprc := (PkinvBALANCE.AsFloat * PkinvVatrt.AsFloat) / (100 + PkinvVatrt.AsFloat);
    XNetAmt := Rounder(nprc, 2);
      //SNETAMT := floattostrf(XNETAMT,ffFixed,12,2);
      //NETAMT  := strtofloat(SNETAMT);
    PkinvVatAmt.AsFloat := XNetAmt;
    PkinvNETAMT.AsFloat := PkinvBALANCE.AsFloat - XNetAmt; //PkinvNETAMT.AsFloat;
  end
  else if PkinvVATTYPE.Asstring = '2' then
  begin
    PkinvNETAMT.AsFloat := PkinvBALANCE.AsFloat;
      //SNETAMT := floattostrf(FRound(PkinvNETAMT.AsFloat * (PkinvVatrt.AsFloat/100)),2),ffFixed,12,2);
    nprc := PkinvNETAMT.AsFloat * PkinvVatrt.AsFloat / 100;
    PkinvVatAmt.AsFloat := Rounder(nprc, 2);
    PkinvNettotal.AsFloat := PkinvNETAMT.AsFloat + PkinvVatAmt.AsFloat;
  end;
  Pktran.EnableControls;
  Pktran.GotoBookMark(bk);
  Pktran.FreeBookmark(bk);
end;

procedure TFPos.PkTranAfterOpen(DataSet: TDataSet);
begin
  FmDmic01.Qinvmst2.Open;
end;

procedure TFPos.PkTranBeforeClose(DataSet: TDataSet);
begin
  FmDmic01.Qinvmst2.Close;
end;

procedure TFPos.PkTranBeforeDelete(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag: string;
  Xord, Xqty, Xcost, AvCost: Double;
begin
  if PkinvREFNO.Asstring <> '' then
    sfmain.raiseException('�͡㺡ӡѺ����');

  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT PKNO,PARTNO,RTNPK,FLAG FROM PK_TRANS ' +
      'WHERE PARTNO=:EDIT1 AND RTNPK=:EDIT2');
    params[0].asstring := PkTranPARTNO.Asstring;
    params[1].asstring := PkTranPKNO.Asstring;
    Open;
    if not (Bof and Eof) and (Query1.Fieldbyname('Flag').Asstring = 'S') then
      sfmain.raiseException('����¡���Ѻ�׹�ҡ�ٹ�� �Ţ����Ѻ�׹' + Query1.Fieldbyname('PKNO').Asstring + #13#13 + '�������öź��¡�ù�� ');
  end;

  XDate := PkinvPKDATE.AsdateTime;
  Xord := PktranQTYORD.AsFloat;
  Xqty := PktranQTYOUT.AsFloat;
  Xpart := PktranPartno.Asstring;
  Xlocat := PktranPkLocat.Asstring;
  Xflag := PktranFlag.Asstring;
  Xcost := PktranAvgcost.AsFloat;

  if (Xflag = '1') or (Xflag = '2') or (Xflag = '3') or (Xflag = 'B') then
  begin
    FmDmic01.UpdDemn(Xord, Xqty, Xpart, Xlocat, '-', XDATE);
  end;

  if (Xflag = 'R') or (Xflag = 'S') then
  begin
    FmDmic01.UpdDemn(Xord, Xqty, Xpart, Xlocat, '+', XDATE);
  end;
end;

procedure TFPos.PkTranBeforePost(DataSet: TDataSet);
var
  Xpart, Xlocat, Xflag, AvCost: string;
  Xord, Xqty, Xcost: Double;
begin
  Tmppart := FmDmic01.PktranPartno.Asstring;
  if (PkTranQTYORD.Asfloat = 0) and (PkTranQTYOUT.Asfloat = 0) then
    sfmain.RaiseException('�ӹǹ���ٹ��..!');

  if PktranPartno.Asstring = '' then
    sfmain.raiseException('�ѧ���ѹ�֡�����Թ���');

  if FmDmic01.PktranQTYORD.AsFloat < FmDmic01.PkTranQTYOUT.AsFloat then
    sfmain.raiseException('�ӹǹ����Ѻ�ҡ���Ҩӹǹ������');

  XDate := PkinvPKDATE.AsdateTime;
  Xord := PktranQTYORD.AsFloat;
  Xqty := PktranQTYOUT.AsFloat;
  Xpart := PktranPartno.Asstring;
  Xlocat := PktranPkLocat.Asstring;
  Xflag := PktranFlag.Asstring;

  if PktranUpdateStatus.Value = 'Inserted' then
  begin
    if (Xflag = '1') or (Xflag = '2') or (Xflag = '3') then
    begin
       //UpdStock(XQty,Xcost,XPART,XLOCAT,'2','-',XDATE);
      FmDmic01.Upddemn(Xord, Xqty, Xpart, Xlocat, '+', XDATE);
    end;
    if (Xflag = 'R') or (Xflag = 'S') then
    begin
       //UpdStock(XQty,Xcost,XPART,XLOCAT,'2','+',XDATE);
      FmDmic01.Upddemn(Xord, Xqty, Xpart, Xlocat, '-', XDATE);
    end;
     //
    if (Xflag = 'S') then
    begin
      PktranRTNPK.Asstring := PkinvRTNPK.Asstring;
    end;
  end;
end;

procedure TFPos.PkTranCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
        'Inserted', 'Deleted');
begin
  if PkTran.CachedUpdates then
    PkTranUpdateStatus.Value := UpdateStatusStr[PkTran.UpdateStatus];
end;

procedure TFPos.PkTranNewRecord(DataSet: TDataSet);
begin
  ClearAsFloat(Pktran);

  XDate := PkinvPKDATE.AsDatetime;
  DecodeDate(XDate, XYear, XMonth, XDay);

  PkTranPkno.Asstring := PkinvPkno.Asstring;
  PkTranPklocat.asstring := PkinvPklocat.Asstring;
  PkTranPkdate.AsDatetime := PkinvPkdate.AsDatetime;
  PkTranFree.Asstring := 'N';
  PkTranFlag.AsString := PkinvFlag.AsString;
  PkTranUserId.AsString := PkinvUserId.Asstring;
  PkTranTime1.AsDateTime := Now;
  PkTranQTYORD.AsFloat := 0;
  PktranYear1.Asstring := FloatTostr(Xyear);
  PkTranJOBNO.Asstring := PkinvJOBNO.Asstring;
  PKtranSvColor.AsString := PkinvSVCOLOR.AsString;
  PKtranCuscod.AsString := Pkinvcuscod.AsString;

  if PkinvFLAG.Asstring = 'R' then
  begin
    PKtran.FieldByName('REFNO').Asstring := PkinvREFNO.Asstring;
    PKtran.FieldByName('RTNPK').Asstring := PkinvRTNPK.Asstring;
    PKtran.FieldByName('REFDAT').Asdatetime := PkinvREFDAT.AsDateTime;
  end;
end;

procedure TFPos.PkinvOFFICCODValidate(Sender: TField);
begin
  sfmain.Findnoexist('OFFICER', 'CODE', PkinvOFFICCOD.AsString);
end;

procedure TFPos.PkinvPKDATEValidate(Sender: TField);
var
  HF, LF, LV, SQLTXT: string;
  DV: TdateTime;
begin
  if PkinvFLAG.Asstring = '3' then
  begin
    HF := 'H_PKSV';
    LF := 'L_PKSV';
  end
  else if PkinvFLAG.Asstring = 'S' then
  begin
    HF := 'H_RTSV';
    LF := 'L_RTSV';

    FormatSettings.ShortDateFormat := 'yyyy/mm/dd';
    if datetostr(PKinv.Fieldbyname('Pkdate').asDatetime) < datetostr(Now) then
    begin
      FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
      sfmain.raiseException('�����Ѻ�׹�Թ��� ��͹�ѹ�Ѩ�غѹ �С�з��鹷ع�����');
    end;
    FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  end
  else if PkinvFLAG.Asstring = 'R' then
  begin
    HF := 'H_RTPT';
    LF := 'L_RTPT';

    FormatSettings.ShortDateFormat := 'yyyy/mm/dd';
    if datetostr(PKinv.Fieldbyname('Pkdate').asDatetime) < datetostr(Now) then
    begin
      FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
      sfmain.raiseException('�����Ѻ�׹�Թ��� ��͹�ѹ�Ѩ�غѹ �С�з��鹷ع�����');
    end;
    FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  end
  else
  begin
    HF := 'H_PK';
    LF := 'L_PK';
  end;

  if not FmDmic01.QDBConfig.Active then
    FmDmic01.QDBConfig.Open;
  if FmDmic01.QDBConfig.Fieldbyname(HF).asstring = 'Y' then
  begin
    LV := PKinv.Fieldbyname('PkLocat').asstring;
    DV := PKinv.Fieldbyname('Pkdate').asDatetime;
    if PkinvUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(PKNO) AS MAXNO FROM PK_INVOI WHERE PKLOCAT=:EDIT1 AND ' +
        'SUBSTR(PKNO,2,2)=:EDIT2 AND SUBSTR(PKNO,5,2)=:EDIT3 AND SUBSTR(PKNO,7,2)=:EDIT4 ';
     // If Duplicate Then
      PkinvPKNO.Asstring := FmDmic01.Maxno(HF, LF, LV, SQLTXT, DV);
    //  Else
     //   PkinvPKNO.Asstring := FmDmic01.RunNo01(HF,LF,LV,DV);
    end;
  end;
end;

procedure TFPos.PkinvDISCTValidate(Sender: TField);
var
  Pric1, SmPric1: Double;
begin
  if (Pkinv.State in Dseditmodes) and (PkTran.Active) then
  begin
    PkTran.DisableControls;
    PKTran.first;
    while not PkTran.Eof do
    begin
      PkTran.Edit;
      if FmDmic01.PKtranNETFL.Asstring = 'N' then
        FmDmic01.PkTranREDU1.AsFloat := 0
      else
        PkTranREDU1.Asfloat := PkinvDISCT.Asfloat;
      Pric1 := FRound(PkTranUPRICE.Asfloat * (PkTranREDU1.Asfloat / 100), 2);
      SmPric1 := PkTranUPRICE.Asfloat - Pric1;
      PkTranNETPRC.AsFloat := SmPric1;
      PkTranTOTPRC.AsFloat := FRound((PKTranNETPRC.AsFloat * PKTranQTYORD.AsFloat), 2);
      PkTran.Next;
    end;
    PkTran.EnableControls;

    PkTranAfterPost(PkTran);
  end;
end;

procedure TFPos.PkinvJOBNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XJOB ');
    Params[0].Asstring := Pkinv.FieldByName('JOBNO').Asstring;
    Open;
    if Query1.Bof and Query1.eof then
      sfmain.raiseException('����բ����� ');
  end;
  if Query1.Fieldbyname('Status').Asstring <> 'W' then
    sfmain.raiseException('�Դ Job ����');
end;

procedure TFPos.PkinvCUSCODValidate(Sender: TField);
begin
  with FmDmic01.QValid do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CUSTMAST WHERE CUSCOD =:XEdit');
    PARAMS[0].ASSTRING := PkinvCUSCOD.asstring;
    Open;
    if FmDmic01.QValid.Bof and FmDmic01.QValid.Eof then
      sfmain.raiseException('��辺�����١��ҹ��');
  end;
  PkinvSallev.asstring := FmDmic01.QValid.Fieldbyname('Sallev').Asstring;
  CheckCrdt := 'Y';

  with FmDmic01.QValid do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM CUSTOMVIP WHERE CUSCOD=:0 AND EXPIREDT > :1');
    PARAMS[0].ASSTRING := FmDmic01.PkinvCUSCOD.asstring;
    Params[1].AsDate := Date;
    Open;
  end;
  PkinvDisct.AsFloat := FmDmic01.QValid.Fieldbyname('PTDISCT').AsFloat;
end;

procedure TFPos.PkinvPKLOCATValidate(Sender: TField);
begin
  if PkinvPKDATE.Asstring <> '' then
    PkinvPKDATEValidate(Sender);
end;

procedure TFPos.PkinvRTNPKValidate(Sender: TField);
begin
  if ((PkinvFLAG.Asstring = 'S') or (PkinvFLAG.Asstring = 'R')) and (PkinvRTNPK.Asstring <> '') then
  begin
    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM PK_INVOI WHERE PKNO = :XPKNO');
      Params[0].Asstring := PkinvRTNPK.Asstring;
      Open;
      if Bof and Eof then
        sfmain.raiseException('��辺㺨���㺹��');
    end;
    if Pkinv.FieldByName('Pklocat').Asstring <> FmDmic01.Query2.FieldByName('Pklocat').Asstring then
      sfmain.raiseException('�����Ңҷ���Ѻ�׹���ç�Ѻ��ԡ');
    if FmDmic01.Query2.FieldByName('REFNO').Asstring <> '' then
      sfmain.raiseException('�͡㺡ӡѺ�������� �����Ŵ˹��᷹');

    Pkinv.FieldByName('CUSCOD').Asstring := FmDmic01.Query2.FieldByName('CUSCOD').Asstring;
    Pkinv.FieldByName('VATTYPE').Asstring := FmDmic01.Query2.FieldByName('VATTYPE').Asstring;
    Pkinv.FieldByName('SALLEV').Asstring := FmDmic01.Query2.FieldByName('SALLEV').Asstring;
    Pkinv.FieldByName('DISCT').AsFloat := FmDmic01.Query2.FieldByName('DISCT').AsFloat;

    if PkinvFLAG.Asstring = 'S' then
    begin
      Pkinv.FieldByName('JOBNO').Asstring := FmDmic01.Query2.FieldByName('JOBNO').Asstring;
      Pkinv.FieldByName('SVCOLOR').Asstring := FmDmic01.Query2.FieldByName('SVCOLOR').Asstring;
    end;
  end;
end;

procedure TFPos.PkinvUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TFPos.PkinvEXDISAMTValidate(Sender: TField);
begin
  if PkTran.Active then
    PkTranAfterPost(PkTran);
end;

procedure TFPos.PkTranPARTNOChange(Sender: TField);
begin
  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
    PARAMS[0].ASSTRING := PkTranPartno.asstring;
    PARAMS[1].ASSTRING := PkinvPKLOCAT.asstring;
    Open;
    PkTranPARTDESC.AsString := FmDmic01.Query1.fieldbyname('DESC1').AsString;
  end;
end;

procedure TFPos.PkTranPARTNOValidate(Sender: TField);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  XQtyBK, Redu: Double;
  Allo, Cost, LVPrice: string;
begin
  Xdate := PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);
  Label11.Caption := '';

  if PktranUpdatestatus.Value = 'Inserted' then
  begin
    if Pktran.State = Dsbrowse then
      Pktran.Edit;

    if PkinvCUSCOD.asstring = '' then
      SFMain.RaiseException('�ѧ���ѹ�֡�����١���');

    if PktranPartno.asstring = '' then
      SFMain.RaiseException('�ѧ���ѹ�֡�����Թ���');

    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
      PARAMS[0].ASSTRING := PktranPartno.asstring;
      PARAMS[1].ASSTRING := PkinvPKLOCAT.asstring;
      Open;
    end;

    //
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
        'LOCAT = :Edit2');
      PARAMS[0].ASSTRING := PktranPartno.asstring;
      PARAMS[1].ASSTRING := PktranPklocat.asstring;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('��辺�����Թ���');
    end;
    if FmDmic01.Query1.Fieldbyname('GROUP1').Asstring = '' then
      SFMain.RaiseException('�ѧ���ѹ�֡������Թ��������Ң� ' + PktranPklocat.asstring);

    //

    if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (PkinvNETADD.AsFloat > 0) then
    begin
      PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat +
        (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat *
        (PkinvNETADD.AsFloat / 100));
    end
    else
    begin
      LVPrice := 'Price' + Pkinv.Fieldbyname('SALLEV').Asstring;
      PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
    end;

    PktranGROUP1.Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
    PktranQTYORD.AsFloat := 1;

    //
    PktranREDU1.AsFloat := PkinvDisct.AsFloat;
    PktranCampno.Asstring := PkinvCampno.Asstring;
    if PkinvCampno.Asstring <> '' then
    begin
      if PktranGROUP1.Asstring <> XGroup then
      begin
        PktranREDU1.AsFloat := 0;
        PktranCampno.Asstring := '';
      end;
      if PktranCampno.Asstring <> '' then
        PktranCamFlg.Asstring := 'Y'
      else
        PktranCamFlg.Asstring := 'N';
    end;
    Pric1 := FRound(PkTranUPRICE.Asfloat * (PkTranREDU1.Asfloat / 100), 2);
    SmPric1 := PkTranUPRICE.Asfloat - Pric1;
    PkTranNETPRC.AsFloat := SmPric1;
    PktranTotPrc.AsFloat := FRound((PktranNetprc.AsFloat * PktranQTYORD.AsFloat), 2);
  end;
end;

procedure TFPos.PkTranQTYORDValidate(Sender: TField);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  XQtyBK, Redu: Double;
  Allo, Cost, LVPrice: string;
begin
  Xdate := PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);
  Label11.Caption := '';

  if PktranUpdatestatus.Value = 'Inserted' then
  begin
    if Pktran.State = Dsbrowse then
      Pktran.Edit;
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
      PARAMS[0].ASSTRING := PktranPartno.asstring;
      PARAMS[1].ASSTRING := PkinvPKLOCAT.asstring;
      Open;
    end;

    //
    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Cost + ',' + Allo + ' FROM INVANLS WHERE ' +
        'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
      Params[0].Asstring := PktranPartno.asstring;
      Params[1].Asstring := PktranPkLocat.asstring;
      Params[2].Asstring := Inttostr(Xyear);
      Open;
    end;

    if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (PkinvNETADD.AsFloat > 0) then
    begin
      PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat +
        (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat *
        (PkinvNETADD.AsFloat / 100));
    end
    else
    begin
      LVPrice := 'Price' + Pkinv.Fieldbyname('SALLEV').Asstring;
      PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
    end;
    if CheckBox2.Checked then
      PktranUPRICE.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;
    PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;

    Label11.Caption := '�ʹ������� : ' + Floattostr(FmDmic01.Query2.FieldByName(Allo).AsFloat);
     // Case �Թ�������
    PktranQTYOUT.AsFloat := PktranQTYORD.AsFloat;
    PktranAvgCost.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;
    Pric1 := FRound(PkTranUPRICE.Asfloat * (PkTranREDU1.Asfloat / 100), 2);
    SmPric1 := PkTranUPRICE.Asfloat - Pric1;
    PkTranNETPRC.AsFloat := SmPric1;
    PkTranTOTPRC.AsFloat := FRound((PKTranNETPRC.AsFloat * PKTranQTYORD.AsFloat), 2);

    PktranTotPrc.AsFloat := FRound((PktranNetprc.AsFloat * PktranQTYORD.AsFloat), 2);
  end;
end;

procedure TFPos.PkTranQTYOUTValidate(Sender: TField);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  XQtyBK, Redu: Double;
  Allo, Cost, LVPrice: string;
begin
  Xdate := PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);
  Label11.Caption := '';

  if PktranUpdatestatus.Value = 'Inserted' then
  begin
    if Pktran.State = Dsbrowse then
      Pktran.Edit;
    with FmDmic01.Query1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
      PARAMS[0].ASSTRING := PktranPartno.asstring;
      PARAMS[1].ASSTRING := PkinvPKLOCAT.asstring;
      Open;
    end;

    //
    with FmDmic01.Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Cost + ',' + Allo + ' FROM INVANLS WHERE ' +
        'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
      Params[0].Asstring := PktranPartno.asstring;
      Params[1].Asstring := PktranPkLocat.asstring;
      Params[2].Asstring := Inttostr(Xyear);
      Open;
    end;
    Pric1 := FRound(PkTranUPRICE.Asfloat * (PkTranREDU1.Asfloat / 100), 2);
    SmPric1 := PkTranUPRICE.Asfloat - Pric1;
    PkTranNETPRC.AsFloat := SmPric1;

  { If (NAllow='Y') AND (PktranQTYOUT.AsFloat>FmDmic01.Query2.FieldByName(Allo).AsFloat) Then
   begin
     Pktran.Delete;
     SFMain.RaiseException('��к� Setup ���͹حҵ���ʵ�͡�Դź');
   end; }

    PktranTotPrc.AsFloat := FRound((PktranNetprc.AsFloat * PktranQTYORD.AsFloat), 2);
  end;
end;

procedure TFPos.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
//Var LvPrice : String;
begin
  {If Pkinv.Fieldbyname('SALLEV').Asstring='' Then
     SFMain.RaiseException('�ѧ���ѹ�֡�дѺ�ҤҢ��');

  if Datasource1.State in dsEditmodes then
  begin
    Application.Createform(TfSrcDlg,fSrcDlg);
    If fSrcDlg.ShowModalParts=Mrok Then
    begin
      If Pktran.State=Dsbrowse Then Pktran.Edit;
      with FmDmic01.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
        Params[0].Asstring := Pkinv.Fieldbyname('PKLOCAT').Asstring;
        Params[1].Asstring := fSrcDlg.KeyNo;
        Open;
      end;

      cxButtonEdit1.Text := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
      cxTextEdit1.Text   := FmDmic01.Query1.Fieldbyname('DESC1').Asstring;

      if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring='N') and (PkinvNETADD.AsFloat>0) then
      Begin
        nUprice :=  FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat+
                                            (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat*
                                            (PkinvNETADD.AsFloat/100))  ;
      end else
      begin
         LvPrice  := 'Price'+Pkinv.Fieldbyname('SALLEV').Asstring;
         nUprice  := FmDmic01.Query1.Fieldbyname(LvPrice).AsFloat;
      end;
      nNetFL  := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
    end;
  end;}
end;

procedure TFPos.cxButtonEdit1PropertiesChange(Sender: TObject);
var
  LVPrice, Allo, Cost, Price: string;
  nBal, nRedu, nTot: Double;
begin
  Xdate := PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);

  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *  FROM INVENTOR WHERE (BARCODE =:XBARCODE) AND LOCAT=:XLOC');
    PARAMS[0].ASSTRING := trim(cxButtonEdit1.Text);
    PARAMS[1].ASSTRING := PkinvPKLOCAT.asstring;
    Open;
  end;
  nPartno := FmDmic01.Query1.fieldbyname('PARTNO').AsString;
  cxTextEdit1.Text := FmDmic01.Query1.fieldbyname('DESC1').AsString;

  if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (PkinvNETADD.AsFloat > 0) then
  begin
    nUprice := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat +
      (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat *
      (PkinvNETADD.AsFloat / 100));
  end
  else
  begin
    LVPrice := 'Price' + Pkinv.Fieldbyname('SALLEV').Asstring;
    nUprice := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
  end;
  nNetFL := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;

  if (cxButtonEdit1.Text <> '') and (not FmDmic01.Query1.Eof and FmDmic01.Query1.Bof) then
  begin
    PkTran.Append;
    PktranPARTNO.Asstring := nPartno;
    PktranPARTDESC.Asstring := FmDmic01.Query1.fieldbyname('DESC1').AsString;
    PktranQTYORD.AsFloat := StrToInt(cxComboBox1.Text);
    PktranQTYOUT.AsFloat := StrToInt(cxComboBox1.Text);

    with Query3 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Cost + ',' + Allo + ' FROM INVANLS WHERE ' +
        'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
      Params[0].Asstring := PkTranPartno.asstring;
      Params[1].Asstring := PkTranPkLocat.asstring;
      Params[2].Asstring := Inttostr(Xyear);
      if not Query3.Prepared then
        Query3.Prepare;
      Open;
    end;

    if (NAllow = 'Y') and (PktranQTYOUT.AsFloat > Query3.FieldByName(Allo).AsFloat) then
    begin
        {DBGrid1.Setfocus;
        DBGrid1.SelectedIndex:=0;
        SFMain.RaiseException('��к� Setup ���͹حҵ���ʵ�͡�Դź'); }
      PktranQTYOUT.AsFloat := PktranQTYORD.AsFloat;
    end;
    {  If PktranQTYOUT.AsFloat=0 Then
        If Messagedlg('��ͧ��� Back Order ������� ?',Mtconfirmation,[mbNO,mbOk],0)=MrOk Then
        PktranBACKFLG.Asstring :='Y'
      Else
      begin
        {DBGrid1.Setfocus;
        DBGrid1.SelectedIndex:=0;
        SFMain.RaiseException('�ӹǹ������ 0');}
     {   Pktran.Delete;
      end; }

    PktranUPRICE.AsFloat := nUprice;
    PktranDISCAMT.AsFloat := StrToInt(cxTextEdit2.Text);

    nBal := FRound((nUprice * StrToInt(cxComboBox1.Text)), 2);
    nRedu := PktranDISCAMT.AsFloat;
    nTot := FRound(nBal - nRedu, 2);
    PktranTotPrc.AsFloat := nTot;
    PktranNetFl.Asstring := nNetFL;

    cxTextEdit1.Text := '';
    cxComboBox1.Text := '1';
    cxButtonEdit1.Text := '';

    cxButtonEdit1.SetFocus;
    PkTran.Post;
    PkTran.Append;
  end;
  cxButtonEdit1.SetFocus;
end;

procedure TFPos.cxTextEdit1FocusChanged(Sender: TObject);
begin
  cxButtonEdit1.SetFocus;
end;

procedure TFPos.PkTranUPRICEValidate(Sender: TField);
var
  nBal, nRedu, nTot: Double;
begin
  nBal := FRound((PktranUPRICE.AsFloat * PktranQTYORD.AsFloat), 2);
  nRedu := FRound((PktranREDU1.AsFloat * nBal) / 100, 2);
  nTot := FRound(nBal - nRedu, 2);
  PktranTotPrc.AsFloat := nTot;
end;

procedure TFPos.PkTranREDU1Validate(Sender: TField);
var
  nBal, nRedu, nTot: Double;
begin
  nBal := FRound((PktranUPRICE.AsFloat * PktranQTYORD.AsFloat), 2);
  nRedu := FRound((PktranREDU1.AsFloat * nBal) / 100, 2);
  nTot := FRound(nBal - nRedu, 2);
  PktranTotPrc.AsFloat := nTot;
end;

procedure TFPos.PrnBtnClick(Sender: TObject);
begin
 { IF cxRadioGroup1.ItemIndex=0 then
  begin
    if DBEdit2.Text = '' Then
       sfmain.RaiseException('��辺�Ţ�����ҧ�ԧ..!');
    DM_SEC.Do_Prev_Edit_FastReport(frReport1,'fr_OutPart.fr3','1');
  end else
  begin
    if cxDBTextEdit1.Text = '' Then
       sfmain.RaiseException('��辺�Ţ�����觢ͧ/㺡ӡѺ<br/>��سҵ�Ǩ�ͺ��â��..!');
    DM_SEC.Do_Prev_Edit_FastReport(frReport1,'fr_PrnIcInvno.fr3','1');
  end; }
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_OutPart.fr3','1');
end;

procedure TFPos.actEditPrnExecute(Sender: TObject);
begin
  {IF cxRadioGroup1.ItemIndex=0 then
    DM_SEC.Do_Prev_Edit_FastReport(frReport1,'fr_OutPart.fr3','2') else
    DM_SEC.Do_Prev_Edit_FastReport(frReport1,'fr_PrnIcInvno.fr3','2');}
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Billicinv4.fr3','2');
end;

procedure TFPos.cxImage1Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''01'' ');
    if QueryOpen.FieldByName('KIND').AsString = '01' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage2Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''02'' ');
    if QueryOpen.FieldByName('KIND').AsString = '02' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage3Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''03'' ');
    if QueryOpen.FieldByName('KIND').AsString = '03' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage4Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''04'' ');
    if QueryOpen.FieldByName('KIND').AsString = '04' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage5Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''05'' ');
    if QueryOpen.FieldByName('KIND').AsString = '05' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage6Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''06'' ');
    if QueryOpen.FieldByName('KIND').AsString = '06' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage7Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''07'' ');
    if QueryOpen.FieldByName('KIND').AsString = '07' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage8Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''08'' ');
    if QueryOpen.FieldByName('KIND').AsString = '08' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage9Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''09'' ');
    if QueryOpen.FieldByName('KIND').AsString = '09' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage10Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''10'' ');
    if QueryOpen.FieldByName('KIND').AsString = '10' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage11Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''11'' ');
    if QueryOpen.FieldByName('KIND').AsString = '11' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage12Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''12'' ');
    if QueryOpen.FieldByName('KIND').AsString = '12' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage13Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''13'' ');
    if QueryOpen.FieldByName('KIND').AsString = '13' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage14Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''14'' ');
    if QueryOpen.FieldByName('KIND').AsString = '14' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage15Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''15'' ');
    if QueryOpen.FieldByName('KIND').AsString = '15' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage16Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''16'' ');
    if QueryOpen.FieldByName('KIND').AsString = '16' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage17Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''17'' ');
    if QueryOpen.FieldByName('KIND').AsString = '17' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage18Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''18'' ');
    if QueryOpen.FieldByName('KIND').AsString = '18' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage19Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''19'' ');
    if QueryOpen.FieldByName('KIND').AsString = '19' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.cxImage20Click(Sender: TObject);
begin
  if (DataSource1.State <> Dsbrowse) then
  begin
    DM_SEC.Do_With_Query_No_params(actOpen, QueryOpen, 'SELECT * FROM INVMAST WHERE KIND = ''20'' ');
    if QueryOpen.FieldByName('KIND').AsString = '20' then
    begin
      cxButtonEdit1.Text := QueryOpen.FieldbyName('BARCODE').AsString;
    end
    else
      SFMain.RaiseException('��辺��õ�駤��');
  end;
end;

procedure TFPos.AdvGlowButton8Click(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Billicinv4.fr3','3');

  SFMain.Close;
  SFMain.Command := 'MRPPlus.exe' + #0;
  if WinExec(@SFMain.Command[1], SW_SHOWNORMAL) < 32 then
    MessageDlg('�������ö�����ҹ�������...!' + SFMain.Command, mtError, [mbOK], 0);
end;

procedure TFPos.DBEdit7Exit(Sender: TObject);
begin
  NextBtnClick(Sender);
  cxGrid1.SetFocus;
end;

procedure TFPos.AdvGlowButton4Click(Sender: TObject);
var
  S, L: string;
begin
  if Pktran.RecordCount = 0 then
    SFMain.RaiseException('�ѧ���ѹ�֡��¡���Թ���');
  S := PkinvPKNO.Asstring;
  L := PkinvPKLocat.Asstring;
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSP02', 'INSERT', Pkinv.FieldByName('PKNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSP02', 'EDIT', Pkinv.FieldByName('PKNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Pkinv.Post;
  //
  if CheckBox1.Checked then
  begin
    with FmDmic01.Icinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO =:XINVNO');
      PARAMS[0].ASSTRING := '';
      OPEN;
      INSERT;
    end;

    FmDmic01.IcinvFLAG.Asstring := '1';
    FmDmic01.IcinvVATTYPE.Asstring := '2';
    FmDmic01.Desctax := '����Թ����Թʴ����١��� #' + Pkinv.Fieldbyname('Cuscod').Asstring;
    //

    FmDmic01.IcinvPKNO.Asstring := Pkinv.Fieldbyname('PKNO').Asstring;
    FmDmic01.IcinvInvdate.AsDatetime := Pkinv.Fieldbyname('Pkdate').AsDatetime;
    FmDmic01.IcinvINVLOC.Asstring := L;
    FmDmic01.IcinvCUSCOD.Asstring := Pkinv.Fieldbyname('Cuscod').Asstring;
    FmDmic01.IcinvDisct.AsFloat := Pkinv.Fieldbyname('DISCT').AsFloat;
    FmDmic01.Icinvvatrt.AsFloat := Pkinv.Fieldbyname('Vatrt').AsFloat;
    FmDmic01.IcinvVATTYPE.AsString := Pkinv.Fieldbyname('VATTYPE').AsString;
    FmDmic01.IcinvEXDISAMT.AsFloat := Pkinv.Fieldbyname('EXDISAMT').AsFloat;
    FmDmic01.IcinvDISCAMT.AsFloat := Pkinv.Fieldbyname('DISCAMT').AsFloat;
    FmDmic01.IcinvNETAMT.AsFloat := Pkinv.Fieldbyname('NETAMT').AsFloat;
    FmDmic01.IcinvBALANCE.AsFloat := Pkinv.Fieldbyname('BALANCE').AsFloat;
    FmDmic01.IcinvVATAMT.AsFloat := Pkinv.Fieldbyname('VATAMT').AsFloat;
    FmDmic01.IcinvNETPRC.AsFloat := Pkinv.Fieldbyname('NETTOTAL').AsFloat;
    FmDmic01.IcinvDISBATH.Asstring := Pkinv.Fieldbyname('DISBATH').Asstring;
    FmDmic01.IcinvOfficcod.Asstring := Pkinv.Fieldbyname('Officcod').Asstring;
    FmDmic01.IcinvCredtm.AsFloat := 0;
    FmDmic01.IcinvInvdue.AsDatetime := Pkinv.Fieldbyname('Pkdate').AsDatetime;
    //
    with FmDmic01.QPkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO=:XPKNO ');
      PARAMS[0].AsString := FmDmic01.IcinvPKNO.Asstring;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('��辺�Ţ�����ԡ');
    end;

    if not (Pktran.Bof and Pktran.Eof) then
    begin
      // Clear Buffer Ictran
      with FmDmic01.Ictran do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO =:XINVNO');
        PARAMS[0].ASSTRING := '';
        OPEN;
      end;

      //
      Pktran.First;
      while not Pktran.Eof do
      begin
        if Pktran.Fieldbyname('QtyOut').AsFloat > 0 then
        begin
          FmDmic01.IcTran.Insert;
          FmDmic01.IctranNETFL.Asstring := Pktran.Fieldbyname('Netfl').Asstring;
          FmDmic01.IctranYear1.Asstring := Pktran.Fieldbyname('Year1').Asstring;
          FmDmic01.IctranPARTNO.Asstring := Pktran.Fieldbyname('PARTNO').Asstring;
          FmDmic01.IctranFREE.Asstring := Pktran.Fieldbyname('FREE').Asstring;
          FmDmic01.IctranGROUP1.Asstring := Pktran.Fieldbyname('GROUP1').Asstring;
          FmDmic01.IctranDiscamt.Asfloat := Pktran.Fieldbyname('Discamt').Asfloat;
          FmDmic01.IctranQTYORD.AsFloat := Pktran.Fieldbyname('QtyOrd').AsFloat;
          FmDmic01.IctranQTYOUT.AsFloat := Pktran.Fieldbyname('QtyOut').AsFloat;
          FmDmic01.IctranUPRICE.AsFloat := Pktran.Fieldbyname('UPRICE').AsFloat;
          FmDmic01.IctranNetPRC.AsFloat := Pktran.Fieldbyname('NetPRC').AsFloat;
          FmDmic01.IctranAVGCost.AsFloat := Pktran.Fieldbyname('AVGCOST').AsFloat;
          FmDmic01.IcTranREDU1.AsFloat := Pktran.Fieldbyname('REDU1').AsFloat;
          FmDmic01.IctranTotPRC.AsFloat := Pktran.Fieldbyname('TOTPRC').AsFloat;
          ;
          FmDmic01.IcTran.Post;
        end;
        Pktran.Next;
      end;
      FmDmic01.Icinv.Post;

      with FmDmic01.Qtmpicinv do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO =:XINVNO');
        PARAMS[0].ASSTRING := FmDmic01.IcinvINVNO.Asstring;
        OPEN;
        if Bof and Eof then
          SFMain.RaiseException('��辺��觢ͧ/㺡ӡѺ');
      end;

    //FmDmic01.QArpaytrn1.Post;
    end;
    //FmSTIn03.Close;
    with Pkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := S;
      OPEN;
    end;

    with Pktran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := S;
      OPEN;
    end;

    if not assigned(FPaymntPos_01) then
    begin
      Application.CreateForm(TFPaymntPos_01, FPaymntPos_01);
      FPaymntPos_01.ShowModal;
    end;
  end;
end;

procedure TFPos.PkTranDISCAMTValidate(Sender: TField);
begin
  PktranTotPrc.AsFloat := FRound((PktranNetprc.AsFloat * PktranQTYORD.AsFloat) - PkTranDISCAMT.AsFloat, 2);
end;

procedure TFPos.PkinvDISCAMTValidate(Sender: TField);
begin
  PkinvNETTOTAL.AsFloat := FRound((PkinvBALANCE.AsFloat - PkinvDISCAMT.AsFloat), 2);
end;

end.

