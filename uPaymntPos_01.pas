unit uPaymntPos_01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, ComCtrls, ToolWin, RzLabel,
  RzSpnEdt, RzPanel, cxButtonEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit, AdvGlowButton,
  AdvToolBar, AdvPanel, cxLookAndFeelPainters, cxGroupBox, cxRadioGroup,
  ActnList, RzDbkbd, cxGraphics, cxLookAndFeels, dxStatusBar, BusinessSkinForm,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RzBorder, cxImageComboBox, cxCurrencyEdit,
  cxNavigator, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  cxPCdxBarPopupMenu, cxPC, cxCalc, Menus, cxButtons, dxBarBuiltInMenu,
  dxDateRanges, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxExportXLSX, frxRich, frxDCtrl,
  frxTableObject, frxExportPDF, frxExportImage, frxGradient, frxFDComponents,
  frxBDEComponents, frxExportBaseDialog, frxExportCSV, frxCross, frxChBox,
  frxChart, frxBarcode;

type
  TFPaymntPos_01 = class(TForm)
    dxStatusBar1: TdxStatusBar;
    AdvPanel1: TAdvPanel;
    DataSource1: TDataSource;
    ActionList1: TActionList;
    actEditPrn: TAction;
    DBkbd1: TRzDBkbd;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label35: TLabel;
    Label36: TLabel;
    DataSource2: TDataSource;
    QPaytyp: TFDQuery;
    QPaytypPAYCODE: TStringField;
    QPaytypPAYDESC: TStringField;
    QPaytypRLBILL: TStringField;
    QPaytypSNCSET: TStringField;
    QPaytypMEMO1: TMemoField;
    QPaytypACC_CODE: TStringField;
    DBEdit2: TcxDBTextEdit;
    DBEdit1: TcxDBTextEdit;
    DBEdit22: TcxDBTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Bevel2: TBevel;
    RzLabel1: TRzLabel;
    Label29: TLabel;
    Label37: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    DBEdit9: TcxDBTextEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label27: TLabel;
    DBEdit17: TcxDBTextEdit;
    TaxDate: TcxDBDateEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit12: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit19: TcxDBTextEdit;
    DBEdit20: TcxDBTextEdit;
    DBEdit21: TcxDBTextEdit;
    cxGroupBox18: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3PAYFOR: TcxGridDBColumn;
    cxGridDBTableView3CONTNO: TcxGridDBColumn;
    cxGridDBTableView3PAYAMT: TcxGridDBColumn;
    cxGridDBTableView3PAYINT: TcxGridDBColumn;
    cxGridDBTableView3VATRTPAY: TcxGridDBColumn;
    cxGridDBTableView3DISCT: TcxGridDBColumn;
    cxGridDBTableView3NETPAY: TcxGridDBColumn;
    cxGridDBTableView3DIVICOD: TcxGridDBColumn;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PAYFOR: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid3DBTableView2: TcxGridDBTableView;
    cxGrid3DBTableView2PAYCODE: TcxGridDBColumn;
    cxGrid3DBTableView2CHQNO: TcxGridDBColumn;
    cxGrid3DBTableView2BANKBOOKCOD: TcxGridDBColumn;
    cxGrid3DBTableView2BANKLOCAT: TcxGridDBColumn;
    cxGrid3DBTableView2DTONCHQ: TcxGridDBColumn;
    cxGrid3DBTableView2AMOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1PAYFOR: TcxGridDBColumn;
    cxGrid2DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid2DBTableView1AMOUNT: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Bevel3: TBevel;
    DBEdit4: TcxDBTextEdit;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    cxCheckBox1: TcxCheckBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Label7: TLabel;
    Query1: TFDQuery;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxChartObject1: TfrxChartObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxCSVExport1: TfrxCSVExport;
    frxBDEComponents1: TfrxBDEComponents;
    frxFDComponents1: TfrxFDComponents;
    frxGradientObject1: TfrxGradientObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxPDFExport1: TfrxPDFExport;
    frxReportTableObject1: TfrxReportTableObject;
    frxDialogControls1: TfrxDialogControls;
    frxRichObject1: TfrxRichObject;
    frxXLSXExport1: TfrxXLSXExport;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBGridTranBKCODEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid3DBTableView2PAYCODEPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesChange(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPaymntPos_01: TFPaymntPos_01;
  Xinvno:string;

implementation
uses Dmic01,EntrChq,USoftFirm,Dmar,uSrcDlg, DmSet1, unfrPreview, Dmsec, uSrcDLGAr,uPos;
{$R *.DFM}

procedure TFPaymntPos_01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  With FmDmic01.Icinv Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM IC_INVOI WHERE INVNO =:XINVNO');
    PARAMS[0].ASSTRING := Xinvno;
    OPEN;
  End;
  //
  With FmDmic01.ictran Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM IC_TRANS WHERE INVNO =:XINVNO');
    PARAMS[0].ASSTRING := Xinvno;
    OPEN;
  End;

  If FmDmic01.QArpaytrn1.Active Then FmDmic01.QArpaytrn1.Close;
  If FmDmic01.QArpaytrn_Typ.Active Then FmDmic01.QArpaytrn_Typ.Close;
  If FmDmic01.QArChq.Active Then FmDmic01.QArChq.Close;
  if QPaytyp.Active then QPaytyp.Close;

  Action := Cafree;
  FPaymntPos_01 := nil;
  //FPos.InsBtnClick(Sender);
end;

procedure TFPaymntPos_01.DataSource1StateChange(Sender: TObject);
Var n : Word;
begin
  {SaveBtn.Visible  := (DataSource1.Dataset.State In DsEditModes) and
                      (FmDmic01.IcinvCANCELID.Asstring='') ;

  CancBtn.Visible  := SaveBtn.Visible;
  Delbtn.Visible   := (not (DataSource1.Dataset.State = DsInsert)) and (DBEdit17.Text <> '');
  PrnBtn.Visible   := (DataSource1.Dataset.State=Dsbrowse)and (DBEdit17.Text <> ''); }



  {AdvGlowButton2.Enabled  := (DataSource1.Dataset.State In DsEditModes) and
                      (FmDmic01.IcinvCANCELID.Asstring='') ;

  AdvGlowButton3.Enabled  := (DataSource1.Dataset.State In DsEditModes) and
                      (FmDmic01.IcinvCANCELID.Asstring='') ;
  AdvGlowButton1.Enabled  := (not (DataSource1.Dataset.State = DsInsert)) and (DBEdit17.Text <> '');
  AdvGlowButton4.Enabled  := (DataSource1.Dataset.State=Dsbrowse)and (DBEdit17.Text <> '');
  AdvGlowButton5.Enabled  := (DataSource1.State=Dsbrowse); }




  if FmDmIc01.QArpaytrn1CANCELID.AsString<>'' Then
  RzLabel1.Visible := True
  Else
  RzLabel1.Visible := False;

  cxGrid3DBTableView2.NavigatorButtons.Insert.Enabled := AdvGlowButton2.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Delete.Enabled := AdvGlowButton2.Visible;
  cxGrid3DBTableView2.NavigatorButtons.Append.Enabled := AdvGlowButton2.Visible;


  If DataSource1.Dataset.State = Dsbrowse Then
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TcxGridDBTableView)and(TcxGridDBTableView(Components[n]).Tag=0)  Then
        begin
          TcxGridDBTableView(Components[n]).OptionsData.Editing := False;
        end;

        If (Components[n] Is TcxDBButtonEdit)and (TcxDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBButtonEdit(Components[n]).Enabled := False;
          TcxDBButtonEdit(Components[n]).Style.Color := clBtnFace;
        end;

        If (Components[n] Is TcxDBTextEdit)and (TcxDBTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
          //TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
        end;

        If (Components[n] Is TcxDBDateEdit)and (TcxDBDateEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBDateEdit(Components[n]).Enabled := False;
          TcxDBDateEdit(Components[n]).Style.Color := clBtnFace;
        end;

        If (Components[n] Is TcxDBMemo)and (TcxDBMemo(Components[n]).Tag=0)  Then
        begin
          TcxDBMemo(Components[n]).Properties.ReadOnly := True;
          TcxDBMemo(Components[n]).Style.Color := clBtnFace;
        end;

        If (Components[n] Is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxTextEdit(Components[n]).Style.Color := clBtnface;
        end;

        If (Components[n] Is TcxDBLookupComboBox)and (TcxDBLookupComboBox(Components[n]).Tag=0)  Then
        begin
          TcxDBLookupComboBox(Components[n]).Properties.ReadOnly := True;
          TcxDBLookupComboBox(Components[n]).Style.Color := clBtnFace;
        end;
      end;
    End
    Else
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TcxGridDBTableView)and(TcxGridDBTableView(Components[n]).Tag=0)  Then
        begin
          TcxGridDBTableView(Components[n]).OptionsData.Editing := True;
        end;

        If (Components[n] Is TcxDBButtonEdit)and (TcxDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBButtonEdit(Components[n]).Enabled := True;
          TcxDBButtonEdit(Components[n]).Style.Color := clWhite;
        end;

        If (Components[n] Is TcxDBTextEdit)and (TcxDBTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
          //TcxDBTextEdit(Components[n]).Style.Color := clWhite;
        end;

        If (Components[n] Is TcxDBDateEdit)and (TcxDBDateEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBDateEdit(Components[n]).Enabled := True;
          TcxDBDateEdit(Components[n]).Style.Color := clWhite;
        end;

        If (Components[n] Is TcxDBMemo)and (TcxDBMemo(Components[n]).Tag=0)  Then
        begin
          TcxDBMemo(Components[n]).Properties.ReadOnly := False;
          TcxDBMemo(Components[n]).Style.Color := clWhite;
        end;

        If (Components[n] Is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxTextEdit(Components[n]).Style.Color := clWhite;
        end;

        If (Components[n] Is TcxDBLookupComboBox)and (TcxDBLookupComboBox(Components[n]).Tag=0)  Then
        begin
          TcxDBLookupComboBox(Components[n]).Properties.ReadOnly := False;
          TcxDBLookupComboBox(Components[n]).Style.Color := clWhite;
        end;
      end;
    End;
end;

procedure TFPaymntPos_01.DBEdit7Change(Sender: TObject);
begin
  {DBedit13.Enabled  := (DBedit7.Text='01');
  DBedit10.Enabled  := (DBedit7.Text='02');
  cxDBTextEdit2.Enabled  := (DBedit7.Text='10');
  cxDBTextEdit3.Enabled  := (DBedit7.Text='90');
  //
  If DBedit13.Enabled Then
   DBedit13.Style.Color := clWhite
  Else
   DBedit13.Style.Color := clSilver;
  If DBedit10.Enabled Then
   DBedit10.Style.Color := clWhite
  Else
   DBedit10.Style.Color := clSilver; }
end;

procedure TFPaymntPos_01.SaveBtnClick(Sender: TObject);
begin
  if FmDmic01.QArpaytrn1RECV_MONEY.AsFloat = 0 then
    sfmain.RaiseException('กรุณาระบุจำนวนเงินที่รับ..!');
  if DBEdit6.Text = '' then
    sfmain.RaiseException('ไม่พบเลขที่ใบส่งสินค้า..!');

 { if (DBEdit7.Text = '10') and (cxDBButtonEdit1.Text = '') then
  sfmain.RaiseException('เป็นเงินโอน กรุณาระบุธนาคาร..!');  }

  FmDmic01.QArpaytrn_Typ.DisableControls ;
  FmDmic01.QArpaytrn_Typ.First ;
  while not(FmDmic01.QArpaytrn_Typ.Eof) Do
    Begin
      if (FmDmic01.QArpaytrn_TypPAYCODE.AsString = '02') then
      begin
        if FmDmic01.QArpaytrn_TypCHQNO.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดเลขที่เช็ค..!');
      end;

      if (FmDmic01.QArpaytrn_TypPAYCODE.AsString = '10') then
      begin
        if FmDmic01.QArpaytrn_TypBANKBOOKCOD.AsString = '' then
        SFMain.RaiseException('ยังไม่กำหนดรหัสธนาคาร..!');
      end;

      {If (FmDmic01.QArpaytrn_TypAMOUNT.Asfloat <= 0) Then  FmDmic01.QArpaytrn_Typ.Delete
      else FmDmic01.QArpaytrn_Typ.Next;}
      FmDmic01.QArpaytrn_Typ.Next;
    End;
  FmDmic01.QArpaytrn_Typ.EnableControls ;

  if FmDmic01.QArpaytrn_Typ.RecordCount = 0 then
  begin
    FmDmic01.QArpaytrn_Typ.Append;
    SFMain.RaiseException('กรุณาบันทึกข้อมูลให้ครบก่อนบันทึก..!');
  end;

  FmDmic01.QArpaytrn1.Post;
  AdvGlowButton5.SetFocus;
  PrnBtnClick(Sender);
end;

procedure TFPaymntPos_01.DelBtnClick(Sender: TObject);
begin

  if DBEdit17.Text = '' then
  sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');

  IF FmDmic01.QArpaytrn1POSTGL.AsString = 'Y' then
  SFMain.RaiseException('ลงบัญชีแล้ว กรุณาตรวจสอบข้อมูล...!');

 { Dm_Ar.QArChq.DisableControls ;
  Dm_Ar.QArChq.First ;
  while not(Dm_Ar.QArChq.Eof) Do
    Begin
      If (Dm_Ar.QArChqCHQNO.AsString = '') Then  Dm_Ar.QArChq.Delete
      else Dm_Ar.QArChq.Next;
    End;
  Dm_Ar.QArChq.EnableControls ; }

  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk :
    begin
      with FmDmic01.Query1 do
      begin
        close;
        sql.Clear;
        sql.Add('update ic_invoi set taxrefno = '''',paid = 0 '+
                'where TAXREFNO =:edit2');
        params[0].AsString := FmDmic01.QArpaytrn1.Fieldbyname('BILLNO').Asstring;
        execSql;
      end;

      FmDmic01.QArpaytrn1.Edit;
      FmDmic01.QArpaytrn1CancelId.AsString  := SFMain.XUser_ID;
      FmDmic01.QArpaytrn1Candat.AsDateTime  := Now;
      FmDmic01.QArpaytrn1.Fieldbyname('Invno').Asstring := '';
      FmDmic01.QArpaytrn1.Fieldbyname('Taxno').Asstring := '';
      FmDmic01.QArpaytrn1.Fieldbyname('Flag').Asstring  := 'C';
      FmDmic01.QArpaytrn1.Post;
    end;
  end;
end;

procedure TFPaymntPos_01.CancBtnClick(Sender: TObject);
begin
  FmDmic01.QArpaytrn1.cancel;
  FmDmic01.QArpaytrn_Typ.Cancel;
end;

procedure TFPaymntPos_01.CloseBtnClick(Sender: TObject);
begin
  Close;
  if assigned(FPos) then
  begin
  FPos.InsBtnClick(Sender);
  FPos.cxButtonEdit1.SetFocus;
  end;
end;

procedure TFPaymntPos_01.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
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

procedure TFPaymntPos_01.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PBILLNO' then
     Value := DBEdit17.Text;
end;

procedure TFPaymntPos_01.PrnBtnClick(Sender: TObject);
begin
  if DBEdit17.Text = '' Then
     sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Billicinv3.fr3','3');
  CloseBtnClick(Sender);

end;

procedure TFPaymntPos_01.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_Billicinv3.fr3','3');
end;

procedure TFPaymntPos_01.FormShow(Sender: TObject);
Var N : Word;
    dis : double;
begin
  Label7.Caption := IntToStr(FPos.nQty);
  Xinvno := FmDmic01.IcinvINVNO.Asstring;
  with FmDmic01.QArpaytrn1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARPAYTRN WHERE BILLNO =:XBILLNO ');
    params[0].AsString := FmDmic01.IcinvTAXREFNO.AsString;
    Open;
    if (eof and bof) then
      begin
        Insert;
        
        with query1 do
        begin
          close;
          sql.Clear;
          sql.Add('select discamt from pk_invoi where refno =:edit1');
          params[0].AsString := FmDmic01.IcinvTAXREFNO.AsString;
          open;
        end;

        dis := query1.fieldbyname('DISCAMT').AsFloat;

        FmDmic01.QArpaytrn1.FieldByName('NETTOT').AsFloat := FmDmic01.QArpaytrn1.FieldByName('NETTOT').AsFloat-dis;
        FmDmic01.QArpaytrn1.FieldByName('RECV_MONEY').AsFloat := FmDmic01.QArpaytrn1.FieldByName('NETTOT').AsFloat;
      end;
  end;

  With FmDmic01.Qtmpicinv Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT INVNO,PAID,TAXREFNO,NETPRC,DEPOSTNO,DEPOSTAX FROM IC_INVOI WHERE INVNO =:XINVNO');
    PARAMS[0].ASSTRING := FmDmic01.IcinvINVNO.Asstring;
    OPEN;
    If Bof and Eof Then
    SFMain.RaiseException('ไม่พบใบส่งของ/ใบกำกับ');
  END;

  With FmDmic01.QArpaytrn_Typ Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ARPAYTRN_TYP WHERE BILLNO =:XBILNO  ');
    Params[0].Asstring := FmDmic01.QArpaytrn1.FieldByName('BILLNO').Asstring;
    Open;

    if  FmDmic01.QArpaytrn_Typ.RecordCount = 0 then
    begin
      insert;
      FmDmic01.QArpaytrn_TypPAYCODE.AsString := '01';
      FmDmic01.QArpaytrn_TypAMOUNT.AsFloat   := FmDmic01.Qtmpicinv.fieldbyname('NETPRC').AsFloat;
    end;
    FmDmic01.QArpaytrn_Typ.Next;
  end;

  If FmDmic01.QArpaytrn1.State <> Dsinsert Then
  For N:= 0 To ComponentCount-1 Do
  begin
    If (Components[n] Is TcxDBTextEdit)  Then
       TcxDBTextEdit(Components[n]).Properties.Readonly := True;
    If (Components[n] Is TcxDBDateEdit)  Then
       TcxDBDateEdit(Components[n]).Properties.Readonly := True;
    If (Components[n] Is TcxDBButtonEdit)  Then
       TcxDBButtonEdit(Components[n]).Properties.Readonly := True;
  End;
  cxDBCalcEdit1.SetFocus;
  FmDmic01.QArpaytrn_Typ.Edit;
end;

procedure TFPaymntPos_01.FormCreate(Sender: TObject);
begin
  if not(QPaytyp.Active) then QPaytyp.Open;
  FPaymntPos_01.Height := 476;
  {SFMain.Check_right(' HDSV', 'HDSV09');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing:= SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;}
end;

procedure TFPaymntPos_01.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  {Application.Createform(TfSrcDLG,fSrcDLG);
  if DBEdit7.Text = '02' then
  begin
    If fSrcDLG.ShowModalBak=Mrok Then
    FmDmic01.QArpaytrn1Bkcode.Asstring := fSrcDlg.Keyno;
  end else
  begin
    If fSrcDLG.ShowModalBankbook=Mrok Then
    begin
      FmDmic01.QArpaytrn1Bkcode.Asstring := fSrcDlg.Keyno;
    end;
  end; }
end;

procedure TFPaymntPos_01.cxDBGridTranBKCODEPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    Application.Createform(TfSrcDLG,fSrcDLG);
    If fSrcDLG.ShowModalBak=Mrok Then
    Begin
       Dm_Ar.QArchq.Edit;
       Dm_Ar.QArChq.FieldByName('BKCODE').Asstring:=fSrcDLG.KeyNo;
    End;
end;

procedure TFPaymntPos_01.cxGrid3DBTableView2PAYCODEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalPAYTYP=Mrok Then
  begin
    If (FmDmic01.QArpaytrn1.state in Dseditmodes) and (FmDmic01.QArpaytrn_Typ.State=Dsbrowse) Then
    FmDmic01.QArpaytrn_Typ.Edit;
    FmDmic01.QArpaytrn_Typ.FieldByname('PAYCODE').Asstring   := fSrcDlg.Keyno;
  end;
end;

procedure TFPaymntPos_01.cxGrid3DBTableView2BANKBOOKCODPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if FmDmic01.QArpaytrn_Typ.FieldByName('PAYCODE').AsString = '02' then
  begin
    Application.Createform(TfSrcDlg,fSrcDlg);
    If fSrcDlg.ShowModalBak=Mrok Then
    begin
      FmDmic01.QArpaytrn_Typ.Edit;
      FmDmic01.QArpaytrn_Typ.FieldByname('BANKBOOKCOD').Asstring := fSrcDlg.Keyno;
    end;
  end else
  begin
    Application.CreateForm(TfSrcDlg,fSrcDlg);
    if fSrcDlg.ShowModalBankbook=MrOk then
    begin
       FmDmic01.QArpaytrn_Typ.Edit;
       FmDmic01.QArpaytrn_Typ.FieldByName('BANKBOOKCOD').AsString := fSrcDlg.Keyno;
       FmDmic01.QArpaytrn_Typ.FieldByName('BANKLOCAT').AsString   := fSrcDlg.qrFindDat.fieldbyname('BANKLOCNAM').AsString;
    end;
  end;
end;

procedure TFPaymntPos_01.cxCheckBox1Click(Sender: TObject);
begin

  if cxCheckBox1.Checked = True then
    begin
      cxPageControl1.ActivePageIndex := 1;
    end
  else
    begin
      cxPageControl1.ActivePageIndex := 0;
    end;
end;

procedure TFPaymntPos_01.cxDBLookupComboBox1PropertiesChange(
  Sender: TObject);
begin
  if cxDBLookupComboBox1.Text <> '01' then
    begin
      Label6.Visible        := True;
      cxDBTextEdit3.Visible := True;
    end
  else
    begin
      Label6.Visible        := False;
      cxDBTextEdit3.Visible := False;
    end;
end;

procedure TFPaymntPos_01.DBkbd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    VK_F1 : FmDmic01.QArpaytrn_TypPAYCODE.AsString  := '92';
    VK_F11 : FmDmic01.QArpaytrn_TypPAYCODE.AsString := '90';
    VK_F10 : FmDmic01.QArpaytrn_TypPAYCODE.AsString := '91';
    VK_F12 : FmDmic01.QArpaytrn_TypPAYCODE.AsString := '01';
    VK_F3  : CancBtnClick(Sender);
    VK_END : SaveBtnClick(Sender);
    Vk_F9  : PrnBtnClick(Sender);  
  end;
end;

procedure TFPaymntPos_01.cxButton1Click(Sender: TObject);
begin
  FmDmic01.QArpaytrn_TypPAYCODE.AsString := '01';
end;

procedure TFPaymntPos_01.cxButton2Click(Sender: TObject);
begin
  FmDmic01.QArpaytrn_TypPAYCODE.AsString := '90';
end;

procedure TFPaymntPos_01.cxButton3Click(Sender: TObject);
begin
  FmDmic01.QArpaytrn_TypPAYCODE.AsString := '91';
end;

procedure TFPaymntPos_01.cxButton4Click(Sender: TObject);
begin
  FmDmic01.QArpaytrn_TypPAYCODE.AsString := '92';
end;

end.

