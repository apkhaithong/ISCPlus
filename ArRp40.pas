unit ArRp40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, QuickRpt, Printers, ImgList,
  ComCtrls, ToolWin, DB, Mask, RzEdit, RzSpnEdt, AdvGroupBox, AdvOfficeButtons,
  AdvGlowButton, AdvToolBar, cxDropDownEdit, cxCalendar, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, BusinessSkinForm, frxBarcode,
  frxFDComponents, frxTableObject, frxChBox, frxGradient, frxRich,
  frxExportXLSX, frxExportImage, frxCross, frxExportCSV, frxClass,
  frxExportBaseDialog, frxExportPDF, frxBDEComponents, frxDCtrl, frxChart;

type
  TArRp_40 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label15: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit_DateTo: TcxDateEdit;
    FSortRadio: TAdvOfficeRadioGroup;
    Query1: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevbtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    SortText: string;
    { Public declarations }
  end;

var
  ArRp_40: TArRp_40;

implementation

uses
  DmAr, uSrcDlg, uSoftFirm, Dmsec;

{$R *.DFM}

procedure TArRp_40.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TArRp_40.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_5_4');
end;

procedure TArRp_40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  ArRp_40 := nil;
end;

procedure TArRp_40.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TArRp_40.PrevbtnClick(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARINVOI SET SMPAY=0 WHERE SMPAY IS NULL');
    ExecSql;
     //
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARINVOI SET SMCHQ=0 WHERE SMCHQ IS NULL');
    ExecSql;
  end;
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'rp_ArDueOver.fr3','1');
end;

procedure TArRp_40.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'rp_ArDueOver.fr3','2');
end;

procedure TArRp_40.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModallOCAT = Mrok then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

procedure TArRp_40.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
end;

procedure TArRp_40.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if FSortRadio.ItemIndex = 0 then
    SortText := '0';
  if FSortRadio.ItemIndex = 1 then
    SortText := '1';
  if FSortRadio.ItemIndex = 2 then
    SortText := '2';
  if UpperCase(VarName) = 'PORDER' then
    Value := SortText;
  if UpperCase(VarName) = 'PLOCAT' then
    Value := edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
end;

end.

