unit Spin01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, Mask, ComCtrls, DB,
  Dbkbd, ImgList, ToolWin, cxDBEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton,
  AdvToolBar, AdvPanel, cxLookAndFeelPainters, cxGroupBox, cxMemo, cxRadioGroup,
  cxGraphics, cxLookAndFeels, System.Actions, Vcl.Menus, Vcl.ActnList, RzDbkbd,
  dxStatusBar, cxButtons, RzDBGrid, RzLabel, RzDBLbl, frxExportXLSX, frxRich,
  frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFSpIn01 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    DBGrid1: TRzDBGrid;
    CampBtn: TAdvGlowButton;
    AutoBtn: TAdvGlowButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBkbd1: TRzDBkbd;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Edit3: TcxTextEdit;
    Edit4: TcxTextEdit;
    DBEdit9: TcxDBTextEdit;
    Edit5: TcxTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    DBEdit1: TcxDBButtonEdit;
    DBEdit3: TcxDBTextEdit;
    OrdDate: TcxDBDateEdit;
    DBEdit4: TcxDBButtonEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit8: TcxDBButtonEdit;
    DBEdit10: TcxDBTextEdit;
    DBMemo1: TcxDBMemo;
    dxStatusBar1: TdxStatusBar;
    AdvPanel3: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    AdvPanel2: TAdvPanel;
    NextBtn: TcxButton;
    DeleBtn: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit24: TcxDBTextEdit;
    DBEdit25: TcxDBTextEdit;
    DBEdit26: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit17: TRzDBLabel;
    ActionList1: TActionList;
    actEditPrn: TAction;
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
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure insBtnClick(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure QueryBtnClick(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure CampBtnClick(Sender: TObject);
    procedure AutoBtnClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure RzDBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure Showjob;
  public
    { Public declarations }
  end;

var
  FSpIn01: TFSpIn01;
  Smnettot, SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  Price: string;

implementation

uses
  DmSvSet, Srchdlg1, Spprn10, SvHlp20, HlpJobNew, DmSv, USoftFirm, uSrcDlg1,
  Dmsec, uFindData;

{$R *.DFM}

procedure TFSpIn01.Button5Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
  begin
    Dm_SvSet.QOrdiv.FieldByName('ORDLOCAT').Asstring := fSrcDlg1.qrFindDat.FieldByName('LOCATCOD').Asstring;
  end;
end;

procedure TFSpIn01.SpeedButton6Click(Sender: TObject);
begin
  Application.CreateForm(THelpJobNew, HelpJobNew);
  if HelpJobNew.ShowModal = MrOk then
  begin
    Dm_SvSet.QOrdiv.FieldByName('JOBNO').Asstring := HelpJobNew.QHlp.FieldByName('JOBNO').Asstring;
    Showjob;
  end;
end;

procedure TFSpIn01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FSpIn01 := Nil;
end;

procedure TFSpIn01.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbGrid) and
      not (ActiveControl is TDBMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end
end;

procedure TFSpIn01.insBtnClick(Sender: TObject);
begin
  with Dm_SvSet.QOrdiv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SV_ORDIV WHERE ORDNO ='''' ');
    OPEN;
    INSERT;
  end;

  with Dm_SvSet.QOrdtn do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SV_ORDTN WHERE ORDNO ='''' ');
    OPEN;
  end;
  if DBEdit1.Enabled = false then
    DBEdit4.SetFocus
  else
    DBEdit1.SetFocus;
end;

procedure TFSpIn01.NextBtnClick(Sender: TObject);
begin
  Dm_SvSet.QOrdtn.Append;
end;

procedure TFSpIn01.CancBtnClick(Sender: TObject);
begin
  if Dm_SvSet.QOrdiv.Active then
    Dm_SvSet.QOrdiv.CancelUpdates;
  if Dm_SvSet.QOrdtn.Active then
    Dm_SvSet.QOrdtn.CancelUpdates;
  if Dm_SvSet.Lastno.Active then
    Dm_SvSet.Lastno.CancelUpdates;
  Edit1.Text := '';
  Edit5.Text := '';
  Edit2.Text := '';
end;

procedure TFSpIn01.SaveBtnClick(Sender: TObject);
begin
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNOO ');
    Params[0].Asstring := DBedit5.text;
    Open;
  end;
  if Dm_SvSet.QJobord.bof and Dm_SvSet.QJobord.Eof then
    SFMain.RaiseException('ไม่พบ JOB หมายเลขนี้ ');
   //
  Dm_SvSet.QOrdiv.Post;
end;

procedure TFSpIn01.DBGrid1ColExit(Sender: TObject);
begin
  if (DbGrid1.SelectedField.FieldName) = 'PARTNO' then
  begin
    if DBEdit5.Text = '' then
      sfmain.RaiseException('ไม่พบเลขที่ใบแจ้งซ่อม<br/>ใบแจ้งซ่อมจะอ้างอิงรหัสลูกค้า เพื่อดูระดับราคาขาย');

    if Dm_SvSet.QOrdtnPartno.Asstring = '' then
      SFMain.RaiseException('ยังไม่บันทึกรหัสอะไหล่');

    with Dm_Svset.QInvent do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO=:EDIT1 AND LOCAT=:XLOC');
      Params[0].asstring := Dm_SvSet.QOrdtnPartno.Asstring;
      Params[1].asstring := sfmain.Xlocat;
      Open;
      if Bof and Eof then
      //MessageDlg('รหัสอะไหล่นี้ไม่มีในแฟ้มขัอมูล ',Mtwarning,[mbok,mbcancel],0)
        SFMain.RaiseException('รหัสอะไหล่นี้ไม่มีในแฟ้มขัอมูล ');
    end;
    Price := 'Price' + Edit2.text;
    Dm_SvSet.QOrdtn.edit;
    Dm_SvSet.QOrdtnREDU1.AsFloat := Dm_SvSet.QOrdivDisct.AsFloat;
   // If Dm_SvSet.QInvent.Fieldbyname('NETPRC').Asstring<>'N' Then
    Dm_SvSet.QOrdtn.Fieldbyname('UPRICE').AsFloat := Dm_SvSet.QInvent.Fieldbyname(Price).AsFloat;
    Dm_SvSet.QOrdtn.Fieldbyname('NETFL').Asstring := Dm_SvSet.QInvent.Fieldbyname('NETPRC').Asstring;

    DBGrid1.Columns[3].ReadOnly := Dm_SvSet.QOrdtn.Fieldbyname('NETFL').Asstring = 'N';
  end;

  if (DbGrid1.SelectedField.FieldName) = 'QTYORD' then
  begin
    Dm_SvSet.QOrdtn.edit;
    Dm_SVSet.QOrdtnQTYOUT.AsFloat := Dm_SvSet.QOrdtnQTYORD.AsFloat;
  end;

  if (DbGrid1.SelectedField.FieldName) = 'QTYOUT' then
  begin
    Dm_SvSet.QOrdtn.edit;
    if Dm_SvSet.QOrdtnQTYORD.AsFloat < Dm_SvSet.QOrdtnQTYOUT.AsFloat then
      SFMain.RaiseException('จำนวนที่รับมากกว่าจำนวนที่สั่ง');
  end;

  if (DbGrid1.SelectedField.FieldName) = 'UPRICE' then
  begin
    Dm_SvSet.QOrdtn.edit;
    if Dm_SvSet.QOrdtnUprice.AsFloat = 0 then
      Showmessage('ยังไม่ได้บันทึกราคา');
    Pric1 := (Dm_SvSet.QOrdtnUPrice.value * (Dm_SvSet.QOrdtnRedu1.value / 100));
    SmPric1 := Dm_SvSet.QOrdtnUPrice.value - Pric1;
    Pric2 := SmPric1 * (Dm_SvSet.QOrdtnRedu2.value / 100);
    SmPric2 := SmPric1 - Pric2;
    Pric3 := SmPric2 * (Dm_SvSet.QOrdtnRedu3.value / 100);
    SmPric3 := SmPric2 - Pric3;
    Dm_SvSet.QOrdtnNetprc.AsFloat := SmPric3;
    Dm_SvSet.QOrdtnTotPrc.AsFloat := Dm_SvSet.QOrdtnNetprc.AsFloat * Dm_SvSet.QOrdtnQTYOUT.AsFloat;
  end;
end;

procedure TFSpIn01.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbGrid) and
      not (ActiveControl is TDBMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end
    else if (ActiveControl is TDbGrid) then
      with TDBGrid(ActiveControl) do
        if Selectedindex < (FieldCount - 1) then
          Selectedindex := Selectedindex + 1
        else
        begin
          Selectedindex := 0;
          if Dm_SvSet.QOrdtn.State in [DsInsert] then
            Dm_SvSet.QOrdtn.Append;
          if Dm_SvSet.QOrdtn.State in [DsBrowse, DsEdit] then
            Dm_SvSet.QOrdtn.Next;
        end;
end;

procedure TFSpIn01.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
  end;
end;

procedure TFSpIn01.DBGrid1Exit(Sender: TObject);
begin
  FSpIn01.OnkeyPress := FormKeyPress;
end;

procedure TFSpIn01.DBGrid1Enter(Sender: TObject);
begin
  { FSpIn01.OnkeyDown  := nil;
   FSpIn01.OnkeyPress := nil;   }
end;

procedure TFSpIn01.DataSource1StateChange(Sender: TObject);
var
  N: word;
begin
  InsBtn.Enabled := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit3.Text <> '');
  Enqbtn.Enabled := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  //
  DBRadioGroup1.Enabled := SavBtn.Visible;
  NextBtn.Enabled := (DataSource1.Dataset.State in DsEditModes);
  DeleBtn.Enabled := NextBtn.Enabled;
  CampBtn.Enabled := (DataSource1.Dataset.State = DsInsert);
  AutoBtn.Enabled := (DataSource1.Dataset.State = DsInsert);
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit3.Text <> '');

  if DataSource1.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := False;
        TcxDBButtonEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := False;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := True;
        TRzDBGrid(Components[N]).Color := clBtnFace;
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
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBButtonEdit) and (TcxDBButtonEdit(Components[N]).Tag = 0) then
      begin
        TcxDBButtonEdit(Components[N]).Enabled := True;
        TcxDBButtonEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := True;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TRzDBGrid) and (TRzDBGrid(Components[N]).Tag = 0) then
      begin
        TRzDBGrid(Components[N]).ReadOnly := False;
        TRzDBGrid(Components[N]).Color := clWhite;
      end;
      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;

  if not Dm_SvSet.QDBConfig.Active then
    Dm_SvSet.QDBConfig.Open;
  DBEdit3.Properties.Readonly := Dm_SvSet.QDBConfig.Fieldbyname('H_RQPK').asstring = 'Y';
  //
  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  OrdDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
end;

procedure TFSpIn01.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalFOrdsv = Mrok then
  begin
    with Dm_SvSet.QOrdiv do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SV_ORDIV WHERE ORDNO = :XORDNO');
      Params[0].Asstring := fSrcDlg1.Keyno;
      Open;
    end;
    if Dm_SvSet.QOrdiv.Bof and Dm_SvSet.QOrdiv.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');

    with Dm_SvSet.Query3 do
    begin
      close;
      sql.clear;
      sql.add('select CUSCOD,DISCT,SALLEV from CUSTMAST ' +
        'WHERE (cuscod =:Edit5) ORDER BY cuscod ');
      Params[0].AsString := Dm_SvSet.QOrdivCusCod.AsString;
      OPEN;
    end;
    Edit2.Text := Dm_SvSet.Query3.FieldByName('Sallev').Asstring;

    with Dm_SvSet.Query3 do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM View_Svmast ' +
        'WHERE (cuscod =:Edit5) ORDER BY cuscod ');
      Params[0].AsString := Dm_SvSet.QOrdivCusCod.AsString;
      OPEN;
    end;
    Edit5.Text := Dm_SvSet.Query3.FieldByname('SNAM').Asstring + ' ' +
      Dm_SvSet.Query3.FieldByname('NAME1').Asstring + '   ' +
      Dm_SvSet.Query3.FieldByname('NAME2').Asstring;
    Edit1.Text := Dm_SvSet.Query3.FieldByName('REGNO').Asstring;

    with Dm_SvSet.QOrdtn do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SV_ORDTN WHERE ORDNO = :XORDNO ');
      Params[0].Asstring := Dm_SvSet.Qordiv.FieldByName('ORDNO').Asstring;
      Open;
    end;
  end;
end;

procedure TFSpIn01.delBtnClick(Sender: TObject);
begin
  if MessageDlg(' คุณต้องการลบข้อมูล ?', mtInformation, [mbYes, mbNo], 0) = mrYes then
    Dm_SvSet.QOrdiv.Delete;
  Edit1.Text := '';
  Edit5.Text := '';
end;

procedure TFSpIn01.DBEdit21Exit(Sender: TObject);
begin
  Dm_SvSet.QOrdivBALANCE.AsFloat := Dm_SvSet.QOrdivTotprc.AsFloat; //- Dm_SvSet.QOrdivDISCAMT.AsFloat;
  Dm_SvSet.QOrdivNettotal.AsFloat := Dm_SvSet.QOrdivBALANCE.AsFloat;
  Dm_SvSet.QOrdivNETAMT.AsFloat := (Dm_SvSet.QOrdivBALANCE.AsFloat * 100) / (100 + Dm_SvSet.QOrdivVatrt.AsFloat);
  Dm_SvSet.QOrdivVatAmt.AsFloat := Dm_SvSet.QOrdivBALANCE.AsFloat - Dm_SvSet.QOrdivNETAMT.AsFloat;
end;

procedure TFSpIn01.DeleBtnClick(Sender: TObject);
var
  XNetAmt, NetAmt: double;
  SNetAmt: string;
begin
  Dm_SvSet.QOrdtn.delete;
  Dm_SvSet.QOrdtn.Edit;

  Smnettot := 0;
  Dm_SvSet.QOrdtn.first;
  while not Dm_SvSet.QOrdtn.Eof do
  begin
    Smnettot := Smnettot + Dm_SvSet.QOrdtnTotPrc.AsFloat;
    Dm_SvSet.QOrdtn.Next;
  end;
  Dm_SvSet.QOrdivTotprc.AsFloat := Smnettot;
  Dm_SvSet.QOrdivBALANCE.AsFloat := Dm_SvSet.QOrdivTotprc.AsFloat; //- Dm_SvSet.QOrdivDISCAMT.AsFloat;

  if Dm_SvSet.QOrdivVATTYPE.Asstring = '1' then
  begin
    Dm_SvSet.QOrdivNettotal.AsFloat := Dm_SvSet.QOrdivBALANCE.AsFloat;
    XNetAmt := (Dm_SvSet.QOrdivBALANCE.AsFloat * 100) / (100 + Dm_SvSet.QOrdivVatrt.AsFloat);
    SNetAmt := floattostrf(XNetAmt, ffFixed, 12, 2);
    NetAmt := strtofloat(SNetAmt);
    Dm_SvSet.QOrdivNETAMT.AsFloat := NetAmt;
    Dm_SvSet.QOrdivVatAmt.AsFloat := Dm_SvSet.QOrdivBALANCE.AsFloat - Dm_SvSet.QOrdivNETAMT.AsFloat;
  end
  else if Dm_SvSet.QOrdivVATTYPE.Asstring = '2' then
  begin
    Dm_SvSet.QOrdivNETAMT.AsFloat := Dm_SvSet.QOrdivBALANCE.AsFloat;
    Dm_SvSet.QOrdivVatAmt.AsFloat := Dm_SvSet.QOrdivNETAMT.AsFloat * (Dm_SvSet.QOrdivVatrt.AsFloat / 100);
    Dm_SvSet.QOrdivNettotal.AsFloat := Dm_SvSet.QOrdivNETAMT.AsFloat + Dm_SvSet.QOrdivVatAmt.AsFloat;
  end;
end;

procedure TFSpIn01.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    sfmain.RaiseException('ไม่พบเลขที่ใบแจ้งซ่อม<br/>ใบแจ้งซ่อมจะอ้างอิงรหัสลูกค้า เพื่อดูระดับราคาขาย');

  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalParts = Mrok then
  begin
    with Dm_svset.QInvent do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO=:XPART AND LOCAT=:XLOC ');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Params[1].Asstring := sfMain.XLocat;
      Open;
    end;
    if Dm_svSet.QInvent.Bof and Dm_svSet.QInvent.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    //
    Price := 'Price' + Edit2.text;
    Dm_SvSet.QOrdtn.edit;
    Dm_SvSet.QOrdtnREDU1.AsFloat := Dm_SvSet.QOrdivDisct.AsFloat;
    if Dm_SvSet.QInvent.Fieldbyname('NETPRC').Asstring <> 'N' then
      Dm_SvSet.QOrdtn.Fieldbyname('UPRICE').AsFloat := Dm_SvSet.QInvent.Fieldbyname(Price).AsFloat;
    Dm_SvSet.QOrdtn.Fieldbyname('PARTNO').Asstring := Dm_SvSet.QInvent.FieldByName('PARTNO').Asstring;
    Dm_SvSet.QOrdtn.Fieldbyname('NETFL').Asstring := Dm_SvSet.QInvent.Fieldbyname('NETPRC').Asstring;
  end;
end;

procedure TFSpIn01.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFSpIn01.QueryBtnClick(Sender: TObject);
begin
  Application.CreateForm(TSvInHlp_20, SvInHlp_20);
  //SvInHlp_20.Grid_Part.Visible := True;
  with SvInHlp_20.QHlppart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPPART WHERE GCODE=:Edit1 ');
    Params[0].Asstring := Dm_SvSet.QOrdiv.FieldByname('GCODE').asstring;
    Open;
  end;
  if SvInHlp_20.ShowModal = MrOk then
  begin
    SvInHlp_20.QHlppart.First;
    while not (SvInHlp_20.QHlppart.Eof) do
    begin
      if SvInHlp_20.QHlppart.FieldByName('MARK').Asstring = '' then
      begin
        with Dm_SvSet.QInvent do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC ');
          Params[0].Asstring := SvInHlp_20.QHlppart.FieldByName('PARTNO').Asstring;
          Params[1].Asstring := Dm_SvSet.QOrdiv.FieldByName('ORDLOCAT').AsString;
          Open;
        end;
        if not (Dm_SvSet.QInvent.Eof and Dm_SvSet.QInvent.Bof) then
        begin
          Dm_SvSet.QOrdtn.Append;
          Dm_SvSet.QOrdtn.FieldByName('PARTNO').AsString := SvInHlp_20.QHlppart.FieldByName('PARTNO').Asstring;
          Dm_SvSet.QOrdtn.FieldByName('QTYORD').AsString := SvInHlp_20.QHlppart.FieldByName('QTY').Asstring;
          Dm_SvSet.QOrdtn.FieldByName('QTYOUT').AsString := SvInHlp_20.QHlppart.FieldByName('QTY').Asstring;

          Price := 'Price' + Edit2.text;
          if Dm_SvSet.QOrdtn.State in DsEditmodes then
          begin
            Dm_SvSet.QOrdtn.FieldByName('PARTNO').Asstring := Dm_SvSet.QInvent.FieldByName('PARTNO').Asstring;
            Dm_SvSet.QOrdtn.FieldByName('REDU1').AsFloat := Dm_SvSet.QOrdiv.FieldByName('Disct').AsFloat;
            Dm_SvSet.QOrdtn.FieldByName('REDU2').AsFloat := 0;
            Dm_SvSet.QOrdtn.FieldByName('REDU3').AsFloat := 0;
            Dm_SvSet.QOrdtn.FieldByName('UPRICE').AsFloat := Dm_SvSet.QInvent.FieldByName(Price).AsFloat;
            Pric1 := (Dm_SvSet.QOrdtnUPrice.value * (Dm_SvSet.QOrdtnRedu1.value / 100));
            SmPric1 := Dm_SvSet.QOrdtnUPrice.value - Pric1;
            Pric2 := SmPric1 * (Dm_SvSet.QOrdtnRedu2.value / 100);
            SmPric2 := SmPric1 - Pric2;
            Pric3 := SmPric2 * (Dm_SvSet.QOrdtnRedu3.value / 100);
            SmPric3 := SmPric2 - Pric3;
            Dm_SvSet.QOrdtnNetprc.AsFloat := SmPric3;
            Dm_SvSet.QOrdtnTotPrc.AsFloat := Dm_SvSet.QOrdtnNetprc.AsFloat * Dm_SvSet.QOrdtnQTYOUT.AsFloat;
            Dm_SvSet.QOrdtn.Post;
          end;
        end;
      end;
      SvInHlp_20.QHlppart.Next;
    end;
  end;
end;

procedure TFSpIn01.PrnBtnClick(Sender: TObject);
begin
  if DBEdit3.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PKsv.fr3', '1');
end;

procedure TFSpIn01.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSV', 'HDSV1_03');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFSpIn01.Showjob;
begin
  with Dm_SvSet.QJobord do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM JOBORDER WHERE JOBNO = :XNOO ');
    Params[0].Asstring := DBEdit5.Text;
    Open;
  end;
  if Dm_SvSet.QJobord.bof and Dm_SvSet.QJobord.Eof then
    SFMain.RaiseException('ไม่พบ JOB หมายเลขนี้ ');
  if Dm_SvSet.QJobord.FieldByName('Status').Asstring <> 'W' then
    SFMain.RaiseException('Job นี้ได้ปิดไปแล้ว');
  Dm_SvSet.QOrdiv.FieldByName('JOBNO').Asstring := Dm_SvSet.QJobord.FieldByName('JOBNO').Asstring;
  Dm_SvSet.QOrdiv.FieldByName('VATTYPE').Asstring := Dm_SvSet.QJobord.FieldByName('VATTYPE').Asstring;
  ;
  Dm_SvSet.QOrdiv.FieldByName('CUSCOD').Asstring := Dm_SvSet.QJobord.FieldByName('CUSCOD').Asstring;
  ;
  Dm_SvSet.QOrdiv.FieldByName('GCODE').Asstring := Dm_SvSet.QJobord.FieldByName('GROUP1').Asstring;
  ;
  Dm_SvSet.QOrdiv.FieldByName('CAMPNO').Asstring := Dm_SvSet.QJobord.FieldByName('CAMPNO').Asstring;
  ;

  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM View_Svmast WHERE Strno = :XStr ');
    Params[0].Asstring := Dm_SvSet.QJobord.FieldByName('STRNO').Asstring;
    Open;
  end;

  Edit1.Text := Dm_SvSet.Query1.FieldByName('REGNO').Asstring;
  Edit5.Text := Dm_SvSet.Query1.Fieldbyname('SNAM').Asstring + ' ' +
    Dm_SvSet.Query1.Fieldbyname('NAME1').Asstring + ' ' +
    Dm_SvSet.Query1.Fieldbyname('NAME2').Asstring;

  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT CUSCOD,DISCT,SALLEV ' +
      'FROM CUSTMAST WHERE CUSCOD =:CUSCOD ');
    Params[0].Asstring := Dm_SvSet.QJobord.FieldByName('Cuscod').Asstring;
    Open;
  end;
  Dm_SvSet.QOrdiv.FieldByName('DISCT').AsFloat := Dm_SvSet.Query1.Fieldbyname('DISCT').AsFloat;
  Edit2.text := Dm_SvSet.Query1.Fieldbyname('Sallev').AsString;
  if Dm_SvSet.QJobord.FieldByName('Status').Asstring <> 'W' then
    SFMain.RaiseException('ปิด Job แล้วไม่สามารถเบิกอะไหล่');
end;

procedure TFSpIn01.DBEdit5Exit(Sender: TObject);
begin
  if DBEdit9.Text = '' then
    Showjob;
end;

procedure TFSpIn01.CampBtnClick(Sender: TObject);
var
  Allo: string;
  Xqty: Double;
  Xdate: Tdatetime;
  XYear, XMonth, XDay: Word;
begin
  if MessageDlg('ต้องการจ่ายอะไหล่ตามแคมเปญ Setup ? ', Mtconfirmation, [Mbyes, Mbno], 0) = Mryes then
  begin
    with Dm_Svset.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CAMPPART WHERE CAMPNO=:Edit1 ');
      Params[0].Asstring := Dm_Svset.QOrdivCAMPNO.Asstring;
      Open;
    end;
    if not (Dm_Svset.Query1.Bof and Dm_Svset.Query1.Eof) then
    begin
      Dm_Svset.Query1.First;
      while not (Dm_Svset.Query1.Eof) do
      begin
        Xdate := Dm_Svset.QOrdivORDDATE.AsDateTime;
        DecodeDate(Xdate, XYear, XMonth, XDay);
        Allo := 'Allo_' + inttostr(XMonth);

        Dm_SvSet.QOrdtn.Append;
        Dm_SvSet.QOrdtn.FieldByName('PARTNO').AsString := Dm_SvSet.Query1.FieldByName('PARTNO').Asstring;
        Dm_SvSet.QOrdtn.FieldByName('QTYORD').Asfloat := Dm_SvSet.Query1.FieldByName('QTY').Asfloat;
        Dm_SvSet.QOrdtn.FieldByName('QTYOUT').Asfloat := Dm_SvSet.Query1.FieldByName('QTY').Asfloat;
        Dm_SvSet.QOrdtn.FieldByName('REDU1').AsFloat := Dm_SvSet.Query1.FieldByName('Disct').AsFloat;
        Dm_SvSet.QOrdtn.FieldByName('REDU2').AsFloat := 0;
        Dm_SvSet.QOrdtn.FieldByName('REDU3').AsFloat := 0;
        Dm_SvSet.QOrdtn.FieldByName('UPRICE').AsFloat := Dm_SvSet.Query1.FieldByName('Price').AsFloat;
        Dm_SvSet.QOrdtn.FieldByName('GROUP1').Asstring := Dm_SvSet.Query1.Fieldbyname('GROUP1').Asstring;
        Dm_SvSet.QOrdtn.FieldByName('CAMPNO').AsString := Dm_SvSet.Query1.FieldByName('CAMPNO').Asstring;
        Dm_SvSet.QOrdtn.FieldByName('CAMFLG').AsString := 'Y';
        Dm_SvSet.QOrdtn.FieldByName('Netprc').AsFloat := Dm_SvSet.Query1.FieldByName('NetAMT').AsFloat;
        Dm_SvSet.QOrdtn.FieldByName('TotPrc').AsFloat := Dm_SvSet.Query1.FieldByName('Totamt').AsFloat;
        Dm_SvSet.QOrdtn.Post;
        Dm_SvSet.Query1.Next;
      end;
    end;
  end;
end;

procedure TFSpIn01.AutoBtnClick(Sender: TObject);
begin
  Application.CreateForm(TSvInHlp_20, SvInHlp_20);
  //SvInHlp_20.Grid_Part.Visible := True;
  with SvInHlp_20.QHlppart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPPART WHERE GCODE=:Edit1 ');
    Params[0].Asstring := Dm_SvSet.QOrdiv.FieldByname('GCODE').asstring;
    Open;
  end;
  if SvInHlp_20.ShowModal = MrOk then
  begin
    SvInHlp_20.QHlppart.First;
    while not (SvInHlp_20.QHlppart.Eof) do
    begin
      if SvInHlp_20.QHlppart.FieldByName('MARK').Asstring = '' then
      begin
        with Dm_SvSet.QInvent do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC ');
          Params[0].Asstring := SvInHlp_20.QHlppart.FieldByName('PARTNO').Asstring;
          Params[1].Asstring := Dm_SvSet.QOrdiv.FieldByName('ORDLOCAT').AsString;
          Open;
        end;
        if not (Dm_SvSet.QInvent.Eof and Dm_SvSet.QInvent.Bof) then
        begin
          Dm_SvSet.QOrdtn.Append;
          Dm_SvSet.QOrdtn.FieldByName('PARTNO').AsString := SvInHlp_20.QHlppart.FieldByName('PARTNO').Asstring;
          Dm_SvSet.QOrdtn.FieldByName('QTYORD').AsString := SvInHlp_20.QHlppart.FieldByName('QTY').Asstring;
          Dm_SvSet.QOrdtn.FieldByName('QTYOUT').AsString := SvInHlp_20.QHlppart.FieldByName('QTY').Asstring;

          Price := 'Price' + Edit2.text;
          if Dm_SvSet.QOrdtn.State in DsEditmodes then
          begin
            Dm_SvSet.QOrdtn.FieldByName('PARTNO').Asstring := Dm_SvSet.QInvent.FieldByName('PARTNO').Asstring;
            Dm_SvSet.QOrdtn.FieldByName('REDU1').AsFloat := Dm_SvSet.QOrdiv.FieldByName('Disct').AsFloat;
            Dm_SvSet.QOrdtn.FieldByName('REDU2').AsFloat := 0;
            Dm_SvSet.QOrdtn.FieldByName('REDU3').AsFloat := 0;
            Dm_SvSet.QOrdtn.FieldByName('UPRICE').AsFloat := Dm_SvSet.QInvent.FieldByName(Price).AsFloat;
            Pric1 := (Dm_SvSet.QOrdtnUPrice.value * (Dm_SvSet.QOrdtnRedu1.value / 100));
            SmPric1 := Dm_SvSet.QOrdtnUPrice.value - Pric1;
            Pric2 := SmPric1 * (Dm_SvSet.QOrdtnRedu2.value / 100);
            SmPric2 := SmPric1 - Pric2;
            Pric3 := SmPric2 * (Dm_SvSet.QOrdtnRedu3.value / 100);
            SmPric3 := SmPric2 - Pric3;
            Dm_SvSet.QOrdtnNetprc.AsFloat := SmPric3;
            Dm_SvSet.QOrdtnTotPrc.AsFloat := Dm_SvSet.QOrdtnNetprc.AsFloat * Dm_SvSet.QOrdtnQTYOUT.AsFloat;
            Dm_SvSet.QOrdtn.Post;
          end;
        end;
      end;
      SvInHlp_20.QHlppart.Next;
    end;
  end;
end;

procedure TFSpIn01.DBGrid1DblClick(Sender: TObject);
begin
  if DBEdit5.Text = '' then
    sfmain.RaiseException('ไม่พบเลขที่ใบแจ้งซ่อม<br/>ใบแจ้งซ่อมจะอ้างอิงรหัสลูกค้า เพื่อดูระดับราคาขาย');

  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalParts = Mrok then
  begin
    with Dm_svset.QInvent do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO=:XPART AND LOCAT=:XLOC ');
      Params[0].Asstring := fSrcDlg1.KeyNo;
      Params[1].Asstring := sfMain.XLocat;
      Open;
    end;
    if Dm_svSet.QInvent.Bof and Dm_svSet.QInvent.Eof then
      SFMain.RaiseException('ไม่พบข้อมูล');
    //
    Price := 'Price' + Edit2.text;
    Dm_SvSet.QOrdtn.edit;
    Dm_SvSet.QOrdtnREDU1.AsFloat := Dm_SvSet.QOrdivDisct.AsFloat;
    if Dm_SvSet.QInvent.Fieldbyname('NETPRC').Asstring <> 'N' then
      Dm_SvSet.QOrdtn.Fieldbyname('UPRICE').AsFloat := Dm_SvSet.QInvent.Fieldbyname(Price).AsFloat;
    Dm_SvSet.QOrdtn.Fieldbyname('PARTNO').Asstring := Dm_SvSet.QInvent.FieldByName('PARTNO').Asstring;
    Dm_SvSet.QOrdtn.Fieldbyname('NETFL').Asstring := Dm_SvSet.QInvent.Fieldbyname('NETPRC').Asstring;
  end;
end;

procedure TFSpIn01.DBMemo1Click(Sender: TObject);
begin
  FSpIn01.KeyPreview := False;
end;

procedure TFSpIn01.DBMemo1Exit(Sender: TObject);
begin
  FSpIn01.KeyPreview := True;
end;

procedure TFSpIn01.RzDBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFSpIn01.DBEdit1Change(Sender: TObject);
begin
  with Dm_svset.Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD =:Edit1');
    params[0].AsString := DBEdit1.Text;
    open;
  end;
  Edit3.Text := Dm_SVSET.Query1.fieldbyname('LOCATNM').AsString;
end;

procedure TFSpIn01.DBEdit4Change(Sender: TObject);
begin
  with Dm_svset.Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM ENGINEER WHERE ENCODE =:Edit1');
    params[0].AsString := DBEdit4.Text;
    open;
  end;
  Edit4.Text := Dm_SVset.Query1.fieldbyname('ENNAME').AsString;
end;

procedure TFSpIn01.FormShow(Sender: TObject);
begin
  with Dm_SvSet.QOrdiv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SV_ORDIV WHERE ORDNO ='''' ');
    OPEN;
  end;

  with Dm_SvSet.QOrdtn do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM SV_ORDTN WHERE ORDNO ='''' ');
    OPEN;
  end;
end;

procedure TFSpIn01.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalLocat = Mrok then
  begin
    Dm_SvSet.QOrdiv.FieldByName('ORDLOCAT').Asstring := fSrcDlg1.qrFindDat.FieldByName('LOCATCD').Asstring;
  end;
end;

procedure TFSpIn01.DBEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfFindData, fFindData);
  if fFindData.ShowModalEngineer = Mrok then
    Dm_SvSet.QOrdiv.FieldByName('OFFICCOD').Asstring := fFindData.KeyNo;
end;

procedure TFSpIn01.DBEdit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.CreateForm(THelpJobNew, HelpJobNew);
  if HelpJobNew.ShowModal = MrOk then
  begin
    Dm_SvSet.QOrdiv.FieldByName('JOBNO').Asstring := HelpJobNew.QHlp.FieldByName('JOBNO').Asstring;
    Showjob;
  end;
end;

procedure TFSpIn01.DBEdit8PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalGrpMst = Mrok then
  begin
    Dm_SvSet.QOrdiv.FieldByName('GCODE').Asstring := fSrcDlg1.qrFindDat.FieldByName('GCODE').Asstring;
  end;
end;

procedure TFSpIn01.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_PKsv.fr3', '2');
end;

procedure TFSpIn01.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
// IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
//  IF Uppercase(NAME)='DATETHAI' Then
//  Begin
//     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
//  End;
end;

procedure TFSpIn01.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if Uppercase(VarName) = 'PORDNO' then
    Value := DBEdit3.Text;
end;

end.

