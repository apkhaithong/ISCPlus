unit uCrtTaxbuy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dbkbd, ComCtrls, ToolWin, ImgList, ActnList, Buttons, StdCtrls, Mask,
  DBCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxButtonEdit, RzDbkbd, AdvGlowButton, AdvToolBar,
  cxDBEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  AdvOfficeStatusBar, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxCalendar, ExtCtrls, cxPC, AdvPanel, cxLookAndFeels, cxLookAndFeelPainters,
  dxBarBuiltInMenu, dxDateRanges, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, BusinessSkinForm,
  dxStatusBar;

type
  TfrCrtTaxBuy = class(TForm)
    AdvPanel1: TAdvPanel;
    DBEdit1: TcxDBButtonEdit;
    DBEdit3: TcxDBButtonEdit;
    DBEdit4: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1STRNO: TcxGridDBColumn;
    cxGrid1DBTableView1NETCOST: TcxGridDBColumn;
    cxGrid1DBTableView1CRVAT: TcxGridDBColumn;
    cxGrid1DBTableView1TOTCOST: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    ActionList1: TActionList;
    acAdd: TAction;
    acDel: TAction;
    acQuery: TAction;
    acSave: TAction;
    AcCan: TAction;
    acClose: TAction;
    AcPrn: TAction;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    qrTaxbuy: TFDQuery;
    qrTaxbuyTAXNO: TStringField;
    qrTaxbuyTAXDATE: TDateField;
    qrTaxbuyTAXREFNO: TStringField;
    qrTaxbuyDESC1: TStringField;
    qrTaxbuyCUSCOD: TStringField;
    qrTaxbuyVATRT: TFloatField;
    qrTaxbuyAMOUNT: TFloatField;
    qrTaxbuyREDU: TFloatField;
    qrTaxbuyBALANCE: TFloatField;
    qrTaxbuyVAT: TFloatField;
    qrTaxbuyTOTTAX: TFloatField;
    qrTaxbuyFLAG: TStringField;
    qrTaxbuyCANCEL: TStringField;
    qrTaxbuyUSERID: TStringField;
    qrTaxbuyTIME1: TDateTimeField;
    qrTaxbuyCANCELID: TStringField;
    qrTaxbuyCANDAT: TDateTimeField;
    qrTaxbuyPOSTGLDT: TDateTimeField;
    qrTaxbuyLOCAT: TStringField;
    qrTaxbuyRECVDT: TDateField;
    qrTaxbuyYEAR1: TStringField;
    qrTaxbuyTAXTYP: TStringField;
    qrTaxbuySTRNO: TStringField;
    qrTaxbuyKANG: TFloatField;
    qrTaxbuytrn: TFDQuery;
    qrTaxbuytrnLOCAT: TStringField;
    qrTaxbuytrnTAXNO: TStringField;
    qrTaxbuytrnTAXDATE: TDateField;
    qrTaxbuytrnSTRNO: TStringField;
    qrTaxbuytrnNETCOST: TFloatField;
    qrTaxbuytrnCRVAT: TFloatField;
    qrTaxbuytrnTOTCOST: TFloatField;
    Query1: TFDQuery;
    DBkbd1: TRzDBkbd;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBDateEdit1: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBDtTax: TcxDBDateEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    Bevel1: TBevel;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    InsBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure qrTaxbuytrnAfterPost(DataSet: TDataSet);
    procedure CancBtnClick(Sender: TObject);
    procedure qrTaxbuytrnNewRecord(DataSet: TDataSet);
    procedure DBEdit1Change(Sender: TObject);
    procedure qrTaxbuyNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure qrTaxbuytrnAfterDelete(DataSet: TDataSet);
    procedure qrTaxbuyAfterPost(DataSet: TDataSet);
    procedure qrTaxbuyAfterDelete(DataSet: TDataSet);
    procedure qrTaxbuytrnBeforePost(DataSet: TDataSet);
    procedure qrTaxbuyBeforePost(DataSet: TDataSet);
    procedure EnqBtnClick(Sender: TObject);
    procedure qrTaxbuytrnSTRNOValidate(Sender: TField);
    procedure DBEdit4Change(Sender: TObject);
    procedure cxGrid1DBTableView1STRNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure qrTaxbuyTAXNOValidate(Sender: TField);
    procedure qrTaxbuyTAXREFNOValidate(Sender: TField);
  private
    { Private declarations }
  public
    xdoc, Ostrno: string;
    { Public declarations }
  end;

var
  frCrtTaxBuy: TfrCrtTaxBuy;

implementation

uses
  USoftFirm, Srchset1, dm1, Srchstk, Dmstock, Functn01, Dmsec;

{$R *.dfm}

procedure TfrCrtTaxBuy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frCrtTaxBuy := nil;
  Action := Cafree;
end;

procedure TfrCrtTaxBuy.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrCrtTaxBuy.InsBtnClick(Sender: TObject);
begin
  with qrTaxbuy do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM TAXBUY WHERE TAXNO=:0');
    params[0].AsString := '''';
    Open;
    insert;
  end;
  with qrTaxbuytrn do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM TAXBUYTRN WHERE TAXNO=:0');
    params[0].AsString := '''';
    Open;
  end;
   //DBEdit3.SetFocus;
end;

procedure TfrCrtTaxBuy.qrTaxbuytrnAfterPost(DataSet: TDataSet);
var
  tvat, tnet, ttot: real;
begin
  qrTaxbuytrn.DisableControls;
  tvat := 0;
  tnet := 0;
  ttot := 0;
  qrTaxbuytrn.First;
  while not (qrTaxbuytrn.Eof) do
  begin
    tnet := tnet + qrTaxbuytrnNETCOST.AsFloat;
    tvat := tvat + qrTaxbuytrnCRVAT.AsFloat;
    ttot := ttot + qrTaxbuytrnTOTCOST.AsFloat;
    qrTaxbuytrn.Next;
  end;
  if qrTaxbuy.State = DsBrowse then
    qrTaxbuy.Edit;
  qrTaxbuyBALANCE.AsFloat := tnet;
  qrTaxbuyVAT.AsFloat := tvat;
  qrTaxbuyTOTTAX.AsFloat := ttot;
  qrTaxbuytrn.EnableControls;
end;

procedure TfrCrtTaxBuy.CancBtnClick(Sender: TObject);
begin
  qrTaxbuy.Cancel;
  qrTaxbuytrn.Close;
end;

procedure TfrCrtTaxBuy.qrTaxbuytrnNewRecord(DataSet: TDataSet);
begin
  qrTaxbuytrnLOCAT.AsString := qrTaxbuyLOCAT.AsString;
  qrTaxbuytrnTAXNO.AsString := qrTaxbuyTAXNO.AsString;
  qrTaxbuytrnTAXDATE.AsDateTime := qrTaxbuyTAXDATE.AsDateTime;
end;

procedure TfrCrtTaxBuy.DBEdit1Change(Sender: TObject);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD=:0');
    params[0].AsString := qrTaxbuyLOCAT.AsString;
    open;
    edit2.Text := fieldbyname('LOCATNM').AsString;
  end;
end;

procedure TfrCrtTaxBuy.qrTaxbuyNewRecord(DataSet: TDataSet);
begin
  qrTaxbuyLOCAT.AsString := SFMain.Xlocat;
  qrTaxbuyTAXTYP.AsString := 'B';
  qrTaxbuyTIME1.AsDateTime := Now;
  qrTaxbuyTAXDATE.AsDateTime := SFMain.CR_DATE;
  qrTaxbuyUSERID.AsString := SFMain.Xuser_ID;
  qrTAXBUYVatRT.AsFloat := dm01.QCondpay.fieldbyname('VAT').AsFloat;
end;

procedure TfrCrtTaxBuy.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDTAX', 'HDTAX01');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TfrCrtTaxBuy.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EnqBtn.Visible := InsBtn.Visible;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  DBDtTax.Enabled := SFMain.XChgDate = 'Y';
  cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := True;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
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
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Properties.Readonly := False;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
      end;
    end;
  end;
end;

procedure TfrCrtTaxBuy.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX01', 'DELETE', qrTaxbuyTAXNO.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        qrTaxBuy.Delete;
      end;
  end;
end;

procedure TfrCrtTaxBuy.SavBtnClick(Sender: TObject);
begin
  if dbedit4.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึ่เจ้าหนี้...!');
  if dbedit2.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึ่เลขที่ใบกำกับ...!');

  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX01', 'INSERT', qrTaxbuyTAXNO.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDTAX01', 'EDIT', qrTaxbuyTAXNO.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  qrTaxbuy.Post;
end;

procedure TfrCrtTaxBuy.qrTaxbuytrnAfterDelete(DataSet: TDataSet);
var
  tvat, tnet, ttot: real;
begin
  qrTaxbuytrn.DisableControls;
  Ostrno := '';
  tvat := 0;
  tnet := 0;
  ttot := 0;
  qrTaxbuytrn.First;
  while not (qrTaxbuytrn.Eof) do
  begin
    tnet := tnet + qrTaxbuytrnNETCOST.AsFloat;
    tvat := tvat + qrTaxbuytrnCRVAT.AsFloat;
    ttot := ttot + qrTaxbuytrnTOTCOST.AsFloat;
    qrTaxbuytrn.Next;
  end;
  if qrTaxbuy.State = DsBrowse then
    qrTaxbuy.Edit;
  qrTaxbuyBALANCE.AsFloat := tnet;
  qrTaxbuyVAT.AsFloat := tvat;
  qrTaxbuyTOTTAX.AsFloat := ttot;
  qrTaxbuytrn.EnableControls;
end;

procedure TfrCrtTaxBuy.qrTaxbuyAfterPost(DataSet: TDataSet);
begin
  Xdoc := qrTaxbuy.FieldByName('TAXNO').AsString;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrTaxbuy.Active then
      if (qrTaxbuy.ApplyUpdates = 0) then
        qrTaxbuy.CommitUpdates
      else
        raise Exception.Create(qrTaxbuy.RowError.Message);
    if qrTaxbuytrn.Active then
      if (qrTaxbuytrn.ApplyUpdates = 0) then
        qrTaxbuytrn.CommitUpdates
      else
        raise Exception.Create(qrTaxbuytrn.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.Rollback;
    raise;
  end;
  //
  with qrTaxbuy do
  begin
    close;
    sql.clear;
    sql.Add('SELECT * FROM TAXBUY WHERE TAXNO =:XID');
    params[0].AsString := xdoc;
    OPEN;
  end;
  with qrTaxbuytrn do
  begin
    close;
    sql.clear;
    sql.Add('SELECT * FROM TAXBUYTRN WHERE TAXNO=:XID');
    params[0].AsString := xdoc;
    OPEN;
  end;
end;

procedure TfrCrtTaxBuy.qrTaxbuyAfterDelete(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrTaxbuy.Active then
      if (qrTaxbuy.ApplyUpdates = 0) then
        qrTaxbuy.CommitUpdates
      else
        raise Exception.Create(qrTaxbuy.RowError.Message);
    if qrTaxbuytrn.Active then
      if (qrTaxbuytrn.ApplyUpdates = 0) then
        qrTaxbuytrn.CommitUpdates
      else
        raise Exception.Create(qrTaxbuytrn.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.Rollback;
    raise;
  end;
end;

procedure TfrCrtTaxBuy.qrTaxbuytrnBeforePost(DataSet: TDataSet);
begin
  Ostrno := qrTaxbuytrnSTRNO.AsString;
end;

procedure TfrCrtTaxBuy.qrTaxbuyBeforePost(DataSet: TDataSet);
begin
  qrTaxbuytrn.First;
  qrTaxbuyKANG.AsFloat := qrTaxbuyTOTTAX.AsFloat;
end;

procedure TfrCrtTaxBuy.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchStk, SearchStk);
  if SearchStk.ShowModaltaxbuy = MrOK then
  begin
    with qrTaxbuy do
    begin
      close;
      sql.clear;
      sql.Add('SELECT * FROM TAXBUY WHERE TAXNO =:XID');
      params[0].AsString := Searchstk.Keyno;
      OPEN;
    end;
    with qrTaxbuytrn do
    begin
      close;
      sql.clear;
      sql.Add('SELECT * FROM TAXBUYTRN WHERE TAXNO=:XID');
      params[0].AsString := Searchstk.Keyno;
      OPEN;
    end;
  end;
end;

procedure TfrCrtTaxBuy.qrTaxbuytrnSTRNOValidate(Sender: TField);
begin
  DM01.FindNoExist('INVTRAN', 'STRNO', qrTaxbuytrnSTRNO.AsString);
end;

procedure TfrCrtTaxBuy.DBEdit4Change(Sender: TObject);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM APMAST WHERE APCODE =:0 ');
    params[0].AsString := qrTaxbuy.fieldbyname('CUSCOD').AsString;
    open;
    edit1.Text := fieldbyname('APNAME').AsString;
  end;
end;

procedure TfrCrtTaxBuy.cxGrid1DBTableView1STRNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (DataSource1.DataSet.State = DsInsert) then
  begin
    Application.Createform(TSearchStk, SearchStk);
    SearchStk.Xlocat := qrTaxbuyLOCAT.AsString;
    SearchStk.Xrecvno := qrTaxbuyTAXREFNO.AsString;
    if qrTaxbuyTaxno.AsString = '' then
    begin
      SFMain.RaiseException('ยังไม่ใส่เลขที่ใบกำกับภาษี');
      dbedit2.SetFocus;
    end
    else
    begin
      if Searchstk.ShowModalInvtax = mrok then
      begin
        if qrTaxbuytrn.State = Dsbrowse then
          qrTaxbuytrn.Edit;
        qrTaxbuytrnSTRNO.AsString := Searchstk.Keyno;
        with query1 do
        begin
          close;
          sql.Clear;
          sql.Add('SELECT NETCOST,CRVAT,TOTCOST FROM INVTRAN WHERE STRNO=:0');
          params[0].AsString := qrTaxbuytrnSTRNO.AsString;
          open;
          qrTaxbuytrnNETCOST.AsFloat := fieldbyname('NETCOST').AsFloat;
          qrTaxbuytrnCRVAT.AsFloat := fieldbyname('CRVAT').AsFloat;
          qrTaxbuytrnTOTCOST.AsFloat := fieldbyname('TOTCOST').AsFloat;
        end;
      end;
    end;
  end;
end;

procedure TfrCrtTaxBuy.DBEdit3Change(Sender: TObject);
begin
  with query1 do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM APMAST WHERE APCODE=:0');
    params[0].AsString := DBEdit4.Text;
    open;
    Edit1.Text := Query1.fieldbyname('APNAME').AsString;
  end;
end;

procedure TfrCrtTaxBuy.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetlocat = Mrok then
    qrTaxbuyLOCAT.AsString := Searchset.Keyno;
end;

procedure TfrCrtTaxBuy.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  FormatSettings.shortdateformat := 'dd/mm/yyyy';
  Application.Createform(TSearchStk, SearchStk);
  if SearchStk.ShowModalRecstk = Mrok then
  begin
    qrTaxbuyTAXREFNO.AsString := Searchstk.Keyno;
    qrTaxbuyRECVDT.AsDateTime := Searchstk.HQuery1.fieldbyname('RECVDT').AsDateTime;
    qrTaxbuyCUSCOD.AsString := Searchstk.HQuery1.fieldbyname('APCODE').AsString;
    with query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT APNAME FROM APMAST WHERE APCODE=:0');
      params[0].AsString := Searchstk.HQuery1.fieldbyname('APCODE').AsString;
      open;
      Edit1.Text := Query1.fieldbyname('APNAME').AsString;
    end;
  end;
end;

procedure TfrCrtTaxBuy.DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchset, Searchset);
  if Searchset.ShowModalSetAP = Mrok then
  begin
    qrTaxbuyCUSCOD.asstring := Searchset.Keyno;
    Edit1.Text := Searchset.HQuery1.Fieldbyname('Apname').asstring;
  end;
end;

procedure TfrCrtTaxBuy.FormShow(Sender: TObject);
begin
  if not dm01.QCondpay.Active then
    dm01.QCondpay.Open;
  with qrTaxbuy do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM TAXBUY WHERE TAXNO=:0');
    params[0].AsString := '''';
    Open;
  end;
  with qrTaxbuytrn do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM TAXBUYTRN WHERE TAXNO=:0');
    params[0].AsString := '''';
    Open;
  end;
end;

procedure TfrCrtTaxBuy.qrTaxbuyTAXNOValidate(Sender: TField);
begin
  sfmain.Fieldexist('TAXBUY', 'TAXNO', qrTaxbuyTAXNO.AsString);
end;

procedure TfrCrtTaxBuy.qrTaxbuyTAXREFNOValidate(Sender: TField);
begin
  sfmain.Fieldexist('TAXBUY', 'TAXREFNO', qrTaxbuyTAXREFNO.AsString);
end;

end.

