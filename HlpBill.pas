unit HlpBill;

interface                                     

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Buttons,
  ExtCtrls, DB, Grids, DBGrids, RzButton, RzPanel, RzRadGrp, Mask, RzEdit,
  RzDBGrid, RzSpnEdt, cxGraphics, Menus, cxLookAndFeelPainters, AdvShapeButton,
  cxTextEdit, cxButtons, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, AdvGlowButton, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, ComCtrls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, RzDbkbd,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxLookAndFeels, cxImageComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator,
  dxDateRanges, dxBarBuiltInMenu;

type
  TFhlpBill = class(TForm)
    QHelp: TFDQuery;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    HlpBtn1: TAdvGlowButton;
    RadioGroup1: TcxComboBox;
    OKBtn: TcxButton;
    CloseBtn: TcxButton;
    Edit1: TcxTextEdit;
    AdvShapeButton1: TAdvShapeButton;
    RadioGroup2: TcxComboBox;
    DBGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3LOCAT: TcxGridDBColumn;
    cxGridDBTableView3BILLNO: TcxGridDBColumn;
    cxGridDBTableView3BILLDT: TcxGridDBColumn;
    cxGridDBTableView3CUSCODE: TcxGridDBColumn;
    cxGridDBTableView3NAME1: TcxGridDBColumn;
    cxGridDBTableView3NAME2: TcxGridDBColumn;
    cxGridDBTableView3PAYTYP: TcxGridDBColumn;
    cxGridDBTableView3NETTOT: TcxGridDBColumn;
    cxGridDBTableView3JOBNO: TcxGridDBColumn;
    cxGridDBTableView3INVNO: TcxGridDBColumn;
    cxGridDBTableView3CANCELID: TcxGridDBColumn;
    cxGridDBTableView3CANDAT: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cbViewdata: TcxImageComboBox;
    Label1: TLabel;
    procedure HlpBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxGridDBTableView3KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    XFlag,XSYSTM,XSrLocat : String; {1:SVNORM ÃÑºªÓÃĞÈÙ¹­ì 2:SVOTH ÃÑºªÓÃĞ¤èÒÍ×è¹æ}
  end;

var
  FhlpBill: TFhlpBill;

implementation

uses USoftFirm;
{$R *.DFM}

procedure TFhlpBill.HlpBtn1Click(Sender: TObject);
begin
  If XFlag = '1' Then XSystm := 'SVNORM' Else
  If XFlag = '2' Then XSystm := 'SVOTH';

  If  RadioGroup1.Itemindex = 0 Then
  begin
    With QHelp Do
    begin
      Close;
      Sql.Clear;
      If  RadioGroup2.Itemindex = 0 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.BILLNO LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND B.CANCELID IS NULL AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.BILLNO LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND NOT(B.CANCELID IS NULL) AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.BILLNO LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      Params[0].Asstring := '%'+EDIT1.TEXT+'%';
      Params[1].Asstring := XSYSTM;
      Params[2].Asstring := XSrLocat+'%';
      Open;
    end;
  end;
  If  RadioGroup1.Itemindex = 1 Then
  begin
    With QHelp Do
    begin
      Close;
      Sql.Clear;
      If  RadioGroup2.Itemindex = 0 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.INVNO LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND B.CANCELID IS NULL AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.INVNO LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND NOT(B.CANCELID IS NULL) AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.INVNO LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      Params[0].Asstring := '%'+EDIT1.TEXT+'%';
      Params[1].Asstring := XSYSTM;
      Params[2].Asstring := XSrLocat+'%';
      Open;
    end;
  end;
  If  RadioGroup1.Itemindex = 2 Then
  begin
    With QHelp Do
    begin
      Close;
      Sql.Clear;
      If  RadioGroup2.Itemindex = 0 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.CUSCODE LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND B.CANCELID IS NULL AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.CUSCODE LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND NOT(B.CANCELID IS NULL) AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.CUSCODE LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      Params[0].Asstring := '%'+EDIT1.TEXT+'%';
      Params[1].Asstring := XSYSTM;
      Params[2].Asstring := XSrLocat+'%';
      Open;
    end;
  end;
  If  RadioGroup1.Itemindex = 3 Then
  begin
    With QHelp Do
    begin
      Close;
      Sql.Clear;
      If  RadioGroup2.Itemindex = 0 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND C.NAME1 LIKE :EDIT1 '+
              'AND SYSTM=:EDIT AND B.CANCELID IS NULL AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND C.NAME1 LIKE :EDIT1 '+
              'AND SYSTM=:EDIT AND NOT(B.CANCELID IS NULL) AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND C.NAME1 LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      Params[0].Asstring := '%'+EDIT1.TEXT+'%';
      Params[1].Asstring := XSYSTM;
      Params[2].Asstring := XSrLocat+'%';
      Open;
    end;
  end;
  If  RadioGroup1.Itemindex = 4 Then
  begin
    With QHelp Do
    begin
      Close;
      Sql.Clear;
      If  RadioGroup2.Itemindex = 0 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND C.NAME2 LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND B.CANCELID IS NULL AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND C.NAME2 LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND NOT(B.CANCELID IS NULL) AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND C.NAME2 LIKE :EDIT1 '+
              'AND B.SYSTM=:EDIT AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      Params[0].Asstring := '%'+EDIT1.TEXT+'%';
      Params[1].Asstring := XSYSTM;
      Params[2].Asstring := XSrLocat+'%';
      Open;
    end;
  end;

  If  RadioGroup1.Itemindex = 5 Then
  begin
    With QHelp Do
    begin
      Close;
      Sql.Clear;
      If  RadioGroup2.Itemindex = 0 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.JOBNO LIKE :EDIT1 '+
              'AND SYSTM=:EDIT AND B.CANCELID IS NULL AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 1 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.JOBNO LIKE :EDIT1 '+
              'AND SYSTM=:EDIT AND NOT(B.CANCELID IS NULL) AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      If  RadioGroup2.Itemindex = 2 Then
      Sql.Add('SELECT B.LOCAT,B.BILLNO,B.BILLDT,B.CUSCODE,C.SNAM,C.NAME1,C.NAME2,B.PAYTYP,B.NETTOT,B.JOBNO, '+
              'B.INVNO,B.CANCELID,B.CANDAT FROM ARPAYTRN B,CUSTMAST C WHERE B.CUSCODE=C.CUSCOD AND B.JOBNO LIKE :EDIT1 '+
              'AND SYSTM=:EDIT AND B.LOCAT LIKE :3 ORDER BY B.BILLDT DESC '+cbViewdata.EditValue);
      Params[0].Asstring := '%'+EDIT1.TEXT+'%';
      Params[1].Asstring := XSYSTM;
      Params[2].Asstring := XSrLocat+'%';
      Open;
      SFMain.Do_Show_DisplayFormat_Floating(QHelp);
    end;
  end;
end;

procedure TFhlpBill.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TFhlpBill.FormCreate(Sender: TObject);
begin
  RadioGroup1.Itemindex := 0;
  RadioGroup2.Itemindex := 2;
end;

procedure TFhlpBill.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
     Hlpbtn1Click(Sender);
     dbgrid1.SetFocus;
  End;
end;

procedure TFhlpBill.Edit1Change(Sender: TObject);
begin
  If sfMain.Xsrch='Y' Then
  HlpBtn1Click(Sender);
end;

procedure TFhlpBill.cxGridDBTableView3DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFhlpBill.cxGridDBTableView3KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
   Begin
      OKBtn.Click;
   End;
end;

procedure TFhlpBill.FormShow(Sender: TObject);
begin
  Edit1.Setfocus;
end;

procedure TFhlpBill.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  OKBtn.Enabled := QHelp.RecordCount > 0;
end;

end.
