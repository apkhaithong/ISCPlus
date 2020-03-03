unit PayCrdt2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ComCtrls, ExtCtrls, DB,
  Dbkbd, ImgList, ToolWin, cxMaskEdit, cxButtonEdit, cxDBEdit, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxLookAndFeelPainters, AdvGlowButton, cxMemo,
  cxGroupBox, cxRadioGroup, cxCurrencyEdit, cxCheckBox, cxDropDownEdit,
  cxCalendar, ActnList, AdvOfficeButtons, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, System.Actions, BusinessSkinForm, dxStatusBar, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFCredtpay2 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label15: TLabel;
    DBRadioGroup1: TcxDBRadioGroup;
    ShowButton3: TAdvGlowButton;
    DBEdit4: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    cxRadioGroup1: TcxRadioGroup;
    dxStatusBar1: TdxStatusBar;
    CheckBox1: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    Label17: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label10: TLabel;
    Label21: TLabel;
    Label28: TLabel;
    Label34: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label22: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    Label6: TLabel;
    DBEdit8: TcxDBButtonEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DueDate: TcxDBDateEdit;
    InvDate: TcxDBDateEdit;
    DBEdit17: TcxDBTextEdit;
    DBEdit11: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    BillBtn: TAdvGlowButton;
    Edit3: TcxTextEdit;
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
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure ShowButton3Click(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure EditSumChange(Sender: TObject);
    procedure FbtLocatClick(Sender: TObject);
    procedure DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure InvDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure BillBtnClick(Sender: TObject);
    procedure DBEdit5PropertiesChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    XEditJob: string;
  end;

var
  FCredtpay2: TFCredtpay2;
  XSUM, XSUME: Double;

implementation

uses
  Dmfinc, DmSv, DmSvSet, Functn01, uSrcDlg1, Paycash2, Showjob, USoftFirm,
  uSrcDLG, unfrPreview, Dmsec;
{$R *.DFM}

procedure TFCredtpay2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_Finc.QJoborder1.Close;
  Dm_Finc.QAr_servC2.close;
  Dm_Finc.QTaxsal.Close;
  Dm_Finc.QParttran.Close;
  Dm_Finc.QArmast1.Close;
  Action := Cafree;
  FCredtpay2 := nil;
end;

procedure TFCredtpay2.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit17.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  PrnBtn.Visible := (DataSource1.State = DsBrowse) and (DBEdit17.Text <> '');
  ShowButton3.Enabled := SaveBtn.Visible;
  BillBtn.Visible := (DataSource1.Dataset.State = Dsbrowse);
  DBRadioGroup1.Properties.ReadOnly := not (DataSource1.Dataset.State = DsInsert);

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := False;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Enabled := True;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := True;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
end;

procedure TFCredtpay2.InsBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if SFMain.Xlocat = 'Y' then
    fSrcDlg1.XSrLocat := ''
  else
    fSrcDlg1.XSrLocat := SFMain.Xlocat;
  if fSrcDlg1.ShowModalJOBFNH = Mrok then
  begin
    with Dm_Finc.QJoborder1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNOO ');
      Params[0].Asstring := fSrcDlg1.Keyno;
      if not Dm_Finc.QJoborder1.Prepared then
        Dm_Finc.QJoborder1.Prepare;
      Open;
      if Dm_Finc.QJoborder1.Bof and Dm_Finc.QJoborder1.eof then
        SFMain.RaiseException('ไม่มี Job หมายเลขนี้ ');
    end;

   {with Dm_Finc.Query3 do
   begin
     close;
     sql.Clear;
     sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO =:SJOBNO');
     Params[0].Asstring := Dm_Finc.QJoborder1.fieldbyname('JOBNO').AsString;
     open;
     if (Dm_Finc.Query3.Bof and Dm_Finc.Query3.eof) and (Dm_Finc.QJoborder1.fieldbyname('SERVTOT').AsFloat > 0) then
     SFMain.RaiseException('ไม่พบรายการค่าแรง<br/>กรุณาตรวจสอบรายการก่อนออกใบกำกับ<br/>ได้ที่เมนูระบบปิดงานซ่อมคิดค่าใช้จ่าย');
   end;}

    if Dm_Finc.QJoborder1.FieldByName('Status').Asstring = 'W' then
      SFMain.RaiseException('ยังไม่ปิด Job');

    if Dm_Finc.QJoborder1.FieldByName('PTAXNO').Asstring <> '' then
      sfmain.RaiseException('Job นี้ได้ออกใบส่งของแล้ว');

    if Dm_Finc.QJoborder1.FieldByName('PARTNET').AsFloat + Dm_Finc.QJoborder1.FieldByName('OILNET').AsFloat +
      Dm_Finc.QJoborder1.FieldByName('TSV_NET').AsFloat = 0 then
      SFMain.RaiseException('Job นี้ไม่มีค่าใช้จ่าย<br/>เข้าหัวข้อส่งมอบรถให้ลูกค้าโดยไม่คิดค่าใช้จ่าย<br/>ได้ที่เมนูระบบปิดงานซ่อมคิดค่าใช้จ่าย');

    with Dm_Finc.QAr_servC2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM AR_SERV WHERE JOBNO=:XNOO');
      Params[0].Asstring := '';
      if not Dm_Finc.QAr_servC2.Prepared then
        Dm_Finc.QAr_servC2.Prepare;
      Open;
      Insert;
    end;

    with Dm_Finc.QArmast1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT NAME1,NAME2,CREDIT,MAXCRED FROM CUSTMAST WHERE CUSCOD= :XCUSNO  ');
      Params[0].Asstring := Dm_Finc.QJoborder1.FieldByName('CUSCOD').Asstring;
      if not Dm_Finc.QArmast1.Prepared then
        Dm_Finc.QArmast1.Prepare;
      Open;
      if not (Bof and Eof) then
      begin
        Edit1.Text := Dm_Finc.QArmast1.Fieldbyname('Name1').Asstring + '  ' + Dm_Finc.QArmast1.Fieldbyname('Name2').Asstring;

        Dm_Finc.QAr_servC2CREDTM.AsFloat := Dm_Finc.QArmast1.Fieldbyname('CREDIT').asfloat;
        if Dm_Finc.QAr_ServC2PTYPE.Asstring = 'S' then
          Dm_Finc.QAr_servC2CREDTM.AsFloat := 0;

        Dm_Finc.QAr_ServC2DUEDATE.Asdatetime := Dm_Finc.QAr_ServC2DEVDATE.Asdatetime + Dm_Finc.QAr_servC2CREDTM.AsFloat;
      end;
    end;

    with Dm_Finc.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT STRNO,CUSCOD,MDLCOD,VIPEXP,SVDISCT,EXPKILO,EXPWARNT,GCODE,LASTKILO,MEMO1 ' +
        ' FROM SVMAST  WHERE STRNO = :XCODE ');
      Params[0].Asstring := Dm_Finc.QJoborder1.FieldByName('STRNO').Asstring;
      if not Dm_Finc.Query1.Prepared then
        Dm_Finc.Query1.Prepare;
      Open;
    end;

    if Dm_Finc.Query1.FieldByName('MEMO1').Asstring <> '' then
    begin
      sfmain.AdvSmoothMessageDialog3.Caption := 'Warning message';
      sfmain.AdvSmoothMessageDialog3.HTMLText.Text := Dm_Finc.Query1.FieldByName('MEMO1').Asstring;
      sfmain.AdvSmoothMessageDialog3.ExecuteDialog;
    end;

    with Dm_Finc.QParttran do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT P.JOBNO,P.LOCAT,P.PARTNO,P.QTY,L.LOCATNM FROM PARTTRAN P,INVLOCAT L ' +
        'WHERE  P.LOCAT=L.LOCATCD AND JOBNO= :XJOBNO  ');
      Params[0].Asstring := Dm_Finc.QJoborder1.FieldByName('JOBNO').Asstring;
      if not Dm_Finc.QParttran.Prepared then
        Dm_Finc.QParttran.Prepare;
      Open;
     //Edit3.Text := Dm_Finc.QParttran.fieldbyname('LOCATNM').AsString;
    end;

   //
    Application.CreateForm(TFjobshow, Fjobshow);
    if not (Fjobshow.Query1.Bof and Fjobshow.Query1.Eof) then
      Fjobshow.ShowModal
    else
      Fjobshow.Close;

    XSUM := 0;
    XSUM := Dm_Finc.QAr_ServC2TOTTAX.AsFloat;
  end;
end;

procedure TFCredtpay2.CancBtnClick(Sender: TObject);
begin
  if Dm_Finc.QAr_servC2.State in Dseditmodes then
    Dm_Finc.QAr_servC2.cancel;

  with Dm_Finc.QAr_servC2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
    Params[0].Asstring := '';
    Open;
  end;

  Edit1.Text := '';

  with Dm_Finc.QJoborder1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNOO ');
    Params[0].Asstring := '';
    Open;
  end;
  Label22.Caption := '';
end;

procedure TFCredtpay2.SaveBtnClick(Sender: TObject);
var
  S, XInvno, Ptyp, Xlocat: string;
  XBilldt: TDateTime;
begin
  cxDBMemo1.SetFocus;

  with Dm_Finc.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT MAX(PKDATE) AS PKDT FROM PARTTRAN WHERE JOBNO= :XJOB  ');
    Params[0].Asstring := Dm_Finc.QJoborder1.FieldByName('JOBNO').Asstring;
    Open;
    if not (Bof and Eof) then
      if Dm_Finc.Query1.Fieldbyname('PKDT').Asdatetime > Dm_Finc.QAr_servC2.Fieldbyname('DEVDATE').Asdatetime then
        SFMain.RaiseException('วันที่ออกใบกำกับก่อนวันเบิกสินค้าล่าสุด ' + Dm_Finc.Query1.Fieldbyname('PKDT').Asstring);
  end;

  if (DBRadioGroup1.Itemindex = 1) and (Dm_Finc.QAr_ServC2CREDTM.Asfloat = 0) then
  begin
    sfmain.AdvSmoothMessageDialog2.Caption := 'กรุณาตรวจสอบข้อมูล';
    sfmain.AdvSmoothMessageDialog2.HTMLText.Text := 'ยังไม่ระบุจำนวนวันเครดิต ยืนยันว่าถูกต้องแล้ว?';
    if sfmain.AdvSmoothMessageDialog2.ExecuteDialog = mrCancel then
      Abort;
  end;

  if (DBRadioGroup1.Itemindex = 1) and (Dm_Finc.QAr_ServC2TOTTAX.Asfloat > Dm_Finc.QArmast1.FieldByName('MAXCRED').Asfloat) then
  begin
    sfmain.AdvSmoothMessageDialog2.Caption := 'กรุณาตรวจสอบข้อมูล';
    sfmain.AdvSmoothMessageDialog2.HTMLText.Text := 'ยอดตั้งลูกหนี้ มากกว่าวงเงินเครดิตที่กำหนดไว้<br/>ต้องการทำรายการต่อหรือไม่?';
    if sfmain.AdvSmoothMessageDialog2.ExecuteDialog = mrCancel then
      Abort;
  end;

  if Dm_Finc.QAr_ServC2CANCELID.Asstring <> '' then
    SFMain.RaiseException('ยกเลิกแล้ว');

  S := Dm_Finc.QAr_ServC2DEVNO.Asstring;
  Xlocat := Dm_Finc.QAr_ServC2LOCAT.Asstring;
  XBilldt := Dm_Finc.QAr_ServC2DEVDATE.AsDateTime;
  Ptyp := Dm_Finc.QAr_servC2.Fieldbyname('Ptype').asstring;

  if Dm_Finc.QAr_servC2.Fieldbyname('Depostno').Asstring <> '' then
  begin
    with Dm_Finc.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE APINVOI SET SMPAY=NETTOTAL,KANG=0,LPAID=:1 WHERE INVNO=:2');
      Params[0].AsDATEtime := Dm_Finc.QAr_servC2.Fieldbyname('DEVDATE').Asdatetime;
      Params[1].Asstring := Dm_Finc.QAr_servC2.Fieldbyname('Depostno').Asstring;
      ExecSql;

      Close;
      Sql.Clear;
      Sql.Add('UPDATE JOBORDER SET STATUS=''R'',PAYDATE=:1 WHERE JOBNO=:2');
      Params[0].AsDateTime := Dm_Finc.QAr_servC2.Fieldbyname('DEVDATE').AsDateTime;
      Params[1].Asstring := Dm_Finc.QAr_servC2.Fieldbyname('JOBNO').Asstring;
      ExecSql;
    end;
  end;

  //
  if Dm_Finc.QAr_servC2.State in Dseditmodes then
    Dm_Finc.QAr_servC2.Post;

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV2_08', 'INSERT', Dm_Finc.QAr_ServC2TAXNO.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSV2_08', 'EDIT', Dm_Finc.QAr_ServC2TAXNO.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

  if (Ptyp = 'S') and (Dm_Finc.QAr_servC2.Fieldbyname('TAXNO').asstring = '') then
  begin
    Application.CreateForm(TFCashpay2, FCashpay2);
    FCashpay2.Xinvno := S;
    FCashpay2.Showmodal;

    with Dm_Finc.QAr_servC2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
      Params[0].Asstring := S;
      if Dm_Finc.QAr_servC2.Prepared then
        Dm_Finc.QAr_servC2.Prepare;
      Open;
    end;

    with Dm_Finc.QJoborder1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :Edit ');
      Params[0].Asstring := Dm_Finc.QAr_servC2JOBNO.Asstring;
      if not Dm_Finc.QJoborder1.Prepared then
        Dm_Finc.QJoborder1.Prepare;
      Open;
    end;
  end;
end;

procedure TFCredtpay2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

procedure TFCredtpay2.EditBtnClick(Sender: TObject);
var
  S: string;
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if SFMain.XChgLoc = 'Y' then
    fSrcDlg1.XSrLocat := ''
  else
    fSrcDlg1.XSrLocat := SFmain.Xlocat;

  if Dm_Finc.Condpay.Fieldbyname('TempTax').Asstring <> 'Y' then
  begin
    if fSrcDlg1.ShowModalTAXJOB = Mrok then
    begin
      with Dm_Finc.QAr_servC2 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO=:XDVNO ');
        Params[0].Asstring := fSrcDlg1.Keyno;
        Open;
        if Dm_Finc.QAr_servC2.Bof and Dm_Finc.QAr_servC2.eof then
        begin
          Dm_Finc.QJoborder1.Close;
          SFMain.RaiseException('ไม่มีใบส่งของ/ใบกำกับ ของ JOB นี้ หรือ เป็น Inv.เสริม');
        end;
      end;
    end;

    with Dm_Finc.QJoborder1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNOO ');
      Params[0].Asstring := Dm_Finc.QAr_servC2.FieldByName('JOBNO').Asstring;
      Open;
      if Dm_Finc.QJoborder1.Bof and Dm_Finc.QJoborder1.eof then
        SFMain.RaiseException('ไม่มี Job หมายเลขนี้ ');
    end;

    with Dm_Finc.QTaxsal do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
      Params[0].Asstring := fSrcDlg1.Keyno;
      Open;
    end;

    with Dm_Finc.QArmast1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT NAME1,NAME2,CREDIT,MAXCRED FROM CUSTMAST WHERE CUSCOD= :XCUSNO  ');
      Params[0].Asstring := Dm_Finc.QJoborder1.FieldByName('CUSCOD').Asstring;
      Open;
      Edit1.Text := Dm_Finc.QArmast1.Fieldbyname('Name1').Asstring + '  ' + Dm_Finc.QArmast1.Fieldbyname('Name2').Asstring;
    end;

    with Dm_Finc.QParttran do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT P.JOBNO,P.LOCAT,P.PARTNO,P.QTY,L.LOCATNM FROM PARTTRAN P,INVLOCAT L ' +
        'WHERE  P.LOCAT=L.LOCATCD AND JOBNO= :XJOBNO  ');
      Params[0].Asstring := Dm_Finc.QJoborder1.FieldByName('JOBNO').Asstring;
      if not Dm_Finc.QParttran.Prepared then
        Dm_Finc.QParttran.Prepare;
      Open;
    end;
  end
  else
  begin
    if fSrcDlg1.ShowModalARSERV = Mrok then
    begin
      with Dm_Finc.QAr_servC2 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM AR_SERV WHERE DEVNO = :XDVNO ');
        Params[0].Asstring := fSrcDlg1.Keyno;
        Open;
        if Dm_Finc.QAr_servC2.Bof and Dm_Finc.QAr_servC2.eof then
        begin
          Dm_Finc.QJoborder1.Close;
          SFMain.RaiseException('ไม่มีใบส่งของ/ใบกำกับ ของ JOB นี้ ');
        end;
      end;
    end;

    with Dm_Finc.QJoborder1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNOO ');
      Params[0].Asstring := Dm_Finc.QAr_servC2.FieldByName('JOBNO').Asstring;
      Open;
      if Dm_Finc.QJoborder1.Bof and Dm_Finc.QJoborder1.eof then
        SFMain.RaiseException('ไม่มี Job หมายเลขนี้ ');
    end;

    with Dm_Finc.QTaxsal do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XTAXNO ');
      Params[0].Asstring := fSrcDlg1.Keyno;
      Open;
    end;

    with Dm_Finc.QArmast1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT NAME1,NAME2,CREDIT,MAXCRED FROM CUSTMAST WHERE CUSCOD= :XCUSNO  ');
      Params[0].Asstring := Dm_Finc.QJoborder1.FieldByName('CUSCOD').Asstring;
      Open;
      Edit1.Text := Dm_Finc.QArmast1.Fieldbyname('Name1').Asstring + '  ' + Dm_Finc.QArmast1.Fieldbyname('Name2').Asstring;
    end;
    with Dm_Finc.QParttran do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT P.JOBNO,P.LOCAT,P.PARTNO,P.QTY,L.LOCATNM FROM PARTTRAN P,INVLOCAT L ' +
        'WHERE  P.LOCAT=L.LOCATCD AND JOBNO= :XJOBNO  ');
      Params[0].Asstring := Dm_Finc.QJoborder1.FieldByName('JOBNO').Asstring;
      if not Dm_Finc.QParttran.Prepared then
        Dm_Finc.QParttran.Prepare;
      Open;
    end;
  end;
end;

procedure TFCredtpay2.DelBtnClick(Sender: TObject);
var
  XYear, XMonth, XDay: Word;
begin
  if DBEdit17.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');

  with Dm_Finc.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT TAXNO,TAXREFNO,POSTGL FROM TAXSAL WHERE TAXREFNO=:1 AND FLAG=''2'' AND CANCELID IS NULL ');
    Params[0].Asstring := Dm_Finc.QAr_ServC2DEVNO.AsString;
    Open;
    if not (Bof and Eof) then
      SFMain.RaiseException('มีการออกใบลดหนี้ #' + Dm_Finc.Query1.Fieldbyname('TAXNO').Asstring);

    if Dm_Finc.Query1.FieldByName('POSTGL').AsString = 'Y' then
      SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');
  end;

  if not Dm_Finc.Condpay.Active then
    Dm_Finc.Condpay.Open;
  DecodeDate(Dm_Finc.QAr_ServC2DEVDATE.Asdatetime, XYear, XMonth, XDay);
  if Dm_Finc.Condpay.Fieldbyname('Curyear').Asstring > Inttostr(XYear) then
    SFMain.RaiseException('ปิดบัญชีสิ้นปีแล้ว ยกเลิกข้อมูลเก่าไม่ได้');

  if Dm_Finc.QAr_ServC2Cancelid.AsString <> '' then
    SFMain.RaiseException('ยกเลิกแล้วโดย ' + Dm_Finc.QAr_ServC2Cancelid.AsString);

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        if Dm_Finc.QAr_ServC2TAXNO.AsString <> '' then
          SFMain.RaiseException('รับชำระแล้ว #' + Dm_Finc.QAr_ServC2TAXNO.AsString);

        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSV2_08', 'DELETE', Dm_Finc.QAr_ServC2DEVNO.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        Dm_Finc.QAr_ServC2Delete;
        Dm_Finc.QAr_servC2.Post;
        CancBtnClick(Sender);
        Edit1.Text := '';
      end;
  end;

  if Dm_Finc.QAr_ServC2.Fieldbyname('Depostno').Asstring <> '' then
    with Dm_Finc.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('UPDATE APINVOI SET SMPAY=0,KANG=NETTOTAL,LPAID=Null WHERE INVNO=:1');
      Params[0].Asstring := Dm_Finc.QAr_ServC2.Fieldbyname('Depostno').Asstring;
      ExecSql;
    end;
end;

procedure TFCredtpay2.SpeedButton8Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalAR = Mrok then
  begin
    if Dm_Finc.QArpaytrn1.State = dsbrowse then
      Dm_Finc.QArpaytrn1.edit;
    Dm_Finc.QAr_servC2.FieldByName('CUSCOD').Asstring := fSrcDlg1.KeyNo;
    Edit1.Text := fSrcDlg1.qrFindDat.Fieldbyname('Name1').Asstring + '  ' + fSrcDlg1.qrFindDat.Fieldbyname('Name2').Asstring;
  end;
end;

procedure TFCredtpay2.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SaveBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFCredtpay2.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSV', 'HDSV2_08');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFCredtpay2.DBRadioGroup1Click(Sender: TObject);
begin
  with Dm_Finc.QArmast1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT NAME1,NAME2,CREDIT,MAXCRED FROM CUSTMAST WHERE CUSCOD= :XCUSNO  ');
    Params[0].Asstring := Dm_Finc.QJoborder1.FieldByName('CUSCOD').Asstring;
    Open;
  end;

  if DBRadioGroup1.Itemindex = 0 then
  begin
    if Dm_Finc.QAr_ServC2.State in Dseditmodes then
    begin
      Dm_Finc.QAr_ServC2PTYPE.Asstring := 'S';
      Dm_Finc.QAr_servC2CREDTM.AsFloat := 0;
    end;
    if not Dm_Finc.QDBConfig.Active then
      DM_Finc.QDBConfig.Open;
    DBEdit17.Properties.Readonly := Dm_Finc.QDBConfig.Fieldbyname('H_TXSV').asstring = 'Y';
  end
  else
  begin
    if Dm_Finc.QAr_ServC2.State in Dseditmodes then
    begin
      Dm_Finc.QAr_ServC2PTYPE.Asstring := 'C';
      Dm_Finc.QAr_servC2CREDTM.AsFloat := Dm_Finc.QArmast1.Fieldbyname('Credit').asfloat;
    end;
    if not Dm_Finc.QDBConfig.Active then
      DM_Finc.QDBConfig.Open;
    DBEdit17.Properties.Readonly := Dm_Finc.QDBConfig.Fieldbyname('H_DVAL').asstring = 'Y';
  end;
end;

procedure TFCredtpay2.ShowButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFjobshow, Fjobshow);
  Fjobshow.ShowModal
end;

procedure TFCredtpay2.DBEdit3Change(Sender: TObject);
begin
  ShowButton3.Enabled := DBEdit3.Text <> '';
end;

procedure TFCredtpay2.FormShow(Sender: TObject);
begin
  if not (Dm_Finc.Condpay.Active) then
    Dm_Finc.Condpay.Open;

  XEditJob := 'N';
  with Dm_Finc.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT EditJob FROM SECRET WHERE USERID =:XEdit');
    PARAMS[0].ASSTRING := sfMain.Xuser_id;
    OPEN;
    XEditJob := Dm_Finc.Query1.Fieldbyname('EditJob').Asstring;
  end;
  //
  with Dm_Finc.QAr_servC2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM AR_SERV WHERE JOBNO = '''' ');
    Open;
  end;

  if Dm_Finc.Condpay.Fieldbyname('TempTax').Asstring = 'Y' then
  begin
    FCredtpay2.Caption := 'ออกใบส่งสินค้า';
    Label15.Caption := 'ใบส่งสินค้า';
    Label28.Caption := 'ใบเสร็จ/ใบกำกับ';
  end
  else
  begin
    FCredtpay2.Caption := 'ออกใบส่งสินค้า/ใบกำกับ/ใบแจ้งหนี้';
    Label15.Caption := 'ใบส่งของ/ใบกำกับ';
    Label28.Caption := 'ใบเสร็จรับเงิน';
  end;
end;

procedure TFCredtpay2.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFCredtpay2.RzDBButtonEdit1ButtonClick(Sender: TObject);
begin

  if Dm_Finc.QAr_servC2.State = Dsbrowse then
    Exit;

  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.Key_a := Dm_Finc.QAr_servC2.Fieldbyname('Cuscod').Asstring;
  if fSrcDlg.ShowModalDepositSV = Mrok then
  begin
    Dm_Finc.QAr_servC2.Fieldbyname('Depostno').Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TFCredtpay2.EditSumChange(Sender: TObject);
begin
  if XSUME < 0 then
  begin
    Label22.Font.Color := clRed;
    Label22.Caption := 'ยอดเงินที่ต้องคืนลูกค้า'
  end
  else
  begin
    Label22.Font.Color := clBlue;
    Label22.Caption := 'ยอดเงินที่ลูกค้าต้องชำระ';
  end;
end;

procedure TFCredtpay2.FbtLocatClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Dm_Finc.QAr_servC2.FieldByName('LOCAT').Asstring := fSrcDlg1.KeyNo;
end;

procedure TFCredtpay2.DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if Dm_Finc.QAr_servC2.State = Dsbrowse then
    Exit;
  Application.Createform(TfSrcDlg, fSrcDlg);
  fsrcDlg.XSrLocat := DBEdit5.Text;
  fSrcDlg.Key_a := DBEdit11.Text;
  if fSrcDlg.ShowModalDepositSV = Mrok then
  begin
    Dm_Finc.QAr_servC2.Fieldbyname('Depostno').Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TFCredtpay2.cxDBMemo1Click(Sender: TObject);
begin
  FCredtpay2.KeyPreview := False;
end;

procedure TFCredtpay2.cxDBMemo1Exit(Sender: TObject);
begin
  FCredtpay2.KeyPreview := True;
end;

procedure TFCredtpay2.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalAR = Mrok then
  begin
    if Dm_Finc.QArpaytrn1.State = dsbrowse then
      Dm_Finc.QArpaytrn1.edit;
    Dm_Finc.QAr_servC2.FieldByName('CUSCOD').Asstring := fSrcDlg1.KeyNo;
    Edit1.Text := fSrcDlg1.qrFindDat.Fieldbyname('Name1').Asstring + '  ' + fSrcDlg1.qrFindDat.Fieldbyname('Name2').Asstring;
  end;
end;

procedure TFCredtpay2.InvDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(Dm_Finc.QAr_ServC2.fieldbyname('DEVDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      Dm_Finc.QAr_ServC2.fieldbyname('DEVDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      Dm_Finc.QAr_ServC2.fieldbyname('DEVDATE').AsDateTime := Dm_Finc.QAr_ServC2.fieldbyname('DEVDATE').AsDateTime;
  end;
end;

procedure TFCredtpay2.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
//  if Uppercase(Name) = 'DATETHAI' then
//  begin
//    Val := SFMain.DateThai(Frparser.Calc(p1), Frparser.Calc(p2));
//  end;
end;

procedure TFCredtpay2.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PDEVNO' then
    Value := DBEdit17.Text;
  if UpperCase(VarName) = 'PBILLNO' then
    Value := cxDBTextEdit6.Text;
end;

procedure TFCredtpay2.actEditPrnExecute(Sender: TObject);
begin
  if cxRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSvBillNo.fr3', '2')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSVInvno.fr3', '2');
end;

procedure TFCredtpay2.PrnBtnClick(Sender: TObject);
begin
  if DBEdit17.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  if cxRadioGroup1.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSvBillNo.fr3', '1')
  else
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PrnSVInvno.fr3', '1');
end;

procedure TFCredtpay2.BillBtnClick(Sender: TObject);
begin
  if DBEdit17.Text = '' then
    sfmain.RaiseException('กรุณาอ้างอิงเลขเอกสาร..!');

  if DBRadioGroup1.ItemIndex = 1 then
    SFMain.RaiseException('เป็นการขายเชื่อ<br/>ให้รับชำระที่ระบบการเงิน-Service');
  Application.CreateForm(TFCashpay2, FCashpay2);
  FCashpay2.Xinvno := Dm_Finc.QAr_ServC2DEVNO.Asstring;
  FCashpay2.Showmodal;
end;

procedure TFCredtpay2.DBEdit5PropertiesChange(Sender: TObject);
begin
  Edit3.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBEdit5.text);
end;

procedure TFCredtpay2.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  Label1.Visible := Dm_Finc.QAr_servC2.FieldByName('CANCELID').AsString <> '';
end;

end.

