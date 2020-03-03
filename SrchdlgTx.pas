unit SrchdlgTx;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DB, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSearchDlgTx = class(TForm)
    SearchEd: TEdit;
    OrderCombo: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    SearchButton: TSpeedButton;
    DataSource: TDataSource;
    HQuery1: TFDQuery;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    NewKeyno,SC1: string;
    property Keyno: string read GetKeyno;

    function ShowModalCust: Integer;
    function ShowModalParts: Integer;
    function ShowModalLocat: Integer;
    function ShowModalGroup: Integer;
    function ShowModalType: Integer;
    function ShowModalAP: Integer;
    function ShowModalAR: Integer;
    function ShowModalPAYTYP: Integer;
    function ShowModalOffic: Integer;
    function ShowModalPO: Integer;
    function ShowModalBak: Integer;
    function ShowModalApKang: Integer;
    function ShowModalApPay: Integer;
    function ShowModalApBil: Integer;
    function ShowModalApPay2: Integer;
    function ShowModalApTaxno: Integer;
    function ShowModalCRDNO: Integer;
    function ShowModalApOth: Integer;
    function ShowModalBook: Integer;
    function ShowModalChqno: Integer;
    function ShowModalChqPy: Integer;
    function ShowModalPaycode: Integer;
    function ShowModalTAXPST: Integer;

  end;

var
  SearchDlgTx: TSearchDlgTx;

  Title : Array[0..10] of String;
  Fldgrd: Array[0..10] of String;
  I,Max :Word;

implementation

uses USoftFirm, Dmsec;


{$R *.DFM}

function TSearchDlgTx.ShowModalCust: Integer;
begin
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add('Company');
  OrderCombo.Items.Add('CustNo');
  OrderCombo.ItemIndex := 0;
  OrderComboChange(nil);
  Caption := 'Select a Customer';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalParts: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 0;
  Title[0]  := '����������';
  Title[1]  := '����������';
  Title[2]  := '�����';
  Title[3]  := '�ҤҢ��';

  Fldgrd[0] := 'Partno';
  Fldgrd[1] := 'Desc1';
  Fldgrd[2] := 'Group1';
  Fldgrd[3] := 'Price1';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help Part';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalLocat: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 1;
  Title[0]  := '�����Ң�';
  Title[1]  := '�����Ң�';
  Title[2]  := '�������';

  Fldgrd[0] := 'LOCATCOD';
  Fldgrd[1] := 'LOCATNAM';
  Fldgrd[2] := 'LOCATDOC';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �Ң�';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalGroup: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 2;
  Title[0]  := '���ʡ����';
  Title[1]  := '���͡����';

  Fldgrd[0] := 'GROUPCOD';
  Fldgrd[1] := 'GROUPNAM';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ������Թ���';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalType: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 3;
  Title[0]  := '����������';
  Title[1]  := '����������';

  Fldgrd[0] := 'TYPECOD';
  Fldgrd[1] := 'TYPENAM';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �������Թ���';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalAP: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 4;
  Title[0]  := '�������˹��';
  Title[1]  := '�������˹��';

  Fldgrd[0] := 'APCODE';
  Fldgrd[1] := 'APNAME';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �������˹��';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalAR: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 5;
  Title[0]  := '�����١���';
  Title[1]  := '�����١���';
  Title[2]  := '���ʡ��';

  Fldgrd[0] := 'CUSCOD';
  Fldgrd[1] := 'NAME1';
  Fldgrd[2] := 'NAME2';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �����١���';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalPAYTYP: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 6;
  Title[0]  := '���ʻ�����';
  Title[1]  := '��������ê���';

  Fldgrd[0] := 'PAYCODE';
  Fldgrd[1] := 'PAYDESC';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ��������ê���';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalOffic: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 7;
  Title[0]  := '���ʾ�ѡ�ҹ';
  Title[1]  := '���;�ѡ�ҹ';
  Title[2]  := 'Ἱ�';

  Fldgrd[0] := 'OFFICCOD';
  Fldgrd[1] := 'OFFICNAM';
  Fldgrd[2] := 'DEPART';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �����١���';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalPO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 8;
  Title[0]  := '���觫���';
  Title[1]  := '�ѹ���';
  Title[2]  := '�������˹��';
  Title[3]  := '�Ң�';

  Fldgrd[0] := 'PONO';
  Fldgrd[1] := 'PODATE';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'POLOCAT';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  //OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ���觫���';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalBak: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 9;
  Title[0]  := '���ʸ�Ҥ��';
  Title[1]  := '���͸�Ҥ��';

  Fldgrd[0] := 'BKCODE';
  Fldgrd[1] := 'BKNAME';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ��Ҥ��';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalApkang: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 10;
  Title[0]  := '�Ţ��� Inv.';
  Title[1]  := '�Ţ��ҧ�ԧ';
  Title[2]  := '���˹��';
  Title[3]  := '�ʹ��ҧ';
  Title[4]  := 'FLAG';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'RECVNO';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'KANG';
  Fldgrd[4] := 'FLAG';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �Թ������ҧ����';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalApPay: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 11;
  Title[0]  := '�Ţ��������';
  Title[1]  := '�Ţ Invoice';
  Title[2]  := '���˹��';
  Title[3]  := '�ʹ��';
  Title[4]  := '�ʹ�Թʴ';
  Title[5]  := '¡��ԡ';

  Fldgrd[0] := 'BILLNO';
  Fldgrd[1] := 'INVNO';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'CHQAMT';
  Fldgrd[4] := 'CSHAMT';
  Fldgrd[5] := 'Cancelid';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �����';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalApBil: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 12;
  Title[0]  := '�Ţ����Ѻ�ҧ���';
  Title[1]  := '�ѹ���';
  Title[2]  := '�Ң�';
  Title[3]  := '�������˹��';
  Title[4]  := '�ӹǹ�Թ';
  Title[5]  := '�����';

  Fldgrd[0] := 'APBILNO';
  Fldgrd[1] := 'BDATE';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'APCODE';
  Fldgrd[4] := 'AMOUNT';
  Fldgrd[5] := 'REFBIL';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.Items.Add(Title[5]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ��Ѻ�ҧ���';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalApPay2: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 13;
  Title[0]  := '�Ţ��������';
  Title[1]  := '�Ţ��ҧ���';
  Title[2]  := '���˹��';
  Title[3]  := '�ʹ��';
  Title[4]  := '�ʹ�Թʴ';
  Title[5]  := '¡��ԡ';

  Fldgrd[0] := 'BILLNO';
  Fldgrd[1] := 'INVNO';
  Fldgrd[2] := 'APCODE';
  Fldgrd[3] := 'CHQAMT';
  Fldgrd[4] := 'CSHAMT';
  Fldgrd[5] := 'Cancelid';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �����(�����ҧ���)';
  Result := ShowModal;
end;
function TSearchDlgTx.ShowModalApTaxno: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 14;
  Title[0]  := '㺡ӡѺ';
  Title[1]  := '��觢ͧ';
  Title[2]  := '�ѹ���㺡ӡѺ';
  Title[3]  := '���˹��';
  Title[4]  := '�ʹ���';
  Title[5]  := 'FLAG';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'INVNO';
  Fldgrd[2] := 'TAXDATE';
  Fldgrd[3] := 'APCODE';
  Fldgrd[4] := 'NETTOTAL';
  Fldgrd[5] := 'FLAG';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[3]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalCRDNO: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 15;
  Title[0]  := '�Ţ����Ŵ˹��';
  Title[1]  := 'Taxno';
  Title[2]  := '�������˹��';
  Title[3]  := '�ѹ���';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXREFNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'TAXDATE';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �Ŵ˹��';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalApOth: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 16;
  Title[0]  := '�Ţ Invoice';
  Title[1]  := '�Ţ Invoice';
  Title[2]  := '�Ţ����Ѻ';
  Title[3]  := '�ѹ����Ѻ';
  Title[4]  := '�������˹��';
  Title[5]  := '�ӹǹ�Թ';
  Title[6]  := '¡��ԡ';

  Fldgrd[0] := 'INVNO';
  Fldgrd[1] := 'INVDATE';
  Fldgrd[2] := 'RECVNO';
  Fldgrd[3] := 'RECVDT';
  Fldgrd[4] := 'APCODE';
  Fldgrd[5] := 'Nettotal';
  Fldgrd[6] := 'Cancelid';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.Items.Add(Title[4]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ���˹�����';
  Result := ShowModal;
end;


function TSearchDlgTx.ShowModalbook: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 17;
  Title[0]  := '�����Ţ�ѭ��';
  Title[1]  := '���ͺѭ��';
  Title[2]  := '���ʺѭ���¡������';

  Fldgrd[0] := 'BKCODE';
  Fldgrd[1] := 'BKNAME';
  Fldgrd[2] := 'ACCOUNT';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ��ش�ѭ��';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalChqno: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 18;
  Title[0]  := '�Ţ�����';
  Title[1]  := '�Ţ���ѭ��';
  Title[2]  := '���͸�Ҥ���';
  Title[3]  := '�Ң�';

  Fldgrd[0] := 'CHQNO';
  Fldgrd[1] := 'BKCODE';
  Fldgrd[2] := 'BANK';
  Fldgrd[3] := 'LOCAT';


  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �� ';
  Result := ShowModal;
end;


function TSearchDlgTx.ShowModalChqPy: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 19;
  Title[0]  := '�Ţ�����';
  Title[1]  := '�Ţ���ѭ��';
  Title[2]  := '�Ţ�����ҧ�ԧ';
  Title[3]  := '�Ţ��������';
  Title[4]  := '�ӹǹ�Թ˹����';
  Title[5]  := '�ӹǹ�Թ������';
  Title[6]  := '���ʸ�Ҥ��';

  Fldgrd[0] := 'CHQNO';
  Fldgrd[1] := 'BKCODE';
  Fldgrd[2] := 'REFNO';
  Fldgrd[3] := 'BILLNO';
  Fldgrd[4] := 'CHQAMT';
  Fldgrd[5] := 'PAYAMT';
  Fldgrd[6] := 'BKCD';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �礨��� ';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalPAYCODE: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 20;
  Title[0]  := '����';
  Title[1]  := '��͸Ժ��';


  Fldgrd[0] := 'PAYCD';
  Fldgrd[1] := 'PAYDSC';

  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help ��������';
  Result := ShowModal;
end;

function TSearchDlgTx.ShowModalTAXPST: Integer;
begin
  //*** Set Up ****
  OrderCombo.Tag := 21;
  Title[0]  := '�Ţ���㺡ӡѺ';
  Title[1]  := '�Ţ�����ҧ�ԧ';
  Title[2]  := '�����١���';
  Title[3]  := '�ʹ�Թ';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXREFNO';
  Fldgrd[2] := 'CUSCOD';
  Fldgrd[3] := 'TOTTAX';
  OrderCombo.Items.Clear;
  OrderCombo.Items.Add(Title[0]);
  OrderCombo.Items.Add(Title[1]);
  OrderCombo.Items.Add(Title[2]);

  OrderCombo.ItemIndex := 0;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help 㺡ӡѺ�Թ�Ѵ��';
  Result := ShowModal;
end;



function TSearchDlgTx.GetKeyno: string;
begin
  If HQuery1.Active Then
  Case OrderCombo.Tag Of
    0 :Result := HQuery1.Fieldbyname('PartNo').Asstring;
    1 :Result := HQuery1.Fieldbyname('LOCATCOD').Asstring;
    2 :Result := HQuery1.Fieldbyname('GROUPCOD').Asstring;
    3 :Result := HQuery1.Fieldbyname('TYPECOD').Asstring;
    4 :Result := HQuery1.Fieldbyname('APCODE').Asstring;
    5 :Result := HQuery1.Fieldbyname('CUSCOD').Asstring;
    6 :Result := HQuery1.Fieldbyname('PAYCODE').Asstring;
    7 :Result := HQuery1.Fieldbyname('OFFICCOD').Asstring;
    8 :Result := HQuery1.Fieldbyname('PONO').Asstring;
    9 :Result := HQuery1.Fieldbyname('BKCODE').Asstring;
    10:Result := HQuery1.Fieldbyname('INVNO').Asstring;
    11:Result := HQuery1.Fieldbyname('BILLNO').Asstring;
    12:Result := HQuery1.Fieldbyname('APBILNO').Asstring;
    13:Result := HQuery1.Fieldbyname('BILLNO').Asstring;
    14:Result := HQuery1.Fieldbyname('TAXNO').Asstring;
    15:Result := HQuery1.Fieldbyname('TAXNO').Asstring;
    16:Result := HQuery1.Fieldbyname('INVNO').Asstring;
    17:Result := HQuery1.Fieldbyname('BKCODE').Asstring;
    18:Result := HQuery1.Fieldbyname('CHQNO').Asstring;
    19:Result := HQuery1.Fieldbyname('REFNO').Asstring;
    20:Result := HQuery1.Fieldbyname('PAYCD').Asstring;
    21:Result := HQuery1.Fieldbyname('TAXNO').Asstring;
  end;
end;

{procedure TSearchDlg.StartQuery(NewKeyno: string);
begin
  If NewKeyno<>'' Then
  begin
    HQuery1.RSQL := 'SELECT  PARTNO,DESC1,GROUP1,PRICE1 FROM INVMAST WHERE PARTNO LIKE :EDIT1';
    HQuery1.Params[0].Asstring := NewKeyno+'%';
    HQuery1.Open;
  end;
end;
}

procedure TSearchDlgTx.DBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSearchDlgTx.SearchButtonClick(Sender: TObject);
begin
  With HQuery1 Do
  Begin
    Close;
    SQL.Clear;
    Case OrderCombo.Tag Of
    0:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT  PARTNO,DESC1,GROUP1,PRICE1 FROM INVMAST WHERE PARTNO LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT  PARTNO,DESC1,GROUP1,PRICE1 FROM INVMAST WHERE DESC1 LIKE :EDIT1');
      end;
    1:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM LOCATMST WHERE LOCATCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM LOCATMST WHERE LOCATNAM LIKE :EDIT1');
      end;
    2:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM GROUPMST WHERE GROUPCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM GROUPMST WHERE GROUPNAM LIKE :EDIT1');
      end;
    3:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM TYPEMST WHERE TYPECOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM TYPEMST WHERE TYPENAM LIKE :EDIT1');
      end;
    4:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APMAST WHERE APCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APMAST WHERE APNAME LIKE :EDIT1');
      end;
    5:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM ARMAST WHERE CUSCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM ARMAST WHERE NAME1 LIKE :EDIT1 ORDER BY NAME1');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM ARMAST WHERE NAME2 LIKE :EDIT1 ORDER BY NAME2');
      end;
    6:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PAYTYP WHERE PAYCODE LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM PAYTYP WHERE PAYDESC LIKE :EDIT1');
      end;
    7:begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM OFFICER WHERE OFFICCOD LIKE :EDIT1');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM OFFICER WHERE OFFICNAM LIKE :EDIT1');
      end;
    8:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PO_INVOI WHERE PONO LIKE :EDIT1');
      end;
    9:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM BKMAST WHERE BKCODE LIKE :EDIT1');
      end;
   10:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE INVNO LIKE :EDIT1 AND KANG>0  AND (DEPOSIT <> ''Y'' or DEPOSIT IS null)  ORDER BY INVNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE RECVNO LIKE :EDIT1 AND KANG>0 AND (DEPOSIT <> ''Y'' or DEPOSIT IS null ) ORDER BY RECVNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE APCODE LIKE :EDIT1 AND KANG>0 AND (DEPOSIT <> ''Y'' or DEPOSIT IS null ) ORDER BY APCODE');

      end;
   11:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APPAYTRN WHERE BILLNO LIKE :EDIT1 AND PAYCONT=''1'' ORDER BY BILLNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APPAYTRN WHERE INVNO LIKE :EDIT1 AND PAYCONT=''1'' ORDER BY APCODE');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM APPAYTRN WHERE APCODE LIKE :EDIT1 AND PAYCONT=''1'' ORDER BY APCODE');

      end;
   12:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APBILL WHERE APBILNO LIKE :EDIT1 '+SC1);
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APBILL WHERE APCODE LIKE :EDIT1 '+SC1+' ORDER BY APCODE');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM APBILL WHERE REFBIL LIKE :EDIT1 '+SC1);
      end;
   13:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APPAYTRN WHERE BILLNO LIKE :EDIT1 AND PAYCONT=''2'' ORDER BY BILLNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APPAYTRN WHERE INVNO LIKE :EDIT1 AND PAYCONT=''2'' ORDER BY APCODE');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM APPAYTRN WHERE APCODE LIKE :EDIT1 AND PAYCONT=''2'' ORDER BY APCODE');
      end;
   14:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE TAXNO LIKE :EDIT1 AND FLAG<>''6''  ORDER BY TAXNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE INVNO LIKE :EDIT1 AND FLAG<>''6'' ORDER BY INVNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE APCODE LIKE :EDIT1 AND FLAG<>''6''  ORDER BY APCODE');
      end;
   15:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM TAXBUY WHERE TAXNO LIKE :EDIT1 AND FLAG=''6'' ORDER BY TAXNO');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM TAXBUY WHERE TAXREFNO LIKE :EDIT1 AND FLAG=''6'' ORDER BY TAXREFNO');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM TAXBUY WHERE CUSCOD LIKE :EDIT1 AND FLAG=''6'' ');
      end;
   16:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE INVNO LIKE :EDIT1 AND FLAG=''E'' ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE RECVNO LIKE :EDIT1 AND FLAG=''E'' ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM APINVOI WHERE APCODE LIKE :EDIT1 AND FLAG=''E'' ');
      end;
  17:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM BOOK WHERE BKCODE LIKE :EDIT1 ORDER BY  BKCODE ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM BOOK WHERE BKNAME LIKE :EDIT1 ORDER BY  BKNAME ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM BOOK WHERE ACCOUNT LIKE :EDIT1 ORDER BY  ACCOUNT ');
      end;
  18:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM CHQSTOCK WHERE CHQNO LIKE :EDIT1 '+SC1+'  ORDER BY  CHQNO ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM CHQSTOCK WHERE BKCODE LIKE :EDIT1 '+SC1+' ORDER BY  BKCODE ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM CHQSTOCK WHERE BANK LIKE :EDIT1  '+SC1+' ORDER BY  BANK ');
      end;
   19:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE CHQNO LIKE :EDIT1 AND PAYTYP = ''02'' '+SC1+' ORDER BY  CHQNO ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE BKCODE LIKE :EDIT1 AND PAYTYP = ''02''  '+SC1+' ORDER BY  BKCODE ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM CHQPYPRN WHERE REFNO LIKE :EDIT1 AND PAYTYP = ''02''  '+SC1+'  ORDER BY  REFNO ');
      end;
   20:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM PAYCODE WHERE PAYCD  LIKE :EDIT1 '+SC1+' ORDER BY  PAYCD ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM PAYCODE WHERE PAYDSC LIKE :EDIT1 '+SC1+' ORDER BY  PAYDSC ');

      end;
   21:Begin
        If OrderCombo.Itemindex=0 Then
        SQL.ADD('SELECT * FROM TAXSAL WHERE TAXNO  LIKE :EDIT1  '+SC1+'  ORDER BY  TAXNO ');
        If OrderCombo.Itemindex=1 Then
        SQL.ADD('SELECT * FROM TAXSAL WHERE TAXREFNO LIKE :EDIT1  '+SC1+' ORDER BY  TAXREFNO ');
        If OrderCombo.Itemindex=2 Then
        SQL.ADD('SELECT * FROM TAXSAL WHERE CUSCOD LIKE :EDIT1   '+SC1+' ORDER BY  CUSCOD ');

      end;

      end;
    HQuery1.Params[0].Asstring := Uppercase(SearchEd.Text)+'%';
    HQuery1.Open;
 End;
end;

procedure TSearchDlgTx.OrderComboChange(Sender: TObject);
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
  end;
end;

procedure TSearchDlgTx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SC1 := '';
  Action := Cafree;

end;

procedure TSearchDlgTx.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TSearchDlgTx.CalcMax;
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


procedure TSearchDlgTx.SearchEdChange(Sender: TObject);
begin
  If SFMain.Xsrch ='Y' Then 
  SearchButtonClick(Sender);
end;

procedure TSearchDlgTx.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 if  key  = VK_F3 then
 SearchButton.Click;

 if  key  = VK_F4 then
 DBGrid1.SetFocus;

 if  key  = VK_F2 then
 SearchEd.SetFocus;

end;

end.
