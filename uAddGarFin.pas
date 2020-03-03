unit uAddGarFin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, StdCtrls, Buttons, Mask,
  DBCtrls, DB, Dbkbd, RzDBGrid, RzStatus, RzDbkbd, AdvGlowButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxButtonEdit, cxImageComboBox,
  cxContainer, cxTextEdit, cxDBEdit, AdvToolBar, AdvPanel, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator, dxDateRanges, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm;

type
  TfrAddGarFin = class(TForm)
    AdvPanel1: TAdvPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TcxDBTextEdit;
    DBEdit2: TcxDBTextEdit;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1GARNO: TcxGridDBColumn;
    cxGrid1DBTableView1CUSCOD: TcxGridDBColumn;
    cxGrid1DBTableView1RELATN: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    SoHirsal: TDataSource;
    QArmgar: TFDQuery;
    QArmgarTSALE: TStringField;
    QArmgarCONTNO: TStringField;
    QArmgarLOCAT: TStringField;
    QArmgarGARNO: TFloatField;
    QArmgarCUSCOD: TStringField;
    QArmgarADDRNO: TStringField;
    QArmgarRELATN: TStringField;
    SoHirOpt: TDataSource;
    Query1: TFDQuery;
    DBkbd1: TRzDBkbd;
    QFinSale: TFDQuery;
    QFinSaleCONTNO: TStringField;
    QFinSaleLOCAT: TStringField;
    QFinSaleRESVNO: TStringField;
    QFinSaleCUSCOD: TStringField;
    QFinSaleSTRNO: TStringField;
    QFinSaleINCLVAT: TStringField;
    QFinSaleVATRT: TFloatField;
    QFinSaleSTDPRC: TFloatField;
    QFinSaleDSCPRC: TFloatField;
    QFinSaleSDATE: TDateField;
    QFinSaleNPRICE: TFloatField;
    QFinSaleVATPRC: TFloatField;
    QFinSaleTOTPRC: TFloatField;
    QFinSaleNPAYRES: TFloatField;
    QFinSaleVATPRES: TFloatField;
    QFinSaleNDAWN: TFloatField;
    QFinSaleKEYINDWN: TFloatField;
    QFinSaleVATDWN: TFloatField;
    QFinSaleNKANG: TFloatField;
    QFinSaleVKANG: TFloatField;
    QFinSaleNFINAN: TFloatField;
    QFinSaleVATFIN: TFloatField;
    QFinSalePAYDWN: TFloatField;
    QFinSalePAYFIN: TFloatField;
    QFinSaleSMPAY: TFloatField;
    QFinSaleSMCHQ: TFloatField;
    QFinSaleTAXNO: TStringField;
    QFinSaleTAXDT: TDateField;
    QFinSaleTAXCRD: TStringField;
    QFinSaleNCARCST: TFloatField;
    QFinSaleVCARCST: TFloatField;
    QFinSaleOPTCST: TFloatField;
    QFinSaleOPTCVT: TFloatField;
    QFinSaleOPTCTOT: TFloatField;
    QFinSaleOPTPRC: TFloatField;
    QFinSaleOPTPVT: TFloatField;
    QFinSaleOPTPTOT: TFloatField;
    QFinSaleFINCOM: TFloatField;
    QFinSaleFINCOD: TStringField;
    QFinSaleSALCOD: TStringField;
    QFinSaleCOMITN: TFloatField;
    QFinSaleLPAYD: TDateField;
    QFinSaleLPAYA: TFloatField;
    QFinSaleISSUNO: TStringField;
    QFinSaleISSUDT: TDateField;
    QFinSaleTSALE: TStringField;
    QFinSaleMEMO1: TMemoField;
    QFinSaleUSERID: TStringField;
    QFinSaleINPDT: TDateTimeField;
    QFinSaleDELID: TStringField;
    QFinSaleDELDT: TDateTimeField;
    QFinSalePOSTDT: TDateTimeField;
    QFinSaleUpdateStatus: TStringField;
    QFinSaleTOTPRES: TFloatField;
    QFinSaleTOTDWN: TFloatField;
    QFinSaleTKANG: TFloatField;
    QFinSaleTOTFIN: TFloatField;
    QFinSaleTCARCST: TFloatField;
    QFinSaleCONFIR: TStringField;
    QFinSaleCONFIRID: TStringField;
    QFinSaleCONFIRDT: TDateField;
    QFinSaleNKEYIN: TFloatField;
    QFinSaleVKEYIN: TFloatField;
    QFinSaleTKEYIN: TFloatField;
    QFinSaleCRDTXNO: TStringField;
    QFinSaleCRDAMT: TFloatField;
    QFinSaleKEYIN: TFloatField;
    QFinSaleFLCANCL: TStringField;
    QFinSaleAPPVNO: TStringField;
    QFinSaleADDRNO: TStringField;
    QFinSaleCOMEXT: TFloatField;
    QFinSaleCOMOPT: TFloatField;
    QFinSaleCOMOTH: TFloatField;
    QFinSaleRECOMCOD: TStringField;
    QFinSaleACTICOD: TStringField;
    AdvPanel2: TAdvPanel;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    EnqBtn: TAdvGlowButton;
    SavBtn: TAdvGlowButton;
    CancBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure CloseBtnClick(Sender: TObject);
    procedure EnqBtnClick(Sender: TObject);
    procedure QArmgarNewRecord(DataSet: TDataSet);
    procedure SavBtnClick(Sender: TObject);
    procedure CancBtnClick(Sender: TObject);
    procedure SoHirsalStateChange(Sender: TObject);
    procedure QFinSaleAfterPost(DataSet: TDataSet);
    procedure QArmgarCUSCODChange(Sender: TField);
    procedure cxGrid1DBTableView1CUSCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frAddGarFin: TfrAddGarFin;

implementation

uses
  USoftFirm, Dmsec, Dm1, Functn01, Srchsal1, Srchset1;

{$R *.dfm}

procedure TfrAddGarFin.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TfrAddGarFin.EnqBtnClick(Sender: TObject);
begin
  Application.Createform(TSearchSale, SearchSale);
  if SearchSale.ShowModalArFinc = Mrok then
  begin
    with QFinSale do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARFINC WHERE CONTNO=:V0 AND LOCAT=:V1');
      Params[0].Asstring := SearchSale.KeyNo;
      Params[1].Asstring := SearchSale.HQuery1.Fieldbyname('LoCat').Asstring;
      Open;
    end;
    with QArmgar do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM ARMGAR WHERE CONTNO=:V0 AND LOCAT=:V1');
      params[0].AsString := QFinSale.fieldbyname('CONTNO').AsString;
      params[1].AsString := QFinSale.fieldbyname('LOCAT').AsString;
      open;
    end;
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT SNAM,NAME1,NAME2 FROM CUSTMAST WHERE CUSCOD=:XCUS');
      params[0].AsString := QFinSale.fieldbyname('CUSCOD').AsString;
      open;
      Edit1.Text := Fieldbyname('SNAM').asstring + Fieldbyname('NAME1').asstring + ' ' + Fieldbyname('NAME2').asstring;
    end;
    with Query1 do
    begin
      close;
      sql.Clear;
      sql.Add('SELECT LOCATCD,LOCATNM FROM INVLOCAT WHERE LOCATCD=:XLOC');
      params[0].AsString := QFinSale.fieldbyname('LOCAT').AsString;
      open;
      Edit2.Text := Fieldbyname('LOCATNM').asstring;
    end;
  end;
end;

procedure TfrAddGarFin.QArmgarNewRecord(DataSet: TDataSet);
begin
  QArmgar.Fieldbyname('Tsale').Asstring := QFinSaleTsale.Asstring;
  QArmgar.Fieldbyname('Locat').Asstring := QFinSaleLocat.Asstring;
  QArmgar.Fieldbyname('Contno').Asstring := QFinSaleContno.Asstring;
  QArmgar.Fieldbyname('ADDRNO').Asstring := '1';
end;

procedure TfrAddGarFin.SavBtnClick(Sender: TObject);
begin
  QFinSale.Post;
end;

procedure TfrAddGarFin.CancBtnClick(Sender: TObject);
begin
  QFinSale.Cancel;
end;

procedure TfrAddGarFin.SoHirsalStateChange(Sender: TObject);
var
  N: word;
begin
  CloseBtn.Enabled := (SoHirsal.State = Dsbrowse);
  EnqBtn.Visible := (SoHirsal.State = Dsbrowse);
  SavBtn.Visible := (SoHirsal.State in DsEditmodes) and
    ((DBKbd1.AllowEditing) or (DBkbd1.AllowInsert));
  CancBtn.Visible := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Append.Enabled := SavBtn.Visible;
  cxGrid1DBTableView1.NavigatorButtons.Delete.Enabled := SavBtn.Visible;

  if SoHirsal.Dataset.State = Dsbrowse then
  begin
    for N := 0 to ComponentCount - 1 do
    begin
      if (Components[N] is TcxDBTextEdit) and (TcxDBTextEdit(Components[N]).Tag = 0) then
      begin
        TcxDBTextEdit(Components[N]).Properties.Readonly := True;
        TcxDBTextEdit(Components[N]).Style.Color := clBtnFace;
      end;
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := False;
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
      if (Components[N] is TcxGridDBTableView) and (TcxGridDBTableView(Components[N]).Tag = 0) then
      begin
        TcxGridDBTableView(Components[N]).OptionsData.Editing := True;
      end;
    end;
  end;
  DBedit1.Properties.ReadOnly := True;
  DBedit2.Properties.ReadOnly := True;
  DBedit1.Style.Color := clSilver;
  DBedit2.Style.Color := clSilver;
end;

procedure TfrAddGarFin.QFinSaleAfterPost(DataSet: TDataSet);
begin
  Dm_sec.HI_DBMS.StartTransaction;
  try
    if QFinSale.Active then
      if (QFinSale.ApplyUpdates = 0) then
        QFinSale.CommitUpdates
      else
        raise Exception.Create(QFinSale.RowError.Message);
    if QArmgar.Active then
      if (QArmgar.ApplyUpdates = 0) then
        QArmgar.CommitUpdates
      else
        raise Exception.Create(QArmgar.RowError.Message);
    Dm_sec.HI_DBMS.Commit;
  except
    Dm_sec.HI_DBMS.RollBack;
    QFinSale.Edit;
    raise;
  end;
end;

procedure TfrAddGarFin.QArmgarCUSCODChange(Sender: TField);
begin
  if (SoHirsal.State = DsEdit) then
  begin
    with Query1 do
    begin
      CLOSE;
      SQL.CLEAR;
      SQL.ADD('SELECT * FROM CUSTMAST  WHERE CUSCOD = :CUSCOD');
      PARAMS[0].ASSTRING := QArmgar.Fieldbyname('CUSCOD').Asstring;
      OPEN;
    end;
  end;
end;

procedure TfrAddGarFin.cxGrid1DBTableView1CUSCODPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (SoHirsal.State = DsEdit) then
  begin
    Application.Createform(TSearchset, Searchset);
    if Searchset.ShowModalCusmast = Mrok then
    begin
      QArmgar.FieldByname('CUSCOD').Asstring := Searchset.Keyno;
    end;
  end;
end;

procedure TfrAddGarFin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frAddGarFin := nil;
end;

procedure TfrAddGarFin.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP01_3');
end;

end.

