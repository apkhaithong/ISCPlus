unit U_Propose;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, DB, Grids, DBGrids, RzDBGrid,
  StdCtrls, RzLabel, DBCtrls, RzDBEdit, Mask, RzEdit, RzDBBnEd, RzButton,
  RzDbkbd, wwdbdatetimepicker, RzBorder,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFPropose = class(TForm)
    ToolBar1: TToolBar;
    InsBtn: TToolButton;
    DelBtn: TToolButton;
    EnqBtn: TToolButton;
    SaveBtn: TToolButton;
    CancBtn: TToolButton;
    CloseBtn: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    PrintBtn: TToolButton;
    RzDBButtonEdit1: TRzDBButtonEdit;
    RzDBButtonEdit2: TRzDBButtonEdit;
    RzDBMemo1: TRzDBMemo;
    RzDBButtonEdit4: TRzDBButtonEdit;
    Label1: TRzLabel;
    Label2: TRzLabel;
    DBGrid1: TRzDBGrid;
    DataSource1: TDataSource;
    QPrnPartInv: TFDQuery;
    QPrnPartTrn: TFDQuery;
    NextBtn: TRzBitBtn;
    DeleBtn: TRzBitBtn;
    QPrnPartInvPRNINV: TStringField;
    QPrnPartInvPRNLOCAT: TStringField;
    QPrnPartInvPRNDATE: TDateField;
    QPrnPartInvCUSCOD: TStringField;
    QPrnPartInvOFFICCOD: TStringField;
    QPrnPartInvNETAMT: TFloatField;
    QPrnPartInvNETVAT: TFloatField;
    QPrnPartInvNETTOT: TFloatField;
    QPrnPartInvTIME1: TDateTimeField;
    QPrnPartInvMEMO1: TMemoField;
    QPrnPartTrnPRNINV: TStringField;
    QPrnPartTrnPRNLOCAT: TStringField;
    QPrnPartTrnPARTNO: TStringField;
    QPrnPartTrnPNET: TStringField;
    QPrnPartTrnORDQTY: TFloatField;
    QPrnPartTrnPRICE1: TFloatField;
    QPrnPartTrnREDU1: TFloatField;
    QPrnPartTrnTOTPRC: TFloatField;
    DataSource2: TDataSource;
    DBkbd1: TRzDBkbd;
    Query1: TFDQuery;
    Query2: TFDQuery;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    QPrnPartInvNETADD: TFloatField;
    QPrnPartInvREDU: TFloatField;
    RzDBEdit1: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    RzBorder1: TRzBorder;
    Qinventor: TFDQuery;
    RzDBEdit3: TRzDBEdit;
    RzLabel11: TRzLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1StateChange(Sender: TObject);
    procedure QPrnPartInvPRNDATEValidate(Sender: TField);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPropose: TFPropose;

implementation
uses USoftFirm;
{$R *.dfm}

procedure TFPropose.FormCreate(Sender: TObject);
begin
  //FCRM_DM.Check_right('HDCUS','SCUS012');
  DBkbd1.AllowDelete := FCRM_DM.Del_right;
  DBkbd1.AllowEditing:= FCRM_DM.Edit_right;
  DBkbd1.AllowInsert := FCRM_DM.Insert_right;
        With QPrnPartInv Do
        Begin
        Close;
        sql.Clear;
        sql.Add('SELECT * FROM PRNPARTINV WHERE PRNINV='''' ');
        Open;
        End;
        
        With QPrnPartTrn Do
        Begin
        Close;
        sql.Clear;
        sql.Add('SELECT * FROM PRNPARTTRN WHERE PRNINV='''' ');
        Open;
        End;
end;

procedure TFPropose.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Action := caFree;
end;

procedure TFPropose.DataSource1StateChange(Sender: TObject);
Var n:word;
begin
  InsBtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowInsert);
  Delbtn.Enabled  := (DataSource1.State=Dsbrowse)and(DBkbd1.AllowDelete);
  Enqbtn.Enabled  := InsBtn.Enabled;
  CloseBtn.Enabled:= (DataSource1.State=Dsbrowse);
  SaveBtn.Enabled  := (DataSource1.State in DsEditmodes)and
                     ((DBKbd1.AllowEditing) or(DBkbd1.AllowInsert));
  CancBtn.Enabled := SaveBtn.Enabled;
  NextBtn.Enabled  := (DataSource1.Dataset.State In DsEditModes);
  DeleBtn.Enabled  := NextBtn.Enabled;
  PrintBtn.Enabled   := DataSource1.Dataset.State=DsBrowse;


  If DataSource1.Dataset.State = Dsbrowse Then
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TRzDBButtonEdit) and (TRzDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TRzDBButtonEdit(Components[n]).Readonly := True;
          TRzDBButtonEdit(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TwwDBDateTimePicker) and (TwwDBDateTimePicker(Components[n]).Tag=0)  Then
        begin
          TwwDBDateTimePicker(Components[n]).Readonly := True;
          TwwDBDateTimePicker(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TRzDBGrid) and (TRzDBGrid(Components[n]).Tag=0)  Then
        begin
          TRzDBGrid(Components[n]).Readonly := True;
          TRzDBGrid(Components[n]).Color := clSilver;
        end;
        If (Components[n] Is TRzDBMemo) and (TRzDBMemo(Components[n]).Tag=0)  Then
        begin
          TRzDBMemo(Components[n]).Readonly := True;
          TRzDBMemo(Components[n]).Color := clSilver;
        end;
      end;
    End
    Else
    begin
      For N:= 0 To ComponentCount-1 Do
      begin
        If (Components[n] Is TRzDBButtonEdit) and (TRzDBButtonEdit(Components[n]).Tag=0)  Then
        begin
          TRzDBButtonEdit(Components[n]).Readonly := True;
          TRzDBButtonEdit(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TwwDBDateTimePicker) and (TwwDBDateTimePicker(Components[n]).Tag=0)  Then
        begin
          TwwDBDateTimePicker(Components[n]).Readonly := False;
          TwwDBDateTimePicker(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TRzDBMemo) and (TRzDBMemo(Components[n]).Tag=0)  Then
        begin
          TRzDBMemo(Components[n]).Readonly := False;
          TRzDBMemo(Components[n]).Color := clWhite;
        end;
        If (Components[n] Is TRzDBGrid) and (TRzDBGrid(Components[n]).Tag=0)  Then
        begin
          TRzDBGrid(Components[n]).Readonly := False;
          TRzDBGrid(Components[n]).Color := clWhite;
        end;
      end;
    End;
    Edit1.ReadOnly := True;
    Edit1.Color := clSilver;


end;

procedure TFPropose.QPrnPartInvPRNDATEValidate(Sender: TField);
var st,YY,MM,LC:string;
    run:integer;
begin
        ShortDateformat := 'DD/MM/YYYY';
        YY := Copy(DateToStr(Date),9,2);
        MM := Copy(DateToStr(Date),4,2);
        //
        With Query2 Do
        Begin
            Close;
            sql.Clear;
            sql.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:0');
            Params[0].AsString := SFMAIN.Xlocat;
            Open;
        End;
        LC := Query2.fieldByName('LOCATDOC').AsString;
        //
                With Query1 Do
                Begin
                Close;
                sql.Clear;
                sql.Add('SELECT MAX(PRNINV) AS MAXNO FROM PRNPARTINV');
                Open;
                End;
                st := Query1.FieldByName('MAXNO').AsString;
    if st = '' then
      QPrnPartInv.fieldbyname('PRNINV').asstring := LC+'QP-'+YY+MM+'0001'
    else
    begin
      st := copy(st,9,4);
      run := strtoint(st)+1;
      QPrnPartInv.FieldByName('PRNINV').asstring := LC+'QP-'+YY+MM+.ZeroLead(inttostr(run),4);
    end;

end;

procedure TFPropose.CloseBtnClick(Sender: TObject);
begin
        Close;
end;

end.
