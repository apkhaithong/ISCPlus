unit UpOveryy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db,
  StdCtrls, Buttons, Mask, DBCtrls, Spin, Grids, DBGrids, Gauges, ExtCtrls,
  ImgList, ComCtrls, ToolWin, RzSpnEdt, RzBorder, AdvGlowButton, AdvToolBar,
  AdvPanel, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm;

type
  TFupoveryear = class(TForm)
    AdvPanel1: TAdvPanel;
    Gauge1: TGauge;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TcxButtonEdit;
    SpinEdit1: TcxSpinEdit;
    SpinEdit2: TcxSpinEdit;
    Edit2: TcxButtonEdit;
    Query1: TFDQuery;
    Qpart: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure SpinEdit2PropertiesChange(Sender: TObject);
    procedure SpinEdit1PropertiesChange(Sender: TObject);
    procedure Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fupoveryear: TFupoveryear;
  Year, Month, Day: Word;

implementation

uses
  Dmic01, uSrcDlg, uSoftfirm, Dmsec;
{$R *.DFM}

procedure TFupoveryear.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP02_5');
  DecodeDate(Now, Year, Month, Day);
  SpinEdit1.Value := Year - 1;
  SpinEdit2.Value := Year;
end;

procedure TFupoveryear.BitBtn1Click(Sender: TObject);
var
  XOnlo, Xonhn, Onlo, onhn, Cost, PT: string;
  I, M, P: Longint;
  HBal, LBal, ONHQTY, Balqty: Double;
begin
  Label4.Visible := False;
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD=:EDIT ');
    Params[0].asstring := Edit1.Text;
    Open;
    if Bof and Eof then
      SFMain.RaiseException('รหัสสาขาไม่ถูกต้อง');
  end;

  Gauge1.Visible := True;
  BitBtn2.Enabled := False;
  BitBtn1.Enabled := False;
   //
  with Qpart do
  begin
    Close;
    Sql.Clear;
    Sql.add('SELECT PARTNO,LOCAT,ONHN_12,ALLO_12,COST_12,PRIC_12 ' +
      'FROM INVANLS WHERE LOCAT=:EDIT1 AND YEAR1=:EDIT2 AND PARTNO LIKE :EDIT3 ');
    params[0].asstring := edit1.text;
    params[1].asstring := Inttostr(SpinEdit1.Value);
    params[2].asstring := edit2.text + '%';
    Open;
  end;
  Gauge1.Maxvalue := Qpart.RecordCount;

  if not (Qpart.Bof and Qpart.Eof) then
  begin
    P := 1;
    Qpart.First;
    while not Qpart.Eof do
    begin
      with Query1 do
      begin
        Close;
        Sql.Clear;
        Sql.add('UPDATE INVANLS SET ONHN_13=:1,ALLO_13=:2,COST_13=:3,PRIC_13=:4, ' +
          'ONHN_1=:5,ALLO_1=:6,COST_1=:7,PRIC_1=:8, ' +
          'ONHN_2=:9,ALLO_2=:10,COST_2=:11,PRIC_2=:12, ' +
          'ONHN_3=:13,ALLO_3=:14,COST_3=:15,PRIC_3=:16, ' +
          'ONHN_4=:17,ALLO_4=:18,COST_4=:19,PRIC_4=:20, ' +
          'ONHN_5=:21,ALLO_5=:22,COST_5=:23,PRIC_5=:24, ' +
          'ONHN_6=:25,ALLO_6=:26,COST_6=:27,PRIC_6=:28, ' +
          'ONHN_7=:29,ALLO_7=:30,COST_7=:31,PRIC_7=:32, ' +
          'ONHN_8=:33,ALLO_8=:34,COST_8=:35,PRIC_8=:36, ' +
          'ONHN_9=:37,ALLO_9=:38,COST_9=:39,PRIC_9=:40, ' +
          'ONHN_10=:41,ALLO_10=:42,COST_10=:43,PRIC_10=:44, ' +
          'ONHN_11=:45,ALLO_11=:46,COST_11=:47,PRIC_11=:48, ' +
          'ONHN_12=:49,ALLO_12=:50,COST_12=:51,PRIC_12=:52 ' +
          'WHERE LOCAT=:53 AND PARTNO=:54 AND YEAR1=:55');
        Params[0].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[1].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[2].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[3].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[4].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[5].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[6].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[7].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[8].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[9].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[10].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[11].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[12].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[13].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[14].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[15].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[16].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[17].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[18].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[19].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[20].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[21].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[22].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[23].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[24].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[25].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[26].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[27].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[28].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[29].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[30].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[31].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[32].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[33].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[34].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[35].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[36].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[37].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[38].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[39].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[40].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[41].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[42].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[43].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[44].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[45].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[46].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[47].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;
        Params[48].asFloat := QPart.Fieldbyname('ONHN_12').Asfloat;
        Params[49].asFloat := QPart.Fieldbyname('ALLO_12').Asfloat;
        Params[50].asFloat := QPart.Fieldbyname('COST_12').Asfloat;
        Params[51].asFloat := QPart.Fieldbyname('PRIC_12').Asfloat;

        Params[52].asstring := Qpart.Fieldbyname('LOCAT').Asstring;
        Params[53].asstring := Qpart.Fieldbyname('PARTNO').Asstring;
        Params[54].asstring := Inttostr(SpinEdit2.Value);
        ExecSql;
      end;
      Gauge1.Progress := P;
      P := P + 1;
      Qpart.Next;
    end;
  end;
  BitBtn2.Enabled := True;
  Gauge1.Progress := 0;
  Label4.Visible := True;
  Edit1Change(Sender);
  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'FILE08_5', 'UPDATE', 'Update data');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TFupoveryear.Edit1Change(Sender: TObject);
begin
  BitBtn1.Enabled := Edit1.Text <> '';
end;

procedure TFupoveryear.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Qpart.Close;
  Action := Cafree;
  Fupoveryear := nil;
end;

procedure TFupoveryear.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TFupoveryear.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalLocat = Mrok then
    Edit1.Text := fSrcDlg.Keyno;
end;

procedure TFupoveryear.SpinEdit2PropertiesChange(Sender: TObject);
begin
  SpinEdit1.Value := SpinEdit2.Value - 1;
end;

procedure TFupoveryear.SpinEdit1PropertiesChange(Sender: TObject);
begin
  SpinEdit2.Value := SpinEdit1.Value + 1;
end;

procedure TFupoveryear.Edit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg, fSrcDlg);
  if fSrcDlg.ShowModalParts = Mrok then
    Edit2.Text := fSrcDlg.Keyno;
end;

procedure TFupoveryear.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    Perform(Wm_nextDlgctl, 0, 0);
    Key := #0;
  end;
end;

end.

