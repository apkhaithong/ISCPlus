unit TXRp20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, StdCtrls,
  Dialogs, ExtCtrls, Printers, ComCtrls, DBCtrls, DB, AdvGlowButton, AdvToolBar,
  AdvPanel, AdvGroupBox, AdvOfficeButtons, cxDropDownEdit, cxCalendar,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxCore, cxDateUtils, QExport4DBF,
  QExport4PDF, QExport4RTF, QExport4Docx, QExport4XLS, Vcl.Menus, AdvMenus,
  bsSkinShellCtrls, QExport4, QExport4Xlsx, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF, frxExportImage,
  frxGradient, frxFDComponents, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmTXRp20 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    Sortgrp: TAdvOfficeRadioGroup;
    qrTaxBuy: TFDQuery;
    qrTaxBuyLOCAT: TStringField;
    qrTaxBuyTAXNO: TStringField;
    qrTaxBuyTAXDATE: TDateField;
    qrTaxBuyCUSCOD: TStringField;
    qrTaxBuyAPNAME: TStringField;
    qrTaxBuyBALANCE: TFloatField;
    qrTaxBuyVATRT: TFloatField;
    qrTaxBuyVAT: TFloatField;
    qrTaxBuyTOTTAX: TFloatField;
    qrTaxBuyDESC1: TStringField;
    qrTaxBuyFLAG: TStringField;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    tbExport: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    QExportXLS1: TQExport4Xlsx;
    SaveDialog1: TbsSkinSaveDialog;
    ExportMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    WordDocument1: TMenuItem;
    WordDocument2: TMenuItem;
    PDF1: TMenuItem;
    DBF1: TMenuItem;
    QExport4Xlsx1: TQExport4Xlsx;
    QExport4XLS1: TQExport4XLS;
    QExport4Docx1: TQExport4Docx;
    QExport4RTF1: TQExport4RTF;
    QExport4PDF1: TQExport4PDF;
    QExport4DBF1: TQExport4DBF;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbExportClick(Sender: TObject);
    procedure MenuItem146Click(Sender: TObject);
    procedure MenuItem147Click(Sender: TObject);
    procedure WordDocument1Click(Sender: TObject);
    procedure WordDocument2Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure DBF1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    procedure Do_Export_Data;
    { Public declarations }
  end;

var
  FmTXRp20: TFmTXRp20;

implementation

uses
  DmTx, uFindData, uSoftfirm, unfrPreview, Dmsec;
{$R *.DFM}

procedure TFmTXRp20.Do_Export_Data;
begin
  with qrTaxBuy do
  begin
    close;
    sql.Clear;
    sql.Add('Select A.Locat,a.Taxno,a.Taxdate,a.cuscod,c.apname,a.Balance,a.vatrt,a.Vat,a.Tottax,a.Desc1,a.flag,a.Cancel,a.Cancelid,a.aptype ' +
      'from TaxBuy A,Apmast c ' +
      'Where (a.Flag=''1'')  and a.cuscod=c.apcode and (a.locat like :0) and (a.taxdate>=:1 and a.taxdate<=:2) ' +
      'Union ' +
      'Select A.Locat,a.Taxno,a.Taxdate,a.cuscod,c.apname,a.Balance,a.vatrt,a.Vat,a.Tottax,a.Desc1,a.flag,a.Cancel,a.Cancelid,a.aptype ' +
      'from TaxBuy A,NRc_invoi B,Apmast c ' +
      'Where (a.taxrefno=b.Recvno) and (a.Flag=''3'') and a.cuscod=c.apcode and (a.locat like :0) and (a.taxdate>=:1 and a.taxdate<=:2) ' +
      'Union ' +
      'Select a.Locat,a.Taxno,a.Taxdate,a.cuscod,c.apname,-a.Balance as Balance,a.vatrt,-a.Vat as Vat,-a.Tottax as Tottax,a.Desc1,a.flag,a.Cancel,a.Cancelid,a.aptype ' +
      'from TaxBuy  a,Apmast c ' +
      'Where a.Flag=''6''   and a.cuscod=c.apcode and (a.locat like :0) and (a.taxdate>=:1 and a.taxdate<=:2) ');
    Params[0].AsString := Edit_Locat.Text + '%';
    Params[1].AsDate := Edit_DateFrom.Date;
    Params[2].AsDate := Edit_DateTo.Date;
    Open;
  end;
end;

procedure TFmTXRp20.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP04_4');
end;

procedure TFmTXRp20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FmTXRp20 := nil;
end;

procedure TFmTXRp20.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepTaxBuySV.fr3', '1');
end;

procedure TFmTXRp20.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepTaxBuySV.fr3', '2');
end;

procedure TFmTXRp20.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmTXRp20.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';

  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;

  case SortGrp.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;
end;

procedure TFmTXRp20.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmTXRp20.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfFindData, fFindData);
  if fFindData.ShowModalSfloct = Mrok then
    Edit_Locat.Text := fFindData.Keyno;
end;

procedure TFmTXRp20.tbExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFmTXRp20.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFmTXRp20.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFmTXRp20.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFmTXRp20.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFmTXRp20.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFmTXRp20.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

procedure TFmTXRp20.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

end.

