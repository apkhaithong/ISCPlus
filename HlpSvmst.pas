unit Hlpsvmst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  THelpSvmst = class(TForm)
    DBGrid_Sv: TDBGrid;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    QHlp: TFDQuery;
    SoHlp: TDataSource;
    RadioGp1: TRadioGroup;
    Label1: TLabel;
    Bevel1: TBevel;
    Panel3: TPanel;
    OkBtn: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SoHlpStateChange(Sender: TObject);
    procedure DBGrid_SvKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_SvDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HelpSvmst: THelpSvmst;

implementation

uses DmSv;

{$R *.DFM}

procedure THelpSvmst.BitBtn1Click(Sender: TObject);
begin
 WITH Qhlp DO
  begin
   Close;
   Sql.clear;
   If RadioGp1.ItemIndex = 0 Then
      Sql.Add('SELECT * FROM VIEW_SVMAST WHERE STRNO LIKE :EDIT1 ');
   If RadioGp1.ItemIndex = 1 Then
      Sql.Add('SELECT * FROM VIEW_SVMAST WHERE ENGNO LIKE :EDIT1 ');
   If RadioGp1.ItemIndex = 2 Then
      Sql.Add('SELECT * FROM VIEW_SVMAST WHERE REGNO LIKE :EDIT1 ');
   If RadioGp1.ItemIndex = 3 Then
      Sql.Add('SELECT * FROM VIEW_SVMAST WHERE NAME1 LIKE :EDIT1 ');
   If RadioGp1.ItemIndex = 4 Then
      Sql.Add('SELECT * FROM VIEW_SVMAST WHERE NAME2 LIKE :EDIT1 ');
   If RadioGp1.ItemIndex = 5 Then
      Sql.Add('SELECT * FROM VIEW_SVMAST WHERE VIPCARD LIKE :EDIT1 ');

   Params[0].Asstring := EDIT1.TEXT+'%' ;
   open;
  end;
end;

procedure THelpSvmst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure THelpSvmst.FormShow(Sender: TObject);
begin
  RadioGp1.itemindex := 0;
  SoHlpStateChange(Sender);
end;

procedure THelpSvmst.SoHlpStateChange(Sender: TObject);
begin
  OkBtn.Enabled := QHLp.Active;
end;

procedure THelpSvmst.DBGrid_SvKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure THelpSvmst.DBGrid_SvDblClick(Sender: TObject);
begin
        ModalResult := mrOK;
end;

end.
