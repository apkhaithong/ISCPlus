unit Ucshsal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ExtCtrls, DBCtrls, Mask,
  ToolWin, ImgList, Dbkbd, DB, n2wMoney, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit, RzDbkbd,
  AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons, cxTextEdit, AdvGlowButton,
  AdvToolBar, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar, cxContainer,
  cxMaskEdit, AdvOfficeStatusBar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, RzSpnEdt, cxPC, AdvPanel, cxLookAndFeels, cxLookAndFeelPainters,
  dxBarBuiltInMenu, dxDateRanges, System.Actions, cxNavigator, Vcl.ActnList,
  dxStatusBar, cxGroupBox, cxRadioGroup, frxClass, frxExportXLSX, frxRich,
  frxDCtrl, frxTableObject, frxExportPDF, frxExportImage, frxGradient,
  frxFDComponents, frxBDEComponents, frxExportBaseDialog, frxExportCSV,
  frxCross, frxChBox, frxChart, frxBarcode;

type
  TShowDllProc = procedure(XSchemadll, Taxnodll: string);

  THandle = Integer;

  TFCshsal = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label17: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    DBEdit5: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    dbTaxDt: TcxDBTextEdit;
    JEdit1: TcxTextEdit;
    Edit1: TcxTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1OPTCODE: TcxGridDBColumn;
    cxGrid1DBTableView1OPTNAME: TcxGridDBColumn;
    cxGrid1DBTableView1UPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1NPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTVAT: TcxGridDBColumn;
    cxGrid1DBTableView1TOTPRC: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
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
    tbCrtTax: TAdvGlowButton;
    Label10: TLabel;
    DBRadioGroup1: TcxDBRadioGroup;
    Edit3: TcxTextEdit;
    dxStatusBar1: TdxStatusBar;
    DBEdit10: TcxDBTextEdit;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup3: TcxDBRadioGroup;
    DBEdit2: TcxDBTextEdit;
    DBTbmDt: TcxDBDateEdit;
    DBLocat: TcxDBButtonEdit;
    DBResv: TcxDBButtonEdit;
    DBStrno: TcxDBButtonEdit;
    DBCust: TcxDBButtonEdit;
    DBEdit16: TcxDBButtonEdit;
    DBEdit14: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBDateEdit1: TcxDBDateEdit;
    DBMemo1: TcxDBMemo;
    Label14: TLabel;
    cxTextEdit1: TcxTextEdit;
    ActionList1: TActionList;
    atEdit: TAction;
    PrnBtn: TAdvGlowButton;
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
    procedure DataSource1StateChange(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure DBCustChange(Sender: TObject);
    procedure DBEdit16Change(Sender: TObject);
    procedure tbCrtTaxClick(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBResvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBStrnoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBLocatPropertiesChange(Sender: TObject);
    procedure DBEdit2PropertiesChange(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure atEditExecute(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    S, SvTax: string;
  end;

var
  FCshsal: TFCshsal;
  ShowDllProc: TShowDllProc;

implementation

uses
  Dmsec, dm1, dmsal, USoftFirm, SrchStk, cshsal11, Srchset1, Srchsal1, functn01; //,optkitDlg,optkitDlgArCred;
{$R *.dfm}

procedure TFCshsal.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  Enqbtn.Visible := (DataSource1.State = Dsbrowse);
  tbCrtTax.Enabled := CloseBtn.Enabled;
  DBRadioGroup1.Properties.ReadOnly := not SavBtn.Visible;
  cxDBRadioGroup2.Properties.ReadOnly := not SavBtn.Visible;
  cxDBRadioGroup3.Properties.ReadOnly := not SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
      end;
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := True;
        TcxDBmemo(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxGridDBTableView) and (TcxGridDBTableView(Components[n]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[n]).OptionsData.Editing := False;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clBtnFace;
      end;
    end;
  end
  else if DataSource1.Dataset.State = Dsinsert then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.Readonly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
      end;
      if (Components[n] is TcxDBmemo) and (TcxDBmemo(Components[n]).Tag = 0) then
      begin
        TcxDBmemo(Components[n]).Properties.Readonly := False;
        TcxDBmemo(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxGridDBTableView) and (TcxGridDBTableView(Components[n]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[n]).OptionsData.Editing := True;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clWhite;
      end;
    end;
    DBEdit2.Properties.Readonly := Dm_sal.QDbConfig.FieldByName('R_CASHNO').Asstring = 'Y';
  end
  else
if (DataSource1.Dataset.State = DsEdit) then
  begin
    cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := True;
    cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := True;
    cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := True;
    DBEdit2.Properties.ReadOnly := True;
    DBEdit2.Style.Color := clBtnface;
    DBTbmDt.Properties.ReadOnly := True;
    DBCust.Enabled := True;
    DBCust.Style.Color := clWhite;
    DBEdit16.Enabled := True;
    DBEdit16.Style.Color := clWhite;
    DBEdit10.Properties.Readonly := True;
    DBRadioGroup1.Enabled := False;
    DBMemo1.Properties.ReadOnly := False;
    DBMemo1.Style.Color := clWhite;
  end; {else
    begin
        cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled  := True;
        cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled  := True;
        cxGrid1DBTableView1.NavigatorButtons.Append.Enabled  := True;
        DBEdit2.Enabled := True;
        DBEdit2.Style.Color := clWhite;
        DBTbmDt.Properties.ReadOnly := False;
        {DBCust.Enabled := False;
        DBCust.Style.Color   := clBtnface;
        DBEdit16.Enabled := False;
        DBEdit16.Style.Color   := clBtnface; }
        {DBEdit10.Properties.Readonly := False;
        DBRadioGroup1.Enabled := True;
    end;}

  if (DataSource1.DataSet.State = DsEdit) then
  begin
    if (Dm_sal.QCshSaleSMPAY.AsFloat > Dm_sal.QCshSaleTOTPRES.AsFloat) then
    begin
      cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := False;
      cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := False;
      cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := False;
      DBEdit14.Properties.ReadOnly := True;
      DBEdit14.Style.Color := clBtnface;
      DBEdit6.Properties.ReadOnly := True;
      DBEdit6.Style.Color := clBtnface;
      DBEdit9.Properties.ReadOnly := True;
      DBEdit9.Style.Color := clBtnface;
      DBEdit7.Properties.ReadOnly := True;
      DBEdit7.Style.Color := clBtnface;
      DBEdit8.Properties.ReadOnly := True;
      DBEdit8.Style.Color := clBtnface;
      DBDateEdit1.Properties.ReadOnly := True;
      DBDateEdit1.Style.Color := clWhite;
    end
    else
    begin
      cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := True;
      cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := True;
      cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := True;
      DBEdit14.Properties.ReadOnly := False;
      DBEdit14.Style.Color := clWhite;
      DBEdit6.Properties.ReadOnly := False;
      DBEdit6.Style.Color := clWhite;
      DBEdit9.Properties.ReadOnly := False;
      DBEdit9.Style.Color := clWhite;
      DBEdit7.Properties.ReadOnly := False;
      DBEdit7.Style.Color := clWhite;
      DBEdit8.Properties.ReadOnly := False;
      DBEdit8.Style.Color := clWhite;
      DBDateEdit1.Properties.ReadOnly := False;
      DBDateEdit1.Style.Color := clWhite;
    end;
  end;

  if (DataSource1.DataSet.State = DsInsert) then
  begin
    DBEdit2.Enabled := True;
    DBEdit2.Style.Color := clWhite;
    DBTbmDt.Properties.ReadOnly := False;
  end;
    //--Lock Branch---
  DBEdit2.Properties.Readonly := Dm_sal.QDbConfig.FieldByName('R_CASHNO').Asstring = 'Y';
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBTbmDt.Enabled := (SFMain.XChgdate = 'Y') and (DataSource1.Dataset.State = DsInsert);

  if DBEdit2.Properties.Readonly then
    DBEdit2.Style.Color := clBtnFace
  else
    DBEdit2.Style.Color := clWhite;
     //  cxGrid1.Enabled := (Dm_sal.QCshSale.FieldByName('SMPAY').AsFloat+Dm_sal.QCshSale.FieldByName('SMCHQ').AsFloat)>0;
  DBEdit12.Properties.Readonly := True;
  DBEdit12.Style.Color := clBtnFace;
  DBTaxDt.Properties.Readonly := True;
  DBTaxDt.Style.Color := clBtnFace;
//       tbCrtTax.Enabled := (Dm_Sal.QCshSaleTAXNO.AsString = '');
end;

procedure TFCshsal.InsBtnClick(Sender: TObject);
begin
  if not Dm_sal.QDbConfig.Active then
    Dm_sal.QDbConfig.Open;
  Dm_sal.XRunCont := Dm_sal.QDbConfig.FieldByName('R_CASHNO').Asstring;
  Dm01.Do_With_Query(actInsert, Dm_sal.QCshSale, 'SELECT * FROM ARCRED WHERE CONTNO=:EDIT1', ['']);
  Dm01.Do_With_Query(actOpen, Dm_Sal.QCshOpt, 'SELECT * FROM ARINOPT WHERE CONTNO =:XCONT And LOCAT =:XLocat', ['', '']);
  JEdit1.Text := '';
  DBStrno.SetFocus;
end;

procedure TFCshsal.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        if Dm_sal.QCshSalePOSTGL.AsString = 'Y' then
          SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');
        if (Dm_sal.QCshSaleSmpay.Asfloat + Dm_sal.QCshSaleSmchq.Asfloat) >
          (Dm_sal.QCshSaleNPAYRES.Asfloat + Dm_sal.QCshSaleVATPRES.Asfloat) then
          SFMain.RaiseException('มีการรับชำระเงินแล้ว');
        Dm_sal.QCshSale.Edit;
        Dm_sal.QCshSale.Fieldbyname('Flcancl').asstring := 'C';
        Dm_sal.QCshSale.Fieldbyname('Delid').asstring := SFMain.Xuser_Id;
        Dm_sal.QCshSale.Fieldbyname('deldt').asdatetime := Now;
        Dm_sal.QCshSale.Post;
        Dm_sal.QCshSale.Delete;

        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_2', 'DELETE', DBEdit2.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
      end;
  end;
  JEdit1.Text := '';
end;

procedure TFCshsal.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SFMain.XChgloc = 'Y' then
    Searchsale.XLocat := ''
  else
    Searchsale.XLocat := SFMain.Xlocat;
  if SearchSale.ShowModalArcred = Mrok then
  begin
    Dm01.Do_With_Query(actOpen, Dm_Sal.QCshSale, 'SELECT * FROM ARCRED WHERE CONTNO=:CONT', [SearchSale.Keyno]);
    Dm01.Do_With_Query(actOpen, Dm_Sal.QCshOpt, 'SELECT * FROM ARINOPT WHERE CONTNO=:CONT AND LOCAT=:XLOCAT', [Dm_Sal.QCshSale.FieldByName('Contno').Asstring,
      Dm_Sal.QCshSale.FieldByName('Locat').Asstring]);
  end;
end;

procedure TFCshsal.SavBtnClick(Sender: TObject);
var
  SvRes: Double;
begin
{   S:= Dm_sal.QCshSale.FieldByName('Contno').Asstring;
   If (Dm_sal.QCshSale.FieldByName('Taxno').Asstring = '') then
      Svtax := ''
   else
      Svtax := Dm_sal.QCshSale.FieldByName('Taxno').Asstring;  }
  if Dm_sal.QCshSale.state in [Dsinsert, Dsedit] then
    if Dm_Sal.QCshSaleKeyin.value > 0 then
    begin
      if Dm_Sal.QCshSaleResvno.value = '' then
        SvRes := 0
      else
        SvRes := Dm_Sal.QResv.FieldByName('Smpay').Asfloat + Dm_Sal.QResv.FieldByName('Smchq').Asfloat;
      if Dm_Sal.QCshSaleSmpay.value + Dm_Sal.QCshSaleSmchq.value = SvRes then
      begin
        Dm_Sal.QCshSale.Post;
      end
      else
      begin
        Dm_Sal.QCshSale.BeforePost := Nil;
        Dm_Sal.QCshSale.Post;
        Dm_Sal.QCshSale.BeforePost := Dm_Sal.QCshSale.BeforePost;
      end;
      if Datasource1.DataSet.State = dsInsert then
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_2', 'INSERT', DBEdit2.Text)
      else
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_2', 'EDIT', DBEdit2.Text);
      if DM_SEC.qrRecent.UpdatesPending then
        if (DM_SEC.qrRecent.ApplyUpdates = 0) then
          DM_SEC.qrRecent.CommitUpdates
        else
          raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
    end
    else
      SFMain.RaiseException('ยังไม่ป้อนราคารถและอุปกรณ์');
  {   If (Svtax = '') Then
  Begin
    Application.CreateForm(TFCshSal2,FCshSal2);
    FCshSal2.XContno := S;
    If Duplicate2 Then
       FCshSal2.Showmodal;
  end;  }
  //
  with Dm_sal.QCshSale do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM ARCRED WHERE CONTNO=:EDIT1');
    Params[0].Asstring := S;
    open;
  end;
  with Dm_Sal.QCshOpt do
  begin
    CLOSE;
    SQL.Clear;
    SQL.Add('SELECT * FROM ARINOPT WHERE CONTNO = :XCONT ' +
      'And LOCAT = :XLocat');
    Params[0].Asstring := S;
    Params[1].Asstring := Dm_sal.QCshSale.FieldByName('Locat').Asstring;
    Open;
  end;
end;

procedure TFCshsal.CancBtnClick(Sender: TObject);
begin
  Dm_sal.QCshSale.cancel;
  JEdit1.Text := '';
end;

procedure TFCshsal.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFCshsal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_sal.QCshSale.Close;
  Dm_Sal.QCshOpt.Close;
  Dm_Sal.QCshTax.Close;
  Dm_Sal.QResv.Close;
  Action := Cafree;
  FCshsal := nil;
end;

procedure TFCshsal.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F7 then
    EnqBtnClick(Sender);
  if Key = VK_F2 then
    SavBtnClick(Sender);
  if (Key = VK_F8) and (Delbtn.Visible = true) then
    DelBtnClick(Sender);
  if Key = VK_F5 then
    InsBtnClick(Sender);
end;

procedure TFCshsal.FormShow(Sender: TObject);
begin
  if not Dm_sal.QDbConfig.Active then
    Dm_sal.QDbConfig.Open;
  Dm01.Do_With_Query(actOpen, Dm_sal.QCshsale, 'SELECT * FROM ARCRED WHERE CONTNO=:EDIT1', ['']);
  Dm01.Do_With_Query(actOpen, Dm_Sal.QCshOpt, 'SELECT * FROM ARINOPT WHERE CONTNO =:XCONT And LOCAT =:XLocat', ['', '']);
end;

procedure TFCshsal.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//     SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//     VAL := SFMain.n2wBill.Text;
//  END;
end;

procedure TFCshsal.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'VFCONT' then
    Value := cxTextEdit1.Text;
end;

procedure TFCshsal.DBCustChange(Sender: TObject);
begin
  with Dm_sal.QCustRes do
  begin
    close;
    sql.clear;
    sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO ' +
      'FROM CUSTMAST WHERE CUSCOD = :VAR');
    Params[0].asstring := DBCust.Text;
    open;
    if not (bof and eof) then
    begin
      JEdit1.Text := FieldByName('SNAM').Asstring +
        Fieldbyname('NAME1').asstring + '  ' +
        Fieldbyname('NAME2').asstring;
    end;
  end;
end;

procedure TFCshsal.DBEdit16Change(Sender: TObject);
begin
  Edit1.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit16.Text);
end;

procedure TFCshsal.tbCrtTaxClick(Sender: TObject);
begin
  if Dm_sal.QCshSale.FieldByName('Contno').Asstring = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่สัญญาก่อนทำรายการ..!');

  S := Dm_sal.QCshSale.FieldByName('Contno').Asstring;
  Application.CreateForm(TFCshSal2, FCshSal2);
  FCshSal2.XContno := S;
  FCshSal2.Showmodal;
end;

procedure TFCshsal.DBMemo1Click(Sender: TObject);
begin
  FCshsal.KeyPreview := False;
end;

procedure TFCshsal.DBMemo1Exit(Sender: TObject);
begin
  FCshsal.KeyPreview := True;
end;

procedure TFCshsal.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSL', 'HDSL01_2');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFCshsal.cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if DataSource1.DataSet.State = DsInsert then
  begin
    Application.Createform(TSearchSale, SearchSale);
    SearchSale.XLocat := Dm_sal.QCshSale.FieldByName('Locat').Asstring;
    if SearchSale.ShowModalOptmas = Mrok then
    begin
      DM_Sal.QCshopt.Edit;
      DM_Sal.QCshopt.FieldByname('Tsale').Asstring := Dm_sal.QCshSale.Fieldbyname('Tsale').Asstring;
      DM_Sal.QCshopt.FieldByname('Locat').Asstring := Dm_sal.QCshSale.Fieldbyname('Locat').Asstring;
      DM_Sal.QCshopt.FieldByname('Contno').Asstring := Dm_sal.QCshSale.Fieldbyname('Contno').Asstring;
      DM_Sal.QCshopt.FieldByname('Optcode').Asstring := SearchSale.HQuery1.fieldbyname('Optcode').Asstring;
      DM_sal.QCshOpt.FieldByName('OPTNAME').AsString := SearchSale.HQuery1.fieldbyname('OPTNAME').AsString;
      DM_Sal.QCshopt.FieldByname('Uprice').AsFloat := SearchSale.HQuery1.fieldbyname('UNITPRC').AsFloat;
      DM_Sal.QCshopt.Fieldbyname('Qty').Asfloat := 1;
    end;
  end;
end;

procedure TFCshsal.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetLocat = Mrok then
    Dm_sal.QCshSale.Fieldbyname('LOCAT').Asstring := SearchSet.Keyno;
end;

procedure TFCshsal.DBResvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SFMain.XChgloc = 'Y' then
    Searchsale.XLocat := ''
  else
    Searchsale.XLocat := SFMain.Xlocat;
  SearchSale.ResvSale := ' AND SDATE IS NULL AND FLCANCLE <>''C'' ';
  //  SearchSale.XCanf <> 'C';
  if SearchSale.ShowModalResv = Mrok then
  begin
    with Dm_sal.QResv do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM ARRESV WHERE RESVNO=:XRESVNO AND LOCAT =:XLOC AND FLCANCLE<>''C'' ');
      Params[0].asstring := SearchSale.Keyno;
      Params[1].asstring := DBLocat.Text;
      OPEN;
    end;
    if not Dm_sal.QResv.Eof and Dm_sal.QResv.Bof then
    begin
      Dm_sal.QCshSale.Fieldbyname('Resvno').Asstring := SearchSale.Keyno;
      Dm_sal.QCshSale.Fieldbyname('Smpay').AsFloat := Dm_sal.QResv.Fieldbyname('Smpay').AsFloat;
      Dm_sal.QCshSale.Fieldbyname('Smchq').AsFloat := Dm_sal.QResv.Fieldbyname('Smchq').AsFloat;
      Dm_sal.QCshSale.Fieldbyname('SALCOD').Asstring := Dm_sal.QResv.Fieldbyname('SALCOD').AsString;
    end;
  end;
end;

procedure TFCshsal.DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalCusmast = Mrok then
  begin
    Dm_sal.QCshSale.Fieldbyname('CUSCOD').Asstring := SearchSet.Keyno;
    with Dm_sal.Query1 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST ' +
        'WHERE CUSCOD=:Var0');
      Params[0].Asstring := Dm_sal.QCshSale.Fieldbyname('CUSCOD').Asstring;
      open;
      if not (eof and BOF) then
      begin
        JEdit1.Text := FieldByName('SNAM').Asstring +
          FieldByName('NAME1').Asstring + '  ' +
          FieldByName('NAME2').Asstring;
      end
      else
      begin
        JEdit1.Text := '';
      end;
    end;
  end;
end;

procedure TFCshsal.DBEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetOfficer = Mrok then
    Dm_sal.QCshSale.Fieldbyname('SALCOD').Asstring := SearchSet.Keyno;
end;

procedure TFCshsal.DBStrnoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  SearchSale.Xflg := 'D';
  SearchSale.XLocat := Dm_sal.QCshSale.Fieldbyname('Locat').Asstring;
  if SearchSale.ShowModalStrno = Mrok then
    if (Datasource1.State = DsInsert) then
      Dm_sal.QCshSale.Fieldbyname('Strno').Asstring := SearchSale.Keyno;
end;

procedure TFCshsal.DBLocatPropertiesChange(Sender: TObject);
begin
  Edit3.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBLocat.Text);
end;

procedure TFCshsal.DBEdit2PropertiesChange(Sender: TObject);
begin
  with Dm_sal.Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from taxtran where tsale = ''R'' and contno =:edit1');
    params[0].AsString := DBEdit2.Text;
    open;

    cxTextEdit1.Text := Dm_sal.Query1.fieldbyname('TAXNO').AsString;
  end;
end;

procedure TFCshsal.PrnBtnClick(Sender: TObject);
begin
  if cxTextEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบเลขอ้างอิงใบลดหนี้เงินจอง..!');
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnTaxRd.fr3','1'); {1 = Preview Report}
end;

procedure TFCshsal.atEditExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnTaxRd.fr3','2'); {1 = Preview Report}
end;

procedure TFCshsal.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  PrnBtn.Visible := cxTextEdit1.Text <> '';
end;

end.

