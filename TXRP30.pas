unit TXRp30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, Csv_txt, ComCtrls, Mask,
  Grids, DBGrids, ImgList, ToolWin, AdvGroupBox, AdvOfficeButtons, AdvGlowButton,
  AdvToolBar, cxCheckBox, cxDropDownEdit, cxCalendar, cxMaskEdit, cxButtonEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, QExport4DBF, QExport4PDF,
  QExport4RTF, QExport4Docx, QExport4XLS, Vcl.Menus, AdvMenus, bsSkinShellCtrls,
  QExport4, QExport4Xlsx, BusinessSkinForm, frxClass, frxExportXLSX, frxRich,
  frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmTXRp30 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TcxTextEdit;
    Edit_Locat: TcxButtonEdit;
    Edit_DateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    CheckBox1: TcxCheckBox;
    RadioGroup1: TAdvOfficeRadioGroup;
    RadioGroup2: TAdvOfficeRadioGroup;
    SortGrp: TAdvOfficeRadioGroup;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
    qrTaxSale: TFDQuery;
    qrTaxSaleLOCAT: TStringField;
    qrTaxSaleTAXNO: TStringField;
    qrTaxSaleTAXDATE: TDateField;
    qrTaxSaleCUSCOD: TStringField;
    qrTaxSaleSNAM: TStringField;
    qrTaxSaleNAME1: TStringField;
    qrTaxSaleNAME2: TStringField;
    qrTaxSaleBALANCE: TFloatField;
    qrTaxSaleVATRT: TFloatField;
    qrTaxSaleVAT: TFloatField;
    qrTaxSaleTOTTAX: TFloatField;
    qrTaxSaleDESC1: TStringField;
    qrTaxSaleJOBNO: TStringField;
    qrTaxSaleCANCELID: TStringField;
    qrTaxSalePAYTYP: TStringField;
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
    procedure ExitBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit1PropertiesEditValueChanged(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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
    { Public declarations }
    procedure Do_Export_Data;
  end;

var
  FmTXRp30: TFmTXRp30;

implementation

uses
  DmTx, uFindData, uSoftfirm, unfrPreview, Dmsec;

{$R *.DFM}

procedure TFmTXRp30.Do_Export_Data;
var
  Xorder, Saltyp, TypPay, nTable: string;
begin
  nTable := 'TAXSAL';

  case FmTXRp30.RadioGroup2.itemindex of
    0:
      Saltyp := ' AND T.FRSV=''F'' ';
    1:
      Saltyp := ' AND T.FRSV=''N'' ';
    2:
      begin
        if FmTXRp30.CheckBox1.Checked then
          Saltyp := ' AND (T.FRSV=''F'' OR T.FRSV=''N'') '
        else
          Saltyp := ' ';
      end;
  end;

  case RadioGroup1.ItemIndex of
    0:
      TypPay := ' and T.PAYTYP=''S'' ';
    1:
      TypPay := ' and T.PAYTYP=''C'' ';
    2:
      TypPay := ' ';
  end;

  if FmTXRp30.Sortgrp.Itemindex = 0 then
    Xorder := ' Order By Taxno '
  else
    Xorder := ' Order By TaxDate,TAXNO ';

  with qrTaxSale do
  begin
    close;
    sql.Clear;
    sql.Add('Select  T.locat,T.Jobno,T.Taxno,T.Taxdate,T.cuscod,T.Balance,t.vatrt,T.Vat,T.Tottax,T.Desc1,T.flag,T.Cancel,T.Cancelid, ' +
      'C.Snam,C.Name1,C.Name2,t.paytyp ' +
      'from ' + nTable + ' T,custmast C ' +
      'Where T.cuscod=C.Cuscod and T.Flag=''1''  ' + Saltyp + TypPay +
      'AND T.LOCAT like :PLOCAT and SUBSTR(T.TAXNO,2,2) LIKE :PHDDOC ' +
      'AND (T.TAXDATE>=:PFDATE AND T.TAXDATE<=:PTDATE) ' +
      'Union ' +
      'Select T.locat,T.Jobno,T.Taxno,T.Taxdate,T.cuscod,-T.Balance AS Balance,t.vatrt,-T.Vat as Vat,-T.Tottax As Tottax,T.Desc1,T.flag,T.Cancel,T.Cancelid, ' +
      'C.Snam,C.Name1,C.Name2,t.paytyp ' +
      'from ' + nTable + ' T,CUSTMAST C ' +
      'Where T.cuscod=C.Cuscod and  (t.Flag=''2'' Or T.Flag=''7'')  ' + Saltyp + TypPay +
      'AND (T.TAXDATE>=:PFDATE AND T.TAXDATE<=:PTDATE) ' +
      'and T.LOCAT like :PLOCAT  and SUBSTR(T.TAXNO,2,2) LIKE :PHDDOC ' + Xorder);
    Params[0].AsString := Edit_Locat.Text + '%';
    Params[1].AsString := Edit4.Text + '%';
    Params[2].AsDate := Edit_DateFrom.Date;
    Params[3].AsDate := Edit_DateTo.Date;
    Open;
  end;
end;

procedure TFmTXRp30.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP04_2');
end;

procedure TFmTXRp30.ExitBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFmTXRp30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FmTXRp30 := nil;
end;

procedure TFmTXRp30.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmTXRp30.PrevBtnClick(Sender: TObject);
begin
  if AdvOfficeRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepTaxSaleSV.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepTaxSaleFrm.fr3', '1');
end;

procedure TFmTXRp30.EditBtnClick(Sender: TObject);
begin
  if AdvOfficeRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepTaxSaleSV.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepTaxSaleFrm.fr3', '2');
end;

procedure TFmTXRp30.RadioGroup2Click(Sender: TObject);
begin
  CheckBox1.Enabled := RadioGroup2.Itemindex = 3;
end;

procedure TFmTXRp30.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmTXRp30.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfFindData, fFindData);
  if fFindData.ShowModalSfloct = Mrok then
    Edit_Locat.Text := fFindData.Keyno;
end;

procedure TFmTXRp30.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfFindData, fFindData);
  if fFindData.ShowModalTaxSal = Mrok then
    cxButtonEdit1.Text := fFindData.Keyno;
end;

procedure TFmTXRp30.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(TfFindData, fFindData);
  if fFindData.ShowModalTaxSal = Mrok then
    cxButtonEdit2.Text := fFindData.Keyno;
end;

procedure TFmTXRp30.cxButtonEdit1PropertiesEditValueChanged(Sender: TObject);
begin
  cxButtonEdit2.Text := cxButtonEdit1.Text;
end;

procedure TFmTXRp30.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
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

procedure TFmTXRp30.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort, XTypPay, XChk1, XCondi: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PHDDOC' then
    Value := Edit4.Text + '%';
  if UpperCase(VarName) = 'PTAXNO1' then
    Value := cxButtonEdit1.Text + '%';
  if UpperCase(VarName) = 'PTAXNO2' then
    Value := cxButtonEdit2.Text + '%';

  case SortGrp.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;

  case RadioGroup1.ItemIndex of
    0:
      XTypPay := '0';
    1:
      XTypPay := '1';
    2:
      XTypPay := '2';
  end;
  if UpperCase(VarName) = 'PTYPEPAY' then
    Value := XTypPay;

  case RadioGroup2.ItemIndex of
    0:
      XCondi := '0';
    1:
      XCondi := '2';
    2:
      XCondi := '3';
  end;
  if UpperCase(VarName) = 'PCONDI' then
    Value := XCondi;

  if Checkbox1.Checked = True then
    XChk1 := 'Y'
  else
    XChk1 := 'N';
  if UpperCase(VarName) = 'PCHK' then
    Value := XChk1;
end;

procedure TFmTXRp30.tbExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFmTXRp30.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFmTXRp30.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFmTXRp30.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFmTXRp30.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFmTXRp30.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFmTXRp30.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

procedure TFmTXRp30.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := ('DD/MM/YYYY');
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

end.

