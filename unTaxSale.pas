unit unTaxSale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dbkbd, ComCtrls, ToolWin, ImgList, ActnList, Buttons, StdCtrls, Mask,
  DBCtrls, Grids, ExtCtrls, DB, DBGrids, RzDBGrid, RzDbkbd, RzSpnEdt, RzCmboBx,
  RzLabel, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxDBEdit, AdvOfficeStatusBar, AdvGlowButton, cxLookAndFeelPainters, cxGroupBox,
  cxRadioGroup, cxCurrencyEdit, cxGraphics, cxDropDownEdit, cxCalendar,
  cxLookAndFeels, System.Actions, FireDAC.Phys.Intf, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, BusinessSkinForm, dxStatusBar, AdvToolBar, AdvPanel,
  frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject, frxExportPDF,
  frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TfrTaxSale = class(TForm)
    AdvPanel1: TAdvPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    RzLabel1: TRzLabel;
    spbLocat: TRzRapidFireButton;
    cxGroupBox1: TcxGroupBox;
    Label14: TLabel;
    cxRadioGroup1: TcxRadioGroup;
    cxTextEdit1: TcxCurrencyEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    ActionList1: TActionList;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    DBkbd1: TRzDBkbd;
    QCshTax: TFDQuery;
    QCshTaxLOCAT: TStringField;
    QCshTaxTAXNO: TStringField;
    QCshTaxTAXDT: TDateField;
    QCshTaxTSALE: TStringField;
    QCshTaxCONTNO: TStringField;
    QCshTaxCUSCOD: TStringField;
    QCshTaxSNAM: TStringField;
    QCshTaxNAME1: TStringField;
    QCshTaxNAME2: TStringField;
    QCshTaxSTRNO: TStringField;
    QCshTaxREFNO: TStringField;
    QCshTaxREFDT: TDateField;
    QCshTaxVATRT: TFloatField;
    QCshTaxNETAMT: TFloatField;
    QCshTaxVATAMT: TFloatField;
    QCshTaxTOTAMT: TFloatField;
    QCshTaxDESCP: TStringField;
    QCshTaxFPAR: TStringField;
    QCshTaxFPAY: TFloatField;
    QCshTaxLPAR: TStringField;
    QCshTaxLPAY: TFloatField;
    QCshTaxINPDT: TDateField;
    QCshTaxFLAG: TStringField;
    QCshTaxCANDT: TDateField;
    QCshTaxTAXTYP: TStringField;
    QCshTaxTAXFLG: TStringField;
    QCshTaxUSERID: TStringField;
    QCshTaxFLCANCL: TStringField;
    QCshTaxUpdateStatus: TStringField;
    QCshTaxTMBILL: TStringField;
    QCshTaxRTNSTK: TStringField;
    QCshTaxFINCOD: TStringField;
    QVatmast: TFDQuery;
    Query2: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    tbPrint: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Action1: TAction;
    Label15: TLabel;
    Edit4: TcxTextEdit;
    QCshTaxPAYFOR: TStringField;
    QCshTaxPOSTGL: TStringField;
    cxDBButtonEdit1: TcxDBButtonEdit;
    DBEdit2: TcxDBTextEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    DBDtTax: TcxDBDateEdit;
    DBEdit3: TcxDBButtonEdit;
    rzTypTax: TcxDBComboBox;
    DBPayfor: TcxDBButtonEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DelBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure spbLocatClick(Sender: TObject);
    procedure QCshTaxNewRecord(DataSet: TDataSet);
    procedure QCshTaxTAXDTValidate(Sender: TField);
    procedure QCshTaxCalcFields(DataSet: TDataSet);
    procedure QCshTaxBeforePost(DataSet: TDataSet);
    procedure tbPrintClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure DesignBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QCshTaxCONTNOValidate(Sender: TField);
    procedure QCshTaxFINCODValidate(Sender: TField);
    procedure QCshTaxCUSCODValidate(Sender: TField);
    procedure QCshTaxAfterPost(DataSet: TDataSet);
    procedure rzTypTaxChange(Sender: TObject);
    procedure QCshTaxTAXTYPValidate(Sender: TField);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit1PropertiesChange(Sender: TObject);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesChange(Sender: TObject);
    procedure cxRadioGroup1Click(Sender: TObject);
    procedure cxTextEdit1Exit(Sender: TObject);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Action1Execute(Sender: TObject);
    procedure DBPayforPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBPayforPropertiesChange(Sender: TObject);
    procedure QCshTaxPAYFORValidate(Sender: TField);
    procedure QCshTaxLOCATValidate(Sender: TField);
    procedure QCshTaxUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    xdoc, Ostrno: string;
    XYear, XMonth, XDay: Word;
    { Public declarations }
  end;

var
  frTaxSale: TfrTaxSale;
  Duplicate: Boolean;

implementation

uses
  USoftFirm, DmSec, Srchset1, dm1, DmSal, SrchSal1, SrchTax1, Functn01,
  unfrPreview, DmAr;

{$R *.dfm}

procedure TfrTaxSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frTaxSale := nil;
  Action := Cafree;
end;

procedure TfrTaxSale.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrTaxSale.InsBtnClick(Sender: TObject);
begin
  if not Dm_sal.QDbConfig.Active then
    Dm_sal.QDbConfig.Open;
  if rzTypTax.Text = 'O' then
    Dm_sal.XRunTax := Dm_sal.QDbConfig.FieldByName('R_TXOTHR').Asstring;
   //Else Dm_sal.XRunTax  := Dm_sal.QDbConfig.FieldByName('R_TXMAST').Asstring;
  with QCshTax do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM TAXTRAN WHERE TAXNO='''' ');
    Open;
    insert;
  end;
  DBEdit3.SetFocus;
  rzLabel1.Visible := False;
end;

procedure TfrTaxSale.CancBtnClick(Sender: TObject);
begin
  QCshTax.Cancel;
end;

procedure TfrTaxSale.DBEdit1Change(Sender: TObject);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD=:0');
    params[0].AsString := qCshTaxLOCAT.AsString;
    open;
    edit2.Text := fieldbyname('LOCATNM').AsString;
  end;
end;

procedure TfrTaxSale.FormCreate(Sender: TObject);
begin
  if not Dm_sal.QDbConfig.Active then
    Dm_sal.QDbConfig.Open;
  SFMain.Check_right('HDTAX', 'HDTAX03');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TfrTaxSale.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.text <> '');
  EnqBtn.Visible := InsBtn.Visible;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  cxDBButtonEdit1.Enabled := SFMain.XChgloc = 'Y';
  cxDBButtonEdit2.Enabled := SFMain.XChgdate = 'Y';
  cxRadioGroup1.Properties.ReadOnly := not SavBtn.Visible;
  cxTextEdit1.Enabled := SavBtn.Visible;
  tbPrint.Visible := (DataSource1.State = Dsbrowse) and (DBEdit2.text <> '');

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := True;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBComboBox) and (TcxDBComboBox(Components[N]).Tag = 0) then
      begin
        TcxDBComboBox(Components[N]).Enabled := False;
        TcxDBComboBox(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := $00FFFFD9;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := False;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBComboBox) and (TcxDBComboBox(Components[N]).Tag = 0) then
      begin
        TcxDBComboBox(Components[N]).Enabled := True;
        TcxDBComboBox(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  if not DM01.QDbconfig.Active then
    DM01.QDbconfig.Open;
  DBEdit2.Properties.Readonly := Dm_sal.QDbConfig.FieldByName('R_TXOTHR').Asstring = 'Y';
  DBEdit10.Properties.Readonly := True;
  DBEdit11.Properties.Readonly := True;
  DBEdit12.Properties.Readonly := True;
  DBEdit13.Properties.Readonly := True;
  DBEdit14.Properties.Readonly := True;
  DBEdit15.Properties.Readonly := True;
end;

procedure TfrTaxSale.DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then
    spbLocatClick(Sender);
end;

procedure TfrTaxSale.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        if QCshTax.FieldByName('Flag').Asstring = 'C' then
          SFMain.RaiseException('ใบกำกับนี้ถูกยกเลิกแล้ว...');
        if QCshTax.State = DsBrowse then
        begin
          QCshTax.Edit;
          QCshTax.FieldByName('Flag').Asstring := 'C';
          QCshTax.FieldByName('CanDt').AsdateTime := Now;
          QCshTax.FieldByName('Flcancl').Asstring := SFMain.XUser_id;
          QCshTax.Post;
        end;
        rzLabel1.Visible := qCshTaxFLAG.AsString = 'C';
      end;
  end;
end;

procedure TfrTaxSale.SavBtnClick(Sender: TObject);
begin
  if QCshTaxTOTAMT.AsFloat = 0 then
    SFMain.RaiseException('จำนวนเงินเป็นศูนย์(0)...!');
  if DBPayfor.Text = '' then
    SFMain.RaiseException('ยังไม่บันทึกค้างชำระค่า...!');
  if DBEdit3.Text = '' then
    SFMain.RaiseException('ยังไม่บันทึกเลขที่สัญญา...!');
  QCshTax.Post;
end;

procedure TfrTaxSale.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchTax, SearchTax);
  if SearchTax.ShowModalTaxno1 = MrOK then
  begin
    with qCshTax do
    begin
      close;
      sql.clear;
      sql.Add('SELECT * FROM TAXTRAN WHERE TAXNO =:XID');
      params[0].AsString := SearchTax.Keyno;
      OPEN;
    end;
    with Query1 do
    begin
      close;
      sql.clear;
      sql.Add('SELECT * FROM ARFINC WHERE TAXNO=:XID');
      params[0].AsString := SearchTax.Keyno;
      OPEN;
    end;
  end;
  Edit1.Text := DM01.FindShowDesc('FINMAST', 'FINNAME', 'FINCODE', qCshTaxFINCOD.AsString);
  rzTypTaxChange(Sender);
  rzLabel1.Visible := qCshTaxFLAG.AsString = 'C';
end;

procedure TfrTaxSale.spbLocatClick(Sender: TObject);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    qCshTaxLOCAT.AsString := Searchset.Keyno;
end;

procedure TfrTaxSale.QCshTaxNewRecord(DataSet: TDataSet);
begin
  QCshTaxTsale.Asstring := 'F';
  QCshTaxLocat.Asstring := SFMain.Xlocat;
  QCshTaxTaxtyp.Asstring := 'O';
  QCshTaxTAXDT.AsDateTime := Date;
  if rzTypTax.Text = 'O' then
    QCshTaxDescp.Asstring := 'ใบกำกับภาษีค่าคอมไฟแนนซ์';
  QCshTaxTaxFlg.Asstring := 'N';
  QCshTaxInpDt.AsDateTime := Now;
  QCshTaxUserid.AsString := SFMain.Xuser_Id;
end;

procedure TfrTaxSale.QCshTaxTAXDTValidate(Sender: TField);
var
  HF, LF, HP, LP, LV, SQLTXT: string;
  DV: TdateTime;
begin
  with QVatmast do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM Vatmast ' +
      'WHERE :Var between Frmdate and Todate ');
    Params[0].asdate := QCshTax.Fieldbyname('TAXDT').Asdatetime;
    open;
  end;
  if not Dm01.QDbconfig.Active then
    Dm01.QDbconfig.Open;
  QCshTax.Fieldbyname('Vatrt').Asfloat := QVatmast.FieldByname('VATRT').Asfloat;
  if Dm_sal.QDbConfig.FieldByName('R_TXOTHR').Asstring = 'Y' then
  begin
    HF := 'H_TXOTHR';
    LF := 'L_TXOTHR';
    LV := QCshTax.FieldByName('Locat').Asstring;
    DV := QCshTax.FieldByName('TAXDT').Asdatetime;
    if QCshTaxUpdateStatus.Value = 'Inserted' then
    begin
      SQLTXT := 'SELECT MAX(TAXNO) AS MAXNO FROM TAXTRAN WHERE LOCAT=:EDIT1 AND ' +
        'SUBSTR(TAXNO,2,2)=:EDIT2 AND SUBSTR(TAXNO,5,2)=:EDIT3 ' +
        'AND SUBSTR(TAXNO,7,2)=:EDIT4';
         // QCshTaxTAXNO.Asstring    := Dm01.MAXNO(HF,LF,LV,SQLTXT,DV);

      if Duplicate then
        QCshTaxTAXNO.Asstring := Dm01.MaxNo(HF, LF, LV, SQLTXT, DV)
      else
        QCshTaxTAXNO.Asstring := Dm01.RunNo01(HF, LF, LV, DV);
    end;
  end;
  DecodeDate(DV, XYear, XMonth, XDay);
end;

procedure TfrTaxSale.QCshTaxCalcFields(DataSet: TDataSet);
const
  UpdateStatusStr: array[TUpdateStatus] of string = ('Unmodified', 'Modified',
    'Inserted', 'Deleted');
begin
  if QCshTax.CachedUpdates then
    QCshTaxUpdateStatus.Value := UpdateStatusStr[QCshTax.UpdateStatus];
end;

procedure TfrTaxSale.QCshTaxBeforePost(DataSet: TDataSet);
begin
  if (QCshTaxUpdateStatus.Value = 'Inserted') then
  begin
    if Duplicate then
      QCshTaxTAXDTValidate(QCshTaxTAXDT);
  end;
end;

procedure TfrTaxSale.tbPrintClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnTaxFinc.fr3', '1');
end;

procedure TfrTaxSale.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if Uppercase(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
end;

procedure TfrTaxSale.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if (UPperCase(VarName) = 'VTAXNO') then
    Value := DBEdit2.Text;
end;

procedure TfrTaxSale.DesignBtnClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnTaxFinc.fr3', '2');
end;

procedure TfrTaxSale.FormShow(Sender: TObject);
begin
  with QCshTax do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM TAXTRAN WHERE TAXNO='''' ');
    Open;
  end;
end;

procedure TfrTaxSale.QCshTaxCONTNOValidate(Sender: TField);
var
  xTaxno: string;
begin
  if rzTypTax.Text = 'S' then
    xTaxno := 'AND (TAXNO='''' OR TAXNO IS NULL)';
  if rzTypTax.Text = 'O' then
    xTaxno := '';
  {if QCshTaxTSALE.AsString = 'C' Then
  Begin
    with Query1 do
    Begin
       close;
       sql.Clear;
       sql.Add('SELECT * FROM ARCRED WHERE CONTNO=:0 '+xTaxno);
       Params[0].AsString := QCshTaxCONTNO.Value;
       Open;
       if Not (Eof and Bof) then
       Begin
          QCshTaxCUSCOD.AsString := Fieldbyname('CUSCOD').AsString;
          QCshTaxSTRNO.AsString := Fieldbyname('STRNO').AsString;
          QCshTaxNETAMT.AsFloat := Fieldbyname('NPRICE').AsFloat;
          QCshTaxVATAMT.AsFloat := Fieldbyname('VATPRC').AsFloat;
          QCshTaxTOTAMT.AsFloat := Fieldbyname('TOTPRC').AsFloat;
       end else
          SFMain.RaiseException('ไม่พบเลขสัญญานี้หรือได้ออกใบกำกับไปแล้ว...!');
     end;  }
  //end;
  if QCshTaxTSALE.AsString = 'F' then
  begin
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM ARFINC WHERE CONTNO=:0 ' + xTaxno);
      Params[0].AsString := QCshTaxCONTNO.Value;
      Open;
      if not (Eof and Bof) then
      begin
        QCshTaxFINCOD.AsString := Fieldbyname('FINCOD').AsString;
        QCshTaxCUSCOD.AsString := Fieldbyname('CUSCOD').AsString;
        QCshTaxSTRNO.AsString := Fieldbyname('STRNO').AsString;
      end
      else
        SFMain.RaiseException('ไม่พบเลขสัญญานี้...!');
    end;
  end;
end;

procedure TfrTaxSale.QCshTaxFINCODValidate(Sender: TField);
begin
  Edit1.Text := DM01.FindShowDesc('FINMAST', 'FINNAME', 'FINCODE', QCshTaxFINCOD.Value);
end;

procedure TfrTaxSale.QCshTaxCUSCODValidate(Sender: TField);
begin
  with Query2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT SNAM,NAME1,NAME2,CUSCOD FROM CUSTMAST WHERE CUSCOD=:0');
    Params[0].AsString := QCshTaxCUSCOD.Value;
    Open;
    if not (Eof and Bof) then
    begin
      QCshTaxSNAM.AsString := Fieldbyname('SNAM').AsString;
      QCshTaxNAME1.AsString := Fieldbyname('NAME1').AsString;
      QCshTaxNAME2.AsString := Fieldbyname('NAME2').AsString;
    end
    else
      SFMain.RaiseException('ไม่พบรหัสลูกค้ารายนี้ในฐานข้อมูล...!');
  end;
end;

procedure TfrTaxSale.QCshTaxAfterPost(DataSet: TDataSet);
begin
  Xdoc := QCshTax.FieldByName('TAXNO').AsString;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QCshTax.Active then
      if (QCshTax.ApplyUpdates = 0) then
        QCshTax.CommitUpdates
      else
        raise Exception.Create(QCshTax.RowError.Message);
    if Dm01.QLastno.Active then
      if (Dm01.QLastno.ApplyUpdates = 0) then
        Dm01.QLastno.CommitUpdates
      else
        raise Exception.Create(Dm01.QLastno.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.Rollback;
    raise;
  end;
  //
  with qCshTax do
  begin
    close;
    sql.clear;
    sql.Add('SELECT * FROM TAXTRAN WHERE TAXNO =:XID');
    params[0].AsString := xdoc;
    OPEN;
  end;
  with Query1 do
  begin
    close;
    sql.clear;
    sql.Add('SELECT * FROM ARFINC WHERE TAXNO=:XID');
    params[0].AsString := xdoc;
    OPEN;
  end;
end;

procedure TfrTaxSale.rzTypTaxChange(Sender: TObject);
begin
  if rzTypTax.Text = 'O' then
    Edit3.Text := 'ภาษีเงินค่าคอมไฟแนนซ์';
end;

procedure TfrTaxSale.QCshTaxTAXTYPValidate(Sender: TField);
begin
  if rzTypTax.Text = 'O' then
    Edit3.Text := 'ภาษีเงินค่าคอมไฟแนนซ์';
  QCshTaxTAXDTValidate(Sender);
end;

procedure TfrTaxSale.QCshTaxUpdateError(ASender: TDataSet; AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest; var AAction: TFDErrorAction);
begin
  Duplicate := True;
end;

procedure TfrTaxSale.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    qCshTaxLOCAT.AsString := Searchset.Keyno;
end;

procedure TfrTaxSale.cxDBButtonEdit1PropertiesChange(Sender: TObject);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD=:0');
    params[0].AsString := qCshTaxLOCAT.AsString;
    open;
    edit2.Text := fieldbyname('LOCATNM').AsString;
  end;
end;

procedure TfrTaxSale.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalTypsale = Mrok then
    qCshTaxTSALE.Asstring := SearchSet.KeyNo;
end;

procedure TfrTaxSale.cxDBButtonEdit2PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM TYPSALE WHERE TSALE =:0');
    params[0].AsString := cxDBButtonEdit2.Text;
    open;
    Edit3.Text := fieldbyname('DESC1').AsString;
  end;
end;

procedure TfrTaxSale.cxRadioGroup1Click(Sender: TObject);
begin
  if cxTextEdit1.Value = 0 then
    SFMain.RaiseException('ยอดคำนวนเป็นศูนย์..!');

  if cxRadioGroup1.ItemIndex = 0 then
  begin
    QCshTaxTOTAMT.AsFloat := cxTextEdit1.Value;
    QCshTaxVATAMT.AsFloat := FRound((cxTextEdit1.Value * QCshTaxVATRT.AsFloat) / 107, 2);
    QCshTaxNETAMT.AsFloat := cxTextEdit1.Value - QCshTaxVATAMT.AsFloat;
  end
  else
  begin
    QCshTaxNETAMT.AsFloat := cxTextEdit1.Value;
    QCshTaxVATAMT.AsFloat := FRound((cxTextEdit1.Value * QCshTaxVATRT.AsFloat) / 100, 2);
    QCshTaxTOTAMT.AsFloat := cxTextEdit1.Value + QCshTaxVATAMT.AsFloat;
  end;
end;

procedure TfrTaxSale.cxTextEdit1Exit(Sender: TObject);
begin
  if cxTextedit1.Value > 0 then
    cxRadioGroup1.ItemIndex := 0;
end;

procedure TfrTaxSale.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if qCshTaxTSALE.Asstring = '' then
  begin
    MessageDlg('ยังไม่ได้ระบุประเภทการขาย ! ', MtError, [mbOK], 0);
  end
  else
  begin
    Application.Createform(TSearchSale, SearchSale);
    if SFMain.XChgloc = 'Y' then
      Searchsale.XLocat := ''
    else
      Searchsale.XLocat := SFMain.Xlocat;
    //    SearchSale.STaxDt:=' AND A.TAXDT IS NULL ';
   {  If qCshTaxTSALE.Asstring = 'C' Then
     Begin
        If SearchSale.ShowModalArCred=Mrok Then
        Begin
           qCshTaxCONTNO.AsString := SearchSale.Keyno;
           DBEdit3.SetFocus;
        end;
     end;  }
    if qCshTaxTSALE.Asstring = 'F' then
    begin
      if SearchSale.ShowModalArFinc = Mrok then
      begin
        qCshTaxCONTNO.AsString := SearchSale.Keyno;
        DBEdit3.SetFocus;
      end;
    end;
  {   If qCshTaxTSALE.Asstring ='O' Then
     Begin
        If SearchSale.ShowModalArOptn=Mrok Then
        Begin
           qCshTaxCONTNO.AsString := SearchSale.Keyno;
           DBEdit3.SetFocus;
        end;
     end; }
  end;
end;

procedure TfrTaxSale.Action1Execute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnTaxFinc.fr3', '2');
end;

procedure TfrTaxSale.DBPayforPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  SearchSet.XSysSet := '%';
  if SearchSet.ShowModalsetPayfor = Mrok then
    QCshTaxPAYFOR.AsString := SearchSet.KeyNo;
end;

procedure TfrTaxSale.DBPayforPropertiesChange(Sender: TObject);
begin
  Edit4.Text := DM01.FindShowDesc('PAYFOR', 'FORDESC', 'FORCODE', DBPayfor.Text);
end;

procedure TfrTaxSale.QCshTaxPAYFORValidate(Sender: TField);
begin
  DM01.FindNoExist('PAYFOR', 'FORCODE', QCshTaxPAYFOR.AsString);
  if copy(QCshTaxPAYFOR.AsString, 1, 1) = '0' then
    SFMain.RaiseException('ลูกหนี้อื่นต้องไม่ใช้รหัสการชำระที่ขึ้นต้นด้วย 0');
end;

procedure TfrTaxSale.QCshTaxLOCATValidate(Sender: TField);
begin
  QCshTaxTAXDTValidate(Sender);
end;

end.

