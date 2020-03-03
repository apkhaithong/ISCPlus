unit Svcaltim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFsvtime = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    SoSVTIME: TDataSource;
    AddBtn: TBitBtn;
    DelBtn: TBitBtn;
    BitBtn2: TBitBtn;
    svtime: TFDTable;
    svtimeJOBNO: TStringField;
    svtimeSTARTTIM: TFloatField;
    svtimeSTOPTIM: TFloatField;
    svtimeUSETIME: TFloatField;
    svtimeFLAG: TStringField;
    svtimeSERVCOD: TStringField;
    svtimeCODE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure svtimeNewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    JOBNO1,SERVCOD1,Code1,Flag1 :String;
  end;

var
  Fsvtime: TFsvtime;

implementation
uses Dmsv;
{$R *.DFM}

procedure TFsvtime.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TFsvtime.FormShow(Sender: TObject);
begin
  Svtime.open;
end;

procedure TFsvtime.BitBtn1Click(Sender: TObject);
begin
  If Svtime.State in dseditmodes Then
     svtime.Post;
end;

procedure TFsvtime.AddBtnClick(Sender: TObject);
begin
  svtime.Append;
end;

procedure TFsvtime.DelBtnClick(Sender: TObject);
begin
  svtime.Delete;
end;

procedure TFsvtime.DBGrid1ColExit(Sender: TObject);
Var S1,S2,H1,H2,C1,C2:String;
    T1,T2,V1,V2 : Double;
begin
   If DBGrid1.SelectedField.FieldName = 'STOPTIM' Then
   begin
     S1 := floattostrF(Svtime.Fieldbyname('StartTim').asFloat,ffFixed,5,2);
     S2 := FloattostrF(svtime.Fieldbyname('StopTim').asFloat,ffFixed,5,2);
     H1 := Copy(S1,1,Pos('.',S1)-1);
     C1 := Copy(S1,Pos('.',S1)+1,2);
     V1 := Strtofloat(C1)/100;
     T1 := Strtofloat(H1)+V1;

     H2 := Copy(S2,1,Pos('.',S2)-1);
     C2 := Copy(S2,Pos('.',S2)+1,2);
     V2 := Strtofloat(C2)/100;
     T2 := Strtofloat(H2)+V2;
     Svtime.Fieldbyname('UseTime').asFloat := (T2-T1);
   end;
end;

procedure TFsvtime.svtimeNewRecord(DataSet: TDataSet);
begin
  svtime.Fieldbyname('Jobno').asstring   := Jobno1;
  svtime.Fieldbyname('Servcod').asstring := Servcod1;
  svtime.Fieldbyname('Code').asstring    := Code1;
  svtime.Fieldbyname('Flag').asstring    := Flag1;
end;

procedure TFsvtime.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key = #13) then
  If not (ActiveControl is TDbGrid )   then
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
      Selectedindex := 0;
      If Svtime.State = Dsedit   Then
         Svtime.Next;
      If Svtime.State = DsInsert Then
         Svtime.Append;
     end;
end;

procedure TFsvtime.DBGrid1Enter(Sender: TObject);
begin
  Fsvtime.OnkeyPress := nil;
end;

procedure TFsvtime.DBGrid1Exit(Sender: TObject);
begin
Fsvtime.OnkeyPress :=FormKeypress;
end;

procedure TFsvtime.DBGrid1DblClick(Sender: TObject);
Var Hour, Min, Sec, MSec:Word;
    Tm :String;
begin
  If DBGrid1.SelectedField.FieldName = 'STARTTIM' then
  begin
    DecodeTime(Now, Hour, Min, Sec, MSec);
    Tm := Inttostr(Hour)+'.'+Inttostr(Min);
    If Svtime.State=DsBrowse Then Svtime.Edit;
    Svtime.Fieldbyname('STARTTIM').AsFloat := Strtofloat(Tm);
  End;

  If DBGrid1.SelectedField.FieldName = 'STOPTIM' then
  begin
    DecodeTime(Now, Hour, Min, Sec, MSec);
    Tm := Inttostr(Hour)+'.'+Inttostr(Min);
    If Svtime.State=DsBrowse Then Svtime.Edit;
    Svtime.Fieldbyname('StopTim').AsFloat := Strtofloat(Tm);
  End;

end;

end.
