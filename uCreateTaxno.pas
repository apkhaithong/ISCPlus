unit uCreateTaxno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Buttons, Mask, ComCtrls, DB,
  Dbkbd, ImgList, ToolWin, RzButton, RzDBGrid, RzSpnEdt, RzPanel, RzDbkbd,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  cxButtonEdit, cxDropDownEdit, cxImageComboBox, cxLookAndFeelPainters, cxMemo,
  cxDBEdit, cxContainer, cxGroupBox, AdvGlowButton, AdvToolBar, AdvPanel,
  cxMaskEdit, cxCalendar, cxRadioGroup, ActnList, cxLabel, cxDBLabel,
  cxCheckGroup, cxCheckBox, cxCurrencyEdit, RzLabel, RzDBLbl, Menus, cxButtons,
  cxLookAndFeels, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxNavigator, dxDateRanges, dxCore, cxDateUtils;

type
  TFCreateTaxno = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2BILLNO: TcxGridDBColumn;
    cxGridDBTableView2JOBNO: TcxGridDBColumn;
    cxGridDBTableView2LOCAT: TcxGridDBColumn;
    cxGridDBTableView2BILLDT: TcxGridDBColumn;
    cxGridDBTableView2CUSCODE: TcxGridDBColumn;
    cxGridDBTableView2CUSTNAME: TcxGridDBColumn;
    cxGridDBTableView2PAYTYP: TcxGridDBColumn;
    cxGridDBTableView2NETTOT: TcxGridDBColumn;
    cxGridDBTableView2SYSTM: TcxGridDBColumn;
    cxGridDBTableView2POSTTAX: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzPanel3: TRzPanel;
    wwDBGrid1: TcxGrid;
    wwDBGridTrData: TcxGridDBTableView;
    wwDBGridTrDataBILLNO: TcxGridDBColumn;
    wwDBGridTrDataJOBNO: TcxGridDBColumn;
    wwDBGridTrDataLOCAT: TcxGridDBColumn;
    wwDBGridTrDataBILLDT: TcxGridDBColumn;
    wwDBGridTrDataNETTOT: TcxGridDBColumn;
    wwDBGrid1Level1: TcxGridLevel;
    AdvPanel4: TAdvPanel;
    AdvAddInAll: TAdvGlowButton;
    AdvAddIn: TAdvGlowButton;
    AdvAddOut: TAdvGlowButton;
    cxGroupBox4: TcxGroupBox;
    Label3: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Taxdt: TcxDateEdit;
    Locat: TcxButtonEdit;
    Showlocat: TcxTextEdit;
    Desc1: TcxTextEdit;
    AutoRun: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    ExitBtn: TAdvGlowButton;
    HelpBtn: TAdvGlowButton;
    cxRadioGroup1: TcxRadioGroup;
    CrtTaxBtn: TAdvGlowButton;
    cxGroupBox2: TcxGroupBox;
    Label20: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label31: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    DBEdit19: TcxDBTextEdit;
    DBEdit20: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    DBEdit22: TcxDBButtonEdit;
    DBEdit23: TcxDBButtonEdit;
    DBEdit24: TcxDBTextEdit;
    DataSource: TDataSource;
    qrFindDat: TFDQuery;
    qrFindDatBILLNO: TStringField;
    qrFindDatJOBNO: TStringField;
    qrFindDatLOCAT: TStringField;
    qrFindDatBILLDT: TDateField;
    qrFindDatCUSCODE: TStringField;
    qrFindDatPAYTYP: TStringField;
    qrFindDatNETTOT: TFloatField;
    qrFindDatCUSTNAME: TStringField;
    qrFindDatSYSTM: TStringField;
    qrFindDatPOSTTAX: TStringField;
    qrCreateTaxno: TFDQuery;
    qrCreateTaxnoBILLNO: TStringField;
    qrCreateTaxnoJOBNO: TStringField;
    qrCreateTaxnoLOCAT: TStringField;
    qrCreateTaxnoBILLDT: TDateField;
    qrCreateTaxnoCUSCODE: TStringField;
    qrCreateTaxnoPAYTYP: TStringField;
    qrCreateTaxnoNETTOT: TFloatField;
    qrCreateTaxnoPOSTTAX: TStringField;
    qrCreateTaxnoSYSTM: TStringField;
    DataSource1: TDataSource;
    qrTaxsal: TFDQuery;
    qrTaxsalTAXNO: TStringField;
    qrTaxsalTAXDATE: TDateField;
    qrTaxsalTAXREFNO: TStringField;
    qrTaxsalJOBNO: TStringField;
    qrTaxsalDESC1: TStringField;
    qrTaxsalCUSCOD: TStringField;
    qrTaxsalVATRT: TFloatField;
    qrTaxsalAMOUNT: TFloatField;
    qrTaxsalREDU: TFloatField;
    qrTaxsalBALANCE: TFloatField;
    qrTaxsalVAT: TFloatField;
    qrTaxsalTOTTAX: TFloatField;
    qrTaxsalFLAG: TStringField;
    qrTaxsalUSERID: TStringField;
    qrTaxsalTIME1: TDateTimeField;
    qrTaxsalPAYTYP: TStringField;
    qrTaxsalLOCAT: TStringField;
    qrTaxsalFRSV: TStringField;
    qrTaxsalCLAIM: TStringField;
    DataSource3: TDataSource;
    qrHelp: TFDQuery;
    Query1: TFDQuery;
    QCustmast: TFDQuery;
    QCustmastCUSCOD: TStringField;
    QCustmastSNAM: TStringField;
    QCustmastNAME1: TStringField;
    QCustmastNAME2: TStringField;
    QCustmastNICKNM: TStringField;
    QCustmastBIRTHDT: TDateField;
    QCustmastADDRNO: TStringField;
    QCustmastIDCARD: TStringField;
    QCustmastIDNO: TStringField;
    QCustmastISSUBY: TStringField;
    QCustmastISSUDT: TDateField;
    QCustmastEXPDT: TDateField;
    QCustmastAGE: TFloatField;
    QCustmastNATION: TStringField;
    QCustmastOCCUP: TStringField;
    QCustmastOFFIC: TStringField;
    QCustmastGRADE: TStringField;
    QCustmastACPDT: TDateField;
    QCustmastUSERID: TStringField;
    QCustmastMINCOME: TFloatField;
    QCustmastMAXCRED: TFloatField;
    QCustmastUpdateStatus: TStringField;
    QCustmastMEMBCOD: TStringField;
    QCustmastGRPCUS: TStringField;
    QCustmastPICTURE: TStringField;
    QCustmastCREDIT: TFloatField;
    QCustmastDISCT: TFloatField;
    QCustmastSALLEV: TStringField;
    QCustmastSINCOME: TFloatField;
    QCustmastADDR_I: TStringField;
    QCustmastRODE_I: TStringField;
    QCustmastTUMB_I: TStringField;
    QCustmastAUMPID_I: TStringField;
    QCustmastPROVID_I: TStringField;
    QCustmastZIP_I: TStringField;
    QCustmastTELP_I: TStringField;
    QCustmastADDR_II: TStringField;
    QCustmastRODE_II: TStringField;
    QCustmastTUMB_II: TStringField;
    QCustmastAUMPID_II: TStringField;
    QCustmastPROVID_II: TStringField;
    QCustmastZIP_II: TStringField;
    QCustmastTELP_II: TStringField;
    QCustmastTEXT: TMemoField;
    QCustmastPROSPECT: TStringField;
    QCustmastEMAIL1: TStringField;
    Socustmast: TDataSource;
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AdvAddInClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ExitBtnClick(Sender: TObject);
    procedure AdvAddOutClick(Sender: TObject);
    procedure AdvAddInAllClick(Sender: TObject);
    procedure qrFindDatBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure HelpBtnClick(Sender: TObject);
    procedure CrtTaxBtnClick(Sender: TObject);
    procedure AutoRunClick(Sender: TObject);
    procedure LocatPropertiesChange(Sender: TObject);
    procedure LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure qrTaxsalAfterPost(DataSet: TDataSet);
    procedure QCustmastBeforeOpen(DataSet: TDataSet);
    procedure QCustmastAfterPost(DataSet: TDataSet);
    procedure DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit22PropertiesChange(Sender: TObject);
    procedure DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit23PropertiesChange(Sender: TObject);
    procedure cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCreateTaxno: TFCreateTaxno;

implementation

uses
  DmSv, Functn01, USoftFirm, Dmsec, uSrcDlg, uFindData;

{$R *.DFM}

procedure TFCreateTaxno.DataSource1StateChange(Sender: TObject);
begin
  if not (Dm_SV.QDBConfig.Active) then
    DM_SV.QDBConfig.Open;
end;

procedure TFCreateTaxno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FCreateTaxno := nil;
end;

procedure TFCreateTaxno.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREP', 'HDREP04_');
  cxDateEdit1.Date := sfmain.XCurDtFrmDB;
  cxDateEdit2.Date := sfmain.XCurDtFrmDB;
end;

procedure TFCreateTaxno.AdvAddInClick(Sender: TObject);
begin
  if not (qrFindDat.Eof) then
  begin
    qrCreateTaxno.Append;
    qrCreateTaxnoBILLNO.AsString := qrFindDatBILLNO.AsString;
    qrCreateTaxnoJOBNO.Asstring := qrFindDatJOBNO.AsString;
    qrCreateTaxnoLOCAT.AsString := qrFindDatLOCAT.AsString;
    qrCreateTaxnoBILLDT.AsDateTime := qrFindDatBILLDT.AsDateTime;
    qrCreateTaxnoCUSCODE.AsString := qrFindDatCUSCODE.AsString;
    qrCreateTaxnoPAYTYP.AsString := qrFindDatPAYTYP.AsString;
    qrCreateTaxnoPOSTTAX.AsString := qrFindDatPOSTTAX.AsString;
    qrCreateTaxnoNETTOT.AsFloat := qrFindDatNETTOT.AsFloat;
    qrCreateTaxno.Post;
    qrFindDat.Delete;
  end;
end;

procedure TFCreateTaxno.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFCreateTaxno.ExitBtnClick(Sender: TObject);
begin
  Close;
  SFMain.AdvNavBar1.Collapsed := False;
end;

procedure TFCreateTaxno.AdvAddOutClick(Sender: TObject);
begin
  qrCreateTaxno.First;
  while not (qrCreateTaxno.Eof) do
    qrCreateTaxno.Delete;

  qrFindDat.Close;
  qrFindDat.Open;
end;

procedure TFCreateTaxno.AdvAddInAllClick(Sender: TObject);
begin
  qrFindDat.First;
  while not (qrFindDat.Eof) do
  begin
    qrCreateTaxno.Append;
    qrCreateTaxnoBILLNO.AsString := qrFindDatBILLNO.AsString;
    qrCreateTaxnoJOBNO.Asstring := qrFindDatJOBNO.AsString;
    qrCreateTaxnoLOCAT.AsString := qrFindDatLOCAT.AsString;
    qrCreateTaxnoBILLDT.AsDateTime := qrFindDatBILLDT.AsDateTime;
    qrCreateTaxnoCUSCODE.AsString := qrFindDatCUSCODE.AsString;
    qrCreateTaxnoPAYTYP.AsString := qrFindDatPAYTYP.AsString;
    qrCreateTaxnoPOSTTAX.AsString := qrFindDatPOSTTAX.AsString;
    qrCreateTaxnoNETTOT.AsFloat := qrFindDatNETTOT.AsFloat;
    qrCreateTaxno.Post;
    qrFindDat.Next;
  end;

  qrFindDat.First;
  while not (qrFindDat.Eof) do
    qrFindDat.Delete;
end;

procedure TFCreateTaxno.qrFindDatBeforeOpen(DataSet: TDataSet);
var
  nSystm: string;
begin
  case cxRadioGroup1.ItemIndex of
    0:
      nSystm := 'IC%';
    1:
      nSystm := 'SVNORM%';
    2:
      nSystm := '%';
  end;
  qrFindDat.ParamByName('DT_START').AsDateTime := cxDateEdit1.Date;
  qrFindDat.ParamByName('DT_END').AsDateTime := cxDateEdit2.Date;
  qrFindDat.ParamByName('LOCAT').Value := Locat.Text;
  qrFindDat.ParamByName('SYSTM').Value := nSystm;
end;

procedure TFCreateTaxno.FormShow(Sender: TObject);
begin
  with qrTaxsal do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL_CUSTOM WHERE TAXNO = '''' ');
    Open;
  end;

  with qrCreateTaxno do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT BILLNO,JOBNO,LOCAT,BILLDT,CUSCODE,PAYTYP,NETTOT,POSTTAX,SYSTM ' +
      'FROM ARPAYTRN ' +
      'WHERE CANDAT IS NULL AND NETTOT > 0 ' +
      'AND BILLNO = '''' ');
    Open;
  end;
  Taxdt.Date := sfmain.XCurDtFrmDB;
  Locat.Text := sfmain.Xlocat;
end;

procedure TFCreateTaxno.HelpBtnClick(Sender: TObject);
begin
  if not qrCreateTaxno.Active then
    qrCreateTaxno.Open;

  if qrCreateTaxno.RecordCount > 0 then
  begin
    qrCreateTaxno.First;
    while not (qrCreateTaxno.Eof) do
      qrCreateTaxno.Delete;
  end;

  if qrFindDat.Active then
    qrFindDat.Close;
  qrFindDat.Open;

  if not QCustmast.Active then
    QCustmast.Open;
  if qrFindDat.Eof and qrFindDat.Bof then
    sfmain.RaiseException('ไม่พบข้อมูลตามเงื่อนไข..!');
end;

procedure TFCreateTaxno.CrtTaxBtnClick(Sender: TObject);
var
  HF, LF, LV: string;
  DV: TdateTime;
  n: word;
begin
  {Check condition}
  if qrCreateTaxno.RecordCount = 0 then
    sfmain.RaiseException('กรุณาเลือกข้อมูลก่อนสร้างใบกำกับ..!');
  if AutoRun.Checked = True then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TCxTextEdit) and (TCxTextEdit(Components[n]).Tag = 1) then
      begin
        if TCxTextEdit(Components[n]).Text = '' then
          sfmain.RaiseException('เป็นการกำหนดวันที่และสาขาจากผู้ใช้งาน<br/>กรุณาตรวจสอบข้อมูล...!');
      end;
    end;
  end;

  {Start}
  sfmain.AdvSmoothMessageDialog4.Caption := 'Auto Running Tax no.';
  sfmain.AdvSmoothMessageDialog4.HTMLText.Text := 'คุณต้องการสร้างใบกำกับอัตโนมัติจากระบบใช่หรือไม่?';
  case sfmain.AdvSmoothMessageDialog4.ExecuteDialog of
    mrOk:
      begin
        try
                  {Start Post2Taxsal}
          HF := 'H_TXCS';
          LF := 'L_TXCS';

          if AutoRun.Checked = True then
          begin
            DV := Taxdt.Date;
            LV := Locat.Text;
          end
          else
          begin
            DV := qrCreateTaxno.fieldbyname('BILLDT').AsDateTime;
            LV := qrCreateTaxno.fieldbyname('LOCAT').AsString;
          end;
                  {End check}

          qrCreateTaxno.First;
          while not (qrCreateTaxno.Eof) do {Start insert Stk}
          begin
            qrTaxsal.Append;
            qrTaxsal.FieldByName('TAXNO').Asstring := Dm_Sv.RunNo(HF, LF, LV, DV); {Function RunNo}
            if AutoRun.Checked = True then
            begin
              qrTaxsal.FieldByName('LOCAT').AsString := Locat.Text;
              qrTaxsal.FieldByName('TAXDATE').AsDateTime := Taxdt.Date;
            end
            else
            begin
              qrTaxsal.FieldByName('LOCAT').AsString := qrCreateTaxno.fieldbyname('LOCAT').AsString;
              qrTaxsal.FieldByName('TAXDATE').AsDateTime := qrCreateTaxno.fieldbyname('BILLDT').AsDateTime;
            end;
            qrTaxsal.FieldByName('TAXREFNO').Asstring := qrCreateTaxno.fieldbyname('BILLNO').AsString;
            qrTaxsal.FieldByName('JOBNO').Asstring := qrCreateTaxno.fieldbyname('JOBNO').AsString; //Dm_Sv.RunNo(HF,LF,LV,DV);
            qrTaxsal.FieldByName('DESC1').Asstring := Desc1.Text;
            qrTaxsal.FieldByName('CUSCOD').Asstring := qrCreateTaxno.fieldbyname('CUSCODE').AsString;
            ;
            qrTaxsal.FieldByName('VATRT').AsFloat := 7;
            qrTaxsal.FieldByName('AMOUNT').AsFloat := qrCreateTaxno.FieldByName('NETTOT').AsFloat;

            if qrCreateTaxno.fieldbyname('POSTTAX').AsString = 'N' then
            begin
              qrTaxsal.FieldByName('BALANCE').AsFloat := FRound((qrCreateTaxno.FieldByName('NETTOT').AsFloat * 100) / 107, 2);
              qrTaxsal.FieldByName('VAT').AsFloat := FRound((qrCreateTaxno.FieldByName('NETTOT').AsFloat * 7) / 107, 2);
              qrTaxsal.FieldByName('TOTTAX').AsFloat := qrCreateTaxno.FieldByName('NETTOT').AsFloat;
            end
            else
            begin
              qrTaxsal.FieldByName('BALANCE').AsFloat := qrCreateTaxno.FieldByName('NETTOT').AsFloat;
              qrTaxsal.FieldByName('VAT').AsFloat := FRound((qrCreateTaxno.FieldByName('NETTOT').AsFloat * 7) / 100, 2);
              qrTaxsal.FieldByName('TOTTAX').AsFloat := FRound(qrTaxsal.FieldByName('VAT').AsFloat +
                qrTaxsal.FieldByName('BALANCE').AsFloat, 2);
            end;
            qrTaxsal.FieldByName('FLAG').AsString := '1';
            qrTaxsal.FieldByName('FRSV').AsString := 'S';
            qrTaxsal.FieldByName('CLAIM').AsString := 'N';
            if qrCreateTaxno.fieldbyname('SYSTM').AsString = 'SVNORM' then
              qrTaxsal.FieldByName('PAYTYP').AsString := 'C'
            else
              qrTaxsal.FieldByName('PAYTYP').AsString := 'S';
            qrTaxsal.FieldByName('TIME1').AsDateTime := now;
            qrTaxsal.FieldByName('USERID').AsString := sfmain.Xuser_ID;
            qrTaxsal.Post;
            qrCreateTaxno.Next;
          end;

          sfmain.AdvSmoothMessageDialog3.Caption := 'Post TaxInvoi successfully...';
          sfmain.AdvSmoothMessageDialog3.HTMLText.Text := 'บันทึกรายการเรียบร้อยแล้ว<br>กรุณาตรวจสอบรายการนี้อีกครั้งที่รายงานภาษี';
          sfmain.AdvSmoothMessageDialog3.ExecuteDialog;
        except
        end;
        if qrFindDat.Active then
          qrFindDat.Close;
        if qrCreateTaxno.Active then
          qrCreateTaxno.Close;
      end;
  end;
end;

procedure TFCreateTaxno.AutoRunClick(Sender: TObject);
begin
  Taxdt.Enabled := AutoRun.Checked;
  Locat.Enabled := AutoRun.Checked;
end;

procedure TFCreateTaxno.LocatPropertiesChange(Sender: TObject);
begin
  Showlocat.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', Locat.Text);
end;

procedure TFCreateTaxno.LocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Locat.Text := fSrcDlg.KeyNo;
end;

procedure TFCreateTaxno.qrTaxsalAfterPost(DataSet: TDataSet);
begin
  Dm_SEC.HI_DBMS.StartTransaction;
  try
    if qrTaxsal.Active then
      if (qrTaxsal.ApplyUpdates = 0) then
        qrTaxsal.CommitUpdates
      else
        raise Exception.Create(qrTaxsal.RowError.Message);
    if Dm_Sv.QLastNo.Active then
      if (Dm_Sv.QLastNo.ApplyUpdates = 0) then
        Dm_Sv.QLastNo.CommitUpdates
      else
        raise Exception.Create(Dm_Sv.QLastNo.RowError.Message);
    if Dm_Sv.qRunNumber.Active then
      if (Dm_Sv.qRunNumber.ApplyUpdates = 0) then
        Dm_Sv.qRunNumber.CommitUpdates
      else
        raise Exception.Create(Dm_Sv.qRunNumber.RowError.Message);
    Dm_SEC.HI_DBMS.Commit;
  except
    Dm_SEC.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TFCreateTaxno.QCustmastBeforeOpen(DataSet: TDataSet);
begin
  QCustmast.ParamByName('CUSCODE').Value := qrFindDatCUSCODE.AsString;
end;

procedure TFCreateTaxno.QCustmastAfterPost(DataSet: TDataSet);
begin
  Dm_SEC.HI_DBMS.StartTransaction;
  try
    if QCustmast.Active then
      if (QCustmast.ApplyUpdates = 0) then
        QCustmast.CommitUpdates
      else
        raise Exception.Create(QCustmast.RowError.Message);
    Dm_SEC.HI_DBMS.Commit;
  except
    Dm_SEC.HI_DBMS.RollBack;
    raise;
  end;
end;

procedure TFCreateTaxno.DBEdit22PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetAump = Mrok then
  begin
    QCustmast.FieldByName('AUMPID_I').AsString := fFindData.Keyno;
  end;
end;

procedure TFCreateTaxno.DBEdit22PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM SETAUMP WHERE AUMPCOD=:XAUMP ');
    Params[0].asstring := DBEdit22.Text;
    OPEN;
    Edit1.Text := Query1.FieldByName('AumpDes').asstring;
  end;
end;

procedure TFCreateTaxno.DBEdit23PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSetProv = Mrok then
  begin
    QCustmast.FieldByName('PROVID_I').AsString := fFindData.Keyno;
  end;
end;

procedure TFCreateTaxno.DBEdit23PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * FROM SETPROV WHERE PROVCOD=:XPROV ');
    Params[0].asstring := DBEdit23.Text;
    OPEN;
    Edit2.Text := Query1.FieldByName('ProvDes').asstring;
  end;
end;

procedure TFCreateTaxno.cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  AdvAddInClick(Sender);
end;

end.

