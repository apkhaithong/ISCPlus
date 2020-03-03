unit uFindDLG;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DB, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  RzDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfFindDLG = class(TForm)
    DataSource: TDataSource;
    qrFindDat: TFDQuery;
    Panel1: TPanel;
    Label1: TLabel;
    SearchButton: TSpeedButton;
    Panel3: TPanel;
    Bevel1: TBevel;
    OKBtn: TButton;
    CancelBtn: TButton;
    OrderCombo: TComboBox;
    SearchEd: TEdit;
    DBGrid1: TRzDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    NewKeyno,Xsrch,XSysSet,ClsStatus,Flag_a: string;
    property Keyno: string read GetKeyno;
    function ShowModalINVMAST: Integer;
    function ShowModalCODET: Integer;
    function ShowModalINVENTOR: Integer;
    function ShowModalRtinv: Integer;
    function showModalpk: integer;
    function ShowLocatMast: Integer;
  end;

var
  fFindDLG: TfFindDLG;

  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;

implementation
uses USoftFirm, Dmsec;

{$R *.DFM}

function TfFindDLG.ShowModalINVMAST: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 0;
  Title[0]  := 'รหัสอะไหล่';
  Title[1]  := 'ชื่ออะไหล่';
  Title[2]  := 'เบอร์แทน';

  Fldgrd[0] := 'PARTNO';
  Fldgrd[1] := 'DESC1';
  Fldgrd[2] := 'CODE_T';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัสพนักงาน';
  Result := ShowModal;
end;

function TfFindDLG.ShowModalCODET: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 1;
  Title[0]  := 'รหัสเบอร์แทน';
  Title[1]  := 'ชื่ออะไหล่';
  Title[2]  := 'รหัสอะไหล่';

  Fldgrd[0] := 'CODE_T';
  Fldgrd[1] := 'DESC1';
  Fldgrd[2] := 'PARTNO';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัสเบอร์แทน';
  Result := ShowModal;
end;

function TfFindDLG.ShowModalINVENTOR: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 2;
  Title[0]  := 'รหัสอะไหล่';
  Title[1]  := 'ชื่ออะไหล่';

  Fldgrd[0] := 'PARTNO';
  Fldgrd[1] := 'DESC1';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัสพนักงาน';
  Result := ShowModal;
end;

function TfFindDLG.ShowModalRtinv: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 3;
  Title[0]  := 'เลขที่ใบคืน';
  Title[1]  := 'วันที่คืน';
  Title[2]  := 'เลขที่ใบกำกับ';
  Title[3]  := 'เลขที่ใบลดหนี้';
  Title[4]  := 'เลขที่ Job';

  Fldgrd[0] := 'RTNNO';
  Fldgrd[1] := 'RTNDT';
  Fldgrd[2] := 'TAXREFNO';
  Fldgrd[3] := 'CREDNO';
  Fldgrd[4] := 'JOBNO';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหาใบลดหนี้ ';
  Result := ShowModal;
end;

function TffindDlg.ShowModalPk: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 4;
  Title[0]  := 'เลขที่ใบเบิก';
  Title[1]  := 'วันที่';
  Title[2]  := 'รหัสลูกค้า';
  Title[3]  := 'เลขที่Job';
  Title[4]  := 'เลขที่ใบกำกับ';

  Fldgrd[0] := 'PKNO';
  Fldgrd[1] := 'PKDATE';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'JOBNO';
  Fldgrd[4] := 'REFNO';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหาใบเบิก';
  Result := ShowModal;
end;

function TffindDlg.ShowLocatMast: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 5;
  Title[0]  := 'รหัสสาขา';
  Title[1]  := 'ชื่อ';

  Fldgrd[0] := 'LOCATCOD';
  Fldgrd[1] := 'LOCATNAM';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'ค้นหารหัสสาขา';
  Result := ShowModal;
end;

function TfFindDLG.GetKeyno: string;
begin
  If qrFindDat.Active Then
  Case OrderCombo.Tag Of
   0 :Result := qrFindDat.Fieldbyname('PARTNO').Asstring;
   1 :Result := qrFindDat.Fieldbyname('PARTNO').Asstring;
   2 :Result := qrFindDat.Fieldbyname('PARTNO').Asstring;
   3 :Result := qrFindDat.Fieldbyname('RTNNO').Asstring;
   4 :Result := qrFindDat.Fieldbyname('PKNO').Asstring;
   5 :Result := qrFindDat.Fieldbyname('LOCATCOD').Asstring;
  end;
end;

procedure TfFindDLG.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfFindDLG.SearchButtonClick(Sender: TObject);
VAR sqltxt : String;
begin
  With qrFindDat Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
   0:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT PARTNO,DESC1,CODE_T FROM INVMAST WHERE PARTNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT DESC1,PARTNO,CODE_T FROM INVMAST WHERE DESC1 LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT CODE_T,PARTNO,DESC1 FROM INVMAST WHERE CODE_T LIKE :EDIT1');
      qrFindDat.Params[0].Asstring := Uppercase(SearchEd.Text+'%');
      qrFindDat.Open;
      end;
   1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT CODE_T,DESC1,PARTNO FROM INVMAST WHERE CODE_T LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT DESC1,CODE_T,PARTNO FROM INVMAST WHERE DESC1 LIKE :EDIT1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT PARTNO,CODE_T,DESC1 FROM INVMAST WHERE PARTNO LIKE :EDIT1');
      qrFindDat.Params[0].Asstring := Uppercase(SearchEd.Text+'%');
      qrFindDat.Open;
      end;
   2:begin
        Sqltxt :='SELECT  A.PARTNO,A.DESC1,A.GROUP1,A.PRICE1,A.MODEL,A.CODE_T,B.ALLO_12 FROM INVENTOR A,INVANLS B WHERE (A.PARTNO=B.PARTNO) AND (A.LOCAT=B.LOCAT) AND (A.YEAR1=B.YEAR1) AND ';
        If OrderCombo.Itemindex=0 Then
        SQL.ADD(sqltxt+'A.PARTNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.PARTNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD(sqltxt+'A.DESC1 LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2 ORDER BY A.DESC1');
      qrFindDat.Params[0].Asstring := Uppercase(SearchEd.Text+'%');
      qrFindDat.Params[1].AsString := SFMain.Xlocat+'%';
      qrFindDat.Open;
      end;
   3:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT RTNNO,RTNDT,TAXREFNO,CREDNO,JOBNO FROM RT_INVOI WHERE RTNNO LIKE :EDIT1 AND FLAG=:EDIT2 ORDER BY RTNNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT RTNNO,RTNDT,TAXREFNO,CREDNO,JOBNO FROM RT_INVOI WHERE TAXREFNO LIKE :EDIT1 AND FLAG=:EDIT2 ORDER BY TAXREFNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT RTNNO,RTNDT,TAXREFNO,CREDNO,JOBNO FROM RT_INVOI WHERE CREDNO LIKE :EDIT1 AND FLAG=:EDIT2 ORDER BY CREDNO');

        qrFindDat.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        qrFindDat.Params[1].Asstring := Flag_a;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
   4:Begin
        Sqltxt :='SELECT PKNO,PKDATE,CUSCOD,JOBNO,REFNO FROM PK_INVOI ';
        If Flag_A ='1' Then
        Begin
          If OrderCombo.Itemindex=0 Then
          SQL.ADD( Sqltxt+'WHERE PKNO LIKE :EDIT1  AND  (FLAG=''0'' OR FLAG=''2'' OR FLAG=:EDIT2) ');
          If OrderCombo.Itemindex=1 Then
          SQL.ADD( Sqltxt+'WHERE CUSCOD LIKE :EDIT1 AND (FLAG=''0'' OR FLAG=''2'' OR FLAG=:EDIT2)');
          If OrderCombo.Itemindex=2 Then
          SQL.ADD( Sqltxt+'WHERE JOBNO LIKE :EDIT1  AND (FLAG=''0'' OR FLAG=''2'' OR FLAG=:EDIT2)');
        End
        Else
        Begin
          If OrderCombo.Itemindex=0 Then
          SQL.ADD( Sqltxt+'WHERE PKNO LIKE :EDIT1   AND  FLAG=:EDIT2');
          If OrderCombo.Itemindex=1 Then
          SQL.ADD( Sqltxt+'WHERE CUSCOD LIKE :EDIT1 AND FLAG=:EDIT2');
          If OrderCombo.Itemindex=2 Then
          SQL.ADD( Sqltxt+'WHERE JOBNO LIKE :EDIT1  AND FLAG=:EDIT2');
        End;
        qrFindDat.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
        qrFindDat.Params[1].Asstring := Flag_a;
        If Not qrFindDat.Prepared Then qrFindDat.Prepare;
        qrFindDat.Open;
      end;
    5: Begin
        If OrderCombo.ItemIndex=0 Then
        SQL.Add('SELECT * FROM LOCATMST WHERE LOCATCOD LIKE :EDIT1');
        IF OrderCombo.ItemIndex=1 Then
        sql.Add('SELECT * FROM LOCATMST WHERE LOCATNAM LIKE :EDIT1');
        qrFindDat.Params[0].Asstring := Uppercase(SearchEd.Text+'%');
        qrFindDat.Open;
       End; 
   end;
 End;
end;

procedure TfFindDLG.OrderComboChange(Sender: TObject);
Var I,K:word;
    T1,F1 :String;
begin
  SearchEd.Text := '';
  k:=0;
  I:=0;
  While (I<=Max)  Do
  begin
    If (Title[I]=OrderCombo.Text) Then
    begin
      K :=I;
      Break;
    end;
    I:=I+1;
  end;

  T1        := Title[0];
  Title[0]  := Title[K];
  Title[k]  := T1;

  F1        := Fldgrd[0];
  Fldgrd[0] := Fldgrd[K];
  Fldgrd[k] := F1;
  Dbgrid1.Columns.Clear;
  for I:=0 To Max Do
  begin
    Dbgrid1.Columns.Add.Fieldname    := Fldgrd[I];
    Dbgrid1.Columns[I].Title.Caption := Title[I];
    If Fldgrd[I] = 'NAME1' Then
      Dbgrid1.Columns[I].Width := 80;
  end;
end;

procedure TfFindDLG.SearchEdChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
  SearchButtonClick(Sender);
end;


procedure TfFindDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfFindDLG.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TfFindDLG.CalcMax;
begin
  { ** Field Name & Title** }
  I:=0;
  While I<=10 Do
  begin
    Dbgrid1.Columns.Add.Fieldname    := Fldgrd[I];
    Dbgrid1.Columns[I].Title.Caption := Title[I];
    If Fldgrd[I]='' Then
    begin
     Max:=I-1;
     If Max<0 Then Max:=0;
     break;
    end;
    I:=I+1;
  end;
end;

procedure TfFindDLG.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=10 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;
end;

procedure TfFindDLG.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
      SearchButtonClick(Sender);
      DbGrid1.SetFocus;
   End;
end;

procedure TfFindDLG.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
       OKBtn.Click;
   End;

end;

end.
