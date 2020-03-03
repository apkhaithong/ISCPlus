unit DlgCopy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Gauges, Db, Grids, DBGrids, ComCtrls, ToolWin,
  RzSpnEdt, cxLookAndFeelPainters, cxGroupBox, cxRadioGroup, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, AdvGlowButton,
  AdvToolBar, AdvPanel, cxGraphics, cxLookAndFeels, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, BusinessSkinForm;

type
  TFDlgcopy = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Gauge1: TGauge;
    Label3: TLabel;
    Label4: TLabel;
    RadioGroup1: TcxRadioGroup;
    Edit1: TcxButtonEdit;
    Edit2: TcxButtonEdit;
    Edit3: TcxButtonEdit;
    Edit4: TcxButtonEdit;
    Query1: TFDQuery;
    Query2: TFDQuery;
    Query3: TFDQuery;
    AdvPanel2: TAdvPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    CrtBtn: TAdvGlowButton;
    BtnClose: TAdvGlowButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure BtnokClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CrtBtnClick(Sender: TObject);
    procedure Edit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Edit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
   
var
  FDlgcopy: TFDlgcopy;

implementation
uses  Dmic01,uSrcDlg,uSoftfirm, Dmsec;
{$R *.DFM}



procedure TFDlgcopy.BtnokClick(Sender: TObject);
Var P:Longint;
begin
  CrtBtn.Enabled := False;
  BtnClose.Enabled := False;
  Case RadioGroup1.itemindex of
    0:Begin
        Gauge1.Visible := True;
        Gauge1.Progress := 10;
        with Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('INSERT INTO INVENTOR(LOCAT,PARTNO,YEAR1,DESC1,GROUP1,TYPE,MODEL,UNIT,'+
          'VATCAL,COST,STDBUY,LSTBUY,LSTBDATE,PRICE1,PRICE2,PRICE3,PRICE4,SHELF,'+
          'MOVDATE,CREATDAT,CODE_T,MINCAL,MIN1,MAX1,NETPRC,DISCON,BACKORD,ONORDER,'+
          'FRT,EMGCOST,MANUFAC,SUPPLIER,CHARGFLG,SESFLAG ) '+
          'SELECT A.LOCATCD,B.PARTNO,B.YEAR1,B.DESC1,B.GROUP1,B.TYPE,B.MODEL,'+
          'B.UNIT,B.VATCAL,B.COST,B.STDBUY,B.LSTBUY,B.LSTBDATE,B.PRICE1,B.PRICE2,'+
          'B.PRICE3,B.PRICE4,'' '',B.MOVDATE,B.CREATDAT,B.CODE_T,B.MINCAL,B.MIN1,B.MAX1,'+
          'B.NETPRC,B.DISCON,B.BACKORD,B.ONORDER,B.FRT,B.EMGCOST,B.MANUFAC,'+
          'B.SUPPLIER,B.CHARGFLG,B.SESFLAG '+
          'FROM  INVLOCAT A,INVMAST B  WHERE A.LOCATCD NOT IN(SELECT LOCAT FROM '+
          'INVENTOR)');
          EXECSQL;
        end;
        //
        Gauge1.Progress := 50;
        with Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('INSERT INTO  INVANLS( LOCAT,PARTNO,YEAR1 ,SALE_1,COST_1,PRIC_1,DEMN_1,'+
          'ONHN_1, ALLO_1,SALE_2 ,COST_2,PRIC_2,DEMN_2,ONHN_2, ALLO_2,SALE_3,COST_3,'+
          'PRIC_3,DEMN_3,ONHN_3,ALLO_3,SALE_4,COST_4,PRIC_4,DEMN_4,ONHN_4, ALLO_4,'+
          'SALE_5,COST_5,PRIC_5,DEMN_5,ONHN_5,ALLO_5,SALE_6,COST_6,PRIC_6,DEMN_6,'+
          'ONHN_6, ALLO_6,SALE_7,COST_7,PRIC_7,DEMN_7,ONHN_7,ALLO_7,SALE_8 ,COST_8,'+
          'PRIC_8,DEMN_8,ONHN_8,ALLO_8,SALE_9,COST_9,PRIC_9 ,DEMN_9 ,ONHN_9 ,'+
          'ALLO_9,SALE_10 ,COST_10 ,PRIC_10 , DEMN_10 ,ONHN_10 , ALLO_10 ,SALE_11 ,COST_11, '+
          'PRIC_11 ,DEMN_11 ,ONHN_11, ALLO_11 ,SALE_12 ,COST_12 ,PRIC_12 ,DEMN_12 ,'+
          'ONHN_12 , ALLO_12 ,SALE_13 ,COST_13 , PRIC_13 ,DEMN_13 ,  ONHN_13 ,  ALLO_13 ,'+
          'SALE_AVG,  DEMN_AVG, RESERV ) '+
          'SELECT A.LOCATCD , B.PARTNO ,C.CURYEAR ,0  ,0  ,0  ,0 ,0 ,0  ,0  ,0  ,0  ,0  ,0 ,0  ,0  ,0 '+
          ',0 ,0  ,0  ,0 , 0 ,0 ,0 ,0 ,0 ,0  ,0  ,0 ,0  ,0  ,0  ,0  ,0  ,0 ,0  ,0  ,0  ,0 ,0  ,0  ,0  ,0  ,0 ,0  ,0  ,0  ,0 ,0 , '+
          '0,0 ,0 , 0  ,0  ,0  ,0 ,0  ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0,0,0 '+
          'FROM INVLOCAT A,INVMAST B,SCONDPAY C   WHERE A.LOCATCD NOT IN(SELECT LOCAT FROM INVANLS)');
          EXECSQL;
        end;
        Gauge1.Progress := 100;
      End;
    1:Begin
        If Edit1.Text=Edit2.Text Then
        Begin
          CrtBtn.Enabled    := True;
          BtnClose.Enabled := True;
          SFMain.RaiseException('Copy สาขาเดียวกันไม่ได้');
        End;
        Gauge1.Visible := True;
        Gauge1.Progress := 1;
        P:=1;
        with Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:EDIT1 AND PARTNO>=:EDIT2 AND '+
          'PARTNO<=:EDIT3 ');
          Params[0].Asstring := Edit1.Text;
          If Edit3.text<>'' Then
             Params[1].Asstring := Edit3.Text
          Else
             Params[1].Asstring := '';
          If Edit4.Text<>'' Then
             Params[2].Asstring := Edit4.Text
          Else
             Params[2].Asstring := 'ZZZZZZZZZZZZZZZZZ';
          Open;
          If Bof and Eof Then
          SFMain.RaiseException('ไม่มีรหัสสินค้าสำหรับสาขา '+Edit1.text);
        End;
        Gauge1.Maxvalue := Query1.RecordCount;

        Query1.First;
        While Not Query1.Eof Do
        Begin
          With Query3 Do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('SELECT PARTNO FROM INVENTOR WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2');
            Params[0].asstring := Query1.Fieldbyname('Partno').Asstring;
            Params[1].asstring := Edit2.Text;
            Open;
            If Not(Bof and Eof) Then
            begin
              Gauge1.Progress := P;
              P:=P+1;
              Query1.Next;
              Continue;
            End;
          END;

          With Query2 Do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('INSERT INTO INVENTOR(LOCAT,PARTNO,YEAR1,DESC1,GROUP1,TYPE,MODEL,UNIT,'+
            'VATCAL,COST,STDBUY,LSTBUY,LSTBDATE,PRICE1,PRICE2,PRICE3,PRICE4,SHELF,'+
            'MOVDATE,CREATDAT,CODE_T,MINCAL,MIN1,MAX1,NETPRC,DISCON,BACKORD,ONORDER,'+
            'FRT,EMGCOST,MANUFAC,SUPPLIER,CHARGFLG,SESFLAG,INPLOC ) '+
            'VALUES(:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,'+
            ':14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24,:25,:26,:27,'+
            ':28,:29,:30,:31,:32,:33,:34)');
            Params[0].Asstring := EDIT2.TEXT;
            Params[1].Asstring := Query1.Fieldbyname('PARTNO').Asstring;
            Params[2].Asstring := Query1.Fieldbyname('YEAR1').Asstring;
            Params[3].Asstring := Query1.Fieldbyname('DESC1').Asstring;
            Params[4].Asstring := Query1.Fieldbyname('GROUP1').Asstring;
            Params[5].Asstring := Query1.Fieldbyname('TYPE').Asstring;
            Params[6].Asstring := Query1.Fieldbyname('MODEL').Asstring;
            Params[7].Asstring := Query1.Fieldbyname('UNIT').Asstring;
            Params[8].Asstring := Query1.Fieldbyname('VATCAL').Asstring;
            Params[9].Asfloat  := Query1.Fieldbyname('COST').Asfloat;
            Params[10].Asfloat := Query1.Fieldbyname('STDBUY').Asfloat;
            Params[11].Asfloat := Query1.Fieldbyname('LSTBUY').Asfloat;
            Params[12].Asdatetime := Query1.Fieldbyname('LSTBDATE').Asdatetime;
            Params[13].Asfloat := Query1.Fieldbyname('PRICE1').Asfloat;
            Params[14].Asfloat := Query1.Fieldbyname('PRICE2').Asfloat;
            Params[15].Asfloat := Query1.Fieldbyname('PRICE3').Asfloat;
            Params[16].Asfloat := Query1.Fieldbyname('PRICE4').Asfloat;
            Params[17].Asstring := '' ;
            Params[18].Asdate   := Now;
            Params[19].Asdate   := Now ;
            Params[20].Asstring := Query1.Fieldbyname('CODE_T').Asstring;
            Params[21].Asfloat := Query1.Fieldbyname('MINCAL').Asfloat;
            Params[22].Asfloat := Query1.Fieldbyname('MIN1').Asfloat;
            Params[23].Asfloat := Query1.Fieldbyname('MAX1').Asfloat;
            Params[24].Asstring := Query1.Fieldbyname('NETPRC').Asstring;
            Params[25].Asstring := Query1.Fieldbyname('DISCON').Asstring;
            Params[26].Asfloat  := 0;
            Params[27].Asfloat  := 0;
            Params[28].Asfloat := Query1.Fieldbyname('FRT').Asfloat;
            Params[29].Asfloat := Query1.Fieldbyname('EMGCOST').Asfloat;
            Params[30].Asstring := Query1.Fieldbyname('MANUFAC').Asstring;
            Params[31].Asstring := Query1.Fieldbyname('SUPPLIER').Asstring;
            Params[32].Asstring := Query1.Fieldbyname('CHARGFLG').Asstring;
            Params[33].Asstring := Query1.Fieldbyname('SESFLAG').Asstring;
            Params[34].Asstring := 'A';
            ExecSql;
          End;
          Gauge1.Progress := P;
          P:=P+1;
          Query1.Next;
        End;
        //
        P:=1;
        Query1.First;
        While Not Query1.Eof Do
        Begin
          With Query3 Do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('SELECT PARTNO FROM INVANLS WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2');
            Params[0].asstring := Query1.Fieldbyname('Partno').Asstring;
            Params[1].asstring := Edit2.Text;
            Open;
            If Not(Bof and Eof) Then
            begin
              Gauge1.Progress := P;
              P:=P+1;
              Query1.Next;
              Continue;
            End;
          END;

          With Query2 Do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('INSERT INTO INVANLS(LOCAT,PARTNO,YEAR1,SALE_1,COST_1,PRIC_1,DEMN_1,ONHN_1,ALLO_1,'+
            'SALE_2,COST_2,PRIC_2,DEMN_2,ONHN_2,ALLO_2,SALE_3,COST_3,PRIC_3,DEMN_3,ONHN_3,ALLO_3,'+
            'SALE_4,COST_4,PRIC_4,DEMN_4,ONHN_4,ALLO_4,SALE_5,COST_5,PRIC_5,DEMN_5,ONHN_5,ALLO_5,'+
            'SALE_6,COST_6,PRIC_6,DEMN_6,ONHN_6,ALLO_6,SALE_7,COST_7,PRIC_7,DEMN_7,ONHN_7,ALLO_7,'+
            'SALE_8,COST_8,PRIC_8,DEMN_8,ONHN_8,ALLO_8,SALE_9,COST_9,PRIC_9,DEMN_9,ONHN_9,ALLO_9,'+
            'SALE_10,COST_10,PRIC_10,DEMN_10,ONHN_10,ALLO_10,SALE_11,COST_11,PRIC_11,DEMN_11,ONHN_11,ALLO_11,'+
            'SALE_12,COST_12,PRIC_12,DEMN_12,ONHN_12,ALLO_12,SALE_13,COST_13,PRIC_13,DEMN_13,ONHN_13,ALLO_13,INPLOC ) '+
            'VALUES(:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,'+
            ':14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24,:25,:26,:27,'+
            ':28,:29,:30,:31,:32,:33,:34,:35,:36,:37,:38,:39,:40,:41,'+
            ':42,:43,:44,:45,:46,:47,:48,:49,:50,:51,:52,:53,:54,:55,:56,'+
            ':57,:58,:59,:60,:61,:62,:63,:64,:65,:66,:67,:68,:69,:70,'+
            ':71,:72,:73,:74,:75,:76,:77,:78,:79,:80,:81)');

            Params[0].Asstring := EDIT2.TEXT;
            Params[1].Asstring := Query1.Fieldbyname('PARTNO').Asstring;
            Params[2].Asstring := Query1.Fieldbyname('YEAR1').Asstring;
            Params[3].Asfloat  := 0;
            Params[4].Asfloat  := 0;
            Params[5].Asfloat  := 0;
            Params[6].Asfloat  := 0;
            Params[7].Asfloat  := 0;
            Params[8].Asfloat  := 0;
            Params[9].Asfloat  := 0;
            Params[10].Asfloat  := 0;
            Params[11].Asfloat  := 0;
            Params[12].Asfloat  := 0;
            Params[13].Asfloat  := 0;
            Params[14].Asfloat  := 0;
            Params[15].Asfloat  := 0;
            Params[16].Asfloat  := 0;
            Params[17].Asfloat  := 0;
            Params[18].Asfloat  := 0;
            Params[19].Asfloat  := 0;
            Params[20].Asfloat  := 0;
            Params[21].Asfloat  := 0;
            Params[22].Asfloat  := 0;
            Params[23].Asfloat  := 0;
            Params[24].Asfloat  := 0;
            Params[25].Asfloat  := 0;
            Params[26].Asfloat  := 0;
            Params[27].Asfloat  := 0;
            Params[28].Asfloat  := 0;
            Params[29].Asfloat  := 0;
            Params[30].Asfloat  := 0;
            Params[31].Asfloat  := 0;
            Params[32].Asfloat  := 0;
            Params[33].Asfloat  := 0;
            Params[34].Asfloat  := 0;
            Params[35].Asfloat  := 0;
            Params[36].Asfloat  := 0;
            Params[37].Asfloat  := 0;
            Params[38].Asfloat  := 0;
            Params[39].Asfloat  := 0;
            Params[40].Asfloat  := 0;
            Params[41].Asfloat  := 0;
            Params[42].Asfloat  := 0;
            Params[43].Asfloat  := 0;
            Params[44].Asfloat  := 0;
            Params[45].Asfloat  := 0;
            Params[46].Asfloat  := 0;
            Params[47].Asfloat  := 0;
            Params[48].Asfloat  := 0;
            Params[49].Asfloat  := 0;
            Params[50].Asfloat  := 0;
            Params[51].Asfloat  := 0;
            Params[52].Asfloat  := 0;
            Params[53].Asfloat  := 0;
            Params[54].Asfloat  := 0;
            Params[55].Asfloat  := 0;
            Params[56].Asfloat  := 0;
            Params[57].Asfloat  := 0;
            Params[58].Asfloat  := 0;
            Params[59].Asfloat  := 0;
            Params[60].Asfloat  := 0;
            Params[61].Asfloat  := 0;
            Params[62].Asfloat  := 0;
            Params[63].Asfloat  := 0;
            Params[64].Asfloat  := 0;
            Params[65].Asfloat  := 0;
            Params[66].Asfloat  := 0;
            Params[67].Asfloat  := 0;
            Params[68].Asfloat  := 0;
            Params[69].Asfloat  := 0;
            Params[70].Asfloat  := 0;
            Params[71].Asfloat  := 0;
            Params[72].Asfloat  := 0;
            Params[73].Asfloat  := 0;
            Params[74].Asfloat  := 0;
            Params[75].Asfloat  := 0;
            Params[76].Asfloat  := 0;
            Params[77].Asfloat  := 0;
            Params[78].Asfloat  := 0;
            Params[79].Asfloat  := 0;
            Params[80].Asfloat  := 0;
            Params[81].Asstring  := 'A';

           ExecSql;
          End;
          Gauge1.Progress := P;
          P:=P+1;
          Query1.Next;
        End;

      End;
  End;
  CrtBtn.Enabled    := True;
  BtnClose.Enabled := True;

end;


procedure TFDlgcopy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FDlgcopy := nil;
end;


procedure TFDlgcopy.Edit1Change(Sender: TObject);
begin
  CrtBtn.Enabled := (Edit1.Text<>'') and (Edit2.Text<>'') and (RadioGroup1.Itemindex=1) ;
end;

procedure TFDlgcopy.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDHLP', 'HDHLP02_6');
end;

procedure TFDlgcopy.CrtBtnClick(Sender: TObject);
Var P:Longint;
begin
  CrtBtn.Enabled := False;
  BtnClose.Enabled := False;
  Case RadioGroup1.itemindex of
    0:Begin
        Gauge1.Visible := True;
        Gauge1.Progress := 10;
        with Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('INSERT INTO INVENTOR(LOCAT,PARTNO,YEAR1,DESC1,GROUP1,TYPE,MODEL,UNIT,'+
          'VATCAL,COST,STDBUY,LSTBUY,LSTBDATE,PRICE1,PRICE2,PRICE3,PRICE4,SHELF,'+
          'MOVDATE,CREATDAT,CODE_T,MINCAL,MIN1,MAX1,NETPRC,DISCON,BACKORD,ONORDER,'+
          'FRT,EMGCOST,MANUFAC,SUPPLIER,CHARGFLG,SESFLAG ) '+
          'SELECT A.LOCATCD,B.PARTNO,B.YEAR1,B.DESC1,B.GROUP1,B.TYPE,B.MODEL,'+
          'B.UNIT,B.VATCAL,B.COST,B.STDBUY,B.LSTBUY,B.LSTBDATE,B.PRICE1,B.PRICE2,'+
          'B.PRICE3,B.PRICE4,'' '',B.MOVDATE,B.CREATDAT,B.CODE_T,B.MINCAL,B.MIN1,B.MAX1,'+
          'B.NETPRC,B.DISCON,B.BACKORD,B.ONORDER,B.FRT,B.EMGCOST,B.MANUFAC,'+
          'B.SUPPLIER,B.CHARGFLG,B.SESFLAG '+
          'FROM  INVLOCAT A,INVMAST B  WHERE A.LOCATCD NOT IN(SELECT LOCAT FROM '+
          'INVENTOR)');
          EXECSQL;
        end;
        //
        Gauge1.Progress := 50;
        with Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('INSERT INTO  INVANLS( LOCAT,PARTNO,YEAR1 ,SALE_1,COST_1,PRIC_1,DEMN_1,'+
          'ONHN_1, ALLO_1,SALE_2 ,COST_2,PRIC_2,DEMN_2,ONHN_2, ALLO_2,SALE_3,COST_3,'+
          'PRIC_3,DEMN_3,ONHN_3,ALLO_3,SALE_4,COST_4,PRIC_4,DEMN_4,ONHN_4, ALLO_4,'+
          'SALE_5,COST_5,PRIC_5,DEMN_5,ONHN_5,ALLO_5,SALE_6,COST_6,PRIC_6,DEMN_6,'+
          'ONHN_6, ALLO_6,SALE_7,COST_7,PRIC_7,DEMN_7,ONHN_7,ALLO_7,SALE_8 ,COST_8,'+
          'PRIC_8,DEMN_8,ONHN_8,ALLO_8,SALE_9,COST_9,PRIC_9 ,DEMN_9 ,ONHN_9 ,'+
          'ALLO_9,SALE_10 ,COST_10 ,PRIC_10 , DEMN_10 ,ONHN_10 , ALLO_10 ,SALE_11 ,COST_11, '+
          'PRIC_11 ,DEMN_11 ,ONHN_11, ALLO_11 ,SALE_12 ,COST_12 ,PRIC_12 ,DEMN_12 ,'+
          'ONHN_12 , ALLO_12 ,SALE_13 ,COST_13 , PRIC_13 ,DEMN_13 ,  ONHN_13 ,  ALLO_13 ,'+
          'SALE_AVG,  DEMN_AVG, RESERV ) '+
          'SELECT A.LOCATCD , B.PARTNO ,C.CURYEAR ,0  ,0  ,0  ,0 ,0 ,0  ,0  ,0  ,0  ,0  ,0 ,0  ,0  ,0 '+
          ',0 ,0  ,0  ,0 , 0 ,0 ,0 ,0 ,0 ,0  ,0  ,0 ,0  ,0  ,0  ,0  ,0  ,0 ,0  ,0  ,0  ,0 ,0  ,0  ,0  ,0  ,0 ,0  ,0  ,0  ,0 ,0 , '+
          '0,0 ,0 , 0  ,0  ,0  ,0 ,0  ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0,0,0 '+
          'FROM INVLOCAT A,INVMAST B,SCONDPAY C   WHERE A.LOCATCD NOT IN(SELECT LOCAT FROM INVANLS)');
          EXECSQL;
        end;
        Gauge1.Progress := 100;
      End;
    1:Begin
        If Edit1.Text=Edit2.Text Then
        Begin
          CrtBtn.Enabled    := True;
          BtnClose.Enabled := True;
          SFMain.RaiseException('Copy สาขาเดียวกันไม่ได้');
        End;
        Gauge1.Visible := True;
        Gauge1.Progress := 1;
        P:=1;
        with Query1 do
        begin
          Close;
          Sql.Clear;
          Sql.Add('SELECT * FROM INVENTOR WHERE LOCAT=:EDIT1 AND PARTNO>=:EDIT2 AND '+
          'PARTNO<=:EDIT3 ');
          Params[0].Asstring := Edit1.Text;
          If Edit3.text<>'' Then
             Params[1].Asstring := Edit3.Text
          Else
             Params[1].Asstring := '';
          If Edit4.Text<>'' Then
             Params[2].Asstring := Edit4.Text
          Else
             Params[2].Asstring := 'โโโโโโโโโโโ';
          Open;
          If Bof and Eof Then
          SFMain.RaiseException('ไม่มีรหัสสินค้าสำหรับสาขา '+Edit1.text);
        End;
        Gauge1.Maxvalue := Query1.RecordCount;

        Query1.First;
        While Not Query1.Eof Do
        Begin
          With Query3 Do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('SELECT PARTNO FROM INVENTOR WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2');
            Params[0].asstring := Query1.Fieldbyname('Partno').Asstring;
            Params[1].asstring := Edit2.Text;
            Open;
            If Not(Bof and Eof) Then
            begin
              Gauge1.Progress := P;
              P:=P+1;
              Query1.Next;
              Continue;
            End;
          END;

          With Query2 Do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('INSERT INTO INVENTOR(LOCAT,PARTNO,YEAR1,DESC1,GROUP1,TYPE,MODEL,UNIT,'+
            'VATCAL,COST,STDBUY,LSTBUY,LSTBDATE,PRICE1,PRICE2,PRICE3,PRICE4,SHELF,'+
            'MOVDATE,CREATDAT,CODE_T,MINCAL,MIN1,MAX1,NETPRC,DISCON,BACKORD,ONORDER,'+
            'FRT,EMGCOST,MANUFAC,SUPPLIER,CHARGFLG,SESFLAG,INPLOC ) '+
            'VALUES(:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,'+
            ':14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24,:25,:26,:27,'+
            ':28,:29,:30,:31,:32,:33,:34)');
            Params[0].Asstring := EDIT2.TEXT;
            Params[1].Asstring := Query1.Fieldbyname('PARTNO').Asstring;
            Params[2].Asstring := Query1.Fieldbyname('YEAR1').Asstring;
            Params[3].Asstring := Query1.Fieldbyname('DESC1').Asstring;
            Params[4].Asstring := Query1.Fieldbyname('GROUP1').Asstring;
            Params[5].Asstring := Query1.Fieldbyname('TYPE').Asstring;
            Params[6].Asstring := Query1.Fieldbyname('MODEL').Asstring;
            Params[7].Asstring := Query1.Fieldbyname('UNIT').Asstring;
            Params[8].Asstring := Query1.Fieldbyname('VATCAL').Asstring;
            Params[9].Asfloat  := Query1.Fieldbyname('COST').Asfloat;
            Params[10].Asfloat := Query1.Fieldbyname('STDBUY').Asfloat;
            Params[11].Asfloat := Query1.Fieldbyname('LSTBUY').Asfloat;
            Params[12].Asdatetime := Query1.Fieldbyname('LSTBDATE').Asdatetime;
            Params[13].Asfloat := Query1.Fieldbyname('PRICE1').Asfloat;
            Params[14].Asfloat := Query1.Fieldbyname('PRICE2').Asfloat;
            Params[15].Asfloat := Query1.Fieldbyname('PRICE3').Asfloat;
            Params[16].Asfloat := Query1.Fieldbyname('PRICE4').Asfloat;
            Params[17].Asstring := '' ;
            Params[18].Asdate   := Now;
            Params[19].Asdate   := Now ;
            Params[20].Asstring := Query1.Fieldbyname('CODE_T').Asstring;
            Params[21].Asfloat := Query1.Fieldbyname('MINCAL').Asfloat;
            Params[22].Asfloat := Query1.Fieldbyname('MIN1').Asfloat;
            Params[23].Asfloat := Query1.Fieldbyname('MAX1').Asfloat;
            Params[24].Asstring := Query1.Fieldbyname('NETPRC').Asstring;
            Params[25].Asstring := Query1.Fieldbyname('DISCON').Asstring;
            Params[26].Asfloat  := 0;
            Params[27].Asfloat  := 0;
            Params[28].Asfloat := Query1.Fieldbyname('FRT').Asfloat;
            Params[29].Asfloat := Query1.Fieldbyname('EMGCOST').Asfloat;
            Params[30].Asstring := Query1.Fieldbyname('MANUFAC').Asstring;
            Params[31].Asstring := Query1.Fieldbyname('SUPPLIER').Asstring;
            Params[32].Asstring := Query1.Fieldbyname('CHARGFLG').Asstring;
            Params[33].Asstring := Query1.Fieldbyname('SESFLAG').Asstring;
            Params[34].Asstring := 'A';
            ExecSql;
          End;
          Gauge1.Progress := P;
          P:=P+1;
          Query1.Next;
        End;
        //
        P:=1;
        Query1.First;
        While Not Query1.Eof Do
        Begin
          With Query3 Do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('SELECT PARTNO FROM INVANLS WHERE PARTNO=:EDIT1 AND LOCAT=:EDIT2');
            Params[0].asstring := Query1.Fieldbyname('Partno').Asstring;
            Params[1].asstring := Edit2.Text;
            Open;
            If Not(Bof and Eof) Then
            begin
              Gauge1.Progress := P;
              P:=P+1;
              Query1.Next;
              Continue;
            End;
          END;

          With Query2 Do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('INSERT INTO INVANLS(LOCAT,PARTNO,YEAR1,SALE_1,COST_1,PRIC_1,DEMN_1,ONHN_1,ALLO_1,'+
            'SALE_2,COST_2,PRIC_2,DEMN_2,ONHN_2,ALLO_2,SALE_3,COST_3,PRIC_3,DEMN_3,ONHN_3,ALLO_3,'+
            'SALE_4,COST_4,PRIC_4,DEMN_4,ONHN_4,ALLO_4,SALE_5,COST_5,PRIC_5,DEMN_5,ONHN_5,ALLO_5,'+
            'SALE_6,COST_6,PRIC_6,DEMN_6,ONHN_6,ALLO_6,SALE_7,COST_7,PRIC_7,DEMN_7,ONHN_7,ALLO_7,'+
            'SALE_8,COST_8,PRIC_8,DEMN_8,ONHN_8,ALLO_8,SALE_9,COST_9,PRIC_9,DEMN_9,ONHN_9,ALLO_9,'+
            'SALE_10,COST_10,PRIC_10,DEMN_10,ONHN_10,ALLO_10,SALE_11,COST_11,PRIC_11,DEMN_11,ONHN_11,ALLO_11,'+
            'SALE_12,COST_12,PRIC_12,DEMN_12,ONHN_12,ALLO_12,SALE_13,COST_13,PRIC_13,DEMN_13,ONHN_13,ALLO_13,INPLOC ) '+
            'VALUES(:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,'+
            ':14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24,:25,:26,:27,'+
            ':28,:29,:30,:31,:32,:33,:34,:35,:36,:37,:38,:39,:40,:41,'+
            ':42,:43,:44,:45,:46,:47,:48,:49,:50,:51,:52,:53,:54,:55,:56,'+
            ':57,:58,:59,:60,:61,:62,:63,:64,:65,:66,:67,:68,:69,:70,'+
            ':71,:72,:73,:74,:75,:76,:77,:78,:79,:80,:81)');

            Params[0].Asstring := EDIT2.TEXT;
            Params[1].Asstring := Query1.Fieldbyname('PARTNO').Asstring;
            Params[2].Asstring := Query1.Fieldbyname('YEAR1').Asstring;
            Params[3].Asfloat  := 0;
            Params[4].Asfloat  := 0;
            Params[5].Asfloat  := 0;
            Params[6].Asfloat  := 0;
            Params[7].Asfloat  := 0;
            Params[8].Asfloat  := 0;
            Params[9].Asfloat  := 0;
            Params[10].Asfloat  := 0;
            Params[11].Asfloat  := 0;
            Params[12].Asfloat  := 0;
            Params[13].Asfloat  := 0;
            Params[14].Asfloat  := 0;
            Params[15].Asfloat  := 0;
            Params[16].Asfloat  := 0;
            Params[17].Asfloat  := 0;
            Params[18].Asfloat  := 0;
            Params[19].Asfloat  := 0;
            Params[20].Asfloat  := 0;
            Params[21].Asfloat  := 0;
            Params[22].Asfloat  := 0;
            Params[23].Asfloat  := 0;
            Params[24].Asfloat  := 0;
            Params[25].Asfloat  := 0;
            Params[26].Asfloat  := 0;
            Params[27].Asfloat  := 0;
            Params[28].Asfloat  := 0;
            Params[29].Asfloat  := 0;
            Params[30].Asfloat  := 0;
            Params[31].Asfloat  := 0;
            Params[32].Asfloat  := 0;
            Params[33].Asfloat  := 0;
            Params[34].Asfloat  := 0;
            Params[35].Asfloat  := 0;
            Params[36].Asfloat  := 0;
            Params[37].Asfloat  := 0;
            Params[38].Asfloat  := 0;
            Params[39].Asfloat  := 0;
            Params[40].Asfloat  := 0;
            Params[41].Asfloat  := 0;
            Params[42].Asfloat  := 0;
            Params[43].Asfloat  := 0;
            Params[44].Asfloat  := 0;
            Params[45].Asfloat  := 0;
            Params[46].Asfloat  := 0;
            Params[47].Asfloat  := 0;
            Params[48].Asfloat  := 0;
            Params[49].Asfloat  := 0;
            Params[50].Asfloat  := 0;
            Params[51].Asfloat  := 0;
            Params[52].Asfloat  := 0;
            Params[53].Asfloat  := 0;
            Params[54].Asfloat  := 0;
            Params[55].Asfloat  := 0;
            Params[56].Asfloat  := 0;
            Params[57].Asfloat  := 0;
            Params[58].Asfloat  := 0;
            Params[59].Asfloat  := 0;
            Params[60].Asfloat  := 0;
            Params[61].Asfloat  := 0;
            Params[62].Asfloat  := 0;
            Params[63].Asfloat  := 0;
            Params[64].Asfloat  := 0;
            Params[65].Asfloat  := 0;
            Params[66].Asfloat  := 0;
            Params[67].Asfloat  := 0;
            Params[68].Asfloat  := 0;
            Params[69].Asfloat  := 0;
            Params[70].Asfloat  := 0;
            Params[71].Asfloat  := 0;
            Params[72].Asfloat  := 0;
            Params[73].Asfloat  := 0;
            Params[74].Asfloat  := 0;
            Params[75].Asfloat  := 0;
            Params[76].Asfloat  := 0;
            Params[77].Asfloat  := 0;
            Params[78].Asfloat  := 0;
            Params[79].Asfloat  := 0;
            Params[80].Asfloat  := 0;
            Params[81].Asstring  := 'A';

           ExecSql;
          End;
          Gauge1.Progress := P;
          P:=P+1;
          Query1.Next;
        End;

      End;
  End;
  CrtBtn.Enabled    := True;
  BtnClose.Enabled := True;
  Dm_sec.ChkRecent(SFMain.Xuser_ID,'FILE08_6','UPDATE','Update data');
  if DM_SEC.qrRecent.UpdatesPending then
    if (DM_SEC.qrRecent.ApplyUpdates = 0) then
      DM_SEC.qrRecent.CommitUpdates
    else
      raise Exception.Create(DM_SEC.qrRecent.RowError.Message);
end;

procedure TFDlgcopy.Edit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
     Edit1.text := fSrcDlg.KeyNo;
end;

procedure TFDlgcopy.Edit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalLocat=Mrok Then
     Edit2.text := fSrcDlg.KeyNo;
end;

procedure TFDlgcopy.Edit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
     Edit3.text := fSrcDlg.KeyNo;
end;

procedure TFDlgcopy.Edit4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.Createform(TfSrcDlg,fSrcDlg);
  If fSrcDlg.ShowModalParts=Mrok Then
     Edit4.text := fSrcDlg.KeyNo;
end;

procedure TFDlgcopy.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFDlgcopy.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) then
  Begin
    Perform(Wm_nextDlgctl,0,0);
    Key := #0;
  End;
end;

end.
