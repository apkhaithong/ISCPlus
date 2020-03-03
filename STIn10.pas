unit STIn10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask, DB, ComCtrls,
  Gauges, Dbkbd, ImgList, ToolWin, RzDbkbd, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxButtonEdit, cxLookAndFeelPainters, cxGroupBox,
  cxRadioGroup, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxContainer,
  cxTextEdit, AdvToolBar, AdvPanel, AdvGlowButton, ActnList, cxLookAndFeels,
  dxDateRanges, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxNavigator, dxStatusBar, RzLabel, RzDBLbl, frxExportXLSX,
  frxRich, frxTableObject, frxClass, frxDCtrl, frxFDComponents, frxGradient,
  frxExportImage, frxExportPDF, frxBDEComponents, frxExportBaseDialog,
  frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTIn10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Gauge1: TGauge;
    Label4: TLabel;
    Label17: TLabel;
    Label27: TLabel;
    Label16: TLabel;
    wwDBGrid1: TcxGrid;
    wwDBGridTrData: TcxGridDBTableView;
    wwDBGridTrDataITEMNO: TcxGridDBColumn;
    wwDBGridTrDataPARTNO: TcxGridDBColumn;
    wwDBGridTrDataQTYORD: TcxGridDBColumn;
    wwDBGridTrDataQTYBOD: TcxGridDBColumn;
    wwDBGridTrDataQTYOUT: TcxGridDBColumn;
    wwDBGridTrDataUCOST: TcxGridDBColumn;
    wwDBGridTrDataNETCOST: TcxGridDBColumn;
    wwDBGrid1Level1: TcxGridLevel;
    Edit3: TcxTextEdit;
    Edit2: TcxTextEdit;
    AdjDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit11: TcxDBButtonEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    TFBtn: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    Action1: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    RzDBLabel1: TRzDBLabel;
    Query7: TFDQuery;
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure editBtnClick(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TFBtnClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure wwDBGridTrDataPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit11PropertiesChange(Sender: TObject);
    procedure AdjDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTIn10: TFmSTIn10;
  XDate: TDateTime;
  XDay, XMonth, XYear: Word;

implementation

uses
  Dmic01, STHpIn10, uSrcDlg, DmSet1, USoftFirm, unfrPreview, Dmsec;
{$R *.DFM}

var
  XRECVNO: string;

procedure TFmSTIn10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmDmic01.TmpAjiv.Close;
  FmDmic01.TmpAjtr.Close;

  FmSTIn10 := Nil;
  Action := Cafree;
end;

procedure TFmSTIn10.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    if not (ActiveControl is TDbGrid) and
      not (ActiveControl is TDBMemo) then
    begin
      Perform(Wm_nextDlgctl, 0, 0);
      Key := #0;
    end
end;

procedure TFmSTIn10.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
//  InsBtn.Enabled    := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  TFBtn.Enabled := SaveBtn.Visible;
  SpeedButton3.Enabled := SaveBtn.Visible;
  //
  wwDBGridTrData.NavigatorButtons.Insert.Enabled := SaveBtn.Visible;
  wwDBGridTrData.NavigatorButtons.Delete.Enabled := SaveBtn.Visible;
  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');
  SpeedButton2.Enabled := (DataSource1.Dataset.State = Dsbrowse) and
    (FmDmic01.TmpAjiv.Fieldbyname('Flag').Asstring = 'B');

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
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := False;
        TcxDBDateEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxGrid) and (TcxGrid(Components[N]).Tag = 0) then
      begin
        TcxGrid(Components[N]).Enabled := False;
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
        TcxDBTextEdit(Components[N]).Properties.ReadOnly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxDBDateEdit) and (TcxDBDateEdit(Components[N]).Tag = 0) then
      begin
        TcxDBDateEdit(Components[N]).Enabled := True;
        TcxDBDateEdit(Components[N]).Style.Color := clWhite;
      end;
      if (Components[N] is TcxGrid) and (TcxGrid(Components[N]).Tag = 0) then
      begin
        TcxGrid(Components[N]).Enabled := True;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  if not FmDmic01.QDBConfig.Active then
    FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_AJTM').asstring = 'Y';
   //
  DBEdit1.Enabled := sfMain.XLevel = '1';
end;

procedure TFmSTIn10.FormShow(Sender: TObject);
begin
  with FmDmic01.TmpAjiv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TMPAJIV WHERE ADJNO ='''' ');
    OPEN;
  end;

  with FmDmic01.TMPAJTr do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM TMPAJTR WHERE ADJNO ='''' ');
    OPEN;
  end;
end;

procedure TFmSTIn10.CancBtnClick(Sender: TObject);
begin
  if FmDmic01.TmpAjiv.State in Dseditmodes then
    FmDmic01.TmpAjiv.Cancel;
end;

procedure TFmSTIn10.SaveBtnClick(Sender: TObject);
begin
  if FmDmic01.TmpAjtr.RecordCount = 0 then
    sfMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_B_4', 'INSERT', FmDmic01.TmpAjIv.FieldByName('ADJNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_B_4', 'EDIT', FmDmic01.TmpAjIv.FieldByName('ADJNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

  FmDmic01.TMPAJTr.First;
  FmDmic01.TmpAjiv.Post;

  with FmDmic01.TMPAJTr do
  begin
    Close;
    SQL.Clear;
    if FmDmic01.TMPAJIV.Fieldbyname('Exptyp').asstring = '1' then
      SQL.Add('SELECT * FROM TMPAJTR WHERE ADJNO =:XADJNO ORDER BY SHELF');
    if FmDmic01.TMPAJIV.Fieldbyname('Exptyp').asstring = '2' then
      SQL.Add('SELECT * FROM TMPAJTR WHERE ADJNO =:XADJNO ORDER BY GROUP1,SHELF');
    if FmDmic01.TMPAJIV.Fieldbyname('Exptyp').asstring = '3' then
      SQL.Add('SELECT * FROM TMPAJTR WHERE ADJNO =:XADJNO ORDER BY PARTNO');

    PARAMS[0].ASSTRING := FmDmic01.TmpAjIv.FieldByname('ADJNO').Asstring;
    OPEN;
  end;
end;

procedure TFmSTIn10.delBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  if FmDmic01.TmpAjiv.Fieldbyname('Flag').Asstring = 'A' then
    sfMain.RaiseException('ต้องไปยกเลิกเอกสารหัวข้อปรับปรุงยอดสินค้าก่อน #' +
      FmDmic01.TmpAjiv.Fieldbyname('Adjno').Asstring);

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_B_4', 'DELETE', FmDmic01.TmpAjiv.FieldByName('ADJNO').AsString);
        if DM_SEC.qrRecent.UpdatesPending then
          if (DM_SEC.qrRecent.ApplyUpdates = 0) then
            DM_SEC.qrRecent.CommitUpdates
          else
            raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        FmDmic01.TmpAjiv.Delete;
      end;
  end;
end;

procedure TFmSTIn10.editBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalCHKSTK = Mrok then
  begin
    with FmDmic01.TMPAJIV do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM TMPAJIV WHERE ADJNO =:XADJNO');
      PARAMS[0].ASSTRING := fSrcDlg.Keyno;
      OPEN;
    end;

    with FmDmic01.TMPAJTr do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM TMPAJTR WHERE ADJNO =:XADJNO ORDER BY ITEMNO ');
      PARAMS[0].ASSTRING := fSrcDlg.Keyno;
      OPEN;
    end;
  end;
end;

procedure TFmSTIn10.DeleBtnClick(Sender: TObject);
begin
  FmDmic01.TmpAjtr.Delete;
end;

procedure TFmSTIn10.DBGrid2DblClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    FmDmic01.TmpAjtrPARTNO.Asstring := fSrcDlg.KeyNo;
  end;
end;

procedure TFmSTIn10.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_Down:
      Perform(Wm_nextDlgctl, 0, 0);
    Vk_Up:
      Perform(Wm_nextDlgctl, 1, 0);
  end;
end;

procedure TFmSTIn10.SpeedButton2Click(Sender: TObject);
var
  P: Longint;
begin
  sfmain.AdvSmoothMessageDialog5.Caption := 'ยืนยันปรับยอดสินค้า?';
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin

        Gauge1.Visible := True;
        Gauge1.MaxValue := FmDmic01.TMPAJTr.RecordCount;
        P := 0;
      // Update Flag
        with FmDmic01.ADJINV do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM ADJ_INVOI WHERE ADJNO =:XADJNO');
          PARAMS[0].ASSTRING := '';
          OPEN;
        end;

        with FmDmic01.ADJTran do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM ADJ_TRANS WHERE ADJNO =:XADJNO');
          PARAMS[0].ASSTRING := '';
          OPEN;
        end;

        with query7 do
        begin
          close;
          sql.Clear;
          sql.Add('SELECT * FROM TMPAJTR WHERE QtyOut <> 0 AND ADJNO =:XADJNO');
          params[0].AsString := DBEdit2.Text;
          open;
        end;

        FmDmic01.AdjinvADJDATE.OnValidate := Nil;
        FmDmic01.Adjinv.BeforePost := Nil;

        FmDmic01.TmpAjiv.Edit;
        FmDmic01.TmpAjivFlag.AsString := 'A';
      {FmDmic01.TmpAjTr.First;
      While Not FmDmic01.TmpAjTr.Eof Do
      Begin
        FmDmic01.TmpAjTr.Edit;
        FmDmic01.TmpAjTrFlag.AsString := 'A';
        FmDmic01.TmpAjTr.Next;
      end; }
      //
        with FmDmic01 do
        begin
          Adjinv.Insert;
          AdjinvOfficcod.AsString := TmpAjivOfficcod.AsString;
          AdjinvAdjloc.AsString := TmpAjivAdjLoc.AsString;
          AdjinvADjDate.AsDatetime := TmpAjivAdjDate.AsDatetime;
          AdjinvAdjNo.AsString := TmpAjivAdjNo.AsString;
          AdjinvFlag.AsString := TmpAjivFlag.AsString;
          AdjinvMemo1.AsString := TmpAjivMemo1.AsString;
          AdjinvTotcost.AsFloat := TmpAjivTotcost.AsFloat;
        end;

        query7.First;
        while not query7.Eof do
        begin
        //If FmDmic01.TmpAjTrQtyOut.AsFloat<>0 Then
        //Begin
          FmDmic01.AdjTran.Insert;
          FmDmic01.AdjTranAdjNo.AsString := query7.fieldbyname('AdjNo').AsString;
          FmDmic01.AdjTranAdjLoc.AsString := query7.fieldbyname('AdjLoc').AsString;
          FmDmic01.AdjTranAdjDate.AsString := query7.fieldbyname('AdjDate').AsString;
          FmDmic01.AdjTranPartno.AsString := query7.fieldbyname('Partno').AsString;
          FmDmic01.AdjTranUcost.AsFloat := query7.fieldbyname('Ucost').AsFloat;
          FmDmic01.AdjTranQtyOrd.AsFloat := query7.fieldbyname('QtyOrd').AsFloat;
          FmDmic01.AdjTranQtyOut.AsFloat := query7.fieldbyname('QtyOut').AsFloat;
          FmDmic01.AdjTranQtyBod.AsFloat := query7.fieldbyname('QtyBod').AsFloat;
          FmDmic01.AdjTranNetcost.AsFloat := query7.fieldbyname('Netcost').AsFloat;
          FmDmic01.AdjTranTotcost.AsFloat := query7.fieldbyname('Totcost').AsFloat;
          FmDmic01.AdjTranFlag.AsString := query7.fieldbyname('Flag').AsString;
          FmDmic01.AdjTran.Post;
        //end;
          P := P + 1;
          Gauge1.Progress := P;
          query7.Next;
        end;
        FmDmic01.Adjinv.Post;
        FmDmic01.TmpAjiv.Post;
        FmDmic01.AdjinvADJDATE.OnValidate := FmDmic01.AdjinvADJDATEValidate;
        FmDmic01.Adjinv.BeforePost := FmDmic01.AdjinvBeforePost;
      //
        FmDmic01.Adjinv.Close;
        FmDmic01.AdjTran.Close;

        with FmDmic01.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('UPDATE TMPAJTR SET FLAG = ''A'' WHERE ADJNO=:EDIT1');
          Params[0].Asstring := FmDmic01.TmpAjIvADJNO.Asstring;
          Execsql;
        end;
      //
        Gauge1.Progress := 0;
        showmessage('ปรับปรุงสต็อกประจำงวดเรียบร้อยแล้ว..');
      end;
  end;
  sfmain.AdvSmoothMessageDialog5.Caption := 'กรุณาตรวจสอบข้อมูล';
end;

procedure TFmSTIn10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_B_4');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;

  if not FmDmic01.CondPay.Active then
    FmDmic01.CondPay.Open;
end;

procedure TFmSTIn10.TFBtnClick(Sender: TObject);
var
  S: string;
begin
  S := FmDmic01.TmpAjIvADJNO.Asstring;
  sfmain.AdvSmoothMessageDialog5.Caption := 'ต้องการ Copy ยอดในเครื่องมาใส่ยอดตรวจนับ?';
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        with FmDmic01.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('UPDATE TMPAJTR SET QTYBOD=QTYORD WHERE ADJNO=:EDIT1');
          Params[0].Asstring := FmDmic01.TmpAjIvADJNO.Asstring;
          Execsql;

          Close;
          Sql.Clear;
          Sql.Add('UPDATE TMPAJTR SET QTYOUT=QTYBOD-QTYORD WHERE ADJNO=:EDIT1 ');
          Params[0].Asstring := FmDmic01.TmpAjIvADJNO.Asstring;
          Execsql;

          Close;
          Sql.Clear;
          Sql.Add('UPDATE TMPAJTR SET Netcost=QtyOut*Ucost,Totcost=QtyOut*Ucost WHERE ADJNO=:EDIT1 ');
          Params[0].Asstring := FmDmic01.TmpAjIvADJNO.Asstring;
          Execsql;
        end;

        with FmDmic01.TMPAJIV do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM TMPAJIV WHERE ADJNO =:XADJNO');
          PARAMS[0].ASSTRING := S;
          OPEN;
        end;

        with FmDmic01.TMPAJTr do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM TMPAJTR WHERE ADJNO =:XADJNO ORDER BY ITEMNO');
          PARAMS[0].ASSTRING := S;
          OPEN;
        end;
      end;
  end;
  sfmain.AdvSmoothMessageDialog5.Caption := 'กรุณาตรวจสอบข้อมูล';
end;

procedure TFmSTIn10.SpeedButton3Click(Sender: TObject);
begin
  sfmain.AdvSmoothMessageDialog5.Caption := 'ต้องการยกเลิกการ Copy ยอด?';
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        with FmDmic01.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('UPDATE TMPAJTR SET QTYBOD=Null WHERE ADJNO=:EDIT1');
          Params[0].Asstring := FmDmic01.TmpAjIvADJNO.Asstring;
          Execsql;
        //
          Close;
          Sql.Clear;
          Sql.Add('UPDATE TMPAJTR SET QTYOUT=Null WHERE ADJNO=:EDIT1');
          Params[0].Asstring := FmDmic01.TmpAjIvADJNO.Asstring;
          Execsql;
        end;

        with FmDmic01.TMPAJIV do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM TMPAJIV WHERE ADJNO =:XADJNO');
          PARAMS[0].ASSTRING := FmDmic01.TmpAjIvADJNO.Asstring;
          OPEN;
        end;

        with FmDmic01.TMPAJTr do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM TMPAJTR WHERE ADJNO =:XADJNO');
          PARAMS[0].ASSTRING := FmDmic01.TmpAjIvADJNO.Asstring;
          OPEN;
        end;
      end;
  end;
  sfmain.AdvSmoothMessageDialog5.Caption := 'กรุณาตรวจสอบข้อมูล';
end;

procedure TFmSTIn10.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTIn10.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F7:
      EditBtnClick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SaveBtnClick(Sender);
        //Vk_F5 : InsBtnClick(Sender);
  end;
end;

procedure TFmSTIn10.wwDBGridTrDataPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    FmDmic01.TmpAjtrPARTNO.Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTIn10.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.TmpAjivADJLoc.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn10.DBEdit1PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD =:EDIT1');
    PARAMS[0].ASSTRING := DBEdit1.TEXT;
    OPEN;
    EDIT3.TEXT := FmDmic01.Query2.FieldByname('LOCATNM').Asstring;
  end;
end;

procedure TFmSTIn10.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
  begin
    FmDmic01.TmpAjivOfficcod.Asstring := fSrcDlg.Keyno;
  end;
end;

procedure TFmSTIn10.DBEdit11PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CODE,NAME FROM OFFICER WHERE CODE =:XOFFICCOD');
    PARAMS[0].ASSTRING := DBEdit11.TEXT;
    OPEN;
    EDIT2.TEXT := FmDmic01.Query2.FieldByname('NAME').Asstring;
  end;
end;

procedure TFmSTIn10.AdjDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.TmpAjiv.fieldbyname('ADJDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.TmpAjIv.fieldbyname('ADJDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.TmpAjIv.fieldbyname('ADJDATE').AsDateTime := FmDmic01.TmpAjIv.fieldbyname('ADJDATE').AsDateTime;
  end;
end;

procedure TFmSTIn10.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
//  IF Uppercase(NAME)='DATETHAI' Then
//  Begin
//     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
//  End;
end;

procedure TFmSTIn10.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PADJTMP' then
    Value := DBEdit2.Text;
end;

procedure TFmSTIn10.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_AdjTmpUpdate.fr3', '1');
end;

procedure TFmSTIn10.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_AdjTmpUpdate.fr3', '2');
end;

end.

