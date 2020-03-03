unit Editshlf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, Mask, DBCtrls, ImgList,
  ComCtrls, ToolWin, RzDBGrid, RzSpnEdt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxContainer,
  cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel,
  BusinessSkinForm, cxPCdxBarPopupMenu, cxPC, Menus, cxButtons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxBarBuiltInMenu,
  dxDateRanges;

type
  TFmEditbrw = class(TForm)
    QHlpbinv: TFDQuery;
    DataSource1: TDataSource;
    Query1: TFDQuery;
    QHlpbinvPARTNO: TStringField;
    QHlpbinvLOCAT: TStringField;
    QHlpbinvDESC1: TStringField;
    QHlpbinvGROUP1: TStringField;
    QHlpbinvSHELF: TStringField;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    SaveBtn: TAdvGlowButton;
    BtnClose: TAdvGlowButton;
    Edit1: TcxButtonEdit;
    Label5: TLabel;
    Edit3: TcxTextEdit;
    Edit2: TcxButtonEdit;
    Label1: TLabel;
    EditBtn: TAdvGlowButton;
    Bevel1: TBevel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    QHlpbinvPRICE1: TFloatField;
    Q_Warehouse: TFDQuery;
    Q_WarehousePARTNO: TStringField;
    Q_WarehouseWAREHOUSECOD: TStringField;
    Q_WarehouseONHN_1: TFloatField;
    Q_WarehouseRESERV: TFloatField;
    DataSource2: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView1PARTNO: TcxGridDBColumn;
    cxGridDBTableView1WAREHOUSECOD: TcxGridDBColumn;
    cxGridDBTableView1ONHN_1: TcxGridDBColumn;
    cxGridDBTableView1RESERV: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridTran: TcxGridDBTableView;
    cxGridTranLOCAT: TcxGridDBColumn;
    cxGridTranPARTNO: TcxGridDBColumn;
    cxGridTranDESC1: TcxGridDBColumn;
    cxGridTranGROUP1: TcxGridDBColumn;
    cxGridTranSHELF: TcxGridDBColumn;
    cxGridTranPRICE1: TcxGridDBColumn;
    cxGridLevelI: TcxGridLevel;
    QHlpbinvCOST: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CloseBtnClick(Sender: TObject);
    procedure DBGrid_InvKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure EditBtnClick(Sender: TObject);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure cxGridTranSHELFPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DataSource2StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEditbrw: TFmEditbrw;

implementation

uses Dmic01,Srchdlg, DmSet1, USoftFirm, Dmsec,uFindData,uSrcDLG,usrcdlg1;

{$R *.DFM}

procedure TFmEditbrw.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QHlpbinv.Close;
  Query1.Close;
  FmEditbrw := nil;
  Action :=caFree;
end;

procedure TFmEditbrw.FormShow(Sender: TObject);
begin
  Edit1.Text := sfMain.Xlocat;
  with Query1 do
  begin
   Close;
   Sql.Clear;
   Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:XCODE');
   PARAMS[0].ASSTRING :=EDIT1.TEXT;
   Open ;
  end;
  Edit3.Text := QUERY1.Fieldbyname('Locatnm').Asstring;
end;

procedure TFmEditbrw.DataSource1StateChange(Sender: TObject);
begin
  If DataSource1.DataSet.State = DsEdit Then
     SaveBtn.Enabled:=true ;
     
  If DataSource1.DataSet.State = DsInsert Then
  DataSource1.DataSet.cancel;
end;

procedure TFmEditbrw.SaveBtnClick(Sender: TObject);
begin
  if cxPageControl1.ActivePage = cxTabSheet1 then
    begin
      If QHlpbinv.State=Dsedit Then QHlpbinv.Post;
      Try
        Dm_sec.HI_DBMS.ApplyUpdates([QHlpbinv]);
        SaveBtn.Enabled := False;
      Except
        Raise;
      end;
    end
  else
    begin
      If Q_Warehouse.State=Dsedit Then Q_Warehouse.Post;
      Try
        Dm_sec.HI_DBMS.ApplyUpdates([Q_Warehouse]);
        SaveBtn.Enabled := False;
      Except
        Raise;
      end;
    end;
end;

procedure TFmEditbrw.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End;

end;

procedure TFmEditbrw.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFmEditbrw.DBGrid_InvKeyPress(Sender: TObject; var Key: Char);
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
         Selectedindex := 2;
         If QHlpbinv.State = DsEdit Then
            QHlpbinv.Next;
      end;
end;

procedure TFmEditbrw.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TFSrcDlg,FSrcDlg);
  If FSrcDlg.ShowModalLocat=Mrok Then
  begin
    Edit1.Text := fSrcDlg.Keyno;
  end;
end;

procedure TFmEditbrw.EditBtnClick(Sender: TObject);
begin
  if cxPageControl1.ActivePage = cxTabSheet1 then
    begin
      If Edit1.Text ='' Then SFMain.RaiseException('ยังไม่บันทึกรหัสสาขา');
      WITH Qhlpbinv DO
        begin
          close;
          sql.clear;
          Sql.Add('SELECT  PARTNO,LOCAT,DESC1,GROUP1,SHELF,PRICE1,COST FROM INVENTOR  '+
                  'WHERE  LOCAT=:Edit1 AND PARTNO LIKE :EDIT2 ');
          Params[0].asstring := EDIT1.TEXT ;
          Params[1].asstring := EDIT2.TEXT+'%' ;
          open;
        end;
    end
  else
    begin
      With Q_Warehouse do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM ANLSWAREHOUSE WHERE PARTNO LIKE:0 ');
          Params[0].AsString := Edit2.Text+'%';
          Open;
        end;
    end;
end;

procedure TFmEditbrw.Edit1PropertiesChange(Sender: TObject);
begin
  with Dm_Set1.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD =:EDIT1 ');
    Params[0].Asstring := Edit1.Text;
    Open;
    Edit3.Text := dm_set1.Query1.fieldbyname('LOCATNM').AsString;
  end;
end;

procedure TFmEditbrw.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFmEditbrw.cxGridTranSHELFPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalTypeClaim=Mrok Then
  begin
    QHlpbinvSHELF.AsString := fSrcDlg1.KeyNo;
  end;
end;

procedure TFmEditbrw.Edit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalInvmast=Mrok Then
  begin
    Edit2.Text := fSrcDlg.KeyNo;
  end;
end;

procedure TFmEditbrw.DataSource2StateChange(Sender: TObject);
begin
  If DataSource2.DataSet.State = DsEdit Then
     SaveBtn.Enabled:=true ;

  If DataSource2.DataSet.State = DsInsert Then
  DataSource2.DataSet.cancel;
end;

end.
