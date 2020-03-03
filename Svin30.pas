unit SvIn30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, DB, ExtCtrls, Grids, DBGrids, Mask, DBCtrls,
  Dbkbd, Math, ImgList, ToolWin, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxBarBuiltInMenu, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus,
  Vcl.ActnList, RzDbkbd, dxStatusBar, AdvToolBar, cxMemo, cxDBEdit, cxTextEdit,
  cxGroupBox, cxRadioGroup, AdvGlowButton, RzLabel, RzDBLbl, cxButtonEdit,
  RzPanel, RzDBGrid, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxButtons, cxPC, AdvPanel, frxClass, frxExportXLSX, frxRich, frxDCtrl,
  frxTableObject, frxExportPDF, frxExportImage, frxGradient, frxFDComponents,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TSvIn_30 = class(TForm)
    AdvPanel1: TAdvPanel;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    Query1: TFDQuery;
    AdvPanel8: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    SpeedButton4: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    LabelStat: TRzLabel;
    DataSource2: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Bevel5: TBevel;
    Label108: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label83: TLabel;
    Label104: TLabel;
    Label29: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label91: TLabel;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Label106: TLabel;
    Label107: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label113: TLabel;
    Label1: TLabel;
    OutBtn: TcxButton;
    FinDate: TcxDBDateEdit;
    DBEdit35: TcxDBTextEdit;
    DBEdit71: TcxDBTextEdit;
    dbDTNextSv: TcxDBDateEdit;
    DBEdit36: TcxDBTextEdit;
    DBCheckBox2: TcxDBCheckBox;
    DBEdit70: TcxDBTextEdit;
    cxTabSheet4: TcxTabSheet;
    RzPanel2: TRzPanel;
    cxGroupBox2: TcxGroupBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    cxGroupBox3: TcxGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit10: TcxDBTextEdit;
    DBEdit27: TcxDBTextEdit;
    DBEdit28: TcxDBTextEdit;
    DBEdit65: TcxDBTextEdit;
    RzPanel9: TRzPanel;
    DBGrid_Sv: TRzDBGrid;
    AdvPanel3: TAdvPanel;
    Label114: TLabel;
    DBText1: TDBText;
    Label115: TLabel;
    Label45: TLabel;
    DBEdit40: TcxDBTextEdit;
    DBEdit58: TcxDBButtonEdit;
    RepBtn: TcxButton;
    AutoBtn: TcxButton;
    rzFbtCupong: TcxButton;
    CampBtn: TcxButton;
    AdvPanel2: TAdvPanel;
    SvInBtn: TcxButton;
    SvDlBtn: TcxButton;
    cxTabSheet5: TcxTabSheet;
    DBGrid_Pt: TRzDBGrid;
    RzPanel5: TRzPanel;
    cxGroupBox10: TcxGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    cxGroupBox11: TcxGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    Label67: TLabel;
    Label73: TLabel;
    Label4: TLabel;
    DBEdit41: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit39: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit68: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    AdvPanel6: TAdvPanel;
    Label55: TLabel;
    Label59: TLabel;
    DBText2: TDBText;
    DBText5: TDBText;
    cxDBTextEdit5: TcxDBTextEdit;
    SpeedButton15: TcxButton;
    AdvPanel12: TAdvPanel;
    RzDBLabel1: TRzDBLabel;
    PartInBtn: TcxButton;
    PartDlBtn: TcxButton;
    cxTabSheet6: TcxTabSheet;
    DBGrid_OL: TRzDBGrid;
    AdvPanel7: TAdvPanel;
    Label117: TLabel;
    Label124: TLabel;
    DBText3: TDBText;
    DBEdit50: TcxDBTextEdit;
    SpeedButton16: TcxButton;
    AdvPanel9: TAdvPanel;
    cxGroupBox9: TcxGroupBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    cxGroupBox19: TcxGroupBox;
    Label33: TLabel;
    Label54: TLabel;
    Label77: TLabel;
    Label116: TLabel;
    DBEdit57: TcxDBTextEdit;
    DBEdit53: TcxDBTextEdit;
    DBEdit54: TcxDBTextEdit;
    DBEdit52: TcxDBTextEdit;
    DBEdit69: TcxDBTextEdit;
    DBEdit56: TcxDBTextEdit;
    AdvPanel13: TAdvPanel;
    OilInBtn: TcxButton;
    OilDlBtn: TcxButton;
    cxTabSheet7: TcxTabSheet;
    rzOutJob: TAdvGlowButton;
    RzPanel3: TRzPanel;
    cxGroupBox4: TcxGroupBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    cxGroupBox5: TcxGroupBox;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    DBEdit66: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit22: TcxDBTextEdit;
    RzPanel10: TRzPanel;
    DBGrid_Ot: TRzDBGrid;
    AdvPanel10: TAdvPanel;
    OtInBtn: TcxButton;
    OtDlBtn: TcxButton;
    AdvPanel4: TAdvPanel;
    Label118: TLabel;
    RadioGroup1: TcxRadioGroup;
    SpeedButton10: TAdvGlowButton;
    DBEdit49: TcxDBTextEdit;
    cxTabSheet8: TcxTabSheet;
    AddColour: TAdvGlowButton;
    RzPanel4: TRzPanel;
    cxGroupBox6: TcxGroupBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    cxGroupBox7: TcxGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit67: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit23: TcxDBTextEdit;
    DBEdit24: TcxDBTextEdit;
    DBGrid_Cr: TRzDBGrid;
    AdvPanel5: TAdvPanel;
    Label8: TLabel;
    DBEdit48: TcxDBTextEdit;
    AdvPanel11: TAdvPanel;
    ClInBtn: TcxButton;
    ClDlBtn: TcxButton;
    cxTabSheet9: TcxTabSheet;
    cxGroupBox12: TcxGroupBox;
    Label128: TLabel;
    Label130: TLabel;
    DBEdit42: TcxDBTextEdit;
    DBEdit44: TcxDBTextEdit;
    DBEdit45: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label10: TLabel;
    DBEdit11: TcxDBTextEdit;
    DBEdit25: TcxDBTextEdit;
    DBEdit26: TcxDBTextEdit;
    cxGroupBox13: TcxGroupBox;
    Label11: TLabel;
    Label15: TLabel;
    DBEdit43: TcxDBTextEdit;
    DBEdit46: TcxDBTextEdit;
    DBEdit47: TcxDBTextEdit;
    cxGroupBox16: TcxGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    DBEdit55: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    cxGroupBox14: TcxGroupBox;
    Label19: TLabel;
    Label21: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Edit4: TcxTextEdit;
    Edit5: TcxTextEdit;
    Edit6: TcxTextEdit;
    cxGroupBox15: TcxGroupBox;
    Label22: TLabel;
    Label24: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Edit7: TcxTextEdit;
    Edit8: TcxTextEdit;
    Edit9: TcxTextEdit;
    DBEdit37: TcxDBButtonEdit;
    SpeedButton11: TcxButton;
    DBEdit19: TcxDBTextEdit;
    DBEdit29: TcxDBTextEdit;
    DBEdit30: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit6: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    Label82: TLabel;
    Label84: TLabel;
    Label90: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label98: TLabel;
    Label100: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label28: TLabel;
    DBEdit7: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit31: TcxDBTextEdit;
    DBEdit32: TcxDBTextEdit;
    DBEdit59: TcxDBTextEdit;
    DBEdit60: TcxDBTextEdit;
    DBEdit61: TcxDBTextEdit;
    DBEdit64: TcxDBTextEdit;
    DBEdit62: TcxDBTextEdit;
    DBEdit20: TcxDBTextEdit;
    DBEdit34: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    cxTextEdit1: TcxTextEdit;
    Label99: TLabel;
    DBEdit9: TcxDBTextEdit;
    Bevel1: TBevel;
    gbRealTime: TcxGroupBox;
    DBGrid1: TRzDBGrid;
    RzRapidFireButton4: TcxButton;
    RzRapidFireButton3: TcxButton;
    Label9: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    cxDBMemo1: TcxDBMemo;
    RzDBLabel2: TRzDBLabel;
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
    procedure SavBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SvInBtnClick(Sender: TObject);
    procedure OtInBtnClick(Sender: TObject);
    procedure ClInBtnClick(Sender: TObject);
    procedure DBGrid_SvColExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_OtDblClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure OtDlBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure ClDlBtnClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure DBGrid4Enter(Sender: TObject);
    procedure SvDlBtnClick(Sender: TObject);
    procedure DBGrid_OtColExit(Sender: TObject);
    procedure DbGrid_CrColExit(Sender: TObject);
    procedure DbGrid_CrDblClick(Sender: TObject);
    procedure OLCnBtnClick(Sender: TObject);
    procedure OtCnBtnClick(Sender: TObject);
    procedure ClCnBtnClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure AutoBtnClick(Sender: TObject);
    procedure DBGrid_PtDblClick(Sender: TObject);
    procedure DBGrid_PtColExit(Sender: TObject);
    procedure DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RepBtnClick(Sender: TObject);
    procedure DBGrid_OLColExit(Sender: TObject);
    procedure DBGrid_OLDblClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBCheckBox3MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure OutbtnClick(Sender: TObject);
    procedure DBCheckBox6MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBCheckBox7MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGrid_SvEnter(Sender: TObject);
    procedure DBGrid_SvExit(Sender: TObject);
    procedure DBCheckBox8MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBCheckBox10MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CampBtnClick(Sender: TObject);
    procedure DBCheckBox12MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBGrid_SvEditButtonClick(Sender: TObject);
    procedure DBGrid_OtEditButtonClick(Sender: TObject);
    procedure DBGrid_OtEnter(Sender: TObject);
    procedure DBGrid_OtExit(Sender: TObject);
    procedure DBGrid_CrEditButtonClick(Sender: TObject);
    procedure DBGrid_CrEnter(Sender: TObject);
    procedure DBGrid_CrExit(Sender: TObject);
    procedure DBGrid_PtEnter(Sender: TObject);
    procedure DBGrid_PtExit(Sender: TObject);
    procedure DBGrid_PtEditButtonClick(Sender: TObject);
    procedure DBGrid_OLExit(Sender: TObject);
    procedure DBGrid_OLEnter(Sender: TObject);
    procedure AddColourClick(Sender: TObject);
    procedure DBCheckBox16MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBCheckBox17MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure rzFbtCupongClick(Sender: TObject);
    procedure RzRapidFireButton4Click(Sender: TObject);
    procedure RzRapidFireButton3Click(Sender: TObject);
    procedure spbSvTimeClick(Sender: TObject);
    procedure RzRapidFireButton2Click(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit37PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit58PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit4PropertiesChange(Sender: TObject);
    procedure DBCheckBox13MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PartInBtnClick(Sender: TObject);
    procedure PartDlBtnClick(Sender: TObject);
    procedure OilInBtnClick(Sender: TObject);
    procedure OilDlBtnClick(Sender: TObject);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure Close_DB;
  public
    { Public declarations }
    Sumtot: Double;
    Xsvrt1, Xsvrt2: Double;
    procedure Do_Afterpost_part;
    procedure Do_Afterpost_oil;
  end;

var
  SvIn_30: TSvIn_30;
  XOFFICER, XEditdisc, XEditPrc: string;

implementation

uses
  DmSv, SvHlp20, svcaltim, HlpjobNew, Prnjob210, uSrcDlg, uSrcDlg1, DlgPayc,
  Functn01, USoftFirm, unfrPreview, uSrchdlg1, DmSvSet, Dmsec, uFindData;

{$R *.DFM}

procedure TSvIn_30.Do_Afterpost_oil;
var
  XOil, Xvat, XRm, XDisc: Double;
  Bk: Tbookmark;
begin
  {ใช้ Field INV2_SV เก็บ ส่วนลด น้ำมัน}
  Bk := Dm_SV.QOiltran1.Getbookmark;
  Dm_SV.QOiltran1.Disablecontrols;
  XOil := 0;
  XDisc := 0;
  Xvat := Dm_SV.QJoborder2.FieldByName('Vat').AsFloat;
  Dm_SV.QOiltran1.First;
  while not (Dm_SV.QOiltran1.eof) do
  begin
    XDisc := XDisc + (Dm_SV.QOiltran1.FieldByName('Qty').AsFloat * Dm_SV.QOiltran1.FieldByName('Uprice').AsFloat - Dm_SV.QOiltran1.FieldByName('TOTPRC').AsFloat);
    if Dm_SV.QOiltran1.FieldByName('Claim').Asstring = 'N' then
      XOil := XOil + Roundto(Dm_SV.QOiltran1.FieldByName('TOTPRC').AsFloat, -2);
    Dm_SV.QOiltran1.Next;
  end;
  Dm_SV.QOiltran1.enablecontrols;
  Dm_SV.QJoborder2.FieldByName('INV2_SV').AsFloat := XDisc;

  if Dm_SV.QJoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    Dm_SV.QJoborder2.FieldByName('INV2_PT').AsFloat := XOil;
    Dm_SV.QJoborder2.FieldByName('OILNET').AsFloat := XOil;
    Dm_SV.QJoborder2.FieldByName('OILVat').AsFloat := Roundto(XOil * Xvat / 100, -2); //Strtofloat(T1);
    Dm_SV.QJoborder2.FieldByName('OILTot').AsFloat := XOil + Dm_SV.QJoborder2.FieldByName('OILVat').AsFloat;
  end
  else
  begin
    Dm_SV.QJoborder2.FieldByName('INV2_PT').AsFloat := XOil;
    XRm := XOil - Dm_SV.QJoborder2.FieldByName('OILDISC').AsFloat;
  //  T1 := Floatt(,ffFixed,15,2) ;

    Dm_SV.QJoborder2.FieldByName('OILVat').AsFloat := FRound(XRm * Xvat / (100 + Xvat), 2);
    Dm_SV.QJoborder2.FieldByName('OILNET').AsFloat := XRm - Dm_SV.QJoborder2.FieldByName('OilVat').AsFloat;
    Dm_SV.QJoborder2.FieldByName('OILTot').AsFloat := XRm;
  end;

  Dm_SV.SumServ;
  Dm_SV.QOiltran1.Gotobookmark(Bk);
  Dm_SV.QOiltran1.Freebookmark(Bk);
end;

procedure TSvIn_30.Do_Afterpost_part;
var
  XPart, XVat, XRm, XDisc: Double;
  BK: Tbookmark;
begin
  {ใช้ Field INV1_SV เก็บ ส่วนลด อะไหล่}
  BK := Dm_SV.QParttran1.Getbookmark;
  Dm_SV.QParttran1.DisableControls;
  XPart := 0;
  XDisc := 0;
  XVat := Dm_SV.QJoborder2.FieldByName('Vat').AsFloat;
  Dm_SV.QParttran1.First;
  while not (Dm_SV.QParttran1.eof) do
  begin
    XDisc := XDisc + (Dm_SV.QParttran1.FieldByName('QTY').AsFloat * Dm_SV.QParttran1.FieldByName('UPRICE').AsFloat - Dm_SV.QParttran1.FieldByName('TOTPRC').AsFloat);
    if Dm_SV.QParttran1.FieldByName('Claim').Asstring = 'N' then
      XPart := XPart + FRound(Dm_SV.QParttran1.FieldByName('TOTPRC').AsFloat, 2);
    Dm_SV.QParttran1.Next;
  end;
  Dm_SV.QParttran1.enableControls;

  Dm_SV.QJoborder2.FieldByName('INV1_SV').AsFloat := XDisc;

  if Dm_SV.QJoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    Dm_SV.QJoborder2.FieldByName('INV1_PT').AsFloat := XPart;
    Dm_SV.QJoborder2.FieldByName('PartNET').AsFloat := Dm_SV.QJoborder2.FieldByName('INV1_PT').AsFloat -
      Dm_SV.QJoborder2.FieldByName('Partdisc').AsFloat;

    Dm_SV.QJoborder2.FieldByName('PartVat').AsFloat := FRound(XPart * XVat / 100, 2);
    Dm_SV.QJoborder2.FieldByName('PartTot').AsFloat := XPart + Dm_SV.QJoborder2.FieldByName('PartVat').AsFloat;
  end
  else
  begin
    Dm_SV.QJoborder2.FieldByName('INV1_PT').AsFloat := XPart;
    XRm := XPart - Dm_SV.QJoborder2.FieldByName('Partdisc').AsFloat;
    Dm_SV.QJoborder2.FieldByName('PartVat').AsFloat := FRound(XRm * XVat / (100 + XVat), 2);
    Dm_SV.QJoborder2.FieldByName('PartNET').AsFloat := XRm - Dm_SV.QJoborder2.FieldByName('Partvat').AsFloat;
    Dm_SV.QJoborder2.FieldByName('PartTot').AsFloat := XRm;
  end;

  Dm_SV.SumServ;
  Dm_SV.QParttran1.Gotobookmark(BK);
  Dm_SV.QParttran1.Freebookmark(BK);
end;

procedure TSvIn_30.SavBtnClick(Sender: TObject);
begin
  if (Dm_Sv.QJoborder2SERVTOT.AsFloat > 0) and (Dm_Sv.QServtran1.RecordCount = 0) then
    sfmain.RaiseException('กรุณาบันทึกค่าบริการมาตรฐาน..!');

  if (Dm_Sv.QJoborder2PARTTOT.AsFloat > 0) and (Dm_Sv.QParttran1.RecordCount = 0) then
    sfmain.RaiseException('กรุณาบันทึกรายการอะไหล่..!');

  if (Dm_Sv.QJoborder2OILTOT.AsFloat > 0) and (Dm_Sv.QOiltran1.RecordCount = 0) then
    sfmain.RaiseException('กรุณาบันทึกรายการน้ำมัน..!');

  if (Dm_Sv.QJoborder2OUTJTOT.AsFloat > 0) and (Dm_Sv.QOuttran1.RecordCount = 0) then
    sfmain.RaiseException('กรุณาบันทึกค่าบริการงานนอก..!');

  if (Dm_Sv.QJoborder2COLORTOT.AsFloat > 0) and (Dm_Sv.QColrtran1.RecordCount = 0) then
    sfmain.RaiseException('กรุณาบันทึกค่าบริการงานสี..!');

  if Dm_Sv.CountFound > 1 then
    SFMain.RaiseException('รหัสค่าบริการซ้ำ #' + Dm_Sv.DoupCode + ' กรุณาลบก่อน');
  if not (Dm_Sv.QJoborder2.State in DsEditmodes) then
    Dm_Sv.QJoborder2.Edit;

  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV1_04', 'SAVE', DBEdit30.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

  Dm_Sv.QJoborder2.Post;
end;

procedure TSvIn_30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Close_DB;
  Action := Cafree;
  SvIn_30 := nil;
end;

procedure TSvIn_30.SvInBtnClick(Sender: TObject);
begin
  Dm_Sv.QServtran1.Append;
end;

procedure TSvIn_30.OtInBtnClick(Sender: TObject);
begin
  Dm_Sv.QOuttran1.Append;
end;

procedure TSvIn_30.ClInBtnClick(Sender: TObject);
begin
  Dm_Sv.QColrtran1.Append;
end;

procedure TSvIn_30.DBGrid_SvColExit(Sender: TObject);
var
  amt: Double;
begin
  if XEditPrc = 'N' then
    DBGrid_Sv.Columns[3].ReadOnly := True
  else
    DBGrid_Sv.Columns[3].ReadOnly := False;
  if (Dm_Sv.QJoborder2.State in DsEditmodes) then
  begin
    if not (Dm_Sv.QServtran1.State in DsEditmodes) then
      Dm_Sv.QServtran1.Edit;
    if not (Dm_Sv.Condpay.Active) then
      Dm_Sv.Condpay.Open;

    if Dm_Sv.Condpay.Fieldbyname('Multifr').Asstring = 'Y' then
    begin
      Xsvrt1 := Dm_Sv.QJoborder2.FieldByName('FRRATE').AsFloat;
    end
    else
    begin
      Xsvrt1 := Dm_Sv.Condpay.Fieldbyname('Svrate').Asfloat;
      Xsvrt2 := Dm_Sv.Condpay.Fieldbyname('Svrate2').Asfloat;
    end;

    if DBGrid_Sv.SelectedField.FieldName = 'CODE' then
    begin
      if Dm_Sv.QServtran1.FieldByName('CODE').Asstring = '' then
        SFMain.RaiseException('ยังไม่บันทึก  รหัสค่าบริการ  ');
      if Dm_Sv.CountFound > 1 then
        SFMain.RaiseException('รหัสค่าบริการซ้ำ #' + Dm_Sv.DoupCode + ' กรุณาลบก่อน');

      with Dm_Sv.QTabserv do
      begin
        Close;
        Sql.Clear;
        if Dm_Sv.QServtran1.FieldByName('MDLCOD').Asstring <> '' then
        begin
          Sql.Add('SELECT * FROM TBLABOR WHERE SVCODE= :XCODE AND MDLCOD=:XMD ');
          Params[0].Asstring := Dm_Sv.QServtran1.FieldByName('CODE').Asstring;
          Params[1].Asstring := Dm_Sv.QServtran1.FieldByName('MDLCOD').Asstring;
        end
        else
        begin
          Sql.Add('SELECT * FROM TBLABOR WHERE SVCODE= :XCODE ');
          Params[0].Asstring := Dm_Sv.QServtran1.FieldByName('CODE').Asstring;
        end;
        Open;
      end;

      if not (Dm_Sv.QTabserv.Bof and Dm_Sv.QTabserv.eof) then
      begin
        if Dm_Sv.QServtran1.State = DsInsert then
        begin
          Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat := Xsvrt1;
          Dm_Sv.QServtran1.FieldByName('DESC1').Asstring := Dm_Sv.QTabserv.FieldByName('DESCP').Asstring;
          Dm_Sv.QServtran1.FieldByName('FRT').AsFloat := Dm_Sv.QTabserv.FieldByName('FRT').AsFloat;
        end;
      end;

      if XOFFICER <> '' then
        Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := XOFFICER
      else if Dm_Sv.QServtran1.State = DsInsert then
        Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('RECVCOD').Asstring;

      if Dm_Sv.QServtran1.State = DsInsert then
      begin
        Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat := Xsvrt1;

        if (Dm_Sv.QTabserv.Bof and Dm_Sv.QTabserv.Eof) or (Dm_Sv.QTabserv.Fieldbyname('Status').asstring <> 'A') then
          Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat := Dm_Sv.QServtran1.FieldByName('FRT').AsFloat * Dm_Sv.QServtran1.FieldByName('Uprice').AsFloat
        else if Dm_Sv.QTabserv.Fieldbyname('Status').asstring = 'A' then
        begin
          Dm_Sv.QServtran1.FieldByName('FRT').AsFloat := 1;
          Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QTabserv.FieldByName('SVPRIC').AsFloat;
        end;
      end;

      if (Dm_Sv.QServtran1.FieldByName('Redu').AsFloat = 0) and (Dm_Sv.QServtran1.State = DsInsert) then
        Dm_Sv.QServtran1.FieldByName('Redu').AsFloat := Dm_sv.QJoborder2DISCSV.Asfloat;
    end;

    if (DBGrid_Sv.SelectedField.FieldName = 'FRT') or
      (DBGrid_Sv.SelectedField.FieldName = 'UPRICE') or
      (DBGrid_Sv.SelectedField.FieldName = 'REDU') or
      (DBGrid_Sv.SelectedField.FieldName = 'DISCAMT') then
    begin
      Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat := Dm_Sv.QServtran1.FieldByName('FRT').AsFloat * Dm_Sv.QServtran1.FieldByName('Uprice').AsFloat;
      amt := Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat * (1 - Dm_Sv.QServtran1.FieldByName('REDU').AsFloat / 100);
      Dm_Sv.QServtran1.FieldByName('NETPRIC').AsFloat := StrTofloat(FloattostrF((amt - Dm_Sv.QServtran1.FieldByName('Discamt').AsFloat), ffFixed, 15, 2));
    end;

    if DBGrid_Sv.SelectedField.FieldName = 'SERVCOD' then
    begin
      with Dm_Sv.QOfficer do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE= :XCODE  ');
        Params[0].Asstring := Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring;
        Open;
      end;
      if Dm_Sv.QOfficer.Bof and Dm_Sv.QOfficer.eof then
        SFMain.RaiseException('ไม่มีรหัสพนักงานนี้ในแฟ้มข้อมูล');

      if not (Dm_Sv.QServtran1.State in DsEditmodes) then
        Dm_Sv.QServtran1.Edit;
      Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QOfficer.FieldByName('ENCODE').Asstring;

      XOFFICER := Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring;
    end;
    //
    if (DBGrid_Sv.SelectedField.FieldName = 'CLAIM') and
      (Dm_Sv.QServtran1.FieldByName('CLAIM').Asstring = '') then
    begin
      Dm_Sv.QServtran1.FieldByName('CLAIM').Asstring := 'N';
      SFMain.RaiseException('ช่องเคลมว่างไม่ได้');
    end;
  end;
end;

procedure TSvIn_30.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSV', 'HDSV1_04');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TSvIn_30.DBGrid_OtDblClick(Sender: TObject);
begin
  if DBGrid_Ot.Readonly = False then
  begin
    if DbGrid_Ot.SelectedField.FieldName = 'CODE' then
    begin
      if Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring = '' then
        SFMain.RaiseException('ยังไม่บันทึกหมายเลข JOB');
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalSvpart = Mrok then
      begin
        with Dm_Sv.QUERY1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM SVSTOCK WHERE CODE = :Edit1 AND LOCAT=:EDIT2 ');
          Params[0].Asstring := fSrcDlg1.KeyNo;
          Params[1].Asstring := fSrcDlg1.qrFindDat.fieldbyname('Locat').Asstring;
          Open;
        end;
        if Dm_Sv.Query1.bof and Dm_Sv.Query1.Eof then
          SFMain.RaiseException('ไมมีรหัสสาขานี้ในแฟ้มข้อมูล');
        Dm_Sv.QOuttran1.FieldByName('CODE').Asstring := Dm_Sv.Query1.FieldByName('CODE').Asstring;
      end;
    end;

    if DbGrid_Ot.SelectedField.FieldName = 'SERVCOD' then
    begin
      Application.Createform(TfFindData, fFindData);
      if fFindData.ShowModalEngineer = Mrok then
      begin
        with Dm_Sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE = :XCODE ');
          Params[0].Asstring := fFindData.KeyNo;
          Open;
        end;
        if Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
          SFMain.RaiseException('ไม่มีข้อมูล');
        Dm_Sv.QOuttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('ENCODE').Asstring;
      end;
    end;

    if DbGrid_Ot.SelectedField.FieldName = 'CUSCOD' then
    begin
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalAR = Mrok then
      begin
        if Dm_Sv.QOuttran1.State = Dsbrowse then
          Dm_Sv.QOuttran1.Edit;
        Dm_Sv.QOuttran1.FieldByName('CUSCOD').Asstring := fSrcDlg1.Keyno;
      end;
    end;
  end;

  if DbGrid_OT.SelectedField.FieldName = 'SERTIME' then
  begin
    Application.CreateForm(TFsvtime, Fsvtime);
    Fsvtime.Jobno1 := dm_sv.QOuttran1.FieldByName('JOBNO').Asstring;
    Fsvtime.Servcod1 := dm_sv.QOuttran1.FieldByName('Servcod').Asstring;
    Fsvtime.Code1 := dm_sv.QOuttran1.FieldByName('Code').Asstring;
    Fsvtime.Flag1 := '3';
    Fsvtime.SvTime.Close;
    Fsvtime.SvTime.MasterSource := Dm_sv.SoOuttran1;

    if Fsvtime.ShowModal = MrOk then
    begin
      with Dm_sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT Sum(UseTime) As UseTime FROM SVTIME WHERE JOBNO= :XJOB AND SERVCOD= :XSVCOD AND CODE=:Xcode' +
          ' AND FLAG =:Xflag');
        Params[0].Asstring := dm_sv.QOuttran1.FieldByName('JOBNO').Asstring;
        Params[1].Asstring := dm_sv.QOuttran1.FieldByName('Servcod').Asstring;
        Params[2].Asstring := dm_sv.QOuttran1.FieldByName('Code').Asstring;
        Params[3].Asstring := '3';
        Open;
      end;
      dm_sv.QOuttran1.FieldByName('SERTIME').AsFloat := Dm_sv.Query1.FieldByName('Usetime').Asfloat;
    end;
  end;
end;

procedure TSvIn_30.CancBtnClick(Sender: TObject);
begin
  cxTextEdit1.Text := '';

  if Dm_Sv.QJoborder2.Active then
    Dm_Sv.QJoborder2.Cancel;
  if Dm_Sv.QSvmast.Active then
    Dm_Sv.QSvmast.Close;
  if Dm_Sv.QJobTime.Active then
    Dm_Sv.QJobTime.Close;
  if Dm_Sv.QParttran1.Active then
    Dm_Sv.QParttran1.Close;
  if Dm_Sv.QOiltran1.Active then
    Dm_Sv.QOiltran1.Close;
  if Dm_Sv.QOuttran1.Active then
    Dm_Sv.QOuttran1.Close;
  if Dm_Sv.QColrtran1.Active then
    Dm_Sv.QColrtran1.Close;

  with Dm_Sv.QJoborder2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE  JOBNO= :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
  with Dm_Sv.QServtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SERVTRAN WHERE  JOBNO= :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
  with Dm_Sv.QOiltran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PARTTRAN WHERE  JOBNO= :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
  with Dm_Sv.QOuttran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO = :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
  with Dm_Sv.QColrtran1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO = :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
  with Dm_Sv.QParttran1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM  PARTTRAN WHERE JOBNO = :XNO');
    Params[0].AsString := '';
    Open;
  end;

  with Dm_Sv.QModelmst do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD= :XMDL  ');
    Params[0].Asstring := '';
    Open;
  end;
  Labelstat.Visible := False;
end;

procedure TSvIn_30.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert)) and
    (Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'W');
  CancBtn.Visible := DataSource1.State in DsEditmodes;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  EnqBtn.Visible := (DataSource1.State = Dsbrowse);
  RadioGroup1.Enabled := SavBtn.Visible;
  AddColour.Enabled := SavBtn.Visible;
  RzRapidFireButton4.Enabled := SavBtn.Visible;
  RzRapidFireButton3.Enabled := SavBtn.Visible;
  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := True;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).Readonly := True;
          //TRzDBGrid(Components[n]).Color := clBtnFace;
      end;
      if (Components[N] is TcxDBCheckBox) and (TcxDBCheckBox(Components[N]).Tag = 0) then
      begin
        TcxDBCheckBox(Components[N]).Enabled := False;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.Readonly := True;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
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
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) and (Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'W') then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := False;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).Readonly := False;
          //TRzDBGrid(Components[n]).Color := clWhite;
      end;
      if (Components[N] is TcxDBCheckBox) and (TcxDBCheckBox(Components[N]).Tag = 0) then
      begin
        TcxDBCheckBox(Components[N]).Enabled := True;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.Readonly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  DBEdit70.Enabled := Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'W';
  FinDate.Properties.ReadOnly := SFMain.XChgDate <> 'Y';
  dbDTNextSv.Properties.ReadOnly := Dm_Sv.QJoborder2.FieldByName('Status').Asstring <> 'W';
  PrnBtn.Enabled := Dm_Sv.QJoborder2.FieldByName('Status').Asstring <> 'W';
end;

procedure TSvIn_30.OtDlBtnClick(Sender: TObject);
begin
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_Sv.QOuttran1.Delete;
      end;
  end;
end;

procedure TSvIn_30.EnqBtnClick(Sender: TObject);
begin
  cxTextEdit1.Text := '';
  Application.CreateForm(THelpjobNew, HelpjobNew);
  if sfmain.XChgLoc = 'Y' then
    HelpjobNew.XSrLocat := ''
  else
    HelpjobNew.XSrLocat := sfmain.Xlocat;
  if HelpJobNew.ShowModal = MrOk then
  begin
    with Dm_Sv.QJoborder2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNO ');
      Params[0].Asstring := HelpjobNew.QHlp.FieldByName('JOBNO').Asstring;
      Open;
    end;

    if Dm_Sv.QJOborder2.Bof and Dm_Sv.QJOborder2.eof then
      SFMain.RaiseException('ไม่มีข้อมูล ');

    if Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'W' then
      LabelStat.Caption := 'อยู่ระหว่างการซ่อม';
    if Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'F' then
      LabelStat.Caption := 'ซ่อมเสร็จแล้วรอลูกค้ามารับ';
    if Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'R' then
      LabelStat.Caption := 'ลูกค้ารับรถไปแล้ว';
    if Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'C' then
      LabelStat.Caption := 'JOB ถูกยกเลิกไปแล้ว';

    with Dm_Sv.QSvmast do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM VIEW_SVMAST WHERE STRNO= :XSTRNO  ');
      Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('STRNO').Asstring;
      Open;
    end;
    if Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'C' then
      SFMain.RaiseException('JOB ถูกยกเลิกไปแล้ว');

    if Dm_Sv.QSvmast.Bof and Dm_Sv.QSvmast.eof then
      SFMain.RaiseException('ไม่มีข้อมูล ในแฟ้มประวัติรถ');
    with Dm_Sv.QModelmst do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD= :XMDL  ');
      Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('MDLCOD').Asstring;
      Open;
    end;

   //Dm_Sv.QJoborder2.Edit;

    with Dm_Sv.QServtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = :XNO ');
      Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
      Open;
    end;

    with Dm_Sv.QParttran1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM  PARTTRAN WHERE JOBNO = :XNO AND GROUP1<>''OL'' ORDER BY CUSCOD');
      Params[0].AsString := Dm_Sv.QJOborder2.FieldByName('JOBNO').Asstring;
      Open;
    end;

    with Dm_Sv.QOiltran1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM  PARTTRAN WHERE JOBNO = :XNO AND GROUP1=''OL'' ORDER BY CUSCOD');
      Params[0].AsString := Dm_Sv.QJOborder2.FieldByName('JOBNO').Asstring;
      Open;
    end;

    with Dm_Sv.QOuttran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO = :XNO ');
      Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
      Open;
    end;

    with Dm_Sv.QColrtran1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM COLRTRAN WHERE JOBNO = :XNO ');
      Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
      Open;
    end;

    with Dm_Sv.QJobTime do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBTIME WHERE JOBNO = :XNO ');
      Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
      Open;
    end;
   //
    PrnBtn.Enabled := Dm_Sv.QJoborder2.FieldByName('Status').Asstring <> 'W';
    DBEdit58.Enabled := False;
    Labelstat.Visible := True;
    Labelstat.Blinking := True;
    //SavBtnClick(Sender);
  end;
end;

procedure TSvIn_30.ClDlBtnClick(Sender: TObject);
begin
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_Sv.QColrtran1.Delete;
      end;
  end;
end;

procedure TSvIn_30.BitBtn6Click(Sender: TObject);
var
  XPric: Double;
begin
  if Dm_Sv.QOuttran1.Active then
  begin
    XPric := Dm_Sv.QOuttran1.FieldByName('NETPRIC').AsFloat;
    Dm_Sv.QJoborder2.FieldByName('OUTAMT').AsFloat := Dm_Sv.QJoborder2.FieldByName('OUTAMT').AsFloat - XPric;
  end;
end;

procedure TSvIn_30.BitBtn8Click(Sender: TObject);
var
  XPric: Double;
begin
  if Dm_Sv.QColrtran1.Active then
  begin
    XPric := Dm_Sv.QColrtran1.FieldByName('NETPRIC').AsFloat;
    Dm_Sv.QJoborder2.FieldByName('COLRAMT').AsFloat := Dm_Sv.QJoborder2.FieldByName('COLRAMT').AsFloat - XPric;
    Dm_Sv.QColrtran1.Delete;
  end;
end;

procedure TSvIn_30.PageControl1Enter(Sender: TObject);
begin
  SvIn_30.OnkeyDown := nil;
  SvIn_30.OnkeyPress := nil;
end;

procedure TSvIn_30.DBGrid3Enter(Sender: TObject);
begin
  SvIn_30.OnkeyDown := nil;
  SvIn_30.OnkeyPress := nil;
end;

procedure TSvIn_30.DBGrid4Enter(Sender: TObject);
begin
  SvIn_30.OnkeyDown := nil;
  SvIn_30.OnkeyPress := nil;
end;

procedure TSvIn_30.SvDlBtnClick(Sender: TObject);
begin
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_Sv.QServtran1.delete;
      end;
  end;
end;

procedure TSvIn_30.DBGrid_OtColExit(Sender: TObject);
var
  Amt: Double;
begin
  if not (Dm_Sv.QOuttran1.State in DsEditmodes) then
    Dm_Sv.QOuttran1.Edit;

  if DBGrid_Ot.SelectedField.FieldName = 'CODE' then
  begin
    if Dm_Sv.QOuttran1.FieldByName('CODE').Asstring = '' then
      SFMain.RaiseException('ยังไม่บันทึก  รหัสค่าบริการ  ');
    with Dm_Sv.QSvStock do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SVSTOCK WHERE CODE=:XCODE AND LOCAT=:XLOLAT ');
      Params[0].Asstring := Dm_Sv.QOuttran1.FieldByName('CODE').Asstring;
      Params[1].Asstring := Dm_Sv.QJoborder2.FieldByName('LOCAT').Asstring;
      Open;
    end;
    if not (Dm_Sv.QSvstock.Bof and Dm_Sv.QSvstock.eof) then
    begin
      Dm_Sv.QOuttran1.FieldByName('CODE').Asstring := Dm_Sv.QSvstock.FieldByName('CODE').Asstring;
      Dm_Sv.QOuttran1.FieldByName('DESC1').Asstring := Dm_Sv.QSvstock.FieldByName('DESC1').Asstring;
      Dm_Sv.QOuttran1.FieldByName('FRT').AsFloat := Dm_Sv.QSvstock.FieldByName('FRT').AsFloat;
      Dm_Sv.QOuttran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QSvstock.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QOuttran1.FieldByName('UCOST').AsFloat := Dm_Sv.QSvstock.FieldByName('UCOST').AsFloat;
      Dm_Sv.QOuttran1.FieldByName('QTY').AsFloat := 1;
      Dm_Sv.QOuttran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QSvstock.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QOuttran1.FieldByName('REDU').AsFloat := 0;
      Dm_Sv.QOuttran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QSvstock.FieldByName('UPRICE').AsFloat;
      Dm_Sv.QOuttran1.FieldByName('SERTIME').AsFloat := 0;
      Dm_Sv.QOuttran1.FieldByName('OTTIME').AsFloat := 0;
    end; {Else
   Begin
   MessageDlg('ไม่มีรหัสงานนอก กรุณาไปรหัสก่อน', mtWarning, [mbOK], 0);
   Abort;
   End;}
    if XOFFICER <> '' then
      Dm_Sv.QOuttran1.FieldByName('SERVCOD').Asstring := XOFFICER;
  end;

  if (DBGrid_Ot.SelectedField.FieldName = 'UCOST') and
    (RadioGroup1.Itemindex = 0) then
  begin
    Dm_Sv.QOuttran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QOuttran1.FieldByName('Ucost').AsFloat * (1 + Dm_Sv.QJoborder2OUTADD.Asfloat / 100);
  end;

  if (DBGrid_Ot.SelectedField.FieldName = 'UPRICE') and
    (RadioGroup1.Itemindex = 1) then
  begin
    Dm_Sv.QOuttran1.FieldByName('UCOST').AsFloat := (100 / (100 + Dm_Sv.QJoborder2OUTADD.Asfloat)) * Dm_Sv.QOuttran1.FieldByName('UPRICE').AsFloat;
   //Dm_Sv.QOuttran1.FieldByName('UPRICE').AsFloat*(100-Dm_Sv.QJoborder2OUTADD.Asfloat)/100;
  end;

  if (DBGrid_Ot.SelectedField.FieldName = 'QTY') or
    (DBGrid_Ot.SelectedField.FieldName = 'UPRICE') or
    (DBGrid_Ot.SelectedField.FieldName = 'REDU') then
  begin
    Dm_Sv.QOuttran1.FieldByName('TOTCOST').AsFloat := Dm_Sv.QOuttran1.FieldByName('UCOST').AsFloat *
      Dm_Sv.QOuttran1.FieldByName('QTY').AsFloat;
    Dm_Sv.QOuttran1.FieldByName('TOTPRIC').AsFloat :=
      Dm_Sv.QOuttran1.FieldByName('UPRICE').AsFloat * Dm_Sv.QOuttran1.FieldByName('QTY').AsFloat;
    Amt := Dm_Sv.QOuttran1.FieldByName('TOTPRIC').AsFloat * (1 - Dm_Sv.QOuttran1.FieldByName('REDU').AsFloat / 100);
    Dm_Sv.QOuttran1.FieldByName('NETPRIC').AsFloat := StrTofloat(FloattostrF((Amt), ffFixed, 15, 2));
  end;

  if DBGrid_Ot.SelectedField.FieldName = 'TOTPRIC' then
    Dm_Sv.QOuttran1.FieldByName('REDU').AsFloat := 0;

  if DBGrid_Ot.SelectedField.FieldName = 'SERVCOD' then
  begin
    with Dm_Sv.QOfficer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE= :XCODE  ');
      Params[0].Asstring := Dm_Sv.QOuttran1.FieldByName('SERVCOD').Asstring;
      Open;
    end;
    if Dm_Sv.QOfficer.Bof and Dm_Sv.QOfficer.eof then
      SFMain.RaiseException('ไม่มีรหัสพนักงานนี้ในแฟ้มข้อมูล');
    Dm_Sv.QOuttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QOfficer.FieldByName('ENCODE').Asstring;
    XOFFICER := Dm_Sv.QOuttran1.FieldByName('SERVCOD').Asstring;
  end;
end;

procedure TSvIn_30.DbGrid_CrColExit(Sender: TObject);
var
  Xsvrt1, Xsvrt2, Amt: Double;
begin
  if not (Dm_Sv.Condpay.Active) then
    Dm_Sv.Condpay.Open;
  Xsvrt1 := Dm_Sv.Condpay.Fieldbyname('Svrate').Asfloat;
  Xsvrt2 := Dm_Sv.Condpay.Fieldbyname('Svrate2').Asfloat;

  if not (Dm_Sv.QColrtran1.State in DsEditmodes) then
    Dm_Sv.QColrtran1.Edit;

  if DBGrid_Cr.SelectedField.FieldName = 'CODE' then
  begin
    if Dm_Sv.QColrtran1.FieldByName('CODE').Asstring = '' then
      SFMain.RaiseException('ยังไม่บันทึก  รหัสค่าบริการ  ');
    with Dm_Sv.QTabserv do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TBLABOR WHERE SVCODE= :XCODE ');
      Params[0].Asstring := Dm_Sv.QColrtran1.FieldByName('CODE').Asstring;
      Open;
    end;
    if not (Dm_Sv.QTabserv.Bof and Dm_Sv.QTabserv.eof) then
    begin
      Dm_Sv.QColrtran1.FieldByName('CODE').Asstring := Dm_Sv.QTabserv.FieldByName('SVCODE').Asstring;
      Dm_Sv.QColrtran1.FieldByName('DESC1').Asstring := Dm_Sv.QTabserv.FieldByName('DESCP').Asstring;
      Dm_Sv.QColrtran1.FieldByName('PRICE').AsFloat := Dm_Sv.QTabserv.FieldByName('SVPRIC').AsFloat;
      Dm_Sv.QColrtran1.FieldByName('FRT').AsFloat := 1;
      Dm_Sv.QColrtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QTabserv.FieldByName('SVPRIC').AsFloat;
    end
    else
      Messagebeep(0);
    //
    if XOFFICER <> '' then
      Dm_Sv.QColrtran1.FieldByName('SERVCOD').Asstring := XOFFICER;
  end;

  if DBGrid_Cr.SelectedField.FieldName = 'FRT' then
  begin
    if Dm_Sv.QColrtran1.FieldByName('Redu').AsFloat = 0 then
      Dm_Sv.QColrtran1.FieldByName('Redu').AsFloat := Dm_sv.QJoborder2DISCCO.Asfloat;
  end;

  if (DBGrid_Cr.SelectedField.FieldName = 'REDU') or
    (DBGrid_Cr.SelectedField.FieldName = 'DISCAMT') then
  begin
    Amt := (Dm_Sv.QColrtran1.FieldByName('PRICE').AsFloat * (1 - Dm_Sv.QColrtran1.FieldByName('REDU').AsFloat / 100)) - Dm_Sv.QColrtran1.FieldByName('DISCAMT').AsFloat;
    Dm_Sv.QColrtran1.FieldByName('NETPRIC').AsFloat := StrTofloat(FloattostrF((Amt), ffFixed, 15, 2));
  end;

  if DBGrid_Cr.SelectedField.FieldName = 'SERVCOD' then
  begin
    with Dm_Sv.QOfficer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE= :XCODE  ');
      Params[0].Asstring := Dm_Sv.QColrtran1.FieldByName('SERVCOD').Asstring;
      Open;
    end;
    if Dm_Sv.QOfficer.Bof and Dm_Sv.QOfficer.eof then
      SFMain.RaiseException('ไม่มีรหัสพนักงานนี้ในแฟ้มข้อมูล');
    Dm_Sv.QColrtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QOfficer.FieldByName('ENCODE').Asstring;
    XOFFICER := Dm_Sv.QColrtran1.FieldByName('SERVCOD').Asstring;
  end;
  if DBGrid_Cr.SelectedField.FieldName = 'UCOST' then
  begin
    Dm_Sv.QColrtran1.FieldByName('Totcost').AsFloat := Dm_Sv.QColrtran1.FieldByName('Ucost').AsFloat;
  end;
end;

procedure TSvIn_30.DbGrid_CrDblClick(Sender: TObject);
begin
  if DBGrid_Cr.Readonly = False then
  begin
    if DBGrid_Cr.SelectedField.FieldName = 'CODE' then
    begin
      if Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring = '' then
        SFMain.RaiseException('ยังไม่บันทึกหมายเลข JOB');
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalTabsv = Mrok then
      begin
        Dm_Sv.QColrtran1.FieldByName('CODE').Asstring := fSrcDlg1.qrFindDat.FieldByName('SVCODE').Asstring;
      end;
    end;

    if DBGrid_Cr.SelectedField.FieldName = 'SERVCOD' then
    begin
      Application.Createform(TfFindData, fFindData);
      if fFindData.ShowModalEngineer = Mrok then
      begin
        with Dm_Sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE = :XCODE ');
          Params[0].Asstring := fFindData.KeyNo;
          Open;
        end;
        if Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
          SFMain.RaiseException('ไม่มีข้อมูล');
        Dm_Sv.QColrtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('ENCODE').Asstring;
      end;
    end;

    if DBGrid_Cr.SelectedField.FieldName = 'SERTIME' then
    begin
      Application.CreateForm(TFsvtime, Fsvtime);
      Fsvtime.Jobno1 := dm_sv.QColrtran1.FieldByName('JOBNO').Asstring;
      Fsvtime.Servcod1 := dm_sv.QColrtran1.FieldByName('Servcod').Asstring;
      Fsvtime.Code1 := dm_sv.QColrtran1.FieldByName('Code').Asstring;
      Fsvtime.Flag1 := '4';
      Fsvtime.SvTime.Close;
      Fsvtime.SvTime.MasterSource := Dm_sv.SoColrtran1;

      if Fsvtime.ShowModal = MrOk then
      begin
        with Dm_sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT Sum(UseTime) As UseTime FROM SVTIME WHERE JOBNO= :XJOB AND SERVCOD= :XSVCOD AND CODE=:Xcode ' +
            ' AND FLAG =:Xflag');
          Params[0].Asstring := dm_sv.QColrtran1.FieldByName('JOBNO').Asstring;
          Params[1].Asstring := dm_sv.QColrtran1.FieldByName('Servcod').Asstring;
          Params[2].Asstring := dm_sv.QColrtran1.FieldByName('Code').Asstring;
          Params[3].asstring := '4';
          Open;
        end;
        dm_sv.QColrtran1.FieldByName('SERTIME').AsFloat := Dm_sv.Query1.FieldByName('Usetime').Asfloat;
      end;
    end;

    if DbGrid_Cr.SelectedField.FieldName = 'CUSCOD' then
    begin
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalAR = Mrok then
      begin
        if Dm_Sv.QColrtran1.State = Dsbrowse then
          Dm_Sv.QColrtran1.Edit;
        Dm_Sv.QColrtran1.FieldByName('CUSCOD').Asstring := fSrcDlg1.Keyno;
      end;
    end;
  end;
end;

procedure TSvIn_30.OLCnBtnClick(Sender: TObject);
begin
  Dm_Sv.QJoborder2.FieldByName('SERVAMT').AsFloat := Dm_Sv.QJoborder2.FieldByName('OILAMT').AsFloat
    - Dm_Sv.QOiltran1.FieldByName('NETPRIC').AsFloat;
  if Dm_Sv.QOiltran1.Active then
    Dm_Sv.QOiltran1.CancelUpdates;
end;

procedure TSvIn_30.OtCnBtnClick(Sender: TObject);
begin
  Dm_Sv.QJoborder2.FieldByName('OUTJAMT').AsFloat := Dm_Sv.QJoborder2.FieldByName('OUTJAMT').AsFloat
    - Dm_Sv.QOuttran1.FieldByName('NETPRIC').AsFloat;
  if Dm_Sv.QOuttran1.Active then
    Dm_Sv.QOuttran1.CancelUpdates;
end;

procedure TSvIn_30.ClCnBtnClick(Sender: TObject);
begin
  Dm_Sv.QJoborder2.FieldByName('COLRAMT').AsFloat := Dm_Sv.QJoborder2.FieldByName('COLORAMT').AsFloat
    - Dm_Sv.QColrtran1.FieldByName('NETPRIC').AsFloat;
  if Dm_Sv.QColrtran1.Active then
    Dm_Sv.QColrtran1.CancelUpdates;
end;

procedure TSvIn_30.SpeedButton3Click(Sender: TObject);
begin
  if (Dm_Sv.QJoborder2SERVTOT.AsFloat > 0) and (Dm_Sv.QServtran1.RecordCount = 0) then
    sfmain.RaiseException('กรุณาบันทึกค่าบริการมาตรฐาน..!');

  if (Dm_Sv.QJoborder2PARTTOT.AsFloat > 0) and (Dm_Sv.QParttran1.RecordCount = 0) then
    sfmain.RaiseException('กรุณาบันทึกรายการอะไหล่..!');

  if (Dm_Sv.QJoborder2OILTOT.AsFloat > 0) and (Dm_Sv.QOiltran1.RecordCount = 0) then
    sfmain.RaiseException('กรุณาบันทึกรายการน้ำมัน..!');

  if (Dm_Sv.QJoborder2OUTJTOT.AsFloat > 0) and (Dm_Sv.QOuttran1.RecordCount = 0) then
    sfmain.RaiseException('กรุณาบันทึกค่าบริการงานนอก..!');

  if (Dm_Sv.QJoborder2COLORTOT.AsFloat > 0) and (Dm_Sv.QColrtran1.RecordCount = 0) then
    sfmain.RaiseException('กรุณาบันทึกค่าบริการงานสี..!');

  if Dm_sv.QJoborder2RFINSHDT.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกวันที่ปิด JOB');
  if Dm_sv.QJoborder2REPCOD.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกช่างผู้รับผิดชอบ');

  if Dm_Sv.QJoborder2.State = Dsbrowse then
    Dm_Sv.QJoborder2.Edit;
  Dm_Sv.QJoborder2.FieldByName('STATUS').Asstring := 'F';
  //
  with Dm_sv do
  begin
    QServtran1.First;
    if not (QServtran1.Bof and QServtran1.Eof) then
    begin
      QServtran1.Edit;
      QServtran1.Post;
    end;
    //
    QParttran1.First;
    if not (QParttran1.Bof and QParttran1.Eof) then
    begin
      QParttran1.Edit;
      QParttran1.Post;
    end;
    //
    QOuttran1.First;
    if not (QOuttran1.Bof and QOuttran1.Eof) then
    begin
      QOuttran1.Edit;
      QOuttran1.Post;
    end;
    //
    QOiltran1.First;
    if not (QOiltran1.Bof and QOiltran1.Eof) then
    begin
      QOiltran1.Edit;
      QOiltran1.Post;
    end;
    //
    QColrtran1.First;
    if not (QColrtran1.Bof and QColrtran1.Eof) then
    begin
      QColrtran1.Edit;
      QColrtran1.Post;
    end;
  end;
  //
  if Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'W' then
    LabelStat.Caption := 'อยู่ระหว่างการซ่อม';
  if Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'F' then
    LabelStat.Caption := 'ซ่อมเสร็จแล้วรอลูกค้ามารับ';
  if Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'R' then
    LabelStat.Caption := 'ลูกค้ารับรถไปแล้ว';
  //
  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV1_04', 'END', DBEdit30.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_Sv.QJoborder2.Post;
end;

procedure TSvIn_30.SpeedButton4Click(Sender: TObject);
begin
  if Dm_sv.QJoborder2.FieldByName('JOBNO').Asstring = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสารอ้างอิง..!');

  if Dm_Sv.QJoborder2.FieldByName('PTAXNO').Asstring <> '' then
    SFMain.RaiseException('ออกใบกำกับภาษีแล้ว...! ' + Dm_Sv.QJoborder2.FieldByName('PTAXNO').Asstring);

  if Dm_sv.QJoborder2.FieldByName('Status').Asstring = 'R' then
    SFMain.RaiseException('ยกเลิกการรับรถก่อน');

  case sfmain.AdvSmoothMessageDialog6.ExecuteDialog of
    mrOk:
      begin
        Dm_Sv.QJoborder2.Edit;
        with Dm_sv do
        begin
          QParttran1.First;
          if not (QParttran1.Bof and QParttran1.Eof) then
          begin
            QParttran1.Edit;
            QParttran1.Post;
          end;
       //
          QOiltran1.First;
          if not (QOiltran1.Bof and QOiltran1.Eof) then
          begin
            QOiltran1.Edit;
            QOiltran1.Post;
          end;
        end;
        Dm_Sv.QJoborder2.FieldByName('APP_DATE').Asstring := '';
        Dm_Sv.QJoborder2.FieldByName('REPCOD').Asstring := '';
        Dm_Sv.QJoborder2.FieldByName('RFINSHDT').Asstring := '';
        Dm_Sv.QJoborder2.FieldByName('RFINSHTM').Asstring := '';
        Dm_Sv.QJoborder2.FieldByName('APP_MILE').AsFloat := 0;
        Dm_Sv.QJoborder2.FieldByName('STATUS').Asstring := 'W';
        Dm_Sv.QJoborder2.Post;
      end;
  end;

  if Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'W' then
    LabelStat.Caption := 'อยู่ระหว่างการซ่อม';
  if Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'F' then
    LabelStat.Caption := 'ซ่อมเสร็จแล้วรอลูกค้ามารับ';
  if Dm_Sv.QJoborder2.FieldByName('Status').Asstring = 'R' then
    LabelStat.Caption := 'ลูกค้ารับรถไปแล้ว';

  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV1_04', 'REDU', DBEdit30.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

  DBkbd1.AllowEditing := Dm_Sv.QJoborder2.Fieldbyname('Status').Asstring = 'W';
end;

procedure TSvIn_30.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  DBkbd1.AllowEditing := Dm_Sv.QJoborder2.Fieldbyname('Status').Asstring = 'W';

  SpeedButton3.Visible := (Dm_Sv.QJoborder2.FieldByName('STATUS').Asstring = 'W');
  SpeedButton4.Visible := (not SpeedButton3.Visible);
  SvInBtn.Enabled := (SpeedButton3.Visible) and (DataSource1.State in DsEditmodes);
  SvDlBtn.Enabled := SvInBtn.Enabled;
  AutoBtn.Enabled := SvInBtn.Enabled;
  OtInBtn.Enabled := SvInBtn.Enabled;
  OtDlBtn.Enabled := SvInBtn.Enabled;
  ClInBtn.Enabled := SvInBtn.Enabled;
  ClDlBtn.Enabled := SvInBtn.Enabled;
  RepBtn.Enabled := SvInBtn.Enabled;
  rzFbtCupong.Enabled := (SvInBtn.Enabled) and (Dm_Sv.QJoborder2.FieldByName('CUPONGNO').Asstring <> '');
  DBEdit58.Enabled := SvInBtn.Enabled;
  CampBtn.Enabled := (SvInBtn.Enabled) and (Dm_Sv.QJoborder2.FieldByName('CAMPNO').Asstring <> '');

  DBEdit37.Enabled := SpeedButton3.Visible;
  DBEdit6.Enabled := SpeedButton3.Visible;
  SpeedButton11.Enabled := (SpeedButton3.Visible) and (DBEdit37.Text <> '');

  SpeedButton15.Enabled := SvInBtn.Enabled;
  SpeedButton16.Enabled := SvInBtn.Enabled;
end;

procedure TSvIn_30.AutoBtnClick(Sender: TObject);
begin
  if cxDBButtonEdit1.Text = '' then
    sfmain.RaiseException('ยังไม่ได้ระบุกลุ่มงาน');

  if cxTextEdit1.Text = '' then
    sfmain.RaiseException('ยังไม่ได้ระบุรุ่น');

  Application.CreateForm(TSvInHlp_20, SvInHlp_20);
  SvInHlp_20.Edit1.Text := Dm_Sv.QJoborder2.FieldByname('GROUP1').asstring;
  SvInHlp_20.cxTextEdit1.Text := cxTextEdit1.Text;
  SvInHlp_20.getdata;

  if (SvInHlp_20.QHlpord.Eof and SvInHlp_20.QHlpord.Bof) then
    sfmain.RaiseException('ยังไม่ได้กำหนดระยะซ่อมทำไว้...!');

  if SvInHlp_20.ShowModal = MrOk then
  begin
    with Dm_Sv.QServtran1 do
    begin
      close;
      sql.Clear;
      sql.Add('DELETE FROM SERVTRAN WHERE JOBNO =:EDIT1 ');
      Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
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
        Dm_Sv.QServtran1.Append;
        Dm_Sv.QServtran1.FieldByName('CODE').Asstring := SvInHlp_20.QHlpserv.FieldByName('SVCODE').Asstring;
        Dm_Sv.QServtran1.FieldByName('DESC1').Asstring := SvInHlp_20.QHlpserv.FieldByName('DESC1').Asstring;
        Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat := SvInHlp_20.QHlpserv.FieldByName('PRC_EST').AsFloat; //SvInHlp_20.QHlpserv.FieldByName('FRT').AsFloat;
        Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat := Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat; //*SvInHlp_20.QHlpserv.FieldByName('FRT').AsFloat;//Dm_Sv.QTabserv.FieldByName('SVPRIC').AsFloat;
        Dm_Sv.QServtran1.FieldByName('FRT').AsFloat := SvInHlp_20.QHlpserv.FieldByName('FRT').AsFloat;
        Dm_Sv.QServtran1.FieldByName('SERTIME').AsFloat := SvInHlp_20.QHlpserv.FieldByName('FRT').AsFloat;
        Dm_Sv.QServtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat;
        Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('RECVCOD').Asstring;
        Dm_Sv.QServtran1.Post;
      end;
      SvInHlp_20.QHlpserv.Next;
    end;

    SvInHlp_20.QHlpord.First;
    while not (SvInHlp_20.QHlpord.Eof) do
    begin
      if SvInHlp_20.QHlpord.FieldByName('MARK').Asstring = 'Y' then
      begin
        Dm_Sv.QServtran1.Append;
        Dm_Sv.QServtran1.FieldByName('CODE').Asstring := SvInHlp_20.QHlpord.FieldByName('SVCODE').Asstring;
        Dm_Sv.QServtran1.FieldByName('DESC1').Asstring := SvInHlp_20.QHlpord.FieldByName('DESCRP').Asstring;
        Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat := SvInHlp_20.QHlpord.FieldByName('PRC_EST').AsFloat;
        Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat := Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat; //Dm_Sv.QTabserv.FieldByName('SVPRIC').AsFloat;
        Dm_Sv.QServtran1.FieldByName('FRT').AsFloat := 0;
        Dm_Sv.QServtran1.FieldByName('SERTIME').AsFloat := 0;
        Dm_Sv.QServtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat;
        Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('RECVCOD').Asstring;
        Dm_Sv.QServtran1.Post;
      end;
      SvInHlp_20.QHlpord.Next;
    end;
    Dm_Sv.QServtran1.First;
  end;
end;

procedure TSvIn_30.DBGrid_PtDblClick(Sender: TObject);
begin
  if DBGrid_Pt.Readonly = False then
  begin
    if DBGrid_Pt.SelectedField.FieldName = 'SERVCOD' then
    begin
      Application.Createform(TfFindData, fFindData);
      if fFindData.ShowModalEngineer = Mrok then
      begin
        with Dm_Sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE= :XCODE ');
          Params[0].Asstring := fFindData.KeyNo;
          Open;
        end;
        if Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
          SFMain.RaiseException('ไม่มีข้อมูล');
        if Dm_sv.QParttran1.state = dsbrowse then
          Dm_sv.QParttran1.Edit;
        Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('ENCODE').Asstring;
      end;
    end;

    if DbGrid_Pt.SelectedField.FieldName = 'CUSCOD' then
    begin
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalAR = Mrok then
      begin
        if Dm_Sv.QParttran1.State = Dsbrowse then
          Dm_Sv.QParttran1.Edit;
        Dm_Sv.QParttran1.FieldByName('CUSCOD').Asstring := fSrcDlg1.Keyno;
      end;
    end;
    if DBGrid_Pt.SelectedField.FieldName = 'SERTIME' then
    begin
      Application.CreateForm(TFsvtime, Fsvtime);
      Fsvtime.Jobno1 := dm_sv.QParttran1.FieldByName('JOBNO').Asstring;
      Fsvtime.Servcod1 := dm_sv.QParttran1.FieldByName('Servcod').Asstring;
      Fsvtime.Code1 := dm_sv.QParttran1.FieldByName('Code').Asstring;
      Fsvtime.Flag1 := '5';
      Fsvtime.SvTime.Close;
      Fsvtime.SvTime.MasterSource := Dm_sv.SoParttran1;
      if Fsvtime.ShowModal = MrOk then
      begin
        with Dm_sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT Sum(UseTime) As UseTime FROM SVTIME WHERE JOBNO= :XJOB AND SERVCOD= :XSVCOD AND CODE=:Xcode ' +
            ' AND FLAG =:Xflag');
          Params[0].Asstring := dm_sv.QParttran1.FieldByName('JOBNO').Asstring;
          Params[1].Asstring := dm_sv.QParttran1.FieldByName('Servcod').Asstring;
          Params[2].Asstring := dm_sv.QParttran1.FieldByName('Code').Asstring;
          Params[3].asstring := '5';
          Open;
        end;
        if Dm_Sv.QParttran1.State = Dsbrowse then
          Dm_Sv.QParttran1.Edit;
        dm_sv.QParttran1.FieldByName('SERTIME').AsFloat := Dm_sv.Query1.FieldByName('Usetime').Asfloat;
      end;
    end;
  end;
end;

procedure TSvIn_30.DBGrid_PtColExit(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3, Amt: Double;
begin
  SetRoundMode(rmNearest);
  if Dm_Sv.QParttran1.State = Dsinsert then
  begin
    Dm_Sv.QParttran1.Cancel;
    SFMain.RaiseException('เพิ่มรายการ ไม่ได้ ต้องเบิกจ่ายด้านอะไหล่');
  end;
  if Dm_sv.QParttran1.Fieldbyname('NETFL').Asstring = 'N' then
  begin
    DBGrid_Pt.Columns[3].Readonly := True;
    DBGrid_Pt.Columns[4].Readonly := True;
    DBGrid_Pt.Columns[5].Readonly := True;
    DBGrid_Pt.Columns[6].Readonly := True;
  end
  else
  begin
    DBGrid_Pt.Columns[3].Readonly := XEditDisc <> 'Y';
    DBGrid_Pt.Columns[4].Readonly := XEditDisc <> 'Y';
    DBGrid_Pt.Columns[5].Readonly := XEditDisc <> 'Y';
    DBGrid_Pt.Columns[6].Readonly := XEditDisc <> 'Y';
  end;
  if (DBGrid_Pt.SelectedField.FieldName = 'REDU1') or
    (DBGrid_Pt.SelectedField.FieldName = 'REDU2') or
    (DBGrid_Pt.SelectedField.FieldName = 'REDU3') or
    (DBGrid_Pt.SelectedField.FieldName = 'DISCAMT') then
  begin
    Dm_sv.QParttran1.Edit;
    if XOFFICER <> '' then
      Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring := XOFFICER
    else
      Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring := dm_sv.QJoborder2.FieldByName('RECVCOD').Asstring;
    //
    if Dm_Sv.QParttran1.FieldByName('FREE').Asstring = 'N' then
    begin
      //
      Pric1 := Roundto((Dm_sv.QParttran1.Fieldbyname('Uprice').Asfloat * (Dm_sv.QParttran1.Fieldbyname('Redu1').asfloat / 100)), -2);
      SmPric1 := Dm_sv.QParttran1.Fieldbyname('Uprice').Asfloat - Pric1;
      Pric2 := SmPric1 * (Dm_sv.QParttran1.Fieldbyname('Redu2').asfloat / 100);
      SmPric2 := SmPric1 - Pric2;
      Pric3 := SmPric2 * (Dm_sv.QParttran1.Fieldbyname('Redu3').asfloat / 100);
      SmPric3 := SmPric2 - Pric3;
      Dm_sv.QParttran1.Fieldbyname('Netprc').asfloat := SmPric3 - Dm_sv.QParttran1.Fieldbyname('Discamt').asfloat;
      Amt := Dm_sv.QParttran1.Fieldbyname('Netprc').asfloat * Dm_sv.QParttran1.Fieldbyname('Qty').asfloat;
      Dm_sv.QParttran1.Fieldbyname('Totprc').asfloat := StrTofloat(FloattostrF((Amt), ffFixed, 15, 2));
    end
    else
      Dm_sv.QParttran1.Fieldbyname('Totprc').asfloat := 0;
  end;

  if DBGrid_Pt.SelectedField.FieldName = 'SERVCOD' then
  begin
    with Dm_Sv.QOfficer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE= :XCODE  ');
      Params[0].Asstring := Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring;
      Open;
    end;
    if Dm_Sv.QOfficer.Bof and Dm_Sv.QOfficer.eof then
      SFMain.RaiseException('ไม่มีรหัสพนักงานนี้ในแฟ้มข้อมูล');

    if not (Dm_Sv.QParttran1.State in DsEditmodes) then
      Dm_Sv.QParttran1.Edit;
    Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QOfficer.FieldByName('ENCODE').Asstring;
    XOFFICER := Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring;
  end;
end;

procedure TSvIn_30.DBCheckBox1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Dm_Sv.QParttran1.Post;
end;

procedure TSvIn_30.RepBtnClick(Sender: TObject);
var
  I: Integer;
  Lb, Code: string;
begin
  sfmain.AdvSmoothMessageDialog6.HTMLText.Text := 'ต้องการดึงรายการคำสั่งซ่อม ?';
  case sfmain.AdvSmoothMessageDialog6.ExecuteDialog of
    mrOk:
      begin
        with Dm_Sv.QServtran1 do
        begin
          close;
          sql.Clear;
          sql.Add('DELETE FROM SERVTRAN WHERE JOBNO =:EDIT1 ');
          Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
          execSql;

          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = '''' ');
          Open;
        end;

        with Dm_Sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ORDREP WHERE JOBNO = :XNO ');
          Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
          Open;
        end;
        Lb := 'LB-';
        I := 0;

        Dm_Sv.Query1.First;
        while not (Dm_Sv.Query1.Eof) do
        begin
          I := I + 1;
          Code := Lb + sfMain.ZeroLead(InttoStr(I), 3);

          Dm_Sv.QServtran1.Append;
          Dm_Sv.QServtran1.FieldByName('CODE').Asstring := Code;
          Dm_Sv.QServtran1.FieldByName('DESC1').Asstring := Dm_Sv.Query1.Fieldbyname('REPDESC').Asstring;
          Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('REPCOD').Asstring;
          Dm_Sv.QServtran1.FieldByName('FRT').AsFloat := 1;
          Dm_Sv.QServtran1.Post;
          Dm_Sv.Query1.Next;
        end;
      end;
  end;
end;

procedure TSvIn_30.DBGrid_OLColExit(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3, Amt: Double;
begin
  if Dm_Sv.QOiltran1.State = Dsinsert then
  begin
    Dm_Sv.QOiltran1.Cancel;
    SFMain.RaiseException('เพิ่มรายการ ไม่ได้ ต้องเบิกจ่ายด้านอะไหล่');
  end;
  if Dm_sv.QOiltran1.Fieldbyname('NETFL').Asstring = 'N' then
  begin
    DBGrid_OL.Columns[3].Readonly := True;
    DBGrid_OL.Columns[4].Readonly := True;
    DBGrid_OL.Columns[5].Readonly := True;
    DBGrid_OL.Columns[6].Readonly := True;
  end
  else
  begin
    DBGrid_OL.Columns[3].Readonly := XEditDisc <> 'Y';
    DBGrid_OL.Columns[4].Readonly := XEditDisc <> 'Y';
    DBGrid_OL.Columns[5].Readonly := XEditDisc <> 'Y';
    DBGrid_OL.Columns[6].Readonly := XEditDisc <> 'Y';
  end;

  if (DBGrid_OL.SelectedField.FieldName = 'REDU1') or
    (DBGrid_OL.SelectedField.FieldName = 'REDU2') or
    (DBGrid_OL.SelectedField.FieldName = 'REDU3') or
    (DBGrid_OL.SelectedField.FieldName = 'DISCAMT') then
  begin
    Dm_sv.QOiltran1.Edit;

    if XOFFICER <> '' then
      Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring := XOFFICER
    else
      Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring := dm_sv.QJoborder2.FieldByName('RECVCOD').Asstring;

    if Dm_Sv.QOiltran1.FieldByName('FREE').Asstring = 'N' then
    begin
      Pric1 := Roundto((Dm_sv.QOiltran1.Fieldbyname('Uprice').Asfloat * (Dm_sv.QOiltran1.Fieldbyname('Redu1').asfloat / 100)), -2);
      SmPric1 := Dm_sv.QOiltran1.Fieldbyname('Uprice').Asfloat - Pric1;
      Pric2 := SmPric1 * (Dm_sv.QOiltran1.Fieldbyname('Redu2').asfloat / 100);
      SmPric2 := SmPric1 - Pric2;
      Pric3 := SmPric2 * (Dm_sv.QOiltran1.Fieldbyname('Redu3').asfloat / 100);
      SmPric3 := SmPric2 - Pric3;
      Dm_sv.QOiltran1.Fieldbyname('Netprc').asfloat := SmPric3 - Dm_sv.QOiltran1.Fieldbyname('Discamt').asfloat;
      Amt := Dm_sv.QOiltran1.Fieldbyname('Netprc').asfloat * Dm_sv.QOiltran1.Fieldbyname('Qty').asfloat;
      Dm_sv.QOiltran1.Fieldbyname('Totprc').asfloat := StrTofloat(FloattostrF((Amt), ffFixed, 15, 2));
    end
    else
      Dm_sv.QOiltran1.Fieldbyname('Totprc').asfloat := 0;
  end;

  if DBGrid_OL.SelectedField.FieldName = 'SERVCOD' then
  begin
    with Dm_Sv.QOfficer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE= :XCODE  ');
      Params[0].Asstring := Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring;
      Open;
    end;
    if Dm_Sv.QOfficer.Bof and Dm_Sv.QOfficer.eof then
      SFMain.RaiseException('ไม่มีรหัสพนักงานนี้ในแฟ้มข้อมูล');

    if not (Dm_Sv.QOiltran1.State in DsEditmodes) then
      Dm_Sv.QOiltran1.Edit;
    Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QOfficer.FieldByName('ENCODE').Asstring;
    XOFFICER := Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring;
  end;
end;

procedure TSvIn_30.DBGrid_OLDblClick(Sender: TObject);
begin
  if DBGrid_OL.Readonly = False then
  begin
    if DBGrid_OL.SelectedField.FieldName = 'SERVCOD' then
    begin
      Application.Createform(TfFindData, fFindData);
      if fFindData.ShowModalEngineer = Mrok then
      begin
        with Dm_Sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE= :XCODE ');
          Params[0].Asstring := fFindData.KeyNo;
          Open;
        end;
        if Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
          SFMain.RaiseException('ไม่มีข้อมูล');
        Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('ENCODE').Asstring;
      end;
    end;

    if DbGrid_OL.SelectedField.FieldName = 'CUSCOD' then
    begin
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalAR = Mrok then
      begin
        if Dm_Sv.QOiltran1.State = Dsbrowse then
          Dm_Sv.QOiltran1.Edit;
        Dm_Sv.QOiltran1.FieldByName('CUSCOD').Asstring := fSrcDlg1.Keyno;
      end;
    end;
  end;
end;

procedure TSvIn_30.SpeedButton10Click(Sender: TObject);
begin
  Dm_Sv.QOuttran1.First;
  while not Dm_Sv.QOuttran1.Eof do
  begin
    Dm_Sv.QOuttran1.Edit;
    if (RadioGroup1.Itemindex = 0) then
    begin
      Dm_Sv.QOuttran1.FieldByName('UPRICE').AsFloat := Dm_Sv.QOuttran1.FieldByName('Ucost').AsFloat * (1 + Dm_Sv.QJoborder2OUTADD.Asfloat / 100);
    end;

    if (RadioGroup1.Itemindex = 1) then
    begin
      Dm_Sv.QOuttran1.FieldByName('UCOST').AsFloat := Dm_Sv.QOuttran1.FieldByName('Ucost').AsFloat * (100 - Dm_Sv.QJoborder2OUTADD.Asfloat) / 100;
    end;
    Dm_Sv.QOuttran1.FieldByName('TOTPRIC').AsFloat := Dm_Sv.QOuttran1.FieldByName('UPRICE').AsFloat
      * Dm_Sv.QOuttran1.FieldByName('QTY').AsFloat;

    Dm_Sv.QOuttran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QOuttran1.FieldByName('TOTPRIC').AsFloat *
      (1 - Dm_Sv.QOuttran1.FieldByName('REDU').AsFloat / 100);

    Dm_Sv.QOuttran1.Next;
  end;
end;

procedure TSvIn_30.PageControl1Change(Sender: TObject);
var
  Vatamt, SumNet, Tmp: Double;
begin
//  If PageControl1.ActivePage =TabSheet7 Then
//  Begin
  if Dm_Sv.QJoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    SumNet := Dm_Sv.QJoborder2.FieldByName('Partnet').AsFloat +
      Dm_Sv.QJoborder2.FieldByName('oilnet').AsFloat +
      Dm_Sv.QJoborder2.FieldByName('TSv_net').AsFloat;

    Tmp := Roundto(SumNet * Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat / 100, -2);
    Vatamt := Tmp;
    Sumtot := SumNet + Vatamt;
  end
  else
  begin
    Sumtot := Dm_Sv.QJoborder2.FieldByName('Parttot').AsFloat +
      Dm_Sv.QJoborder2.FieldByName('oiltot').AsFloat +
      Dm_Sv.QJoborder2.FieldByName('TSv_tot').AsFloat;
    Tmp := FRound(Sumtot * Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat / (100 + Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat), 2);
    Vatamt := Tmp;
    SumNet := Sumtot - Vatamt;
  end;
  Edit1.text := Formatfloat('#,##0.00', SumNet);
  Edit2.text := Formatfloat('#,##0.00', Vatamt);
  Edit3.text := Formatfloat('#,##0.00', Sumtot);
  Edit1.Update;
  Edit2.Update;
  Edit3.Update;
  Outbtn.Enabled := (Sumtot = 0);
    //
  with Dm_Sv.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select Jobno,TOTPRC AS SUM1 From PartTran Where Jobno =:Jobnono AND Claim=''I'' ' +
      'UNION ALL ' +
      'Select Jobno,NETPRIC AS SUM1 From ServTran Where Jobno =:Jobnono AND Claim=''I'' ' +
      'UNION ALL ' +
      'Select Jobno,NETPRIC AS SUM1 From ColrTran Where Jobno =:Jobnono AND Claim=''I'' ' +
      'UNION ALL ' +
      'Select Jobno,NETPRIC AS SUM1 From Outtran Where Jobno =:Jobnono AND Claim=''I'' ');
    Params[0].AsString := Dm_Sv.QJoborder2.FieldByName('Jobno').AsString;
    Open;
  end;
  if Dm_Sv.QJoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    SumNet := 0;
    Dm_Sv.Query1.First;
    while not Dm_Sv.Query1.Eof do
    begin
      SumNet := SumNet + Dm_Sv.Query1.Fieldbyname('Sum1').Asfloat;
      Dm_Sv.Query1.Next;
    end;
    Tmp := SumNet * Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat / 100;
    Vatamt := Strtofloat(FloattostrF(Tmp, ffFixed, 15, 2));
    Sumtot := SumNet + Vatamt;
  end
  else
  begin
    Sumtot := 0;
    Dm_Sv.Query1.First;
    while not Dm_Sv.Query1.Eof do
    begin
      Sumtot := Sumtot + Dm_Sv.Query1.Fieldbyname('Sum1').Asfloat;
      Dm_Sv.Query1.Next;
    end;
    Tmp := Sumtot * Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat / (100 + Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat);
    Vatamt := Strtofloat(FloattostrF(Tmp, ffFixed, 15, 2));
    SumNet := Sumtot - Vatamt;
  end;
  Edit4.text := Formatfloat('#,##0.00', SumNet);
  Edit5.text := Formatfloat('#,##0.00', Vatamt);
  Edit6.text := Formatfloat('#,##0.00', Sumtot);
  Edit4.Update;
  Edit5.Update;
  Edit6.Update;
    //
  with Dm_Sv.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select Jobno,TOTPRC AS SUM1 From PartTran Where Jobno =:Jobnono AND Claim=''S'' ' +
      'UNION ALL ' +
      'Select Jobno,NETPRIC AS SUM1 From ServTran Where Jobno =:Jobnono AND Claim=''S'' ');
    Params[0].AsString := Dm_Sv.QJoborder2.FieldByName('Jobno').AsString;
    Open;
  end;
  if Dm_Sv.QJoborder2.FieldByName('Vattype').Asstring = '2' then
  begin
    SumNet := 0;
    Dm_Sv.Query1.First;
    while not Dm_Sv.Query1.Eof do
    begin
      SumNet := SumNet + Dm_Sv.Query1.Fieldbyname('Sum1').Asfloat;
      Dm_Sv.Query1.Next;
    end;
    Tmp := SumNet * Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat / 100;
    Vatamt := Strtofloat(FloattostrF(Tmp, ffFixed, 15, 2));
    Sumtot := SumNet + Vatamt;
  end
  else
  begin
    Sumtot := 0;
    Dm_Sv.Query1.First;
    while not Dm_Sv.Query1.Eof do
    begin
      Sumtot := Sumtot + Dm_Sv.Query1.Fieldbyname('Sum1').Asfloat;
      Dm_Sv.Query1.Next;
    end;
    Tmp := Sumtot * Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat / (100 + Dm_Sv.QJoborder2.FieldByName('Vat').AsFloat);
    Vatamt := Strtofloat(FloattostrF(Tmp, ffFixed, 15, 2));
    SumNet := Sumtot - Vatamt;
  end;
  Edit7.text := Formatfloat('#,##0.00', SumNet);
  Edit8.text := Formatfloat('#,##0.00', Vatamt);
  Edit9.text := Formatfloat('#,##0.00', Sumtot);
  Edit7.Update;
  Edit8.Update;
  Edit9.Update;
  // End;
end;

procedure TSvIn_30.DBCheckBox3MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Dm_Sv.QOiltran1.Post;
end;

procedure TSvIn_30.OutbtnClick(Sender: TObject);
begin
  if Dm_sv.QJoborder2.FieldByName('JOBNO').Asstring = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสารอ้างอิง..!');

  Application.CreateForm(TFOutcar, FOutcar);
  FOutcar.Showmodal;
end;

procedure TSvIn_30.DBCheckBox6MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Xsvrt: Double;
begin
  if (DBCheckBox6.Checked) and (MessageDlg('ต้องการให้คำนวณจากอัตราเคลมที่ Setup ไว้ หรือไม่ ?', MtConfirmation, [mbYes, mbNo], 0) = MrYes) then
  begin
    Xsvrt := Dm_Sv.Condpay.Fieldbyname('Svrate2').Asfloat;
    if Dm_Sv.QServtran1.State in Dseditmodes then
    begin
      Dm_Sv.QServtran1.FieldByName('CLAIM').Asstring := 'Y';
      Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat := Xsvrt;
      Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat := Dm_Sv.QServtran1.FieldByName('FRT').AsFloat * Xsvrt;
      Dm_Sv.QServtran1.FieldByName('NETPRIC').AsFloat := Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat *
        (1 - Dm_Sv.QServtran1.FieldByName('REDU').AsFloat / 100);
    end;
  end;
  Dm_Sv.QServtran1.Post;
end;

procedure TSvIn_30.DBCheckBox7MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Dm_Sv.QServtran1.Post;
end;

procedure TSvIn_30.DBGrid_SvEnter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TSvIn_30.DBGrid_SvExit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TSvIn_30.DBCheckBox8MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Dm_Sv.QColrtran1.Post;
end;

procedure TSvIn_30.DBCheckBox10MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Dm_Sv.QOuttran1.Post;
end;

procedure TSvIn_30.CampBtnClick(Sender: TObject);
begin
  sfmain.AdvSmoothMessageDialog6.HTMLText.Text := 'ต้องการ Add ตามแคมเปญ Setup ?';
  case sfmain.AdvSmoothMessageDialog6.ExecuteDialog of
    mrOk:
      begin
        with Dm_sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM CAMPSERV WHERE CAMPNO=:Edit1 ');
          Params[0].Asstring := Dm_Sv.QJoborder2.Fieldbyname('Campno').Asstring;
          Open;
        end;
        if not (Dm_sv.Query1.Bof and Dm_sv.Query1.Eof) then
        begin
          Dm_sv.Query1.First;
          while not (Dm_sv.Query1.Eof) do
          begin
            Dm_Sv.QServtran1.Append;
            Dm_Sv.QServtran1.FieldByName('code').AsString := Dm_sv.Query1.FieldByName('Code').Asstring;
            Dm_Sv.QServtran1.FieldByName('Desc1').AsString := Dm_sv.Query1.FieldByName('Desc1').Asstring;
            Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat := Dm_sv.Query1.FieldByName('PRICE').AsFloat;
            Dm_Sv.QServtran1.FieldByName('FRT').AsFloat := Dm_sv.Query1.FieldByName('FRT').AsFloat;
            Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat := Dm_sv.Query1.FieldByName('PRICE').AsFloat * Dm_sv.Query1.FieldByName('FRT').AsFloat;
            Dm_Sv.QServtran1.FieldByName('REDU').AsFloat := Dm_sv.Query1.FieldByName('DISCT').AsFloat;
            Dm_Sv.QServtran1.FieldByName('SERTIME').AsFloat := Dm_sv.Query1.FieldByName('FRT').AsFloat;
            Dm_Sv.QServtran1.FieldByName('NETPRIC').AsFloat := Dm_sv.Query1.FieldByName('TOTAMT').AsFloat;
            Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('RECVCOD').Asstring;
            Dm_Sv.QServtran1.FieldByName('CAMPNO').Asstring := Dm_Sv.QJoborder2.FieldByName('CAMPNO').Asstring;
            Dm_Sv.QServtran1.FieldByName('CAMFLG').Asstring := 'Y';
            Dm_Sv.QServtran1.Post;
          //
            Dm_sv.Query1.Next;
          end;
        end;
      end;
  end;
end;

procedure TSvIn_30.DBCheckBox12MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Dm_Sv.QJoborder2.State in Dseditmodes then
    Dm_Sv.QServtran1.Edit;

  if Dm_Sv.QServtran1.FieldByName('CAMPNO').Asstring = '' then
  begin
    Dm_Sv.QServtran1.FieldByName('CAMPNO').Asstring := Dm_Sv.QJoborder2.FieldByName('CAMPNO').Asstring;
    Dm_Sv.QServtran1.FieldByName('CAMFLG').Asstring := 'Y';
  end
  else
  begin
    Dm_Sv.QServtran1.FieldByName('CAMPNO').Asstring := '';
    Dm_Sv.QServtran1.FieldByName('CAMFLG').Asstring := 'N';
  end;
end;

procedure TSvIn_30.SpeedButton11Click(Sender: TObject);
begin
  if Dm_sv.QJoborder2REPCOD.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกช่างผู้รับผิดชอบ');

  sfmain.AdvSmoothMessageDialog6.HTMLText.Text := 'ต้องการแทนที่รหัสช่างช่อมด้วยรหัสช่างที่รับผิดชอบ Job นี้';
  case sfmain.AdvSmoothMessageDialog6.ExecuteDialog of

    mrOk:
      begin
        XOFFICER := Dm_Sv.QJoborder2.FieldByName('REPCOD').Asstring;

        if not (Dm_Sv.QServtran1.Bof and Dm_Sv.QServtran1.Eof) then
        begin
          Dm_Sv.QServtran1.AfterPost := Nil;
          Dm_Sv.QServtran1.First;
          while not Dm_Sv.QServtran1.Eof do
          begin
            Dm_Sv.QServtran1.Edit;
            Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('REPCOD').Asstring;
            Dm_Sv.QServtran1.Next;
          end;
          Dm_Sv.QServtran1.AfterPost := Dm_Sv.QServtran1AfterPost;
        end;

        if not (Dm_Sv.QOuttran1.Bof and Dm_Sv.QOuttran1.Eof) then
        begin
          Dm_Sv.QOuttran1.AfterPost := Nil;
          Dm_Sv.QOuttran1.First;
          while not Dm_Sv.QOuttran1.Eof do
          begin
            Dm_Sv.QOuttran1.Edit;
            Dm_Sv.QOuttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('REPCOD').Asstring;
            Dm_Sv.QOuttran1.Next;
          end;
          Dm_Sv.QOuttran1.AfterPost := Dm_Sv.QOuttran1AfterPost;
        end;

        if not (Dm_Sv.QColrtran1.Bof and Dm_Sv.QColrtran1.Eof) then
        begin
          Dm_Sv.QColrtran1.AfterPost := Nil;
          Dm_Sv.QColrtran1.First;
          while not Dm_Sv.QColrtran1.Eof do
          begin
            Dm_Sv.QColrtran1.Edit;
            Dm_Sv.QColrtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('REPCOD').Asstring;
            Dm_Sv.QColrtran1.Next;
          end;
          Dm_Sv.QColrtran1.AfterPost := Dm_Sv.QColrtran1AfterPost;
        end;

        if not (Dm_Sv.Qparttran1.Bof and Dm_Sv.Qparttran1.Eof) then
        begin
          Dm_Sv.QParttran1.AfterPost := Nil;
          Dm_Sv.Qparttran1.First;
          while not Dm_Sv.Qparttran1.Eof do
          begin
            Dm_Sv.Qparttran1.Edit;
            Dm_Sv.Qparttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('REPCOD').Asstring;
            Dm_Sv.Qparttran1.Next;
          end;
          Dm_Sv.QParttran1.AfterPost := Dm_Sv.QParttran1AfterPost;
        end;

        if not (Dm_Sv.QOiltran1.Bof and Dm_Sv.QOiltran1.Eof) then
        begin
          Dm_Sv.QOiltran1.AfterPost := Nil;
          Dm_Sv.QOiltran1.First;
          while not Dm_Sv.QOiltran1.Eof do
          begin
            Dm_Sv.QOiltran1.Edit;
            Dm_Sv.QOiltran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('REPCOD').Asstring;
            Dm_Sv.QOiltran1.Next;
          end;
          Dm_Sv.QOiltran1.AfterPost := Dm_Sv.QOiltran1AfterPost;
        end;
      end;
  end;
end;

procedure TSvIn_30.Close_DB;
begin
  Dm_Sv.QJoborder2.Close;
  Dm_Sv.QServtran1.close;
  Dm_Sv.QOiltran1.close;
  Dm_Sv.QOuttran1.close;
  Dm_Sv.QColrtran1.close;
  Dm_Sv.QParttran1.close;
  Dm_Sv.Qsvmast.close;
  Dm_Sv.QModelmst.Close;
  Dm_Sv.QJobTime.Close;
end;

procedure TSvIn_30.SpeedButton15Click(Sender: TObject);
begin
  sfmain.AdvSmoothMessageDialog6.HTMLText.Text := 'ต้องการเคลมอะไหล่ทั้งหมด ?';
  case sfmain.AdvSmoothMessageDialog6.ExecuteDialog of
    mrOk:
      begin
        Dm_Sv.QParttran1.First;
        while not Dm_Sv.QParttran1.Eof do
        begin
          Dm_Sv.QParttran1.Edit;
          Dm_Sv.QParttran1.Fieldbyname('Claim').Asstring := 'Y';
          Dm_Sv.QParttran1.Next;
        end;
      end;
  end;
end;

procedure TSvIn_30.SpeedButton16Click(Sender: TObject);
begin
  sfmain.AdvSmoothMessageDialog6.HTMLText.Text := 'ต้องการเคลมน้ำมันทั้งหมด ?';
  case sfmain.AdvSmoothMessageDialog6.ExecuteDialog of
    mrOk:
      begin
        Dm_Sv.QOiltran1.First;
        while not Dm_Sv.QOiltran1.Eof do
        begin
          Dm_Sv.QOiltran1.Edit;
          Dm_Sv.QOiltran1.Fieldbyname('Claim').Asstring := 'Y';
          Dm_Sv.QOiltran1.Next;
        end;
      end;
  end;
end;

procedure TSvIn_30.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  N: word;
  Present: TDateTime;
  Hour, Min, Sec, MSec: Word;
  S: string;
begin
  if Key = 115 then
  begin
    with Dm_Sv.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNO ');
      Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
      Open;
    end;
    Present := Now;
    DecodeTime(Present, Hour, Min, Sec, MSec);
    S := IntToStr(Hour) + '.' + IntToStr(Min);
    if Dm_Sv.QJoborder2.State = Dsbrowse then
      Dm_Sv.QJoborder2.Edit;
    Dm_Sv.QJoborder2.FieldByName('RFINSHDT').AsDateTime := Date;
    Dm_Sv.QJoborder2.FieldByName('RFINSHTM').Asstring := S;

    if Dm_Sv.Query1.FieldByName('STATUS').AsString <> 'W' then
    begin
      for N := 0 to ComponentCount - 1 do
      begin
        if (Components[N] is TDBEdit) and (TDBEdit(Components[N]).Tag = 0) then
        begin
          TDBEdit(Components[N]).Readonly := True;
          TDBEdit(Components[N]).Color := clBtnface;
        end;
        if (Components[N] is TDBGrid) and (TDBGrid(Components[N]).Tag = 0) then
        begin
          TDBGrid(Components[N]).Readonly := True;
          TDBGrid(Components[N]).Color := clBtnface;
        end;
        if (Components[N] is TDBCheckBox) and (TDBCheckBox(Components[N]).Tag = 0) then
        begin
          TDBCheckBox(Components[N]).Enabled := False;
        end;
      end;
      if Dm_Sv.Query1.FieldByName('STATUS').AsString = 'F' then
        LabelStat.Caption := 'ซ่อมเสร็จแล้วรอลูกค้ามารับ';
      if Dm_Sv.Query1.FieldByName('STATUS').AsString = 'R' then
        LabelStat.Caption := 'ลูกค้ารับรถไปแล้ว';
      if Dm_Sv.Query1.FieldByName('STATUS').AsString = 'C' then
        LabelStat.Caption := 'JOB ถูกยกเลิกไปแล้ว';
    end;
    Do_Afterpost_part;
    Do_Afterpost_oil;
  end;

  case Key of
    VK_F7:
      EnqBtnClick(Sender);
    VK_F2:
      SavBtnClick(Sender);
    VK_F9:
      SpeedButton3Click(Sender);
    VK_F8:
      SpeedButton4Click(Sender);
  end;
end;

procedure TSvIn_30.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TSvIn_30.PrnBtnClick(Sender: TObject);
begin
  if DBEdit30.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SummaryJob.fr3','1');
end;

procedure TSvIn_30.DBGrid_SvEditButtonClick(Sender: TObject);
begin
  if DBGrid_Sv.Readonly = False then
  begin
    if DbGrid_Sv.SelectedField.FieldName = 'CODE' then
    begin
      if Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring = '' then
        SFMain.RaiseException('ยังไม่บันทึกหมายเลข JOB');
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalTabsv = Mrok then
      begin
        Dm_Sv.QServtran1.FieldByName('CODE').Asstring := fSrcDlg1.qrFindDat.FieldByName('SVCODE').Asstring;
        Dm_Sv.QServtran1.FieldByName('MDLCOD').Asstring := fSrcDlg1.qrFindDat.FieldByName('MDLCOD').Asstring;
        Dm_Sv.QServtran1.FieldByName('DESC1').Asstring := fSrcDlg1.qrFindDat.FieldByName('DESCP').Asstring;
        Dm_Sv.QServtran1.FieldByName('FRT').AsFloat := fSrcDlg1.qrFindDat.FieldByName('FRT').AsFloat;
      end;
    end;

    if DbGrid_Sv.SelectedField.FieldName = 'SERVCOD' then
    begin
      Application.Createform(TfFindData, fFindData);
//     fSrcDlg.XDepart := '3%';
      if fFindData.ShowModalEngineer = Mrok then
      begin
        if Dm_Sv.QServtran1.State = Dsbrowse then
          Dm_Sv.QServtran1.Edit;
        Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := fFindData.Keyno;
      end;
    end;

    if DbGrid_Sv.SelectedField.FieldName = 'CUSCOD' then
    begin
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalAR = Mrok then
      begin
        if Dm_Sv.QServtran1.State = Dsbrowse then
          Dm_Sv.QServtran1.Edit;
        Dm_Sv.QServtran1.FieldByName('CUSCOD').Asstring := fSrcDlg1.Keyno;
      end;
    end;
  end;

  if DbGrid_Sv.SelectedField.FieldName = 'SERTIME' then
  begin
    Application.CreateForm(TFsvtime, Fsvtime);
    Fsvtime.Jobno1 := dm_sv.QServtran1.FieldByName('JOBNO').Asstring;
    Fsvtime.Servcod1 := dm_sv.QServtran1.FieldByName('Servcod').Asstring;
    Fsvtime.Code1 := dm_sv.QServtran1.FieldByName('Code').Asstring;
    Fsvtime.Flag1 := '1';
    Fsvtime.SvTime.Close;
    Fsvtime.SvTime.MasterSource := Dm_sv.SoServtran1;

    if Fsvtime.ShowModal = MrOk then
    begin
      with Dm_sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT Sum(UseTime) As UseTime FROM SVTIME WHERE JOBNO= :XJOB AND SERVCOD= :XSVCOD AND CODE=:Xcode ' +
          ' AND FLAG =:Xflag');
        Params[0].Asstring := dm_sv.QServtran1.FieldByName('JOBNO').Asstring;
        Params[1].Asstring := dm_sv.QServtran1.FieldByName('Servcod').Asstring;
        Params[2].Asstring := dm_sv.QServtran1.FieldByName('Code').Asstring;
        Params[3].Asstring := '1';
        Open;
      end;
      dm_sv.QServtran1.FieldByName('SERTIME').AsFloat := Dm_sv.Query1.FieldByName('Usetime').Asfloat;
    end;
  end;
end;

procedure TSvIn_30.DBGrid_OtEditButtonClick(Sender: TObject);
begin
  if DBGrid_Ot.Readonly = False then
  begin
    if DbGrid_Ot.SelectedField.FieldName = 'CODE' then
    begin
      if Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring = '' then
        SFMain.RaiseException('ยังไม่บันทึกหมายเลข JOB');
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalSvpart = Mrok then
      begin
        with Dm_Sv.QUERY1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM SVSTOCK WHERE CODE = :Edit1 AND LOCAT=:EDIT2 ');
          Params[0].Asstring := fSrcDlg1.KeyNo;
          Params[1].Asstring := fSrcDlg1.qrFindDat.fieldbyname('Locat').Asstring;
          Open;
        end;
        if Dm_Sv.Query1.bof and Dm_Sv.Query1.Eof then
          SFMain.RaiseException('ไมมีรหัสสาขานี้ในแฟ้มข้อมูล');
        Dm_Sv.QOuttran1.FieldByName('CODE').Asstring := Dm_Sv.Query1.FieldByName('CODE').Asstring;
      end;
    end;

    if DbGrid_Ot.SelectedField.FieldName = 'SERVCOD' then
    begin
      Application.Createform(TfSrcDlg, fSrcDlg);
//  fSrcDlg.XDepart := '3%';
      if fFindData.ShowModalEngineer = Mrok then
      begin
        with Dm_Sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE= :XCODE ');
          Params[0].Asstring := fSrcDlg.KeyNo;
          Open;
        end;
        if Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
          SFMain.RaiseException('ไม่มีข้อมูล');
        Dm_Sv.QOuttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('ENCODE').Asstring;
      end;
    end;

    if DbGrid_Ot.SelectedField.FieldName = 'CUSCOD' then
    begin
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalAR = Mrok then
      begin
        if Dm_Sv.QOuttran1.State = Dsbrowse then
          Dm_Sv.QOuttran1.Edit;
        Dm_Sv.QOuttran1.FieldByName('CUSCOD').Asstring := fSrcDlg1.Keyno;
      end;
    end;
  end;
end;

procedure TSvIn_30.DBGrid_OtEnter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TSvIn_30.DBGrid_OtExit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TSvIn_30.DBGrid_CrEditButtonClick(Sender: TObject);
begin
  if DBGrid_Ot.Readonly = False then
  begin
    if DbGrid_Ot.SelectedField.FieldName = 'CODE' then
    begin
      if Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring = '' then
        SFMain.RaiseException('ยังไม่บันทึกหมายเลข JOB');
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalSvpart = Mrok then
      begin
        with Dm_Sv.QUERY1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM SVSTOCK WHERE CODE = :Edit1 AND LOCAT=:EDIT2 ');
          Params[0].Asstring := fSrcDlg1.KeyNo;
          Params[1].Asstring := fSrcDlg1.qrFindDat.fieldbyname('Locat').Asstring;
          Open;
        end;
        if Dm_Sv.Query1.bof and Dm_Sv.Query1.Eof then
          SFMain.RaiseException('ไมมีรหัสสาขานี้ในแฟ้มข้อมูล');
        Dm_Sv.QOuttran1.FieldByName('CODE').Asstring := Dm_Sv.Query1.FieldByName('CODE').Asstring;
      end;
    end;

    if DbGrid_Ot.SelectedField.FieldName = 'SERVCOD' then
    begin
      Application.Createform(TfSrcDlg, fSrcDlg);
//     fSrcDlg.XDepart := '3%';
      if fFindData.ShowModalEngineer = Mrok then
      begin
        with Dm_Sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE= :XCODE ');
          Params[0].Asstring := fSrcDlg.KeyNo;
          Open;
        end;
        if Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
          SFMain.RaiseException('ไม่มีข้อมูล');
        Dm_Sv.QOuttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('ENCODE').Asstring;
      end;
    end;

    if DbGrid_Ot.SelectedField.FieldName = 'CUSCOD' then
    begin
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalAR = Mrok then
      begin
        if Dm_Sv.QOuttran1.State = Dsbrowse then
          Dm_Sv.QOuttran1.Edit;
        Dm_Sv.QOuttran1.FieldByName('CUSCOD').Asstring := fSrcDlg1.Keyno;
      end;
    end;
  end;

  if DbGrid_OT.SelectedField.FieldName = 'SERTIME' then
  begin
    Application.CreateForm(TFsvtime, Fsvtime);
    Fsvtime.Jobno1 := dm_sv.QOuttran1.FieldByName('JOBNO').Asstring;
    Fsvtime.Servcod1 := dm_sv.QOuttran1.FieldByName('Servcod').Asstring;
    Fsvtime.Code1 := dm_sv.QOuttran1.FieldByName('Code').Asstring;
    Fsvtime.Flag1 := '3';
    Fsvtime.SvTime.Close;
    Fsvtime.SvTime.MasterSource := Dm_sv.SoOuttran1;

    if Fsvtime.ShowModal = MrOk then
    begin
      with Dm_sv.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT Sum(UseTime) As UseTime FROM SVTIME WHERE JOBNO= :XJOB AND SERVCOD= :XSVCOD AND CODE=:Xcode' +
          ' AND FLAG =:Xflag');
        Params[0].Asstring := dm_sv.QOuttran1.FieldByName('JOBNO').Asstring;
        Params[1].Asstring := dm_sv.QOuttran1.FieldByName('Servcod').Asstring;
        Params[2].Asstring := dm_sv.QOuttran1.FieldByName('Code').Asstring;
        Params[3].Asstring := '3';
        Open;
      end;
      dm_sv.QOuttran1.FieldByName('SERTIME').AsFloat := Dm_sv.Query1.FieldByName('Usetime').Asfloat;
    end;
  end;
end;

procedure TSvIn_30.DBGrid_CrEnter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TSvIn_30.DBGrid_CrExit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TSvIn_30.DBGrid_PtEnter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TSvIn_30.DBGrid_PtExit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TSvIn_30.DBGrid_PtEditButtonClick(Sender: TObject);
begin
  if DBGrid_Pt.Readonly = False then
  begin
    if DBGrid_Pt.SelectedField.FieldName = 'SERVCOD' then
    begin
      Application.Createform(TfSrcDlg, fSrcDlg);
//  fSrcDlg.XDepart := '3%';
      if fFindData.ShowModalEngineer = Mrok then
      begin
        with Dm_Sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ENGINEER WHERE ENCODE= :XCODE ');
          Params[0].Asstring := fSrcDlg.KeyNo;
          Open;
        end;
        if Dm_Sv.Query1.EOF and Dm_Sv.Query1.BOF then
          SFMain.RaiseException('ไม่มีข้อมูล');
        if Dm_sv.QParttran1.state = dsbrowse then
          Dm_sv.QParttran1.Edit;
        Dm_Sv.QParttran1.FieldByName('SERVCOD').Asstring := Dm_Sv.Query1.FieldByName('ENCODE').Asstring;
      end;
    end;

    if DbGrid_Pt.SelectedField.FieldName = 'CUSCOD' then
    begin
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalAR = Mrok then
      begin
        if Dm_Sv.QParttran1.State = Dsbrowse then
          Dm_Sv.QParttran1.Edit;
        Dm_Sv.QParttran1.FieldByName('CUSCOD').Asstring := fSrcDlg1.Keyno;
      end;
    end;
  end;
end;

procedure TSvIn_30.DBGrid_OLExit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TSvIn_30.DBGrid_OLEnter(Sender: TObject);
begin
  DBkbd1.Disable := True;
end;

procedure TSvIn_30.AddColourClick(Sender: TObject);
var
  I: Integer;
  Lb, Code: string;
begin
  sfmain.AdvSmoothMessageDialog6.HTMLText.Text := 'ต้องการดึงรายการคำสั่งซ่อม ?';
  case sfmain.AdvSmoothMessageDialog6.ExecuteDialog of
    mrOk:
      begin
        with Dm_Sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ORDREP WHERE JOBNO = :XNO ');
          Params[0].Asstring := Dm_Sv.QJoborder2.FieldByName('JOBNO').Asstring;
          Open;
        end;
        Lb := 'CO-';
        I := 0;
        Dm_Sv.Query1.First;
        while not (Dm_Sv.Query1.Eof) do
        begin
          I := I + 1;
          Code := Lb + sfMain.ZeroLead(InttoStr(I), 3);

          Dm_Sv.QColrtran1.Append;
          Dm_Sv.QColrtran1.FieldByName('CODE').Asstring := Code;
          Dm_Sv.QColrtran1.FieldByName('DESC1').Asstring := Dm_Sv.Query1.Fieldbyname('REPDESC').Asstring;
          Dm_Sv.QColrtran1.FieldByName('FRT').AsFloat := 1;
          Dm_Sv.QColrtran1.Post;
          Dm_Sv.Query1.Next;
        end;
      end;
  end;
end;

procedure TSvIn_30.DBCheckBox16MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Dm_Sv.QParttran1.Post;
end;

procedure TSvIn_30.DBCheckBox17MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Dm_Sv.QOiltran1.Post;
end;

procedure TSvIn_30.rzFbtCupongClick(Sender: TObject);
begin
  sfmain.AdvSmoothMessageDialog6.HTMLText.Text := 'ต้องการดึงรายการจากแฟ้มคูปอง ?';
  case sfmain.AdvSmoothMessageDialog6.ExecuteDialog of
    mrOk:
      begin
        with Dm_sv.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM CUPONGSV WHERE CUPONGNO=:Edit1 ');
          Params[0].Asstring := Dm_Sv.QJoborder2.Fieldbyname('CUPONGNO').Asstring;
          Open;
        end;
        if not (Dm_sv.Query1.Bof and Dm_sv.Query1.Eof) then
        begin
          Dm_sv.Query1.First;
          while not (Dm_sv.Query1.Eof) do
          begin
            Dm_Sv.QServtran1.Append;
            Dm_Sv.QServtran1.FieldByName('CODE').AsString := Dm_sv.Query1.FieldByName('Code').Asstring;
            Dm_Sv.QServtran1.FieldByName('Desc1').AsString := Dm_sv.Query1.FieldByName('Descp').Asstring;
            Dm_Sv.QServtran1.FieldByName('UPRICE').AsFloat := Dm_sv.Query1.FieldByName('UPRICE').AsFloat;
            Dm_Sv.QServtran1.FieldByName('FRT').AsFloat := Dm_sv.Query1.FieldByName('FRT').AsFloat;
            Dm_Sv.QServtran1.FieldByName('PRICE').AsFloat := Dm_sv.Query1.FieldByName('UPRICE').AsFloat * Dm_sv.Query1.FieldByName('FRT').AsFloat;
            Dm_Sv.QServtran1.FieldByName('SERTIME').AsFloat := Dm_sv.Query1.FieldByName('FRT').AsFloat;
            Dm_Sv.QServtran1.FieldByName('NETPRIC').AsFloat := Dm_sv.Query1.FieldByName('TOTAMT').AsFloat;
            Dm_Sv.QServtran1.FieldByName('SERVCOD').Asstring := Dm_Sv.QJoborder2.FieldByName('RECVCOD').Asstring;
            Dm_Sv.QServtran1.FieldByName('CUPONGNO').Asstring := Dm_sv.Query1.FieldByName('CUPONGNO').Asstring;
            Dm_Sv.QServtran1.FieldByName('CAMFLG').Asstring := 'S';
            Dm_Sv.QServtran1.FieldByName('CLAIM').Asstring := 'S';
            Dm_Sv.QServtran1.Post;
          //
            Dm_sv.Query1.Next;
          end;
        end;
      end;
  end;
end;

procedure TSvIn_30.RzRapidFireButton4Click(Sender: TObject);
begin
  if Dm_sv.QJoborder2REPCOD.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกช่างผู้รับผิดชอบ');
  Dm_Sv.QJobTime.Append;
end;

procedure TSvIn_30.RzRapidFireButton3Click(Sender: TObject);
begin
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_Sv.QJobTime.Delete;
      end;
  end;
end;

procedure TSvIn_30.spbSvTimeClick(Sender: TObject);
begin
  if Dm_sv.QJoborder2REPCOD.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกช่างผู้รับผิดชอบ');
  gbRealTime.Visible := True;
end;

procedure TSvIn_30.RzRapidFireButton2Click(Sender: TObject);
begin
  gbRealTime.Visible := False;
end;

procedure TSvIn_30.DBGrid1ColExit(Sender: TObject);
var
  S1, S2, H1, H2, C1, C2: string;
  T1, T2, V1, V2, B100: Double;
begin
  if datasource1.State = dsEdit then
  begin
    if DBGrid1.SelectedField.FieldName = 'STOPTIM' then
    begin
      S1 := floattostrF(Dm_Sv.QJobTimeSTARTTIM.asFloat, ffFixed, 4, 2);
      S2 := FloattostrF(Dm_Sv.QJobTimeSTOPTIM.asFloat, ffFixed, 4, 2);

      H1 := Copy(S1, 1, Pos('.', S1) - 1);
      C1 := Copy(S1, Pos('.', S1) + 1, 2);
      V1 := Strtofloat(C1) / 100;
      T1 := Strtofloat(H1) + V1;

      H2 := Copy(S2, 1, Pos('.', S2) - 1);
      C2 := Copy(S2, Pos('.', S2) + 1, 2);
      V2 := Strtofloat(C2) / 100;
      T2 := Strtofloat(H2) + V2;
      Dm_Sv.QJobTimeUSETIME.AsFloat := (T2 - T1);
    end;
  end;
end;

procedure TSvIn_30.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvtype = Mrok then
  begin
    Dm_Sv.QJoborder2.FieldByName('REPTYPE').Asstring := fSrcDlg1.Keyno;
    //
    Dm_Sv.QServtran1.AfterPost := Nil;
    Dm_Sv.QServtran1.First;
    while not Dm_Sv.QServtran1.Eof do
    begin
      Dm_Sv.QServtran1.Edit;
      Dm_Sv.QServtran1.FieldByName('JOBTYP').Asstring := Dm_Sv.QJoborder2.FieldByName('REPTYPE').Asstring;
      Dm_Sv.QServtran1.Next;
    end;
    Dm_Sv.QServtran1.AfterPost := Dm_Sv.QServtran1AfterPost;
    //
    Dm_Sv.QOuttran1.AfterPost := Nil;
    Dm_Sv.QOuttran1.First;
    while not Dm_Sv.QOuttran1.Eof do
    begin
      Dm_Sv.QOuttran1.Edit;
      Dm_Sv.QOuttran1.FieldByName('JOBTYP').Asstring := Dm_Sv.QJoborder2.FieldByName('REPTYPE').Asstring;
      Dm_Sv.QOuttran1.Next;
    end;
    Dm_Sv.QOuttran1.AfterPost := Dm_Sv.QOuttran1AfterPost;
    //
    Dm_Sv.QColrtran1.AfterPost := Nil;
    Dm_Sv.QColrtran1.First;
    while not Dm_Sv.QColrtran1.Eof do
    begin
      Dm_Sv.QColrtran1.Edit;
      Dm_Sv.QColrtran1.FieldByName('JOBTYP').Asstring := Dm_Sv.QJoborder2.FieldByName('REPTYPE').Asstring;
      Dm_Sv.QColrtran1.Next;
    end;
    Dm_Sv.QColrtran1.AfterPost := Dm_Sv.QColrtran1AfterPost;
  end;
end;

procedure TSvIn_30.DBEdit37PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalEngineer = Mrok then
    Dm_Sv.QJoborder2.FieldByName('REPCOD').Asstring := fFindData.KeyNo;
  SpeedButton11Click(Sender);
end;

procedure TSvIn_30.DBEdit58PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalFrcod = Mrok then
  begin
    if Dm_sv.QJoborder2.State = Dsbrowse then
      Dm_sv.QJoborder2.Edit;
    Dm_sv.QJoborder2FRCODE.Asstring := fSrcDlg1.Keyno;
    Dm_sv.QJoborder2FRRATE.AsFloat := fSrcDlg1.qrFindDat.Fieldbyname('Frrate1').Asfloat;
    Xsvrt2 := fSrcDlg1.qrFindDat.Fieldbyname('Frrate2').Asfloat;
  end;
end;

procedure TSvIn_30.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SummaryJob.fr3','2');
end;

procedure TSvIn_30.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
// IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
//  IF Uppercase(NAME)='DATETHAI' Then
//  Begin
//     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
//  End;
end;

procedure TSvIn_30.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PJOBNO' then
    Value := DBEdit30.Text;
end;

procedure TSvIn_30.DBMemo1Click(Sender: TObject);
begin
  svin_30.KeyPreview := False;
end;

procedure TSvIn_30.DBMemo1Exit(Sender: TObject);
begin
  svin_30.KeyPreview := True;
end;

procedure TSvIn_30.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
    DM_SV.QJoborder2.FieldByName('GROUP1').AsString := Dm_SvSet.Grpmst.FieldByName('GCODE').AsString;
    cxTextEdit1.Text := Dm_SvSet.Grpmst.FieldByName('MDLCOD').AsString;
  end;
end;

procedure TSvIn_30.DBEdit4PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('SETMODEL', 'MODELSV', 'MODELCOD', DBEdit4.Text);
end;

procedure TSvIn_30.DBCheckBox13MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Dm_Sv.QParttran1.Post;
end;

procedure TSvIn_30.FormShow(Sender: TObject);
begin
  if not (Dm_sv.Condpay.Active) then
    Dm_sv.Condpay.Open;
  //
  DBEdit58.Visible := Dm_sv.Condpay.Fieldbyname('Multifr').Asstring = 'Y';
  Label45.Visible := DBEdit58.Visible;
  //
  XEditdisc := 'N';
  with Dm_Sv.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Editpric,EditDisc FROM SECRET WHERE USERID =:XEdit');
    PARAMS[0].ASSTRING := sfMain.Xuser_id;
    OPEN;
    XEditdisc := Dm_Sv.Query1.Fieldbyname('EditDisc').Asstring;
    XEditPrc := Dm_Sv.Query1.fieldByName('Editpric').AsString;
  end;
  //
  with Dm_Sv.QJoborder2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNO ');
    Params[0].Asstring := '';
    Open;
  end;
end;

procedure TSvIn_30.DBGrid1DblClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalEngineer = Mrok then
    Dm_Sv.QJobTime.FieldByName('SERVCOD').Asstring := fFindData.KeyNo;
end;

procedure TSvIn_30.PartInBtnClick(Sender: TObject);
begin
  Dm_Sv.QParttran1.Append;
end;

procedure TSvIn_30.PartDlBtnClick(Sender: TObject);
begin
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_Sv.QParttran1.delete;
      end;
  end;
end;

procedure TSvIn_30.OilInBtnClick(Sender: TObject);
begin
  Dm_Sv.QOiltran1.Append;
end;

procedure TSvIn_30.OilDlBtnClick(Sender: TObject);
begin
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_Sv.QOiltran1.delete;
      end;
  end;
end;

procedure TSvIn_30.cxDBMemo1Click(Sender: TObject);
begin
  SvIn_30.KeyPreview := False;
end;

procedure TSvIn_30.cxDBMemo1Exit(Sender: TObject);
begin
  SvIn_30.KeyPreview := True;
end;

end.

