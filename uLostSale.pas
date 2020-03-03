unit uLostSale;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, ImgList, ComCtrls, ToolWin,
  ActnList, RzSpnEdt, Dbkbd, cxGraphics, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxButtonEdit,
  cxDBEdit, cxDropDownEdit, cxCalendar, cxLookAndFeels, cxLookAndFeelPainters,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  BusinessSkinForm, dxStatusBar;

type
  TFLostSale = class(TForm)
    AdvPanel1: TAdvPanel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    RevDate: TcxDBDateEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit7: TcxDBButtonEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit2: TcxDBButtonEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DataSource1: TDataSource;
    qrLostSale: TFDQuery;
    qrLostSaleDOCNO: TStringField;
    qrLostSaleDOCDT: TDateField;
    qrLostSaleLOCAT: TStringField;
    qrLostSaleCUSCOD: TStringField;
    qrLostSaleOFFICCOD: TStringField;
    qrLostSaleGROUPPT: TStringField;
    qrLostSalePARTNO: TStringField;
    qrLostSaleDESCPT: TStringField;
    qrLostSaleFLAG: TStringField;
    qrLostSaleJOBNO: TStringField;
    qrLostSaleUPRICE: TFloatField;
    qrLostSaleQTYORD: TFloatField;
    qrLostSaleQTYOUT: TFloatField;
    qrLostSaleAMTLOST: TFloatField;
    qrLostSaleQTYLOST: TFloatField;
    DBkbd1: TDBkbd;
    ActionList1: TActionList;
    acAdd: TAction;
    acDel: TAction;
    acQuery: TAction;
    acSave: TAction;
    AcCan: TAction;
    acClose: TAction;
    AcPrn: TAction;
    Query1: TFDQuery;
    dxStatusBar1: TdxStatusBar;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrLostSaleAfterPost(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrLostSaleNewRecord(DataSet: TDataSet);
    procedure qrLostSalePARTNOValidate(Sender: TField);
    procedure qrLostSaleQTYOUTValidate(Sender: TField);
    procedure qrLostSaleQTYLOSTValidate(Sender: TField);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit5PropertiesChange(Sender: TObject);
    procedure DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure RevDateExit(Sender: TObject);
  private
    { Private declarations }
    function ZeroLead(St: string; len: integer): string;
  public
    { Public declarations }
    day1, month1, year1: word;
    function RunDocno: string;
  end;

var
  FLostSale: TFLostSale;

implementation

uses
  USoftFirm, Dmsec, uFindData, uSrcDlg;

{$R *.DFM}

function TFLostSale.RunDocno: string;
var
  H, L, R, YY: string;
  I, C: Integer;
begin
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  DeCodeDate(Date, Year1, Month1, Day1);
  YY := IntToStr(year1);
  H := 'LS-';   // 'LS-201100001'
  with Query1 do
  begin
    Close;
    Sql.Clear;
    SQl.Add('SELECT MAX(DOCNO) AS MAXNO FROM LOSTSALE ');
    Open;
    if not (Bof and Eof) then
    begin
      L := Copy(Query1.Fieldbyname('Maxno').Asstring, 8, 5);
      Val(L, I, C);
      I := I + 1;
      R := ZeroLead(Inttostr(I), 5);
      Result := H + YY + R;
    end
    else
    begin
      R := ZeroLead(Inttostr(1), 5);
      Result := H + YY + R;
    end;
  end;
end;

function TFLostSale.ZeroLead(St: string; len: integer): string;
var
  Zero, Chr1: string;
  j, ll: integer;
begin
  Chr1 := Trim(St);
  Zero := '';
  ll := length(Chr1);
  if len < ll then
    len := ll;
  for j := 1 to len - ll do
    Zero := Zero + '0';
  Result := Zero + Chr1;
end;

procedure TFLostSale.InsBtnClick(Sender: TObject);
begin
  with qrLostSale do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM LOSTSALE WHERE DOCNO =:0 ');
    Params[0].Asstring := '';
    open;
    Insert;
  end;
  DBEdit1.SetFocus;
end;

procedure TFLostSale.CancBtnClick(Sender: TObject);
begin
  qrLostSale.cancel;
end;

procedure TFLostSale.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit6.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := False;
        TcxDBButtonEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Enabled := False;
        TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxDBMemo) and (TcxDBMemo(Components[n]).Tag = 0) then
      begin
        TcxDBMemo(Components[n]).Properties.ReadOnly := True;
        TcxDBMemo(Components[n]).Style.Color := clBtnFace;
      end;

      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clBtnface;
      end;
    end;
  end
  else
  begin
    for n := 0 to ComponentCount - 1 do
    begin
      if (Components[n] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[n]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[n]).Enabled := True;
        TcxDBButtonEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBTextEdit) and (TcxDBTextEdit(Components[n]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBDateEdit) and (TcxDBDateEdit(Components[n]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[n]).Enabled := True;
        TcxDBDateEdit(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxDBMemo) and (TcxDBMemo(Components[n]).Tag = 0) then
      begin
        TcxDBMemo(Components[n]).Properties.ReadOnly := False;
        TcxDBMemo(Components[n]).Style.Color := clWhite;
      end;

      if (Components[n] is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag = 0) then
      begin
        TcxTextEdit(Components[n]).Style.Color := clWhite;
      end;
    end;
  end;
  if not (DataSource1.Dataset.State = Dsinsert) then
  begin
    DBEdit1.Properties.Readonly := True;
    DBEdit1.Style.Color := clBtnFace;
  end;
end;

procedure TFLostSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FLostSale := Nil;
end;

procedure TFLostSale.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFLostSale.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalLostSale = Mrok then
  begin
    with qrLostSale do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM LOSTSALE WHERE DOCNO=:0');
      Params[0].Asstring := fFindData.KeyNo;
      Open;
    end;
  end;
end;

procedure TFLostSale.SaveBtnClick(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัสพนักงาน');
  if DBEdit2.Text = '' then
    SFMain.RaiseException('ยังไม่ได้บันทึกรหัสสินค้า');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_A', 'INSERT', qrLostSaleDOCNO.AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_A', 'EDIT', qrLostSaleDOCNO.AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  qrLostSale.Post;
end;

procedure TFLostSale.FormShow(Sender: TObject);
begin
  with qrLostSale do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM LOSTSALE WHERE DOCNO =:0 ');
    Params[0].Asstring := '';
    open;
  end;
end;

procedure TFLostSale.qrLostSaleAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrLostSale.Active then
      if (qrLostSale.ApplyUpdates = 0) then
        qrLostSale.CommitUpdates
      else
        raise Exception.Create(qrLostSale.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    qrLostSale.Edit;
    raise;
  end;
end;

procedure TFLostSale.DelBtnClick(Sender: TObject);
begin
  if DBEdit6.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_A', 'DELETE', qrLostSaleDOCNO.AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        qrLostSale.Delete;
      end;
  end;
end;

procedure TFLostSale.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_A');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFLostSale.qrLostSaleNewRecord(DataSet: TDataSet);
begin
  qrLostSaleLOCAT.AsString := SFMain.Xlocat;
  qrLostSaleDOCDT.AsDateTime := Date;
  qrLostSaleDOCNO.AsString := RunDocno;
  qrLostSaleFLAG.AsString := 'A';  //บันทึก Lost Sale
end;

procedure TFLostSale.qrLostSalePARTNOValidate(Sender: TField);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT LOCAT,PARTNO,DESC1,COST,PRICE1,GROUP1  FROM INVENTOR ' +
      ' WHERE PARTNO =:0 AND LOCAT=:1');
    PARAMS[0].ASSTRING := qrLostSalePARTNO.asstring;
    PARAMS[1].ASSTRING := qrLostSaleLOCAT.asstring;
    Open;
    qrLostSaleDESCPT.AsString := FieldByname('DESC1').AsString;
    qrLostSaleGROUPPT.AsString := FieldByname('GROUP1').AsString;
    qrLostSaleUPRICE.AsFloat := FieldByname('PRICE1').AsFloat;
  end;
end;

procedure TFLostSale.qrLostSaleQTYOUTValidate(Sender: TField);
begin
  if qrLostSaleQTYORD.AsFloat > 0 then
    qrLostSaleQTYLOST.AsFloat := qrLostSaleQTYORD.AsFloat - qrLostSaleQTYOUT.AsFloat
end;

procedure TFLostSale.qrLostSaleQTYLOSTValidate(Sender: TField);
begin
  qrLostSaleAMTLOST.AsFloat := qrLostSaleQTYLOST.AsFloat * qrLostSaleUPRICE.AsFloat;
end;

procedure TFLostSale.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalSfloct = Mrok then
    qrLostSale.FieldByName('LOCAT').AsString := fFindData.Keyno;
end;

procedure TFLostSale.DBEdit7PropertiesChange(Sender: TObject);
begin
  Edit2.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DbEdit7.Text);
end;

procedure TFLostSale.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalsetOfficer = mrok then
    qrLostSale.FieldByName('OFFICCOD').AsString := fFindData.Keyno;
end;

procedure TFLostSale.DBEdit5PropertiesChange(Sender: TObject);
begin
  Edit1.Text := SFMain.FindShowDesc('OFFICER', 'NAME', 'CODE', DbEdit5.Text);
end;

procedure TFLostSale.DBEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    qrLostSalePARTNO.Asstring := fSrcDlg.KeyNo;
end;

procedure TFLostSale.RevDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(qrLostSale.fieldbyname('DOCDT').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      qrLostSale.fieldbyname('DOCDT').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      qrLostSale.fieldbyname('DOCDT').AsDateTime := qrLostSale.fieldbyname('DOCDT').AsDateTime;
  end;
end;

end.

