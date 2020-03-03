unit STHelp;
                                  
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DB, ExtCtrls, RzDBGrid, DBGrids, Menus,
  cxLookAndFeelPainters, cxCheckBox, AdvShapeButton, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxButtons, AdvGlowButton, cxGraphics, cxLookAndFeels,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCardView,
  cxGridDBCardView, cxClasses, cxGridCustomView, cxGrid, cxNavigator,
  cxGridCustomLayoutView, cxStyles, dxDateRanges;

type
  TFmSTHelp = class(TForm)
    SoQuery1: TDataSource;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Accept: TcxButton;
    CancelBtn: TcxButton;
    SearchEd: TcxTextEdit;
    AdvShapeButton1: TAdvShapeButton;
    PkGrid: TcxGrid;
    PkGridDBTableView1: TcxGridDBTableView;
    PkGridDBCardView1: TcxGridDBCardView;
    cxGridLevel1: TcxGridLevel;
    PkGridDBTableView1PKNO: TcxGridDBColumn;
    PkGridDBTableView1PKLOCAT: TcxGridDBColumn;
    PkGridDBTableView1PKDATE: TcxGridDBColumn;
    PkGridDBTableView1CUSCOD: TcxGridDBColumn;
    PkGridDBTableView1CUSTNAME: TcxGridDBColumn;
    PkGridDBTableView1BALANCE: TcxGridDBColumn;
    PkGridDBTableView1VATAMT: TcxGridDBColumn;
    PkGridDBTableView1NETTOTAL: TcxGridDBColumn;
    PkGridDBTableView1USERID: TcxGridDBColumn;
    PkGridDBTableView1TIME1: TcxGridDBColumn;
    PkGridDBTableView1CANCELID: TcxGridDBColumn;
    PkGridDBTableView1CANDAT: TcxGridDBColumn;
    RctranGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBPARTNO: TcxGridDBColumn;
    cxGridDBPARTDESC: TcxGridDBColumn;
    cxGridDBQTYRECV: TcxGridDBColumn;
    cxGridDBNETCOST: TcxGridDBColumn;
    cxGridDBPONO: TcxGridDBColumn;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridLevel2: TcxGridLevel;
    Ictran_Job: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2PARTNO: TcxGridDBColumn;
    cxGridDBTableView2PARTDESC: TcxGridDBColumn;
    cxGridDBTableView2QTY: TcxGridDBColumn;
    cxGridDBTableView2UPRICE: TcxGridDBColumn;
    cxGridDBCardView2: TcxGridDBCardView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView2PKNO: TcxGridDBColumn;
    IctranGrid: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3PARTNO: TcxGridDBColumn;
    cxGridDBTableView3PARTDESC: TcxGridDBColumn;
    cxGridDBTableView3QTYOUT: TcxGridDBColumn;
    cxGridDBTableView3UPRICE: TcxGridDBColumn;
    cxGridDBTableView3FREE: TcxGridDBColumn;
    cxGridDBCardView3: TcxGridDBCardView;
    cxGridLevel4: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PkTranGridDblClick(Sender: TObject);
    procedure PoTranGridDblClick(Sender: TObject);
    procedure POGridDblClick(Sender: TObject);
    procedure PkTranGridKeyPress(Sender: TObject; var Key: Char);
    procedure PoTranGridKeyPress(Sender: TObject; var Key: Char);
    procedure POGridKeyPress(Sender: TObject; var Key: Char);
    procedure SearchEdPropertiesChange(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure PkGridDBTableView1DblClick(Sender: TObject);
    procedure PkGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cxGridDBTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxGridDBTableView3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTHelp: TFmSTHelp;

implementation
uses Dmic01, USoftFirm;
{$R *.DFM}

procedure TFmSTHelp.FormCreate(Sender: TObject);
Var N:Word;
begin
  For N:= 0 To ComponentCount-1 Do
  begin
    {If (Components[n] Is TRZDBgrid)  Then
    TDBGrid(Components[n]).Visible := False;}

    If (Components[n] Is TcxGrid)  Then
    TcxGrid(Components[n]).Visible := False;
  End;
end;

procedure TFmSTHelp.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFmSTHelp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=Cafree;
end;


procedure TFmSTHelp.PkTranGridDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFmSTHelp.PoTranGridDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFmSTHelp.POGridDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFmSTHelp.PkTranGridKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 Then
  Begin
      Accept.Click;
  End;
end;

procedure TFmSTHelp.PoTranGridKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 Then
  Begin
      Accept.Click;
  End;
end;

procedure TFmSTHelp.POGridKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 Then
  Begin
      Accept.Click;
  End;
end;

procedure TFmSTHelp.SearchEdPropertiesChange(Sender: TObject);
begin
//  FmDmic01.Query1.Locate('PKNO', SearchEd.Text, [loPartialKey]);
 if PkGrid.Visible = True then
 begin
   With FmDmic01.Query1 Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT A.PKNO,A.PKLOCAT,A.PKDATE,A.CUSCOD,B.CUSTNAME,A.BALANCE,A.VATAMT,A.NETTOTAL,A.USERID,A.TIME1,'+
      'A.CANCELID,A.CANDAT,A.REFNO,A.DISCT,A.VATTYPE,A.Vatrt,A.EXDISAMT,A.DISBATH,A.Officcod,A.SALLEV,A.MEMO1,A.TRANTO '+
      'FROM PK_INVOI A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) WHERE A.CANCELID IS NULL '+
      'AND ((A.PKNO LIKE :0) or (B.CUSTNAME LIKE :0)) AND (A.STAT =:XSTAT) AND (A.FLAG=''1'' OR A.FLAG=''2'' OR A.FLAG=''3'') '+
      'AND A.PKLOCAT=:EDIT3 ORDER BY A.PKDATE DESC');
      PARAMS[0].ASSTRING := Uppercase('%'+SearchEd.Text+'%');
      PARAMS[1].ASSTRING := Uppercase('%'+SearchEd.Text+'%');
      PARAMS[2].ASSTRING := 'A';
      Params[3].AsString := sfmain.Xlocat;
      Open;
    end;
  end;
end;

procedure TFmSTHelp.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
     if PkGrid.Visible = True then
     PkGrid.SetFocus;
   End;
end;

procedure TFmSTHelp.PkGridDBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFmSTHelp.PkGridDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 Then
  Begin
      Accept.Click;
  End;
end;

procedure TFmSTHelp.cxGridDBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFmSTHelp.cxGridDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 Then
  Begin
      Accept.Click;
  End;
end;

procedure TFmSTHelp.cxGridDBTableView2DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFmSTHelp.cxGridDBTableView2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 Then
  Begin
      Accept.Click;
  End;
end;

procedure TFmSTHelp.cxGridDBTableView3DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFmSTHelp.cxGridDBTableView3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 Then
  Begin
      Accept.Click;
  End;
end;

end.
