unit Copygsv;

interface

uses Windows,Messages, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Dialogs,
  Buttons, Mask, DBCtrls, DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCopyGrpserv = class(TForm)
    OKBtn: TButton;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CopyGrpserv: TCopyGrpserv;

implementation
uses DmSvSet,Srchdlg, Dmsec, USoftFirm;
{$R *.DFM}

procedure TCopyGrpserv.IncludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(SrcList);
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPSERV WHERE SVCODE = :XCOD '+
    'AND MDLCOD=:MDCOD AND GCODE=:GCOD');
    Params[0].Asstring := COPY(SrcList.Items[index],1,Pos(',',SrcList.Items[index])-1) ;
    Params[1].Asstring := EDIT1.TEXT ;
    Params[2].Asstring := EDIT2.TEXT;
    Open;
  end;
  if Not(Dm_SvSet.Query1.Bof and Dm_SvSet.Query1.eof) then
  SFMain.RaiseException('มีรหัสนี้แล้วในแฟ้มข้อมูล');

  MoveSelected(SrcList, DstList.Items);
  SetItem(SrcList, Index);
end;

procedure TCopyGrpserv.ExcludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(DstList);
  MoveSelected(DstList, SrcList.Items);
  SetItem(DstList, Index);
end;

procedure TCopyGrpserv.IncAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to SrcList.Items.Count - 1 do
    DstList.Items.AddObject(SrcList.Items[I],
      SrcList.Items.Objects[I]);
  SrcList.Items.Clear;
  SetItem(SrcList, 0);
end;

procedure TCopyGrpserv.ExcAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to DstList.Items.Count - 1 do
    SrcList.Items.AddObject(DstList.Items[I], DstList.Items.Objects[I]);
  DstList.Items.Clear;
  SetItem(DstList, 0);
end;

procedure TCopyGrpserv.MoveSelected(List: TCustomListBox; Items: TStrings);
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

procedure TCopyGrpserv.SetButtons;
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

function TCopyGrpserv.GetFirstSelection(List: TCustomListBox): Integer;
begin
  for Result := 0 to List.Items.Count - 1 do
    if List.Selected[Result] then Exit;
  Result := LB_ERR;
end;

procedure TCopyGrpserv.SetItem(List: TListBox; Index: Integer);
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

procedure TCopyGrpserv.SpArClick(Sender: TObject);
Var S:String;
begin
  SrcList.Items.Clear;
    With Dm_SvSet.Query2 Do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT SVCODE,MDLCOD,DESCP FROM TBLABOR WHERE MDLCOD=:EDIT1');
      Params[0].Asstring := Edit1.Text;
      Open;
      If Dm_SvSet.Query2.Bof and Dm_SvSet.Query2.Eof Then
      SFMain.RaiseException('ยังไม่มีรายการอัตราค่าบริการ');
    end;
    Dm_SvSet.Query2.First;
    While Not Dm_SvSet.Query2.Eof Do
    begin
      S :=Dm_SvSet.Query2.Fieldbyname('Svcode').Asstring+', '+
        Dm_SvSet.Query2.Fieldbyname('Descp').Asstring;
      SrcList.Items.Add(S);
      Dm_SvSet.Query2.Next;
    end;
end;

procedure TCopyGrpserv.OKBtnClick(Sender: TObject);
var
  I: Integer;
begin
  With QDst Do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM GRPSERV WHERE GCODE=:EDIT1');
    Params[0].Asstring :='';
    Open;
  end;

  for I := 0 to DstList.Items.Count - 1 do
  begin
    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM TBLABOR WHERE SVCODE = :XCOD '+
      'AND MDLCOD=:MDCOD');
      Params[0].Asstring := COPY(DstList.Items[I],1,Pos(',',DstList.Items[I])-1) ;
      Params[1].Asstring := EDIT1.TEXT ;
      Open;
    end;
    if Not(Dm_SvSet.Query1.Bof and Dm_SvSet.Query1.eof) then
    begin
      QDst.Insert;
      QDst.Fieldbyname('Gcode').Asstring := EDIT2.TEXT;
      QDst.Fieldbyname('Svcode').Asstring:= Dm_SvSet.Query1.Fieldbyname('Svcode').Asstring;
      QDst.Fieldbyname('Mdlcod').Asstring:= Edit1.Text;
      QDst.Fieldbyname('Desc1').Asstring := Dm_SvSet.Query1.Fieldbyname('DescP').Asstring;
      QDst.Post;
    end;
  end;
  Dm_SeC.HI_DBMS.ApplyUpdates([QDst]);
  Dm_SvSet.TGrpServ.Refresh;
end;

procedure TCopyGrpserv.FormCreate(Sender: TObject);
begin
  Edit1.Text := Dm_SvSet.Grpmst.Fieldbyname('Mdlcod').asstring;
  Edit2.Text := Dm_SvSet.Grpmst.Fieldbyname('Gcode').asstring;
end;


end.
