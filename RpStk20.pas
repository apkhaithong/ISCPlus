unit RpStk20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, QuickRpt, QRPrntr, printers, ComCtrls, ImgList,
  ToolWin, Mask, AdvGlowButton, RzSpnEdt, DB, cxGraphics, AdvGroupBox,
  AdvOfficeButtons, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvToolBar, AdvPanel, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, QExport4DBF, QExport4PDF,
  QExport4RTF, QExport4Docx, QExport4XLS, Vcl.Menus, AdvMenus, bsSkinShellCtrls,
  QExport4, QExport4Xlsx, BusinessSkinForm, frxExportXLSX, frxRich,
  frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfRepStkCost = class(TForm)
    AdvPanel1: TAdvPanel;
    Label11: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    rdGroup: TAdvOfficeRadioGroup;
    RadioGroup1: TAdvOfficeRadioGroup;
    wwFdate: TcxDateEdit;
    wwTDate: TcxDateEdit;
    edType: TcxButtonEdit;
    edModel: TcxButtonEdit;
    edColor: TcxButtonEdit;
    edGcode: TcxButtonEdit;
    edLocat: TcxButtonEdit;
    edApcode: TcxButtonEdit;
    rdStat: TcxComboBox;
    Query1: TFDQuery;
    Query1RECVNO: TStringField;
    Query1RECVDT: TDateField;
    Query1INVNO: TStringField;
    Query1INVDT: TDateField;
    Query1APCODE: TStringField;
    Query1RVCODE: TStringField;
    Query1CRLOCAT: TStringField;
    Query1TYPE: TStringField;
    Query1MODEL: TStringField;
    Query1COLOR: TStringField;
    Query1STRNO: TStringField;
    Query1CRCOST: TFloatField;
    Query1DISCT: TFloatField;
    Query1NETCOST: TFloatField;
    Query1CRVAT: TFloatField;
    Query1TOTCOST: TFloatField;
    Query1STAT: TStringField;
    DataSource1: TDataSource;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    DesignBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edColorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edGcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DesignBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
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
    frPath, xst: string;
  public
    { Public declarations }
    procedure Do_Export_Data;
  end;

var
  fRepStkCost: TfRepStkCost;

implementation

uses
  SrchSet1, SrchStk, USoftFirm, Dm1, DMSEC;
{$R *.DFM}

procedure TfRepStkCost.Do_Export_Data;
var
  XSt, VRT: string;
begin
  case rdStat.ItemIndex of
    0:
      XSt := 'N%';
    1:
      XSt := 'O%';
    2:
      XSt := 'D%';
    3:
      XSt := 'P%';
    4:
      XSt := 'U%';
    5:
      XSt := 'S%';
    6:
      XSt := 'H%';
    7:
      XSt := '%';
  end;
  case RadioGroup1.ItemIndex of
    0:
      VRT := 'Y%';
    1:
      VRT := 'N%';
    2:
      VRT := '%';
  end;

  if rdGroup.ItemIndex = 0 then
  begin
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT V.RECVNO,V.RECVDT,V.INVNO,V.INVDT,V.APCODE,T.GCODE, ' +
        'V.TAXNO,V.TAXDT,T.CRCOST,T.DISCT,T.NETCOST,T.CRVAT,T.TOTCOST,T.TYPE, ' +
        'T.MODEL,T.BAAB,T.COLOR,T.CC,T.STRNO,T.ENGNO,T.KEYNO,T.MILERT, ' +
        'T.STAT,V.LOCAT,T.CRLOCAT,T.RVCODE FROM INVINVO V,INVTRAN T ' +
        'WHERE (V.RECVNO=T.RECVNO) AND (T.TYPE LIKE :PTYPE) AND (T.MODEL LIKE :PMODEL) ' +
        'AND (T.COLOR LIKE :PCOLOR) AND (T.STAT LIKE :PSTAT) AND (V.RECVDT >=:PFDATE AND V.RECVDT<=:PTDATE) ' +
        'AND (V.LOCAT LIKE :PLOCAT) AND (V.APCODE LIKE :PAPCODE) AND (T.GCODE LIKE :PGCODE) AND (V.VATTYP LIKE :PVATTYP)');
      params[0].AsString := edType.Text + '%';
      params[1].AsString := edModel.Text + '%';
      params[2].AsString := edColor.Text + '%';
      params[3].AsString := XSt;
      params[4].AsDate := wwFdate.Date;
      params[5].AsDate := wwTDate.Date;
      params[6].AsString := edLocat.Text + '%';
      params[7].AsString := edApcode.Text + '%';
      params[8].AsString := edGcode.Text + '%';
      params[9].AsString := VRT;
      open;
    end;
    SaveDialog1.Execute;
    QExportXLS1.FileName := SaveDialog1.FileName + '.xls';
    if SaveDialog1.FileName <> '' then
      QExportXLS1.Execute;
  end;
end;

procedure TfRepStkCost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fRepStkCost := nil;
end;

procedure TfRepStkCost.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TfRepStkCost.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSt, VRT: string;
begin
  if (UPperCase(VarName) = 'PFDATE') then
    Value := fRepStkCost.wwFDate.Date;
  if (UPperCase(VarName) = 'PTDATE') then
    Value := fRepStkCost.wwTDate.date;
  if (UPperCase(VarName) = 'PLOCAT') then
    Value := fRepStkCost.edlocat.Text + '%';
  if (UPperCase(VarName) = 'PAPCODE') then
    Value := fRepStkCost.edApcode.Text + '%';
  if (UPperCase(VarName) = 'PMODEL') then
    Value := fRepStkCost.edModel.Text + '%';
  if (UPperCase(VarName) = 'PCOLOR') then
    Value := fRepStkCost.edColor.Text + '%';
  if (UPperCase(VarName) = 'PTYPE') then
    Value := fRepStkCost.edType.Text + '%';
  if (UPperCase(VarName) = 'PSTAT') then
  begin
    case rdStat.ItemIndex of
      0:
        XSt := 'N%';
      1:
        XSt := 'O%';
      2:
        XSt := 'D%';
      3:
        XSt := 'P%';
      4:
        XSt := 'U%';
      5:
        XSt := 'S%';
      6:
        XSt := 'H%';
      7:
        XSt := '%';
    end;
    Value := XSt;
  end;
  if (UPperCase(VarName) = 'PGCODE') then
    Value := fRepStkCost.edGcode.Text + '%';

  case RadioGroup1.ItemIndex of
    0:
      VRT := 'Y%';
    1:
      VRT := 'N%';
    2:
      VRT := '%';
  end;
  if UpperCase(VarName) = 'PVRT' then
    Value := VRT;
end;

procedure TfRepStkCost.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP01_1_7');
end;

procedure TfRepStkCost.FormShow(Sender: TObject);
begin
  wwFDate.Date := Date;
  wwTDate.Date := Date;
  DesignBtn.Visible := SFMain.XDesign = 'Y';
  edLocat.Text := SFMain.XLocat;
  edLocat.Enabled := SFMain.XChgloc = 'Y';
end;

procedure TfRepStkCost.PrevBtnClick(Sender: TObject);
begin
  if rdGroup.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStkCost.fr3', '1')
 {1 = Preview Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStkCostSum.fr3', '1'); {1 = Preview Report}
end;

procedure TfRepStkCost.edTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalType = Mrok then
    edType.Text := Searchset.Keyno;
end;

procedure TfRepStkCost.edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalmodel = Mrok then
    edModel.Text := Searchset.Keyno;
end;

procedure TfRepStkCost.edColorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalcolor = Mrok then
    edColor.Text := Searchset.Keyno;
end;

procedure TfRepStkCost.edLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    edLocat.Text := Searchset.Keyno;
end;

procedure TfRepStkCost.edApcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetAP = Mrok then
    edAPcode.Text := Searchset.Keyno;
end;

procedure TfRepStkCost.edGcodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if SearchSet.ShowModalSetgrp = Mrok then
    edGcode.Text := Searchset.Keyno;
end;

procedure TfRepStkCost.DesignBtnClick(Sender: TObject);
begin
  if rdGroup.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStkCost.fr3', '2')
 {2 = Design Report}
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_RecStkCostSum.fr3', '2'); {2 = Design Report}
end;

procedure TfRepStkCost.CloseBtnClick(Sender: TObject);
begin
  self.Close;
end;

procedure TfRepStkCost.AdvGlowButton1Click(Sender: TObject);
begin
  ExportMenu.PopupAtCursor;
end;

procedure TfRepStkCost.MenuItem146Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 1;
  SaveDialog1.Execute;
  QExport4Xlsx1.FileName := SaveDialog1.FileName + '.xlsx';
  if SaveDialog1.FileName <> '' then
    QExport4Xlsx1.Execute;
end;

procedure TfRepStkCost.MenuItem147Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 2;
  SaveDialog1.Execute;
  QExport4XLS1.FileName := SaveDialog1.FileName + '.xls';
  if SaveDialog1.FileName <> '' then
    QExport4XLS1.Execute;
end;

procedure TfRepStkCost.WordDocument1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 3;
  SaveDialog1.Execute;
  QExport4Docx1.FileName := SaveDialog1.FileName + '.docx';
  if SaveDialog1.FileName <> '' then
    QExport4Docx1.Execute;
end;

procedure TfRepStkCost.WordDocument2Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 4;
  SaveDialog1.Execute;
  QExport4RTF1.FileName := SaveDialog1.FileName + '.doc';
  if SaveDialog1.FileName <> '' then
    QExport4RTF1.Execute;
end;

procedure TfRepStkCost.PDF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 5;
  SaveDialog1.Execute;
  QExport4PDF1.FileName := SaveDialog1.FileName + '.pdf';
  if SaveDialog1.FileName <> '' then
    QExport4PDF1.Execute;
end;

procedure TfRepStkCost.DBF1Click(Sender: TObject);
begin
  Do_Export_Data;

  SaveDialog1.FilterIndex := 6;
  SaveDialog1.Execute;
  QExport4DBF1.FileName := SaveDialog1.FileName + '.dbf';
  if SaveDialog1.FileName <> '' then
    QExport4DBF1.Execute;
end;

end.

