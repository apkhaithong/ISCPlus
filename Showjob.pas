unit Showjob;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, RzDBGrid, RzSpnEdt, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, AdvPanel, Menus, cxButtons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, dxDateRanges;

type
  TFjobshow = class(TForm)
    AdvPanel1: TAdvPanel;
    DBGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3JOBNO: TcxGridDBColumn;
    cxGridDBTableView3RECVDATE: TcxGridDBColumn;
    cxGridDBTableView3STRNO: TcxGridDBColumn;
    cxGridDBTableView3CUSCOD: TcxGridDBColumn;
    cxGridDBTableView3PARTNET: TcxGridDBColumn;
    cxGridDBTableView3TSV_NET: TcxGridDBColumn;
    cxGridDBTableView3STATUS: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Query1: TFDQuery;
    DataSource1: TDataSource;
    AdvPanel2: TAdvPanel;
    BitBtn2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fjobshow: TFjobshow;

implementation
uses USoftFirm,PayCrdT2, Dmfinc;
{$R *.DFM}

procedure TFjobshow.FormCreate(Sender: TObject);
begin
   with Fjobshow.Query1 do
   begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT JOBNO,STRNO,CUSCOD,RECVDATE,PARTNET,TSV_NET,STATUS FROM JOBORDER WHERE STRNO=:XSTRNO AND JOBNO<>:EDIT AND (STATUS=''W'' OR STATUS=''F'') ');
     Params[0].Asstring := Dm_Finc.QJoborder1.FieldByName('STRNO').Asstring;
     Params[1].Asstring := Dm_Finc.QJoborder1.FieldByName('JOBNO').Asstring;
     Open;
   end;
end;

procedure TFjobshow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Query1.Close;
  Action := Cafree;
end;

procedure TFjobshow.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
