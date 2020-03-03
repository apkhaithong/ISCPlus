unit frBillMenu;

interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons,
  ExtCtrls, Spin, Db, Messages, Dialogs, Mask, DBCtrls, Grids, DBGrids, ComCtrls,
  ImgList, ToolWin, n2wMoney, ActnList, AdvGlowButton, AdvToolBar, cxControls,
  cxContainer, cxEdit, cxTextEdit, AdvGroupBox, AdvOfficeButtons, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxButtonEdit, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxDateUtils, System.Actions, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfBillMenu = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    ActionList1: TActionList;
    acPreview: TAction;
    acPrint: TAction;
    acDesigner: TAction;
    acClose: TAction;
    Label3: TLabel;
    acPayReg: TAction;
    edLocat: TcxTextEdit;
    edLocName: TcxTextEdit;
    edTmbFm: TcxTextEdit;
    edBillFm: TcxTextEdit;
    RadioGroup1: TAdvOfficeRadioGroup;
    Label4: TLabel;
    Label5: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxTextEdit1: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    AdvPanel1: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    tbPreview: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    tbtPrnOth: TAdvGlowButton;
    tbClose: TAdvGlowButton;
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
    procedure tbCloseClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure FormShow(Sender: TObject);
    procedure tbPreviewClick(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure tbtPrnOthClick(Sender: TObject);
    procedure acPayRegExecute(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fBillMenu: TfBillMenu;

implementation

uses
  USoftFirm, Dmsec, FincRecv, unfrPreview, Dm1, Srchset1;

{$R *.DFM}

procedure TfBillMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfBillMenu.tbCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfBillMenu.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
//  if UPPERCASE(Name) = 'DATETOTHAI' then
//    Val := SFMain.DateToThai(FRPARSER.Calc(p1), FRPARSER.Calc(p2));
end;

procedure TfBillMenu.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'VTMBILL' then
    Value := EdtmbFm.Text;
  if Uppercase(VarName) = 'VLOCRECV' then
    Value := EdLocat.Text;
  if Uppercase(VarName) = 'VSALE' then
    Value := cxTextEdit1.Text;
  if Uppercase(VarName) = 'VDUE' then
    Value := cxDateEdit1.Date;
    //  if Uppercase(ParName)='VTAXNO' then
     //    ParValue := FincForm1.DBText2.Caption;
end;

procedure TfBillMenu.FormShow(Sender: TObject);
begin
  EdTmbfm.Text := FincForm1.FldEdit4.Text;
  EdBillfm.Text := FincForm1.dbEdit11.Text;
  Edlocat.Text := FincForm1.DBLocat.Text;
  edLocName.Text := FincForm1.Edit2.Text;
  cxDateEdit1.Date := Date;
  cxButtonEdit1.Text := SFMain.XOffCod;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  if SFMain.XLevel = '1' then
//    FrReport1.ModifyPrepared := True;
end;

procedure TfBillMenu.tbPreviewClick(Sender: TObject);
begin
  if Radiogroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Tmpbill.fr3', '1')
 {1 = Preview Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnBill.fr3', '1'); {1 = Preview Report}
  fBillMenu.Close;
end;

procedure TfBillMenu.DesignBtnClick(Sender: TObject);
begin
  if Radiogroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_Tmpbill.fr3', '2')
 {2 = Design Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnBill.fr3', '2'); {2 = Design Report}
end;

procedure TfBillMenu.tbtPrnOthClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_TxtranComFin.fr3', '1'); {1 = Preview Report}
  fBillMenu.Close;
end;

procedure TfBillMenu.acPayRegExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_TxtranComFin.fr3', '2'); {2 = Design Report}
end;

procedure TfBillMenu.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetOfficer = Mrok then
    cxButtonEdit1.Text := SearchSet.Keyno;
end;

procedure TfBillMenu.cxButtonEdit1PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := DM01.FindShowDesc('OFFICER', 'NAME', 'CODE', cxButtonEdit1.Text);
end;

end.

