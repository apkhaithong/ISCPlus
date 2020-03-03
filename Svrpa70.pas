unit SvRpA70;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, ImgList, ToolWin, AdvGlowButton, AdvToolBar, AdvGroupBox,
  AdvOfficeButtons, cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, AdvPanel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxCore, cxDateUtils, BusinessSkinForm, frxClass,
  frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF, frxExportImage,
  frxGradient, frxFDComponents, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSvRpA70 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit_dateFrom: TcxDateEdit;
    Edit_dateTo: TcxDateEdit;
    Edit_Locat: TcxButtonEdit;
    edTypeSv: TcxButtonEdit;
    edModel: TcxButtonEdit;
    edTypCar: TcxButtonEdit;
    edOfficer: TcxButtonEdit;
    edCom: TcxTextEdit;
    SortRadio: TAdvOfficeRadioGroup;
    Query1: TFDQuery;
    qEfficiency: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    procedure edComChange(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edTypeSvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edTypCarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edOfficerPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    procedure ExecEfficiency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSvRpA70: TFmSvRpA70;

implementation

uses
  Dmsvset, usrcdlg, uSoftfirm, uSrcdlg1, unfrPreview, Functn01, UFindData, Dmsec;

{$R *.DFM}

procedure TFmSvRpA70.ExecEfficiency;
begin
  qEfficiency.Open;
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT LOCAT,JOBNO,JOBDATE,RECVTIME,RFINSHTM,FRRATE,SERTIME,SUM(SERVAMT) SERVAMT,' +
      'JOBTYP,STATUS,GCODE,MDLCOD,SERVCOD ' +
      'FROM VIEW_EFFICIENCY ' +
      'GROUP BY  LOCAT,JOBNO,JOBDATE,RECVTIME,RFINSHTM,FRRATE,SERTIME,JOBTYP,STATUS,GCODE,MDLCOD,SERVCOD ');
    Open;
  end;
  query1.First;
  while not (Query1.Eof) do
  begin
    qEfficiency.Append;
    qEfficiency.FieldByName('LOCAT').AsString := query1.fieldbyname('LOCAT').AsString;
    qEfficiency.FieldByName('JOBNO').AsString := query1.fieldbyname('JOBNO').AsString;
    qEfficiency.FieldByName('JOBDATE').AsDateTime := query1.fieldbyname('JOBDATE').AsDateTime;
    qEfficiency.FieldByName('RECVTIME').AsFloat := StrToFloat(query1.fieldbyname('RECVTIME').AsString);
    qEfficiency.FieldByName('RFINSHTM').AsFloat := StrTofloat(query1.fieldbyname('RFINSHTM').AsString);
    qEfficiency.FieldByName('TIMEJOB').AsFloat := StrToFloat(query1.fieldbyname('RFINSHTM').AsString) -
      StrTofloat(query1.fieldbyname('RECVTIME').AsString);
    qEfficiency.FieldByName('SVRATE').AsFloat := query1.fieldbyname('FRRATE').AsFloat;
    qEfficiency.FieldByName('SVTIME').AsFloat := query1.fieldbyname('SERTIME').AsFloat;
    qEfficiency.FieldByName('SVAMT').AsFloat := query1.fieldbyname('SERVAMT').AsFloat;
    qEfficiency.FieldByName('FRT').AsFloat := FRound(query1.fieldbyname('SERVAMT').AsFloat /
      query1.fieldbyname('FRRATE').AsFloat, 2);
    qEfficiency.FieldByName('JOBTYPE').AsString := query1.fieldbyname('JOBTYP').AsString;
    qEfficiency.FieldByName('STATUS').AsString := query1.fieldbyname('STATUS').AsString;
    qEfficiency.FieldByName('GCODE').AsString := query1.fieldbyname('GCODE').AsString;
    qEfficiency.FieldByName('MDLCOD').AsString := query1.fieldbyname('MDLCOD').AsString;
    qEfficiency.FieldByName('SVCODE').AsString := query1.fieldbyname('SERVCOD').AsString;
    qEfficiency.FieldByName('USERID').AsString := SFMain.Xuser_ID;
    Query1.Next;
  end;
end;

procedure TFmSvRpA70.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_4_2');
end;

procedure TFmSvRpA70.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmSvRpA70 := nil;
  Action := caFree;
end;

procedure TFmSvRpA70.edComChange(Sender: TObject);
var
  Comm: Double;
begin
  try
    Strtofloat(edCom.Text);
  except
    SFMain.RaiseException('บันทึกค่าระหว่าง 0-100');
  end;
end;

procedure TFmSvRpA70.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSvRpA70.PrevBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SvEfficiencyA.fr3', '1');
end;

procedure TFmSvRpA70.EditBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_SvEfficiencyA.fr3', '2');
end;

procedure TFmSvRpA70.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XSort: string;
begin
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
  if UpperCase(VarName) = 'PMODEL' then
    Value := EdModel.Text + '%';
  if UpperCase(VarName) = 'PGCODE' then
    Value := EdTypCar.Text + '%';
  if UpperCase(VarName) = 'PSVTYPE' then
    Value := EdTypeSv.Text + '%';
  if UpperCase(VarName) = 'PSVCODE' then
    Value := edOfficer.Text + '%';
  if UpperCase(VarName) = 'PCOMMIT' then
    Value := edCom.Text;
  if UpperCase(VarName) = 'PFDATE' then
    Value := Edit_dateFrom.Date;
  if UpperCase(VarName) = 'PTDATE' then
    Value := Edit_DateTo.Date;

  case SortRadio.ItemIndex of
    0:
      XSort := '0';
    1:
      XSort := '1';
    2:
      XSort := '2';
  end;
  if UpperCase(VarName) = 'PSORT' then
    Value := XSort;
end;

procedure TFmSvRpA70.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSvRpA70.edTypeSvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSvtype = Mrok then
    edTypeSv.Text := fSrcDlg1.KeyNo;
end;

procedure TFmSvRpA70.edTypCarPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalSetgroup = Mrok then
    edTypCar.Text := fSrcDlg1.Keyno;
end;

procedure TFmSvRpA70.edModelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalModel = Mrok then
    edModel.Text := fSrcDlg1.Keyno;
end;

procedure TFmSvRpA70.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.Text := fSrcDlg.Keyno;
end;

procedure TFmSvRpA70.edOfficerPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
//  fSrcDlg.XDepart := '3%';
  if fFindData.ShowModalEngineer = Mrok then
    edOfficer.Text := fFindData.KeyNo;
end;

procedure TFmSvRpA70.FormShow(Sender: TObject);
begin
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
  Edit_Locat.Text := SFMain.Xlocat;
  EditBtn.Visible := Sfmain.XDesign = 'Y';
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  Edit_DateTo.Date := Date;
  Edit_DateFrom.Date := Date;
end;

end.

