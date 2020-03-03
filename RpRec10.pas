unit RpRec10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, QuickRpt, printers, qrprntr, Db, ImgList,
  ComCtrls, ToolWin, Mask, RzSpnEdt, AdvGlowButton, cxButtonEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  AdvGroupBox, AdvOfficeButtons, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, BusinessSkinForm, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFRecv10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    RD01: TAdvOfficeRadioGroup;
    RadioGp1: TAdvOfficeRadioGroup;
    RadioGroup1: TAdvOfficeRadioGroup;
    wwFDate: TcxDateEdit;
    wwTDate: TcxDateEdit;
    Edit1: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit5: TcxButtonEdit;
    Edit6: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    Edit8: TcxTextEdit;
    Query1: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DesignBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure RD01Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    xuserid: string;
    { Public declarations }
  end;

var
  FRecv10: TFRecv10;
  FromDate, ToDate: TDateTime;

implementation

uses
  Srchset1, USoftFirm, unfrPreview, Dm1, DMSEC;

{$R *.DFM}

procedure TFRecv10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_3_2');
end;

procedure TFRecv10.SpeedButton8Click(Sender: TObject);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetOfficer = MrOk then
    Edit8.text := SearchSet.Keyno;
end;

procedure TFRecv10.FormShow(Sender: TObject);
begin
  wwFDate.Date := Date;
  wwTDate.Date := Date;
  Edit2.SetFocus;
  RadioGp1.ItemIndex := 0;
  edit1.Text := SFMain.XLocat;
  edit1.Enabled := SFMain.XChgloc = 'Y';
  DesignBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TFRecv10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FRecv10 := nil;
end;

procedure TFRecv10.DesignBtnClick(Sender: TObject);
begin
  if RD01.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PayDay.fr3', '2')
 {2 = Design Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SumPayDay.fr3', '2'); {2 = Design Report}
end;

procedure TFRecv10.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  Xsort, Xradio: string;
begin
  if UpperCase(VarName) = 'VLOCATPAY' then
    Value := edit2.Text + '%';
  if UpperCase(VarName) = 'VLOCATRECV' then
    Value := edit1.Text + '%';
  if UpperCase(VarName) = 'VPAYTYP' then
    Value := edit5.Text + '%';
  if UpperCase(VarName) = 'VUSERID' then
    Value := edit7.Text + '%';
  if UpperCase(VarName) = 'VPAYFOR' then
    Value := edit6.Text + '%';
  if UpperCase(VarName) = 'VFDATE' then
    Value := wwFDate.Date;
  if UpperCase(VarName) = 'VTDATE' then
    Value := wwTDate.Date;

  case RadioGp1.ItemIndex of
    0:
      Xsort := '0';
    1:
      Xsort := '1';
    2:
      Xsort := '2';
    3:
      Xsort := '3';
    4:
      Xsort := '4';
  end;
  if UpperCase(VarName) = 'VSORT' then
    Value := Xsort;

  case RadioGroup1.ItemIndex of
    0:
      Xradio := '0';
    1:
      Xradio := '1';
  end;
  if UpperCase(VarName) = 'VRADIO' then
    Value := Xradio;
end;

procedure TFRecv10.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit1.text := SearchSet.Keyno;
end;

procedure TFRecv10.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetLocat = MrOk then
    Edit2.text := SearchSet.Keyno;
end;

procedure TFRecv10.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetPaytyp = MrOk then
    Edit5.text := SearchSet.Keyno;
end;

procedure TFRecv10.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalPasswd = MrOk then
    Edit7.Text := SearchSet.Keyno;
end;

procedure TFRecv10.Edit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TSearchSet, SearchSet);
  if SearchSet.ShowModalSetPayfor = MrOk then
    Edit6.text := SearchSet.Keyno;
end;

procedure TFRecv10.RD01Click(Sender: TObject);
begin
  if RD01.ItemIndex = 0 then
    RadioGroup1.Visible := True
  else
    RadioGroup1.Visible := false;
end;

procedure TFRecv10.CloseBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFRecv10.PrevBtnClick(Sender: TObject);
begin
  if RD01.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PayDay.fr3', '1')
 {1 = Preview Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SumPayDay.fr3', '1'); {1 = Preview Report}
end;

procedure TFRecv10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

