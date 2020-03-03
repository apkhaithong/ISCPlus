unit uDataflow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, AdvToolBar, cxControls, cxContainer, cxEdit, cxLabel,
  AdvShapeButton, Menus, iniFiles, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxTextEdit, DB, ActnList, cxGraphics, cxLookAndFeels, cxNavigator,
  dxDateRanges, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxBlobEdit,
  cxShellBrowserDialog, AdvGlowButton, cxButtonEdit, cxMaskEdit, cxDropDownEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, AdvPanel;

type
  TfrDataflow = class(TForm)
    Query1: TFDQuery;
    DataSource1: TDataSource;
    qrMaster: TFDQuery;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    AdvPanel1: TAdvPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label3: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FRNAME: TcxGridDBColumn;
    cxGrid1DBTableView1PATHFR: TcxGridDBColumn;
    cxGrid1DBTableView1USERID: TcxGridDBColumn;
    cxGrid1DBTableView1INPUTDT: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2MENUCODE: TcxGridDBColumn;
    cxGrid1DBTableView2MENUDESC: TcxGridDBColumn;
    cxGrid1DBTableView2COUNT: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    XAlias: TcxComboBox;
    Edit1: TcxButtonEdit;
    qrMasterPATHFR: TBlobField;
    qrMasterUSERID: TStringField;
    qrMasterINPUTDT: TDateTimeField;
    qrMasterFRNAME: TStringField;
    HelpBtn: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    ExitBtn: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ExitBtnClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure HelpBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1PATHFRPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure qrMasterAfterPost(DataSet: TDataSet);
    procedure qrMasterAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Table_Name: string;
    procedure SaveFastReport;
  end;

var
  frDataflow: TfrDataflow;
  inilog, ini: TIniFile;
  CheckBF: Boolean;
  TotFile: Integer;
  mStream: TMemoryStream;

implementation

uses
  USoftFirm, DmSec, dm1;

{$R *.dfm}

procedure TfrDataflow.SaveFastReport;
var
  Search: TSearchRec;
  Mask, Fname, Pname: string;
begin
  Table_Name := XAlias.Text;
  Mask := Edit1.Text;
  Fname := ExtractFileName(Mask);
  Pname := ExtractFilePath(Mask);
  TotFile := 1;
  if Pname[Length(Pname)] <> '\' then
    Pname := Pname + '\';

  SFMain.AdvSmoothMessageDialog5.Caption := 'Are you sure...?';
  SFMain.AdvSmoothMessageDialog5.HTMLText.Text := 'Load FastReport File to Database?';
  case SFMain.AdvSmoothMessageDialog5.ExecuteDialog of
    mrOk:
      CheckBF := True;
     //mrCancel : CheckBF := False;
  end;

  {Search files in folder only}
  if FindFirst(Mask, $23, Search) = 0 then
  begin
    repeat
      if (CheckBF) then
      begin

        with Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT FRNAME FROM ' + Table_Name + ' WHERE FRNAME=:0 ');
          Params[0].AsString := UpperCase(Search.Name);
          Open;
        end;

        if Query1.Eof and Query1.Bof then
        begin
          mStream := TMemoryStream.Create;
          try
            mStream.LoadFromFile(Pname + Search.Name);
            with qrMaster do
            begin
              Sql.Clear;
              Sql.Add('INSERT INTO ' + Table_Name + ' (FRNAME,PATHFR,USERID,INPUTDT)');
              Sql.Add('VALUES (:0,:1,:2,:3)');
              Params[0].AsString := UpperCase(Search.Name);
              Params[1].LoadFromStream(mStream.Memory, ftBlob);
              Params[2].AsString := SFMain.XUser_ID;
              Params[3].AsDateTime := Now;
              ExecSQL;
            end;
          finally
            mStream.Free;
          end;
          TotFile := TotFile + 1;
        end
        else
      end;
    until FindNext(Search) <> 0;
    Exit;
  end;
end;

procedure TfrDataflow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  frDataflow := Nil;
end;

procedure TfrDataflow.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
    Key := #0;
  end;
end;

procedure TfrDataflow.ExitBtnClick(Sender: TObject);
begin
  close;
end;

procedure TfrDataflow.AdvGlowButton1Click(Sender: TObject);
begin
  Table_Name := XAlias.Text;
  with qrMaster do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ' + Table_Name + ' ORDER BY INPUTDT DESC');
    Open;
  end;
end;

procedure TfrDataflow.HelpBtnClick(Sender: TObject);
begin
  if Edit1.Text = '' then
    SFMain.RaiseException('Please select path folder..!');

  if XAlias.Text = '' then
    SFMain.RaiseException('Please select table name..!');

  SaveFastReport;
  SFMain.AdvSmoothMessageDialog4.Caption := 'Post data successfully..';
  SFMain.AdvSmoothMessageDialog4.HTMLText.Text := 'Save Fast Reports Files Complete';
  SFMain.AdvSmoothMessageDialog4.ExecuteDialog;

  Table_Name := XAlias.Text;
  with qrMaster do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ' + Table_Name + ' ORDER BY INPUTDT DESC');
    Open;
  end;
end;

procedure TfrDataflow.Edit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if cxShellBrowserDialog1.Execute then
    Edit1.Text := cxShellBrowserDialog1.Path + '\*.fr3';
end;

procedure TfrDataflow.cxGrid1DBTableView1PATHFRPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  MemStr: TStream;
begin
  with Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM ' + Table_Name + ' WHERE FRNAME=:0 ');
    Params[0].AsString := qrMasterFRNAME.AsString;
    Open;
  end;
  MemStr := TStream.Create;
  try
    MemStr := Query1.CreateBlobStream(Query1.FieldByName('PATHFR'), bmRead);
    MemStr.Position := 0;
//    SFMain.frReport1.LoadFromStream(MemStr);
//    SFMain.frReport1.FileName := 'Test preview : ' + qrMasterFRNAME.AsString;
//    SFMain.frReport1.DesignReport;
  finally
    MemStr.Free;
  end;
end;

procedure TfrDataflow.cxGrid1DBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
{var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AStyle: TcxStyle;
  IndNo : String;           }
begin
{  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;
  ATextRect := AViewInfo.ContentBounds;
  AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
  InflateRect(ATextRect, -2, -1);
  if AIndicatorViewInfo.GridRecord.Selected then
    AStyle := SFMain.styleSelected
  else
    AStyle := SFMain.styleNormal;

  if AIndicatorViewInfo.GridRecord.Index + 1 = 0 then
  IndNo := '' else
  IndNo := IntToStr(AIndicatorViewInfo.GridRecord.Index + 1);

  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
    False, False, IndNo,
    AStyle.Font, AStyle.TextColor, AStyle.Color);
  ADone := True;      }
end;

procedure TfrDataflow.FormShow(Sender: TObject);
begin
  Edit1.Text := ExtractFilePath(Application.ExeName) + '*.fr3';
end;

procedure TfrDataflow.qrMasterAfterPost(DataSet: TDataSet);
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if qrMaster.Active then
      if (qrMaster.ApplyUpdates = 0) then
        qrMaster.CommitUpdates
      else
        raise Exception.Create(qrMaster.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    qrMaster.EDIT;
    raise;
  end;
end;

procedure TfrDataflow.qrMasterAfterDelete(DataSet: TDataSet);
begin
  Dm_Sec.HI_DBMS.StartTransaction;
  try
    if qrMaster.Active then
      if (qrMaster.ApplyUpdates = 0) then
        qrMaster.CommitUpdates
      else
        raise Exception.Create(qrMaster.RowError.Message);
    DM_SEC.HI_DBMS.Commit;
  except
    DM_SEC.HI_DBMS.Rollback;
    qrMaster.EDIT;
    raise;
  end;
end;

end.

