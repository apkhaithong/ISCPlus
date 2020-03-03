unit DlgAuto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DB, StdCtrls, Buttons, DBGrids, ExtCtrls, RzDBGrid, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  cxCheckBox, Vcl.Menus, cxContainer, BusinessSkinForm, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, AdvPanel;

type
  TFDlgAuto = class(TForm)
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    QHlppart: TFDQuery;
    SoHlppart: TDataSource;
    cxGrid1: TcxGrid;
    cxDBGridTran: TcxGridDBTableView;
    cxDBGridTranPARTNO: TcxGridDBColumn;
    cxDBGridTranQTY: TcxGridDBColumn;
    cxDBGridTranMARK: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxDBGridTranDESC1: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    CheckBox1: TcxCheckBox;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XGroup1 :String;
  end;

var
  FDlgAuto: TFDlgAuto;

implementation

uses Dmic01;

{$R *.DFM}

procedure TFDlgAuto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFDlgAuto.CheckBox1Click(Sender: TObject);
begin
    if QHlppart.Active then
    Begin
        QHlppart.First;
        While Not QHlppart.Eof Do
        Begin
            QHlppart.Edit;
            if CheckBox1.Checked Then
               QHlppart.FieldByName('MARK').AsString := 'Y'
            Else QHlppart.FieldByName('MARK').AsString := '';
            QHlppart.Next;
        End;
    End;
end;

procedure TFDlgAuto.FormShow(Sender: TObject);
begin
  With QHlppart Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM GRPPART WHERE GCODE =:XGROUP1 ');
    Params[0].Asstring := XGroup1;
    Open;
  End;
end;

end.
