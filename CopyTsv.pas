unit CopyTsv;
                                           
interface

uses Windows,Messages, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Dialogs,
  Buttons, Mask, DBCtrls, DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCopyTabserv = class(TForm)
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
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    QDst: TFDQuery;
    procedure IncludeBtnClick(Sender: TObject);
    procedure ExcludeBtnClick(Sender: TObject);
    procedure IncAllBtnClick(Sender: TObject);
    procedure ExcAllBtnClick(Sender: TObject);
    procedure MoveSelected(List: TCustomListBox; Items: TStrings);
    procedure SetItem(List: TListBox; Index: Integer);
    function GetFirstSelection(List: TCustomListBox): Integer;
    procedure SetButtons;
    procedure SpArClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CopyTabserv: TCopyTabserv;

implementation
uses DmSvSet,Srchdlg, Dmsec, USoftFirm;
{$R *.DFM}

procedure TCopyTabserv.IncludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(SrcList);
  with Dm_SvSet.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TBLABOR WHERE SVCODE = :XCOD '+
    'AND MDLCOD=:MDCOD');
    Params[0].Asstring := COPY(SrcList.Items[index],1,Pos(',',SrcList.Items[index])-1) ;
    Params[1].Asstring := EDIT2.TEXT ;
    Open;
  end;
  if Not(Dm_SvSet.Query1.Bof and Dm_SvSet.Query1.eof) then
  SFMain.RaiseException('มีรหัสนี้แล้วในแฟ้มข้อมูล');

  MoveSelected(SrcList, DstList.Items);
  SetItem(SrcList, Index);
end;

procedure TCopyTabserv.ExcludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(DstList);
  MoveSelected(DstList, SrcList.Items);
  SetItem(DstList, Index);
end;

procedure TCopyTabserv.IncAllBtnClick(Sender: TObject);
var
  I: Integer;
begin

  for I := 0 to SrcList.Items.Count - 1 do
    DstList.Items.AddObject(SrcList.Items[I],
      SrcList.Items.Objects[I]);
  SrcList.Items.Clear;
  SetItem(SrcList, 0);
end;

procedure TCopyTabserv.ExcAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to DstList.Items.Count - 1 do
    SrcList.Items.AddObject(DstList.Items[I], DstList.Items.Objects[I]);
  DstList.Items.Clear;
  SetItem(DstList, 0);
end;

procedure TCopyTabserv.MoveSelected(List: TCustomListBox; Items: TStrings);
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

procedure TCopyTabserv.SetButtons;
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

function TCopyTabserv.GetFirstSelection(List: TCustomListBox): Integer;
begin
  for Result := 0 to List.Items.Count - 1 do
    if List.Selected[Result] then Exit;
  Result := LB_ERR;
end;

procedure TCopyTabserv.SetItem(List: TListBox; Index: Integer);
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

procedure TCopyTabserv.SpArClick(Sender: TObject);
Var S:String;
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalModel=Mrok Then
  begin
    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD =:EDIT1');
      Params[0].Asstring := SearchDlg.KeyNo;
      Open;
    end;
    if Dm_SvSet.Query1.Bof and Dm_SvSet.Query1.Eof then
    SFMain.RaiseException('ไม่พบข้อมูล');
    Edit1.Text := Dm_SvSet.Query1.Fieldbyname('MODELCOD').Asstring;
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
          Dm_SvSet.Query2.Fieldbyname('DescP').Asstring;
      SrcList.Items.Add(S);
      Dm_SvSet.Query2.Next;
    end;
  End;
end;

procedure TCopyTabserv.SpeedButton1Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalModel=Mrok Then
  begin
    with Dm_SvSet.Query1 do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM SETMODEL WHERE MODELCOD =:EDIT1');
      Params[0].Asstring := SearchDlg.KeyNo;
      Open;
    end;
    if Dm_SvSet.Query1.Bof and Dm_SvSet.Query1.Eof then
    SFMain.RaiseException('ไม่พบข้อมูล');
    Edit2.Text := Dm_SvSet.Query1.Fieldbyname('MODELCOD').Asstring;
  End;
end;

procedure TCopyTabserv.OKBtnClick(Sender: TObject);
var
  I: Integer;
begin
  If Edit2.Text='' Then
  begin
    Edit2.Setfocus;
    SFMain.RaiseException('ยังไม่บันทึกช่องไปยังรุ่น');
  end;
  With QDst Do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM TBLABOR WHERE SVCODE=:EDIT1');
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
      with Dm_SvSet.Query2 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM TBLABOR WHERE SVCODE = :XCOD '+
        'AND MDLCOD=:MDCOD');
        Params[0].Asstring := COPY(DstList.Items[I],1,Pos(',',DstList.Items[I])-1) ;
        Params[1].Asstring := EDIT2.TEXT ;
        Open;
      end;
      if (Dm_SvSet.Query2.Bof and Dm_SvSet.Query2.eof) then
      begin
        QDst.Insert;
        QDst.Fieldbyname('Svcode').Asstring:=Dm_SvSet.Query1.Fieldbyname('Svcode').Asstring;
        QDst.Fieldbyname('Mdlcod').Asstring:=Edit2.Text;
        QDst.Fieldbyname('Descp').Asstring  :=Dm_SvSet.Query1.Fieldbyname('Descp').Asstring;
        QDst.Fieldbyname('SvPric').AsFloat:=Dm_SvSet.Query1.Fieldbyname('SvPric').Asfloat;
        QDst.Fieldbyname('FRT').AsFloat:=Dm_SvSet.Query1.Fieldbyname('Frt').Asfloat;
        QDst.Post;
      end;
    end;
  end;
  Dm_Sec.hi_dbms.ApplyUpdates([QDst]);
end;

end.
