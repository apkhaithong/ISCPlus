unit unConfigCalc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB,
  Dbkbd, ComCtrls, ToolWin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrConfigCalc = class(TForm)
    DataSource1: TDataSource;
    DBkbd1: TDBkbd;
    QCondcal: TFDQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    TabSheet3: TTabSheet;
    Label8: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Bevel5: TBevel;
    Label104: TLabel;
    Label105: TLabel;
    DBCheckBox1: TDBCheckBox;
    ToolBar1: TToolBar;
    SavBtn: TToolButton;
    CancBtn: TToolButton;
    ToolButton5: TToolButton;
    CloseBtn: TToolButton;
    procedure SaveBtnClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QCondcalNewRecord(DataSet: TDataSet);
    procedure QCondcalBeforePost(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frConfigCalc: TfrConfigCalc;

implementation

uses Dmsec,uSoftfirm;

{$R *.DFM}

procedure TfrConfigCalc.SaveBtnClick(Sender: TObject);
begin
  QCondCal.Post;
end;

Procedure TfrConfigCalc.DataSource1StateChange(Sender: TObject);
Var n:word;
begin
  SavBtn.Enabled  := (DataSource1.State in DsEditmodes);
  CancBtn.Enabled := SavBtn.Enabled;
  CloseBtn.Enabled:= Not SavBtn.Enabled;
  DBCheckBox1.Readonly := Not SavBtn.Enabled;


end;

procedure TfrConfigCalc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QCondcal.Close;
  Action :=caFree;
end;

procedure TfrConfigCalc.CancBtnClick(Sender: TObject);
begin
  QCondcal.Cancel;
end;

procedure TfrConfigCalc.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('','PO04');
  DBkbd1.AllowDelete := SFMain.Del_right;
  DBkbd1.AllowEditing:= SFMain.Edit_right;
  DBkbd1.AllowInsert := SFMain.Insert_right;

  PageControl1.Activepage :=Tabsheet1;
  QCondcal.Active; QCondcal.Open;
  If QCondcal.RecordCount=0 Then QCondcal.Insert;
end;

procedure TfrConfigCalc.QCondcalNewRecord(DataSet: TDataSet);
begin
  With QCondcal Do
  Begin
    Fieldbyname('UPDMM').Asstring := 'Y';
    Fieldbyname('FL').Asstring := 'A';
    Fieldbyname('LT').AsFloat  := 0.5;
    Fieldbyname('OC').AsFloat  := 0.5;
    Fieldbyname('SS').AsFloat  := 0.5;
    Fieldbyname('TF').AsFloat  := 1;
    Fieldbyname('MAX1').AsFloat := 6;
    Fieldbyname('CLA').AsFloat := 80;
    Fieldbyname('CLB').AsFloat := 80;
    Fieldbyname('CLC').AsFloat := 60;
    Fieldbyname('CLD').AsFloat := 40;
    Fieldbyname('CLE').AsFloat := 20;
    Fieldbyname('CLF').AsFloat := 10;
  End;
end;


procedure TfrConfigCalc.QCondcalBeforePost(DataSet: TDataSet);
begin
  If (QCondcal.Fieldbyname('Max1').Asfloat<3)or(QCondcal.Fieldbyname('Max1').Asfloat>6) Then
      MessageDlg('ค่าเฉลี่ยย้อยหลังควรอยู่ระหว่าง 2-6 เดือน',mtWarning,[mbok],0);
end;

procedure TfrConfigCalc.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

end.
