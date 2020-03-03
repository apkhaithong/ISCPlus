unit uCatalogPrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, Mask, DBCtrls, Spin, ComCtrls,
  ToolWin, ImgList, RzEdit, RzDBGrid, RzSpnEdt, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxDateRanges;

type
  TFrPriceList = class(TForm)
    qPriceList: TFDQuery;
    DataSource1: TDataSource;
    qPriceListDESC1: TStringField;
    qPriceListUNIT: TStringField;
    qPriceListCOST: TFloatField;
    qPriceListPRICE1: TFloatField;
    qPriceListPRICE2: TFloatField;
    qPriceListPRICE3: TFloatField;
    qPriceListPRICE4: TFloatField;
    qPriceListNETPRC: TStringField;
    qPriceListPARTNO: TStringField;
    enqBtn: TAdvGlowButton;
    closeBtn: TAdvGlowButton;
    edPart: TcxButtonEdit;
    Bevel1: TBevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1PARTNO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCP: TcxGridDBColumn;
    cxGrid1DBTableView1UNIT: TcxGridDBColumn;
    cxGrid1DBTableView1COST: TcxGridDBColumn;
    cxGrid1DBTableView1PRICE1: TcxGridDBColumn;
    qPriceListGROUP1: TStringField;
    cxGrid1DBTableView1GROUP1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edPartPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPriceList: TFrPriceList;
  Year,Month,Day :Word;
implementation

uses DmSet1,uSrcDlg,uSoftfirm;

{$R *.DFM}

procedure TFrPriceList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qPriceList.Close;
  Action :=caFree;
  FrPriceList := Nil;
end;

procedure TFrPriceList.CloseBtnClick(Sender: TObject);
begin
 close;
end;

procedure TFrPriceList.EnqBtnClick(Sender: TObject);
begin
  WITH qPriceList DO
  begin
    close;
    sql.clear;
    Sql.Add('SELECT  * FROM INVMAST '+
            'WHERE (PARTNO LIKE :0) or (BARCODE LIKE :1)  '+
            'ORDER BY PARTNO');
    Params[0].asstring := '%'+edPart.TEXT+'%' ;
    Params[1].asstring := '%'+edPart.TEXT+'%' ;    
    open;
   end;
end;

procedure TFrPriceList.RzRapidFireButton1Click(Sender: TObject);
begin
    Close;
end;

procedure TFrPriceList.FormCreate(Sender: TObject);
begin
  sfmain.Check_right('HDSTK','HDSTK02_C_5');
end;

procedure TFrPriceList.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl,0,0);
    Key := #0;
  end;
end;

procedure TFrPriceList.edPartPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
     edPart.TEXT := fSrcDlg.Keyno;
end;

end.
