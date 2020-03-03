unit STin02_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, StdCtrls, DBCtrls, RzPanel, Math,
  RzButton, RzTabs, RzRadGrp, RzDBRGrp, RzRadChk, Dbkbd, DB, Mask, RzEdit,
  RzDBEdit, RzDBBnEd, RzLabel, Grids, DBGrids, RzDBGrid, RzDBChk, RzDBLbl,
  RzBorder, ImgList, RzGrids, RzDbkbd, Buttons, RzSpnEdt, cxLookAndFeelPainters,
  cxCheckBox, cxDBEdit, cxTextEdit, cxControls, cxContainer, cxEdit, cxGroupBox,
  AdvGlowButton, AdvToolBar, AdvPanel, cxButtonEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxRadioGroup, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ActnList,
  cxLookAndFeels, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, dxStatusBar, cxCalc, cxImageComboBox, cxMemo,
  cxButtons, frxExportXLSX, frxRich, frxTableObject, frxClass, frxDCtrl,
  frxFDComponents, frxGradient, frxExportImage, frxExportPDF, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTin02_1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel2: TBevel;
    Label10: TRzLabel;
    RzDBLabel1: TRzDBLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label23: TLabel;
    Label39: TLabel;
    Label14: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit4: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBEdit16: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DBEdit14: TcxDBTextEdit;
    DBCheckBox2: TcxDBCheckBox;
    CheckBox2: TcxCheckBox;
    CampBtn: TAdvGlowButton;
    Edit3: TcxTextEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    CheckBox1: TcxCheckBox;
    DBRadioGroup3: TcxDBRadioGroup;
    DBRadioGroup1: TcxDBRadioGroup;
    DBEdit5: TcxDBTextEdit;
    DBEdit15: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBCheckBox1: TcxDBCheckBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TFDQuery;
    DataSource3: TDataSource;
    ActionList1: TActionList;
    actEditPrn: TAction;
    Action1: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    DBkbd1: TRzDBkbd;
    AdvPanel3: TAdvPanel;
    NextBtn: TcxButton;
    DeleBtn: TcxButton;
    DBGrid1: TRzDBGrid;
    Label11: TRzLabel;
    Label6: TLabel;
    Label15: TLabel;
    PkDate: TcxDBDateEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit3: TcxDBButtonEdit;
    DBEdit7: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBImageComboBox1: TcxDBImageComboBox;
    DBEdit19: TcxDBButtonEdit;
    cxCalcEdit1: TcxCalcEdit;
    Label16: TLabel;
    cxButtonEdit3: TcxButtonEdit;
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
    procedure PrnBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure CampBtnClick(Sender: TObject);
    procedure DBRadioGroup3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure InsBtnClick(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit7PropertiesChange(Sender: TObject);
    procedure DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PkDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure actEditPrnExecute(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure NextBtnClick(Sender: TObject);
    procedure DeleBtnClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    procedure ShowCust;
    procedure Getclaim;
  public
    { Public declarations }
    XEditpric, XEditdisc, XPKNO, NALLOW: string;
    Smnettot, QTYOut, AvCost: Double;
    XDate: TdateTime;
    Xyear, Xmonth, XDay: Word;
  end;

var
  FmSTin02_1: TFmSTin02_1;
  Smnettot: Double;
  NmPart, Cgroup, XCampno, XGroup: string;
  QTYOut, AvCost: Double;
  XDate: TdateTime;
  Xyear, Xmonth, XDay: Word;

implementation

uses
  Dmic01, Dlginvms, Functn01, DmSet1, uSrcDlg, USoftFirm, uFindPO, unfrPreview,
  Dmsec, uSrcDLG1;
{$R *.dfm}

procedure TFmSTin02_1.PrnBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_OutPart.fr3', '1');
end;

procedure TFmSTin02_1.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if sfmain.XChgLoc = 'Y' then
    fsrcDlg.XSrLocat := ''
  else
    fsrcDlg.XSrLocat := SFmain.Xlocat;
  FSrcDlg.Flag_a := '1';
  FSrcDlg.nSvColor := 'P';

  if fSrcDlg.ShowModalpk = Mrok then
  begin
    with FmDmic01.Pkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := fSrcDlg.KeyNo;
      OPEN;
    end;
    XCampno := FmDmic01.Pkinv.Fieldbyname('CAMPNO').asstring;

    with FmDmic01.Query2 do
    begin
      close;
      sql.clear;
      sql.add('select cuscod,snam,name1,name2 from CUSTMAST ' +
        'WHERE (cuscod =:EDIT1) ORDER BY cuscod ');
      Params[0].AsString := FmDmic01.PkinvCusCod.AsString;
      OPEN;
      Edit1.Text := FmDmic01.Query2.FieldByname('SNAM').Asstring + ' ' +
        FmDmic01.Query2.FieldByname('NAME1').Asstring + '   ' +
        FmDmic01.Query2.FieldByname('NAME2').Asstring;
    end;

    with FmDmic01.PKtran do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := FmDmic01.PkinvPkno.Asstring;
      OPEN;
    end;
      //ShowGride;
  end;
  DataSource1StateChange(DataSource1);

  with query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM PK_INVOI WHERE RTNPK=:0');
    Params[0].AsString := FmDmic01.Pkinv.fieldByName('PKNO').AsString;
    Open;
  end;
  if RzDBLabel1.Caption = '' then
    Label10.Visible := False
  else
    Label10.Visible := True;
end;

procedure TFmSTin02_1.DataSource1StateChange(Sender: TObject);
var
  N: Word;
begin
  InsBtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowInsert);
  Delbtn.Visible := (DataSource1.State = Dsbrowse) and (DBkbd1.AllowDelete) and (DBEdit2.Text <> '');
  EditBtn.Visible := DataSource1.State = Dsbrowse;
  CloseBtn.Enabled := (DataSource1.State = Dsbrowse);
  SaveBtn.Visible := (DataSource1.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SaveBtn.Visible;

  PrnBtn.Visible := (DataSource1.Dataset.State = DsBrowse) and (DBEdit2.Text <> '');
  CampBtn.Enabled := (SaveBtn.Visible);

  NextBtn.Enabled := (DataSource1.Dataset.State in DsEditModes);
  DeleBtn.Enabled := NextBtn.Enabled;

  DBRadioGroup1.Properties.ReadOnly := not (DataSource1.Dataset.State = DsInsert);
  DBRadioGroup3.Properties.ReadOnly := DBRadioGroup1.Properties.ReadOnly;
  DBCheckBox1.Properties.ReadOnly := DBRadioGroup1.Properties.ReadOnly;
  DBCheckBox2.Properties.ReadOnly := DBRadioGroup1.Properties.ReadOnly;

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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
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

      if (Components[N] is TcxDBImageComboBox) and (TcxDBImageComboBox(Components[N]).Tag = 0) then
      begin
        TcxDBImageComboBox(Components[N]).Properties.ReadOnly := True;
        TcxDBImageComboBox(Components[N]).Style.Color := clBtnFace;
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

      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
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

      if (Components[N] is TcxDBImageComboBox) and (TcxDBImageComboBox(Components[N]).Tag = 0) then
      begin
        TcxDBImageComboBox(Components[N]).Properties.ReadOnly := False;
        TcxDBImageComboBox(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;

  if (FmDmic01.PkinvRefno.Asstring <> '') then
  begin
    Label10.Visible := True;
    DBkbd1.AllowEditing := False;
    FmDmic01.Pkinv.Cancel;
  end
  else
  begin
    Label10.Visible := False;
    DBkbd1.AllowEditing := True;
  end;
  //
  FmDmic01.QDBConfig.Close;
  FmDmic01.QDBConfig.Open;
  DBEdit2.Properties.Readonly := FmDmic01.QDBConfig.Fieldbyname('H_PK').asstring = 'Y';
  DBEdit1.Enabled := (SFMain.XChgLoc = 'Y') and (Datasource1.DataSet.State = dsInsert);
  Pkdate.Enabled := (sfmain.XChgDate = 'Y') and (Datasource1.DataSet.State = dsInsert);
  DBEdit6.Properties.Readonly := XEditDisc <> 'Y';
  DBEdit10.Properties.ReadOnly := True;
end;

procedure TFmSTin02_1.CancBtnClick(Sender: TObject);
begin
  Edit1.text := '';
  if FmDmic01.Pkinv.State in Dseditmodes then
    FmDmic01.Pkinv.Cancel;
end;

procedure TFmSTin02_1.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFmSTin02_1.CampBtnClick(Sender: TObject);
var
  Allo: string;
  Xqty: Double;
begin
  if DBEdit19.Text = '' then
    sfmain.RaiseException('รหัสสูตรการผลิตห้ามว่าง..!');

  if cxCalcEdit1.EditValue = 0 then
    sfmain.RaiseException('ยังไม่กำหนดน้ำหนักสำหรับผลิต..!');

  FmDmic01.Pktran.First;
  while not FmDmic01.Pktran.Eof do
    FmDmic01.Pktran.Delete;

  Xqty := cxCalcEdit1.EditValue;

  with FmDmic01.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM PTKITTRN WHERE KITCODE=:Edit1 ORDER BY NUMBER');
    Params[0].Asstring := FmDmic01.PkinvKITCODE.Asstring;
    Open;
  end;
  if not (FmDmic01.Query1.Bof and FmDmic01.Query1.Eof) then
  begin
    FmDmic01.Query1.First;
    while not (FmDmic01.Query1.Eof) do
    begin
      Xdate := FmDmic01.PkinvPkdate.AsDateTime;
      DecodeDate(XDate, XYear, XMonth, XDay);
      Allo := 'Allo_' + inttostr(XMonth);

      with FmDmic01.Query2 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Allo + ' FROM INVANLS WHERE ' +
          'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
        Params[0].Asstring := FmDmic01.Query1.FieldByName('PARTNO').Asstring;
        Params[1].Asstring := FmDmic01.PkinvPkLocat.asstring;
        Params[2].Asstring := Inttostr(Xyear);
        Open;
      end;
      if not (FmDmic01.Query2.Eof and FmDmic01.Query2.Bof) then
      begin
        FmDmic01.Pktran.Append;
        FmDmic01.Pktran.FieldByName('PARTNO').AsString := FmDmic01.Query1.FieldByName('PARTNO').Asstring;
        if FmDmic01.Query2.Fieldbyname(Allo).Asfloat >= FmDmic01.Query1.FieldByName('QTY').AsFloat then
        begin
          FmDmic01.Pktran.FieldByName('QTYORD').Asfloat := FmDmic01.Query1.FieldByName('QTY').Asfloat * Xqty;
          FmDmic01.Pktran.FieldByName('QTYOUT').Asfloat := FmDmic01.Query1.FieldByName('QTY').Asfloat * Xqty;
        end
        else
        begin
          FmDmic01.Pktran.FieldByName('QTYORD').Asfloat := FmDmic01.Query1.FieldByName('QTY').Asfloat * Xqty;
          FmDmic01.Pktran.FieldByName('QTYOUT').AsFloat := FmDmic01.Query1.FieldByName('QTY').Asfloat * Xqty; //FmDmic01.Query2.Fieldbyname(allo).Asfloat;
          Messagedlg('จำนวนสินค้าไม่พอ  ระบบจะจ่ายให้เท่าที่มีในสต็อก ', Mtwarning, [mbok], 0);
        end;
        FmDmic01.Pktran.FieldByName('REDU1').AsFloat := 0;
        FmDmic01.Pktran.FieldByName('REDU2').AsFloat := 0;
        FmDmic01.Pktran.FieldByName('REDU3').AsFloat := 0;
        FmDmic01.Pktran.FieldByName('UPRICE').AsFloat := FmDmic01.Query1.FieldByName('UPRICE').AsFloat;
        FmDmic01.PkTran.FieldByName('GROUP1').Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
        FmDmic01.Pktran.FieldByName('Netprc').AsFloat := Fround(FmDmic01.Pktran.FieldByName('UPRICE').AsFloat *
          FmDmic01.Pktran.FieldByName('QTYOUT').Asfloat, 2);
        FmDmic01.Pktran.FieldByName('TotPrc').AsFloat := Fround(FmDmic01.Pktran.FieldByName('UPRICE').AsFloat *
          FmDmic01.Pktran.FieldByName('QTYOUT').Asfloat, 2);
        FmDmic01.Pktran.Post;
      end;
      FmDmic01.Query1.Next;
    end;
  end;
end;

procedure TFmSTIn02_1.ShowCust;
begin
  with Dm_Set1.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT CUSCOD,SNAM,NAME1,NAME2,GRPCUS,DISCT FROM CUSTMAST WHERE CUSCOD=:CUSCOD');
    PARAMS[0].ASSTRING := DBedit3.Text;
    Open;
    if not (Bof and Eof) then
    begin
      if (DBRadioGroup3.Itemindex = 0) and (FmDmic01.Pkinv.State in Dseditmodes) then
      begin
        FmDmic01.PkinvDisct.asfloat := Dm_Set1.Query1.Fieldbyname('DISCT').Asfloat;
      end;
      Cgroup := Dm_Set1.Query1.Fieldbyname('GRPCUS').Asstring;
      if (FmDmic01.Pkinv.State in Dseditmodes) then
        FmDmic01.PkinvCuscod.asstring := Dm_Set1.Query1.Fieldbyname('cuscod').Asstring;

      edit1.text := Dm_Set1.Query1.Fieldbyname('SNAM').Asstring + ' ' +
        Dm_Set1.Query1.Fieldbyname('NAME1').Asstring + ' ' +
        Dm_Set1.Query1.Fieldbyname('NAME2').Asstring;
    end;
  end;
end;

procedure TFmSTIn02_1.Getclaim;
begin
  XCampno := FmDmic01.Pkinv.Fieldbyname('CAMPNO').asstring;
  if DBEdit19.text <> '' then
  begin
    if (FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring <> '') and
      (FmDmic01.Pkinv.State in Dseditmodes) then
    begin
      with FmDmic01.Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM PTKITTRN WHERE CAMPNO=:EDIT1');
        Params[0].Asstring := FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring;
        Open;
        if not (Bof and Eof) then
        begin
          if FmDmic01.PkinvPkdate.AsDateTime < FmDmic01.Query1.Fieldbyname('Startdt').AsDatetime then
          begin
            FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring := '';
            XCampno := '';
            SFMain.RaiseException('วันที่จ่ายสินค้าน้อยกว่าวันเริ่ม แคมเปญ ' + #13#13 + 'ยกเลิกการใช้แคมเปญ');
          end;
          if FmDmic01.PkinvPkdate.AsDateTime > FmDmic01.Query1.Fieldbyname('Enddate').AsDatetime then
            if MessageDlg('วันที่จ่ายสินค้าเลยกำหนดวันสิ้นสุด แคมเปญ' + #13#13 + 'ยังยืนยันจะใช้แคมเปญหรือไม่ ?', Mtconfirmation, [mbok, mbcancel], 0) = Mrcancel then
            begin
              FmDmic01.Pkinv.FieldByName('CAMPNO').Asstring := '';
              XCampno := '';
              Abort;
            end;
          XGroup := FmDmic01.Query1.Fieldbyname('Group1').Asstring;
          FmDmic01.Pkinv.FieldByName('DISCT').AsFloat := FmDmic01.Query1.Fieldbyname('PTR_RAT1').Asfloat;
        end;
      end;
    end;
  end;
  DataSource1StateChange(DataSource1);
end;

procedure TFmSTin02_1.DBRadioGroup3Click(Sender: TObject);
begin
  if (FmDmic01.Pkinv.State in Dseditmodes) then
    FmDmic01.PkinvDisct.asfloat := 0;
  case DBRadioGroup3.Itemindex of
    0:
      begin
        if DBedit3.Text = '' then
        begin
          DBedit3.Setfocus;
          SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
        end;
        with FmDmic01.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT CUSCOD,DISCT FROM CUSTMAST WHERE CUSCOD=:EDIT');
          Params[0].Asstring := DBEDIT3.TEXT;
          Open;
          if not (Bof and Eof) and (FmDmic01.Pkinv.State in Dseditmodes) then
            FmDmic01.PkinvDisct.asfloat := FmDmic01.Query1.Fieldbyname('Disct').Asfloat;
        end;
      end;
    1:
      begin
          {If DBEdit11.Text='' Then
          Begin
            DBEdit11.Setfocus;
            SFMain.RaiseException('ยังไม่บันทึกประเภทการขาย');
          end;
          With FmDmic01.Query1 Do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('SELECT * FROM SALTYPE WHERE SLCODE=:EDIT');
            Params[0].Asstring := DBEdit11.Text;
            Open;
            If Not(Bof and Eof) AND (FmDmic01.Pkinv.State in Dseditmodes) Then
              FmDmic01.PkinvDisct.asfloat   := FmDmic01.Query1.Fieldbyname('SLDisc').Asfloat;
          End;}
      end;
    2:
      begin
        if DBedit3.Text = '' then
        begin
          DBedit3.Setfocus;
          SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
        end;
        with FmDmic01.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT ARCODE,ARDISC FROM ARGROUP WHERE ARCODE=:EDIT');
          Params[0].Asstring := CGROUP;
          Open;
          if not (Bof and Eof) and (FmDmic01.Pkinv.State in Dseditmodes) then
            FmDmic01.PkinvDisct.asfloat := FmDmic01.Query1.Fieldbyname('ARDisc').Asfloat
          else
            SFMain.RaiseException('ยังไม่ Set รหัสกลุ่ม');
        end;
      end;
    3:
      begin
        if FmDmic01.Pkinv.State in Dseditmodes then
          FmDmic01.PkinvDisct.asfloat := 0;

        if DBedit3.Text = '' then
        begin
          DBedit3.Setfocus;
          SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');
        end;
          {If DBEdit11.Text='' Then
          Begin
            DBEdit11.Setfocus;
            SFMain.RaiseException('ยังไม่บันทึกประเภทการขาย');
          end;}
      end;
  end;
end;

procedure TFmSTin02_1.FormShow(Sender: TObject);
begin
  with FmDmic01.Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
    PARAMS[0].ASSTRING := XPKNO;
    OPEN;
  end;
  with FmDmic01.PkTran do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM PK_TRANS WHERE PKNO=:XPKNO');
    Params[0].AsString := XPKNO;
    OPEN;
  end;
end;

procedure TFmSTin02_1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK02_D_1');
  DBkbd1.AllowDelete := SFMain.Del_right;
  // DBkbd1.AllowEditing:= 'F';//SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
  XEditpric := 'N';
  XEditdisc := 'N';
  with FmDmic01.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Editpric,EditDisc FROM SECRET WHERE USERID =:XEdit');
    PARAMS[0].ASSTRING := SFMain.Xuser_id;
    OPEN;
    XEditpric := FmDmic01.Query1.Fieldbyname('Editpric').Asstring;
    XEditdisc := FmDmic01.Query1.Fieldbyname('EditDisc').Asstring;
  end;

  FmDmic01.QCondPay.Close;
  FmDmic01.QCondPay.Open;
  NAllow := FmDmic01.CondPay.Fieldbyname('NStkLob').Asstring; {ไม่ยอมให้สต็อกติดลบ?}

  if FmDmic01.CondPay.Fieldbyname('Saltype').Asstring = '2' then
    FmDmic01.Flag_a := '2'
  else
    FmDmic01.Flag_a := '1';
end;

procedure TFmSTin02_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FmDmic01.Pkinv.State in Dseditmodes then
    SFMain.RaiseException('กรุณากดปุ่ม ยกเลิก และ ออก ตามขั้นตอน ');

  FmDmic01.Pkinv.Close;   {Dmic01 Close ส่วนที่เหลือ}
  FmDmic01.QDBConfig.Close;
  FmDmIc01.PkTran.Close;
  Action := Cafree;
  FmStin02_1 := nil;
end;

procedure TFmSTin02_1.DBkbd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    Vk_F9:
      PrnBtnClick(Sender);
    Vk_F7:
      EditBtnClick(Sender);
    Vk_ESCAPE:
      CancBtnClick(Sender);
    Vk_F8:
      if DelBtn.Visible then
        DelBtnClick(Sender);
    Vk_F2:
      if SaveBtn.Visible then
        SaveBtnClick(Sender);
    Vk_F5:
      if InsBtn.Visible then
        InsBtnClick(Sender);
  end;
end;

procedure TFmSTin02_1.SaveBtnClick(Sender: TObject);
var
  S, L: string;
begin
  if FmDmic01.CountFound > 1 then
    SFMain.RaiseException('รหัสสินค้าซ้ำ #' + FmDmic01.DoupPart + ' กรุณาลบก่อน');

  if FmDmic01.PkinvSaltype.Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกประเภทการเบิก..!');

  FmDmic01.PkTran.First;
  while not (FmDmic01.PkTran.Eof) do
  begin
    if (copy(FmDmic01.PkTranPARTNO.AsString, 1, 1) = '9') and (FmDmic01.PkinvSaltype.Asstring = 'A')
      then
      SFMain.RaiseException('เป็นรหัสสินค้าสำเร็จรูปแล้ว<br/>ไม่สามารถเลือก "เบิกเพื่อผลิต" ได้..!')
    else
      FmDmic01.PkTran.Next;
  end;

  if FmDmic01.PkTran.RecordCount = 0 then
    SFMain.RaiseException('ยังไม่บันทึกรายการสินค้า');
  S := FmDmic01.PkinvPKNO.Asstring;
  L := FmDmic01.PkinvPKLocat.Asstring;
  if Datasource1.DataSet.State = dsInsert then
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_D_1', 'INSERT', FmDmic01.Pkinv.FieldByName('PKNO').AsString)
  else
    Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_D_1', 'EDIT', FmDmic01.Pkinv.FieldByName('PKNO').AsString);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  FmDmic01.Pkinv.Post;
  //
  if CheckBox1.Checked then
  begin
    with FmDmic01.Icinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO =:XINVNO');
      PARAMS[0].ASSTRING := '';
      OPEN;
      INSERT;
    end;
    FmDmic01.IcinvFLAG.Asstring := '1';
    FmDmic01.IcinvVATTYPE.Asstring := '2';
    FmDmic01.Desctax := 'ขายสินค้าเงินสดให้ลูกค้า #' + FmDmic01.Pkinv.Fieldbyname('Cuscod').Asstring;
    //
    FmDmic01.IcinvPKNO.Asstring := FmDmic01.Pkinv.Fieldbyname('PKNO').Asstring;
    FmDmic01.IcinvInvdate.AsDatetime := FmDmic01.Pkinv.Fieldbyname('Pkdate').AsDatetime;
    FmDmic01.IcinvINVLOC.Asstring := L;
    FmDmic01.IcinvCUSCOD.Asstring := FmDmic01.Pkinv.Fieldbyname('Cuscod').Asstring;
    FmDmic01.IcinvDisct.AsFloat := FmDmic01.Pkinv.Fieldbyname('DISCT').AsFloat;
    FmDmic01.Icinvvatrt.AsFloat := FmDmic01.Pkinv.Fieldbyname('Vatrt').AsFloat;
    FmDmic01.IcinvVATTYPE.AsString := FmDmic01.Pkinv.Fieldbyname('VATTYPE').AsString;
    FmDmic01.IcinvEXDISAMT.AsFloat := FmDmic01.Pkinv.Fieldbyname('EXDISAMT').AsFloat;
    FmDmic01.IcinvDISBATH.Asstring := FmDmic01.Pkinv.Fieldbyname('DISBATH').Asstring;
    FmDmic01.IcinvOfficcod.Asstring := FmDmic01.Pkinv.Fieldbyname('Officcod').Asstring;
    FmDmic01.IcinvCredtm.AsFloat := 0;
    FmDmic01.IcinvInvdue.AsDatetime := FmDmic01.Pkinv.Fieldbyname('Pkdate').AsDatetime;
    //
    with FmDmic01.QPkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO=:XPKNO ');
      PARAMS[0].AsString := FmDmic01.IcinvPKNO.Asstring;
      Open;
      if Bof and Eof then
        SFMain.RaiseException('ไม่พบเลขที่ใบเบิก');
    end;

    if not (FmDmic01.PKtran.Bof and FmDmic01.PKtran.Eof) then
    begin
      // Clear Buffer Ictran
      with FmDmic01.Ictran do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO =:XINVNO');
        PARAMS[0].ASSTRING := '';
        OPEN;
      end;

      //
      FmDmic01.PKtran.First;
      while not FmDmic01.PKtran.Eof do
      begin
        if FmDmic01.PKtran.Fieldbyname('QtyOut').AsFloat > 0 then
        begin
          FmDmic01.IcTran.Insert;
          FmDmic01.IctranNETFL.Asstring := FmDmic01.PKtran.Fieldbyname('Netfl').Asstring;
          FmDmic01.IctranYear1.Asstring := FmDmic01.PKtran.Fieldbyname('Year1').Asstring;
          FmDmic01.IctranPARTNO.Asstring := FmDmic01.PKtran.Fieldbyname('PARTNO').Asstring;
          FmDmic01.IctranFREE.Asstring := FmDmic01.PKtran.Fieldbyname('FREE').Asstring;
          FmDmic01.IctranGROUP1.Asstring := FmDmic01.PKtran.Fieldbyname('GROUP1').Asstring;
          FmDmic01.IctranDiscamt.Asfloat := FmDmic01.PKtran.Fieldbyname('Discamt').Asfloat;
          FmDmic01.IctranQTYORD.AsFloat := FmDmic01.PKtran.Fieldbyname('QtyOrd').AsFloat;
          FmDmic01.IctranQTYOUT.AsFloat := FmDmic01.PKtran.Fieldbyname('QtyOut').AsFloat;
          FmDmic01.IctranUPRICE.AsFloat := FmDmic01.PKtran.Fieldbyname('UPRICE').AsFloat;
          FmDmic01.IctranNetPRC.AsFloat := FmDmic01.PKtran.Fieldbyname('NetPRC').AsFloat;
          FmDmic01.IctranAVGCost.AsFloat := FmDmic01.PKtran.Fieldbyname('AVGCOST').AsFloat;
          FmDmic01.IcTranREDU1.AsFloat := FmDmic01.PKtran.Fieldbyname('REDU1').AsFloat;
          FmDmic01.IctranTotPRC.AsFloat := FmDmic01.IctranNetPRC.AsFloat *
            FmDmic01.IctranQTYOUT.AsFloat;
          FmDmic01.IcTran.Post;
        end;
        FmDmic01.PKtran.Next;
      end;
      FmDmic01.Icinv.Post;
    //
      with FmDmic01.QArpaytrn1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO = :XBILNO ');
        Params[0].Asstring := FmDmic01.IcinvTAXREFNO.Asstring;
        Open;
        if FmDmic01.QArpaytrn1.Bof and FmDmic01.QArpaytrn1.Eof then
          Insert;
      end;
      with FmDmic01.Qtmpicinv do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO =:XINVNO');
        PARAMS[0].ASSTRING := FmDmic01.IcinvINVNO.Asstring;
        OPEN;
        if Bof and Eof then
          SFMain.RaiseException('ไม่พบใบส่งของ/ใบกำกับ');
      end;

      FmDmic01.QArpaytrn1.Post;
    end;
    //FmSTIn03.Close;
    with FmDmic01.Pkinv do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO =:XPKNO');
      PARAMS[0].ASSTRING := S;
      OPEN;
    end;
  end;
end;

procedure TFmSTin02_1.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  if FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring <> '' then
    SFMain.RaiseException('ออกใบส่งของ/ใบกำกับภาษีแล้ว #' + FmDmic01.Pkinv.Fieldbyname('REFNO').Asstring);

  if Query1.FieldByName('RTNPK').AsString <> '' then
  begin
    SFMain.RaiseException('ไม่อนุญาตให้แก้ไขข้อมูล เพราะมีการรับคืนใบเบิกแล้ว');
  end
  else
  begin
    case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
      mrOk:
        begin
          DM_SEC.ChkRecent(SFMain.Xuser_ID, 'HDSTK02_D_1', 'DELETE', FmDmic01.Pkinv.FieldByName('PKNO').AsString);
          if DM_SEC.qrRecent.UpdatesPending then
            if (DM_SEC.qrRecent.ApplyUpdates = 0) then
              DM_SEC.qrRecent.CommitUpdates
            else
              raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
          FmDmic01.Pkinv.delete;
        end;
    end;
  end;
end;

procedure TFmSTin02_1.InsBtnClick(Sender: TObject);
begin
  with FmDmic01.Pkinv do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_INVOI WHERE PKNO ='''' ');
    if not FmDmic01.Pkinv.Prepared then
      FmDmic01.Pkinv.Prepare;
    OPEN;
    INSERT;
  end;
  with FmDmic01.PKtran do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PK_TRANS WHERE PKNO ='''' ');
    if not FmDmic01.PKtran.Prepared then
      FmDmic01.PKtran.Prepare;
    OPEN;
  end;
  Edit1.Text := '';
  DBEdit19.SetFocus;
  Edit1.Text;
  Edit1.Text := FmDmic01.QCondpay.fieldbyname('taxaddr').AsString;
  checkbox2.Checked := True;
   //ShowGride;
end;

procedure TFmSTin02_1.DBEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    FmDmic01.PkinvPKLOCAT.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTin02_1.DBEdit1PropertiesChange(Sender: TObject);
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

procedure TFmSTin02_1.DBEdit19PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if FmDmic01.Pkinv.State = DsBrowse then
    Exit;
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalPtkit = Mrok then
    FmDmic01.Pkinv.FieldByName('KITCODE').Asstring := fSrcDlg.KeyNo;
end;

procedure TFmSTin02_1.DBEdit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalOffic = Mrok then
    FmDmic01.PkinvOFFICCOD.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTin02_1.DBEdit7PropertiesChange(Sender: TObject);
begin
  with Query1 do
  begin
    close;
    Sql.Clear;
    Sql.Add('SELECT * FROM OFFICER WHERE CODE=:EDIT');
    params[0].asstring := DBEdit7.Text;
    Open;
    Edit2.Text := Query1.Fieldbyname('NAME').asstring;
  end;
end;

procedure TFmSTin02_1.DBEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if FmDmic01.Pkinv.State = DsBrowse then
    Exit;

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAR = Mrok then
  begin
    DBEdit3.Text := fSrcDlg.KeyNo;
    ShowCust;
  end;
end;

procedure TFmSTin02_1.DBEdit11PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalSaltype = Mrok then
    FmDmic01.PkinvSaltype.Asstring := fSrcDlg.Keyno;
end;

procedure TFmSTin02_1.cxGridTranPARTNOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  LVPrice: string;
begin
  if FmDmic01.PkinvCUSCOD.asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');

  if FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกระดับราคาขาย');

  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
  begin
    if FmDmic01.PkTran.State = Dsbrowse then
      FmDmic01.PkTran.Edit;
    with FmDmic01.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
      Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('PKLOCAT').Asstring;
      Params[1].Asstring := fSrcDlg.KeyNo;
      Open;
      if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
        SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end;
    FmDmic01.PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
    FmDmic01.PktranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
    FmDmic01.PkTranGROUP1.Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
    //DBEdit17.Caption := FmDmic01.Query1.Fieldbyname('Desc1').Asstring;

    if FmDmic01.Query1.Fieldbyname('GROUP1').Asstring = '' then
      SFMain.RaiseException('ยังไม่บันทึกกลุ่มสินค้าในแฟ้มสาขา ' + FmDmic01.PkTranPklocat.asstring);

    if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.PkinvNETADD.AsFloat > 0) then
    begin
      FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').AsFloat;
                                         { FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat+
                                          (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat*
                                          (FmDmic01.PkinvNETADD.AsFloat/100))  ; }
    end
    else
    begin
      LVPrice := 'Price' + FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring;
       //FmDmic01.PktranUPRICE.AsFloat  := FmDmic01.Query1.Fieldbyname(LvPrice).AsFloat;
     //  FmDmic01.PktranUPRICE.AsFloat  :=  FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat;
      FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').AsFloat;
    end;

    FmDmic01.PkTranREDU1.AsFloat := FmDmic01.PkinvDisct.AsFloat;
    FmDmic01.PkTranCampno.Asstring := FmDmic01.PkinvCampno.Asstring;
    if FmDmic01.PkinvCampno.Asstring <> '' then
    begin
      if FmDmic01.PkTranGROUP1.Asstring <> XGroup then
      begin
        FmDmic01.PkTranREDU1.AsFloat := 0;
        FmDmic01.PkTranCampno.Asstring := '';
      end;
      if FmDmic01.PkTranCampno.Asstring <> '' then
        FmDmic01.PkTranCamFlg.Asstring := 'Y'
      else
        FmDmic01.PkTranCamFlg.Asstring := 'N';
    end;
  end;
end;

procedure TFmSTin02_1.PkDateExit(Sender: TObject);
var
  Year1, Month1, Day1, RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
    DecodeDate(FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime, Year1, Month1, Day1);
    RYear := Year1 - 543;
    if RYear > 1910 then
      FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime := StrToDate(InttoStr(Day1) + '/' + IntTostr(Month1) + '/' + IntTostr(RYear))
    else
      FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime := FmDmic01.Pkinv.fieldbyname('PKDATE').AsDateTime;
  end;
end;

procedure TFmSTin02_1.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  if UPPERCASE(Name) = 'BAHTTEXT' then
//  begin
//    SFMain.n2wBill.Value := FRPARSER.Calc(p1);
//    Val := SFMain.n2wBill.Text;
//  end;
 { IF Uppercase(NAME)='DATETHAI' Then
  Begin
     Val  := SFMain.DateThai(Frparser.Calc(P1),Frparser.Calc(P2));
  End; }
end;

procedure TFmSTin02_1.frxReport1GetValue(const VarName: string; var Value: Variant);
begin
  if UpperCase(VarName) = 'PINVNO' then
    Value := DBEdit2.Text;
  if UpperCase(VarName) = 'PRECVNO' then
    Value := DBEdit2.Text;
end;

procedure TFmSTin02_1.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'fr_OutPart.fr3', '2');
end;

procedure TFmSTin02_1.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = True then
    FmDmic01.nCkb2 := 'Y'
  else
    FmDmic01.nCkb2 := 'N';
end;

procedure TFmSTin02_1.NextBtnClick(Sender: TObject);
begin
  DBGrid1.Setfocus;
  DBGrid1.SelectedIndex := 0;
  if FmDmic01.PKtran.State in Dseditmodes then
    SFMain.RaiseException('ยังไม่Enter ผ่านช่องสุดท้าย');
  FmDmic01.PKtran.Append;
end;

procedure TFmSTin02_1.DeleBtnClick(Sender: TObject);
begin
  FmDmic01.PKtran.delete;
end;

procedure TFmSTin02_1.DBGrid1ColExit(Sender: TObject);
var
  SmPric1, SmPric2, SmPric3, Pric1, Pric2, Pric3: Double;
  XQtyBK, Redu: Double;
  Allo, Cost, LVPrice: string;
begin
  SetRoundMode(rmNearest);

  Xdate := FmDmic01.PkinvPkdate.AsDateTime;
  DecodeDate(XDate, XYear, XMonth, XDay);
  Allo := 'Allo_' + inttostr(XMonth);
  Cost := 'Cost_' + inttostr(XMonth);
  Label11.Caption := '';
  if FmDmic01.PkTranUpdatestatus.Value = 'Inserted' then
  begin
    if FmDmic01.PkTran.State = Dsbrowse then
      FmDmic01.PkTran.Edit;

    if FmDmic01.PkinvCUSCOD.asstring = '' then
      SFMain.RaiseException('ยังไม่บันทึกรหัสลูกค้า');

    if (DbGrid1.SelectedField.FieldName) = 'PARTNO' then
    begin
      if FmDmic01.CountFound > 1 then
        SFMain.RaiseException('รหัสสินค้าซ้ำ #' + FmDmic01.DoupPart + ' กรุณาลบก่อน');

      if FmDmic01.PkTranPartno.asstring = '' then
        SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้า');

      with FmDmic01.Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT PARTNO  FROM INVENTOR WHERE PARTNO =:XPARTNO AND LOCAT=:XLOC');
        PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
        PARAMS[1].ASSTRING := FmDmic01.PkinvPKLOCAT.asstring;
        Open;
      end;
      if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
      begin
        Application.CreateForm(TFsvmast, Fsvmast);
        with Fsvmast.Hquery1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT PARTNO,DESC1,STDBUY,LSTBUY FROM INVENTOR  WHERE PARTNO LIKE :XPARTNO AND LOCAT=:XLOC ');
          PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring + '%';
          PARAMS[1].ASSTRING := FmDmic01.PkinvPKLOCAT.asstring;
          Open;
        end;

        if (Fsvmast.Hquery1.BOF and Fsvmast.Hquery1.Eof) then
        begin
          Fsvmast.Close;
          SFMain.RaiseException('ไม่พบรหัสสินค้า');
        end
        else
        begin
          if Fsvmast.Showmodal = mrok then
            FmDmic01.PkTranPartno.asstring := Fsvmast.Hquery1.Fieldbyname('Partno').asstring;
          Fsvmast.Close;
        end;
      end;
    //
      with FmDmic01.Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
          'LOCAT = :Edit2');
        PARAMS[0].ASSTRING := FmDmic01.PkTranPartno.asstring;
        PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
        Open;
        if Bof and Eof then
          SFMain.RaiseException('ไม่พบรหัสสินค้า');
      end;
      if FmDmic01.Query1.Fieldbyname('GROUP1').Asstring = '' then
        SFMain.RaiseException('ยังไม่บันทึกกลุ่มสินค้าในแฟ้มสาขา ' + FmDmic01.PkTranPklocat.asstring);
    //

      FmDmic01.PkTranGROUP1.Asstring := FmDmic01.Query1.Fieldbyname('GROUP1').Asstring;
    //DBEdit17.Caption := FmDmic01.Query1.Fieldbyname('Desc1').Asstring;
    //
 //**   FmDmic01.PkTranREDU1.AsFloat     := FmDmic01.PkinvDisct.AsFloat;   บันทัดนี้มีผลตอนดึงรายการและเอาเมาส์ไปคลิกที่ช่องใน Grid ส่วนลดจะเป็น 0
      FmDmic01.PkTranCampno.Asstring := FmDmic01.PkinvCampno.Asstring;
      if FmDmic01.PkinvCampno.Asstring <> '' then
      begin
        if FmDmic01.PkTranGROUP1.Asstring <> XGroup then
        begin
          FmDmic01.PkTranREDU1.AsFloat := 0;
          FmDmic01.PkTranCampno.Asstring := '';
        end;
        if FmDmic01.PkTranCampno.Asstring <> '' then
          FmDmic01.PkTranCamFlg.Asstring := 'Y'
        else
          FmDmic01.PkTranCamFlg.Asstring := 'N';
      end;
    end;

    if (DbGrid1.SelectedField.FieldName) = 'QTYORD' then
    begin
      if FmDmic01.PkTranQtyord.AsFloat = 0 then
        SFMain.RaiseException('จำนวนเป็น 0');

    // **** ส่วนลด BMW  ****
      if DBRadioGroup3.Itemindex = 3 then
      begin
        with FmDmic01.Query4 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT *  FROM DISCGRP WHERE SLCODE=:0 AND ARCODE=:1 AND GROUPCOD=:2');
          PARAMS[0].ASSTRING := FmDmic01.PkinvSALTYPE.asstring;
          PARAMS[1].ASSTRING := CGROUP;
          PARAMS[2].ASSTRING := FmDmic01.PkTranGROUP1.Asstring;
          Open;
          if not (Bof and Eof) then
            FmDmic01.PkTranREDU1.AsFloat := FmDmic01.Query4.Fieldbyname('Ardisc').AsFloat;
        end;
      end;
      with FmDmic01.Query2 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT PARTNO,LOCAT,YEAR1,' + Cost + ',' + Allo + ' FROM INVANLS WHERE ' +
          'PARTNO=:EDIT1 AND LOCAT=:EDIT2 AND YEAR1=:EDIT3');
        Params[0].Asstring := FmDmic01.PkTranPartno.asstring;
        Params[1].Asstring := FmDmic01.PkTranPkLocat.asstring;
        Params[2].Asstring := Inttostr(Xyear);
        Open;
      end;

      if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.PkinvNETADD.AsFloat > 0) then
      begin
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').AsFloat;
                                         { FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat+
                                          (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat*
                                          (FmDmic01.PkinvNETADD.AsFloat/100))  ;  }
      end
      else
      begin
        LVPrice := 'Price' + FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring;
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').AsFloat; // FmDmic01.Query1.Fieldbyname(LvPrice).AsFloat;
      end;
      if CheckBox2.Checked then
        FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').AsFloat; // FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat;// FmDmic01.Query2.FieldByName(Cost).AsFloat;
      FmDmic01.PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;

      Label11.Caption := 'ยอดคงเหลือ : ' + Floattostr(FmDmic01.Query2.FieldByName(Allo).AsFloat);
     // Case สินค้าไม่พอ
      if FmDmic01.Query2.FieldByName(Allo).AsFloat < FmDmic01.PktranQTYORD.AsFloat then
      begin
        MessageBeep(0);
        if FmDmic01.Query2.FieldByName(Allo).AsFloat > 0 then
          FmDmic01.PktranQTYOUT.AsFloat := FmDmic01.Query2.FieldByName(Allo).AsFloat;

        FmDmic01.PktranAvgCost.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;

       //Case ไม่มีสินค้าทดแทน
        if FmDmic01.Query1.FieldByName('Code_T').AsString = '' then
        begin
          Showmessage(' จำนวนสินค้าไม่พอจ่าย ');
          NmPart := '';
        end
        else       // Case มี สินค้าทดแทน
        begin
          with FmDmic01.Query3 do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT *  FROM INVENTOR WHERE PARTNO =:XPARTNO AND ' +
              'LOCAT = :Edit2');
            PARAMS[0].ASSTRING := FmDmic01.Query1.FieldByName('Code_T').AsString;
            PARAMS[1].ASSTRING := FmDmic01.PkTranPklocat.asstring;
            Open;
          end;
          if not (FmDmic01.Query3.Bof and FmDmic01.Query3.Eof) then
          begin
            NmPart := FmDmic01.Query3.FieldByName('Partno').AsString;
            QTYOut := FmDmic01.PktranQTYORD.AsFloat - FmDmic01.PktranQTYOUT.AsFloat;
            Avcost := FmDmic01.Query2.FieldByName(Cost).AsFloat;
          end
          else
            Showmessage(' รหัสทดแทนไม่มีในแฟ้มข้อมูล ');
        end;
      end
      else     // Case มีสินค้าพอ
      begin
        NmPart := '';
        FmDmic01.PkTranQTYOUT.AsFloat := FmDmic01.PktranQTYORD.AsFloat;
        FmDmic01.PktranAvgCost.AsFloat := FmDmic01.Query2.FieldByName(Cost).AsFloat;
      end;
     {if FmDmic01.PktranAvgcost.AsFloat = 0 Then
     begin
       DBGrid1.Setfocus;
       DBGrid1.SelectedIndex:=0;
       SFMain.RaiseException('ต้นทุนเฉลี่ยเป็น 0 กรุณาแก้ไขให้ถูกต้องก่อน');
     end;}
    end;

    if (DbGrid1.SelectedField.FieldName) = 'QTYOUT' then
    begin
      if (NAllow = 'Y') and (FmDmic01.PktranQTYOUT.AsFloat > FmDmic01.Query2.FieldByName(Allo).AsFloat) then
      begin
        SFMain.RaiseException('ในระบบ Setup ไม่อนุญาตให้สต็อกติดลบ');
        DBGrid1.Setfocus;
     //DBGrid1.SelectedIndex:=0;
      end;
      if FmDmic01.PktranQTYOUT.AsFloat = 0 then
        if Messagedlg('ต้องการ Back Order หรือไม่ ?', Mtconfirmation, [mbNO, mbOk], 0) = MrOk then
          FmDmic01.PktranBACKFLG.Asstring := 'Y'
        else
        begin
     //DBGrid1.SelectedIndex:=0;
          SFMain.RaiseException('จำนวนจ่ายเป็น 0');
          DBGrid1.Setfocus;
        end;
    end;

    if (DbGrid1.SelectedField.FieldName) = 'BACKFLG' then
    begin
      if (UpperCase(FmDmic01.PKtranBACKFLG.Asstring) <> 'Y') and
        (UpperCase(FmDmic01.PKtranBACKFLG.Asstring) <> '') then
        SFMain.RaiseException('Y:Back Order หรือ ว่าง :ไม่ Back Order');
      if UpperCase(FmDmic01.PKtranBACKFLG.Asstring) = 'Y' then
        FmDmic01.PktranBACKFLG.Asstring := Uppercase(FmDmic01.PktranBACKFLG.Asstring);
    end;

    if (DbGrid1.SelectedField.FieldName) = 'FREE' then
    begin
      if (UpperCase(FmDmic01.PKtranFree.Asstring) <> 'Y') and
        (UpperCase(FmDmic01.PKtranFree.Asstring) <> 'N') then
        SFMain.RaiseException('Y:ฟรี หรือ N:คิดเงิน ');
      FmDmic01.PktranFree.Asstring := Uppercase(FmDmic01.PktranFree.Asstring);
      Dbgrid1.Columns[6].Readonly := (XEditpric <> 'Y') or (UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y');
    end;

 { If FmDmic01.PKtranNETFL.Asstring = 'N' Then
  Begin
    Dbgrid1.Columns[7].Readonly := True;
    Dbgrid1.Columns[8].Readonly := True;
    Dbgrid1.Columns[9].Readonly := True;
    //FmDmic01.PkTranREDU1.AsFloat := 0;
  End
  Else
  Begin
    Dbgrid1.Columns[7].Readonly := XEditDisc<>'Y';
    Dbgrid1.Columns[8].Readonly := (XEditDisc<>'Y') or (DBCheckBox1.Checked);
    Dbgrid1.Columns[9].Readonly := (XEditDisc<>'Y') or (DBCheckBox1.Checked);
  end;    }

    if not DBCheckBox1.Checked then
    begin
      if (DbGrid1.SelectedField.FieldName = 'REDU1') or
        (DbGrid1.SelectedField.FieldName = 'REDU2') or
        (DbGrid1.SelectedField.FieldName = 'REDU3') or
        (DbGrid1.SelectedField.FieldName = 'UPRICE')
        then
      begin
        if (FmDmic01.PktranUprice.AsFloat = 0) then
        begin
          SFMain.RaiseException('ราคาขายเป็น 0 ตรวจสอบอีกครั้ง');
          DBGrid1.Setfocus;
         //DBGrid1.SelectedIndex:=0;
        end;
      // ตรวจสอบการลดตาม Maxdisc

        Redu := FmDmic01.PktranRedu1.Asfloat + FmDmic01.PktranRedu2.Asfloat +
          FmDmic01.PktranRedu3.Asfloat;
       {If (Redu>FmDmic01.Query1.FieldByName('Maxdisc').Asfloat) and
          (FmDmic01.Query1.FieldByName('Maxdisc').Asfloat>0) Then
       Begin
         MessageBeep(0);
         MessageDlg('ลดเกินอัตรา Maximum Discount  '#13+
         'ระบบจะปรับให้ส่วนลดตามที่ Set ไว้',Mtinformation,[mbok],0);
         FmDmic01.PktranRedu1.Asfloat :=FmDmic01.Query1.FieldByName('Maxdisc').Asfloat;
         FmDmic01.PktranRedu2.Asfloat :=0;
         FmDmic01.PktranRedu3.Asfloat :=0;
       end;}
       //
        if (FmDmic01.PktranUprice.AsFloat < FmDmic01.Query2.FieldByName(Cost).AsFloat) and
          (UpperCase(FmDmic01.PKtranFree.Asstring) <> 'Y') and
          (FmDmic01.Query1.FieldByName('CHARGFLG').Asstring <> 'Y') then
        begin
          MessageBeep(0);
          Messagedlg('เตือน : ราคาขายต่ำกว่าต้นทุน', mtwarning, [mbok], 0);
        end;
        Pric1 := FRound((FmDmic01.PktranUPrice.Asfloat * (FmDmic01.PktranRedu1.Asfloat / 100)), 2);
        SmPric1 := FmDmic01.PktranUPrice.Asfloat - Pric1;
        Pric2 := FRound(SmPric1 * (FmDmic01.Pktranredu2.Asfloat / 100), 2);
        SmPric2 := SmPric1 - Pric2;
        Pric3 := FRound(SmPric2 * (FmDmic01.Pktranredu3.Asfloat / 100), 2);
        SmPric3 := SmPric2 - Pric3;
        FmDmic01.PktranNetprc.AsFloat := SmPric3;
        if UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y' then
          FmDmic01.PktranNetprc.AsFloat := 0;

        FmDmic01.PktranTotPrc.AsFloat := FRound((FmDmic01.PktranNetprc.AsFloat * FmDmic01.PkTranQTYOUT.AsFloat), 2);
      end;
    end
    else if (DbGrid1.SelectedField.FieldName = 'DISCAMT') then
    begin
      FmDmic01.PktranNetprc.AsFloat := FmDmic01.PktranUPrice.Asfloat -
        FmDmic01.PktranDiscamt.AsFloat;

      if UpperCase(FmDmic01.PKtranFree.Asstring) = 'Y' then
        FmDmic01.PktranNetprc.AsFloat := 0;

      FmDmic01.PktranTotPrc.AsFloat := FRound((FmDmic01.PktranNetprc.AsFloat * FmDmic01.PkTranQTYOUT.AsFloat), 2);
    end;
  end
  else
  begin
    DBGrid1.Setfocus;
    DBGrid1.SelectedIndex := 0;
    SFMain.RaiseException('หากต้องการแก้ไขให้ลบรายการ แล้วบันทึกใหม่');
  end;
end;

procedure TFmSTin02_1.DBGrid1DblClick(Sender: TObject);
var
  LVPrice: string;
begin
  if FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกระดับราคาขาย');

  if Datasource1.State in DsEditModes then
  begin
    if (DbGrid1.SelectedField.FieldName) = 'PARTNO' then
    begin
      Application.Createform(TfSrcDlg, fSrcDlg);
      if fSrcDlg.ShowModalParts = Mrok then
      begin
        if FmDmic01.PkTran.State = Dsbrowse then
          FmDmic01.PkTran.Edit;
        with FmDmic01.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
          Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('PKLOCAT').Asstring;
          Params[1].Asstring := fSrcDlg.KeyNo;
          Open;
          if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
            SFMain.RaiseException('ไม่พบรหัสสินค้า');
        end;
        if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.PkinvNETADD.AsFloat > 0) then
        begin
          FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').AsFloat;
                                              { FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat+
                                                (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat*
                                                (FmDmic01.PkinvNETADD.AsFloat/100))  ;  }
        end
        else
        begin
          LVPrice := 'Price' + FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring;
          if CheckBox2.Checked then
            FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').AsFloat
          else
            FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').AsFloat; // FmDmic01.Query1.Fieldbyname(LvPrice).AsFloat;
        end;
        FmDmic01.PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
        FmDmic01.PktranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
      end;
    end;
    if (DbGrid1.SelectedField.FieldName) = 'WAREHOUSECOD' then
    begin
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalTypeClaim = Mrok then
      begin
        FmDmic01.PkTranWAREHOUSECOD.Asstring := fSrcDlg1.KeyNo;
      end;
    end;
  end;
end;

procedure TFmSTin02_1.DBGrid1EditButtonClick(Sender: TObject);
var
  LVPrice: string;
begin
  if FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring = '' then
    SFMain.RaiseException('ยังไม่บันทึกระดับราคาขาย');

  if Datasource1.State in DsEditModes then
  begin
    if (DbGrid1.SelectedField.FieldName) = 'PARTNO' then
    begin
      Application.Createform(TfSrcDlg, fSrcDlg);
      if fSrcDlg.ShowModalParts = Mrok then
      begin
        if FmDmic01.PkTran.State = Dsbrowse then
          FmDmic01.PkTran.Edit;
        with FmDmic01.Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:Edit1 AND PARTNO =:EDIT2 ');
          Params[0].Asstring := FmDmic01.Pkinv.Fieldbyname('PKLOCAT').Asstring;
          Params[1].Asstring := fSrcDlg.KeyNo;
          Open;
          if FmDmic01.Query1.Bof and FmDmic01.Query1.Eof then
            SFMain.RaiseException('ไม่พบรหัสสินค้า');
        end;
        if (FmDmic01.Query1.Fieldbyname('NETPRC').Asstring = 'N') and (FmDmic01.PkinvNETADD.AsFloat > 0) then
        begin
          FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').AsFloat;
                                              { FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat+
                                                (FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat*
                                                (FmDmic01.PkinvNETADD.AsFloat/100))  ; }
        end
        else
        begin
          LVPrice := 'Price' + FmDmic01.Pkinv.Fieldbyname('SALLEV').Asstring;
          if CheckBox2.Checked then
            FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('STDBUY').AsFloat
          else
            FmDmic01.PktranUPRICE.AsFloat := FmDmic01.Query1.Fieldbyname('LSTBUY').AsFloat; // FmDmic01.Query1.Fieldbyname(LvPrice).AsFloat;
        end;
        FmDmic01.PktranNetFl.Asstring := FmDmic01.Query1.Fieldbyname('NETPRC').Asstring;
        FmDmic01.PktranPARTNO.Asstring := FmDmic01.Query1.Fieldbyname('PARTNO').Asstring;
      end;
    end;
    if (DbGrid1.SelectedField.FieldName) = 'WAREHOUSECOD' then
    begin
      Application.Createform(TfSrcDlg1, fSrcDlg1);
      if fSrcDlg1.ShowModalTypeClaim = Mrok then
      begin
        FmDmic01.PkTranWAREHOUSECOD.Asstring := fSrcDlg1.KeyNo;
      end;
    end;
  end;
end;

procedure TFmSTin02_1.DBGrid1Enter(Sender: TObject);
begin
  if DBRadioGroup3.Itemindex = 3 then
    if (DBedit3.Text = '') then
    begin
      MessageBeep(0);
      SFMain.RaiseException('ยังบันทึกรหัสลูกค้า หรือ ประเภทขายไม่ครบ'#13 + 'กรณีเลือกส่วนลดข้อ D.');
    end;
  DBkbd1.Disable := True;
end;

procedure TFmSTin02_1.DBGrid1Exit(Sender: TObject);
begin
  DBkbd1.Disable := False;
end;

procedure TFmSTin02_1.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) and (DbGrid1.SelectedField.FieldName = 'PARTNO') then
    DBGrid1EditButtonClick(Sender);
end;

procedure TFmSTin02_1.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    with TRzDBGrid(ActiveControl) do
      if Selectedindex = 0 then
      begin
        if FmDmic01.Pktran.State in [DsInsert] then
        begin
          FmDmic01.Pktran.Append;
          if NmPart <> '' then
          begin
            FmDmic01.PktranPartno.AsString := NmPart;
            FmDmic01.PktranQTYORD.AsFloat := QTYOut;
            FmDmic01.PktranAvgcost.AsFloat := Avcost;
          end;
        end;
      end;
end;

procedure TFmSTin02_1.cxDBMemo1Click(Sender: TObject);
begin
  FmSTin02_1.KeyPreview := False;
end;

procedure TFmSTin02_1.cxDBMemo1Exit(Sender: TObject);
begin
  FmSTin02_1.KeyPreview := True;
end;

procedure TFmSTin02_1.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1, fSrcDlg1);
  if fSrcDlg1.ShowModalTypeClaim = Mrok then
  begin
    cxButtonEdit3.Text := fSrcDlg1.KeyNo;
  end;
end;

end.

