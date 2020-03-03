unit ClosAr10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Grids, DBGrids, Db, Dbkbd,
  ComCtrls, ImgList, ToolWin, n2wMoney, AdvGlowButton, AdvOfficeStatusBar,
  RzSpnEdt, AdvToolBar, AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxDBEdit, AdvPanel, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ActnList, dxStatusBar, cxGroupBox, cxRadioGroup, frxBarcode,
  frxFDComponents, frxTableObject, frxChBox, frxGradient, frxRich,
  frxExportXLSX, frxExportImage, frxCross, frxExportCSV, frxClass,
  frxExportBaseDialog, frxExportPDF, frxBDEComponents, frxDCtrl, frxChart;

type
  TFClosAr10 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label27: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label26: TLabel;
    Label14: TLabel;
    FldCombo1: TcxDBButtonEdit;
    Edit1: TcxTextEdit;
    wwDBEdit1: TcxDBTextEdit;
    wwDBEdit3: TcxDBTextEdit;
    wwDBEdit14: TcxDBTextEdit;
    wwDBEdit23: TcxDBTextEdit;
    wwDBEdit2: TcxDBTextEdit;
    wwDBEdit26: TcxDBTextEdit;
    wwDBEdit27: TcxDBTextEdit;
    wwDBEdit4: TcxDBTextEdit;
    wwDBEdit25: TcxDBTextEdit;
    wwDBEdit5: TcxDBTextEdit;
    wwDBEdit6: TcxDBTextEdit;
    wwDBEdit24: TcxDBTextEdit;
    wwDBEdit19: TcxDBTextEdit;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    DelBtn: TAdvGlowButton;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    PrnBtn: TAdvGlowButton;
    DBRadioGroup1: TcxDBRadioGroup;
    dxStatusBar1: TdxStatusBar;
    ActionList1: TActionList;
    Action1: TAction;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure frReport1UserFunction(const Name: String; p1, p2,
      p3: Variant; var Val: Variant);
    procedure PrnBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FldCombo1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Action1Execute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClosAr10: TFClosAr10;
  XTabnm : String;

implementation
uses Dmsec,DmSal, Dm1, Srchsal1, Srchset1, USoftFirm, unfrPreview;

{$R *.DFM}

procedure TFClosAr10.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSL', 'HDSL01_6');
   DBkbd1.AllowDelete := SFMain.Del_right;
   DBkbd1.AllowEditing:= SFMain.Edit_right;
   DBkbd1.AllowInsert := SFMain.Insert_right;
  
end;

procedure TFClosAr10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Dm_Sal.QArClose.Close ;
   Action := Cafree ;
   FClosar10 := nil;
end;

procedure TFClosAr10.DataSource1StateChange(Sender: TObject);
Var n:word;
begin
   Delbtn.Visible  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete);
   CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
   SavBtn.Visible  := (DataSource1.State in DsEditmodes)and
                       ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
   Prnbtn.Visible := CloseBtn.Enabled;
   CancBtn.Visible := SavBtn.Visible;
   Enqbtn.Enabled  := DataSource1.State=Dsbrowse;
   If DataSource1.Dataset.State = Dsbrowse Then
   begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TcxDBTextEdit)and (TcxDBTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBTextEdit(Components[n]).Properties.Readonly := True;
          TcxDBTextEdit(Components[n]).Style.Color := clBtnFace;
        end;

        If (Components[n] Is TcxTextEdit)and(TcxTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxTextEdit(Components[n]).Style.Color := clBtnFace;
        end;
        If (Components[n] Is TcxDBButtonEdit)and(TcxDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBButtonEdit(Components[n]).Enabled := False;
        end;
      end;
    End
    Else
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TcxDBTextEdit)and (TcxDBTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBTextEdit(Components[n]).Properties.Readonly := False;
          TcxDBTextEdit(Components[n]).Style.Color := clWhite;
        end;
        If (Components[n] Is TcxTextEdit)and(TcxTextEdit(Components[n]).Tag=0)  Then
        begin
          TcxTextEdit(Components[n]).Style.Color := clWhite;
        end;
        If (Components[n] Is TcxDBButtonEdit)and(TcxDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TcxDBButtonEdit(Components[n]).Properties.Readonly := True;
   
        end;
      end;
   End;
   
end;

procedure TFClosAr10.CancBtnClick(Sender: TObject);
begin
  Dm_sal.QArClose.Cancel;
end;

procedure TFClosAr10.SavBtnClick(Sender: TObject);
Var Xcont,XLocat,XTsale : string;
begin
   if Dm_sal.QArclose.state in [Dsinsert] then
     If Dm_Sal.QArsale.FieldByName('Totprc').AsFloat=
        Dm_Sal.QArsale.FieldByName('Smpay').AsFloat Then
     begin
         XCont  := Dm_Sal.QArsale.FieldByName('Contno').Asstring;
         XLocat := Dm_Sal.QArsale.FieldByName('Locat').Asstring;
         XTsale := Dm_Sal.QArsale.FieldByName('TSale').Asstring;
     end
     Else
       SFMain.RaiseException('ยังชำระเงินไม่ครบไม่สามารถย้ายข้อมูลได้');

   With Dm_sal.QArClose Do
   Begin
     Close;
     Sql.clear;
     Sql.add('SELECT * FROM ARCLOSE WHERE TSALE=:V0 AND '+
             'CONTNO=:V1 and LOCAT=:V2  ');
     Params[0].Asstring :=XTSale;
     Params[1].Asstring :=XCont;
     Params[2].Asstring :=XLocat;
     open;
   End;
   With Dm_sal.QArSale Do
   Begin
     Close;
     Sql.clear;
     If Dm_sal.QArClose.FieldByName('Tsale').Asstring = 'C' Then
        Sql.add('SELECT A.TSALE,A.LOCAT,A.CONTNO,A.RESVNO,A.CUSCOD,A.SDATE,'+
               'A.NPRICE,A.VATPRC,A.TOTPRC,0 AS NDAWN,0 AS VATDWN,0 AS TOTDWN,'+
               'A.NPRICE AS NKANG,A.VATPRC AS VKANG,A.TOTPRC AS TKANG,A.SMPAY,A.STRNO,'+
               'A.NCARCST+A.OPTCST AS N_NETCST,A.VCARCST+A.OPTCVT AS N_NETVAT,'+
               'A.TCARCST+A.OPTCTOT AS N_NETTOT,'+
               ''''' AS BILLCOLL,'''' AS CHECKER,A.SALCOD,B.SNAM,B.NAME1,B.NAME2 FROM '+
               'HARCRED A,CUSTMAST B WHERE A.CONTNO=:V0 AND A.LOCAT=:V1 '+
               'AND A.CUSCOD=B.CUSCOD');
     If Dm_sal.QArClose.FieldByName('Tsale').Asstring = 'F' Then
        Sql.add('SELECT A.TSALE,A.LOCAT,A.CONTNO,A.RESVNO,A.CUSCOD,A.SDATE,'+
               'A.NPRICE,A.VATPRC,A.TOTPRC,A.NDAWN,A.VATDWN,A.TOTDWN,'+
               'A.NKANG,A.VKANG,A.TKANG,A.SMPAY,A.STRNO,'+
               'A.NCARCST+A.OPTCST AS N_NETCST,A.VCARCST+A.OPTCVT AS N_NETVAT,'+
               'A.TCARCST+A.OPTCTOT AS N_NETTOT,'+
               ''''' AS BILLCOLL,'''' AS CHECKER,A.SALCOD,B.SNAM,B.NAME1,B.NAME2 FROM '+
               'HARFINC A,CUSTMAST B WHERE A.CONTNO=:V0 AND A.LOCAT=:V1 '+
               'AND A.CUSCOD=B.CUSCOD');

     Params[0].Asstring :=Dm_sal.QArClose.FieldByName('Contno').Asstring;
     Params[1].Asstring :=Dm_sal.QArClose.FieldByName('Locat').Asstring;
     open;
   End;
    if Datasource1.DataSet.State = dsInsert then
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDSL01_6','INSERT',FldCombo1.Text) else
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDSL01_6','EDIT',FldCombo1.Text);
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
   Dm01.Do_With_Query(actInsert,Dm_sal.QClsInvT,'SELECT * FROM HINVTRAN WHERE STRNO=:V0',[Dm_sal.QArSale.FieldByName('Strno').Asstring]);
end;

procedure TFClosAr10.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale,SearchSale);
  If SearchSale.ShowModalArclose=Mrok Then
  begin
    Dm01.Do_With_Query(actOpen,Dm_sal.QArclose,'SELECT * FROM ARCLOSE WHERE CONTNO=:CONT',[SearchSale.KeyNo]);
  END;
  Edit1.Text := Dm_Sal.QArclose.FieldByName('Locat').Asstring ;
  If Dm_Sal.QArcloseTsale.Asstring <> '' Then
  Begin

  If Dm_sal.QArClose.Fieldbyname('TSALE').Asstring = 'C' Then
  begin
     With Dm_sal.QArSale Do
     Begin
       Close;
       Sql.clear;
       Sql.add('SELECT A.TSALE,A.LOCAT,A.CONTNO,A.RESVNO,A.CUSCOD,A.SDATE,'+
               'A.NPRICE,A.VATPRC,A.TOTPRC,0 AS NDAWN,0 AS VATDWN,0 AS TOTDWN,'+
               'A.NPRICE AS NKANG,A.VATPRC AS VKANG,A.TOTPRC AS TKANG,A.SMPAY,A.STRNO,'+
               'A.NCARCST+A.OPTCST AS N_NETCST,A.VCARCST+A.OPTCVT AS N_NETVAT,'+
               'A.TCARCST+A.OPTCTOT AS N_NETTOT,'+
               ''''' AS BILLCOLL,'''' AS CHECKER,A.SALCOD,B.SNAM,B.NAME1,B.NAME2 FROM '+
               'HARCRED A,CUSTMAST B WHERE A.CONTNO=:V0 '+
               'AND A.CUSCOD=B.CUSCOD');
       Params[0].Asstring :=Dm_sal.QArClose.Fieldbyname('CONTNO').Asstring;
       open;
     end;
  end;
  If Dm_sal.QArClose.Fieldbyname('TSALE').Asstring = 'F' Then
  Begin
     With Dm_sal.QArSale Do
     Begin
       Close;
       Sql.clear;
       Sql.add('SELECT A.TSALE,A.LOCAT,A.CONTNO,A.RESVNO,A.CUSCOD,A.SDATE,'+
               'A.NPRICE,A.VATPRC,A.TOTPRC,A.NDAWN,A.VATDWN,A.TOTDWN,'+
               'A.NKANG,A.VKANG,A.TKANG,A.SMPAY,A.STRNO,'+
               'A.NCARCST+A.OPTCST AS N_NETCST,A.VCARCST+A.OPTCVT AS N_NETVAT,'+
               'A.TCARCST+A.OPTCTOT AS N_NETTOT,'+
               ''''' AS BILLCOLL,'''' AS CHECKER,A.SALCOD,B.SNAM,B.NAME1,B.NAME2 FROM '+
               'HARFINC A,CUSTMAST B WHERE A.CONTNO=:V0 '+
               'AND A.CUSCOD=B.CUSCOD');
       Params[0].Asstring :=Dm_sal.QArClose.Fieldbyname('CONTNO').Asstring;
       open;
     end;
  end;
  //
  With Dm_sal.QClsInvT Do
  Begin
     Close;
     Sql.clear;
     Sql.add('SELECT *  FROM HINVTRAN '+
             'WHERE CRLOCAT=:V0 AND CONTNO=:V1 AND TSALE=:V2 ');
     Params[0].Asstring :=Dm_sal.QArSale.Fieldbyname('LOCAT').Asstring;
     Params[1].Asstring :=Dm_sal.QArSale.Fieldbyname('CONTNO').Asstring;
     Params[2].Asstring :=Dm_sal.QArSale.Fieldbyname('TSALE').Asstring;
     open;
     if Bof and Eof Then
     SFMain.RaiseException('ไม่พบรายละเอียดตัวรถ');
  end;
  end;
end;

procedure TFClosAr10.DelBtnClick(Sender: TObject);
begin
  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk :
    begin
      Dm_sal.QArclose.Delete;
      With Dm_sal.QArclose Do
      Begin
         Close;
         Sql.clear;
         Sql.add('SELECT *  FROM ARCLOSE '+
                 'WHERE CONTNO=:V0 ');
         Params[0].Asstring := '';
         open;
      end;
      With Dm_sal.QArSale Do
      Begin
       Close;
       Sql.clear;
       Sql.add('SELECT A.TSALE,A.LOCAT,A.CONTNO,A.RESVNO,A.CUSCOD,A.SDATE,'+
               'A.NPRICE,A.VATPRC,A.TOTPRC,A.NDAWN,A.VATDWN,A.TOTDWN,'+
               'A.NKANG,A.VKANG,A.TKANG,A.SMPAY,A.STRNO,'+
               'A.NCARCST+A.OPTCST AS N_NETCST,A.VCARCST+A.OPTCVT AS N_NETVAT,'+
               'A.TCARCST+A.OPTCTOT AS N_NETTOT,'+
               ''''' AS BILLCOLL,'''' AS CHECKER,A.SALCOD,B.SNAM,B.NAME1,B.NAME2 FROM '+
               'ARFINC A,CUSTMAST B WHERE A.CONTNO=:V0 '+
               'AND A.CUSCOD=B.CUSCOD');
         Params[0].Asstring := '';
         open;
      end;
      Dm_sec.ChkRecent(SFMain.Xuser_ID,'HDSL01_6','DELETE',FldCombo1.Text);
      if DM_SEC.qrRecent.UpdatesPending then
        if (DM_SEC.qrRecent.ApplyUpdates = 0) then
          DM_SEC.qrRecent.CommitUpdates
        else
          raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
      Dm01.Do_With_Query(actOpen,Dm_sal.QClsInvT,'SELECT * FROM HINVTRAN WHERE STRNO=:V0',['']);
      Edit1.Text := '';
    End;
  end;
end;

procedure TFClosAr10.CloseBtnClick(Sender: TObject);
begin
    Self.close;
end;

procedure TFClosAr10.frReport1UserFunction(const Name: String; p1, p2,
  p3: Variant; var Val: Variant);
begin
//  IF UPPERCASE(NAME)='BAHTTEXT' THEN
//  BEGIN
//      SFMain.n2wBill.Value := FRPARSER.Calc(P1);
//      VAL := SFMain.n2wBill.Text;
//  END;

end;

procedure TFClosAr10.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if (UPperCase(VarName)='VCONTNO') then
       Value := FldCombo1.Text;
end;

procedure TFClosAr10.PrnBtnClick(Sender: TObject);
begin
  if FldCombo1.Text = '' Then
     sfmain.RaiseException('กรุณาเลือกเลขที่เอกสารก่อนพิมพ์..!');

  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_ArmClose.fr3','1');
end;

procedure TFClosAr10.FormShow(Sender: TObject);
begin
   Dm01.QCondpay.Open;
   Dm01.Do_With_Query(actOpen,Dm_sal.QArclose,'SELECT * FROM ARCLOSE WHERE CONTNO=:V0 AND TSALE=:V1',['','']);
end;

procedure TFClosAr10.AdvGlowButton1Click(Sender: TObject);
begin
  Dm01.Do_With_Query(actInsert,Dm_sal.QArClose,'SELECT * FROM ARCLOSE WHERE CONTNO=:V0 AND TSALE=:V1',['','']);
end;

procedure TFClosAr10.FldCombo1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TSearchSale,SearchSale);
  If DBRadioGroup1.ItemIndex= 0 Then
  begin
     Xtabnm := ' ARCRED ' ;
     If SearchSale.ShowModalArCred=Mrok Then
        Dm_sal.QArClose.Fieldbyname('CONTNO').Asstring := SearchSale.Keyno;
     With Dm_sal.QArSale Do
     Begin
       Close;
       Sql.clear;
       Sql.add('SELECT A.TSALE,A.LOCAT,A.CONTNO,A.RESVNO,A.CUSCOD,A.SDATE,'+
               'A.NPRICE,A.VATPRC,A.TOTPRC,0 AS NDAWN,0 AS VATDWN,0 AS TOTDWN,'+
               'A.NPRICE AS NKANG,A.VATPRC AS VKANG,A.TOTPRC AS TKANG,A.SMPAY,A.STRNO,'+
               'A.NCARCST+A.OPTCST AS N_NETCST,A.VCARCST+A.OPTCVT AS N_NETVAT,'+
               'A.TCARCST+A.OPTCTOT AS N_NETTOT,'+
               ''''' AS BILLCOLL,'''' AS CHECKER,A.SALCOD,B.SNAM,B.NAME1,B.NAME2 FROM '+
               'ARCRED A,CUSTMAST B WHERE A.CONTNO=:V0 '+
               'AND A.CUSCOD=B.CUSCOD');
       Params[0].Asstring :=Dm_sal.QArClose.Fieldbyname('CONTNO').Asstring;
       open;
     end;
  end;
   If Not (Dm_sal.QArSale.Eof and Dm_sal.QArSale.Bof) Then
     Begin
        With Query1 Do
        Begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT CONTNO,SMPAY FROM AROTHR WHERE CONTNO =:V0 AND '+
                  'PAYAMT>SMPAY+SMCHQ');
          Params[0].Asstring := Dm_sal.QArClose.Fieldbyname('CONTNO').Asstring;
          Open ;
          If not (Bof and eof) Then
             Showmessage('มียอดค้างชำระลูกหนี้อื่น');
        end;
     end;
  If DBRadioGroup1.ItemIndex=1 Then
  Begin
     Xtabnm := ' ARFINC ' ;
     If SearchSale.ShowModalArFinc=Mrok Then
        Dm_sal.QArClose.Fieldbyname('CONTNO').Asstring := SearchSale.Keyno;
     With Dm_sal.QArSale Do
     Begin
       Close;
       Sql.clear;
       Sql.add('SELECT A.TSALE,A.LOCAT,A.CONTNO,A.RESVNO,A.CUSCOD,A.SDATE,'+
               'A.NPRICE,A.VATPRC,A.TOTPRC,A.NDAWN,A.VATDWN,A.TOTDWN,'+
               'A.NKANG,A.VKANG,A.TKANG,A.SMPAY,A.STRNO,'+
               'A.NCARCST+A.OPTCST AS N_NETCST,A.VCARCST+A.OPTCVT AS N_NETVAT,'+
               'A.TCARCST+A.OPTCTOT AS N_NETTOT,'+
               ''''' AS BILLCOLL,'''' AS CHECKER,A.SALCOD,B.SNAM,B.NAME1,B.NAME2 FROM '+
               'ARFINC A,CUSTMAST B WHERE A.CONTNO=:V0 '+
               'AND A.CUSCOD=B.CUSCOD');
       Params[0].Asstring :=Dm_sal.QArClose.Fieldbyname('CONTNO').Asstring;
       open;
     end;
  end;
  //
  With Dm_sal.QClsInvT Do
  Begin
     Close;
     Sql.clear;
     Sql.add('SELECT TSALE,CONTNO,STRNO,ENGNO,'+
             'TYPE,MODEL,BAAB,COLOR,CC,STAT,REGNO FROM INVTRAN '+
             'WHERE CONTNO=:V0 AND TSALE=:V1 AND CONTNO<>'''' ');
     Params[0].Asstring :=Dm_sal.QArSale.Fieldbyname('CONTNO').Asstring;
     Params[1].Asstring :=Dm_sal.QArSale.Fieldbyname('TSALE').Asstring;
     open;
  end;
  Edit1.Text := Dm_sal.QArSale.Fieldbyname('LOCAT').Asstring;
end;
procedure TFClosAr10.Action1Execute(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'fr_ArmClose.fr3','2');
end;

end.
