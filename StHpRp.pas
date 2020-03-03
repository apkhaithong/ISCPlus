unit STHpRp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, DB, ExtCtrls, RzDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmSTHpRp = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    QBkord: TFDQuery;
    DataSource1: TDataSource;
    QBkordPKNO: TStringField;
    QBkordCUSCOD: TStringField;
    QBkordPKNO_1: TStringField;
    QBkordPARTNO: TStringField;
    QBkordQTYBOD: TFloatField;
    QBkordBACKFLG: TStringField;
    QBkordYEAR1: TStringField;
    QBkordPKDATE: TDateField;
    QBkordCUSCOD_1: TStringField;
    QBkordSNAM: TStringField;
    QBkordNAME1: TStringField;
    QBkordNAME2: TStringField;
    DBGrid1: TRzDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSTHpRp: TFmSTHpRp;

implementation

{$R *.DFM}

procedure TFmSTHpRp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   Action:=Cafree;
end;

end.
