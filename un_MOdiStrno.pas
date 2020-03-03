unit un_ModiStrno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, StdCtrls, ActnList, DB, Mask, DBCtrls,
  Dbkbd, AdvGlowButton, cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  AdvToolBar, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxStatusBar, BusinessSkinForm, cxGroupBox, cxRadioGroup, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions, AdvPanel;

type
  TfrMoDiStrno = class(TForm)
    AdvPanel1: TAdvPanel;
    ActionList1: TActionList;
    acQuery: TAction;
    acSave: TAction;
    AcCan: TAction;
    acClose: TAction;
    wwdsMstSet: TDataSource;
    qrStock: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit4: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    DBEdit5: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    DBEdit6: TcxDBTextEdit;
    DBEdit7: TcxDBTextEdit;
    DBEdit8: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    DBEdit11: TcxDBTextEdit;
    DBEdit9: TcxDBTextEdit;
    dxStatusBar1: TdxStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    DBkbd1: TDBkbd;
    DBRadioGroup1: TcxDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwdsMstSetStateChange(Sender: TObject);
    procedure AcCanExecute(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SavBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frMoDiStrno: TfrMoDiStrno;

implementation

uses
  srchstk, DM1, Functn01, usoftfirm, Dmsec;

{$R *.dfm}

procedure TfrMoDiStrno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  frMoDiStrno := Nil;
end;

procedure TfrMoDiStrno.wwdsMstSetStateChange(Sender: TObject);
var
  N: word;
begin
  CloseBtn.Enabled := (wwdsMstSet.State = Dsbrowse);
  SavBtn.Visible := (wwdsMstSet.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;

  if wwdsMstSet.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
    end;
  end
  else
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := False;
        TcxDBTextEdit(Components[N]).Style.Color := clWhite;
      end;
    end;
  end;
  DBedit1.Properties.ReadOnly := True;
  DBedit2.Properties.ReadOnly := True;
  DBedit3.Properties.ReadOnly := True;
  DBedit4.Properties.ReadOnly := True;
  DBedit5.Properties.ReadOnly := True;
  DBedit1.Style.Color := $00EAF3F4;
  DBedit2.Style.Color := $00EAF3F4;
  DBedit3.Style.Color := $00EAF3F4;
  DBedit4.Style.Color := $00EAF3F4;
  DBedit5.Style.Color := $00EAF3F4
end;

procedure TfrMoDiStrno.AcCanExecute(Sender: TObject);
begin
  qrStock.Cancel;
end;

procedure TfrMoDiStrno.DBEdit8Exit(Sender: TObject);
begin
  qrStock.FieldByName('CRVAT').AsFloat := FRound(qrStock.FieldByName('TOTCOST').AsFloat *
    qrStock.FieldByName('VATRT').AsFloat /
    (100 + qrStock.FieldByName('VATRT').AsFloat), 2);
  qrStock.FieldByName('NETCOST').AsFloat := FRound(qrStock.FieldByName('TOTCOST').AsFloat -
    qrStock.FieldByName('CRVAT').AsFloat, 2);
end;

procedure TfrMoDiStrno.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrMoDiStrno.CancBtnClick(Sender: TObject);
begin
  qrStock.Cancel;
end;

procedure TfrMoDiStrno.SavBtnClick(Sender: TObject);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if qrStock.Active then
      if (qrStock.ApplyUpdates = 0) then
        qrStock.CommitUpdates
      else
        raise Exception.Create(qrStock.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.Rollback;
    qrStock.Edit;
    raise;
  end; {Try}
end;

procedure TfrMoDiStrno.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchstk, Searchstk);
   //Searchstk.XFlag := 'C';
  if Searchstk.ShowModalInvtrn = Mrok then
  begin
    qrStock.Close;
    qrStock.ParamByName('PSTRNO').AsString := Searchstk.Keyno;
    qrStock.Open;
  end;
end;

end.

