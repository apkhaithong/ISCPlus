unit ShwOnh;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Spin, DB, ExtCtrls, RzSpnEdt, RzDBGrid,
  Menus, cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxGraphics, cxLookAndFeels, cxNavigator,
  dxDateRanges, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridCustomLayoutView, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, BusinessSkinForm, cxGridLevel, cxGridCardView,
  cxGridDBCardView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, AdvPanel;

type
  TFInvanls = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Button1: TcxButton;
    RzRapidFireButton1: TcxButton;
    SpinEdit1: TcxSpinEdit;
    DataSource1: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1LOCAT: TcxGridDBColumn;
    cxGrid1DBTableView1PARTNO: TcxGridDBColumn;
    cxGrid1DBTableView1ONH: TcxGridDBColumn;
    cxGrid1DBTableView1ALO: TcxGridDBColumn;
    cxGrid1DBTableView1SHELF: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE1: TcxGridDBColumn;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1STRNO: TcxGridDBCardViewRow;
    cxGrid1DBCardView1STAT: TcxGridDBCardViewRow;
    cxGrid1DBCardView1RVLOCAT: TcxGridDBCardViewRow;
    cxGrid1DBCardView1RVCODE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1APCODE: TcxGridDBCardViewRow;
    cxGrid1DBCardView1MANUYR: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ENGNO: TcxGridDBCardViewRow;
    cxGrid1DBCardView1REGNO: TcxGridDBCardViewRow;
    cxGrid1Level1: TcxGridLevel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    QInvmast: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInvanls: TFInvanls;

implementation
uses Dmset1,set_inv,uSoftFirm;
{$R *.DFM}

procedure TFInvanls.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dm_set1.Query1.Close;
  Action := Cafree;
  FInvanls := nil;
end;

procedure TFInvanls.Button1Click(Sender: TObject);
Var S1,S2:String;
begin
  With Dm_set1.Query1 do
  begin
    S1:= 'A.ONHN_'+inttostr(SpinEdit1.value);
    S2:= 'A.ALLO_'+Inttostr(SpinEdit1.value);

    close;
    Sql.Clear;
    Sql.add('SELECT A.LOCAT,A.PARTNO,A.YEAR1,'+S1+' AS ONH,'+S2+' AS ALO, '+
    'B.SHELF,B.PRICE1 FROM INVANLS A,INVENTOR B WHERE A.PARTNO=B.PARTNO AND '+
    'A.LOCAT =B.LOCAT AND '+
    ' A.PARTNO=:EDIT1 AND A.YEAR1=:EDIT2 Order by Locat');

    Params[0].Asstring := SetInvMst.Qinvmast.Fieldbyname('Partno').Asstring;
    Params[1].Asstring := Dm_set1.Xyear;
    OPEN;
    sfmain.Do_Show_DisplayFormat_Floating(Dm_set1.Query1);
  end;
end;

procedure TFInvanls.FormShow(Sender: TObject);
Var Year,Month,Day :Word;
begin
  DecodeDate(Now,Year,Month,Day);
  SpinEdit1.value := Month;
end;

procedure TFInvanls.RzRapidFireButton1Click(Sender: TObject);
begin
  Close;
end;

end.
