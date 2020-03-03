unit STRp40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Dateutils, ComCtrls, Mask,
  Grids, DBGrids, ImgList, ToolWin, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxControls, cxContainer, cxEdit, cxCheckBox,
  AdvGroupBox, AdvOfficeButtons, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxCore, cxDateUtils, Vcl.ActnList,
  frxClass, frxDBSet, BusinessSkinForm, frxExportXLSX, frxRich, frxDCtrl,
  frxTableObject, frxExportPDF, frxExportImage, frxGradient, frxFDComponents,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFmSTRp40 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    SortRadio: TAdvOfficeRadioGroup;
    ChkStatus: TcxCheckBox;
    Edit_Locat: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    Edit2: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    qrAccglmst: TFDQuery;
    qrAccglmstID_NO: TIntegerField;
    qrAccglmstDOCNO: TStringField;
    qrAccglmstDOCDT: TDateField;
    qrAccglmstGLTYPE: TIntegerField;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    qrAccglmstXSORT: TIntegerField;
    qrAccglmstPARTNO: TStringField;
    qrAccglmstPARTDESC: TStringField;
    qrAccglmstQTYIN: TFloatField;
    qrAccglmstQTYOUT: TFloatField;
    qrAccglmstDESCRIPTION: TStringField;
    qrAccglmstLOCAT: TStringField;
    qrAccglmstUNIT: TStringField;
    cxDateEdit1: TcxDateEdit;
    Label1: TLabel;
    ActionList1: TActionList;
    AcEdit: TAction;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit_DateToChange(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure Edit3PropertiesChange(Sender: TObject);
    procedure AcEditExecute(Sender: TObject);
  private
    { Private declarations }
    procedure view_report;
  public
    { Public declarations }
    nMonth, nDay, nYear, year, month, day, Year1, Month1, Day1, Year2, Month2, Day2: word;
    FDate: TDatetime;
  end;

var
  FmSTRp40: TFmSTRp40;

implementation

uses
  DmSet1, USoftFirm, uSrcDlg, Functn01, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmSTRp40.view_report;
begin
  if Edit3.Text = '' then
  begin
    Edit3.Text := '0';
    Edit4.Text := 'ттт';
  end;

  with qrAccglmst do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT ' +
      '1 GLTYPE,0 XSORT,1 ID_NO,'''' LOCAT,'''' DOCNO,''2000-01-01'' DOCDT,PARTNO,PARTDESC,''ТЭДТЁСв'' DESCRIPTION,' +
      'SUM(CASE WHEN XSORT = 1 THEN QTY ELSE 0 END) QTYIN,' +
      'SUM(CASE WHEN XSORT = 2 THEN QTY ELSE 0 END) QTYOUT,'''' UNIT ' +
      'FROM VIEW_STKCARD_MAYO ' +
      'WHERE ' +
      '(DOCDT BETWEEN :VSTARTYEAR AND :VFDATE1) ' +
      'AND (PARTNO BETWEEN :VJOURCOD AND :VJOURCOD1) ' +
      'AND (LOCAT LIKE :VLOCAT) AND (GROUP1 LIKE :VGROUP) ' +
      'GROUP BY PARTNO,PARTDESC ' +


      'UNION ' +
      'SELECT 2 GLTYPE,XSORT,ID_NO,LOCAT,DOCNO,DOCDT,PARTNO,PARTDESC,DESCRIPTION,' +
      'CASE WHEN XSORT = 1 THEN QTY ELSE 0 END QTYIN,' +
      'CASE WHEN XSORT = 2 THEN QTY ELSE 0 END QTYOUT,UNIT ' +
      'FROM VIEW_STKCARD_MAYO ' +
      'WHERE (DOCDT BETWEEN :VFDATE AND :VTDATE) ' +
      'AND (PARTNO BETWEEN :VJOURCOD AND :VJOURCOD1) ' +
      'AND (LOCAT LIKE :VLOCAT) AND (GROUP1 LIKE :VGROUP) ORDER BY PARTNO,DOCDT,ID_NO ');
    params[0].AsDateTime := cxDateEdit1.Date;
    params[1].AsDateTime := Edit_dateFrom.Date - 1;
    params[2].AsString := Edit3.Text;
    params[3].AsString := Edit4.Text;
    params[4].AsString := Edit_Locat.Text + '%';
    params[5].AsString := Edit2.Text + '%';

    params[6].AsDateTime := Edit_dateFrom.Date;
    params[7].AsDateTime := Edit_DateTo.Date;
    params[8].AsString := Edit3.Text;
    params[9].AsString := Edit4.Text;
    params[10].AsString := Edit_Locat.Text + '%';
    params[11].AsString := Edit2.Text + '%';
    open;
  end;

  sfmain.Do_Prev_Edit_FastReport4(frxReport1, 'fr_RepStockCardReal.fr3', '1');
end;

procedure TFmSTRp40.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRp40.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_5');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
end;

procedure TFmSTRp40.PrevBtnClick(Sender: TObject);
begin
  if SortRadio.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepStockCardSum.fr3', '1')
  else if SortRadio.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepStockSumBal.fr3', '1')
  else
    view_report;
end;

procedure TFmSTRp40.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRp40 := nil;
end;

procedure TFmSTRp40.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTRp40.FormShow(Sender: TObject);
begin
  Edit_DateFrom.Date := Date;
  Edit_DateTo.Date := Date;

  SortRadio.Visible := sfmain.XLevel = '1';
  Edit_Locat.Text := SFMain.Xlocat;
 //EditBtn.Visible    := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateToChange(Sender);
  ChkStatus.Checked := False;

  cxDateEdit1.Date := Dm_Sec.Condpay.fieldbyname('START_STK').AsDateTime;
end;

procedure TFmSTRp40.Edit_DateToChange(Sender: TObject);
var
  Day2: string;
begin
  LDay(Day2, Edit_DateTo.Date);
//  Edit_DateTo.date := StrTodate(Day2+Copy(DateTostr(Edit_DateTo.date),3,8));
  decodedate(Edit_DateTo.date, year1, month1, day1);
  Edit_DateFrom.Date := StrToDate('1/' + IntTostr(month1) + '/' + IntTostr(year1));
end;

procedure TFmSTRp40.frReport1GetValue(const ParName: string; var ParValue: Variant);
var
  XSort, XChk: string;
begin
  if Edit4.Text = '' then
    Edit4.Text := 'тттт';
  if UpperCase(ParName) = 'PLOCAT' then
    ParValue := Edit_Locat.Text + '%';
       { If UpperCase(ParName)='PTYPE' then
           ParValue:=Edit5.Text+'%'; }
  if UpperCase(ParName) = 'PFDATE' then
    ParValue := Edit_DateFrom.Date;
  if UpperCase(ParName) = 'PTDATE' then
    ParValue := Edit_DateTo.Date;

  if UpperCase(ParName) = 'PSTARTYEAR' then
    ParValue := cxDateEdit1.Date;
  if Uppercase(ParName) = 'PYESTERDAY' then
    ParValue := Edit_dateFrom.Date - 1;

  if UpperCase(ParName) = 'PPARTFM' then
    ParValue := Edit3.Text;
  if UpperCase(ParName) = 'PPARTTO' then
    ParValue := Edit4.Text;
  if UpperCase(ParName) = 'PGROUP' then
    ParValue := Edit2.Text + '%';

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
    3:
      XSort := '3';
  end;
  if UpperCase(ParName) = 'PSORT' then
    ParValue := XSort;
  if ChkStatus.Checked = True then
    XChk := 'Y'
  else
    XChk := 'N';
  if UpperCase(ParName) = 'PCHK' then
    ParValue := XChk;

  if UpperCase(ParName) = 'PMONTH' then
    ParValue := month1;

  if UpperCase(ParName) = 'PLOCAT1' then
    ParValue := Edit_Locat.Text;
end;

procedure TFmSTRp40.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRp40.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit2.text := fSrcDlg.Keyno;
end;

procedure TFmSTRp40.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalparts = Mrok then
    Edit3.text := fSrcDlg.Keyno;
end;

procedure TFmSTRp40.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit4.text := fSrcDlg.Keyno;
end;

procedure TFmSTRp40.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort, XChk: string;
begin
  if Edit4.Text = '' then
    Edit4.Text := 'тттт';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
       { If UpperCase(VARName)='PTYPE' then
           Value:=Edit5.Text+'%'; }
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PSTARTYEAR' then
    Value := cxDateEdit1.Date;
  if UpperCase(VarName) = 'PPARTFM' then
    Value := Edit3.Text;
  if UpperCase(VarName) = 'PPARTTO' then
    Value := Edit4.Text;
  if UpperCase(VarName) = 'PGROUP' then
    Value := Edit2.Text + '%';

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
    3:
      XSort := '3';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;
  if ChkStatus.Checked = True then
    XChk := 'Y'
  else
    XChk := 'N';
  if UpperCase(VarName) = 'PCHK' then
    Value := XChk;

  if UpperCase(VarName) = 'PMONTH' then
    Value := month1;
end;

procedure TFmSTRp40.Edit3PropertiesChange(Sender: TObject);
begin
  Edit4.Text := Edit3.Text;
end;

procedure TFmSTRp40.AcEditExecute(Sender: TObject);
begin
  if SortRadio.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepStockCardSum.fr3', '2')
  else if SortRadio.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RepStockSumBal.fr3', '2')
  else
    sfmain.Do_Prev_Edit_FastReport4(frxReport1, 'fr_RepStockCardReal.fr3', '2');
end;

end.

