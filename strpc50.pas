unit Strpc50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Grids, DBGrids, ComCtrls,
  Mask, ImgList, ToolWin, cxButtonEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxCheckBox, AdvGroupBox,
  AdvOfficeButtons, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, bsSkinShellCtrls, Vcl.Menus,
  AdvMenus, QExport4DBF, QExport4PDF, QExport4RTF, QExport4Docx, QExport4XLS,
  QExport4, QExport4Xlsx, BusinessSkinForm, frxClass, frxExportXLSX, frxRich,
  frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TStRp_C50 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    RadioGroup1: TAdvOfficeRadioGroup;
    RadioGroup2: TAdvOfficeRadioGroup;
    OptRadio: TAdvOfficeRadioGroup;
    CheckBox1: TcxCheckBox;
    Edit_dateFrom: TcxDateEdit;
    Edit_dateTo: TcxDateEdit;
    EDIT_LOCAT: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    QExport4Xlsx1: TQExport4Xlsx;
    QExport4XLS1: TQExport4XLS;
    QExport4Docx1: TQExport4Docx;
    QExport4RTF1: TQExport4RTF;
    QExport4PDF1: TQExport4PDF;
    QExport4DBF1: TQExport4DBF;
    ExportMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    WordDocument1: TMenuItem;
    WordDocument2: TMenuItem;
    PDF1: TMenuItem;
    DBF1: TMenuItem;
    AdvGlowButton1: TAdvGlowButton;
    qrExportStk: TFDQuery;
    SaveDialog1: TbsSkinSaveDialog;
    qrExportStkLOCAT: TStringField;
    qrExportStkTAXDATE: TDateField;
    qrExportStkINVNO: TStringField;
    qrExportStkINVDATE: TDateField;
    qrExportStkJOBNO: TStringField;
    qrExportStkPARTNO: TStringField;
    qrExportStkQTYOUT: TFloatField;
    qrExportStkVATTYPE: TStringField;
    qrExportStkVATRT: TFloatField;
    qrExportStkDESCP: TStringField;
    qrExportStkPKNO: TStringField;
    qrExportStkFREE: TStringField;
    qrExportStkGROUP1: TStringField;
    qrExportStkTYPESALE: TStringField;
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
    qrExportStkUPRICE: TFMTBCDField;
    qrExportStkTOTPRC: TFMTBCDField;
    qrExportStkAVGCOST: TFMTBCDField;
    qrExportStkTOTCOST: TFMTBCDField;
    qrExportStkREDUE: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OptRadioClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure MenuItem146Click(Sender: TObject);
    procedure MenuItem147Click(Sender: TObject);
    procedure WordDocument1Click(Sender: TObject);
    procedure WordDocument2Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure DBF1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    SortText, OptnText, JobText: string;
    procedure Do_Export_Data;
  end;

var
  StRp_C50: TStRp_C50;

implementation

uses
  DmSet1, USoftFirm, uSrcDlg, unfrPreview, Dmsec;

{$R *.DFM}

procedure TStRp_C50.Do_Export_Data;
var
  CHKDT, CKSL, CKFR, CKORD: string;
begin
  if RadioGroup2.ItemIndex = 0 then
    CHKDT := ' AND TAXDATE >= :PFDATE AND TAXDATE <= :PTDATE '
  else
    CHKDT := ' AND INVDATE >= :PFDATE AND INVDATE <= :PTDATE ';

  if OptRadio.ItemIndex = 0 then
    CKSL := ' AND TYPESALE = ''FS'' '
  else if OptRadio.ItemIndex = 1 then
    CKSL := ' AND TYPESALE = ''RT'' '
  else
    CKSL := ' AND TYPESALE = ''AJ'' ';

  if CheckBox1.Checked = True then
    CKFR := ' AND FREE=''Y'' '
  else
    CKFR := '';

  if RadioGroup1.ItemIndex = 0 then
    CKORD := ' ORDER BY INVNO '
  else if RadioGroup1.ItemIndex = 1 then
    CKORD := ' ORDER BY TAXDATE '
  else
    CKORD := ' ORDER BY PARTNO ';

  with qrExportStk do
  begin
    close;
    sql.Clear;
    sql.Add('select * from View_CostProduct ' +
      'where  locat like :PLOCAT ' + CHKDT + CKSL + CKFR +
      'and jobno like :PJOBNO and group1 like :PGROUP ' + CKORD);
    params[0].AsString := Edit_Locat.Text + '%';
    params[1].AsDateTime := edit_DateFrom.Date;
    params[2].AsDateTime := edit_Dateto.Date;
    params[3].AsString := Edit2.Text + '%';
    params[4].AsString := Edit1.Text + '%';
    open;
  end;
end;

procedure TStRp_C50.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_I');
end;

procedure TStRp_C50.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TStRp_C50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  StRp_C50 := nil;
end;

procedure TStRp_C50.OptRadioClick(Sender: TObject);
begin
  Label3.Enabled := OptRadio.Itemindex in [1, 2];
  Edit2.Enabled := Label3.Enabled;
  CheckBox1.Enabled := StRp_C50.OptRadio.ItemIndex in [0, 1, 2];

  Label1.Enabled := OptRadio.Itemindex in [0, 1, 2];
  Edit1.Enabled := Label1.Enabled;
end;

procedure TStRp_C50.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TStRp_C50.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort, XOpt, XChk, XSeldt: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PJOBNO' then
    Value := Edit2.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_Dateto.Date;
  if UpperCase(VarName) = 'PGROUP' then
    Value := Edit1.Text + '%';

  case OptRadio.ItemIndex of
    0:
      XOpt := '0';
    1:
      XOpt := '3';
    2:
      XOpt := '4';
  end;
  if UpperCase(VarName) = 'POPT' then
    Value := XOpt;

  case RadioGroup1.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '3';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;

  case RadioGroup2.ItemIndex of
    0:
      XSeldt := '0';
    1:
      XSeldt := '1';
  end;
  if UpperCase(VarName) = 'PSELDT' then
    Value := XSeldt;

  if Checkbox1.Checked = True then
    XChk := 'Y'
  else
    XChk := 'N';

  if UpperCase(VarName) = 'PCHK' then
    Value := XChk;

  if UpperCase(VarName) = 'PSEECOST' then
    Value := SFMain.Xseecost;
end;

procedure TStRp_C50.editBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepCostProduct.fr3', '2');
end;

procedure TStRp_C50.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepCostProduct.fr3', '1');
end;

procedure TStRp_C50.EDIT_LOCATPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    EDIT_LOCAT.text := fSrcDlg.Keyno;
end;

procedure TStRp_C50.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit1.Text := fSrcDlg.Keyno;
end;

procedure TStRp_C50.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalallJob = Mrok then
    Edit2.Text := fSrcDlg.KeyNo;
end;

procedure TStRp_C50.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := ('DD/MM/YYYY');
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
end;

procedure TStRp_C50.AdvGlowButton1Click(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TStRp_C50.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TStRp_C50.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TStRp_C50.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TStRp_C50.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TStRp_C50.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

procedure TStRp_C50.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

