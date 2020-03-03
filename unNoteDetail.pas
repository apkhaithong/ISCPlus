unit unNoteDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DB,
  Dbkbd,ImgList, ComCtrls, ToolWin, ActnList, FR_Class,
  ToolEdit, RXDBCtrl, RzDbkbd, RzLabel;

type
  TfrNoteDetail = class(TForm)
    ToolBar1: TToolBar;
    CloseBtn: TToolButton;
    Label2: TLabel;
    ToolButton1: TToolButton;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    dbFDate: TDBDateEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBkbd1: TRzDBkbd;
    ToolButton2: TToolButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Bevel2: TBevel;
    Label14: TLabel;
    RzLabel2: TRzLabel;
    RzLabel1: TRzLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frNoteDetail: TfrNoteDetail;

implementation
uses unCalFirstSv; 

{$R *.DFM}

procedure TfrNoteDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action :=caFree;
end;

procedure TfrNoteDetail.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrNoteDetail.FormShow(Sender: TObject);
begin
   RzLabel2.Caption := frCalFirstSv.qFirstSvTrRUNNO.AsString;
   RzLabel1.Caption := frCalFirstSv.qFirstSvTrCUSNAME.AsString;
end;

end.
