unit IcRp110;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, QRPrntr, printers, ComCtrls, Mask,
  Csv_txt, Spin, ImgList, ToolWin, RzPanel, RzSpnEdt, DB, AdvToolBar,
  AdvGlowButton, cxSpinEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxCheckBox, AdvGroupBox,
  AdvOfficeButtons, AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxCore, cxDateUtils,
  QExport4DBF, QExport4PDF, QExport4RTF, QExport4Docx, QExport4XLS, Vcl.Menus,
  AdvMenus, bsSkinShellCtrls, QExport4, QExport4Xlsx, BusinessSkinForm,
  frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents,
  frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFIcRp110 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label14: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit_Locat: TcxButtonEdit;
    edShelf: TcxTextEdit;
    edSupplier: TcxButtonEdit;
    Edit_DateTo: TcxDateEdit;
    SpinEdit1: TcxSpinEdit;
    SpinEdit2: TcxSpinEdit;
    Edit1: TcxButtonEdit;
    Edit7: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    CheckBox2: TcxCheckBox;
    CheckBox1: TcxCheckBox;
    RadioGp5: TAdvOfficeRadioGroup;
    SortRadio: TAdvOfficeRadioGroup;
    qStkBalance: TFDQuery;
    Query1: TFDQuery;
    qStkBal: TFDQuery;
    qrExportStk: TFDQuery;
    qrExportStkPARTNO: TStringField;
    qrExportStkMOVDATE: TDateField;
    qrExportStkONLO1: TFloatField;
    qrExportStkTOT2: TFloatField;
    qrExportStkTYPE: TStringField;
    qrExportStkGROUP1: TStringField;
    qrExportStkMAX1: TFloatField;
    qrExportStkCOST: TFloatField;
    qrExportStkMIN1: TFloatField;
    qrExportStkMODEL: TStringField;
    qrExportStkDESC1: TStringField;
    qrExportStkONHN1: TFloatField;
    qrExportStkTOT1: TFloatField;
    qrExportStkPRC1: TFloatField;
    qrExportStkSHELF: TStringField;
    qrExportStkLOCAT: TStringField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel3: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    ExportBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    tbCrtBarcode: TAdvGlowButton;
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
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxGradientObject1: TfrxGradientObject;
    frxFDComponents1: TfrxFDComponents;
    frxDialogControls1: TfrxDialogControls;
    frxReport1: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGp5Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit_DateToChange(Sender: TObject);
    procedure tbCrtBarcodeClick(Sender: TObject);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edSupplierPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure ExportBtnClick(Sender: TObject);
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
    Day1, Month1, Year1, Xorder, Onlo, onhn, Cost, Prc, TbName: string;
    Year, Month, Day: Word;
    procedure Do_Export_Data;
  end;

var
  FIcRp110: TFIcRp110;

implementation

uses
  USoftFirm, uSrcDlg, unfrPreview, Dmsec, Dm1;
{$R *.DFM}

procedure TFIcRp110.Do_Export_Data;
var
  Ed1, Ed2, Ed3, Ed4, Ed6, Ed7, Opt: string;
  L1, I, ST: INTEGER;
begin
  Onhn := 'Onhn_' + inttostr(FIcRp110.Month);
  Onlo := 'Allo_' + inttostr(FIcRp110.Month);
  Cost := 'Cost_' + inttostr(FIcRp110.Month);
  Prc := 'Price' + IntToStr(FIcRp110.SpinEdit1.Value);
  case FIcRp110.SortRadio.ItemIndex of
    0:
      begin
        XOrder := ' Order By t.partno';
      end;
    1:
      begin
        XOrder := ' Order By t.group1';
      end;
    2:
      begin
        XOrder := ' Order By t.model';
      end;
    3:
      begin
        XOrder := ' Order By t.Shelf,t.partno';
      end;
    4:
      begin
        XOrder := ' Order By t.Supplier,t.partno';
      end;
  end;
  L1 := length(FIcRp110.Edit3.Text);

  case FIcRp110.RadioGp5.ItemIndex of
    0:
      begin
        if FIcRp110.CheckBox1.Checked then
          Opt := ' And a.' + Onlo + '<>0 ' + ' And a.' + Onhn + '<>0 '
        else
          Opt := '';
      end;
    1:
      Opt := ' And (a.' + Onlo + '>0 ' + ' Or a.' + Onhn + '>0) ';
    2:
      Opt := ' And (a.' + Onlo + '<0 ' + ' Or a.' + Onhn + '<0) ';
    3:
      Opt := ' And a.' + Onlo + '=0 ';
    4:
      Opt := ' and (t.Shelf<>'''') ';
    5:
      Opt := ' and a.' + Onlo + '<> a.' + Onhn;
    6:
      Opt := ' and a.' + COST + '<=0 ';
    7:
      Opt := ' And a.' + Onlo + '<>0 ';
  end;
  if FIcRp110.CheckBox2.Checked then
    Opt := Opt + ' and Chargflg<>''Y'' ';

  with qrExportStk do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT t.LOCAT,t.Unit,t.Partno,t.DESC1,t.type,t.model,t.group1, ' + 'a.' + Onhn + ' as onhn1,t.supplier,' +
      'a.' + Onlo + ' as onlo1,t.' + Prc + ' As Prc1,' + 'a.' + cost + ' as cost, ' +
      'a.' + Onhn + '*a.' + cost + ' As Tot1,a.' + Onlo + '*a.' + cost + ' As Tot2,t.Shelf, ' +
      't.max1,t.min1,t.movdate ' +
      'From Inventor t,Invanls a ' +
      'Where (t.LOCAT like:XLocat) and (a.Year1 =:XYear) ' +
      'and (t.Group1 like:XGroup1) and (t.LOCAT = a.LOCAT)  ' +
      'and (t.PartNo>=:XPart1 and t.PartNo<=:XPart2) and (t.Shelf Like :XShelf ) ' +
      'and (t.supplier like :Xsupply) and t.Type like :xtype ' +
      'and (t.PartNo = a.PartNo) ' + Opt + XOrder);

    if FIcRp110.Edit_Locat.Text <> '' then
      Ed2 := FIcRp110.Edit_Locat.text + '%'
    else
      Ed2 := '%';

    if FIcRp110.Edit1.Text <> '' then
      Ed1 := FIcRp110.Edit1.text + '%'
    else
      Ed1 := '%';

    if FIcRp110.Edit3.Text = '' then
      Ed3 := ''
    else
      Ed3 := FIcRp110.Edit3.text;
    if FIcRp110.Edit4.Text = '' then
      Ed4 := 'โ'
    else
      Ed4 := FIcRp110.Edit4.text;

    Params[0].AsString := Ed2;
    Params[1].AsString := InttoStr(FIcRp110.SpinEdit2.Value);
    Params[2].AsString := Ed1;
    Params[3].AsString := Ed3;
    Params[4].AsString := Ed4;
    Params[5].AsString := FIcRp110.edShelf.Text + '%';
    Params[6].AsString := FIcRp110.edSupplier.Text + '%';
    Params[7].AsString := FIcRp110.Edit7.Text + '%';
    Open;
    if bof and Eof then
      sfMain.RaiseException('ไม่มีข้อมูล ตามเงื่อนไขนี้');
  end;
end;

procedure TFIcRp110.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFIcRp110.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_1');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Edit_DateTo.Date := Date;
  DecodeDate(Edit_DateTo.Date, Year, Month, Day);
  SpinEdit2.Value := Year;
  RadioGp5Click(Sender);
  Edit_DateToChange(Sender);
end;

procedure TFIcRp110.PrnBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_BarCodeStkBal.fr3', '2');
end;

procedure TFIcRp110.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepStkBalance.fr3', '1');
end;

procedure TFIcRp110.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FIcRp110 := nil;
end;

procedure TFIcRp110.RadioGp5Click(Sender: TObject);
begin
  CheckBox1.Enabled := RadioGp5.Itemindex = 0;
end;

procedure TFIcRp110.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFIcRp110.FormShow(Sender: TObject);
begin
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
end;

procedure TFIcRp110.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_RepStkBalance.fr3', '2');
end;

procedure TFIcRp110.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XSort, XChk1, XChk2, XCondi: string;
begin
  if Edit4.Text = '' then
    Edit4.Text := 'โโโโ';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PTYPE' then
    Value := Edit7.Text + '%';
  if UpperCase(VarName) = 'PSHELF' then
    Value := edShelf.Text + '%';
  if UpperCase(VarName) = 'PSUPP' then
    Value := edSupplier.Text + '%';
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;
  if UpperCase(VarName) = 'PPARTFM' then
    Value := Edit3.Text;
  if UpperCase(VarName) = 'PPARTTO' then
    Value := Edit4.Text;
  if UpperCase(VarName) = 'PGROUP' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PSEECOST' then
    Value := SFMain.Xseecost;
  if UpperCase(VarName) = 'PSLEVEL' then
    Value := IntToStr(FIcRp110.SpinEdit1.Value);

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
    3:
      XSort := '3';
    4:
      XSort := '4';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;

  case RadioGp5.ItemIndex of
    0:
      XCondi := '0';
    1:
      XCondi := '1';
    2:
      XCondi := '2';
    3:
      XCondi := '3';
    4:
      XCondi := '4';
    5:
      XCondi := '5';
    6:
      XCondi := '6';
    7:
      XCondi := '7';
  end;
  if UpperCase(VarName) = 'PCONDI' then
    Value := XCondi;

  if Checkbox1.Checked = True then
    XChk1 := 'Y'
  else
    XChk1 := 'N';
  if UpperCase(VarName) = 'PCHK1' then
    Value := XChk1;

  if Checkbox2.Checked = True then
    XChk2 := 'Y'
  else
    XChk2 := 'N';
  if UpperCase(VarName) = 'PCHK2' then
    Value := XChk2;
end;

procedure TFIcRp110.Edit_DateToChange(Sender: TObject);
begin
  DecodeDate(Edit_DateTo.date, Year, Month, Day);
  SpinEdit2.Value := YEAR;
end;

procedure TFIcRp110.tbCrtBarcodeClick(Sender: TObject);
var
  Ed1, Ed2, Ed3, Ed4, Ed6, Ed7, Opt: string;
  L1, I, ST: INTEGER;
begin
  Onhn := 'Onhn_' + inttostr(FIcRp110.Month);
  Onlo := 'Allo_' + inttostr(FIcRp110.Month);
  Cost := 'Cost_' + inttostr(FIcRp110.Month);
  Prc := 'Price' + IntToStr(FIcRp110.SpinEdit1.Value);
  case FIcRp110.SortRadio.ItemIndex of
    0:
      begin
        XOrder := ' Order By t.partno';
      end;
    1:
      begin
        XOrder := ' Order By t.group1';
      end;
    2:
      begin
        XOrder := ' Order By t.model';
      end;
    3:
      begin
        XOrder := ' Order By t.Shelf,t.partno';
      end;
    4:
      begin
        XOrder := ' Order By t.Supplier,t.partno';
      end;
  end;
  L1 := length(FIcRp110.Edit3.Text);

  case FIcRp110.RadioGp5.ItemIndex of
    0:
      begin
        if FIcRp110.CheckBox1.Checked then
          Opt := ' And a.' + Onlo + '<>0 ' + ' And a.' + Onhn + '<>0 '
        else
          Opt := '';
      end;
    1:
      Opt := ' And (a.' + Onlo + '>0 ' + ' Or a.' + Onhn + '>0) ';
    2:
      Opt := ' And (a.' + Onlo + '<0 ' + ' Or a.' + Onhn + '<0) ';
    3:
      Opt := ' And a.' + Onlo + '=0 ';
    4:
      Opt := ' and (t.Shelf<>'''') ';
    5:
      Opt := ' and a.' + Onlo + '<> a.' + Onhn;
    6:
      Opt := ' and a.' + COST + '<=0 ';
    7:
      Opt := ' And a.' + Onlo + '<>0 ';
  end;
  if FIcRp110.CheckBox2.Checked then
    Opt := Opt + ' and Chargflg<>''Y'' ';

  with qStkBalance do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT t.LOCAT,t.Unit,t.Partno,t.DESC1,t.type,t.model,t.group1, ' + 'a.' + Onhn + ' as onhn1,t.supplier,' +
      'a.' + Onlo + ' as onlo1,t.' + Prc + ' As Prc1,' + 'a.' + cost + ' as cost, ' +
      'a.' + Onhn + '*a.' + cost + ' As Tot1,a.' + Onlo + '*a.' + cost + ' As Tot2,t.Shelf,t.STDBUY ' +
      'From Inventor t,Invanls a ' +
      'Where (t.LOCAT like:XLocat) and (a.Year1 =:XYear) ' +
      'and (t.Group1 like:XGroup1) and (t.LOCAT = a.LOCAT)  ' +
      'and (t.PartNo>=:XPart1 and t.PartNo<=:XPart2) and (t.Shelf Like :XShelf ) ' +
      'and (t.supplier like :Xsupply) and t.Type like :xtype ' +
      'and (t.PartNo = a.PartNo) ' + Opt + XOrder);

    if FIcRp110.Edit_Locat.Text <> '' then
      Ed2 := FIcRp110.Edit_Locat.text + '%'
    else
      Ed2 := '%';

    if FIcRp110.Edit1.Text <> '' then
      Ed1 := FIcRp110.Edit1.text + '%'
    else
      Ed1 := '%';

    if FIcRp110.Edit3.Text = '' then
      Ed3 := ''
    else
      Ed3 := FIcRp110.Edit3.text;
    if FIcRp110.Edit4.Text = '' then
      Ed4 := 'โ'
    else
      Ed4 := FIcRp110.Edit4.text;

    Params[0].AsString := Ed2;
    Params[1].AsString := InttoStr(FIcRp110.SpinEdit2.Value);
    Params[2].AsString := Ed1;
    Params[3].AsString := Ed3;
    Params[4].AsString := Ed4;
    Params[5].AsString := FIcRp110.edShelf.Text + '%';
    Params[6].AsString := FIcRp110.edSupplier.Text + '%';
    Params[7].AsString := FIcRp110.Edit7.Text + '%';
    Open;
    if bof and Eof then
      sfMain.RaiseException('ไม่มีข้อมูล ตามเงื่อนไขนี้')
    else
    begin

//==============================
      TbName := 'TBARCODE';
      with Query1 do
      begin
        close;
        sql.clear;
        Sql.Add('SELECT * FROM SYSSTAT.TABLES WHERE TABNAME=:0  AND  TABSCHEMA =:1 ');
        Params[0].AsString := TbName;
        params[1].asstring := Dm_SEC.XSchema;
        open;
        if Eof and Bof then
        begin
      //  สร้างตารางเก็บข้อมูล Part
          close;
          sql.Clear;
          sql.Add('CREATE TABLE ' + TbName + ' (  ' +
            'LOCAT  CHAR(8) NOT NULL,  ' +
            'PARTNO CHAR(20) NOT NULL,  ' +
            'MODEL  CHAR(20),  ' +
            'PRICE DECIMAL(12,2) DEFAULT 0,  ' +
            'PRICE1 DECIMAL(12,2) DEFAULT 0,  ' +
            'DESCP  CHAR(100) NOT NULL) ');
          ExecSQL;
        //
          Close;
          sql.Clear;
          sql.Add('CREATE INDEX ' + TbName + '0 ON ' + TbName + '(PARTNO ASC,LOCAT ASC)');
          Execsql;
        end
        else
        begin
          with Query1 do
          begin
            Close;
            sql.Clear;
            sql.Add('DROP TABLE ' + TbName);
            Execsql;

            close;
            sql.Clear;
            sql.Add('CREATE TABLE ' + TbName + ' (  ' +
              'LOCAT  CHAR(8) NOT NULL,  ' +
              'PARTNO CHAR(20) NOT NULL,  ' +
              'MODEL  CHAR(20),  ' +
              'PRICE DECIMAL(12,2) DEFAULT 0,  ' +
              'PRICE1 DECIMAL(12,2) DEFAULT 0,  ' +
              'DESCP  CHAR(100) NOT NULL) ');
            ExecSQL;
          //
            Close;
            sql.Clear;
            sql.Add('CREATE INDEX ' + TbName + '0 ON ' + TbName + '(PARTNO ASC,LOCAT ASC)');
            Execsql;
          end;
        end;
      end;

      with Query1 do
      begin
        Close;
        sql.Clear;
        sql.Add('DELETE FROM ' + TbName);
        Execsql;
      end;

      with qStkBal do
      begin
        close;
        sql.Clear;
        sql.Add('SELECT * FROM ' + TbName + ' WHERE PARTNO='''' ');
        Open;
      end;

      qStkBalance.First;
      while not qStkBalance.Eof do
      begin
        ST := qStkBalance.Fieldbyname('onlo1').AsInteger;
        for I := 1 to ST do
        begin
          qStkBal.Insert;
          qStkBal.Fieldbyname('LOCAT').AsString := qStkBalance.Fieldbyname('LOCAT').AsString;
          qStkBal.Fieldbyname('PARTNO').AsString := qStkBalance.Fieldbyname('PARTNO').AsString;
          qStkBal.Fieldbyname('MODEL').AsString := qStkBalance.Fieldbyname('MODEL').AsString;
          qStkBal.Fieldbyname('PRICE').AsFloat := qStkBalance.Fieldbyname('STDBUY').AsFloat;
          qStkBal.Fieldbyname('PRICE1').AsFloat := qStkBalance.Fieldbyname('PRC1').AsFloat;
          qStkBal.Fieldbyname('DESCP').AsString := qStkBalance.Fieldbyname('DESC1').AsString;
          qStkBal.Post;
        end;
        qStkBalance.Next;
      end;

//==============================
      DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_BarCodeStkBal.fr3', '1');
    end;
  end;
end;

procedure TFIcRp110.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TFIcRp110.edSupplierPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAp = Mrok then
    edSupplier.text := fSrcDlg.KeyNo;
end;

procedure TFIcRp110.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit1.text := fSrcDlg.KeyNo;
end;

procedure TFIcRp110.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalType = Mrok then
    Edit7.text := fSrcDlg.KeyNo;
end;

procedure TFIcRp110.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit3.text := fSrcDlg.KeyNo;
end;

procedure TFIcRp110.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit4.text := fSrcDlg.KeyNo;
end;

procedure TFIcRp110.ExportBtnClick(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TFIcRp110.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TFIcRp110.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TFIcRp110.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TFIcRp110.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TFIcRp110.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TFIcRp110.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

