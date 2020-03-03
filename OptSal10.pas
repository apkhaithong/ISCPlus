unit OptSal10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask, DBCtrls, Grids, DBGrids, Db,
  Dbkbd, ToolWin, ImgList, ActnList, n2wMoney, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit,
  RzDbkbd, AdvGlowButton, AdvToolBar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, AdvOfficeStatusBar, AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons,
  cxTextEdit, cxDBEdit, cxDropDownEdit, cxCalendar, cxContainer, cxMaskEdit,
  AdvPanel, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, dxDateRanges,
  System.Actions, dxStatusBar, cxGroupBox, cxRadioGroup, frxExportXLSX, frxRich,
  frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TShowDllProc = procedure(XSchemadll, Taxnodll: string);

  THandle = Integer;

  TFOptSal1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    FldEdit4: TcxDBTextEdit;
    FldEdit5: TcxDBTextEdit;
    Panel1: TPanel;
    Label25: TLabel;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1OPTCODE: TcxGridDBColumn;
    cxGrid1DBTableView1UPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1NPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTVAT: TcxGridDBColumn;
    cxGrid1DBTableView1TOTPRC: TcxGridDBColumn;
    cxGrid1DBTableView1OPTCST: TcxGridDBColumn;
    cxGrid1DBTableView1OPTCVT: TcxGridDBColumn;
    cxGrid1DBTableView1OPTCTOT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    Action1: TAction;
    DBRadioGroup1: TcxDBRadioGroup;
    Label4: TLabel;
    Label10: TLabel;
    Label18: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
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
    FldEdit10: TcxDBTextEdit;
    DBTbmDt: TcxDBDateEdit;
    DBLocat: TcxDBButtonEdit;
    DBEdit16: TcxDBButtonEdit;
    DBCust: TcxDBButtonEdit;
    FldEdit3: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    wwDBDTDDate: TcxDBDateEdit;
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
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure DBCustChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbPrintClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure DBEdit16PropertiesChange(Sender: TObject);
    procedure DBLocatPropertiesChange(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    S, SvTax: string;
  end;

var
  FOptSal1: TFOptSal1;

implementation

uses
  Dmsec, Dm1, Dmsal, Srchset1, Srchsal1, Functn01, USoftfirm, unfrPreview;


{$R *.DFM}

procedure TFOptSal1.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (FldEdit10.Text <> '');
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  DBRadioGroup1.Properties.ReadOnly := not SavBtn.Visible;
  tbPrint.Visible := (DataSource1.Dataset.State = DsBrowse) and (FldEdit10.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;

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
      if (Components[n] is TDBGrid) and (TDBGrid(Components[n]).Tag = 0) then
      begin
        TDBGrid(Components[n]).Enabled := False;
        TDBGrid(Components[n]).Color := clBtnFace;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 1) then
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
      if (Components[n] is TDBGrid) and (TDBGrid(Components[n]).Tag = 0) then
      begin
        TDBGrid(Components[n]).Enabled := True;
        TDBGrid(Components[n]).Color := clWhite;
      end;
      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.Readonly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;
      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 1) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clWhite;
      end;
    end;
  end
  else if (DataSource1.Dataset.State = DsEdit) and (Dm_sal.QOptSale.Fieldbyname('Taxno').Asstring <> '') then
  begin
      //
    DBRadioGroup1.Properties.Readonly := True;
  end;

    //--Lock Branch---
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBTbmDt.Enabled := (SFMain.XChgDate = 'Y') and (DataSource1.Dataset.State = DsInsert);
  FldEdit10.Properties.Readonly := Dm_sal.QDbConfig.FieldByName('R_CASHNO').Asstring = 'Y';
  if FldEdit10.Properties.Readonly then
    FldEdit10.Style.Color := clBtnFace
  else
    FldEdit10.Style.Color := clWhite;
end;

procedure TFOptSal1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSL', 'HDSL01_5');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFOptSal1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_sal.QOptSale.Close;
  Dm_sal.QOptSalT.Close;
  Dm_sal.QCshTax.Close;
  Action := Cafree;
  FOptSal1 := Nil;
end;

procedure TFOptSal1.InsBtnClick(Sender: TObject);
begin
  if Dm_sal.QDbConfig.Active then
  begin
    Dm_sal.XRunCont := Dm_sal.QDbConfig.FieldByName('R_OPTCNO').Asstring;
    Dm_sal.XRunTax := Dm_sal.QDbConfig.FieldByName('R_TXOPT').Asstring;
  end;
  Dm01.Do_With_Query(actInsert, Dm_sal.QOptSale, 'SELECT * FROM AROPTMST WHERE CONTNO=:EDIT1', ['']);
  Dm01.Do_With_Query(actOpen, Dm_Sal.QOptSalT, 'SELECT * FROM ARINOPT WHERE CONTNO = :XCONT', ['']);
  DBCust.Setfocus;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
end;

procedure TFOptSal1.DelBtnClick(Sender: TObject);
begin
  if FldEdit10.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        if (Dm_Sal.QOptSaleSmpay.Asfloat + Dm_Sal.QOptSaleSmchq.Asfloat) > 0 then
          SFMain.RaiseException('มีการรับชำระเงินแล้ว');

        Dm_Sal.QOptSale.Edit;
        Dm_Sal.QOptSale.Fieldbyname('Delid').asstring := SFMain.Xuser_Id;
        Dm_Sal.QOptSale.Fieldbyname('deldt').asdatetime := Now;
        Dm_Sal.QOptSale.Post;
        Dm_sal.QOptSale.Delete;
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_5', 'DELETE', FldEdit10.Text);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
      end;
  end;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
end;

procedure TFOptSal1.CancBtnClick(Sender: TObject);
begin
  Dm_sal.QOptSale.cancel;
end;

procedure TFOptSal1.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalArOptn = Mrok then
  begin
    Dm01.Do_With_Query(actOpen, Dm_Sal.QOptSale, 'SELECT * FROM AROPTMST WHERE CONTNO =:CONT', [SearchSale.Keyno]);
    Dm01.Do_With_Query(actOpen, Dm_Sal.QOptSalT, 'SELECT * FROM ARINOPT WHERE CONTNO =:CONT', [Dm_Sal.QOptSale.FieldByName('Contno').Asstring]);
  end;
end;

procedure TFOptSal1.SavBtnClick(Sender: TObject);
begin
  S := Dm_sal.QOptSale.FieldByName('Contno').Asstring;
  if (Dm_sal.QOptSale.FieldByName('Taxno').Asstring = '') then
    Svtax := ''
  else
    Svtax := Dm_sal.QOptSale.FieldByName('Taxno').Asstring;

  if Dm_sal.QOptSale.state in [Dsinsert, Dsedit] then
    if (Dm_Sal.QOptSaleSmpay.value + Dm_Sal.QOptSaleSmchq.value) = 0 then
    begin
      Dm_Sal.QOptSale.Post;
    end
    else
      SFMain.RaiseException('ชำระเงินแล้วไม่สามารถแก้ไขสัญญาได้');

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_5', 'INSERT', FldEdit10.Text)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_5', 'EDIT', FldEdit10.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

   {If (Svtax = '') Then
   Begin
      Application.CreateForm(TFOptSal2,FOptSal2);
      FOptSal2.XContno := S;
      If Duplicate2 Then
         FOptSal2.Showmodal;
   end; }

  with Dm_sal.QOptSale do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM AROPTMST WHERE CONTNO=:EDIT1');
    Params[0].Asstring := S;
    open;
  end;
  Dm01.Do_With_Query(actOpen, Dm_Sal.QOptSalT, 'SELECT * FROM ARINOPT WHERE CONTNO = :XCONT', [Dm_sal.QOptSale.FieldByName('ContNo').Asstring]);
end;

procedure TFOptSal1.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFOptSal1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFOptSal1.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if uppercase(NAME)='BAHTTEXT' THEN
//  begin
//     SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//     VAL := SFMain.n2wBill.Text;
//  end;
end;

procedure TFOptSal1.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if (UPperCase(VarName) = 'VCONTNO') then
    Value := FOptSal1.FldEdit10.Text;
end;

procedure TFOptSal1.DBCustChange(Sender: TObject);
begin
  with Dm_sal.QCustRes do
  begin
    close;
    sql.clear;
    sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO ' +
      'FROM CUSTMAST WHERE CUSCOD = :VAR');
    Params[0].asstring := DBCust.Text;
    OPEN;
    if not (bof and eof) then
    begin
      Edit1.Text := FieldByName('Snam').Asstring;
      Edit2.Text := FieldByName('name1').Asstring;
      Edit3.Text := FieldByName('name2').Asstring;
    end;
  end;
end;

procedure TFOptSal1.FormShow(Sender: TObject);
begin
  if not Dm_sal.QDbConfig.Active then
    Dm_sal.QDbConfig.Open;
  Dm01.Do_With_Query(actOpen, Dm_Sal.QOptsale, 'SELECT * FROM AROPTMST WHERE CONTNO=:EDIT1', ['']);
end;

procedure TFOptSal1.cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (DataSource1.DataSet.State = DsInsert) then
  begin
    Application.Createform(TSearchSale, SearchSale);
    SearchSale.XLocat := Dm_sal.QOptSale.FieldByName('Locat').Asstring;
    if SearchSale.ShowModalOptmas = Mrok then
    begin
      DM_Sal.QOptSalT.Edit;
      DM_Sal.QOptSalT.FieldByname('Optcode').Asstring := SearchSale.HQuery1.fieldbyname('OPTCODE').Asstring;
    end;
  end;
end;

procedure TFOptSal1.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetLocat = Mrok then
    Dm_sal.QOptSale.Fieldbyname('LOCAT').Asstring := SearchSet.Keyno;
end;

procedure TFOptSal1.DBEdit16PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetOfficer = Mrok then
    Dm_sal.QOptSale.Fieldbyname('SALCOD').Asstring := SearchSet.Keyno;
end;

procedure TFOptSal1.DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalCuscod = Mrok then
  begin
    Dm_sal.QOptSale.Fieldbyname('CUSCOD').Asstring := SearchSale.Keyno;
    with Dm_sal.Query1 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2 FROM CUSTMAST ' +
        'WHERE CUSCOD=:Var0');
      Params[0].Asstring := Dm_sal.QOptSale.Fieldbyname('CUSCOD').Asstring;
      open;
      if not (eof and BOF) then
      begin
        Edit1.Text := FieldByName('SNAM').Asstring;
        Edit2.Text := FieldByName('NAME1').Asstring;
        Edit3.Text := FieldByName('NAME2').Asstring;
      end
      else
      begin
        Edit1.Text := '';
        Edit2.Text := '';
        Edit3.Text := '';
      end;
    end;
  end;
end;

procedure TFOptSal1.tbPrintClick(Sender: TObject);
begin
  if FldEdit10.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_ArOptInv.fr3','1');
end;

procedure TFOptSal1.Action1Execute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_ArOptInv.fr3','2');
end;

procedure TFOptSal1.DBEdit16PropertiesChange(Sender: TObject);
begin
  cxTextEdit1.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DBEdit16.Text);
end;

procedure TFOptSal1.DBLocatPropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBLocat.Text);
end;

end.

