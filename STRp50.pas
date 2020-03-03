unit STRp50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, printers, ComCtrls, Mask, Grids,
  DBGrids, Csv_txt, ImgList, ToolWin, Dbkbd, AdvGlowButton, AdvToolBar,
  AdvGroupBox, AdvOfficeButtons, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvPanel,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxCore, cxDateUtils,
  BusinessSkinForm, frxClass, frxExportXLSX, frxRich, frxDCtrl, frxTableObject,
  frxExportPDF, frxExportImage, frxGradient, frxFDComponents, frxBDEComponents,
  frxExportBaseDialog, frxExportCSV, frxCross, frxChBox, frxChart, frxBarcode;

type
  TFmSTRp50 = class(TForm)
    AdvPanel1: TAdvPanel;
    Label10: TLabel;
    Label15: TLabel;
    Label11: TLabel;
    Label20: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    RadioGroup1: TAdvOfficeRadioGroup;
    RadioGp2: TAdvOfficeRadioGroup;
    Edit2: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Fromdate: TcxDateEdit;
    Todate: TcxDateEdit;
    Edit7: TcxButtonEdit;
    Edit5: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    SaveDialog1: TSaveDialog;
    Query1: TFDQuery;
    qStkBal: TFDQuery;
    qStkBalance: TFDQuery;
    AdvPanel3: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    CloseBtn: TAdvGlowButton;
    EditBtn: TAdvGlowButton;
    PrevBtn: TAdvGlowButton;
    tbEdBarCode: TAdvGlowButton;
    tbCrtBarCode: TAdvGlowButton;
    ROption: TAdvOfficeRadioGroup;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
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
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure ButtonEdit1ButtonClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: string; var ParValue: Variant);
    procedure PrevBtnClick(Sender: TObject);
    procedure tbEdBarCodeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure tbCrtBarCodeClick(Sender: TObject);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure ROptionClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    aReport: TQuickRep;
  public
    SortText, XTypecod, TbName: string;
    XYear, XMonth: Word;
    { Public declarations }
  end;

var
  FmSTRp50: TFmSTRp50;
  XDate: TDateTime;
  XDay: Word;

implementation

uses
  Srchdlg, DmSet1, uSrcDlg, uSoftFirm, Dmsec, unfrPreview; //,STRp51;

{$R *.DFM}

procedure TFmSTRp50.SpeedButton4Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.XSrLocat := Edit2.Text;
  if fSrcDlg.ShowModalPartInventor = Mrok then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO=:XPART AND LOCAT LIKE :XLOC');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Params[1].AsString := Edit2.Text + '%';
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
      sfMain.RaiseException('ไม่พบข้อมูล');
    Edit4.text := Dm_Set1.Query1.FieldByName('PartNo').Asstring;
  end;
end;

procedure TFmSTRp50.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TFmSTRp50.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDREO', 'HDREP02_3_8');
  FormatSettings.ShortDateFormat := ('DD/MM/YYYY');
  RadioGp2.ItemIndex := 0;
  Fromdate.Date := Date;
  Todate.date := Date;
end;

procedure TFmSTRp50.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FmSTRp50 := nil;
end;

procedure TFmSTRp50.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmSTRp50.ButtonEdit1ButtonClick(Sender: TObject);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalType = Mrok then
    Edit5.Text := fSrcDlg.Keyno;
end;

procedure TFmSTRp50.frReport1GetValue(const ParName: string; var ParValue: Variant);
var
  XORD, XOPT, PF, PT: string;
begin
  if RadioGp2.ItemIndex = 0 then
    XORD := '1'
  else
    XORD := '2';

  case RadioGroup1.ItemIndex of
    0:
      XOPT := '1';
    1:
      XOPT := '2';
    2:
      XOPT := '3';
  end;

  if Edit3.Text = '' then
    PF := ''
  else
    PF := Edit3.Text;

  if Edit4.Text = '' then
    PT := 'โโโ'
  else
    PT := Edit4.Text;

  if UpperCase(ParName) = 'PFPART' then
    ParValue := PF;
  if UpperCase(ParName) = 'PTPART' then
    ParValue := PT;
  if UpperCase(ParName) = 'PORDER' then
    ParValue := XORD;
  if UpperCase(ParName) = 'POPTION' then
    ParValue := XOPT;
  if UpperCase(ParName) = 'PAPCODE' then
    ParValue := Edit1.Text + '%';
  if UpperCase(ParName) = 'PLOCAT' then
    ParValue := Edit2.Text + '%';
  if UpperCase(ParName) = 'PLOC' then
    ParValue := Edit2.Text;
  if UpperCase(ParName) = 'PFDATE' then
    ParValue := Fromdate.date;
  if UpperCase(ParName) = 'PTDATE' then
    ParValue := Todate.date;
  if UpperCase(ParName) = 'PGROUP1' then
    ParValue := Edit7.Text + '%';
  if UpperCase(ParName) = 'PTYPE' then
    ParValue := Edit5.Text + '%';
  if UpperCase(ParName) = 'PSUBGROUP' then
    ParValue := Edit5.Text;
end;

procedure TFmSTRp50.PrevBtnClick(Sender: TObject);
begin
  if ROption.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'RP_RECVEXPLAIN.FR3', '1')
  else if ROption.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'RP_RECVINVOICE.FR3', '1')
  else if ROption.ItemIndex = 2 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'RP_RECVEXP_DETAIL.FR3', '1')
  else if ROption.ItemIndex = 3 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'RP_RECVEXP_SUBGROUP.FR3', '1');
end;

procedure TFmSTRp50.tbEdBarCodeClick(Sender: TObject);
begin
  DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'Fr_BarCodeRecStk.fr3', '2');
end;

procedure TFmSTRp50.frxReport1GetValue(const VarName: string;
  var Value: Variant);
var
  XORD, XOPT: string;
begin
  if RadioGp2.ItemIndex = 0 then
    XORD := '1'
  else
    XORD := '2';
  case RadioGroup1.ItemIndex of
    0:
      XOPT := '1';
    1:
      XOPT := '2';
    2:
      XOPT := '3';
  end;

  if UpperCase(VarName) = 'PORDER1' then
    Value := XORD;
  if UpperCase(VarName) = 'POPTION1' then
    Value := XOPT;
  if UpperCase(VarName) = 'PAPCODE1' then
    Value := Edit1.Text + '%';
  if UpperCase(VarName) = 'PLOCAT1' then
    Value := Edit2.Text + '%';
  if UpperCase(VarName) = 'PLOC1' then
    Value := Edit2.Text;
  if UpperCase(VarName) = 'PFDATE1' then
    Value := Fromdate.date;
  if UpperCase(VarName) = 'PTDATE1' then
    Value := Todate.date;
end;

procedure TFmSTRp50.FormShow(Sender: TObject);
begin
  Edit2.Text := SFMAIN.Xlocat;
  EditBtn.Visible := sfmain.XDesign = 'Y';
  edit7.Style.Color := clsilver;
  edit3.Style.Color := clsilver;
  edit5.Style.Color := clsilver;
  edit4.Style.Color := clsilver;
end;

procedure TFmSTRp50.EditBtnClick(Sender: TObject);
begin
  if ROption.ItemIndex = 0 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'RP_RECVEXPLAIN.FR3', '2')
  else if ROption.ItemIndex = 1 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'RP_RECVINVOICE.FR3', '2')
  else if ROption.ItemIndex = 2 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'RP_RECVEXP_DETAIL.FR3', '2')
  else if ROption.ItemIndex = 3 then
    DM_SEC.Do_Prev_Edit_FastReport(frxReport1, 'RP_RECVEXP_SUBGROUP.FR3', '2');
end;

procedure TFmSTRp50.tbCrtBarCodeClick(Sender: TObject);
var
  ed1, Ed2, Ed3, Ed4, HD1, HD2, op1: string;
  L1, i, ST: Integer;
begin

  case FmSTRp50.RadioGroup1.ItemIndex of
    0:
      op1 := ' AND RT.FLAG<>''R'' ';
    1:
      op1 := ' AND RT.FLAG=''R'' ';
    2:
      op1 := ' ';
  end;

  with qStkBalance do
  begin
    Close;
    SQL.Clear;
    if FmSTRp50.RadioGp2.ItemIndex = 0 then
      SQL.ADD('SELECT Ri.recvLoc,Rt.Recvno,Rt.RecvDate,Rt.Partno,(Rt.QtyRecv*Rt.Ucost)-Rt.NetTot as Redu1,Rt.Pono, ' +
        'Rt.QtyRecv,Rt.Ucost,Rt.NetTot,Ri.invno, ' +
        'Ri.invDate,It.DESC1,It.model,It.stdbuy,It.price1 ' +
        'FROM Rc_invoi Ri,Rc_Trans Rt,Inventor It ' +
        'WHERE (Ri.Recvno=Rt.Recvno) and (Ri.recvLoc like :0)  ' + op1 +
        'and (Ri.Apcode like :1) and (It.Partno=Rt.Partno) and ' +
        '(It.PartNo  Between :2 and :3) and ' +
        '(Rt.RecvDate Between :4 and :5) and ' +
        'It.Group1 like :6 and (Rt.RecvLoc = It.locat) AND (IT.TYPE LIKE :7) Order By Rt.Recvno');
    if FmSTRp50.RadioGp2.ItemIndex = 1 then
      SQL.ADD('SELECT Ri.recvLoc,Rt.Recvno,Rt.RecvDate,Rt.Partno,(Rt.QtyRecv*Rt.Ucost)-Rt.NetTot as Redu1,Rt.Pono, ' +
        'Rt.QtyRecv,Rt.Ucost,Rt.NetTot,Ri.invno, ' +
        'Ri.invDate,It.DESC1,It.model,It.stdbuy,It.price1 ' +
        'FROM Rc_invoi Ri,Rc_Trans Rt,Inventor It ' +
        'WHERE (Ri.Recvno=Rt.Recvno) and (Ri.recvLoc like :0)  ' + op1 +
        'and (Ri.Apcode like :1) and (It.Partno = Rt.Partno) and ' +
        '(It.PartNo  Between :2 and :3) and ' +
        '(Rt.RecvDate between :4 and :5) and ' +
        'It.Group1 like :6  and It.Type like :7  and (Rt.RecvLoc=It.locat) Order By Rt.Partno,Rt.Recvno');

    if FmSTRp50.Edit2.Text <> '' then
      Ed2 := FmSTRp50.Edit2.text + '%'
    else
      Ed2 := '%';
    if FmSTRp50.Edit1.Text <> '' then
      ed1 := FmSTRp50.Edit1.text + '%'
    else
      ed1 := '%';

    if FmSTRp50.Edit3.Text = '' then
      Ed3 := ''
    else
      Ed3 := FmSTRp50.Edit3.Text;
    if FmSTRp50.Edit4.Text = '' then
      Ed4 := 'ZZZZZZZZZZZZ'
    else
      Ed4 := FmSTRp50.Edit4.text;

    Params[0].AsString := Ed2;
    Params[1].AsString := ed1;
    Params[2].AsString := Ed3;
    Params[3].AsString := Ed4;
    Params[4].AsDate := FmSTRp50.Fromdate.Date;
    Params[5].AsDate := FmSTRp50.Todate.Date;
    Params[6].AsString := FmSTRp50.Edit7.text + '%';
    Params[7].AsString := FmSTRp50.Edit5.text + '%';
    Open;
    if qStkBalance.bof and qStkBalance.Eof then
      sfMain.RaiseException('ไม่มีข้อมูล')
    else
    begin
//==============================
      TbName := 'TBARCODE';
      with Query1 do
      begin
        close;
        sql.clear;
        Sql.Add('SELECT * FROM SYSSTAT.TABLES WHERE TABNAME=:0  AND  TABSCHEMA =:1 ');
        Params[0].AsString := TbName;
        params[1].asstring := Dm_SEC.XSchema;
        open;
        if Eof and Bof then
        begin
      //  สร้างตารางเก็บข้อมูล Part
          close;
          sql.Clear;
          sql.Add('CREATE TABLE ' + TbName + ' (  ' +
            'LOCAT  CHAR(8) NOT NULL,  ' +
            'PARTNO CHAR(20) NOT NULL,  ' +
            'MODEL  CHAR(20),  ' +
            'PRICE DECIMAL(12,2) DEFAULT 0,  ' +
            'PRICE1 DECIMAL(12,2) DEFAULT 0,  ' +
            'DESCP  CHAR(100) NOT NULL) ');
          ExecSQL;
        //
          Close;
          sql.Clear;
          sql.Add('CREATE INDEX ' + TbName + '0 ON ' + TbName + '(PARTNO ASC,LOCAT ASC)');
          Execsql;
        end
        else
        begin
          with Query1 do
          begin
            Close;
            sql.Clear;
            sql.Add('DROP TABLE ' + TbName);
            Execsql;

            close;
            sql.Clear;
            sql.Add('CREATE TABLE ' + TbName + ' (  ' +
              'LOCAT  CHAR(8) NOT NULL,  ' +
              'PARTNO CHAR(20) NOT NULL,  ' +
              'MODEL  CHAR(20),  ' +
              'PRICE DECIMAL(12,2) DEFAULT 0,  ' +
              'PRICE1 DECIMAL(12,2) DEFAULT 0,  ' +
              'DESCP  CHAR(100) NOT NULL) ');
            ExecSQL;
          //
            Close;
            sql.Clear;
            sql.Add('CREATE INDEX ' + TbName + '0 ON ' + TbName + '(PARTNO ASC,LOCAT ASC)');
            Execsql;
          end;
        end;
      end;

      with Query1 do
      begin
        Close;
        sql.Clear;
        sql.Add('DELETE FROM ' + TbName);
        Execsql;
      end;

      with qStkBal do
      begin
        close;
        sql.Clear;
        sql.Add('SELECT * FROM ' + TbName + ' WHERE PARTNO='''' ');
        Open;
      end;

      qStkBalance.First;
      while not qStkBalance.Eof do
      begin
        ST := qStkBalance.Fieldbyname('QtyRecv').AsInteger;
        for i := 1 to ST do
        begin
          qStkBal.Insert;
          qStkBal.Fieldbyname('LOCAT').AsString := qStkBalance.Fieldbyname('recvLoc').AsString;
          qStkBal.Fieldbyname('PARTNO').AsString := qStkBalance.Fieldbyname('PARTNO').AsString;
          qStkBal.Fieldbyname('MODEL').AsString := qStkBalance.Fieldbyname('MODEL').AsString;
          qStkBal.Fieldbyname('PRICE').AsFloat := qStkBalance.Fieldbyname('STDBUY').AsFloat;
          qStkBal.Fieldbyname('PRICE1').AsFloat := qStkBalance.Fieldbyname('PRICE1').AsFloat;
          qStkBal.Fieldbyname('DESCP').AsString := qStkBalance.Fieldbyname('DESC1').AsString;
          qStkBal.Post;
        end;
        qStkBalance.Next;
      end;
//==============================
      DM_SEC.Do_Prev_Edit_FastReport(frxReport1,'Fr_BarCodeRecStk.fr3','1');
    end;
  end;
end;

procedure TFmSTRp50.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit2.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRp50.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalAP = Mrok then
    edit1.text := fSrcDlg.KeyNo;
end;

procedure TFmSTRp50.Edit7PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDLG.xgrouptyp := '1';
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit7.Text := fSrcDlg.Keyno;
end;

procedure TFmSTRp50.Edit5PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDLG.xgrouptyp := '2';
  if fSrcDlg.ShowModalGroup = Mrok then
    Edit5.Text := fSrcDlg.Keyno;
end;

procedure TFmSTRp50.Edit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.XSrLocat := Edit2.Text;
  if fSrcDlg.ShowModalPartInventor = Mrok then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO=:XPART AND LOCAT LIKE :XLOC');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Params[1].AsString := Edit2.Text + '%';
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
      sfMain.RaiseException('ไม่พบข้อมูล');
    Edit4.text := Dm_Set1.Query1.FieldByName('PartNo').Asstring;
  end;
end;

procedure TFmSTRp50.Edit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  fSrcDlg.XSrLocat := Edit2.Text;
  if fSrcDlg.ShowModalPartInventor = Mrok then
  begin
    with Dm_Set1.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVENTOR WHERE PARTNO=:XPART AND LOCAT LIKE :XLOC');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Params[1].AsString := Edit2.Text + '%';
      Open;
    end;
    if Dm_Set1.Query1.Bof and Dm_Set1.Query1.Eof then
      sfMain.RaiseException('ไม่พบข้อมูล');
    Edit3.text := Dm_Set1.Query1.FieldByName('PartNo').Asstring;
  end;
end;

procedure TFmSTRp50.ROptionClick(Sender: TObject);
begin
  Label4.Enabled := ROption.ItemIndex <> 1;
  Label5.Enabled := ROption.ItemIndex <> 1;
  Label8.Enabled := ROption.ItemIndex <> 1;
  Label9.Enabled := ROption.ItemIndex <> 1;
  Edit3.Enabled := ROption.ItemIndex <> 1;
  Edit4.Enabled := ROption.ItemIndex <> 1;
  Edit5.Enabled := ROption.ItemIndex <> 1;
  Edit7.Enabled := ROption.ItemIndex <> 1;
  RadioGroup1.Enabled := ROption.ItemIndex = 1;
end;

end.

