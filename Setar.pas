unit Setar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, DB, Dbkbd,
  ComCtrls, Csv_txt, ImgList, ToolWin, RzButton, RzPanel, RzSpnEdt;

type
  TSetupar = class(TForm)
    ToolBar1: TToolBar;
    ExportBtn: TToolButton;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    CloseBtn: TToolButton;
    RzStatusBar1: TRzStatusBar;
    ToolButton1: TToolButton;
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    SaveDialog1: TSaveDialog;
    Bevel1: TBevel;
    Label18: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label20: TLabel;
    FbtGroup: TRzRapidFireButton;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit24: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    Label21: TLabel;
    UpdBtn1: TRzRapidFireButton;
    ProgressBar1: TProgressBar;
    DBEdit19: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit18: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    procedure DataSource1StateChange(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Keycuscod: string;
  end;

var
  Setupar: TSetupar;

implementation

uses
  DmSvSet, USoftFirm, Functn01, uSrcDlg;

{$R *.DFM}

procedure TSetupar.DataSource1StateChange(Sender: TObject);
var
  n: word;
begin

end;

procedure TSetupar.RzRapidFireButton1Click(Sender: TObject);
var
  P: Longint;
begin
  P := 0;
  ProgressBar1.Visible := True;
  UpdBtn1.Enabled := False;
  with Dm_SvSet.Query1 do
  begin
    ProgressBar1.Position := 5;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET AREA='''' WHERE AREA IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 10;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET NAME1='''' WHERE NAME1 IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 15;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET NAME2='''' WHERE NAME2 IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 25;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET ADDR1='''' WHERE ADDR1 IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 30;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET ADDR2='''' WHERE ADDR2 IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 35;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET TUMB='''' WHERE TUMB IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 40;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET AUMP='''' WHERE AUMP IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 45;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET PROV='''' WHERE PROV IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 50;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET CGROUP='''' WHERE CGROUP IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 55;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET HBCODE='''' WHERE HBCODE IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 60;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET SALECOD='''' WHERE SALECOD IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 65;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET GRADE='''' WHERE GRADE IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 70;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET PROSPECT=''3'' WHERE PROSPECT IS NULL');
    ExecSql;
    //
    ProgressBar1.Position := 100;
    Close;
    Sql.Clear;
    Sql.Add('UPDATE ARMAST SET MAIL=''Y'' WHERE MAIL IS NULL');
    ExecSql;
  end;
  ProgressBar1.Visible := False;
  UpdBtn1.Enabled := True;
end;

end.

