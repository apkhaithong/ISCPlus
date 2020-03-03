unit Chgpart;
          
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ComCtrls, StdCtrls, Dbkbd, Db, ExtCtrls, RzButton, RzPanel, RzRadGrp,
  RzPrgres, RzSpnEdt, cxLookAndFeelPainters, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm;

type
  TFChgpartno = class(TForm)
    AdvPanel1: TAdvPanel;
    Label40: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    ProgressBar1: TRzProgressBar;
    RadioGroup1: TcxRadioGroup;
    Edit1: TcxButtonEdit;
    Edit2: TcxTextEdit;
    Edit5: TcxButtonEdit;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    QLocat: TFDQuery;
    QInvanls: TFDQuery;
    Query2: TFDQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel3: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    ProcBtn1: TAdvGlowButton;
    BtnClose: TAdvGlowButton;
    procedure ProcBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit5ButtonClick(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure Edit5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit5PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChgpartno: TFChgpartno;
  XYear:String;
  M :Integer;
  Cost2,Allo2 : Array[1..12] of Double;

implementation
uses Dmset1,USoftFirm,uFindDLG, Dmsec,uSrcDLG;
{$R *.DFM}

procedure TFChgpartno.ProcBtn1Click(Sender: TObject);
Var NewCost:Double;
    XOnhn,XAllo,XCost:String;
begin
  If Edit1.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้าเดิม');
  If Edit5.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสสินค้าใหม่');

  If RadioGroup1.Itemindex =1 then
  begin
    With Qlocat Do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM LOCATMST ');
      Open;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่พบรหัสสาขา');
    end;
    //
    With Query1 Do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT Partno FROM INVENTOR WHERE PARTNO=:1 ');
      Params[0].AsString := Edit5.Text;
      Open;
      If Bof and Eof Then
      SFMain.RaiseException('ไม่พบรหัสสินค้าใหม่');
    end;

  end;

  ProgressBar1.Percent := 4;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ADJ_TRANS SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 8;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE GRPPART SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 12;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE IC_TRANS SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 16;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE MV_TRANS SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 20;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE PK_TRANS SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 24;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE PO_TRANS SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 28;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE QATRANS SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 32;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE QA_TRAN SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 36;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE RC_TRANS SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 40;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE RT_TRAN SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 44;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE PARTTRAN SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 50;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE SV_ORDTN SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 54;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE TMPAJTR SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 58;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE STKCARD SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 62;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANAJTR SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 64;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANRCTR SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 68;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANRTTR SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 72;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANPKTR SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 76;
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE CANICTR SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
    Params[0].asstring := EDIT5.TEXT;
    Params[1].asstring := EDIT1.TEXT;
    ExecSql;
  End;
  ProgressBar1.Percent := 82;

  If RadioGroup1.Itemindex =0 then
  Begin
    With Query1 Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE INVANLS SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
      Params[0].asstring := EDIT5.TEXT;
      Params[1].asstring := EDIT1.TEXT;
      ExecSql;
    End;
    ProgressBar1.Percent := 86;
    With Query1 Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE INVENTOR SET PARTCHG=PARTNO,LASTCHG=CURRENT DATE WHERE PARTNO=:EDIT2 ');
      Params[0].asstring := EDIT1.TEXT;
      ExecSql;
      //
      Close;
      SQL.Clear;
      SQL.Add('UPDATE INVENTOR SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
      Params[0].asstring := EDIT5.TEXT;
      Params[1].asstring := EDIT1.TEXT;
      ExecSql;
    End;
    ProgressBar1.Percent := 92;
    With Query1 Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE INVMAST SET PARTCHG=PARTNO,LASTCHG=CURRENT DATE WHERE PARTNO=:EDIT2 ');
      Params[0].asstring := EDIT1.TEXT;
      ExecSql;
      //
      Close;
      SQL.Clear;
      SQL.Add('UPDATE INVMAST SET PARTNO=:EDIT1 WHERE PARTNO=:EDIT2 ');
      Params[0].asstring := EDIT5.TEXT;
      Params[1].asstring := EDIT1.TEXT;
      ExecSql;
    End;
    ProgressBar1.Percent := 98;
  End;
  //
  If RadioGroup1.Itemindex =1 then
  begin
   { QLocat.First;
    While Not QLocat.Eof Do
    Begin
      With Query1 Do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM INVANLS WHERE PARTNO=:EDIT AND YEAR1=:YY AND LOCAT=:XLOC');
        Params[0].asstring := EDIT5.TEXT;
        Params[1].asstring := XYEAR;
        Params[2].asstring := QLocat.fIELDBYNAME('Locatcod').Asstring;
        Open;
        For M:=1 to 12 do
        begin
          XCost := 'Cost_'+inttostr(M);
          XAllo := 'Allo_'+inttostr(M);
          Cost2[M] := Query1.Fieldbyname(XCost).Asfloat;
          Allo2[M] := Query1.Fieldbyname(XAllo).Asfloat;
        end;
        //
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM INVANLS WHERE PARTNO=:EDIT AND YEAR1=:YY AND LOCAT=:XLOC');
        Params[0].asstring := EDIT1.TEXT;
        Params[1].asstring := XYEAR;
        Params[2].asstring := QLocat.fIELDBYNAME('Locatcod').Asstring;
        Open;
        If Not(Bof and Eof) Then
        Begin
          For M:=1 to 12 do
          begin
            XOnhn := 'Onhn_'+inttostr(M);
            XAllo := 'Allo_'+inttostr(M);
            XCost := 'Cost_'+inttostr(M);
            With Query2 Do
            Begin
              Close;
              SQL.Clear;
              SQL.Add('UPDATE INVANLS SET '+Xonhn+'='+XOnhn+'+:Onhn WHERE PARTNO=:EDIT AND YEAR1=:YY AND LOCAT=:XLOC');
              Params[0].asFloat := Query1.Fieldbyname(XOnhn).Asfloat;
              Params[1].asstring := EDIT5.TEXT;
              Params[2].asstring := XYEAR;
              Params[3].asstring := QLocat.fIELDBYNAME('Locatcod').Asstring;
              ExEcsql;
            end;

            With Query2 Do
            Begin
              Close;
              SQL.Clear;
              SQL.Add('UPDATE INVANLS SET '+XAllo+'='+XAllo+'+:Allo WHERE PARTNO=:EDIT AND YEAR1=:YY AND LOCAT=:XLOC');
              Params[0].asFloat := Query1.Fieldbyname(XAllo).Asfloat;
              Params[1].asstring := EDIT5.TEXT;
              Params[2].asstring := XYEAR;
              Params[3].asstring := QLocat.fIELDBYNAME('Locatcod').Asstring;
              ExEcsql;
            end;
            //
            Try
              NewCost :=((Cost2[M]*Allo2[M])+(Query1.Fieldbyname(XCost).Asfloat*Query1.Fieldbyname(XAllo).Asfloat))/(Allo2[M]+Query1.Fieldbyname(XAllo).Asfloat);
            Except
              NewCost :=0;
            End;
            With Query2 Do
            Begin
              Close;
              SQL.Clear;
              SQL.Add('UPDATE INVANLS SET '+XCost+'=:Cost WHERE PARTNO=:EDIT AND YEAR1=:YY AND LOCAT=:XLOC');
              Params[0].asFloat := NewCost;
              Params[1].asstring := EDIT5.TEXT;
              Params[2].asstring := XYEAR;
              Params[3].asstring := QLocat.fIELDBYNAME('Locatcod').Asstring;
              ExEcsql;
            end;
          end;
        end;
      End;
      QLocat.Next;
    end;
    }
    With Query1 Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM INVMAST WHERE PARTNO=:EDIT');
      Params[0].asstring := EDIT1.TEXT;
      ExecSql;
    End;

    With Query1 Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM INVENTOR WHERE PARTNO=:EDIT');
      Params[0].asstring := EDIT1.TEXT;
      ExecSql;
    End;

    With Query1 Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM INVANLS WHERE PARTNO=:EDIT AND YEAR1=:YY');
      Params[0].asstring := EDIT1.TEXT;
      Params[1].asstring := XYEAR;
      ExecSql;
    End;
   {
    With Query1 Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE INVANLS SET USERID=:1,TIME1=:2 WHERE PARTNO=:EDIT ');
      Params[0].asstring   := Mainform.Xuser_Id;
      Params[1].asDateTime := Now;
      Params[2].asstring   := EDIT1.TEXT;
      ExecSql;
    End;
    }
  end;

  ProgressBar1.Percent := 100;
  ProgressBar1.Percent := 0;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit5.Text := '';
  Dm_sec.ChkRecent(SFMain.Xuser_ID, 'FILE08_10', 'UPDATE', 'Update data');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;


procedure TFChgpartno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  FChgpartno := nil;
end;

procedure TFChgpartno.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP02_9');
  RadioGroup1.itemindex :=0;
  If Not Dm_set1.Condpay.Active Then Dm_set1.Condpay.Open;
  Xyear := Dm_set1.Condpay.Fieldbyname('Curyear').Asstring;
end;


procedure TFChgpartno.Edit1ButtonClick(Sender: TObject);
begin
  Application.Createform(TfFindDLG,fFindDLG);
  If fFindDLG.ShowModalINVENTOR=Mrok Then
  Edit1.Text := fFindDLG.Keyno;
end;

procedure TFChgpartno.Edit1Change(Sender: TObject);
begin
  ProcBtn1.Enabled := Edit1.Text<>'';
end;

procedure TFChgpartno.Edit5ButtonClick(Sender: TObject);
begin
  Application.Createform(TfFindDLG,fFindDLG);
  If fFindDLG.ShowModalINVENTOR=Mrok Then
  Edit5.Text := fFindDLG.Keyno;
end;

procedure TFChgpartno.Edit3Exit(Sender: TObject);
begin
  If Edit1.Text<>'' Then
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2');
    Params[0].asstring := EDIT1.Text;
    Params[1].asstring := SFMAIN.Xlocat;
    Open;
    If Query1.Bof and Query1.Eof Then
    begin
      Edit1.Setfocus;
      SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end;
    Edit2.Text := Query1.Fieldbyname('DESC1').asstring;
  End;
end;

procedure TFChgpartno.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFChgpartno.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End;
end;

procedure TFChgpartno.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
     Edit1.Text := fSrcDlg.Keyno;
end;

procedure TFChgpartno.Edit1PropertiesChange(Sender: TObject);
begin
  ProcBtn1.Enabled := Edit1.Text<>'';

  If Edit1.Text<>'' Then
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2');
    Params[0].asstring := EDIT1.Text;
    Params[1].asstring := SFMAIN.Xlocat;
    Open;
    If Query1.Bof and Query1.Eof Then
    begin
      Edit1.Setfocus;
      SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end;
    Edit2.Text := Query1.Fieldbyname('DESC1').asstring;
  End;  
end;

procedure TFChgpartno.Edit5PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  {Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
     Edit5.Text := fSrcDlg.Keyno;  }
end;

procedure TFChgpartno.Edit5PropertiesChange(Sender: TObject);
begin
  {If Edit1.Text<>'' Then
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PARTNO,DESC1 FROM INVENTOR WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2');
    Params[0].asstring := EDIT5.Text;
    Params[1].asstring := SFMAIN.Xlocat;
    Open;
    If Query1.Bof and Query1.Eof Then
    begin
      Edit1.Setfocus;
      SFMain.RaiseException('ไม่พบรหัสสินค้า');
    end;
    Edit3.Text := Query1.Fieldbyname('DESC1').asstring;
  End;  }
end;

end.
