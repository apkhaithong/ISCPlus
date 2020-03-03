unit SvHlp20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DB, StdCtrls, Buttons, DBGrids, ExtCtrls, RzSpnEdt, RzPanel, RzDBGrid,
  ComCtrls, Menus, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxButtons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox,
  cxButtonEdit, cxLookAndFeels, AdvPanel, BusinessSkinForm, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, dxDateRanges;

type
  TSvInHlp_20 = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label1: TLabel;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    Edit1: TcxTextEdit;
    StatusBar1: TStatusBar;
    cxTextEdit1: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3SVCODE: TcxGridDBColumn;
    cxGridDBTableView3DESCRP: TcxGridDBColumn;
    cxGridDBTableView3PRC_EST: TcxGridDBColumn;
    cxGridDBTableView3MARK: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SVCODE: TcxGridDBColumn;
    cxGrid1DBTableView1DESC1: TcxGridDBColumn;
    cxGrid1DBTableView1HOUR: TcxGridDBColumn;
    cxGrid1DBTableView1MINUTE: TcxGridDBColumn;
    cxGrid1DBTableView1FRT: TcxGridDBColumn;
    cxGrid1DBTableView1PRC_EST: TcxGridDBColumn;
    cxGrid1DBTableView1MARK: TcxGridDBColumn;
    cxGrid3DBTableView2: TcxGridDBTableView;
    cxGrid3DBTableView2PARTNO: TcxGridDBColumn;
    cxGrid3DBTableView2DESC1: TcxGridDBColumn;
    cxGrid3DBTableView2PRC_QTY: TcxGridDBColumn;
    cxGrid3DBTableView2QTY: TcxGridDBColumn;
    cxGrid3DBTableView2PRC_EST: TcxGridDBColumn;
    cxGrid3DBTableView2MARK: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGridLevel1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    CheckBox1: TcxCheckBox;
    QHlppart: TFDQuery;
    QHlppartGCODE: TStringField;
    QHlppartMDLCOD: TStringField;
    QHlppartPARTNO: TStringField;
    QHlppartDESC1: TStringField;
    QHlppartQTY: TFloatField;
    QHlppartMARK: TStringField;
    QHlppartUSERID: TStringField;
    QHlppartTIME1: TDateTimeField;
    QHlppartPRC_EST: TFloatField;
    QHlppartPRC_QTY: TFloatField;
    QHlpserv: TFDQuery;
    QHlpservGCODE: TStringField;
    QHlpservMDLCOD: TStringField;
    QHlpservSVCODE: TStringField;
    QHlpservDESC1: TStringField;
    QHlpservMARK: TStringField;
    QHlpservUSERID: TStringField;
    QHlpservTIME1: TDateTimeField;
    QHlpservHOUR: TIntegerField;
    QHlpservMINUTE: TIntegerField;
    QHlpservFRT: TFloatField;
    QHlpservPRC_EST: TFloatField;
    QHlpOrd: TFDQuery;
    QHlpOrdGCODE: TStringField;
    QHlpOrdMDLCOD: TStringField;
    QHlpOrdSVCODE: TStringField;
    QHlpOrdKILOMT: TFloatField;
    QHlpOrdDESCRP: TStringField;
    QHlpOrdMARK: TStringField;
    QHlpOrdUSERID: TStringField;
    QHlpOrdTIME1: TDateTimeField;
    QHlpOrdPRC_EST: TFloatField;
    SoHlpOrd: TDataSource;
    SoHlpserv: TDataSource;
    SoHlppart: TDataSource;
    Grpmst: TFDQuery;
    TmpQuery: TFDQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grid_ServDblClick(Sender: TObject);
    procedure Grid_OrderDblClick(Sender: TObject);
    procedure Grid_PartDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  XAllModel : String;
  public
  Procedure Getdata;

    { Public declarations }
  end;

var
  SvInHlp_20: TSvInHlp_20;

implementation

uses DmSv,Srchdlg1,uSrchdlg1,SvIn20;

{$R *.DFM}

procedure TSvInHlp_20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TSvInHlp_20.Grid_ServDblClick(Sender: TObject);
begin
  QHlpserv.Edit;
  If QHlpserv.Fieldbyname('Mark').Asstring = 'N' Then
    QHlpserv.Fieldbyname('Mark').Asstring :='Y'
  Else
    QHlpserv.Fieldbyname('Mark').Asstring :='N';
  QHlpserv.Post;
end;

procedure TSvInHlp_20.Grid_OrderDblClick(Sender: TObject);
begin
  QHlpOrd.Edit;
  If QHlpOrd.Fieldbyname('Mark').Asstring = 'N' Then
    QHlpOrd.Fieldbyname('Mark').Asstring :='Y'
  Else
    QHlpOrd.Fieldbyname('Mark').Asstring :='N';
  QHlpOrd.Post;
end;

procedure TSvInHlp_20.Grid_PartDblClick(Sender: TObject);
begin
  QHlppart.Edit;
  If QHlppart.Fieldbyname('Mark').Asstring = 'N' Then
    QHlppart.Fieldbyname('Mark').Asstring :='Y'
  Else
    QHlppart.Fieldbyname('Mark').Asstring :='N';
  QHlppart.Post;
end;

procedure TSvInHlp_20.getdata;
begin
  With GrpMst do
  Begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM GRPMST WHERE GCODE=:0 ');
     Params[0].AsString := Edit1.Text;
     Open;
  End;

  XAllModel := GrpMst.fieldbyname('ALLMODEL').AsString;
  with TmpQuery do
  begin
    close;
    sql.Clear;
    sql.Add('UPDATE GRPSERV SET MARK = ''Y'' WHERE GCODE=:0 ');
    Params[0].Asstring := Edit1.Text;
    execSql;

    close;
    sql.Clear;
    sql.Add('UPDATE GRPORD SET MARK = ''Y'' WHERE GCODE=:0 ');
    Params[0].Asstring := Edit1.Text;
    execSql;

    close;
    sql.Clear;
    sql.Add('UPDATE GRPPART SET MARK = ''N'' WHERE GCODE=:0 ');
    Params[0].Asstring := Edit1.Text;
    execSql;
  end;

  with SvInHlp_20.QHlpServ do
  begin
    if XAllModel = 'N' Then
    Begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT * FROM GRPSERV WHERE GCODE=:0 AND MDLCOD =:1 ORDER BY GCODE');
       Params[0].Asstring := Edit1.Text;
       Params[1].Asstring := Dm_Sv.QJoborder2.FieldByname('MDLCOD').asstring;
    End Else
    Begin
       Close;
       Sql.Clear;
       Sql.Add('SELECT * FROM GRPSERV WHERE GCODE=:0 ORDER BY GCODE');
       Params[0].Asstring := Edit1.Text;
    End;
       Open ;
  end;

  with SvInHlp_20.QHlpord do
  begin
    if XAllModel = 'N' Then
    Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPORD WHERE GCODE=:0 AND MDLCOD=:1 ');
      Params[0].Asstring := Edit1.Text;
      Params[1].AsString := SvIn_20.cxTextEdit1.Text;
    End Else
    Begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPORD WHERE GCODE=:0 ');
      Params[0].Asstring := Edit1.Text;
    End;
    Open ;
  end;

  with SvInHlp_20.QHlppart do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPPART WHERE GCODE=:Edit1 ');
    Params[0].Asstring := Edit1.Text;
    Open ;
  end;
end;

procedure TSvInHlp_20.FormShow(Sender: TObject);
begin
  Getdata;
end;


procedure TSvInHlp_20.CheckBox1Click(Sender: TObject);
begin
    if QHlpserv.Active then
    Begin
        QHlpserv.First;
        While Not QHlpserv.Eof Do
        Begin
            QHlpserv.Edit;
            if CheckBox1.Checked Then
               QHlpservMARK.AsString := 'Y'
            Else QHlpservMARK.AsString := '';
            QHlpserv.Next;
        End;
    End;

    if QHlpOrd.Active then
    Begin
        QHlpOrd.First;
        While Not QHlpOrd.Eof Do
        Begin
            QHlpOrd.Edit;
            if CheckBox1.Checked Then
               QHlpOrdMARK.AsString := 'Y'
            Else QHlpOrdMARK.AsString := '';
            QHlpOrd.Next;
        End;
    End;

    if QHlppart.Active then
    Begin
        QHlppart.First;
        While Not QHlppart.Eof Do
        Begin
            QHlppart.Edit;
            if CheckBox1.Checked Then
               QHlppartMARK.AsString := 'Y'
            Else QHlppartMARK.AsString := '';
            QHlppart.Next;
        End;
    End;
end;

end.
