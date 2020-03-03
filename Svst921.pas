unit Svst921;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Qrctrls, QuickRpt, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSvSt_921 = class(TForm)
    Tarmast: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SvSt_921: TSvSt_921;

implementation

{$R *.DFM}

end.
