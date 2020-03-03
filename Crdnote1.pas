unit Crdnote1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Db, Dbkbd, ComCtrls, Grids,
  DBGrids, ImgList, ToolWin, RzButton, RzDBGrid, RzSpnEdt, RzDbkbd, RzPanel,
  AdvGlowButton, AdvToolBar, AdvPanel, cxLookAndFeelPainters, cxGroupBox,
  cxRadioGroup, cxDBEdit, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMemo, cxControls, cxContainer, cxEdit, ActnList, cxGraphics,
  cxLookAndFeels, System.Actions, dxStatusBar, frxBarcode, frxFDComponents,
  frxTableObject, frxChBox, frxGradient, frxRich, frxExportXLSX, frxExportImage,
  frxCross, frxExportCSV, frxClass, frxExportBaseDialog, frxExportPDF,
  frxBDEComponents, frxDCtrl, frxChart;

type
  TFcrdnote1 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label5: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    DBGrid_Sv: TRzDBGrid;
    AutoBtn: TAdvGlowButton;
    cxGroupBox1: TcxGroupBox;
    Label14: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit8: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    Edit2: TcxTextEdit;
    Edit1: TcxTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBkbd1: TRzDBkbd;
    ActionList1: TActionList;
    actEditPrn: TAction;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    SaveBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    InsBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    dxStatusBar1: TdxStatusBar;
    Label6: TLabel;
    Label12: TLabel;
    CrdnDate: TcxDBDateEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit1: TcxDBButtonEdit;
    DBEdit4: TcxDBButtonEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit5: TcxDBButtonEdit;
    DBEdit7: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    frxChartObject1: TfrxChartObject;
    frxReport1: TfrxReport;
    frxDialogControls1: TfrxDialogControls;
    frxBDEComponents1: TfrxBDEComponents;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    frxCrossObject1: TfrxCrossObject;
    frxJPEGExport1: TfrxJPEGExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxRichObject1: TfrxRichObject;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxReportTableObject1: TfrxReportTableObject;
    frxFDComponents1: TfrxFDComponents;
    frxBarCodeObject1: TfrxBarCodeObject;
    procedure InsBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FldCombo3BtnClick(Sender: TObject);
    procedure DBEdit1BtnClick(Sender: TObject);
    procedure FldCombo1BtnClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FldEdit6Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AutoBtnClick(Sender: TObject);
    procedure DBGrid_SvColExit(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBkbd1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8Exit(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
    procedure cxDBMemo1Click(Sender: TObject);
    procedure DBEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DBEdit1PropertiesChange(Sender: TObject);
    procedure DBEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DBEdit4PropertiesChange(Sender: TObject);
    procedure DBEdit5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DBEdit5PropertiesChange(Sender: TObject);
    procedure CrdnDateExit(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure PrnBtnClick(Sender: TObject);
    procedure actEditPrnExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcrdnote1: TFcrdnote1;
  XBalance :Double;

implementation
uses Dmsvset,dmfinc, DmSv,uSrcDlg1, USoftFirm, unfrPreview, Dmsec;
{$R *.DFM}


procedure TFcrdnote1.InsBtnClick(Sender: TObject);
begin
  with Dm_finc.QTaxsal2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XNOO ');
    Params[0].Asstring := '';
    Open ;
    Insert;
  end;

  with Dm_finc.QCn_serv do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CN_SERV WHERE TAXNO = :XNOO ');
    Params[0].Asstring := '';
    Open ;
  end;

  with Dm_finc.QArinvoi2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = :XNOO ');
    Params[0].Asstring := '';
    Open ;
  end;
end;

procedure TFcrdnote1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_finc.QTaxsal2.Close;
  Dm_finc.QArinvoi2.Close;
  Dm_finc.QAr_Serv1.Close;
  Action := Cafree;
  Fcrdnote1 := Nil;
end;

procedure TFcrdnote1.SaveBtnClick(Sender: TObject);
begin
  If DBEdit4.text='' Then
  SFMain.RaiseException('ยังไม่บันทึกใบกำกับ');
   if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDSV2_10','INSERT',Dm_finc.QTaxsal2TAXNO.asstring) else
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDSV2_10','EDIT',Dm_finc.QTaxsal2TAXNO.asstring);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
  Dm_finc.QTaxsal2.Post;
end;

procedure TFcrdnote1.CancBtnClick(Sender: TObject);
begin
  Dm_finc.QTaxsal2.cancel;
end;

procedure TFcrdnote1.DelBtnClick(Sender: TObject);
begin
  if DBEdit3.Text = '' then
  sfmain.RaiseException('ไม่พบรหัส/เลขที่อ้างอิง');
  case sfmain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk :
    begin
      DM_SEC.ChkRecent(SFMain.Xuser_ID,'HDSV2_10','DELETE',Dm_finc.QTaxsal2TAXNO.asstring);
      if DM_SEC.qrRecent.UpdatesPending then
        if (DM_SEC.qrRecent.ApplyUpdates = 0) then
          DM_SEC.qrRecent.CommitUpdates
        else
          raise Exception.Create(DM_SEC.qrRecent.RowError.Message);

      If Not(Dm_finc.QArinvoi2.Bof and Dm_finc.QArinvoi2.Eof) Then
      Begin
        Dm_finc.QArinvoi2.edit;
        Dm_finc.QArinvoi2.Fieldbyname('CANCELID').asstring := SFMain.Xuser_id;
        Dm_finc.QArinvoi2.Fieldbyname('CANDAT').asdatetime := Now;
        Dm_finc.QArinvoi2.Post;
      end;
      //
      With Dm_finc.Qarinvoi Do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM ARINVOI WHERE TAXNO =:XNO');
        PARAMS[0].ASSTRING := Dm_finc.QTaxsal2TAXREFNO.asstring;
        OPEN;
      END;

      If Not(Dm_finc.Qarinvoi.Bof and Dm_finc.Qarinvoi.Eof) Then
      BEGIN
        With Dm_finc.Qarinvoi Do
        begin
          Dm_finc.Qarinvoi.Edit;
          Fieldbyname('RTNAMT').Asfloat    := Fieldbyname('RTNAMT').Asfloat-Dm_finc.QTaxsal2TOTTAX.Asfloat;
          Fieldbyname('RTNDATE').Asdatetime:= Dm_finc.QTaxsal2TAXDATE.AsDateTime;
          Fieldbyname('RTNNO').Asstring    := Dm_finc.QTaxsal2TAXNO.AsString;
          Fieldbyname('KANG').Asfloat      := Fieldbyname('NETTOTAL').Asfloat-
           (Fieldbyname('SMPAY').Asfloat+Fieldbyname('SMCHQ').Asfloat+Fieldbyname('RTNAMT').Asfloat);

          Dm_finc.Qarinvoi.Post;
        end
      End
      Else
        Dm_finc.Qarinvoi.close;
      //
      Dm_finc.QTaxsal2.edit;
      Dm_finc.QTaxsal2CANCELID.Asstring := SFMain.Xuser_id;
      Dm_finc.QTaxsal2CANDAT.Asdatetime := Now;
      Dm_finc.QTaxsal2.Post;
    end;
  end;
end;

procedure TFcrdnote1.EditBtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalCRDNO=Mrok Then
  begin
    with Dm_finc.QTaxsal2 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XNOO ');
     Params[0].Asstring := fSrcDlg1.Keyno;
     Open ;
    end;
    //
    with Dm_finc.QCn_serv do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM CN_SERV WHERE TAXNO = :XNOO ');
      Params[0].Asstring := Dm_finc.QTaxsal2.Fieldbyname('Taxno').Asstring;
      Open ;
    end;

    with Dm_finc.QArinvoi2 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM ARINVOI WHERE INVNO = :XNOO ');
     Params[0].Asstring := fSrcDlg1.Keyno;
     Open ;
    end;
    //                           
    with Dm_finc.Qduedat do
    begin
      Close;
      Sql.Clear;
      If Dm_finc.QTaxsal2.Fieldbyname('JOBNO').Asstring<>'' Then
      Begin
       Sql.Add('SELECT * FROM AR_SERV WHERE JOBNO = :XNO ');
       Params[0].Asstring := Dm_finc.QTaxsal2.Fieldbyname('JOBNO').Asstring;
      end
      else
      begin
       Sql.Add('SELECT invno,Invdue as Duedate FROM IC_INVOI WHERE INVNO = :XNO '+
       'Union '+
       'SELECT Othivno as invno,Invdue as Duedate FROM ICOTHINV WHERE Othivno = :XNO ');

       Params[0].Asstring :=  Dm_finc.QTaxsal2TAXREFNO.Asstring;
      end;
      Open ;
    end;

  END;
end;

procedure TFcrdnote1.DataSource1StateChange(Sender: TObject);
Var N:word;
begin
  InsBtn.Visible       := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Visible       := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete) and (DBEdit3.Text<> '');
  EditBtn.Visible      :=  DataSource1.State=Dsbrowse;
  CloseBtn.Enabled     := (DataSource1.State=Dsbrowse);
  SaveBtn.Visible      := (DataSource1.State in DsEditmodes)and
                          ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible      := SaveBtn.Visible;

  PrnBtn.Visible    := (DataSource1.Dataset.State=DsBrowse) and (DBEdit3.Text<> '');
  AutoBtn.Enabled   := SaveBtn.Visible;
  //
  DBRadioGroup1.Properties.ReadOnly   := Not (DataSource1.Dataset.State=DsInsert);

  If DataSource1.Dataset.State = Dsbrowse Then
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TcxDBButtonEdit)and (TcxDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBButtonEdit(Components[n]).Enabled := False;
          TcxDBButtonEdit(Components[n]).Style.Color := clBtnFace;
        end;

        If (Components[n] Is TcxDBTextEdit)and (TcxDBTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBTextEdit(Components[n]).Properties.ReadOnly := True;
          TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
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

        If (Components[n] Is TRzDBGrid)and(TRzDBGrid(Components[n]).Tag=0)  Then
        begin
          TRzDBGrid(Components[n]).ReadOnly := True;
          TRzDBGrid(Components[n]).Color := clBtnFace;
        end;

        If (Components[n] Is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxTextEdit(Components[n]).Style.Color := clBtnface;
        end;
      end;
    End
    Else
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TcxDBButtonEdit)and (TcxDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBButtonEdit(Components[n]).Enabled := True;
          TcxDBButtonEdit(Components[n]).Style.Color := clWhite;
        end;

        If (Components[n] Is TcxDBTextEdit)and (TcxDBTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBTextEdit(Components[n]).Properties.ReadOnly := False;
          TcxDBTextEdit(Components[n]).Style.Color := clWhite;
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

        If (Components[n] Is TRzDBGrid)and(TRzDBGrid(Components[n]).Tag=0)  Then
        begin
          TRzDBGrid(Components[n]).ReadOnly := False;
          TRzDBGrid(Components[n]).Color := clWhite;
        end;

        If (Components[n] Is TcxTextEdit) and (TcxTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxTextEdit(Components[n]).Style.Color := clWhite;
        end;
      end;
    End;

   If Not Dm_Finc.QDBConfig.Active Then DM_Finc.QDBConfig.Open;
    DBEdit4.Properties.Readonly := Dm_Finc.QDBConfig.Fieldbyname('H_DVSV').asstring='Y';
end;

procedure TFcrdnote1.FldCombo3BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalAr=Mrok Then
  begin
    Dm_finc.QTaxsal2CUSCOD.asstring :=fSrcDlg1.Keyno;
  end;
end;

procedure TFcrdnote1.DBEdit1BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalLocat=Mrok Then
  begin
    Dm_finc.QTaxsal2LOCAT.asstring :=fSrcDlg1.Keyno;
  end;
end;

procedure TFcrdnote1.FldCombo1BtnClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalTAXNO=Mrok Then
  begin
    Dm_finc.QTaxsal2TAXREFNO.asstring :=fSrcDlg1.Keyno;
  end;
end;

procedure TFcrdnote1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  If Dm_finc.QTaxsal2CANCELID.asstring<>'' THen
     Label5.Visible := True
  else
     Label5.Visible := False;
end;

procedure TFcrdnote1.FldEdit6Exit(Sender: TObject);
begin
  If Dm_Finc.QTaxsal2BALANCE.Asfloat>XBalance Then
  begin
    DBEdit8.Setfocus;
    SFMain.RaiseException('ยอดลดหนี้มากกว่ามูลค่าใบกำกับเดิม'#13#13+'มูลค่าเดิม '+
    Floattostr(XBalance));
  end;
end;

procedure TFcrdnote1.FormCreate(Sender: TObject);
begin
   SFMain.Check_right('HDSV', 'HDSV2_10');
   DBkbd1.AllowDelete := SFMain.Del_right;
   DBkbd1.AllowEditing:= SFMain.Edit_right;
   DBkbd1.AllowInsert := SFMain.Insert_right;

end;

procedure TFcrdnote1.AutoBtnClick(Sender: TObject);
begin
  if MessageDlg('ต้องการดึงรายการ ',mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    with Dm_finc.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SERVTRAN WHERE JOBNO = :XNO ');
      Params[0].Asstring := Dm_finc.QTaxsal2.FieldByName('JOBNO').Asstring ;
      Open;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่พบรายการ');
    end;

    Dm_finc.Query1.First ;
    While not(Dm_finc.Query1.Eof) do
    begin
      Dm_finc.QCn_serv.Append;
      Dm_finc.QCn_serv.FieldByName('CODE').Asstring     := Dm_finc.Query1.FieldByName('CODE').Asstring;
      Dm_finc.QCn_serv.FieldByName('DESC1').Asstring    := Dm_finc.Query1.FieldByName('DESC1').Asstring;
      Dm_finc.QCn_serv.FieldByName('CUSCOD').Asstring   := Dm_finc.Query1.FieldByName('CUSCOD').Asstring;
      Dm_finc.QCn_serv.FieldByName('JOBDATE').AsDatetime:= Dm_finc.Query1.FieldByName('Jobdate').Asdatetime;
      Dm_finc.QCn_serv.FieldByName('FRT').AsFloat       := Dm_finc.Query1.FieldByName('FRT').AsFloat;
      Dm_finc.QCn_serv.FieldByName('UPRICE').AsFloat    := Dm_finc.Query1.FieldByName('UPRICE').AsFloat;
      Dm_finc.QCn_serv.FieldByName('PRICE').AsFloat     := Dm_finc.Query1.FieldByName('PRICE').AsFloat;
      Dm_finc.QCn_serv.FieldByName('REDU').AsFloat      := Dm_finc.Query1.FieldByName('REDU').AsFloat;
      Dm_finc.QCn_serv.FieldByName('NETPRIC').AsFloat   := Dm_finc.Query1.FieldByName('NETPRIC').AsFloat;
      Dm_finc.QCn_serv.FieldByName('JOBTYP').Asstring   := Dm_finc.Query1.FieldByName('JOBTYP').Asstring;
      Dm_finc.QCn_serv.FieldByName('MDLCOD').Asstring   := Dm_finc.Query1.FieldByName('MDLCOD').Asstring;
      Dm_finc.QCn_serv.FieldByName('SERVCOD').Asstring  := Dm_finc.Query1.FieldByName('SERVCOD').Asstring;
      Dm_finc.QCn_serv.Post;
      Dm_finc.Query1.Next;
    end;

    {with Dm_finc.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM OUTTRAN WHERE JOBNO = :XNO ');
      Params[0].Asstring := Dm_finc.QTaxsal2.FieldByName('JOBNO').Asstring ;
      Open;
    end;

    Dm_finc.Query1.First ;
    While not(Dm_finc.Query1.Eof) do
    begin
      Dm_finc.QCn_serv.Append;
      Dm_finc.QCn_serv.FieldByName('CODE').Asstring     := Dm_finc.Query1.FieldByName('CODE').Asstring;
      Dm_finc.QCn_serv.FieldByName('DESC1').Asstring    := Dm_finc.Query1.FieldByName('DESC1').Asstring;
      Dm_finc.QCn_serv.FieldByName('CUSCOD').Asstring   := Dm_finc.Query1.FieldByName('CUSCOD').Asstring;
      Dm_finc.QCn_serv.FieldByName('JOBDATE').AsDatetime:= Dm_finc.Query1.FieldByName('Jobdate').Asdatetime;
      Dm_finc.QCn_serv.FieldByName('FRT').AsFloat       := Dm_finc.Query1.FieldByName('FRT').AsFloat;
      Dm_finc.QCn_serv.FieldByName('UPRICE').AsFloat    := Dm_finc.Query1.FieldByName('UPRICE').AsFloat;
      Dm_finc.QCn_serv.FieldByName('PRICE').AsFloat     := Dm_finc.Query1.FieldByName('UPRICE').AsFloat;
      Dm_finc.QCn_serv.FieldByName('REDU').AsFloat      := Dm_finc.Query1.FieldByName('REDU').AsFloat;
      Dm_finc.QCn_serv.FieldByName('NETPRIC').AsFloat   := Dm_finc.Query1.FieldByName('TOTPRIC').AsFloat;
      Dm_finc.QCn_serv.FieldByName('JOBTYP').Asstring   := Dm_finc.Query1.FieldByName('JOBTYP').Asstring;
      Dm_finc.QCn_serv.FieldByName('SERVCOD').Asstring  := Dm_finc.Query1.FieldByName('SERVCOD').Asstring;
      Dm_finc.QCn_serv.Post;
      Dm_finc.Query1.Next;
    end;}
  end;
end;

procedure TFcrdnote1.DBGrid_SvColExit(Sender: TObject);
Var amt:Double;
begin
   If (Dm_finc.QTaxsal2.State In DsEditmodes) Then
   Begin
    If DBGrid_Sv.SelectedField.FieldName = 'CODE' Then
    begin
       If Dm_finc.QCn_serv.FieldByName('CODE').Asstring = ''  Then
       SFMain.RaiseException('ยังไม่บันทึกรหัสค่าบริการ  ') ;

       with Dm_finc.Query1 do
       begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM SERVTRAN WHERE CODE= :XCODE AND JOBNO=:XMD ');
          Params[0].Asstring := Dm_finc.QCn_serv.FieldByName('CODE').Asstring;
          Params[1].Asstring := Dm_finc.QCn_serv.FieldByName('JOBNO').Asstring;
        Open;
      end;

      if Not(Dm_finc.Query1.Bof and Dm_finc.Query1.eof) then
      begin
        If Dm_finc.QCn_serv.State = DsInsert Then
        Begin
            Dm_finc.QCn_serv.FieldByName('DESC1').Asstring   := Dm_finc.Query1.FieldByName('DESC1').Asstring;
            Dm_finc.QCn_serv.FieldByName('CUSCOD').Asstring   := Dm_finc.Query1.FieldByName('CUSCOD').Asstring;
            Dm_finc.QCn_serv.FieldByName('JOBDATE').AsDatetime   := Dm_finc.Query1.FieldByName('Jobdate').Asdatetime;
            Dm_finc.QCn_serv.FieldByName('FRT').AsFloat   := Dm_finc.Query1.FieldByName('FRT').AsFloat;
            Dm_finc.QCn_serv.FieldByName('UPRICE').AsFloat   := Dm_finc.Query1.FieldByName('UPRICE').AsFloat;
            Dm_finc.QCn_serv.FieldByName('PRICE').AsFloat   := Dm_finc.Query1.FieldByName('PRICE').AsFloat;
            Dm_finc.QCn_serv.FieldByName('REDU').AsFloat   := Dm_finc.Query1.FieldByName('REDU').AsFloat;
            Dm_finc.QCn_serv.FieldByName('NETPRIC').AsFloat   := Dm_finc.Query1.FieldByName('NETPRIC').AsFloat;
            Dm_finc.QCn_serv.FieldByName('JOBTYP').Asstring   := Dm_finc.Query1.FieldByName('JOBTYP').Asstring;
            Dm_finc.QCn_serv.FieldByName('MDLCOD').Asstring   := Dm_finc.Query1.FieldByName('MDLCOD').Asstring;
            Dm_finc.QCn_serv.FieldByName('SERVCOD').Asstring   := Dm_finc.Query1.FieldByName('SERVCOD').Asstring;
        End;
      end;
    end;
    If  (DBGrid_Sv.SelectedField.FieldName  = 'FRT')   OR
        (DBGrid_Sv.SelectedField.FieldName  = 'UPRICE') Or
        (DBGrid_Sv.SelectedField.FieldName  = 'REDU')   Then
    begin
      If Dm_finc.QCn_serv.State=Dsbrowse Then Dm_finc.QCn_serv.Edit;
         Dm_finc.QCn_serv.FieldByName('PRICE').AsFloat := Dm_finc.QCn_serv.FieldByName('FRT').AsFloat*Dm_finc.QCn_serv.FieldByName('Uprice').AsFloat;
         Amt := Dm_finc.QCn_serv.FieldByName('PRICE').AsFloat*(1-Dm_finc.QCn_serv.FieldByName('REDU').AsFloat/100) ;
         Dm_finc.QCn_serv.FieldByName('NETPRIC').AsFloat := StrTofloat(FloattostrF((Amt-Dm_finc.QCn_serv.FieldByName('Discamt').AsFloat),ffFixed,15,2));
    end;
  end;
end;

procedure TFcrdnote1.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFcrdnote1.DBkbd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key Of
  Vk_F7 : EditBtnClick(Sender);
  Vk_F8 : DelBtnClick(Sender);
  Vk_F2 : SaveBtnClick(Sender);
  Vk_F5 : InsBtnClick(Sender);
  end;
end;

procedure TFcrdnote1.DBEdit8Exit(Sender: TObject);
begin
  If Dm_Finc.QTaxsal2BALANCE.Asfloat>XBalance Then
  begin
    DBEdit8.Setfocus;
    SFMain.RaiseException('ยอดลดหนี้มากกว่ามูลค่าใบกำกับเดิม'#13#13+'มูลค่าเดิม '+
    Floattostr(XBalance));
  end;
end;

procedure TFcrdnote1.cxDBMemo1Exit(Sender: TObject);
begin
  Fcrdnote1.KeyPreview := True;
end;

procedure TFcrdnote1.cxDBMemo1Click(Sender: TObject);
begin
  Fcrdnote1.KeyPreview := False;
end;

procedure TFcrdnote1.DBEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalLocat=Mrok Then
    Dm_finc.QTaxsal2LOCAT.asstring :=fSrcDlg1.Keyno;
end;

procedure TFcrdnote1.DBEdit1PropertiesChange(Sender: TObject);
begin
    with Dm_finc.Query1 do
      begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT LOCATNM FROM INVLOCAT WHERE LOCATCD =:0');
          Params[0].AsString := DBEdit1.Text;
          Open;
          Edit2.Text := Dm_finc.Query1.fieldbyname('LOCATNM').AsString;
      end;
end;

procedure TFcrdnote1.DBEdit4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalTAXNO=Mrok Then
    Dm_finc.QTaxsal2TAXREFNO.asstring :=fSrcDlg1.Keyno;
end;

procedure TFcrdnote1.DBEdit4PropertiesChange(Sender: TObject);
begin
  With Dm_SvSet.Query1 Do
  Begin
    close;
    Sql.clear;
    Sql.Add('Select Balance from Taxsal where Taxno=:Edit');
    Params[0].asstring := DBEdit4.Text;
    Open;
    XBalance := Fieldbyname('Balance').Asfloat;
  end;
end;

procedure TFcrdnote1.DBEdit5PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalAr=Mrok Then
    Dm_finc.QTaxsal2CUSCOD.asstring :=fSrcDlg1.Keyno;
end;

procedure TFcrdnote1.DBEdit5PropertiesChange(Sender: TObject);
begin
  with Dm_finc.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM CUSTMAST WHERE CUSCOD = :XNOO ');
    Params[0].Asstring := Dm_finc.QTaxsal2CUSCOD.asstring;
    Open;
    Edit1.Text :=Dm_finc.Query1.Fieldbyname('Name1').asstring+' '+Dm_finc.Query1.Fieldbyname('Name2').asstring;
  end;
end;

procedure TFcrdnote1.CrdnDateExit(Sender: TObject);
Var Year1,Month1,Day1,RYear: word;
begin
  if Datasource1.State in dsEditmodes then
  begin
   DecodeDate(Dm_Finc.QTaxsal2.fieldbyname('TAXDATE').AsDateTime,Year1,Month1,Day1);
   RYear := year1-543;
   if RYear>1910 then
      Dm_Finc.QTaxsal2.fieldbyname('TAXDATE').AsDateTime:= StrToDate(InttoStr(Day1)+'/'+IntTostr(month1)+'/'+IntTostr(Ryear))
   else
      Dm_Finc.QTaxsal2.fieldbyname('TAXDATE').AsDateTime := Dm_Finc.QTaxsal2.fieldbyname('TAXDATE').AsDateTime;
  end;
end;

procedure TFcrdnote1.frReport1UserFunction(const Name: String; p1, p2,
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

procedure TFcrdnote1.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if UpperCase(VarName) = 'PTAXNO' then
    Value := DBEdit3.Text;
end;

procedure TFcrdnote1.PrnBtnClick(Sender: TObject);
begin
  if DBEdit3.Text = '' Then
     sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SvInvRT.fr3','1');
end;

procedure TFcrdnote1.actEditPrnExecute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_SvInvRT.fr3','2');
end;

procedure TFcrdnote1.FormShow(Sender: TObject);
begin
  with Dm_finc.QTaxsal2 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TAXSAL WHERE TAXNO = :XNOO ');
    Params[0].Asstring := '';
    Open ;
  end;
end;

end.

