unit Srchstk;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu, ComCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxGridCardView, cxGridDBCardView, cxCheckBox,
  AdvShapeButton, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  AdvGlowButton, cxLookAndFeels, cxNavigator, dxDateRanges, dxBarBuiltInMenu,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridCustomLayoutView, cxImageComboBox;

type
  TSearchStk = class(TForm)
    DataSource: TDataSource;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    SearchButton: TAdvGlowButton;
    OrderCombo: TcxComboBox;
    OkBtn: TcxButton;
    CancelBtn: TcxButton;
    SearchEd: TcxTextEdit;
    AdvShapeButton1: TAdvShapeButton;
    cxCheckBox1: TcxCheckBox;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DBGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridLevel2: TcxGridLevel;
    Label1: TLabel;
    cbViewdata: TcxImageComboBox;
    HQuery1: TFDQuery;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxGridDBTableView1DataControllerGroupingChanged(
      Sender: TObject);
    procedure cxGridDBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    NewKeyno,Xsrch,Xlocat,Xrecvno,XFlag,FlagRed,LocatRed : string;
    property Keyno: string read GetKeyno;

    function ShowModalRecstk: Integer;
    function ShowModalOptinv : Integer;
    function ShowModalOptmas: Integer;
    function ShowModalInvtrn : Integer;
    function ShowModalMovcar : Integer;
    function ShowModalMovOpt : Integer;
    function ShowModalInvtax : Integer;
    function ShowModaltaxbuy : Integer;
    function ShowModalPurChase : Integer;
    function ShowModalBuypart : Integer;
    function ShowModalTrResv : Integer;
    function ShowModalStkRevred: Integer;
  end;

var
  SearchStk: TSearchStk;


  Title : Array[0..15] of String;
  Fldgrd: Array[0..15] of String;
  I,Max :Word;

implementation
uses USoftfirm, Dmsec;


{$R *.DFM}


function TSearchStk.ShowModalRecstk: Integer;
begin
  OrderCombo.Tag := 1;
  Title[0]  := '�Ţ�����Ѻ';
  Title[1]  := '�ѹ����Ѻ';
  Title[2]  := '�������˹��';
  Title[3]  := '��������´���˹��';
  Title[4]  := '����Թ���';
  Title[5]  := '�ѹ������Թ���';
  Title[6]  := '�Ң�';
  Title[7]  := '�Ţ�ѧ';
  Title[8]  := '����¹';
  Title[9]  := '��â��';

  Fldgrd[0] := 'RECVNO';
  Fldgrd[1] := 'RECVDT';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'APNAME';
  Fldgrd[4] := 'INVNO';
  Fldgrd[5] := 'INVDT';
  Fldgrd[6] := 'LOCAT';
  Fldgrd[7] := 'STRNO';
  Fldgrd[8] := 'REGNO';
  Fldgrd[9] := 'TSALE';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 5;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �Ѻ�Թ������ ';
  Result := ShowModal;
end;

function TSearchStk.ShowModalOptinv : Integer;
begin
  OrderCombo.Tag := 2;
  Title[0]  := '�Ţ�����Ѻ';
  Title[1]  := '�ѹ�����Ѻ';
  Title[2]  := '�Ң�';
  Title[3]  := '�������˹��';
  Title[4]  := '�Ţ�������Թ���';
  Title[5]  := '�Ţ���㺡ӡѺ�Թ���';
  Title[6]  := '�Ţ������觫���';

  Fldgrd[0] := 'RECVNO';
  Fldgrd[1] := 'RECVDT';
  Fldgrd[2] := 'RVLOCAT';
  Fldgrd[3] := 'APCODE';
  Fldgrd[4] := 'INVNO';
  Fldgrd[5] := 'TAXNO';
  Fldgrd[6] := 'BUYNO';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 5;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;

function TSearchStk.ShowModalOptmas: Integer;
begin
  OrderCombo.Tag := 3;
  Title[0]  := '�����ػ�ó�';
  Title[1]  := '�����ػ�ó�';
  Title[2]  := 'ʶҹ�����';
  Title[3]  := '�Ҥ�/˹���';
  Title[4]  := '�ӹǹ�������';

  Fldgrd[0] := 'OPTCODE';
  Fldgrd[1] := 'OPTNAME';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'UNITPRC';
  Fldgrd[4] := 'ONHAND';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help';
  Result := ShowModal;
end;

function TSearchstk.ShowModalInvtrn : Integer;
begin
  OrderCombo.Tag := 4;
  Title[0]  := '�Ţ��Ƕѧ';
  Title[1]  := '�Ţ����ͧ';
  Title[2]  := '�Ţ����¹';
  Title[3]  := 'ʶҹС�â��';
  Title[4]  := '�Ţ���㺨ͧ';
  Title[5]  := '�Ţ�����ҧ�ԧ';
  Title[6]  := '������';
  Title[7]  := '���ö';
  Title[8]  := 'Ẻ';
  Title[9]  := '��';

  Fldgrd[0] := 'STRNO';
  Fldgrd[1] := 'ENGNO';
  Fldgrd[2] := 'REGNO';
  Fldgrd[3] := 'FLAG';
  Fldgrd[4] := 'RESVNO';
  Fldgrd[5] := 'CONTNO';
  Fldgrd[6] := 'TYPE';
  Fldgrd[7] := 'MODEL';
  Fldgrd[8] := 'BAAB';
  Fldgrd[9] := 'COLOR';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 5;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �Ţ�ѧ ';
  Result := ShowModal;
end;

function TSearchStk.ShowModalMovcar: Integer;
begin
  OrderCombo.Tag := 5;
  Title[0]  := '�Ţ����͹';
  Title[1]  := '�ѹ����͹';
  Title[2]  := '�͹�ҡ�Ң�';
  Title[3]  := '��ѧ�Ң�';

  Fldgrd[0] := 'MOVENO';
  Fldgrd[1] := 'MOVEDT';
  Fldgrd[2] := 'MOVEFM';
  Fldgrd[3] := 'MOVETO';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help';
  Result := ShowModal;
end;

function TSearchStk.ShowModalMovOpt: Integer;
begin
  OrderCombo.Tag := 6;
  Title[0]  := '�Ţ����͹';
  Title[1]  := '�ѹ����͹';
  Title[2]  := '�͹�ҡ�Ң�';
  Title[3]  := '��ѧ�Ң�';

  Fldgrd[0] := 'MOVENO';
  Fldgrd[1] := 'MOVEDT';
  Fldgrd[2] := 'MOVEFM';
  Fldgrd[3] := 'MOVETO';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 2;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help';
  Result := ShowModal;
end;

function TSearchstk.ShowModalInvtax : Integer;
begin
  OrderCombo.Tag := 7;
  Title[0]  := '�Ţ��Ƕѧ';
  Title[1]  := '�Ţ����ͧ';
  Title[2]  := '�Ţ����¹';
  Title[3]  := 'ʶҹС�â��';
  Title[4]  := '������';
  Title[5]  := '���ö';
  Title[6]  := '��';
  Title[7]  := '��Ҿ';
  Title[8]  := '�Ң�';
  Title[9]  := '�͡���ի���';


  Fldgrd[0] := 'STRNO';
  Fldgrd[1] := 'ENGNO';
  Fldgrd[2] := 'REGNO';
  Fldgrd[3] := 'FLAG';
  Fldgrd[4] := 'TYPE';
  Fldgrd[5] := 'MODEL';
  Fldgrd[6] := 'COLOR';
  Fldgrd[7] := 'STAT';
  Fldgrd[8] := 'CRLOCAT';
  Fldgrd[9] := 'TAXIN';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 5;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;

function TSearchstk.ShowModaltaxbuy : Integer;
begin
  OrderCombo.Tag := 8;
  Title[0]  := '�Ţ���㺡ӡѺ';
  Title[1]  := '�������˹��';
  Title[2]  := '�Ţ�����Ѻ';
  Title[3]  := '�Ţ��Ƕѧ';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'CUSCOD';
  Fldgrd[2] := 'TAXREFNO';
  Fldgrd[3] := 'STRNO';
                                    
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;

  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help ���ի���';
  Result := ShowModal;
end;

function TSearchstk.ShowModalPurchase : Integer;
begin
  OrderCombo.Tag := 9;
  Title[0]  := '�Ţ������觫���';
  Title[1]  := '�ѹ�����觫���';
  Title[2]  := '�������˹��';
  Title[3]  := '�������˹��';
  Title[4]  := '�Ţ�����ҧ�ԧ';

  Fldgrd[0] := 'PURCHASENO';
  Fldgrd[1] := 'PURCHASEDT';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'APNAME';
  Fldgrd[4] := 'REFNO';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ���觫���';
  Result := ShowModal;
end;

function TSearchStk.ShowModalBuypart : Integer;
begin
  OrderCombo.Tag := 10;
  Title[0]  := '�Ţ����͡���';
  Title[1]  := '�Ţ�ѧ';

  Fldgrd[0] := 'BUYNO';
  Fldgrd[1] := 'STRNO';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);

  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �����觫��������� ';
  Result := ShowModal;
end;

function TSearchStk.ShowModalTrResv : Integer;
begin
  OrderCombo.Tag := 11;
  Title[0]  := '�Ţ���ͧ';

  Fldgrd[0] := 'RESVNO';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);

  OrderCombo.ItemIndex := 0;
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ��������´��èͧ ';
  Result := ShowModal;
end;

function TSearchStk.ShowModalStkRevred: Integer;
Begin
  //*** Set Up ****
  OrderCombo.Tag := 12;
  Title[0]  := '�Ţ����¹';
  Title[1]  := '�Ңҷ���Ѻ';
  Title[2]  := '�Ңҷ����';
  Title[3]  := '�Ţ����Ѻ';

  Fldgrd[0] := 'REGNO';
  Fldgrd[1] := 'LOCATRECV';
  Fldgrd[2] := 'LOCATKEEP';
  Fldgrd[3] := 'REGREDNO';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 4;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := '���Ң�����ʵ�͡����¹����ᴧ';
  Result := ShowModal;
end;


function TSearchStk.GetKeyno: string;
begin
  If HQuery1.Active Then
  Case OrderCombo.Tag Of
    1 :Result := HQuery1.Fieldbyname('RECVNO').Asstring;
    2 :Result := HQuery1.Fieldbyname('RECVNO').Asstring;
    3 :Result := HQuery1.Fieldbyname('OPTCODE').Asstring;
    4 :Result := HQuery1.Fieldbyname('STRNO').Asstring;
    5 :Result := HQuery1.Fieldbyname('MOVENO').Asstring;
    6 :Result := HQuery1.Fieldbyname('MOVENO').Asstring;
    7 :Result := HQuery1.Fieldbyname('STRNO').Asstring;
    8 :Result := HQuery1.Fieldbyname('TAXNO').Asstring;
    9 :Result := HQuery1.fieldbyname('PURCHASENO').AsString;
   10 :Result := HQuery1.fieldbyname('BUYNO').AsString;
   11 :Result := HQuery1.fieldbyname('RESVNO').AsString;
   12 :Result := HQuery1.fieldbyname('REGREDNO').AsString;
  end;
end;

procedure TSearchStk.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSearchStk.SearchButtonClick(Sender: TObject);
begin
  With HQuery1 Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT M.RECVNO,M.RECVDT,M.LOCAT,M.APCODE,A.APNAME,M.INVNO,M.INVDT,T.STRNO,T.REGNO,T.CRLOCAT,T.STAT,T.TSALE '+
                'FROM INVINVO M ,INVTRAN T,APMAST A  WHERE M.RECVNO=T.RECVNO AND M.APCODE=A.APCODE '+
                'AND M.RECVNO LIKE :0 ORDER BY M.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT M.RECVNO,M.RECVDT,M.LOCAT,M.APCODE,A.APNAME,M.INVNO,M.INVDT,T.STRNO,T.REGNO,T.CRLOCAT,T.STAT,T.TSALE '+
                'FROM INVINVO M ,INVTRAN T,APMAST A  WHERE M.RECVNO=T.RECVNO AND M.APCODE=A.APCODE '+
                'AND T.APCODE LIKE :0 ORDER BY M.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT M.RECVNO,M.RECVDT,M.LOCAT,M.APCODE,A.APNAME,M.INVNO,M.INVDT,T.STRNO,T.REGNO,T.CRLOCAT,T.STAT,T.TSALE '+
                'FROM INVINVO M ,INVTRAN T,APMAST A  WHERE M.RECVNO=T.RECVNO AND M.APCODE=A.APCODE '+
                'AND M.INVNO LIKE :0 ORDER BY M.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.Add('SELECT M.RECVNO,M.RECVDT,M.LOCAT,M.APCODE,A.APNAME,M.INVNO,M.INVDT,T.STRNO,T.REGNO,T.CRLOCAT,T.STAT,T.TSALE '+
                'FROM INVINVO M ,INVTRAN T,APMAST A  WHERE M.RECVNO=T.RECVNO AND M.APCODE=A.APCODE '+
                'AND T.STRNO LIKE :0 ORDER BY M.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.Add('SELECT M.RECVNO,M.RECVDT,M.LOCAT,M.APCODE,A.APNAME,M.INVNO,M.INVDT,T.STRNO,T.REGNO,T.CRLOCAT,T.STAT,T.TSALE '+
                'FROM INVINVO M ,INVTRAN T  WHERE M.RECVNO=T.RECVNO AND T.REGNO LIKE :0 ORDER BY M.RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
        SQL.Add('SELECT M.RECVNO,M.RECVDT,M.LOCAT,M.APCODE,A.APNAME,M.INVNO,M.INVDT,T.STRNO,T.REGNO,T.CRLOCAT,T.STAT,T.TSALE '+
                'FROM INVINVO M ,INVTRAN T,APMAST A  WHERE M.RECVNO=T.RECVNO AND M.APCODE=A.APCODE '+
                'AND ((T.REGNO LIKE :0) or (M.RECVNO LIKE :0) or (T.APCODE LIKE :0) or (M.INVNO LIKE :0) '+
                'or (T.STRNO LIKE :0 )) ORDER BY M.RECVDT DESC '+cbViewdata.EditValue);
      end;
    2:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT RECVNO,RECVDT,RVLOCAT,APCODE,INVNO,TAXNO,BUYNO FROM OPTINV '+
                'WHERE RECVNO LIKE :EDIT1 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT RECVNO,RECVDT,RVLOCAT,APCODE,INVNO,TAXNO,BUYNO FROM OPTINV '+
                'WHERE APCODE LIKE :EDIT1 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT RECVNO,RECVDT,RVLOCAT,APCODE,INVNO,TAXNO,BUYNO FROM OPTINV '+
                'WHERE INVNO LIKE :EDIT1 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD('SELECT RECVNO,RECVDT,RVLOCAT,APCODE,INVNO,TAXNO,BUYNO FROM OPTINV '+
                'WHERE TAXNO LIKE :EDIT1 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.ItemIndex=4 Then
        SQL.Add('SELECT RECVNO,RECVDT,RVLOCAT,APCODE,INVNO,TAXNO,BUYNO FROM OPTINV '+
                'WHERE BUYNO LIKE :EDIT1 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.ItemIndex=5 Then
        SQL.Add('SELECT RECVNO,RECVDT,RVLOCAT,APCODE,INVNO,TAXNO,BUYNO FROM OPTINV '+
                'WHERE ((BUYNO LIKE :EDIT1) or (RECVNO LIKE :EDIT1) or (APCODE LIKE :EDIT1) '+
                'or (INVNO LIKE :EDIT1) or (TAXNO LIKE :EDIT1)) ORDER BY RECVDT DESC '+cbViewdata.EditValue);
      end;

    3:begin
        If OrderCombo.Itemindex=0 Then
           Sql.add('SELECT OPTCODE,OPTNAME,LOCAT,UNITPRC,ONHAND FROM OPTMAST WHERE OPTCODE LIKE:EDIT1 AND LOCAT LIKE :ED2 ');
        If OrderCombo.Itemindex=1 Then
           Sql.add('SELECT OPTCODE,OPTNAME,LOCAT,UNITPRC,ONHAND FROM OPTMAST WHERE OPTNAME LIKE:EDIT1 AND LOCAT LIKE :ED2');
      end;
    4:begin
        If OrderCombo.Itemindex=0 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,KEYNO,FLAG,RESVNO,REFNO,TYPE,MODEL,BAAB,COLOR,CC,STAT,CRLOCAT,CONTNO FROM INVTRAN WHERE STRNO LIKE:EDIT1 and FLAG LIKE :FL ');
        If OrderCombo.Itemindex=1 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,KEYNO,FLAG,RESVNO,REFNO,TYPE,MODEL,BAAB,COLOR,CC,STAT,CRLOCAT,CONTNO FROM INVTRAN WHERE ENGNO LIKE:EDIT1 and FLAG LIKE :FL ');
        If OrderCombo.Itemindex=2 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,KEYNO,FLAG,RESVNO,REFNO,TYPE,MODEL,BAAB,COLOR,CC,STAT,CRLOCAT,CONTNO FROM INVTRAN WHERE REGNO LIKE:EDIT1 and FLAG LIKE :FL ');
        If OrderCombo.Itemindex=3 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,KEYNO,FLAG,RESVNO,REFNO,TYPE,MODEL,BAAB,COLOR,CC,STAT,CRLOCAT,CONTNO FROM INVTRAN WHERE RESVNO LIKE:EDIT1 and FLAG LIKE :FL ');
        If OrderCombo.Itemindex=4 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,KEYNO,FLAG,RESVNO,REFNO,TYPE,MODEL,BAAB,COLOR,CC,STAT,CRLOCAT,CONTNO FROM INVTRAN WHERE CONTNO LIKE:EDIT1 and FLAG LIKE :FL  ');
        If OrderCombo.Itemindex=5 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,KEYNO,FLAG,RESVNO,REFNO,TYPE,MODEL,'+
                   'BAAB,COLOR,CC,STAT,CRLOCAT,CONTNO FROM INVTRAN '+
                   'WHERE ((CONTNO LIKE:EDIT1) or (STRNO LIKE:EDIT1) or (ENGNO LIKE:EDIT1) or (REGNO LIKE:EDIT1) or (RESVNO LIKE:EDIT1)) and FLAG LIKE :FL  ');
      end;
    5:begin
        If OrderCombo.Itemindex=0 Then
           Sql.add('SELECT MOVENO,MOVEDT,MOVEFM,MOVETO FROM INVMOVM WHERE MOVENO LIKE:EDIT1 ORDER BY MOVEDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
           Sql.add('SELECT MOVENO,MOVEDT,MOVEFM,MOVETO FROM INVMOVM WHERE MOVEFM LIKE:EDIT1 ORDER BY MOVEDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
           Sql.add('SELECT MOVENO,MOVEDT,MOVEFM,MOVETO FROM INVMOVM '+
                   'WHERE ((MOVEFM LIKE:EDIT1) or (MOVENO LIKE:EDIT1)) ORDER BY MOVEDT DESC '+cbViewdata.EditValue);
      end;
    6:begin
        If OrderCombo.Itemindex=0 Then
           Sql.add('SELECT MOVENO,MOVEDT,MOVEFM,MOVETO FROM OPTMOVM WHERE MOVENO LIKE:EDIT1 ORDER BY MOVEDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
           Sql.add('SELECT MOVENO,MOVEDT,MOVEFM,MOVETO FROM OPTMOVM WHERE MOVEFM LIKE:EDIT1 ORDER BY MOVEDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
           Sql.add('SELECT MOVENO,MOVEDT,MOVEFM,MOVETO FROM OPTMOVM '+
                   'WHERE ((MOVEFM LIKE:EDIT1) or (MOVENO LIKE:EDIT1)) ORDER BY MOVEDT DESC '+cbViewdata.EditValue);
      end;
    7:begin
        If OrderCombo.Itemindex=0 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,FLAG,TYPE,MODEL,COLOR,STAT,CRLOCAT,TAXIN FROM INVTRAN WHERE TAXIN=''N'' AND VATRT=7 '+
                   'AND STRNO LIKE :EDIT1 AND RVLOCAT LIKE :LOC1 AND RECVNO LIKE :2 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,FLAG,TYPE,MODEL,COLOR,STAT,CRLOCAT,TAXIN FROM INVTRAN WHERE TAXIN=''N'' AND VATRT=7 '+
                   'AND ENGNO LIKE :EDIT1 AND RVLOCAT LIKE :LOC1 AND RECVNO LIKE :2 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,FLAG,TYPE,MODEL,COLOR,STAT,CRLOCAT,TAXIN FROM INVTRAN WHERE TAXIN=''N'' AND VATRT=7 '+
                   'AND REGNO LIKE :EDIT1 AND RVLOCAT LIKE :LOC1 AND RECVNO LIKE :2 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,FLAG,TYPE,MODEL,COLOR,STAT,CRLOCAT,TAXIN FROM INVTRAN WHERE TAXIN=''N'' AND VATRT=7 '+
                   'AND TYPE LIKE :EDIT1 AND RVLOCAT LIKE :LOC1 AND RECVNO LIKE :2 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,FLAG,TYPE,MODEL,COLOR,STAT,CRLOCAT,TAXIN FROM INVTRAN WHERE TAXIN=''N'' AND VATRT=7 '+
                   'AND MODEL LIKE :EDIT1  AND RVLOCAT LIKE :LOC1 AND RECVNO LIKE :2 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=5 Then
           Sql.add('SELECT STRNO,ENGNO,REGNO,FLAG,TYPE,MODEL,COLOR,STAT,CRLOCAT,TAXIN FROM INVTRAN WHERE TAXIN=''N'' AND VATRT=7 '+
                   'AND ((MODEL LIKE :EDIT1) or (STRNO LIKE :EDIT1) or (ENGNO LIKE :EDIT1) or (REGNO LIKE :EDIT1) or (TYPE LIKE :EDIT1)) '+
                   'AND RVLOCAT LIKE :LOC1 AND RECVNO LIKE :2 ORDER BY RECVDT DESC '+cbViewdata.EditValue);
      end;
    8:begin
        If OrderCombo.Itemindex=0 Then
           Sql.add('SELECT T.TAXNO,T.TAXDATE,T.CUSCOD,T.TAXREFNO,T.LOCAT,T.APTYPE,S.STRNO '+
                   'FROM TAXBUY T LEFT JOIN TAXBUYTRN S ON (T.TAXNO=S.TAXNO ) '+
                   'WHERE T.TAXNO LIKE :EDIT1 AND T.LOCAT LIKE :LOC1 AND T.APTYPE=''SL'' '+
                   'ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
           Sql.add('SELECT T.TAXNO,T.TAXDATE,T.CUSCOD,T.TAXREFNO,T.LOCAT,T.APTYPE,S.STRNO '+
                   'FROM TAXBUY T LEFT JOIN TAXBUYTRN S ON (T.TAXNO=S.TAXNO ) '+
                   'WHERE T.CUSCOD LIKE :EDIT1 AND T.LOCAT LIKE :LOC1 AND T.APTYPE=''SL'' '+
                   'ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
           Sql.add('SELECT T.TAXNO,T.TAXDATE,T.CUSCOD,T.TAXREFNO,T.LOCAT,T.APTYPE,S.STRNO '+
                   'FROM TAXBUY T LEFT JOIN TAXBUYTRN S ON (T.TAXNO=S.TAXNO ) '+
                   'WHERE T.TAXREFNO LIKE :EDIT1 AND T.LOCAT LIKE :LOC1 AND T.APTYPE=''SL'' '+
                   'ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
           Sql.add('SELECT T.TAXNO,T.TAXDATE,T.CUSCOD,T.TAXREFNO,T.LOCAT,T.APTYPE,S.STRNO '+
                   'FROM TAXBUY T LEFT JOIN TAXBUYTRN S ON (T.TAXNO=S.TAXNO ) '+
                   'WHERE S.STRNO LIKE :EDIT1 AND T.LOCAT LIKE :LOC1 AND T.APTYPE=''SL'' '+
                   'ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
           Sql.add('SELECT T.TAXNO,T.TAXDATE,T.CUSCOD,T.TAXREFNO,T.LOCAT,T.APTYPE,S.STRNO '+
                   'FROM TAXBUY T LEFT JOIN TAXBUYTRN S ON (T.TAXNO=S.TAXNO ) '+
                   'WHERE ((S.STRNO LIKE :EDIT1) or (T.TAXNO LIKE :EDIT1) or (T.CUSCOD LIKE :EDIT1) '+
                   'or (T.TAXREFNO LIKE :EDIT1)) AND T.LOCAT LIKE :LOC1 AND T.APTYPE=''SL'' '+
                   'ORDER BY T.TAXDATE DESC '+cbViewdata.EditValue);
      end;
    9:begin
        If OrderCombo.Itemindex=0 Then
           Sql.add('SELECT A.PURCHASENO,A.PURCHASEDT,A.APCODE,B.APNAME,A.REFNO FROM HDPURCHASE A,APMAST B '+
                   'WHERE A.APCODE=B.APCODE AND A.PURCHASENO LIKE :0 AND LOCAT LIKE :1 ORDER BY A.PURCHASEDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
           Sql.add('SELECT A.PURCHASENO,A.PURCHASEDT,A.APCODE,B.APNAME,A.REFNO FROM HDPURCHASE A,APMAST B '+
                   'WHERE A.APCODE=B.APCODE AND B.APCODE LIKE :0 AND LOCAT LIKE :1 ORDER BY A.PURCHASEDT DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
           Sql.add('SELECT A.PURCHASENO,A.PURCHASEDT,A.APCODE,B.APNAME,A.REFNO FROM HDPURCHASE A,APMAST B '+
                   'WHERE A.APCODE=B.APCODE AND B.APNAME LIKE :0 AND LOCAT LIKE :1 ORDER BY A.PURCHASEDT DESC '+cbViewdata.EditValue);
        If OrderCombo.ItemIndex=3 Then
           Sql.Add('SELECT A.PURCHASENO,A.PURCHASEDT,A.APCODE,B.APNAME,A.REFNO FROM HDPURCHASE A,APMAST B '+
                   'WHERE A.APCODE=B.APCODE AND A.REFNO LIKE :0 AND LOCAT LIKE :1 ORDER BY A.PURCHASEDT DESC '+cbViewdata.EditValue);
        If OrderCombo.ItemIndex=4 Then
           Sql.Add('SELECT A.PURCHASENO,A.PURCHASEDT,A.APCODE,B.APNAME,A.REFNO FROM HDPURCHASE A,APMAST B '+
                   'WHERE A.APCODE=B.APCODE AND ((A.REFNO LIKE :0) or (A.PURCHASENO LIKE :0) '+
                   'or (B.APCODE LIKE :0) or (B.APNAME LIKE :0)) AND LOCAT LIKE :1 ORDER BY A.PURCHASEDT DESC '+cbViewdata.EditValue);
      end;
   10:begin
        If OrderCombo.ItemIndex=0 then
        SQL.Add('SELECT * FROM BUYPARTH WHERE BUYNO LIKE :EDIT1 AND FLAG LIKE :EDIT2');
        If OrderCombo.ItemIndex=1 then
        SQL.Add('SELECT * FROM BUYPARTH WHERE STRNO LIKE :EDIT1 AND FLAG LIKE :EDIT2');
      end;
   11:begin
        If OrderCombo.ItemIndex=0 then
        SQL.Add('SELECT * FROM TRESERV WHERE RESVNO LIKE :EDIT1 AND FLAG LIKE :EDIT2');
      end;
   12:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD( 'SELECT T.REGNO,H.LOCATRECV,H.LOCATKEEP,H.REGREDNO FROM STKRECVRED H,RECVREDTRN T WHERE T.REGREDNO=H.REGREDNO '+
                 'AND T.REGNO LIKE :EDIT1 AND T.FLAG LIKE :ED2 AND H.LOCATKEEP LIKE :ED3 ORDER BY H.RECVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD( 'SELECT T.REGNO,H.LOCATRECV,H.LOCATKEEP,H.REGREDNO FROM STKRECVRED H,RECVREDTRN T WHERE T.REGREDNO=H.REGREDNO '+
                 'AND H.LOCATRECV LIKE :EDIT1 AND T.FLAG LIKE :ED2 AND H.LOCATKEEP LIKE :ED3 ORDER BY H.RECVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=2 Then
        SQL.ADD( 'SELECT T.REGNO,H.LOCATRECV,H.LOCATKEEP,H.REGREDNO FROM STKRECVRED H,RECVREDTRN T WHERE T.REGREDNO=H.REGREDNO '+
                 'AND H.LOCATKEEP LIKE :EDIT1 AND T.FLAG LIKE :ED2 AND H.LOCATKEEP LIKE :ED3 ORDER BY H.RECVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=3 Then
        SQL.ADD( 'SELECT T.REGNO,H.LOCATRECV,H.LOCATKEEP,H.REGREDNO FROM STKRECVRED H,RECVREDTRN T WHERE T.REGREDNO=H.REGREDNO '+
                 'AND H.REGREDNO LIKE :EDIT1 AND T.FLAG LIKE :ED2 AND H.LOCATKEEP LIKE :ED3 ORDER BY H.RECVDATE DESC '+cbViewdata.EditValue);
        If OrderCombo.Itemindex=4 Then
        SQL.ADD( 'SELECT T.REGNO,H.LOCATRECV,H.LOCATKEEP,H.REGREDNO FROM STKRECVRED H,RECVREDTRN T WHERE T.REGREDNO=H.REGREDNO '+
                 'AND ((H.REGREDNO LIKE :EDIT1) or (T.REGNO LIKE :EDIT1) or (H.LOCATRECV LIKE :EDIT1) or (H.LOCATKEEP LIKE :EDIT1)) '+
                 'AND T.FLAG LIKE :ED2 AND H.LOCATKEEP LIKE :ED3 ORDER BY H.RECVDATE DESC '+cbViewdata.EditValue);
     end;
    end;
    HQuery1.Params[0].Asstring := Uppercase('%'+SearchEd.Text+'%');

    IF (OrderCombo.Tag=3) THEN
       HQuery1.Params[1].AsString := Xlocat+'%';

    if (OrderCombo.Tag=10) or (OrderCombo.Tag=11) then
        HQuery1.Params[1].AsString := XFlag+'%';

    if OrderCombo.Tag=4 then
    begin
      if OrderCombo.ItemIndex=5 then
      HQuery1.Params[5].AsString := XFlag+'%' else
      HQuery1.Params[1].AsString := XFlag+'%';
    end;

    if OrderCombo.Tag = 7 then
    begin
      if OrderCombo.ItemIndex = 5 then
      begin
        HQuery1.Params[5].AsString := Xlocat+'%';
        HQuery1.Params[6].AsString := Xrecvno+'%';
      end else
      begin
        HQuery1.Params[1].AsString := Xlocat+'%';
        HQuery1.Params[2].AsString := Xrecvno+'%';
      end;
    end;

    if OrderCombo.Tag=8 then
    begin
      if OrderCombo.ItemIndex=4 then
      HQuery1.Params[4].AsString := Xlocat+'%' else
      HQuery1.Params[1].AsString := Xlocat+'%';
    end;

    if OrderCombo.Tag=9 then
    begin
      if OrderCombo.ItemIndex=4 then
      HQuery1.Params[4].AsString := Xlocat+'%' else
      HQuery1.Params[1].AsString := Xlocat+'%';
    end;

    if OrderCombo.Tag = 12 then
    begin
      if OrderCombo.ItemIndex = 4 then
      begin
        HQuery1.Params[4].AsString := FlagRed+'%';
        HQuery1.Params[5].AsString := LocatRed+'%';
      end else
      begin
        HQuery1.Params[1].AsString := FlagRed+'%';
        HQuery1.Params[2].AsString := LocatRed+'%';
      end;
    end;
        HQuery1.Open;
        SFMain.Do_Show_DisplayFormat_Floating(HQuery1);
 End;
end;

procedure TSearchStk.OrderComboChange(Sender: TObject);
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
  cxGridDBTableView1.ClearItems;
  for I:=0 To Max Do
  begin
    cxGridDBTableView1.CreateColumn.DataBinding.FieldName    := Fldgrd[I];
    cxGridDBTableView1.Columns[I].Caption := Title[I];
    If Fldgrd[I] = 'NAME1' Then
      cxGridDBTableView1.Columns[I].Width := 60;
  end;
end;

procedure TSearchStk.SearchEdChange(Sender: TObject);
begin
  If SFMain.Xsrch='Y' Then
  SearchButtonClick(Sender);
end;


procedure TSearchStk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TSearchStk.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TSearchStk.CalcMax;
begin
 { ** Field Name & Title** }
  I:=0;
  While I<=10 Do
  begin
    cxGridDBTableView1.CreateColumn.DataBinding.FieldName    := Fldgrd[I];
    cxGridDBTableView1.Columns[I].Caption := Title[I];
    If Fldgrd[I]='' Then
    begin
     Max:=I-1;
     If Max<0 Then Max:=0;
     break;
    end;
    I:=I+1;
  end;
end;

procedure TSearchStk.FormCreate(Sender: TObject);
begin
  I:=0;
  While I<=15 Do
  begin
    Title[I]  := '';
    Fldgrd[I] := '';
    I:=I+1;
  end;
end;

procedure TSearchStk.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   Begin
      SearchButtonClick(Sender);
      DbGrid1.SetFocus;
   End;
end;

procedure TSearchStk.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = true then
  cxGridDBTableView1.DataController.Groups.FullExpand else
  cxGridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TSearchStk.cxGridDBTableView1DataControllerGroupingChanged(
  Sender: TObject);
begin
  if HQuery1.Active = True then
  begin
  cxCheckBox1.Checked := False;
  cxCheckBox1.Enabled := ((HQuery1.RecordCount>0) AND
                          (cxGridDBTableView1.GroupedColumnCount>0));
  end;
end;

procedure TSearchStk.cxGridDBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AStyle: TcxStyle;
  IndNo : String;
begin
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
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
  ADone := True;

end;

procedure TSearchStk.cxGridDBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSearchStk.cxGridDBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  Begin
    OkBtn.Click;
  End;
end;

end.
