unit Quiropt1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Grids, ExtCtrls, DB, DBGrids, RzSpnEdt,
  AdvGlowButton, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, cxLookAndFeels,
  cxLookAndFeelPainters, AdvPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxNavigator, dxDateRanges;

type
  TQuiryOptForm1 = class(TForm)
    QOptmst: TFDQuery;
    DataSource1: TDataSource;
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit_From: TcxButtonEdit;
    Edit_To: TcxButtonEdit;
    Edit_Locat: TcxButtonEdit;
    ActivateBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1LOCAT: TcxGridDBColumn;
    cxGrid1DBTableView1OPTCODE: TcxGridDBColumn;
    cxGrid1DBTableView1OPTNAME: TcxGridDBColumn;
    cxGrid1DBTableView1ONHAND: TcxGridDBColumn;
    cxGrid1DBTableView1UNITCST: TcxGridDBColumn;
    cxGrid1DBTableView1UNITPRC: TcxGridDBColumn;
    cxGrid1DBTableView1TOT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActivateBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit_FromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit_ToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit_LocatPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuiryOptForm1: TQuiryOptForm1;

implementation
uses Dm1,Srchset1,srchstk, USoftFirm;
{$R *.DFM}

procedure TQuiryOptForm1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  QuiryOptForm1 := nil;
end;

procedure TQuiryOptForm1.ActivateBtnClick(Sender: TObject);
Var i:Double;
begin
    with QOptmst do
    try
      Close;
      SQL.Clear;
      SQL.ADD('SELECT LOCAT,OPTCODE,OPTNAME,ONHAND,UNITCST,UNITPRC, '+
              'ONHAND*UNITPRC AS TOT FROM OPTMAST '+
              'WHERE (OPTCODE BETWEEN :FROM AND :TO) AND (LOCAT LIKE:XLOCAT) '+
              'ORDER BY LOCAT,OPTCODE ');

      If Edit_From.Text <> '' Then
         Params[0].AsString  := Edit_From.Text
      Else
         Params[0].AsString  := '';
      If Edit_to.Text<>'' Then
         Params[1].AsString  := Edit_To.Text+'%'
      Else
         Params[1].AsString  := 'ZZZZZZZZZZZZZZZZZZ';
      If Edit_Locat.Text<>'' Then
         Params[2].AsString  := Edit_Locat.Text+'%'
      Else
         Params[2].AsString  := '%';
      Open;

      if QOptmst.BOF and QOptmst.EOF then Abort;
    except
      ActivateBtn.Down := false;
    end;
end;

procedure TQuiryOptForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
    Begin
     Perform(Wm_nextDlgctl,0,0);
     Key := #0;
    End;
end;


procedure TQuiryOptForm1.FormShow(Sender: TObject);
begin
  edit_Locat.Text := SFMain.XLocat;
  edit_Locat.Enabled := SFMain.XChgloc='Y';
end;

procedure TQuiryOptForm1.Edit_FromPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TSearchstk,Searchstk);
  Searchstk.Xlocat := Edit_locat.Text;
  If Searchstk.ShowModalOptmas = Mrok Then
    Edit_From.Text := Searchstk.Keyno;
end;

procedure TQuiryOptForm1.Edit_ToPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TSearchstk,Searchstk);
  Searchstk.Xlocat := Edit_locat.Text;
  If Searchstk.ShowModalOptmas = Mrok Then
    Edit_to.Text := Searchstk.Keyno;
end;

procedure TQuiryOptForm1.Edit_LocatPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TSearchset,Searchset);
  If Searchset.ShowModalSetlocat = Mrok Then
   Edit_Locat.Text   := Searchset.Keyno;
end;

procedure TQuiryOptForm1.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TQuiryOptForm1.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK01_6');
end;

end.
