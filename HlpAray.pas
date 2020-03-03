unit HlpAray;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB, RzButton, Mask, RzEdit,
  RzDBGrid, RzSpnEdt, Menus, cxLookAndFeelPainters, AdvShapeButton, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxButtons, AdvGlowButton, cxGraphics,
  cxMaskEdit, cxDropDownEdit, cxLookAndFeels, cxNavigator,
  cxGridCustomLayoutView, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  dxDateRanges, cxDBData, cxImageComboBox, cxGridLevel, cxGridCardView,
  cxGridDBCardView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid;

type
  THlp_Aray = class(TForm)
    QHlp: TFDQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    Panel1: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    FindBtn: TAdvGlowButton;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    Edit1: TcxTextEdit;
    AdvShapeButton1: TAdvShapeButton;
    Label2: TLabel;
    cbViewdata: TcxImageComboBox;
    DBGrid_PBILL: TcxGrid;
    DBGrid_PBILLDBTableView1: TcxGridDBTableView;
    DBGrid_PBILLDBTableView1ARBILNO: TcxGridDBColumn;
    DBGrid_PBILLDBTableView1LOCAT: TcxGridDBColumn;
    DBGrid_PBILLDBTableView1BDATE: TcxGridDBColumn;
    DBGrid_PBILLDBTableView1CUSCODE: TcxGridDBColumn;
    DBGrid_PBILLDBTableView1DESC: TcxGridDBColumn;
    DBGrid_PBILLDBTableView1DATE1: TcxGridDBColumn;
    DBGrid_PBILLDBCardView1: TcxGridDBCardView;
    cxGridLevel1: TcxGridLevel;
    DBGrid_Bill: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ARBILNO: TcxGridDBColumn;
    cxGridDBTableView1LOCAT: TcxGridDBColumn;
    cxGridDBTableView1BDATE: TcxGridDBColumn;
    cxGridDBTableView1CUSCODE: TcxGridDBColumn;
    cxGridDBTableView1DESC: TcxGridDBColumn;
    cxGridDBTableView1DATE1: TcxGridDBColumn;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridLevel2: TcxGridLevel;
    DBGrid_PBILLDBTableView1AMOUNT: TcxGridDBColumn;
    DBGrid_PBILLDBTableView1PAYAMT: TcxGridDBColumn;
    cxGridDBTableView1AMOUNT: TcxGridDBColumn;
    cxGridDBTableView1PAYAMT: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid_PbDblClick(Sender: TObject);
    procedure DBGrid_PbKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure DBGrid_ArDblClick(Sender: TObject);
    procedure DBGrid_ArKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_PiDblClick(Sender: TObject);
    procedure DBGrid_Pi1DblClick(Sender: TObject);
    procedure DBGrid_Pi2DblClick(Sender: TObject);
    procedure DBGrid_PiKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_Pi1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_Pi2KeyPress(Sender: TObject; var Key: Char);
    procedure Grid_PbiKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_PbiDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FindBtnClick(Sender: TObject);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure DBGrid_PBILLDBTableView1DblClick(Sender: TObject);
    procedure DBGrid_PBILLDBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  XSrLocat: string;
    { Public declarations }
  end;

var
  Hlp_Aray: THlp_Aray;

implementation

uses DmAr,usoftfirm;

{$R *.DFM}

procedure THlp_Aray.FormCreate(Sender: TObject);
var   N : word   ;
begin
// Edit1.SetFocus;
 for N:=0 TO ComponentCount - 1 do
 begin
  if Components[N] is TDBgrid then
  TDBgrid(Components[N]).Visible := False;

  If (Components[n] Is TcxGrid)  Then
  TcxGrid(Components[n]).Visible := False;
 end;
end;

procedure THlp_Aray.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure THlp_Aray.DBGrid_PbDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure THlp_Aray.DBGrid_PbKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure THlp_Aray.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
      FindBtnClick(Sender);
      if Dbgrid_Bill.Visible = true then
      Dbgrid_Bill.SetFocus;
      if Dbgrid_PBill.Visible = true then
      Dbgrid_PBill.SetFocus;
   End;
end;

procedure THlp_Aray.RzBitBtn2Click(Sender: TObject);
begin
        Close;
end;

procedure THlp_Aray.DBGrid_ArDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure THlp_Aray.DBGrid_ArKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure THlp_Aray.DBGrid_PiDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure THlp_Aray.DBGrid_Pi1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure THlp_Aray.DBGrid_Pi2DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure THlp_Aray.DBGrid_PiKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure THlp_Aray.DBGrid_Pi1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure THlp_Aray.DBGrid_Pi2KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure THlp_Aray.Grid_PbiKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure THlp_Aray.Grid_PbiDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure THlp_Aray.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure THlp_Aray.FindBtnClick(Sender: TObject);
begin
 {if Dbgrid_Pi.Visible = true then
  begin
    With Dm_Ar.QInvBil do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT INVNO,INVDATE,LOCAT,CUSCODE,TNOPAY,NETTOTAL,SMPAY,FLAG '+
            'FROM ARINVOI WHERE LOCAT LIKE :XLOCAT AND (KANG > 0) '+
            'AND (FLAG = ''2'' OR FLAG=''D'') AND CANCELID IS NULL ORDER BY INVDATE DESC '+cbViewdata.EditValue);
      Params[0].AsString := Uppercase(Hlp_Aray.XSrLocat)+'%';
      Params[1].Asstring := Edit1.Text+'%';
      Open;
    end;
  end;}
//******** hELP  Edit ชำระเงิน Invoice *****************
  {if Dbgrid_Pi1.Visible = true then
  begin
    With Dm_Ar.QArpaytr1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARPAYTRN '+
              'WHERE  BILLNO LIKE :XBILLNO  '+
              'AND LOCAT LIKE :EDIT2 AND PAYCONT =''1'' ORDER BY BILLDT DESC '+cbViewdata.EditValue);
      Params[0].Asstring := Edit1.Text+'%';
      params[1].AsString := Uppercase(Hlp_Aray.XSrLocat)+'%';
      Open;
    end;
  end;}
 //************ help edit บันทึกใบวางบิล *************
  if Dbgrid_Bill.Visible = true then
  begin
    with QHlp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILL '+
              'WHERE ((ARBILNO LIKE :EDIT0) or (CUSCODE LIKE :EDIT1)) AND LOCAT LIKE :EDIT2 ORDER BY BDATE DESC '+cbViewdata.EditValue);
      Params[0].Asstring := Uppercase('%'+Edit1.Text+'%');
      Params[1].Asstring := Uppercase('%'+Edit1.Text+'%');
      Params[2].AsString := Uppercase(Hlp_Aray.XSrLocat)+'%';
      Open ;
    end;
  end;
 //************ help Pay ตามใบวางบิล *************
  if Dbgrid_PBill.Visible = true then
  begin
    with QHlp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILL WHERE ((ARBILNO LIKE :EDIT0) or (CUSCODE LIKE :EDIT1)) AND LOCAT LIKE :EDIT2 '+
      ' ORDER BY BDATE DESC '+cbViewdata.EditValue);
      Params[0].Asstring := Uppercase('%'+Edit1.Text+'%');
      Params[1].Asstring := Uppercase('%'+Edit1.Text+'%');
      Params[2].AsString := Uppercase(Hlp_Aray.XSrLocat)+'%';
      Open ;
    end;
  end;

  SFMain.Do_Show_DisplayFormat_Floating(QHlp);
//******** hELP  Edit ชำระเงิน ใบวางบิล *****************
  {if Dbgrid_Pi2.Visible = true then
  begin
    With Dm_Ar.QArpaytr do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARPAYTRN '+
              'WHERE  BILLNO LIKE :XBILLNO AND LOCAT LIKE :EDIT2 '+
              'AND PAYCONT =''2'' ORDER BY BILLDT DESC '+cbViewdata.EditValue);
      Params[0].Asstring := Edit1.Text+'%';
      Params[1].AsString := Uppercase(Hlp_Aray.XSrLocat)+'%';
      Open;
    end;
  end;

  if grid_Pbi.Visible = true then
  begin
    with QHlp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARBILL '+
              'WHERE ARBILNO LIKE :EDIT1 AND LOCAT LIKE :EDIT2 ORDER BY BDATE DESC '+cbViewdata.EditValue);
      Params[0].Asstring := Edit1.Text+'%' ;
      Params[1].AsString := Uppercase(Hlp_Aray.XSrLocat)+'%';
      Open ;
    end;
  end;}
 //************ help  Edit บันทึกลูกหนี้อื่น *************
  {if DBgrid_Ar.Visible = true then
  begin
    with QHlp do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM ARINVOI WHERE INVNO LIKE :EDIT1 AND LOCAT LIKE :EDIT2 '+
              ' AND STAT = ''3'' ORDER BY INVDATE DESC '+cbViewdata.EditValue);
      Params[0].Asstring := Edit1.Text+'%' ;
      Params[1].AsString := Uppercase(Hlp_Aray.XSrLocat)+'%';
      Open ;
    end;
  end;}

end;

procedure THlp_Aray.Edit1PropertiesChange(Sender: TObject);
begin
  If sfMain.Xsrch='Y' Then
     FindBtnClick(Sender);
end;

procedure THlp_Aray.DBGrid_PBILLDBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure THlp_Aray.DBGrid_PBILLDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

procedure THlp_Aray.cxGridDBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure THlp_Aray.cxGridDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;
end;

end.
