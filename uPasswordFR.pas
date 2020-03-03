unit uPasswordFR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, cxControls, cxContainer, cxEdit,
  frxClass, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.DB, cxTextEdit, AdvPanel;

type
  TPasswordFR = class(TForm)
    AdvPanel1: TAdvPanel;
    Image1: TImage;
    Label1: TLabel;
    cxButton2: TcxButton;
    Query1: TFDQuery;
    Password: TcxTextEdit;
    cxButton1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    year,month,day : word;
    nPlus : integer;
    nKeyUnlock : String;
  end;

var
  PasswordFR: TPasswordFR;

implementation

uses USoftFirm;

{$R *.dfm}

procedure TPasswordFR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
  if Password.Text <> nKeyUnlock then
  SFMain.Close;
end;

procedure TPasswordFR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
    key := #0;
  end;
end;   

procedure TPasswordFR.cxButton2Click(Sender: TObject);
begin
  if Password.Text <> nKeyUnlock then
  close;
  SFMain.Close;
end;

procedure TPasswordFR.cxButton1Click(Sender: TObject);
begin
  DecodeDate(date,year,month,day);

  nPlus := ((((year+month+day+6)*3)+4)-9) * 6349;
  nKeyUnlock := 'SCIM-'+IntToStr(nPlus);

  if Password.Text <> nKeyUnlock then
  sfmain.RaiseException('ติดต่อขอรหัสลงทะเบียนตามช่องทางดังนี้<br/>1.LINE id. : Ohh79<br/>'+
                         '2.Email : duemchok@hotmail.com<br/>'+
                         '<a href="https://www.facebook.com/Bunchee.SCIM">3.https://www.facebook.com/Bunchee.SCIM</a>')
  else
  begin
    with Query1 do
    begin
      close;
      sql.Add('INSERT INTO KDPON (MACADDRNO,ACTIVATECOD) '+
              'VALUES(:0,:1)');
      params[0].AsString := sfmain.GetMACAdress;
      params[1].AsString := trim(sfmain.GetHardDiskSerial('C'));
      execSql;
      self.Close;
    end;
  end;
end;

end.
