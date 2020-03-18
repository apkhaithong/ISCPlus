unit uRpStkBal;

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
  frxClass, frxDBSet, BusinessSkinForm, cxGroupBox, cxRadioGroup, RzLabel;

type
  TfrmRpStkBal = class(TForm)
    AdvPanel1: TAdvPanel;
    Label8: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label9: TLabel;
    ChkStatus: TcxCheckBox;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    qrAccglmst: TFDQuery;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Label1: TLabel;
    ActionList1: TActionList;
    AcEdit: TAction;
    RzLabel1: TRzLabel;
    Edit_Locat: TcxButtonEdit;
    cxDateEdit1: TcxDateEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit_DateTo: TcxDateEdit;
    qrAccglmstLOCAT: TStringField;
    qrAccglmstPARTNO: TStringField;
    qrAccglmstDESC1: TStringField;
    qrAccglmstGROUP1: TStringField;
    qrAccglmstUNIT: TStringField;
    qrAccglmstCOST: TFloatField;
    qrAccglmstSTDBUY: TFloatField;
    qrAccglmstLSTBUY: TFloatField;
    qrAccglmstLSTBDATE: TDateField;
    qrAccglmstPRICE1: TFloatField;
    qrAccglmstQTYIN: TFloatField;
    qrAccglmstQTYOUT: TFloatField;
    qrAccglmstBAL: TFloatField;
    cxRadioGroup1: TcxRadioGroup;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure PrevBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  frmRpStkBal: TfrmRpStkBal;

implementation

uses
  DmSet1, USoftFirm, uSrcDlg, Functn01, unfrPreview, Dmsec;

{$R *.DFM}

procedure TfrmRpStkBal.view_report;
var
  nRpOption: string;
begin
  case cxRadioGroup1.ItemIndex of
    0:
      nRpOption := 'HAVING SUM(V.QTYIN)-SUM(V.QTYOUT) > 0 ';
    1:
      nRpOption := 'HAVING SUM(V.QTYIN)-SUM(V.QTYOUT) = 0 ';
    2:
      nRpOption := 'HAVING SUM(V.QTYIN)-SUM(V.QTYOUT) < 0 ';
    3:
      nRpOption := 'HAVING SUM(V.QTYIN)-SUM(V.QTYOUT) <> 0 ';
    4:
      nRpOption := '';
  end;

  if Edit3.Text = '' then
  begin
    Edit3.Text := '0';
    Edit4.Text := 'ттт';
  end;

  with qrAccglmst do
  begin
    close;
    sql.Clear;
    sql.Add('select  V.LOCAT,T.PARTNO,T.DESC1,T.GROUP1,T.UNIT,T.COST,T.STDBUY,T.LSTBUY,T.LSTBDATE,T.PRICE1,SUM(V.QTYIN) QTYIN,SUM(V.QTYOUT) QTYOUT,SUM(V.QTYIN)-SUM(V.QTYOUT) BAL ' +
      'FROM INVENTOR T,VIEW_STKCARD_MAYO V ' +
      'WHERE (T.PARTNO=V.PARTNO AND T.LOCAT=V.LOCAT) ' +
      'AND T.PARTNO BETWEEN :EDIT1 AND :EDIT2 ' +
      'AND (V.DOCDT >=:VSTARTYEAR AND V.DOCDT <=:VCURDATE) AND V.LOCAT LIKE :EDIT3 AND T.GROUP1 LIKE :EDIT4 ' +
      'GROUP BY V.LOCAT,T.PARTNO,T.DESC1,T.GROUP1,T.UNIT,T.COST,T.STDBUY,T.LSTBUY,T.LSTBDATE,T.PRICE1 ' + nRpOption +
      'ORDER BY V.LOCAT,T.PARTNO	');

    params[0].AsString := Edit3.Text;
    params[1].AsString := Edit4.Text;
    params[2].AsDateTime := cxDateEdit1.Date;
    params[3].AsDateTime := Edit_Dateto.Date;
    params[4].AsString := Edit_Locat.Text + '%';
    params[5].AsString := Edit2.Text + '%';
    open;
  end;
  sfmain.Do_Prev_Edit_FastReport4(frxReport1, 'fr_RepStkItemBal.fr3', '1');
end;

procedure TfrmRpStkBal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TfrmRpStkBal.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_1');
  FormatSettings.ShortDateFormat := 'DD/MM/YYYY';
end;

procedure TfrmRpStkBal.PrevBtnClick(Sender: TObject);
begin
  if COPY(Edit_Locat.Text, 1, 1) = 'B' then
    Edit_Locat.Text := Edit_Locat.Text + ' '
  else
    Edit_Locat.Text := Edit_Locat.Text;
  view_report;
end;

procedure TfrmRpStkBal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  frmRpStkBal := nil;
end;

procedure TfrmRpStkBal.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRpStkBal.FormShow(Sender: TObject);
begin
  Edit_DateTo.Date := Date;

  Edit_Locat.Text := SFMain.Xlocat;
  Edit_Locat.Properties.ReadOnly := SFMain.XChgLoc <> 'Y';
  ChkStatus.Checked := False;

  cxDateEdit1.Date := Dm_Sec.Condpay.fieldbyname('START_STK').AsDateTime;
end;

procedure TfrmRpStkBal.Edit_LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit_Locat.text := fSrcDlg.KeyNo;
end;

procedure TfrmRpStkBal.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit2.text := fSrcDlg.Keyno;
end;

procedure TfrmRpStkBal.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalparts = Mrok then
    Edit3.text := fSrcDlg.Keyno;
end;

procedure TfrmRpStkBal.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit4.text := fSrcDlg.Keyno;
end;

procedure TfrmRpStkBal.frxReport1GetValue(const VarName: string; var Value: Variant);
var
  XChk: string;
begin
  if Edit4.Text = '' then
    Edit4.Text := 'тттт';
  if UpperCase(VarName) = 'PLOCAT' then
    Value := Edit_Locat.Text + '%';
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

  if ChkStatus.Checked = True then
    XChk := 'Y'
  else
    XChk := 'N';
  if UpperCase(VarName) = 'PCHK' then
    Value := XChk;

  if UpperCase(VarName) = 'PMONTH' then
    Value := month1;
end;

procedure TfrmRpStkBal.Edit3PropertiesChange(Sender: TObject);
begin
  Edit4.Text := Edit3.Text;
end;

procedure TfrmRpStkBal.AcEditExecute(Sender: TObject);
begin
  sfmain.Do_Prev_Edit_FastReport4(frxReport1, 'fr_RepStkItemBal.fr3', '2');
end;

end.

