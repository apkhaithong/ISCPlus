unit uRpStkreg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ImgList, ToolWin, Buttons, DB, ExtCtrls, Mask,
  RzButton, RzSpnEdt, ActnList, RzPanel, RzRadGrp, RzLstBox, RzChkLst, RzRadChk,
  RzCmboBx, AdvGlowButton, cxGraphics, cxTextEdit, cxDropDownEdit, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, AdvToolBar, AdvPanel,
  cxLookAndFeels, cxLookAndFeelPainters, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm, AdvGroupBox,
  AdvOfficeButtons, frxExportXLSX, frxRich, frxTableObject, frxClass,
  frxExportPDF, frxExportImage, frxGradient, frxFDComponents, frxDCtrl,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TRepStkReg = class(TForm)
    ActionList1: TActionList;
    AcPrev: TAction;
    AcEdit: TAction;
    Query1: TFDQuery;
    AcPrn: TAction;
    AcClose: TAction;
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit4: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    Edit3: TcxTextEdit;
    Edit10: TcxTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    RadioGroup1: TAdvOfficeRadioGroup;
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
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure edLocatPayKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure AcPrevExecute(Sender: TObject);
    procedure AcEditExecute(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    frPath: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepStkReg: TRepStkReg;

implementation

uses
  Srchset1, USoftFirm, unfrPreview, Dm1, DMSEC;

{$R *.dfm}

procedure TRepStkReg.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepStkregred.fr3', '2'); {2 = Design Report}
end;

procedure TRepStkReg.FormShow(Sender: TObject);
begin
  EditBtn.Visible := SFMain.XDesign = 'Y';
  Edit4.Text := SFMain.Xlocat;
  Edit7.Text := SFMain.Xlocat;
end;

procedure TRepStkReg.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepStkregred.fr3', '1');
end;

procedure TRepStkReg.edLocatPayKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TRepStkReg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  RepStkReg := nil;
end;

procedure TRepStkReg.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  option: string;
begin
  if Uppercase(VarName) = 'VLOCAT' then
    Value := Edit4.Text + '%';
  if Uppercase(VarName) = 'VLOCATKEEP' then
    Value := Edit7.Text + '%';
  case RadioGroup1.ItemIndex of
    0:
      option := '0';
    1:
      option := '1';
    2:
      option := '2';
  end;
  if Uppercase(VarName) = 'VOPTION' then
    Value := option;
end;

procedure TRepStkReg.RzBitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TRepStkReg.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TRepStkReg.AcPrevExecute(Sender: TObject);
begin
  PrevBtnClick(Sender);
end;

procedure TRepStkReg.AcEditExecute(Sender: TObject);
begin
  EditBtnClick(Sender);
end;

procedure TRepStkReg.Edit4Change(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT LOCATNM FROM INVLOCAT WHERE LOCATCD =:EDIT1');
    Params[0].AsString := Edit4.Text;
    Open;
    Edit3.Text := Query1.fieldbyname('LOCATNM').AsString;
  end;
end;

procedure TRepStkReg.ToolButton2Click(Sender: TObject);
begin
//  frReport1.PrepareReport;
//  frReport1.PrintPreparedReportDlg;
end;

procedure TRepStkReg.Edit7Change(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    sql.Clear;
    Sql.Add('SELECT LOCATNM FROM INVLOCAT WHERE LOCATCD =:EDIT1');
    Params[0].AsString := Edit7.Text;
    Open;
    Edit10.Text := Query1.fieldbyname('LOCATNM').AsString;
  end;
end;

procedure TRepStkReg.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit4.text := SearchSet.Keyno;
end;

procedure TRepStkReg.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit7.text := SearchSet.Keyno;
end;

procedure TRepStkReg.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TRepStkReg.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_1_A');
end;

end.

