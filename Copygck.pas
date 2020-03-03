unit Copygck;

interface

uses Windows,Messages, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Dialogs,
  Buttons, Mask, DBCtrls, DB, RzSpnEdt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCopyGrpchk = class(TForm)
    CancelBtn: TButton;
    SrcList: TListBox;
    DstList: TListBox;
    SrcLabel: TLabel;
    DstLabel: TLabel;
    IncludeBtn: TSpeedButton;
    IncAllBtn: TSpeedButton;
    ExcludeBtn: TSpeedButton;
    ExAllBtn: TSpeedButton;
    Label1: TLabel;
    SpAr: TSpeedButton;
    Edit1: TEdit;
    QDst: TFDQuery;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TRzRapidFireButton;
    RzRapidFireButton1: TRzRapidFireButton;
    OKBtn: TButton;
    procedure IncludeBtnClick(Sender: TObject);
    procedure ExcludeBtnClick(Sender: TObject);
    procedure IncAllBtnClick(Sender: TObject);
    procedure ExcAllBtnClick(Sender: TObject);
    procedure MoveSelected(List: TCustomListBox; Items: TStrings);
    procedure SetItem(List: TListBox; Index: Integer);
    function GetFirstSelection(List: TCustomListBox): Integer;
    procedure SetButtons;
    procedure SpArClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RzRapidFireButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CopyGrpchk: TCopyGrpchk;

implementation
uses DmSvSet,Srchdlg,uSrcDlg1,SvSt93, Dmsec, USoftFirm;
{$R *.DFM}

procedure TCopyGrpchk.IncludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(SrcList);
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPORD WHERE KILOMT = :XCOD '+
    'AND MDLCOD=:MDCOD AND DESCRP=:GCOD');
    Params[0].AsFloat := Strtoint(COPY(SrcList.Items[index],1,Pos(',',SrcList.Items[index])-1)) ;
    Params[1].Asstring := EDIT1.TEXT ;
    Params[2].Asstring := Trim(COPY(SrcList.Items[index],Pos(',',SrcList.Items[index])+1,80-Pos(',',SrcList.Items[index]))) ;
    Open;
  end;
  if Not(Dm_SvSet.Query1.Bof and Dm_SvSet.Query1.eof) then
  SFMain.RaiseException('มีรหัสนี้แล้วในแฟ้มข้อมูล');

  MoveSelected(SrcList, DstList.Items);
  SetItem(SrcList, Index);
end;

procedure TCopyGrpchk.ExcludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(DstList);
  MoveSelected(DstList, SrcList.Items);
  SetItem(DstList, Index);
end;

procedure TCopyGrpchk.IncAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to SrcList.Items.Count - 1 do
    DstList.Items.AddObject(SrcList.Items[I],
      SrcList.Items.Objects[I]);
  SrcList.Items.Clear;
  SetItem(SrcList, 0);
end;

procedure TCopyGrpchk.ExcAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to DstList.Items.Count - 1 do
    SrcList.Items.AddObject(DstList.Items[I], DstList.Items.Objects[I]);
  DstList.Items.Clear;
  SetItem(DstList, 0);
end;

procedure TCopyGrpchk.MoveSelected(List: TCustomListBox; Items: TStrings);
var
  I: Integer;
begin
  for I := List.Items.Count - 1 downto 0 do
    if List.Selected[I] then
    begin
      Items.AddObject(List.Items[I], List.Items.Objects[I]);
      List.Items.Delete(I);
    end;
end;

procedure TCopyGrpchk.SetButtons;
var
  SrcEmpty, DstEmpty: Boolean;
begin
  SrcEmpty := SrcList.Items.Count = 0;
  DstEmpty := DstList.Items.Count = 0;
  IncludeBtn.Enabled := not SrcEmpty;
  IncAllBtn.Enabled := not SrcEmpty;
  ExcludeBtn.Enabled := not DstEmpty;
  ExAllBtn.Enabled := not DstEmpty;
end;

function TCopyGrpchk.GetFirstSelection(List: TCustomListBox): Integer;
begin
  for Result := 0 to List.Items.Count - 1 do
    if List.Selected[Result] then Exit;
  Result := LB_ERR;
end;

procedure TCopyGrpchk.SetItem(List: TListBox; Index: Integer);
var
  MaxIndex: Integer;
begin
  with List do
  begin
    SetFocus;
    MaxIndex := List.Items.Count - 1;
    if Index = LB_ERR then Index := 0
    else if Index > MaxIndex then Index := MaxIndex;
    Selected[Index] := True;
  end;
  SetButtons;
end;

procedure TCopyGrpchk.SpArClick(Sender: TObject);
Var S:String;
begin
  SrcList.Items.Clear;
    With Dm_SvSet.Query2 Do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT MDLCOD,KILOMT,DESCRP FROM GRPORD WHERE MDLCOD=:0 AND KILOMT=:1 ' );
      Params[0].Asstring := Edit1.Text;
      Params[1].AsFloat  := FmSvSt93.Grpmst.FieldByname('KILOMT').AsFloat;
      Open;
      If Dm_SvSet.Query2.Bof and Dm_SvSet.Query2.Eof Then
      SFMain.RaiseException('ยังไม่มีรายการตรวจเช็คตามระยะ');
    end;
    Dm_SvSet.Query2.First;
    While Not Dm_SvSet.Query2.Eof Do
    begin
      S :=Floattostr(Dm_SvSet.Query2.Fieldbyname('KILOMT').AsFloat)+', '+
        Dm_SvSet.Query2.Fieldbyname('Descrp').Asstring;
      SrcList.Items.Add(S);
      Dm_SvSet.Query2.Next;
    end;
end;

procedure TCopyGrpchk.OKBtnClick(Sender: TObject);
var
  I: Integer;
begin
  With QDst Do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPORD WHERE GCODE=:0');
    Params[0].Asstring :='';
    Open;
  end;

  for I := 0 to DstList.Items.Count - 1 do
  begin
    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM GRPORD WHERE KILOMT = :0 '+
      'AND MDLCOD=:1 AND DESCRP =:2');
      Params[0].Asfloat  := StrToint(COPY(DstList.Items[I],1,Pos(',',DstList.Items[I])-1));
      Params[1].Asstring := edit1.Text;
      Params[2].Asstring := Trim(COPY(DstList.Items[I],Pos(',',DstList.Items[I])+1,80-Pos(',',DstList.Items[I])));
      Open;
    end;
    if Not(Dm_SvSet.Query1.Bof and Dm_SvSet.Query1.eof) then
    begin
      QDst.Insert;
      QDst.Fieldbyname('Gcode').Asstring  := FmSvSt93.Grpmst.fieldbyname('GCODE').AsString;
      QDst.Fieldbyname('Mdlcod').Asstring := FmSvSt93.Grpmst.fieldbyname('MDLCOD').AsString;
      QDst.Fieldbyname('SVCODE').Asstring := Dm_SvSet.Query1.Fieldbyname('SVCODE').Asstring;
      QDst.Fieldbyname('KILOMT').AsFloat  := Dm_SvSet.Query1.Fieldbyname('KILOMT').AsFloat;
      QDst.Fieldbyname('Descrp').Asstring := Dm_SvSet.Query1.Fieldbyname('Descrp').Asstring;
      QDst.fieldbyname('Userid').AsString := SFMain.Xuser_ID;
      QDst.fieldbyname('Time1').AsDateTime:= Now;
      QDst.Post;
    end;
  end;
  Dm_SeC.HI_DBMS.ApplyUpdates([QDst]);
end;

procedure TCopyGrpchk.FormCreate(Sender: TObject);
begin
//  Edit1.Text := FmSvSt93.Grpmst.Fieldbyname('Mdlcod').asstring;
  Edit2.Text := FmSvSt93.Grpmst.Fieldbyname('Gcode').asstring;
end;



procedure TCopyGrpchk.Button1Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalmodel=Mrok Then
  begin
    eDit1.Text := fSrcDlg1.KeyNo;
  end;

end;

procedure TCopyGrpchk.RzRapidFireButton1Click(Sender: TObject);
begin
  Application.Createform(TfSrcDlg1,fSrcDlg1);
  If fSrcDlg1.ShowModalGrpMst=Mrok Then
  begin
    eDit2.Text := fSrcDlg1.KeyNo;
  end;

end;

end.
