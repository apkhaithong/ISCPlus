unit ImpPo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, ExtCtrls, ComCtrls, RzDBGrid,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxCheckBox,
  Menus, cxLookAndFeelPainters, cxButtons, cxTextEdit, cxDBEdit, cxContainer,
  cxLookAndFeels, cxNavigator, cxDropDownEdit, cxMaskEdit, cxButtonEdit,
  cxGroupBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxDateRanges, BusinessSkinForm, AdvPanel;

type
  TFImpPo = class(TForm)
    AdvPanel1: TAdvPanel;
    cxGrid1: TcxGrid;
    cxDBGridTran: TcxGridDBTableView;
    cxDBGridTranPARTNO: TcxGridDBColumn;
    cxDBGridTranORDQTY: TcxGridDBColumn;
    cxDBGridTranRECQTY: TcxGridDBColumn;
    cxDBGridTranBALANCE: TcxGridDBColumn;
    cxDBGridTranFLAG: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    QPotran: TFDQuery;
    QPotranPONO: TStringField;
    QPotranPARTNO: TStringField;
    QPotranPOLOCAT: TStringField;
    QPotranPODATE: TDateField;
    QPotranAPCODE: TStringField;
    QPotranORDQTY: TFloatField;
    QPotranRECQTY: TFloatField;
    QPotranORDCOST: TFloatField;
    QPotranREDU: TFloatField;
    QPotranNETCOST: TFloatField;
    QPotranTOTCOST: TFloatField;
    QPotranBALANCE: TFloatField;
    QPotranFLAG: TStringField;
    QPotranPOBYNAME: TStringField;
    DataSource1: TDataSource;
    Table1: TFDTable;
    DataSource2: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cxGroupBox2: TcxGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxTextEdit6: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxDBGridTranPARTDESC: TcxGridDBColumn;
    QPotranPARTDESC: TStringField;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    CheckBox1: TcxCheckBox;
    StatusBar1: TStatusBar;
    Query3: TFDQuery;
    QPotranLOTNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure QPotranAfterOpen(DataSet: TDataSet);
    procedure QPotranAfterClose(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure QPotranBeforePost(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesChange(Sender: TObject);
    procedure cxDBGridTranCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxTextEdit6FocusChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XPono,nLocat :String;
  end;

var
  FImpPo: TFImpPo;

implementation

uses Dmic01, USoftFirm;

{$R *.DFM}

procedure TFImpPo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;  

procedure TFImpPo.DBGrid1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFImpPo.QPotranAfterOpen(DataSet: TDataSet);
begin
  Table1.Open;
end;

procedure TFImpPo.QPotranAfterClose(DataSet: TDataSet);
begin
  Table1.Close;
end;

procedure TFImpPo.FormShow(Sender: TObject);
begin
  cxButtonEdit1.SetFocus;
  With QPotran Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PO_TRANS WHERE BALANCE>0 AND PONO =:XPono');
    Params[0].Asstring := XPono;
    Open;
    If QPotran.Bof and QPotran.Eof Then
    sfmain.RaiseException('ไม่มีรายการสินค้าตามใบ Po นี้');
  End;

  {QPotran.First;
  While Not Qpotran.Eof Do
  begin
    If (QPotranBalance.Asfloat<>0) and (QPotranFlag.Asstring<>'Y') Then
    Begin
      QPotran.Edit;
      //QPotranRECQTY.Asfloat :=QPotranBalance.Asfloat;
      Qpotran.Fieldbyname('Balance').AsFloat:=QPotranORDQTY.AsFloat-QPotranRECQTY.AsFloat;
    end;
    QPotran.Next;
  end;}
end;

procedure TFImpPo.QPotranBeforePost(DataSet: TDataSet);
begin
  {QPotran.First;
  While Not Qpotran.Eof Do
  begin
    If (QPotranRECQTY.Asfloat+QPotranBALANCE.Asfloat)> QPotranORDQTY.Asfloat Then
    sfmain.RaiseException('จำนวนรับมากกว่าจำนวนสั่ง');
    QPotran.Next;
  end;}
end;

procedure TFImpPo.CheckBox1Click(Sender: TObject);
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

procedure TFImpPo.cxButtonEdit1PropertiesChange(Sender: TObject);
begin
  With Query3 Do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT *  FROM INVENTOR WHERE (BARCODE =upper(:XBARCODE) OR PARTNO =upper(:XPARTNO)) AND LOCAT=:XLOC' );
    PARAMS[0].ASSTRING := trim(cxButtonEdit1.Text);
    PARAMS[1].ASSTRING := trim(cxButtonEdit1.Text);
    PARAMS[2].ASSTRING := nLocat;
    Open;
  end;

  QPotran.First;
  while not QPotran.Eof do
  begin
    QPotran.Edit;
    Query3.First;
    while not Query3.Eof do
    begin
      if (QPotranPARTNO.AsString = Query3.FieldByName('PARTNO').AsString) and
         (StrToInt(cxComboBox1.Text) <= QPotranORDQTY.AsFloat) then
      QPotranFLAG.AsString := 'Y';
      Query3.Next;
    end;
  QPotran.Next;
  end;

  cxComboBox1.Text      := '1';
  cxButtonEdit1.Text    := '';
  cxButtonEdit1.SetFocus;
end;

procedure TFImpPo.cxDBGridTranCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[5] = 'Y' then
  begin
    ACanvas.Brush.Color := $008080FF;
    //ACanvas.Font.Color  := clWhite;
  end;
end;

procedure TFImpPo.cxTextEdit6FocusChanged(Sender: TObject);
begin
  cxButtonEdit1.SetFocus;
end;

end.
