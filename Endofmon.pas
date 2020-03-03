unit Endofmon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Gauges, Spin, DB, Grids, DBGrids, ImgList,
  ComCtrls, ToolWin, RzSpnEdt, cxLookAndFeelPainters, cxGroupBox, cxRadioGroup,
  cxCheckBox, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, AdvGlowButton, AdvToolBar, AdvPanel, cxGraphics,
  cxLookAndFeels, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  BusinessSkinForm;

type
  TFEndofmon = class(TForm)
    AdvPanel1: TAdvPanel;
    Label2: TLabel;
    Label3: TLabel;
    Gauge1: TGauge;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    SpinEdit2: TcxSpinEdit;
    SpinEdit1: TcxSpinEdit;
    CheckBox4: TcxCheckBox;
    CheckBox5: TcxCheckBox;
    RadioGroup1: TcxRadioGroup;
    Edit2: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit1: TcxButtonEdit;
    Qpart: TFDQuery;
    QStkcard: TFDQuery;
    QInvanls: TFDQuery;
    Query1: TFDQuery;
    Query2: TFDQuery;
    Qlocat: TFDQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    SaveBtn: TAdvGlowButton;
    CloseBtn: TAdvGlowButton;
    qrParttran: TFDQuery;
    Query3: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Edit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit2PropertiesChange(Sender: TObject);
    procedure Edit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Process;
  public
    { Public declarations }
  end;
    
var
  FEndofmon: TFEndofmon;

implementation
uses Dmic01,Functn01, Dmsec,uSrcDlg, USoftFirm;
{$R *.DFM}

procedure TFEndofmon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QInvanls.Close;
  QStkcard.Close;
  Qpart.Close;
  Query1.Close;
  Query2.Close;
  Action := Cafree;
  FEndofmon := nil;
end;

procedure TFEndofmon.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP02_3');
   //
   Label5.Caption    :='';
   FmDmic01.Condpay.Open;
   SpinEdit2.Value := Strtoint(FmDmic01.Condpay.FieldByname('Curyear').Asstring);
   SpinEdit1.Text  := FmDmic01.Condpay.FieldByname('CurMonth').Asstring;
end;

procedure TFEndofmon.SaveBtnClick(Sender: TObject);
Var K:Longint;
begin
  If (RadioGroup1.itemindex = 2) and (Edit1.Text='') Then
  SFMain.RaiseException('ยังไม่ระบุกลุ่มสินค้า');
  if CheckBox5.Checked Then
  For K:=SpinEdit1.Value to 12 Do
  begin
    SpinEdit1.Value:=K;
    SpinEdit1.Update;

    If CheckBox4.Checked Then Edit2.Text:='';
    Process;
  end
  Else
   Process;
  //

  Gauge1.Progress :=0;
  SaveBtn.Enabled    := True;
  CloseBtn.Enabled := True;
  CheckBox4Click(CheckBox4);

  Label5.Visible := True;
  Dm_sec.ChkRecent(SFMain.Xuser_ID,'FILE08_3','UPDATE','Update data');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TFEndofmon.Process;
Var P,M,I,Mon:Longint;
    MM : Array[1..12] of Integer;
    Allo,Onhn,Demn,Sale,Cost,Xpart,Xlocat,XFlg,YY : string;
    XBAL1,Baltot,XCost1,XQty,Newcost,Oldcost : Double;
    Fdate,Ldate:Tdatetime;
    Y1,Y2 : Real;
begin
  Label5.Caption    :='';
  With Qlocat Do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM INVLOCAT WHERE LOCATCD LIKE :EDIT ');
    Params[0].asstring:=Edit2.Text+'%';
    Open;
    If Bof and Eof Then
    SFMain.RaiseException('ไม่พบรหัสสาขา');
  end;

 Qlocat.First;
 While Not Qlocat.Eof Do
 Begin
   Edit2.Text:=Qlocat.fieldbyname('Locatcd').Asstring;
   Edit2.Update;

  Xyear  := SpinEdit2.Value; //Strtoint(Edit1.Text);
  MM[1] := 31;
  MM[2] := 28;
  MM[3] := 31;
  MM[4] := 30;
  MM[5] := 31;
  MM[6] := 30;
  MM[7] := 31;
  MM[8] := 31;
  MM[9] := 30;
  MM[10] := 31;
  MM[11] := 30;
  MM[12] := 31;

  Y1 := Xyear/4;
  Y2 := Round(Xyear/4);
  If Y1=Y2 Then
    MM[2] :=29
  Else
    MM[2] :=28;

  Mon := SpinEdit1.Value;
  M   := Mon;
  YY  := inttostr(SpinEdit2.Value);

  If M=1 Then M:=13 Else M:=M-1;
  Fdate := strtodate('01/'+Inttostr(Mon)+'/'+YY);
  Ldate := Strtodate(Inttostr(MM[Mon])+'/'+Inttostr(Mon)+'/'+YY);

  Gauge1.Visible := True;
  With Query1 Do
  begin
    Close;
    SQL.Clear;
    If RadioGroup1.itemindex = 0 Then
    Begin
      SQL.Add('SELECT LOC,PARTNO FROM STKCARD WHERE LOC=:EDIT1 '+
      'AND YEAR(STKDATE)=:EDIT2 AND MONTH(STKDATE)=:EDIT3 '+
      ' GROUP BY LOC,PARTNO');
      Params[0].asstring := EDIT2.TEXT ;
      Params[1].asfloat  := SpinEdit2.Value;
      Params[2].asfloat  := SpinEdit1.Value;
    End
    Else
    Begin
      Sql.add('SELECT A.LOCAT AS LOC,A.PARTNO FROM INVANLS A,INVENTOR B '+
      'WHERE (A.PARTNO=B.PARTNO) AND (A.LOCAT=B.LOCAT) AND '+
      'A.LOCAT=:EDIT1 AND A.YEAR1=:EDIT3 AND B.GROUP1 LIKE :EDIT4 AND '+
      'A.PARTNO LIKE :EDIT5 ');
      params[0].asstring := edit2.text;
      params[1].asstring := Floattostr(SpinEdit2.Value);
      params[2].asstring := edit1.text+'%';
      Params[3].asstring := EDIT3.TEXT+'%' ;
    End;

    OPEN;
  End;

  SaveBtn.Enabled := False;
  CloseBtn.Enabled := False;

  If not(Query1.Eof and Query1.Bof) Then
  begin
    Gauge1.MaxValue :=Query1.RecordCount;
    //If Gauge1.MaxValue>10 Then Gauge1.MaxValue:=Gauge1.MaxValue-10;
    P := 0;
    Query1.First;
    While Not Query1.Eof Do
    begin
      with QInvanls do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT * FROM INVANLS WHERE LOCAT=:EDIT1 AND YEAR1=:EDIT2 AND PARTNO=:XX');
        Params[0].asstring := Edit2.text;
        Params[1].asstring := Inttostr(SpinEdit2.Value);
        Params[2].asstring := Query1.Fieldbyname('Partno').asstring;
        Open;
      end;
      If Not(QInvanls.Bof and QInvanls.Eof) Then
      Begin
        Xpart := QInvanls.Fieldbyname('Partno').Asstring;
        XLocat:= QInvanls.Fieldbyname('Locat').Asstring;
        Allo := 'ALLO_'+inttostr(M);
        Onhn := 'ONHN_'+inttostr(M);
        Cost := 'COST_'+inttostr(M);

        XBAL1 := QInvanls.Fieldbyname(Allo).AsFloat;
        XCOST1:= QInvanls.Fieldbyname(Cost).AsFloat;
        Oldcost:= QInvanls.Fieldbyname(Cost).AsFloat;
        Newcost:= QInvanls.Fieldbyname(Cost).AsFloat;
        Baltot:= Xbal1*Xcost1;
        //If Baltot<0 Then Baltot:=0;

        with QStkcard do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM STKCARD WHERE LOC=:EDIT1 AND PARTNO=:EDIT2 AND '+
          'STKDATE>=:Edit4 AND STKDATE<=:EDIT5  ORDER BY LOC,PARTNO,STKDATE,TIME1');
          Params[0].asstring := XLocat;
          Params[1].asstring := Xpart;
          Params[2].asDATE   := Fdate;
          Params[3].asDATE   := Ldate;
          Open;
        end;

        If Not(QStkcard.Bof and QStkcard.Eof) Then
        Begin
          QStkcard.First;
          While Not QStkcard.Eof Do
          begin
            XFlg    := QStkcard.Fieldbyname('Flag').Asstring;
            Newcost := QStkcard.Fieldbyname('NetCost').AsFloat;
            XQty    := QStkcard.Fieldbyname('Qtyin').AsFloat-
                       QStkcard.Fieldbyname('Qtyout').AsFloat;
            Oldcost := Xcost1;

            If Xqty>0 Then
            begin
               If (Xbal1+Xqty)>0 Then
                  Xcost1 := ((Xbal1*Oldcost)+(Newcost*Xqty))/(Xbal1+Xqty)
               Else
               If Newcost>0 Then
                  Xcost1 := Newcost;
            end
            Else
            Xcost1 :=  Oldcost;

            {If (Xbal1+Xqty)<>0 Then
             Xcost1 := ((Xbal1*Oldcost)+(Newcost*Xqty))/(Xbal1+Xqty)
            Else
             Xcost1 := Newcost;
             }

            XBal1 := Xbal1+Xqty;

            QStkcard.Edit;
            QStkcard.Fieldbyname('Avgcost').AsFloat:= Xcost1;
            QStkcard.Post;
            //
            If (Xflg='1') or (Xflg='2') or (Xflg='3') or (Xflg='S') or (Xflg='R') Then
            Begin
              With Query2 Do
              Begin
                Close;
                Sql.Clear;
                Sql.Add('UPDATE PK_TRANS SET AVGCOST=:EDIT1 WHERE PKNO=:EDIT2 AND PARTNO=:EDIT3 AND PKDATE=:EDIT4');
                Params[0].asFloat    :=  Xcost1;
                Params[1].Asstring   := QStkcard.Fieldbyname('PKNO').Asstring;
                Params[2].Asstring   := QStkcard.Fieldbyname('PARTNO').Asstring;
                Params[3].Asdatetime := QStkcard.Fieldbyname('STKDATE').Asdatetime;
                ExecSql;
              end;

              If (Xflg='1') or (Xflg='2') Then
              With Query2 Do
              Begin
                Close;
                Sql.Clear;
                Sql.Add('UPDATE IC_TRANS SET AVGCOST=:EDIT1 WHERE INVNO=:EDIT2 AND PARTNO=:EDIT3 AND INVDATE=:EDIT4 AND INVLOC=:EDIT5 ');
                Params[0].asFloat    :=  Xcost1;
                Params[1].Asstring   := QStkcard.Fieldbyname('TAXNO').Asstring;
                Params[2].Asstring   := QStkcard.Fieldbyname('PARTNO').Asstring;
                Params[3].Asdatetime := QStkcard.Fieldbyname('TAXDATE').Asdatetime;
                Params[4].Asstring   := QStkcard.Fieldbyname('LOC').Asstring;
                ExecSql;
              end;

              If (Xflg='3') Then
              begin
                With Query2 Do
                Begin
                  Close;
                  Sql.Clear;
                  Sql.Add('UPDATE PARTTRAN SET AVGCOST=:EDIT1 WHERE JOBNO=:Edit2 and PKNO=:EDIT3 AND PARTNO=:EDIT4 ');
                  Params[0].asFloat    :=  Xcost1;
                  Params[1].Asstring   := QStkcard.Fieldbyname('JOBNO').Asstring;
                  Params[2].Asstring   := QStkcard.Fieldbyname('PKNO').Asstring;
                  Params[3].Asstring   := QStkcard.Fieldbyname('PARTNO').Asstring;
                  ExecSql;
                end;
              end;
            End;

            If (Xflg='4') or (Xflg='5') Then
            Begin
              With Query2 Do
              Begin
                Close;
                Sql.Clear;
                Sql.Add('UPDATE RC_TRANS SET AVGCOST=:EDIT1 WHERE RECVNO=:EDIT2 AND PARTNO=:EDIT3 AND TIME1=:EDIT4');
                Params[0].asFloat    :=  Xcost1;
                Params[1].Asstring   := QStkcard.Fieldbyname('PKNO').Asstring;
                Params[2].Asstring   := QStkcard.Fieldbyname('PARTNO').Asstring;
                Params[3].Asdatetime := QStkcard.Fieldbyname('TIME1').Asdatetime;
                ExecSql;
              end;
            End;
            If (Xflg='6') or (Xflg='7') Then
            Begin
              With Query2 Do
              Begin
                Close;
                Sql.Clear;
                Sql.Add('UPDATE RT_TRAN SET AVGCOST=:EDIT1 WHERE RTNNO=:EDIT2 AND PARTNO=:EDIT3 AND TIME1=:EDIT4');
                Params[0].asFloat    :=  Xcost1;
                Params[1].Asstring   := QStkcard.Fieldbyname('PKNO').Asstring;
                Params[2].Asstring   := QStkcard.Fieldbyname('PARTNO').Asstring;
                Params[3].Asdatetime := QStkcard.Fieldbyname('TIME1').Asdatetime;
                ExecSql;
              end;
            End;
            If (Xflg='T') or (Xflg='R') Then
            Begin
              With Query2 Do
              Begin
                Close;
                Sql.Clear;
                Sql.Add('UPDATE MV_TRANS SET AVGCOST=:EDIT1 WHERE MOVNO=:EDIT4 '+
                'AND PARTNO=:EDIT5 AND TIME1=:EDIT6');
                Params[0].asFloat    :=  Xcost1;
                Params[1].Asstring   := QStkcard.Fieldbyname('PKNO').Asstring;
                Params[2].Asstring   := QStkcard.Fieldbyname('PARTNO').Asstring;
                Params[3].Asdatetime := QStkcard.Fieldbyname('TIME1').Asdatetime;
                ExecSql;
              end;
            End;
            //
            QStkcard.Next;
          end;
          // ------ Update Master------
          With Query2 Do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('UPDATE INVENTOR SET COST=:EDIT1 WHERE LOCAT=:EDIT2 AND PARTNO=:EDIT3');
            Params[0].asFloat    := Xcost1;
            Params[1].Asstring   := XLOCAT;
            Params[2].Asstring   := XPART;
            ExecSql;
          end;
          With Query2 Do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('UPDATE INVMAST SET COST=:EDIT1 WHERE PARTNO=:EDIT3');
            Params[0].asFloat    := Xcost1;
            Params[1].Asstring   := XPART;
            ExecSql;
          end;
        end;
        // Update Invanls
        If Xcost1>0 Then
        Begin
          QInvanls.Edit;
          I := Mon;
          While I <= 12 do
          Begin
            Cost := 'Cost_'+inttostr(I);
            QInvanls.FieldByname(Cost).AsFloat := Xcost1;
            I := I + 1;
          end;
          QInvanls.Post;
        end;

        //
        Dm_Sec.HI_DBMS.ApplyUpdates([QInvanls,QStkcard]);
      end;
      //
      P := P+1;
      Gauge1.Progress := P;
      Query1.Next;
    end;
    FmDmic01.Condpay.Edit;
    If (Mon+1)<=12 Then
     FmDmic01.Condpay.FieldByname('CurMonth').Asstring := Inttostr(Mon+1);
    FmDmic01.Condpay.Post;
    //
    dm_sec.HI_DBMS.ApplyUpdates([FmDmic01.Condpay]);
  end;
  //
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    SQL.Add('UPDATE IC_INVOI SET TOTCOST=(SELECT SUM(QTYOUT*AVGCOST) '+
    'FROM IC_TRANS WHERE INVNO=IC_INVOI.INVNO) WHERE YEAR(INVDATE)=:1 '+
    'AND MONTH(INVDATE)=:2');
    Params[0].asfloat := SpinEdit2.Value;
    Params[1].asfloat := SpinEdit1.Value;
    ExecSql;
  END;
  //
  With Query1 Do
  Begin
    Close;
    Sql.Clear;
    SQL.Add('UPDATE JOBORDER SET PARTCOST=(SELECT SUM(QTY*AVGCOST) '+
    'FROM PARTTRAN WHERE JOBNO=JOBORDER.JOBNO) WHERE YEAR(RECVDATE)=:1 '+
    'AND MONTH(RECVDATE)=:2');
    Params[0].asfloat := SpinEdit2.Value;
    Params[1].asfloat := SpinEdit1.Value;
    ExecSql;
  END;

  Qlocat.Next;
 end;
end;


procedure TFEndofmon.RadioGroup1Click(Sender: TObject);
begin
  Edit1.Text :='';
  Edit3.Text :='';

  Label1.Enabled := RadioGroup1.itemindex = 1;
  Edit3.Enabled  := Label1.Enabled;

  Label7.Enabled := RadioGroup1.itemindex = 2;
  Edit1.Enabled  := Label7.Enabled;
end;

procedure TFEndofmon.FormShow(Sender: TObject);
begin
  RadioGroup1Click(Sender);
end;

procedure TFEndofmon.CheckBox4Click(Sender: TObject);
begin
  Edit2.Properties.Readonly   := CheckBox4.Checked;
  If CheckBox4.Checked Then Edit2.Text:='';
  SaveBtn.Enabled := CheckBox4.Checked;
end;

procedure TFEndofmon.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TFEndofmon.Edit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
     Edit2.Text := fSrcDlg.Keyno;
end;

procedure TFEndofmon.Edit2PropertiesChange(Sender: TObject);
begin
  SaveBtn.Enabled := Edit2.Text<>'';
end;

procedure TFEndofmon.Edit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
  Edit3.Text := fSrcDlg.Keyno;
end;

procedure TFEndofmon.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalGroup=Mrok Then
  Edit1.Text := fSrcDlg.Keyno;
end;

procedure TFEndofmon.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End;
end;

end.


