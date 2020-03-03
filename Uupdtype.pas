unit Uupdtype;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, RzEdit, StdCtrls, RzLabel, NxEdit, RzButton, RzPrgres, DB, ExtCtrls, RzPanel, Buttons, RzSpnEdt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFupdtype = class(TForm)
    RzPanel1: TRzPanel;
    Label1: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    ProgressBar1: TRzProgressBar;
    RzLabel3: TRzLabel;
    Edit2: TRzEdit;
    Query1: TFDQuery;
    RzRapidFireButton2: TRzRapidFireButton;
    Process: TRzRapidFireButton;
    Edit1: TEdit;
    FbtChgType: TRzRapidFireButton;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure ProcessClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FbtChgTypeClick(Sender: TObject);
    procedure RzRapidFireButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fupdtype: TFupdtype;

implementation
uses UsoftFirm,uSrcDlg;
{$R *.dfm}

procedure TFupdtype.Edit1Change(Sender: TObject);
begin
        Process.Enabled := Edit1.Text<>'';       
end;

procedure TFupdtype.Edit1ButtonClick(Sender: TObject);
begin
        Application.CreateForm(TFSrcDlg,fSrcDlg);
        if fSrcDlg.ShowModalType=MrOk Then
        Begin
        Edit1.Text := fSrcDlg.Keyno;
        Label1.Caption := fSrcDlg.qrFindDat.fieldByName('TYPENAM').AsString;
        End;
        Edit2.SetFocus;
        

end;

procedure TFupdtype.ProcessClick(Sender: TObject);
begin
        ProgressBar1.Percent := 5;
        With Query1 Do
        Begin
        Close;
        sql.Clear;
        sql.Add('UPDATE TYPEMST SET TYPECOD=:EDIT2 WHERE TYPECOD=:Edit1');
        Params[0].AsString := Edit2.Text;
        Params[1].AsString := Edit1.Text;
        ExecSql;
        End;

        ProgressBar1.Percent := 15;
        With Query1 Do
        Begin
        Close;
        sql.Clear;
        sql.Add('UPDATE FIFOBAL SET TYPE=:EDIT2 WHERE TYPE=:Edit1');
        Params[0].AsString := Edit2.Text;
        Params[1].AsString := Edit1.Text;
        ExecSql;
        End;

        ProgressBar1.Percent := 30;
        With Query1 Do
        Begin
        Close;
        sql.Clear;
        sql.Add('UPDATE INVENTOR SET TYPE=:EDIT2 WHERE TYPE=:Edit1');
        Params[0].AsString := Edit2.Text;
        Params[1].AsString := Edit1.Text;
        ExecSql;
        End;

        ProgressBar1.Percent := 45;
        With Query1 Do
        Begin
        Close;
        sql.Clear;
        sql.Add('UPDATE INVMAST SET TYPE=:EDIT2 WHERE TYPE=:Edit1');
        Params[0].AsString := Edit2.Text;
        Params[1].AsString := Edit1.Text;
        ExecSql;
        End;

        ProgressBar1.Percent := 60;
        With Query1 Do
        Begin
        Close;
        sql.Clear;
        sql.Add('UPDATE PCATALOG SET TYPE=:EDIT2 WHERE TYPE=:Edit1');
        Params[0].AsString := Edit2.Text;
        Params[1].AsString := Edit1.Text;
        ExecSql;
        End;

        ProgressBar1.Percent := 75;
        With Query1 Do
        Begin
        Close;
        sql.Clear;
        sql.Add('UPDATE SVMAST SET TYPE=:EDIT2 WHERE TYPE=:Edit1');
        Params[0].AsString := Edit2.Text;
        Params[1].AsString := Edit1.Text;
        ExecSql;
        End;

        ProgressBar1.Percent := 90;
        With Query1 Do
        Begin
        Close;
        sql.Clear;
        sql.Add('UPDATE SVWARMST SET TYPE=:EDIT2 WHERE TYPE=:Edit1');
        Params[0].AsString := Edit2.Text;
        Params[1].AsString := Edit1.Text;
        ExecSql;
        End;

        ProgressBar1.Percent := 100;
        Edit1.Text:='';
        Edit2.Text:='';
        RzLabel3.Visible := True;
        Label1.Caption := ''; 
        
end;

procedure TFupdtype.FormShow(Sender: TObject);
begin
        RzLabel3.Visible := False;
end;

procedure TFupdtype.Edit3Change(Sender: TObject);
begin
        Process.Enabled := Edit1.Text<>''; 
end;

procedure TFupdtype.FbtChgTypeClick(Sender: TObject);
begin
        Application.CreateForm(TFSrcDlg,fSrcDlg);
        if fSrcDlg.ShowModalType=MrOk Then
        Begin
        Edit1.Text := fSrcDlg.Keyno;
        Label1.Caption := fSrcDlg.qrFindDat.fieldByName('TYPENAM').AsString;
        End;
        Edit2.SetFocus;
end;

procedure TFupdtype.RzRapidFireButton2Click(Sender: TObject);
begin
   Close;
end;

end.
