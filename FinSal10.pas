unit FinSal10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask, Dbkbd, DB,
  ImgList, ComCtrls, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit, RzDbkbd, AdvGroupBox,
  AdvOfficeButtons, DBAdvOfficeButtons, cxTextEdit, AdvGlowButton, AdvToolBar,
  cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar, cxContainer, cxMaskEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, AdvOfficeStatusBar, RzSpnEdt,
  cxPC, AdvPanel, ActnList, cxLookAndFeels, cxLookAndFeelPainters,
  dxBarBuiltInMenu, dxDateRanges, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, dxStatusBar,
  cxGroupBox, cxRadioGroup, frxExportXLSX, frxRich, frxTableObject, frxClass,
  frxDCtrl, frxFDComponents, frxGradient, frxExportImage, frxExportPDF,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  THandle = Integer;

  TFFinSal1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label22: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit16: TcxDBTextEdit;
    DBEdit17: TcxDBTextEdit;
    JEdit1: TcxTextEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
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
    DBEdit12: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit18: TcxDBTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TRzDBkbd;
    Query1: TFDQuery;
    ActionList1: TActionList;
    atEdit: TAction;
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
    PrintBuyBtn: TAdvGlowButton;
    PrnTaxBtn: TAdvGlowButton;
    DBRadioGroup1: TcxDBRadioGroup;
    Edit3: TcxTextEdit;
    Label6: TLabel;
    DBEdit21: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    dxStatusBar1: TdxStatusBar;
    cxDBRadioGroup2: TcxDBRadioGroup;
    DBEdit2: TcxDBTextEdit;
    wwDBdtSdate: TcxDBDateEdit;
    DBLocat: TcxDBButtonEdit;
    DBResv: TcxDBButtonEdit;
    DBStrno: TcxDBButtonEdit;
    DBCust: TcxDBButtonEdit;
    dbSales: TcxDBButtonEdit;
    DBEdit15: TcxDBButtonEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit22: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit23: TcxDBTextEdit;
    DBEdit20: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit13: TcxDBTextEdit;
    DBDateEdit1: TcxDBDateEdit;
    DBMemo1: TcxDBMemo;
    Label9: TLabel;
    cxTextEdit1: TcxTextEdit;
    PrnBtn: TAdvGlowButton;
    Action1: TAction;
    Query2: TFDQuery;
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
    procedure InsBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
    procedure DBCustChange(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBEdit15Change(Sender: TObject);
    procedure dbSalesChange(Sender: TObject);
    procedure DBMemo1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrnTaxBtnClick(Sender: TObject);
    procedure PrintBuyBtnClick(Sender: TObject);
    procedure cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBResvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dbSalesPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DBStrnoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure atEditExecute(Sender: TObject);
    procedure DBLocatPropertiesChange(Sender: TObject);
    procedure DBEdit2PropertiesChange(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure PrnBtnClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    S, SvTax: string;
    { Public declarations }
  end;

var
  FFinSal1: TFFinSal1;

implementation

uses
  Dmsec, Dm1, Dmsal, Srchset1, Srchsal1, SrchStk, Functn01, USoftFirm,
  unfrPreview, FinSal11;
     //unReServ;
{$R *.dfm}

procedure TFFinSal1.DataSource1StateChange(Sender: TObject);
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
  PrnTaxBtn.Enabled := CloseBtn.Enabled;
  DBRadioGroup1.Properties.ReadOnly := not SavBtn.Visible;
  cxDBRadioGroup2.Properties.ReadOnly := not SavBtn.Visible;
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
    DBEdit2.Properties.Readonly := Dm_sal.QDbConfig.FieldByName('R_FINCNO').Asstring = 'Y';
  end
  else
if (DataSource1.Dataset.State = DsEdit) then
  begin
    DBEdit2.Properties.Readonly := True;
    DBEdit2.Style.Color := clWhite;
    wwDBdtSdate.Properties.ReadOnly := True;
    DBMemo1.Style.Color := clWhite;
    DBMemo1.Properties.ReadOnly := False;
    DBRadioGroup1.Enabled := False;
    cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := True;
    cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := True;
    cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := True;
  end;

  if (DataSource1.DataSet.State = DsEdit) then
  begin
    if (Dm_sal.QFinSaleSMPAY.AsFloat > Dm_sal.QFinSaleTOTPRES.AsFloat) then
    begin
      cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := False;
      cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := False;
      cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := False;
      DBEdit5.Properties.ReadOnly := True;
      DBEdit5.Style.Color := clBtnFace;
      DBEdit22.Properties.ReadOnly := True;
      DBEdit22.Style.Color := clBtnFace;
      DBEdit3.Properties.ReadOnly := True;
      DBEdit3.Style.Color := clBtnFace;
      DBEdit4.Properties.ReadOnly := True;
      DBEdit4.Style.Color := clBtnFace;
      DBEdit6.Properties.ReadOnly := True;
      DBEdit6.Style.Color := clBtnFace;
      DBEdit23.Properties.ReadOnly := True;
      DBEdit23.Style.Color := clBtnFace;
      DBEdit20.Properties.ReadOnly := True;
      DBEdit20.Style.Color := clBtnFace;
      DBEdit7.Properties.ReadOnly := True;
      DBEdit7.Style.Color := clBtnFace;
      DBEdit8.Properties.ReadOnly := True;
      DBEdit8.Style.Color := clBtnFace;

      DBEdit21.Properties.ReadOnly := True;
      DBEdit21.Style.Color := clBtnFace;
      DBEdit11.Properties.ReadOnly := True;
      DBEdit11.Style.Color := clBtnFace;

      DBDateEdit1.Properties.ReadOnly := True;
      DBDateEdit1.Style.Color := clBtnFace;
    end
    else
    begin
      cxGrid1DBTableView1.NavigatorButtons.Insert.Enabled := True;
      cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := True;
      cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := True;
      DBEdit5.Properties.ReadOnly := False;
      DBEdit5.Style.Color := clWhite;
      DBEdit22.Properties.ReadOnly := False;
      DBEdit22.Style.Color := clWhite;
      DBEdit3.Properties.ReadOnly := False;
      DBEdit3.Style.Color := clWhite;
      DBEdit4.Properties.ReadOnly := False;
      DBEdit4.Style.Color := clWhite;
      DBEdit6.Properties.ReadOnly := False;
      DBEdit6.Style.Color := clWhite;
      DBEdit23.Properties.ReadOnly := False;
      DBEdit23.Style.Color := clWhite;
      DBEdit20.Properties.ReadOnly := False;
      DBEdit20.Style.Color := clWhite;
      DBEdit7.Properties.ReadOnly := False;
      DBEdit7.Style.Color := clWhite;
      DBEdit8.Properties.ReadOnly := False;
      DBEdit8.Style.Color := clWhite;

      DBEdit21.Properties.ReadOnly := False;
      DBEdit21.Style.Color := clWhite;
      DBEdit11.Properties.ReadOnly := False;
      DBEdit11.Style.Color := clWhite;

      DBDateEdit1.Properties.ReadOnly := False;
      DBDateEdit1.Style.Color := clWhite;
    end;
  end;

  if (DataSource1.DataSet.State = DsInsert) then
  begin
    DBEdit2.Enabled := True;
    DBEdit2.Style.Color := clWhite;
    wwDBdtSdate.Properties.ReadOnly := False;
  end;

  if (Dm_sal.QFinSale.Fieldbyname('Taxno').Asstring <> '') then
  begin
    DBMemo1.Properties.Readonly := False;
    DBMemo1.Style.Color := clWhite;
    dbSales.Properties.ReadOnly := False;
    dbSales.Style.Color := clWhite;
    dbCust.Properties.ReadOnly := False;
    dbCust.Style.Color := clWhite;

    DBEdit7.Properties.Readonly := False;  // DBEdit7.Style.Color      := clWhite;
    DBEdit13.Properties.Readonly := False;  // DBEdit13.Style.Color    := clWhite;

    DBRadioGroup1.Enabled := False;
  end;
    //--Lock Branch---
  DBLocat.Enabled := (SFMain.XChgloc = 'Y') and (DataSource1.Dataset.State = DsInsert);
  wwDBdtSdate.Enabled := (SFMain.XChgdate = 'Y') and (DataSource1.Dataset.State = DsInsert);
  DBEdit2.Properties.Readonly := Dm_sal.QDbConfig.FieldByName('R_FINCNO').Asstring = 'Y';

  if DBEdit2.Properties.Readonly then
    DBEdit2.Style.Color := clBtnFace
  else
    DBEdit2.Style.Color := clWhite;
  if DBEdit15.Properties.Readonly then
    DBEdit15.Style.Color := $00EAF3F4
  else
    DBEdit15.Style.Color := clWhite;
end;

procedure TFFinSal1.InsBtnClick(Sender: TObject);
begin
  if not Dm_sal.QDbConfig.Active then
    Dm_sal.QDbConfig.Open;
  Dm_sal.XRunCont := Dm_sal.QDbConfig.FieldByName('R_FINCNO').Asstring;
  Dm01.Do_With_Query(actInsert, Dm_sal.QFinSale, 'SELECT * FROM ARFINC WHERE CONTNO=:EDIT1', ['']);
  Dm01.Do_With_Query(actOpen, Dm_Sal.QFinOpt, 'SELECT * FROM ARINOPT WHERE CONTNO =:XCONT And LOCAT =:XLocat', ['', '']);
  Dm01.Do_With_Query(actOpen, Dm_Sal.QResv, 'SELECT * FROM ARRESV WHERE RESVNO=:XRESVNO', ['']);
  JEdit1.Text := '';
  DBCust.SetFocus;
end;

procedure TFFinSal1.DelBtnClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่เอกสาร..!');

  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      begin
        if Dm_sal.QFinSalePOSTGL.AsString = 'Y' then
          SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

        with Query1 do
        begin
          close;
          sql.Clear;
          sql.Add('SELECT contno,sum(payamt) payamt FROM chqtran where payfor in (''003'',''004'') ' +
            'and flag <> ''C'' and contno =:EDIT1 group by contno ');
          params[0].AsString := Dm_sal.QFinSale.Fieldbyname('CONTNO').asstring;
          open;

          if not (eof and bof) then
            SFMain.RaiseException('มีการรับชำระเงินแล้ว');

      {If (Dm_sal.QFinSaleSmpay.Asfloat+Dm_sal.QFinSaleSmchq.Asfloat)>
        (Dm_sal.QFinSaleNPAYRES.Asfloat+Dm_sal.QFinSaleVATPRES.Asfloat) Then }
          Dm_sal.QFinSale.Edit;
          Dm_sal.QFinSale.Fieldbyname('Flcancl').asstring := 'C';
          Dm_sal.QFinSale.Fieldbyname('Delid').asstring := SFMain.Xuser_Id;
          Dm_sal.QFinSale.Fieldbyname('deldt').asdatetime := Now;
          Dm_sal.QFinSale.Post;
          Dm_sal.QFinSale.Delete;

          Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_3', 'DELETE', DBEdit2.Text);
          if DM_SEC.qrRecent.UpdatesPending then
            if (DM_SEC.qrRecent.ApplyUpdates = 0) then
              DM_SEC.qrRecent.CommitUpdates
            else
              raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
        end;
      end;
  end;
  JEdit1.Text := '';
end;

procedure TFFinSal1.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SFMain.XChgloc = 'Y' then
    Searchsale.XLocat := ''
  else
    Searchsale.XLocat := SFMain.Xlocat;
  if SearchSale.ShowModalArFinc = Mrok then
  begin
    Dm01.Do_With_Query(actOpen, Dm_Sal.QFinSale, 'SELECT * FROM ARFINC WHERE CONTNO=:CONT', [SearchSale.Keyno]);
    Dm01.Do_With_Query(actOpen, Dm_Sal.QFinOpt, 'SELECT * FROM ARINOPT WHERE CONTNO=:CONT AND LOCAT=:XLOCAT ', [Dm_Sal.QFinSale.FieldByName('Contno').Asstring,
      Dm_Sal.QFinSale.FieldByName('Locat').Asstring]);
    Dm01.Do_With_Query(actOpen, Dm_Sal.QResv, 'SELECT * FROM ARRESV WHERE RESVNO=:XRESVNO', [Dm_Sal.QFinSale.FieldByName('Resvno').Asstring]);
  end;
end;

procedure TFFinSal1.SavBtnClick(Sender: TObject);
var
  SvRes: Double;
begin
{   If (Dm_sal.QFinSale.FieldByName('Taxno').Asstring = '') then
      Svtax := ''
   else
      Svtax := Dm_sal.QFinSale.FieldByName('Taxno').Asstring; }
  if Dm_sal.QFinSale.state in [Dsinsert, Dsedit] then
    if Dm_Sal.QFinSaleKeyin.value > 0 then
    begin
      if Dm_Sal.QFinSaleResvno.Asstring = '' then
        SvRes := 0
      else
        SvRes := Dm_Sal.QResv.FieldByName('Smpay').Asfloat + Dm_Sal.QResv.FieldByName('Smchq').Asfloat;
      if (Dm_Sal.QFinSaleSmpay.value + Dm_Sal.QFinSaleSmchq.value) = SvRes then
      begin
        Dm_Sal.QFinSale.Post;
      end
      else
      begin
        Dm_Sal.QFinSale.BeforePost := Nil;
        Dm_Sal.QFinSale.Post;
        Dm_Sal.QFinSale.BeforePost := Dm_Sal.QFinSale.BeforePost;
      end;

      if Datasource1.DataSet.State = dsInsert then
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_3', 'INSERT', DBEdit2.Text)
      else
        Dm_sec.ChkRecent(SFMain.Xuser_ID, 'HDSL01_3', 'EDIT', DBEdit2.Text);
      if DM_SEC.qrRecent.UpdatesPending then
        if (DM_SEC.qrRecent.ApplyUpdates = 0) then
          DM_SEC.qrRecent.CommitUpdates
        else
          raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
    end
    else
      SFMain.RaiseException('ยังไม่ได้คีย์ราคาขายรถ...!');

{    If (Svtax = '') Then
  Begin
     Application.CreateForm(TFFinSal2,FFinSal2);
     FFinSal2.XContno := S;
     If Duplicate2 Then
        FFinSal2.Showmodal;
  end;  }

  with Dm_sal.QFinSale do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT * FROM ARFINC WHERE CONTNO=:EDIT1');
    Params[0].Asstring := S;
    open;
  end;
  with Dm_Sal.QFinOpt do
  begin
    CLOSE;
    SQL.Clear;
    SQL.Add('SELECT * FROM ARINOPT WHERE CONTNO = :XCONT ' +
      'And LOCAT = :XLocat');
    Params[0].Asstring := S;
    Params[1].Asstring := Dm_sal.QFinSale.FieldByName('Locat').Asstring;
    Open;
  end;
  Dm01.Do_With_Query(actOpen, Dm_sal.QResv, 'SELECT * FROM ARRESV WHERE RESVNO=:XRESVNO', [Dm_Sal.QFinSale.FieldByName('Resvno').Asstring]);
end;

procedure TFFinSal1.CancBtnClick(Sender: TObject);
begin
  Dm_sal.QFinSale.cancel;
  JEdit1.Text := '';
end;

procedure TFFinSal1.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFFinSal1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSL', 'HDSL01_3');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing := SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;
end;

procedure TFFinSal1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FfinSal1 := Nil;
end;

procedure TFFinSal1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFFinSal1.frReport1UserFunction(const Name: string; p1, p2, p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//     SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//     VAL := SFMain.n2wBill.Text;
//  END;
end;

procedure TFFinSal1.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if Uppercase(VarName) = 'VCONTNO' then
    Value := DBEdit2.Text;

  if Uppercase(VarName) = 'VFCONT' then
    Value := cxTextEdit1.Text;
end;

procedure TFFinSal1.DBCustChange(Sender: TObject);
begin
  with Dm_sal.Query1 do
  begin
    Close;
    Sql.clear;
    Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST ' +
      'WHERE CUSCOD=:Var0');
    Params[0].Asstring := Dm_sal.QFinSale.Fieldbyname('CUSCOD').Asstring;
    open;
    if not (eof and BOF) then
    begin
      JEdit1.Text := FieldByName('SNAM').Asstring +
        FieldByName('NAME1').Asstring + '  ' +
        FieldByName('NAME2').Asstring;
    end;
  end;
end;

procedure TFFinSal1.DBMemo1Exit(Sender: TObject);
begin
  FFinSal1.KeyPreview := True;
end;

procedure TFFinSal1.DBEdit15Change(Sender: TObject);
begin
  Edit2.Text := DM01.FindShowDesc('FINMAST', 'FINNAME', 'FINCODE', DBEdit15.Text);
end;

procedure TFFinSal1.dbSalesChange(Sender: TObject);
begin
  Edit1.Text := DM01.FindShowDesc('OFFICER', 'NAME', 'CODE', dbSales.Text);
end;

procedure TFFinSal1.DBMemo1Click(Sender: TObject);
begin
  FFinSal1.KeyPreview := False;
end;

procedure TFFinSal1.FormShow(Sender: TObject);
begin
  if not Dm_sal.QDbConfig.Active then
    Dm_sal.QDbConfig.Open;
  Dm01.Do_With_Query(actOpen, Dm_sal.QFinsale, 'SELECT * FROM ARFINC WHERE CONTNO=:EDIT1', ['']);
  Dm01.Do_With_Query(actOpen, Dm_Sal.QFinOpt, 'SELECT * FROM ARINOPT WHERE CONTNO =:XCONT And LOCAT =:XLocat', ['', '']);
end;

procedure TFFinSal1.PrnTaxBtnClick(Sender: TObject);
begin
  if Dm_sal.QFinSale.FieldByName('Contno').Asstring = '' then
    SFMain.RaiseException('กรุณาเลือกเลขที่สัญญาก่อนทำรายการ..!');

  S := Dm_sal.QFinSale.FieldByName('Contno').Asstring;
  Application.CreateForm(TFFinSal2, FFinSal2);
  FFinSal2.XContno := S;
  FFinSal2.Showmodal;
end;

procedure TFFinSal1.PrintBuyBtnClick(Sender: TObject);
begin
  DM_Sec.Do_Prev_Edit_FastReport(frxReport1,'fr_ReqBuyCar.fr3','1'); {1 = Preview Report}
end;

procedure TFFinSal1.cxGrid1DBTableView1OPTCODEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (DataSource1.DataSet.State = DsInsert) then
  begin
    Application.Createform(TSearchSale, SearchSale);
    SearchSale.XLocat := Dm_sal.QFinSale.FieldByName('Locat').Asstring;
    if SearchSale.ShowModalOptmas = Mrok then
    begin
      DM_Sal.QFinopt.Edit;
      DM_Sal.QFinopt.FieldByname('Tsale').Asstring := Dm_sal.QFinSale.Fieldbyname('Tsale').Asstring;
      DM_Sal.QFinopt.FieldByname('Locat').Asstring := Dm_sal.QFinSale.Fieldbyname('Locat').Asstring;
      DM_Sal.QFinopt.FieldByname('Contno').Asstring := Dm_sal.QFinSale.Fieldbyname('Contno').Asstring;
      DM_Sal.QFinopt.FieldByname('Optcode').Asstring := SearchSale.HQuery1.fieldbyname('Optcode').Asstring;
      DM_sal.QFinOpt.FieldByName('OPTNAME').AsString := SearchSale.HQuery1.fieldbyname('OPTNAME').AsString;
      DM_Sal.QFinopt.FieldByname('Uprice').AsFloat := SearchSale.HQuery1.fieldbyname('UNITPRC').AsFloat;
      DM_Sal.QFinOPT.Fieldbyname('Qty').Asfloat := 1;
    end;
  end;
end;

procedure TFFinSal1.DBLocatPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetLocat = Mrok then
    Dm_sal.QFinSale.Fieldbyname('LOCAT').Asstring := SearchSet.Keyno;
end;

procedure TFFinSal1.DBResvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SFMain.XChgloc = 'Y' then
    Searchsale.XLocat := ''
  else
    Searchsale.XLocat := SFMain.Xlocat;
  SearchSale.ResvSale := ' AND SDATE IS NULL AND FLCANCLE <>''C'' ';
  //  SearchSale.XCanf := '';
  if SearchSale.ShowModalResv = Mrok then
  begin
    with Dm_sal.QResv do
    begin
      close;
      sql.clear;
      sql.add('SELECT * FROM ARRESV WHERE RESVNO=:XRESVNO AND LOCAT=:XLOC AND FLCANCLE <>''C'' ');
      Params[0].asstring := SearchSale.Keyno;
      Params[1].asstring := Dm_sal.QFinSale.Fieldbyname('LOCAT').AsString;
      open;
    end;

    with Query2 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT SUM(SMPAY) SMPAY,SUM(SMCHQ) SMCHQ FROM ARRESV WHERE REFRESVNO=:XRESVNO AND LOCAT=:XLOC AND FLCANCLE <>''C'' ');
      Params[0].AsString := SearchSale.Keyno;
      Params[1].AsString := Dm_sal.QFinSale.Fieldbyname('LOCAT').AsString;
      Open;
    end;
  { if Dm_sal.QResv.FieldByName('TRESVNO').AsString='' then
   SFMain.RaiseException('ยังไม่ระบุใบจองรายละเอียดรถในระบบการจองสินค้า...!');     }
    if not Dm_sal.QResv.Eof and Dm_sal.QResv.Bof then
    begin
      Dm_sal.QFinSale.Fieldbyname('Resvno').Asstring := SearchSale.Keyno;
      Dm_sal.QFinSale.Fieldbyname('Smpay').AsFloat := Dm_sal.QResv.Fieldbyname('Smpay').AsFloat + Query2.Fieldbyname('Smpay').AsFloat;
      Dm_sal.QFinSale.Fieldbyname('Smchq').AsFloat := Dm_sal.QResv.Fieldbyname('Smchq').AsFloat + Query2.Fieldbyname('Smchq').AsFloat;
      Dm_sal.QFinSale.Fieldbyname('paydwn').AsFloat := Dm_sal.QResv.Fieldbyname('Smpay').AsFloat + Dm_sal.QResv.Fieldbyname('Smchq').AsFloat +
        Query2.Fieldbyname('Smpay').AsFloat + Query2.Fieldbyname('Smchq').AsFloat;
      Dm_sal.QFinSale.Fieldbyname('SALCOD').Asstring := Dm_sal.QResv.Fieldbyname('SALCOD').AsString;
    end;

    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM TRESERV WHERE  RESVNO=:0');
      params[0].AsString := Dm_sal.QResv.fieldbyname('TRESVNO').AsString;
      open;
    end;
    if not Query1.Eof and Query1.Bof then
    begin
      Dm_sal.QFinSale.FieldByName('FINCOD').AsString := Query1.fieldbyname('FINCOD').AsString;
      Dm_sal.QFinSale.FieldByName('KEYINDWN').AsFloat := Query1.fieldbyname('KEYDWN').AsFloat;
      Dm_sal.QFinSale.FieldByName('DSCPRC').AsFloat := Query1.fieldbyname('DISCOPT').AsFloat;
      Dm_sal.QFinSale.FieldByName('TOT_UPAY').AsFloat := Query1.fieldbyname('PAYDUE').AsFloat;
      Dm_sal.QFinSale.FieldByName('TNOPAY').AsFloat := Query1.fieldbyname('TNOPAY').AsFloat;
      Dm_sal.QFinSale.FieldByName('COMOPT').AsFloat := Query1.fieldbyname('FLRATE').AsFloat;
    end;
  end;
end;

procedure TFFinSal1.DBCustPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalCuscod = Mrok then
  begin
    Dm_sal.QFinSale.Fieldbyname('CUSCOD').Asstring := SearchSale.Keyno;
    with Dm_sal.Query1 do
    begin
      Close;
      Sql.clear;
      Sql.add('SELECT CUSCOD,SNAM,NAME1,NAME2,ADDRNO FROM CUSTMAST ' +
        'WHERE CUSCOD=:Var0');
      Params[0].Asstring := Dm_sal.QFinSale.Fieldbyname('CUSCOD').Asstring;
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

procedure TFFinSal1.dbSalesPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetOfficer = Mrok then
    Dm_sal.QFinSale.Fieldbyname('SALCOD').Asstring := SearchSet.Keyno;
end;

procedure TFFinSal1.DBEdit15PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSet, SearchSet);
  if SearchSet.ShowModalsetFinmst = Mrok then
    Dm_sal.QFinSale.Fieldbyname('FINCOD').Asstring := SearchSet.Keyno;
end;

procedure TFFinSal1.DBStrnoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale, SearchSale);
  SearchSale.Xflg := 'D';
  SearchSale.XLocat := Dm_sal.QFinSale.Fieldbyname('Locat').Asstring;
  if SearchSale.ShowModalStrno = Mrok then
    if (Datasource1.State = DsInsert) then
      Dm_sal.QFinSale.Fieldbyname('Strno').Asstring := SearchSale.Keyno;
end;

procedure TFFinSal1.atEditExecute(Sender: TObject);
begin
  DM_Sec.Do_Prev_Edit_FastReport(frxReport1,'fr_ReqBuyCar.fr3','2'); {2 = Design Report}
end;

procedure TFFinSal1.DBLocatPropertiesChange(Sender: TObject);
begin
  Edit3.Text := SFMain.FindShowDesc('INVLOCAT', 'LOCATNM', 'LOCATCD', DBLocat.Text);
end;

procedure TFFinSal1.DBEdit2PropertiesChange(Sender: TObject);
begin
  with Dm_sal.Query1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from taxtran where tsale = ''R'' and contno =:edit1 and (flag = '''' or flag is null)');
    params[0].AsString := DBEdit2.Text;
    open;

    cxTextEdit1.Text := Dm_sal.Query1.fieldbyname('TAXNO').AsString;
  end;
end;

procedure TFFinSal1.Action1Execute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnTaxRd.fr3','2'); {1 = Preview Report}
end;

procedure TFFinSal1.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  PrnBtn.Visible := cxTextEdit1.Text <> '';
end;

procedure TFFinSal1.PrnBtnClick(Sender: TObject);
begin
  if cxTextEdit1.Text = '' then
    sfmain.RaiseException('ไม่พบเลขอ้างอิงใบลดหนี้เงินจอง..!');
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_PrnTaxRd.fr3','1'); {1 = Preview Report}
end;

end.

