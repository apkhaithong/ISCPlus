unit Imppr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ExtCtrls, ComCtrls, RzDBGrid,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxCheckBox,
  Menus, cxLookAndFeelPainters, cxButtons, cxTextEdit, cxDBEdit, cxContainer,
  cxLookAndFeels, cxNavigator, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxDateRanges, BusinessSkinForm, AdvPanel;

type
  TFImpPr = class(TForm)
    AdvPanel1: TAdvPanel;
    Panel1: TPanel;
    Label26: TLabel;
    CheckBox1: TcxCheckBox;
    DBEdit1: TcxDBTextEdit;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    cxGrid1: TcxGrid;
    cxDBGridTran: TcxGridDBTableView;
    cxDBGridTranPARTNO: TcxGridDBColumn;
    cxDBGridTranORDQTY: TcxGridDBColumn;
    cxDBGridTranRECQTY: TcxGridDBColumn;
    cxDBGridTranBALANCE: TcxGridDBColumn;
    cxDBGridTranFLAG: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    StatusBar1: TStatusBar;
    QPotran: TFDQuery;
    QPotranPRNO: TStringField;
    QPotranPARTNO: TStringField;
    QPotranPRLOCAT: TStringField;
    QPotranPRDATE: TDateField;
    QPotranAPCODE: TStringField;
    QPotranORDQTY: TFloatField;
    QPotranRECQTY: TFloatField;
    QPotranORDCOST: TFloatField;
    QPotranREDU: TFloatField;
    QPotranNETCOST: TFloatField;
    QPotranTOTCOST: TFloatField;
    QPotranBALANCE: TFloatField;
    QPotranFLAG: TStringField;
    QPotranPRBYNAME: TStringField;
    DataSource1: TDataSource;
    Table1: TFDTable;
    DataSource2: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure QPotranAfterOpen(DataSet: TDataSet);
    procedure QPotranAfterClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure QPotranBeforePost(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XPono :String;
  end;

var
  FImpPr: TFImpPr;

implementation

uses Dmic01;

{$R *.DFM}

procedure TFImpPr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFImpPr.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) then
   If not (ActiveControl is TDbGrid ) Then
   Begin
      Perform(Wm_nextDlgctl,0,0);
      Key := #0;
   End
   Else If (ActiveControl is TDbGrid ) Then
   With TDBGrid(ActiveControl) Do
      If Selectedindex < (FieldCount-1) Then
         Selectedindex := Selectedindex+1
      else
      begin
         Selectedindex := 3;
         QPotran.Next;
      end;
end;

procedure TFImpPr.QPotranAfterOpen(DataSet: TDataSet);
begin
  Table1.Open;
end;

procedure TFImpPr.QPotranAfterClose(DataSet: TDataSet);
begin
  Table1.Close;
end;

procedure TFImpPr.FormShow(Sender: TObject);
begin
  With QPotran Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PR_TRANS WHERE BALANCE>0 AND PRNO =:XPono');
    Params[0].Asstring := XPono;
    Open;
    If QPotran.Bof and QPotran.Eof Then
    Raise Exception.Create('ไม่มีรายการสินค้าตามใบ Pr นี้');
  End;

  QPotran.First;
  While Not Qpotran.Eof Do
  begin
    If (QPotranBalance.Asfloat<>0) and (QPotranFlag.Asstring<>'Y') Then
    Begin
      QPotran.Edit;
      //QPotranRECQTY.Asfloat :=QPotranBalance.Asfloat;
      Qpotran.Fieldbyname('Balance').AsFloat:=QPotranORDQTY.AsFloat-QPotranRECQTY.AsFloat;
    end;
    QPotran.Next;
  end;
end;

procedure TFImpPr.QPotranBeforePost(DataSet: TDataSet);
begin

  If (QPotranRECQTY.Asfloat+QPotranBALANCE.Asfloat)>
     QPotranORDQTY.Asfloat Then
  Raise Exception.Create('จำนวนรับมากกว่าจำนวนสั่ง');
end;

procedure TFImpPr.CheckBox1Click(Sender: TObject);
begin
    if QPotran.Active then
    Begin
        QPotran.First;
        While Not QPotran.Eof Do
        Begin
            QPotran.Edit;
            if CheckBox1.Checked Then
               QPotranFLAG.AsString := 'Y'
            Else QPotranFLAG.AsString := '';   
            QPotran.Next;
        End;
    End;    
end;

end.
