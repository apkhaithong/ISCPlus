unit Hlpbrinv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, Mask, DBCtrls, Spin, ImgList,
  ComCtrls, ToolWin, RzSpnEdt, RzDBGrid, RzBckgnd, RzShellDialogs, RzButton,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  AdvGlowButton, cxDropDownEdit, cxSpinEdit, cxMaskEdit, cxButtonEdit,
  cxContainer, cxTextEdit, cxLookAndFeels, cxLookAndFeelPainters, AdvPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxBarBuiltInMenu,
  cxNavigator, dxDateRanges;

type
  TFhlpbrinv = class(TForm)
    AdvPanel1: TAdvPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1LOCAT: TcxGridDBColumn;
    cxGrid1DBTableView1GROUP1: TcxGridDBColumn;
    cxGrid1DBTableView1PARTNO: TcxGridDBColumn;
    cxGrid1DBTableView1YEAR1: TcxGridDBColumn;
    cxGrid1DBTableView1DESC1: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE1: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE2: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE3: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE4: TcxGridDBColumn;
    cxGrid1DBTableView1SHELF: TcxGridDBColumn;
    cxGrid1DBTableView1CODE_T: TcxGridDBColumn;
    cxGrid1DBTableView1ALO: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    cxGrid1DBTableView2Column2: TcxGridDBColumn;
    cxGrid1DBTableView2Column3: TcxGridDBColumn;
    cxGrid1DBTableView2Column4: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Edit3: TcxTextEdit;
    Edit1: TcxButtonEdit;
    SpinEdit1: TcxSpinEdit;
    Edit2: TcxButtonEdit;
    RadioGroup1: TcxComboBox;
    SrchBtn1: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1MDLCOD: TcxGridDBColumn;
    cxGridDBTableView1SVCODE: TcxGridDBColumn;
    cxGridDBTableView1DESCP: TcxGridDBColumn;
    cxGridDBTableView1HOUR: TcxGridDBColumn;
    cxGridDBTableView1MINUTE: TcxGridDBColumn;
    cxGridDBTableView1FRT: TcxGridDBColumn;
    cxGridDBTableView1SVPRIC: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    Label4: TLabel;
    edModel: TcxButtonEdit;
    QHlpbinv: TFDQuery;
    QHlpbinvPARTNO: TStringField;
    QHlpbinvLOCAT: TStringField;
    QHlpbinvYEAR1: TStringField;
    QHlpbinvDESC1: TStringField;
    QHlpbinvGROUP1: TStringField;
    QHlpbinvPRICE1: TFloatField;
    QHlpbinvPRICE2: TFloatField;
    QHlpbinvPRICE3: TFloatField;
    QHlpbinvPRICE4: TFloatField;
    QHlpbinvSHELF: TStringField;
    QHlpbinvCODE_T: TStringField;
    QHlpbinvALO: TFloatField;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    SaveDialog1: TSaveDialog;
    DataSource2: TDataSource;
    qrLabor: TFDQuery;
    qrLaborSVCODE: TStringField;
    qrLaborMDLCOD: TStringField;
    qrLaborDESCP: TStringField;
    qrLaborHOUR: TIntegerField;
    qrLaborMINUTE: TIntegerField;
    qrLaborFRT: TFloatField;
    qrLaborSVPRIC: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure SrchBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure Edit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edModelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fhlpbrinv: TFhlpbrinv;

implementation

uses uSrcDlg, Dmsvset, USoftFirm;

{$R *.DFM}

procedure TFhlpbrinv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QHlpbinv.Close;
  Query1.Close;
  Fhlpbrinv := Nil;
  Action :=caFree;
end;

procedure TFhlpbrinv.FormShow(Sender: TObject);
Var Year,Month,Day :Word;
begin
  DecodeDate(Now,Year,Month,Day);
  SpinEdit1.value := Month;
  RadioGroup1.Itemindex :=0;
  Edit1.Text := sfMain.Xlocat;
  with Query1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:XCODE');
   PARAMS[0].ASSTRING :=EDIT1.TEXT;
   Open ;
  end;
  Edit3.Text := QUERY1.Fieldbyname('Locatnm').Asstring;
   //
  Edit1.Enabled := (sfmain.XChgLoc='Y');
  Edit3.Enabled := (sfmain.XChgLoc='Y');
end;

procedure TFhlpbrinv.SpeedButton1Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
  begin
    with Dm_Svset.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :Edit1 ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Svset.Query1.bof and Dm_Svset.Query1.Eof then
    SFMain.RaiseException('ไมมีรหัสสาขานี้ในแฟ้มข้อมูล');
    Edit1.Text := Dm_Svset.Query1.Fieldbyname('Locatcd').Asstring;
    Edit3.Text := Dm_Svset.Query1.Fieldbyname('Locatnm').Asstring;
  End;

end;
procedure TFhlpbrinv.Edit2Change(Sender: TObject);
begin
  If sfMain.XSrch='Y' Then
  SrchBtn1Click(Sender);
end;

procedure TFhlpbrinv.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFhlpbrinv.SrchBtn1Click(Sender: TObject);
Var S2 : String;
begin
  If Edit1.Text ='' Then SFMain.RaiseException('ยังไม่บันทึกรหัสสาขา');
  if SpinEdit1.Text = '' then SFMain.RaiseException('ยังไม่ได้ระบุสต็อก');
  WITH Qhlpbinv DO
   begin
    S2 := 'B.ALLO_'+Inttostr(SpinEdit1.value);
    close;
    sql.clear;
    If RadioGroup1.Itemindex =0 Then
       Sql.Add('SELECT  A.PARTNO,A.LOCAT,A.YEAR1,A.DESC1,A.GROUP1,A.PRICE1,A.PRICE2,A.PRICE3,A.PRICE4,A.SHELF,A.CODE_T,'+S2+' AS ALO  FROM INVENTOR A,INVANLS B '+
       'WHERE A.PARTNO=B.PARTNO AND A.LOCAT=B.LOCAT AND A.YEAR1 = B.YEAR1 AND A.LOCAT=:Edit1 AND A.PARTNO LIKE :EDIT2 ');
    If RadioGroup1.Itemindex =1 Then
       Sql.Add('SELECT  A.PARTNO,A.LOCAT,A.YEAR1,A.DESC1,A.GROUP1,A.PRICE1,A.PRICE2,A.PRICE3,A.PRICE4,A.SHELF,A.CODE_T,'+S2+' AS ALO  FROM INVENTOR A,INVANLS B '+
       'WHERE A.PARTNO=B.PARTNO AND A.LOCAT=B.LOCAT AND A.YEAR1 = B.YEAR1 AND A.LOCAT=:Edit1 AND A.DESC1 LIKE :EDIT2 ');
    Params[0].asstring := EDIT1.TEXT;
    Params[1].asstring := EDIT2.TEXT+'%' ;
    open;
   end;
   QHlpbinv.Active := True;
end;

procedure TFhlpbrinv.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSV','HDSV3_07');
end;

procedure TFhlpbrinv.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
  begin
    with Dm_Svset.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :0 ');
      Params[0].Asstring := fSrcDlg.KeyNo;
      Open;
    end;
    if Dm_Svset.Query1.bof and Dm_Svset.Query1.Eof then
    SFMain.RaiseException('ไมมีรหัสสาขานี้ในแฟ้มข้อมูล');
    Edit1.Text := Dm_Svset.Query1.Fieldbyname('Locatcd').Asstring;
    Edit3.Text := Dm_Svset.Query1.Fieldbyname('Locatnm').Asstring;
  End;
end;

procedure TFhlpbrinv.Edit1PropertiesChange(Sender: TObject);
begin
   if Edit1.Text = '' then Edit3.Clear;
    with Dm_Svset.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD = :0 ');
      Params[0].Asstring := Edit1.Text;
      Open;
      Edit3.Text := Dm_svset.Query1.fieldbyname('LOCATNM').AsString;
    end;
end;

procedure TFhlpbrinv.Edit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
     EDIT2.TEXT := fSrcDlg.Keyno;
end;

procedure TFhlpbrinv.edModelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   With  qrLabor do
   Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TBLABOR WHERE MDLCOD LIKE :0');
      Params[0].AsString := edModel.Text+'%';
      Open;
   End;
end;

end.
