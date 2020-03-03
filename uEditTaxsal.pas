unit uEditTaxsal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, cxLookAndFeelPainters, Dbkbd,
  cxGroupBox, cxRadioGroup, cxDBEdit, AdvGlowButton, AdvToolBar, AdvPanel,
  cxMaskEdit, cxButtonEdit, cxTextEdit, cxMemo, cxControls, cxContainer, cxEdit,
  RzLabel, RzDBLbl, cxCurrencyEdit, cxDropDownEdit, cxCalendar, cxGraphics,
  cxLookAndFeels, BusinessSkinForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfEditTaxsal = class(TForm)
    AdvPanel1: TAdvPanel;
    cxGroupBox1: TcxGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    RzLabel1: TRzLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit1: TcxTextEdit;
    DBCust: TcxDBButtonEdit;
    DBEdit8: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    DBStrno: TcxDBButtonEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    QTypemst: TFDQuery;
    QTypemstLOCAT: TStringField;
    QTypemstTAXNO: TStringField;
    QTypemstTAXDT: TDateField;
    QTypemstTSALE: TStringField;
    QTypemstCONTNO: TStringField;
    QTypemstCUSCOD: TStringField;
    QTypemstSNAM: TStringField;
    QTypemstNAME1: TStringField;
    QTypemstNAME2: TStringField;
    QTypemstSTRNO: TStringField;
    QTypemstREFNO: TStringField;
    QTypemstREFDT: TDateField;
    QTypemstVATRT: TFloatField;
    QTypemstNETAMT: TFloatField;
    QTypemstVATAMT: TFloatField;
    QTypemstTOTAMT: TFloatField;
    QTypemstDESCP: TStringField;
    QTypemstFPAR: TStringField;
    QTypemstFPAY: TFloatField;
    QTypemstLPAR: TStringField;
    QTypemstLPAY: TFloatField;
    QTypemstINPDT: TDateField;
    QTypemstFLAG: TStringField;
    QTypemstCANDT: TDateField;
    QTypemstTAXTYP: TStringField;
    QTypemstTAXFLG: TStringField;
    QTypemstUSERID: TStringField;
    QTypemstFLCANCL: TStringField;
    QTypemstTMBILL: TStringField;
    QTypemstRTNSTK: TStringField;
    QTypemstFINCOD: TStringField;
    QTypemstDOSTAX: TStringField;
    QTypemstPAYFOR: TStringField;
    QTypemstRESONCD: TStringField;
    QTypemstPOSTGL: TStringField;
    qrLocat: TFDQuery;
    Query1: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure QTypemstAfterDelete(DataSet: TDataSet);
    procedure QTypemstAfterPost(DataSet: TDataSet);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBCustPropertiesChange(Sender: TObject);
    procedure DBStrnoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure QTypemstCUSCODChange(Sender: TField);
    procedure QTypemstBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditTaxsal: TfEditTaxsal;

implementation

uses
  dm1, USoftFirm, Dmsec, Srchset1, Srchsal1, functn01, DmSal;

{$R *.DFM}

procedure TfEditTaxsal.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalTaxtran = Mrok then
  begin
    with QTYPEMST do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TAXTRAN WHERE TAXNO=:0 ');
      Params[0].Asstring := SearchSale.KeyNo;
      Open;
    end;
  end;
end;

procedure TfEditTaxsal.SaveBtnClick(Sender: TObject);
begin
  if DBCust.Text = '' then
    SFMain.RaiseException('ไม่พบรหัสลูกค้า..!');
  if DBStrno.Text = '' then
    SFMain.RaiseException('ไม่พบเลขตัวถัง..!');
  if DBEdit8.Text = '' then
    SFMain.RaiseException('ไม่พบเลขที่สัญญา..!');
  QTypemst.Post;
end;

procedure TfEditTaxsal.DelBtnClick(Sender: TObject);
begin
  if cxDBTextEdit2.Text = '' then
    SFMain.RaiseException('ไม่พบเลขที่อ้างอิง..!');
  if DBCust.Text = '' then
    SFMain.RaiseException('ไม่พบรหัสลูกค้า..!');
  if DBStrno.Text = '' then
    SFMain.RaiseException('ไม่พบเลขตัวถัง..!');
  if DBEdit8.Text = '' then
    SFMain.RaiseException('ไม่พบเลขที่สัญญา..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        if cxDBRadioGroup1.ItemIndex = 1 then
        begin
          if QTypemst.FieldByName('FLCANCL').AsString = 'C' then
            SFMain.RaiseException('เลขเอกสาร' + ' ' + cxDBTextEdit2.text + ' ' + 'มีการยกเลิกอยู่แล้ว..!');

          with Query1 do
          begin
            Close;
            Sql.Clear;
            Sql.Add('UPDATE TAXTRAN SET FLCANCL =:X1,CANDT=:X2,USERID=:X3 WHERE TAXNO =:X4');
            Params[0].AsString := 'C';
            Params[1].AsDateTime := Now;
            Params[2].AsString := SFMain.Xuser_ID;
            Params[3].AsString := cxDBTextEdit2.text;
            Execsql;
          end;
        end
        else
        begin
          with Query1 do
          begin
            Close;
            Sql.Clear;
            Sql.Add('UPDATE TAXTRAN SET FLCANCL ='''',CANDT=null,USERID='' WHERE TAXNO =:X4');
            Params[0].AsString := cxDBTextEdit2.text;
            Execsql;
          end;
        end;
      end;
  end;
end;

procedure TfEditTaxsal.CancBtnClick(Sender: TObject);
begin
  QTypemst.cancel;
end;

procedure TfEditTaxsal.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete);
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  RzLabel1.Visible := QTypemstFLCANCL.AsString = 'C';
  CancBtn.Visible := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBButtonEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBCurrencyEdit) and (TcxDBCurrencyEdit(Components[n]).Tag = 0) then
      begin
        TcxDBCurrencyEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBCurrencyEdit(Components[n]).Style.Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
      end;

      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBButtonEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBCurrencyEdit) and (TcxDBCurrencyEdit(Components[n]).Tag = 0) then
      begin
        TcxDBCurrencyEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBCurrencyEdit(Components[n]).Style.Color := clWhite;
      end;
    end;
  end;
end;

procedure TfEditTaxsal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fEditTaxsal := Nil;
  Action := caFree;
end;

procedure TfEditTaxsal.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP01_4');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TfEditTaxsal.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfEditTaxsal.QTypemstAfterDelete(DataSet: TDataSet);
begin
  if QTypemst.Active then
    Dm_sec.HI_DBMS.ApplyUpdates([QTypemst]);
end;

procedure TfEditTaxsal.QTypemstAfterPost(DataSet: TDataSet);
var
  SCont: string;
begin
  SCont := QTypemst.FieldByName('TAXNO').Asstring;
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QTypemst.Active then
      if (QTypemst.ApplyUpdates = 0) then
        QTypemst.CommitUpdates
      else
        raise Exception.Create(QTypemst.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QTypemst.Edit;
    raise;
  end;
  //
  with QTypemst do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO =:0 ');
    params[0].AsString := SCont;
    open;
  end;

  if QTypemstFLAG.AsString = 'C' then
  begin
    if QTypemstTSALE.AsString = 'C' then
    begin
      with Query1 do
      begin
        close;
        sql.Clear;
        sql.Add('update arcred set taxno='''',taxdt=null where contno=:edit3');
        params[0].AsString := QTypemstCONTNO.AsString;
        execSql;
      end;
    end
    else if QTypemstTSALE.AsString = 'F' then
    begin
      with Query1 do
      begin
        close;
        sql.Clear;
        sql.Add('update arfinc set taxno='''',taxdt=null where contno=:edit3');
        params[0].AsString := QTypemstCONTNO.AsString;
        execSql;
      end;
    end;
  end
  else
  begin
    if QTypemstTSALE.AsString = 'C' then
    begin
      with Query1 do
      begin
        close;
        sql.Clear;
        sql.Add('update arcred set taxno=:edit1,taxdt=:edit2 where contno=:edit3');
        params[0].AsString := QTypemstTAXNO.AsString;
        params[1].AsDateTime := QTypemstTAXDT.AsDateTime;
        params[2].AsString := QTypemstCONTNO.AsString;
        execSql;
      end;
    end
    else if QTypemstTSALE.AsString = 'F' then
    begin
      with Query1 do
      begin
        close;
        sql.Clear;
        sql.Add('update arfinc set taxno=:edit1,taxdt=:edit2 where contno=:edit3');
        params[0].AsString := QTypemstTAXNO.AsString;
        params[1].AsDateTime := QTypemstTAXDT.AsDateTime;
        params[2].AsString := QTypemstCONTNO.AsString;
        execSql;
      end;
    end;
  end;
end;

procedure TfEditTaxsal.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SaveBtnClick(Sender);
  end;
end;

procedure TfEditTaxsal.FormShow(Sender: TObject);
begin
  with QTypemst do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM TAXTRAN WHERE TAXNO ='''' ');
    open;
  end;
end;

procedure TfEditTaxsal.DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if DataSource1.State in DsEditModes then
  begin
    Application.Createform(TSearchSale, SearchSale);
    if SearchSale.ShowModalCuscod = Mrok then
    begin
      QTypemst.Fieldbyname('CUSCOD').Asstring := SearchSale.Keyno;
      with Dm_sal.Query1 do
      begin
        Close;
        Sql.clear;
        Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST ' +
          'WHERE CUSCOD=:Var0');
        Params[0].Asstring := QTypemst.Fieldbyname('CUSCOD').Asstring;
        open;
        if not (eof and BOF) then
        begin
          Edit1.Text := FieldByName('SNAM').Asstring +
            FieldByName('NAME1').Asstring + '  ' +
            FieldByName('NAME2').Asstring;
        end
        else
        begin
          Edit1.Text := '';
        end;
      end;
    end;
  end;
end;

procedure TfEditTaxsal.DBCustPropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST ' +
      'WHERE CUSCOD=:Var0');
    Params[0].Asstring := QTypemst.Fieldbyname('CUSCOD').Asstring;
    open;
    if not (eof and BOF) then
    begin
      Edit1.Text := FieldByName('SNAM').Asstring +
        FieldByName('NAME1').Asstring + '  ' +
        FieldByName('NAME2').Asstring;
    end;
  end;
end;

procedure TfEditTaxsal.DBStrnoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if DataSource1.State in DsEditModes then
  begin
    Application.Createform(TSearchSale, SearchSale);
    SearchSale.XLocat := Dm_sal.QFinSale.Fieldbyname('Locat').Asstring;
    if SearchSale.ShowModalStrno = Mrok then
      if (Datasource1.State in DsEditModes) then
        QTypemst.Fieldbyname('Strno').Asstring := SearchSale.Keyno;
  end;
end;

procedure TfEditTaxsal.QTypemstCUSCODChange(Sender: TField);
begin
  if Datasource1.State in DsEditModes then
  begin
    with Query1 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST ' +
        'WHERE CUSCOD=:Var0');
      Params[0].Asstring := QTypemst.Fieldbyname('CUSCOD').Asstring;
      open;
      if not (eof and BOF) then
      begin
        QTypemst.Fieldbyname('SNAM').Asstring := FieldByName('SNAM').Asstring;
        QTypemst.Fieldbyname('NAME1').Asstring := FieldByName('NAME1').Asstring;
        QTypemst.Fieldbyname('NAME2').Asstring := FieldByName('NAME2').Asstring;
      end;
    end;
  end;
end;

procedure TfEditTaxsal.QTypemstBeforePost(DataSet: TDataSet);
begin
  with Query1 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST ' +
      'WHERE CUSCOD=:Var0');
    Params[0].Asstring := QTypemst.Fieldbyname('CUSCOD').Asstring;
    open;
    if not (eof and BOF) then
    begin
      QTypemst.Fieldbyname('SNAM').Asstring := FieldByName('SNAM').Asstring;
      QTypemst.Fieldbyname('NAME1').Asstring := FieldByName('NAME1').Asstring;
      QTypemst.Fieldbyname('NAME2').Asstring := FieldByName('NAME2').Asstring;
    end;
  end;
end;

end.

