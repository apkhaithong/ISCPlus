unit Stin07;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons, Mask, ComCtrls, DB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxDateRanges, System.Actions, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxButtonEdit, Dbkbd, Vcl.ActnList,
  AdvToolBar, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, AdvGlowButton,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxRadioGroup,
  cxMemo, RzLabel, RzDBLbl, AdvPanel, frxExportXLSX, frxRich, frxTableObject,
  frxClass, frxDCtrl, frxFDComponents, frxGradient, frxExportImage,
  frxExportPDF, frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross,
  frxChBox, frxChart, frxBarcode;

type
  TFmSTIn07 = class(TForm)
    AdvPanel1: TAdvPanel;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    cxDBMemo1: TcxDBMemo;
    DBRadioGroup1: TcxDBRadioGroup;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label23: TLabel;
    Label39: TLabel;
    Edit3: TcxTextEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    QuaDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit9: TcxDBButtonEdit;
    DBEdit6: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit17: TRzDBLabel;
    Bevel1: TBevel;
    KitBtn: TAdvGlowButton;
    Label1: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit4: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    ActionList1: TActionList;
    actEditPrn: TAction;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranPARTDESC: TcxGridDBColumn;
    cxGridTranQTYOUT: TcxGridDBColumn;
    cxGridTranUPRICE: TcxGridDBColumn;
    cxGridTranNETFL: TcxGridDBColumn;
    cxGridTranREDU3: TcxGridDBColumn;
    cxGridTranNETPRC: TcxGridDBColumn;
    cxGridTranTOTPRC: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    cxGridTranQTYORD: TcxGridDBColumn;
    cxGridTranREDU2: TcxGridDBColumn;
    cxGridTranREDU1: TcxGridDBColumn;
    DBkbd1: TDBkbd;
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
    procedure FormShow(Sender: TObject);
    procedure insBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure delBtnClick(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit7BtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure KitBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure RzRapidFireButton6Click(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit6PropertiesChange(Sender: TObject);
    procedure DBEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit9PropertiesChange(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTIn07: TFmSTIn07;
  Smnettot: Double;

implementation

uses
  Dmic01, uSoftfirm, DmSet1, uSrcDlg, Dlginvms, Stprn10, Functn01, Hlpptkit,
  Dmsec;

{$R *.DFM}

procedure TFmSTIn07.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {FmDmic01.Qainv.Close;
  FmDmic01.Qatran.Close;}
  Action := Cafree;
  FmSTIn07 := Nil;
end;

procedure TFmSTIn07.FormShow(Sender: TObject);
begin
  FormatSettings.ShortdateFormat := ('dd/mm/yyyy');
  with FmDmic01.QAinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM QAINVOI WHERE QANO =:XQANO');
    PARAMS[0].ASSTRING := '';
    OPEN;
  end;

  with FmDmic01.QAtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM QATRANS WHERE QANO ='''' ');
    OPEN;
  end;
end;

procedure TFmSTIn07.insBtnClick(Sender: TObject);
begin
  with FmDmic01.QAinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM QAINVOI WHERE QANO ='''' ');
    OPEN;
    INSERT;
  end;

  with FmDmic01.QAtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM QATRANS WHERE QANO ='''' ');
    OPEN;
  end;
  if DBEdit1.Enabled = false then
    DBEdit6.SetFocus
  else
    DBEdit1.SetFocus;
end;

procedure TFmSTIn07.CancBtnClick(Sender: TObject);
begin
  FmDmic01.QAinv.Cancel;
end;

procedure TFmSTIn07.SavBtnClick(Sender: TObject);
begin
  if FmDmic01.QATran.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');

  FmDmic01.QAinv.Post;
end;

procedure TFmSTIn07.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EnqBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SavBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');
  KitBtn.Enabled := (SavBtn.Visible);

  cxGridTran.NavigatorButtons.Insert.Enabled := SavBtn.Visible;
  cxGridTran.NavigatorButtons.Delete.Enabled := SavBtn.Visible;
  cxGridTran.NavigatorButtons.Append.Enabled := SavBtn.Visible;

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

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := True;
        TcxDBMemo(Components[N]).Style.Color := clBtnFace;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clBtnface;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
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

      if (Components[N] is TcxDBMemo) and (TcxDBMemo(Components[N]).Tag = 0) then
      begin
        TcxDBMemo(Components[N]).Properties.ReadOnly := False;
        TcxDBMemo(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxTextEdit) and (TcxTextEdit(Components[N]).Tag = 0) then
      begin
        TcxTextEdit(Components[N]).Style.Color := clWhite;
      end;

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
    end;
  end;
  FmDmic01.QDBConfig.Close;
  FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_QA1').asstring = 'Y';
   //
  DBEdit1.Enabled := (sfmain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  QuaDate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
  DBEdit15.Properties.ReadOnly := True;
end;

procedure TFmSTIn07.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TFSrcDlg, FSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    FSrcDlg.XSrLocat := ''
  else
    FSrcDlg.XSrLocat := sfmain.Xlocat;
  if FSrcDlg.ShowModalQainv = Mrok then
  begin
    with FmDmic01.QAinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM QAINVOI WHERE QANO =:XQANO');
      PARAMS[0].ASSTRING := FSrcDlg.Keyno;
      OPEN;
    end;
    with FmDmic01.QAtran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM QATRANS WHERE QANO =:XQANO');
      PARAMS[0].ASSTRING := FmDmic01.QAinvQAno.Asstring;
      OPEN;
    end;
  end;
end;

procedure TFmSTIn07.delBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        FmDmic01.QAinv.Delete;
      end;
  end;
end;

procedure TFmSTIn07.DBRadioGroup1Click(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 0 then
    FmDmic01.QAinvVATTYPE.Asstring := '1';
  if DBRadioGroup1.ItemIndex = 1 then
    FmDmic01.QAinvVATTYPE.Asstring := '2';
end;

procedure TFmSTIn07.DBEdit21Exit(Sender: TObject);
begin
{   FmDmic01.QAinvBALANCE.AsFloat := FmDmic01.QAinvTotprc.AsFloat - FmDmic01.QAinvDISCAMT.AsFloat;
   If FmDmic01.QAinvVATTYPE.Asstring = '1' then
   begin
      FmDmic01.QAinvNettotal.AsFloat:= FmDmic01.QAinvBALANCE.AsFloat;
      FmDmic01.QAinvNETAMT.AsFloat  := (FmDmic01.QAinvBALANCE.AsFloat*100)/(100+FmDmic01.QAinvVatrt.AsFloat);
      FmDmic01.QAinvVatAmt.AsFloat  := FmDmic01.QAinvBALANCE.AsFloat - FmDmic01.QAinvNETAMT.AsFloat;
   end
   else
   If FmDmic01.QAinvVATTYPE.Asstring = '2' then
   begin
      FmDmic01.QAinvNETAMT.AsFloat  := FmDmic01.QAinvBALANCE.AsFloat;
      FmDmic01.QAinvVatAmt.AsFloat  := FmDmic01.QAinvNETAMT.AsFloat * (FmDmic01.QAinvVatrt.AsFloat/100);
      FmDmic01.QAinvNettotal.AsFloat:= FmDmic01.QAinvNETAMT.AsFloat + FmDmic01.QAinvVatAmt.AsFloat;
   end;}
end;

procedure TFmSTIn07.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_QaInvoi.fr3', '1');
end;

procedure TFmSTIn07.DBEdit7Change(Sender: TObject);
begin
  with FmDmic01.Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT OFFICCOD,OFFICNAM FROM OFFICER WHERE OFFICCOD =:XOFFICCOD');
    PARAMS[0].ASSTRING := DBEdit6.TEXT;
    OPEN;
    EDIT2.TEXT := FmDmic01.Query2.FieldByname('OFFICNAM').Asstring;
  end;
end;

procedure TFmSTIn07.DBEdit3Change(Sender: TObject);
begin
  with FmDmic01.Query1 do
  begin
    close;
    sql.clear;
    sql.add('select cuscod,snam,name1,name2,NETADD from armast ' +
      'WHERE (cuscod =:EDIT1) ORDER BY cuscod ');
    Params[0].AsString := FmDmic01.QAinvCusCod.AsString;
    OPEN;
    Edit1.Text := FmDmic01.Query1.FieldByname('SNAM').Asstring + ' ' +
      FmDmic01.Query1.FieldByname('NAME1').Asstring + '   ' +
      FmDmic01.Query1.FieldByname('NAME2').Asstring;
  end;
end;

procedure TFmSTIn07.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of//        Vk_F7 : EnqBtnclick(Sender);
    Vk_F8:
      DelBtnClick(Sender);
    Vk_F2:
      SavBtnClick(Sender);
    Vk_F5:
      InsBtnClick(Sender);
  end;
end;

procedure TFmSTIn07.DBEdit7BtnClick(Sender: TObject);
begin
  Application.Createform(TFSrcDlg, FSrcDlg);
  if FSrcDlg.ShowModalOffic = Mrok then
  begin
    with Dm_set1.QOfficer do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OFFICER WHERE OFFICCOD=:OFFICCOD');
      Params[0].Asstring := FSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.QOfficer.EOF and Dm_Set1.QOfficer.BOF then
      SFMain.RaiseException('ไม่มีข้อมูล');
    FmDmic01.QAinvOFFICCOD.Asstring := Dm_set1.QOfficer.Fieldbyname('OFFICCOD').Asstring;
    Edit2.text := Dm_set1.QOfficer.Fieldbyname('OFFICNAM').Asstring;
  end;
end;

procedure TFmSTIn07.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSP', 'HDSP01');
  DBkbd1.AllowDelete := SFMAIN.Del_right;
  DBkbd1.AllowEditing := SFMAIN.Edit_right;
  DBkbd1.AllowInsert := SFMAIN.Insert_right;

  if not FmDmic01.CondPay.Active then
    FmDmic01.CondPay.Open;
end;

procedure TFmSTIn07.KitBtnClick(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  Allo, Cost, LVPrice: string;
begin
  Xdate := FmDmic01.PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);

  Application.CreateForm(TPtKitDlg, PtKitDlg);
  if PtKitDlg.Showmodal = Mrok then
  begin
    with PtKitDlg do
    begin
      Qkittrn.First;
      while not Qkittrn.Eof do
      begin
        if Qkittrn.Fieldbyname('Mark').Asstring = '' then
        begin
          FmDmic01.Qatran.Append;

          FmDmic01.QatranPARTNO.Asstring := Qkittrn.Fieldbyname('Partno').Asstring;
          FmDmic01.QatranQtyord.Asfloat := Qkittrn.Fieldbyname('Qty').Asfloat;
          FmDmic01.QatranQtyOUT.Asfloat := Qkittrn.Fieldbyname('Qty').Asfloat;
          FmDmic01.QatranREDU1.AsFloat := FmDmic01.PkinvDisct.AsFloat;

          with FmDmic01.Query2 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
              'LOCAT = :Edit2');
            PARAMS[0].ASSTRING := FmDmic01.QatranPartno.asstring;
            PARAMS[1].ASSTRING := FmDmic01.QatranQalocat.asstring;
            Open;
          end;

          if not (FmDmic01.Query2.Eof and FmDmic01.Query2.Bof) then
          begin
            LVPrice := 'Price' + DBEdit13.text;
            FmDmic01.QatranUPRICE.AsFloat := FmDmic01.Query2.Fieldbyname(LVPrice).AsFloat;
            FmDmic01.QatranNetFl.Asstring := FmDmic01.Query2.Fieldbyname('NETPRC').Asstring;
            //FmDmic01.QatranGroup1.Asstring   := FmDmic01.Query2.Fieldbyname('Group1').Asstring;
          end;

          with FmDmic01.Query3 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT *  FROM INVANLS WHERE PARTNO =:XPARTNO AND ' +
              'LOCAT = :Edit2 AND YEAR1 =:Xyear');
            PARAMS[0].ASSTRING := FmDmic01.QatranPartno.asstring;
            PARAMS[1].ASSTRING := FmDmic01.QatranQalocat.asstring;
            Params[2].Asstring := Inttostr(Xyear);
            Open;
          end;

          FmDmic01.QatranQtyout.Asfloat := FmDmic01.QatranQtyord.Asfloat;

          if FmDmic01.QatranNETFL.Asstring = 'N' then
          begin
            FmDmic01.QatranREDU1.AsFloat := 0;
            FmDmic01.QatranREDU2.AsFloat := 0;
            FmDmic01.QatranREDU3.AsFloat := 0;
          end;

          Pric1 := (FmDmic01.QatranUPrice.value * (FmDmic01.QatranRedu1.value / 100));
          SmPric1 := FmDmic01.QatranUPrice.value - Pric1;
          Pric2 := SmPric1 * (FmDmic01.Qatranredu2.value / 100);
          SmPric2 := SmPric1 - Pric2;
          Pric3 := SmPric2 * (FmDmic01.Qatranredu3.value / 100);
          SmPric3 := SmPric2 - Pric3;
          FmDmic01.QatranNetprc.AsFloat := SmPric3;
          FmDmic01.QatranTotPrc.AsFloat := FmDmic01.QatranNetprc.AsFloat * FmDmic01.QatranQTYOUT.AsFloat;
          FmDmic01.Qatran.post;
        end;
        Qkittrn.Next;
      end;
    end;
  end;
end;

procedure TFmSTIn07.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFmSTIn07.DBEdit9Change(Sender: TObject);
begin
  with FmDmic01.Query1 do
  begin
    close;
    sql.clear;
    sql.add('select cuscod,snam,name1,name2 from CUSTMAST ' +
      'WHERE cuscod =:0 ORDER BY cuscod ');
    Params[0].AsString := FmDmic01.QAinvCusCod.AsString;
    OPEN;
    Edit1.Text := FmDmic01.Query1.FieldByname('SNAM').Asstring + ' ' +
      FmDmic01.Query1.FieldByname('NAME1').Asstring + '   ' +
      FmDmic01.Query1.FieldByname('NAME2').Asstring;
  end;
end;

procedure TFmSTIn07.DBMemo1Click(Sender: TObject);
begin
  FmSTIn07.KeyPreview := False;
end;

procedure TFmSTIn07.DBMemo1Exit(Sender: TObject);
begin
  FmSTIn07.KeyPreview := True;
end;

procedure TFmSTIn07.RzRapidFireButton6Click(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  Allo, Cost, LVPrice: string;
begin
  Xdate := FmDmic01.PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);

  Application.CreateForm(TPtKitDlg, PtKitDlg);
  if PtKitDlg.Showmodal = Mrok then
  begin
    with PtKitDlg do
    begin
      Qkittrn.First;
      while not Qkittrn.Eof do
      begin
        if Qkittrn.Fieldbyname('Mark').Asstring = '' then
        begin
          FmDmic01.Qatran.Append;

          FmDmic01.QatranPARTNO.Asstring := Qkittrn.Fieldbyname('Partno').Asstring;
          FmDmic01.QatranQtyord.Asfloat := Qkittrn.Fieldbyname('Qty').Asfloat;
          FmDmic01.QatranQtyOUT.Asfloat := Qkittrn.Fieldbyname('Qty').Asfloat;
          FmDmic01.QatranREDU1.AsFloat := FmDmic01.PkinvDisct.AsFloat;

          with FmDmic01.Query2 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
              'LOCAT = :Edit2');
            PARAMS[0].ASSTRING := FmDmic01.QatranPartno.asstring;
            PARAMS[1].ASSTRING := FmDmic01.QatranQalocat.asstring;
            Open;
          end;

          if not (FmDmic01.Query2.Eof and FmDmic01.Query2.Bof) then
          begin
            if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.QAinvNETADD.AsFloat > 0) then
            begin
              FmDmic01.QAtranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat +
                (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat *
                (FmDmic01.QAinvNETADD.AsFloat / 100));
            end
            else
            begin
              LVPrice := 'Price' + FmDmic01.QAinvSALLEV.Asstring;
              FmDmic01.QAtranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
            end;
            FmDmic01.QAtranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
            FmDmic01.QAtranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;

       //     LvPrice := 'Price'+DBEdit13.text;
       //     FmDmic01.QatranUPRICE.AsFloat    := FmDmic01.Query2.Fieldbyname(LvPrice).AsFloat;
       //     FmDmic01.QatranNetFl.Asstring    := FmDmic01.Query2.Fieldbyname('NETPRC').Asstring;
            //FmDmic01.QatranGroup1.Asstring   := FmDmic01.Query2.Fieldbyname('Group1').Asstring;
          end;

          with FmDmic01.Query3 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT *  FROM INVANLS WHERE PARTNO =:XPARTNO AND ' +
              'LOCAT = :Edit2 AND YEAR1 =:Xyear');
            PARAMS[0].ASSTRING := FmDmic01.QatranPartno.asstring;
            PARAMS[1].ASSTRING := FmDmic01.QatranQalocat.asstring;
            Params[2].Asstring := Inttostr(Xyear);
            Open;
          end;

          FmDmic01.QatranQtyout.Asfloat := FmDmic01.QatranQtyord.Asfloat;

          if FmDmic01.QatranNETFL.Asstring = 'N' then
          begin
            FmDmic01.QatranREDU1.AsFloat := 0;
            FmDmic01.QatranREDU2.AsFloat := 0;
            FmDmic01.QatranREDU3.AsFloat := 0;
          end;

          Pric1 := (FmDmic01.QatranUPrice.value * (FmDmic01.QatranRedu1.value / 100));
          SmPric1 := FmDmic01.QatranUPrice.value - Pric1;
          Pric2 := SmPric1 * (FmDmic01.Qatranredu2.value / 100);
          SmPric2 := SmPric1 - Pric2;
          Pric3 := SmPric2 * (FmDmic01.Qatranredu3.value / 100);
          SmPric3 := SmPric2 - Pric3;
          FmDmic01.QatranNetprc.AsFloat := SmPric3;
          FmDmic01.QatranTotPrc.AsFloat := FmDmic01.QatranNetprc.AsFloat * FmDmic01.QatranQTYOUT.AsFloat;
          FmDmic01.Qatran.post;
        end;
        Qkittrn.Next;
      end;
    end;
  end;
end;

procedure TFmSTIn07.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TFSrcDlg, FSrcDlg);
  if FSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.QAinvQALOCAT.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTIn07.DBEdit1PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT LOCATNM FROM INVLOCAT WHERE LOCATCD =:0');
    PARAMS[0].ASSTRING := DBEdit1.TEXT;
    OPEN;
    EDIT3.TEXT := FmDmic01.Query2.FieldByname('LOCATNM').Asstring;
  end;
end;

procedure TFmSTIn07.DBEdit6PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TFSrcDlg, FSrcDlg);
  if FSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.QAinvOFFICCOD.Asstring := FSrcDlg.KeyNo;
end;

procedure TFmSTIn07.DBEdit6PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CODE,NAME FROM OFFICER WHERE CODE =:XOFFICCOD');
    PARAMS[0].ASSTRING := DBEdit6.TEXT;
    OPEN;
    EDIT2.TEXT := FmDmic01.Query2.FieldByname('NAME').Asstring;
  end;
end;

procedure TFmSTIn07.DBEdit9PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TFSrcDlg, FSrcDlg);
  if FSrcDlg.ShowModalAR = Mrok then
  begin
    with Dm_Set1.TmpQuery do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :CUSCOD');
      PARAMS[0].ASSTRING := FSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Set1.TmpQuery.bof and Dm_Set1.TmpQuery.eof then
      SFMain.RaiseException('ไม่มีข้อมูล');
    FmDmic01.QAinvSallev.asstring := Dm_Set1.TmpQuery.Fieldbyname('Sallev').Asstring;
    FmDmic01.QAinvDisct.asfloat := Dm_Set1.TmpQuery.Fieldbyname('disct').Asfloat;
    edit1.text := Dm_Set1.TmpQuery.Fieldbyname('snam').Asstring + ' ' +
      Dm_Set1.TmpQuery.Fieldbyname('name1').Asstring + '   ' +
      Dm_Set1.TmpQuery.Fieldbyname('name2').Asstring;
    FmDmic01.QAinvCuscod.asstring := Dm_Set1.TmpQuery.Fieldbyname('cuscod').Asstring;
  end;
end;

procedure TFmSTIn07.DBEdit9PropertiesChange(Sender: TObject);
begin
  with FmDmic01.Query1 do
  begin
    close;
    sql.clear;
    sql.add('select cuscod,snam,name1,name2 from CUSTMAST ' +
      'WHERE cuscod =:0 ORDER BY cuscod ');
    Params[0].AsString := FmDmic01.QAinvCusCod.AsString;
    OPEN;
    Edit1.Text := FmDmic01.Query1.FieldByname('SNAM').Asstring + ' ' +
      FmDmic01.Query1.FieldByname('NAME1').Asstring + '   ' +
      FmDmic01.Query1.FieldByname('NAME2').Asstring;
  end;
end;

procedure TFmSTIn07.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_QaInvoi.fr3', '2');
end;

procedure TFmSTIn07.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  LVPrice: string;
begin
  if DBEdit9.Text = '' then
    sfmain.RaiseException('กรุณาเลือกรหัสลูกค้า!');

  Application.Createform(TFSrcDlg, FSrcDlg);
  if FSrcDlg.ShowModalParts = Mrok then
  begin
    if FmDmic01.QAtran.State = DSBrowse then
      FmDmic01.QAtran.Edit;
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
      Params[0].Asstring := FmDmic01.QAinv.Fieldbyname('QALOCAT').Asstring;
      Params[1].Asstring := FSrcDlg.KeyNo;
      Open;
      if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
        SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end;

    if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.QAinvNETADD.AsFloat > 0) then
    begin
      FmDmic01.QAtranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat +
        (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat *
        (FmDmic01.QAinvNETADD.AsFloat / 100));
    end
    else
    begin
      LVPrice := 'Price' + FmDmic01.QAinvSALLEV.Asstring;
      FmDmic01.QAtranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname(LVPrice).AsFloat;
    end;
    FmDmic01.QAtranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
    FmDmic01.QAtranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
  end;
end;

procedure TFmSTIn07.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;
end;

procedure TFmSTIn07.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PQANO' then
    Value := DBEdit2.Text;
end;

end.

