unit uApmaster;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB, Dbkbd, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, ActnList,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxMemo, cxDBEdit,
  cxButtonEdit, cxImageComboBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxContainer, cxLabel,
  AdvGlowButton, AdvToolBar, AdvPanel, cxLookAndFeelPainters, cxGroupBox,
  cxLookAndFeels, cxNavigator, FireDAC.Phys.Intf, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxDateRanges, BusinessSkinForm, cxCalc, dxStatusBar;

type
  TfrApmaster = class(TForm)
    DataSource1: TDataSource;
    qrApmaster: TFDQuery;
    qrApmasterAPCODE: TStringField;
    qrApmasterAPNAME: TStringField;
    qrApmasterAPNMEN: TStringField;
    qrApmasterAPEMAIL: TStringField;
    qrApmasterACC_CODE: TStringField;
    qrApmasterAPGRP: TStringField;
    qrApmasterCREDAMT: TFloatField;
    qrApmasterCREDDISC: TFloatField;
    qrApmasterIDREG: TStringField;
    qrApmasterTAXID: TStringField;
    qrApmasterIDCARD: TStringField;
    qrApmasterAPTYPCOD: TStringField;
    qrApmasterAPTAX: TStringField;
    qrApmasterMEMO1: TMemoField;
    qrApmasterUSERID: TStringField;
    qrApmasterINPDATE: TDateTimeField;
    qrApmasterVATRATE: TFloatField;
    qrApmasterAPFLAG: TStringField;
    qrApmasterAPADDR1: TStringField;
    qrApmasterAPADDR2: TStringField;
    qrApmasterAPTELP: TStringField;
    qrApmasterAPCONTACT: TStringField;
    qrApmasterPURCODE: TStringField;
    qrApmasterFAX: TStringField;
    qrApmasterACCTCOD: TStringField;
    qrApmasterDISCT: TFloatField;
    qrApmasterCONTACT: TStringField;
    qrApmasterTELP: TStringField;
    qrApmasterBEGINNING: TFloatField;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    DataSource3: TDataSource;
    qrHelp1: TFDQuery;
    qrHelp1APTYPCOD: TStringField;
    qrHelp1APTYPNAM: TStringField;
    DataSource2: TDataSource;
    qrHelp: TFDQuery;
    qrHelpAPNAME: TStringField;
    AdvPanel1: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    DelBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    cxGroupBox1: TcxGroupBox;
    Label7: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxTextEdit2: TcxTextEdit;
    dxStatusBar1: TdxStatusBar;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    Lookup1: TcxDBLookupComboBox;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBCalcEdit2: TcxDBCalcEdit;
    ImgTypeJob: TcxDBImageComboBox;
    ImgNature: TcxDBImageComboBox;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1APNAME: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    qrApmasterHOFFICER: TStringField;
    qrApmasterLOCATLIST: TStringField;
    cxDBTextEdit16: TcxDBTextEdit;
    Label19: TLabel;
    qrApmasterCREDTM: TIntegerField;

    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure qrApmasterAfterPost(DataSet: TDataSet);
    procedure qrApmasterAfterDelete(DataSet: TDataSet);
    procedure DelBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure qrApmasterBeforeDelete(DataSet: TDataSet);
    procedure qrApmasterAPCUSCODValidate(Sender: TField);
    procedure qrApmasterIDCARDValidate(Sender: TField);
    procedure qrApmasterACC_CODEValidate(Sender: TField);
    procedure qrApmasterAPCODEValidate(Sender: TField);
    procedure qrApmasterAPTYPCODValidate(Sender: TField);
    procedure qrApmasterNewRecord(DataSet: TDataSet);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure cxDBButtonEdit3PropertiesChange(Sender: TObject);
    procedure cxDBTextEdit10Exit(Sender: TObject);
    procedure cxDBTextEdit6Exit(Sender: TObject);
    procedure Lookup1PropertiesInitPopup(Sender: TObject);
    procedure cxDBTextEdit2PropertiesChange(Sender: TObject);
    procedure cxDBTextEdit2Exit(Sender: TObject);
    procedure qrApmasterBeforePost(DataSet: TDataSet);
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
    procedure qrApmasterUpdateError(ASender: TDataSet; AException: EFDException;
      ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
  private
    Function RunDocno:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frApmaster: TfrApmaster;
  Duplicate : Boolean;

implementation

uses USoftFirm,uSrcDlg,Dmsec,Functn01,uFinddata;

{$R *.DFM}
const
     eKeyViol = 9721;

Function TfrApmaster.RunDocno:String;
Var H,L,R:String;
    I,C :Integer;
begin
     H  := 'APM-';
     With Query1 Do
     Begin
       Close;
       Sql.Clear;
       SQl.Add('SELECT MAX(APCODE) as Maxno FROM APMAST WHERE SUBSTR(APCODE,1,3) = ''APM'' ');
       Open;
       If Not(Bof and Eof) Then
       Begin
         L := Copy(Query1.Fieldbyname('Maxno').Asstring,5,4);
         Val(L,I,C);
         I:=I+1;
         R := Dm_Sec.ZeroLead(Inttostr(I),4);
         Result := H+R;
       End
       else
       begin
         R := Dm_Sec.ZeroLead(Inttostr(1),4);
         Result := H+R;
       end;
     End;
end;


procedure TfrApmaster.DataSource1StateChange(Sender: TObject);
begin
  Do_Check_Object_Parent(cxGroupBox1,Datasource1.DataSet.State);
  InsBtn.Visible        := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Visible        := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete) and (qrApmasterAPCODE.AsString <> '');
  editBtn.Visible       := DataSource1.State=Dsbrowse;
  CloseBtn.Enabled      := (DataSource1.State=Dsbrowse);
  SaveBtn.Visible       := (DataSource1.State in DsEditmodes)and
                           ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
  CancBtn.Visible       := SaveBtn.Visible;

  if (DataSource1.Dataset.State = DsEdit) Then
      cxDBTextEdit1.Properties.ReadOnly     := True;
end;

procedure TfrApmaster.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrHelp1.Close;
  frApmaster := Nil;
  Action :=caFree;
end;

procedure TfrApmaster.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrApmaster.InsBtnClick(Sender: TObject);
Const
  SqlQuery = 'SELECT * FROM APMAST WHERE APCODE =:0';
begin
  Dm_Sec.Do_With_Query(actInsert,qrApmaster,SqlQuery,['']);
end;

procedure TfrApmaster.CancBtnClick(Sender: TObject);
begin
  qrApmaster.Cancel;
  if cxGrid1.Visible = True then
  cxGrid1.Visible := False;
end;

procedure TfrApmaster.SaveBtnClick(Sender: TObject);
begin
   if cxDBTextEdit1.Text = '' then
   SFMain.RaiseException('*รหัสเจ้าหนี้ : ห้ามว่าง!');

   Dm_Sec.Do_With_Query(actOpen,query1,'SELECT * FROM ACCMST WHERE ACCMSTCOD =:0',[qrApmasterACC_CODE.AsString]);
   if query1.FieldByName('ACCFLAG').AsString = 'Y' then
      SFMain.RaiseException('เป็นรหัสบัญชีคุม !');
   if Datasource1.DataSet.State = dsInsert then
      Dm_Sec.ChkRecent(SFMain.Xuser_ID,'HDSET05_1','INSERT',qrApmasterAPCODE.AsString) else
      Dm_Sec.ChkRecent(SFMain.Xuser_ID,'HDSET05_1','EDIT',qrApmasterAPCODE.AsString);
   qrApmaster.Post;
end;

procedure TfrApmaster.qrApmasterAfterPost(DataSet: TDataSet);
Var nKey : String;
begin
  nKey := qrApmaster.fieldbyname('APCODE').AsString;
  SFMain.Do_After_Post_Delete(qrApmaster);
  Dm_Sec.Do_With_Query(actOpen,qrApmaster,'SELECT * FROM APMAST WHERE APCODE =:X1',[nKey]);
end;

procedure TfrApmaster.qrApmasterAfterDelete(DataSet: TDataSet);
begin
  SFMain.Do_After_Post_Delete(qrApmaster);
end;

procedure TfrApmaster.DelBtnClick(Sender: TObject);
begin
  if cxDBTextEdit1.Text = '' Then
  SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk :
    begin
      Dm_Sec.ChkRecent(SFMain.Xuser_ID,'HDSET05_1','DELETE',qrApmasterAPCODE.AsString);
      qrApmaster.Delete;
      SFMain.Do_Cancel_Delete;
    end;
  end;
end;

procedure TfrApmaster.FormShow(Sender: TObject);
Const
  SqlQuery = 'SELECT * FROM APMAST WHERE APCODE =:0';
begin
  Dm_Sec.Do_With_Query(actOpen,qrApmaster,SqlQuery,['']);
  qrHelp1.Open;  
end;

procedure TfrApmaster.DBkbd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F3 then
      EditBtnClick(Sender);
   if Key = VK_F2 then
      SaveBtnClick(Sender);
   if (Key = VK_F8) and (Delbtn.Visible= True) then
      DelBtnClick(Sender);
   if (Key = VK_F5) and (InsBtn.Visible= True) then
      InsBtnClick(Sender);
end;

procedure TfrApmaster.FormCreate(Sender: TObject);
begin
    SFMain.Check_right('HDSET','HDSET05_1');
    DBkbd1.AllowInsert := SFMain.Insert_Right;
    DBkbd1.AllowEditing := SFMain.Edit_Right;
    DBkbd1.AllowDelete := SFMain.Del_Right;
end;

procedure TfrApmaster.EditBtnClick(Sender: TObject);
begin
  if cxGrid1.Visible = True then
  cxGrid1.Visible := False;
  
  Application.CreateForm(TfSrcDlg,fSrcDlg);
  if fSrcDlg.ShowModalAP = mrOK then
  begin
    Dm_Sec.Do_With_Query(actOpen,qrApmaster,'SELECT * FROM APMAST WHERE APCODE =:X1',[fSrcDlg.Keyno]);
  end;
end;

procedure TfrApmaster.qrApmasterBeforeDelete(DataSet: TDataSet);
begin
  SFMain.Findexist('PWHTAXMST','APCUSCOD',qrApmasterAPCODE.AsString);
  SFMain.Findexist('APOTHMST','APCUSCOD',qrApmasterAPCODE.AsString);
end;

procedure TfrApmaster.qrApmasterAPCUSCODValidate(Sender: TField);
begin
  SFMain.Fieldexist('APMAST','APCODE',qrApmasterAPCODE.AsString);
end;

procedure TfrApmaster.qrApmasterIDCARDValidate(Sender: TField);
begin
  if Not SFMain.ChkIdno(qrApmasterIDCARD.AsString) Then
  SFMain.RaiseException('เลขที่บัตรประจำตัวไม่ถูกต้อง..!');
end;

procedure TfrApmaster.qrApmasterACC_CODEValidate(Sender: TField);
begin
  SFMain.Findnoexist('ACCMST','ACCMSTCOD',qrApmasterACC_CODE.AsString);
end;

procedure TfrApmaster.qrApmasterAPCODEValidate(Sender: TField);
begin
  SFMain.Fieldexist('APMAST','APCODE',qrApmasterAPCODE.AsString);
end;

procedure TfrApmaster.qrApmasterAPTYPCODValidate(Sender: TField);
begin
  SFMain.Findnoexist('APTYPE','APTYPCOD',qrApmasterAPTYPCOD.AsString);
end;

procedure TfrApmaster.qrApmasterNewRecord(DataSet: TDataSet);
begin
   qrApmasterCREDAMT.AsFloat    := 0;
   qrApmasterVATRATE.AsFloat    := 7;
   qrApmasterAPTAX.AsString     := '1';   
   qrApmasterUSERID.AsString    := SFMain.Xuser_ID;
   qrApmasterINPDATE.AsDateTime := NOW;
   qrApmasterAPCODE.AsString    := RunDocno;
end;

procedure TfrApmaster.qrApmasterUpdateError(ASender: TDataSet;
  AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
  if (AException is EFDDBEngineException) then
    if (AException as EFDDBEngineException).Errors[0].Errorcode = eKeyViol then
    begin
      Duplicate := True;
    end;
end;

procedure TfrApmaster.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if Datasource1.DataSet.State in DsEditmodes then
  begin
    Application.CreateForm(TfFindData,fFindData);
    if fFindData.ShowModalAccmst = mrOK then
    qrApmasterACC_CODE.AsString := fFindData.Keyno;
  end;
end;

procedure TfrApmaster.cxDBMemo1Click(Sender: TObject);
begin
  frApmaster.KeyPreview := False;
end;

procedure TfrApmaster.cxDBMemo1Exit(Sender: TObject);
begin
  frApmaster.KeyPreview := True;
end;

procedure TfrApmaster.cxDBButtonEdit3PropertiesChange(Sender: TObject);
begin
  cxTextEdit2.Text := SFMain.FindShowDesc('ACCMST','ACCMSTNAM','ACCMSTCOD',cxDBButtonEdit3.Text);
end;

procedure TfrApmaster.cxDBTextEdit10Exit(Sender: TObject);
begin
  SFMain.ChkInteger(cxDBTextEdit10.Text);
end;

procedure TfrApmaster.cxDBTextEdit6Exit(Sender: TObject);
begin
  SFMain.ChkInteger(cxDBTextEdit6.Text);
end;

procedure TfrApmaster.Lookup1PropertiesInitPopup(Sender: TObject);
begin
  qrHelp1.Close;
  qrHelp1.Open;
end;

procedure TfrApmaster.cxDBTextEdit2PropertiesChange(Sender: TObject);
begin
  if Datasource1.DataSet.State in dsEditmodes then
  begin
    cxGrid1.Visible := True;
    with qrHelp do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM APMAST WHERE APNAME LIKE :EDIT1');
      qrHelp.Params[0].Asstring := Uppercase('%'+cxDBTextEdit2.Text+'%');
      qrHelp.Open;
    end;
  end;
end;

procedure TfrApmaster.cxDBTextEdit2Exit(Sender: TObject);
begin
  cxGrid1.Visible := False;
end;

procedure TfrApmaster.qrApmasterBeforePost(DataSet: TDataSet);
begin
  qrApmasterDISCT.AsFloat := qrApmasterCREDDISC.AsFloat;
end;

procedure TfrApmaster.cxDBTextEdit1PropertiesChange(Sender: TObject);
begin
  DelBtn.Visible := (cxDBTextEdit1.Text <> '') and (Datasource1.State = DsBrowse);
end;

end.
