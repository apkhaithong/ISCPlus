unit STRp60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, AdvGroupBox, AdvOfficeButtons, AdvGlowButton,
  AdvToolBar, cxButtonEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxControls, cxContainer, cxEdit, cxCheckBox, AdvPanel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, bsSkinShellCtrls, QExport4XLS,
  QExport4, QExport4Xlsx, Vcl.Menus, AdvMenus, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF, frxExportImage,
  frxGradient, frxFDComponents, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTRp60 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label10: TLabel;
    Label15: TLabel;
    Label11: TLabel;
    Label20: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Edit_Locat: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    Edit_dateFrom: TcxDateEdit;
    Edit_DateTo: TcxDateEdit;
    CheckBox2: TcxCheckBox;
    CheckBox1: TcxCheckBox;
    RadioGp1: TAdvOfficeRadioGroup;
    RadioGroup1: TAdvOfficeRadioGroup;
    RadioGp2: TAdvOfficeRadioGroup;
    qrSalePart: TFDQuery;
    qrSalePartPKLOCAT: TStringField;
    qrSalePartPKDATE: TDateField;
    qrSalePartPKNO: TStringField;
    qrSalePartGROUP1: TStringField;
    qrSalePartPARTNO: TStringField;
    qrSalePartTOTPRC: TFloatField;
    qrSalePartCOST: TFloatField;
    qrSalePartTYPE: TStringField;
    qrSalePartMODEL: TStringField;
    qrSalePartJOBNO: TStringField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    AdvGlowButton1: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    tbExport: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    ExportMenu: TAdvPopupMenu;
    MenuItem146: TMenuItem;
    MenuItem147: TMenuItem;
    QExport4Xlsx1: TQExport4Xlsx;
    QExport4XLS1: TQExport4XLS;
    SaveDialog1: TbsSkinSaveDialog;
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
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGp1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EditBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem146Click(Sender: TObject);
    procedure MenuItem147Click(Sender: TObject);
    procedure tbExportClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    aReport: TQuickRep;
    procedure PickReport;
  public
    SortText, XTypecod: string;
    XYear, XMonth: Word;
    FrmDate, ToDate: TDateTime;
    { Public declarations }
    procedure Do_Export_Data;
  end;

var
  FmSTRp60: TFmSTRp60;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  DmSet1, uSrcDlg, uSoftfirm, Dmsec;

{$R *.DFM}

procedure TFmSTRp60.Do_Export_Data;
var
  ed1, Ed2, Ed3, Ed4, XFlag, L1, L2, Xsort, Xdt2: string;
  Xdt1: Tdatetime;
begin
  if FmSTRp60.RadioGp1.ItemIndex = 0 then
  begin
    case FmSTRp60.RadioGroup1.ItemIndex of
      0:
        begin
          XFlag := ' A.Flag = ''1''   ';
        end;
      1:
        begin
          XFlag := ' A.Flag = ''2'' ';
        end;
      2:
        begin
          XFlag := ' (A.Flag = ''1'' OR A.Flag =''2'' ) ';
        end;
    end;
  end;
  if FmSTRp60.RadioGp1.ItemIndex = 1 then
  begin
    XFlag := ' (A.Flag=''3'' ) and A.FREE<>''Y'' ';
  end;
  if FmSTRp60.RadioGp1.ItemIndex = 2 then
  begin
    XFlag := ' (A.Flag=''3'' ) and A.FREE=''Y'' ';
  end;

  if FmSTRp60.RadioGp1.ItemIndex = 3 then
  begin
    XFlag := ' (A.Flag=''3'' ) ';
  end;

  if FmSTRp60.RadioGp1.ItemIndex = 4 then
  begin
    XFlag := ' (A.Flag = ''1'' OR A.Flag =''2'' OR A.Flag =''3''  ) ';
  end;

  if FmSTRp60.CheckBox1.Checked then
  begin
    XFlag := XFlag + ' AND A.NETPRC<A.AVGCOST ';
  end;

  if FmSTRp60.CheckBox2.Checked then
  begin
    XFlag := XFlag + ' AND (A.REFNO IS NULL OR A.REFNO='''' OR A.REFDAT > :6) ';
  end;

  with qrSalePart do
  begin
    close;
    sql.Clear;
    Sql.Add('SELECT A.Pkno,A.PkLocat,A.REFNO,A.REFDAT,A.PkDate,A.PartNo,A.Uprice,(A.QtyOut*A.Uprice) As Total, ' +
      '(A.QtyOut*A.Uprice-A.Totprc) As Redu1,(A.Avgcost*A.Qtyout) As Cost,C.type,C.Model, ' +
      'A.Jobno, A.QtyOut,A.NetPrc,A.Totprc AS Totprc,A.Flag,B.Cuscod,B.Officcod,C.Group1 ' +
      'From Pk_Trans A,Pk_Invoi B,Inventor C ' +
      'Where (A.PKNO=B.PKNO) And (A.Pklocat=C.Locat) and (A.Partno=C.Partno) ' +
      'AND (A.PKLocat like :XLocat) ' +
      'and (A.PartNo>=:XPart1 and A.PartNo<=:XPart2) ' +
      'and (A.Pkdate >=:FrmDate) and (A.PkDate <=:ToDate) and A.Group1 Like :XGroup ' +
      'and ' + XFlag + Xsort);

    if FmSTRp60.Edit3.Text = '' then
      Ed3 := ''
    else
      Ed3 := FmSTRp60.Edit3.text;
    if FmSTRp60.Edit4.Text = '' then
      Ed4 := 'ттттт'
    else
      Ed4 := FmSTRp60.Edit4.text;

    Params[0].AsString := FmSTRp60.Edit_Locat.Text + '%';
    Params[1].AsString := Ed3;
    Params[2].AsString := Ed4;
    Params[3].AsDate := FmSTRp60.Edit_DateFrom.Date;
    Params[4].AsDate := FmSTRp60.Edit_DateTo.Date;
    Params[5].Asstring := FmSTRp60.Edit1.Text + '%';
    if FmSTRp60.CheckBox2.Checked then
      Params[6].AsDate := FmSTRp60.Edit_DateTo.Date;
    Open;
  end;
end;

procedure TFmSTRp60.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_A');
end;

procedure TFmSTRp60.PickReport;
begin

end;

procedure TFmSTRp60.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_pkpart.fr3', '1');
end;

procedure TFmSTRp60.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRp60 := nil;
end;

procedure TFmSTRp60.RadioGp1Click(Sender: TObject);
begin
  RadioGroup1.Enabled := RadioGp1.Itemindex = 0;
end;

procedure TFmSTRp60.AdvGlowButton1Click(Sender: TObject);
begin
  close;
end;

procedure TFmSTRp60.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRp60.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit1.text := fSrcDlg.Keyno;
end;

procedure TFmSTRp60.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit3.text := fSrcDlg.Keyno;
end;

procedure TFmSTRp60.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRp60.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit4.text := fSrcDlg.Keyno;
end;

procedure TFmSTRp60.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'rp_pkpart.fr3', '2');
end;

procedure TFmSTRp60.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort, XCheck, XTax, XCost, XOption: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := EDIT_Locat.Text + '%';

  if UpperCase(VarName) = 'PLOCAT1' then
  begin
    if Edit_Locat.Text = '' then
      Value := ''
    else
      Value := Edit_Locat.Text;
  end;

  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_DateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;

  if UpperCase(VarName) = 'PFPART' then
  begin
    if Edit3.Text = '' then
      Value := '0'
    else
      Value := Edit3.Text;
  end;

  if UpperCase(VarName) = 'PTPART' then
  begin
    if Edit4.Text = '' then
      Value := 'ттт'
    else
      Value := Edit4.Text;
  end;

  if UpperCase(VarName) = 'PGROUP' then
    Value := Edit1.Text + '%';

  case RadioGp1.ItemIndex of
    0:
      XOption := '0';
    1:
      XOption := '1';
    2:
      XOption := '2';
    3:
      XOption := '3';
    4:
      XOption := '4';
    5:
      XOption := '5';
  end;
  if UpperCase(VarName) = 'POPTION' then
    Value := XOption;

  if CheckBox2.Checked = True then
    XTax := 'T'
  else
    XTax := 'F';
  if UpperCase(VarName) = 'PTAX' then
    Value := XTax;

  if CheckBox1.Checked = True then
    XCost := 'T'
  else
    XCost := 'F';
  if UpperCase(VarName) = 'PCOST' then
    Value := XCost;

  case RadioGp2.ItemIndex of
    0:
      XSort := 'P';
    1:
      XSort := 'D';
  end;
  if UpperCase(VarName) = 'PORDER' then
    Value := XSort;

  case RadioGroup1.ItemIndex of
    0:
      XCheck := '0';
    1:
      XCheck := '1';
    2:
      XCheck := '2';
  end;
  if UpperCase(VarName) = 'PCHK' then
    Value := XCheck;
end;

procedure TFmSTRp60.FormShow(Sender: TObject);
begin
  RadioGp2.ItemIndex := 0;
  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
  EditBtn.Visible := SFMain.XDesign = 'Y';
  XDate := Date;
  DecodeDate(XDate, XYear, XMonth, XDay);
end;

procedure TFmSTRp60.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFmSTRp60.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFmSTRp60.tbExportClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

end.

