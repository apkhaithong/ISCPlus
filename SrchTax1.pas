unit SrchTax1;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, DB,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxLookAndFeels, cxContainer, cxGridCardView,
  cxGridDBCardView, cxImageComboBox, cxCheckBox, AdvShapeButton, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, AdvGlowButton, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxNavigator, dxDateRanges,
  dxBarBuiltInMenu, cxGridCustomLayoutView;

type
  TSearchTax = class(TForm)
    DataSource: TDataSource;
    HQuery1: TFDQuery;
    Panel3: TPanel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    SearchButton: TAdvGlowButton;
    OrderCombo: TcxComboBox;
    OkBtn: TcxButton;
    CancelBtn: TcxButton;
    SearchEd: TcxTextEdit;
    AdvShapeButton1: TAdvShapeButton;
    cxCheckBox1: TcxCheckBox;
    cbViewdata: TcxImageComboBox;
    DBGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridLevel2: TcxGridLevel;
    procedure SearchButtonClick(Sender: TObject);
    procedure OrderComboChange(Sender: TObject);
    procedure SearchEdChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SearchEdKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DBTableView1DblClick(Sender: TObject);
    procedure DBGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DataControllerGroupingChanged(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    function GetKeyno: string;
    procedure CalcMax;
  public
    NewKeyno, Xsrch, XCont, XTaxtyp, SqlText, XSrLocat, SC1: string;
    property Keyno: string read GetKeyno;
    function ShowModalTaxno: Integer;
    function ShowModalTaxno1: Integer;
    function ShowModalTaxCrd: Integer;
    function ShowModalTypCred: Integer;
    function ShowModalTaxFinc: Integer;
    function ShowModalTaxBuy: Integer;
    function ShowModalStrRecv: Integer;
    function ShowModalTaxCrdB1: Integer;
    function ShowModalAgnStrno: Integer;
    function ShowModalTAXPST: Integer;
  end;

var
  SearchTax: TSearchTax;
  Title: array[0..10] of string;
  Fldgrd: array[0..10] of string;
  I, Max: Word;

implementation

uses
  USoftFirm, Dmsec;


{$R *.DFM}

function TSearchTax.ShowModalTaxno: Integer;
begin
  //*** Tax ****
  OrderCombo.Tag := 0;
  Title[0] := '�Ţ���㺡ӡѺ';
  Title[1] := '�ѹ���㺡ӡѺ';
  Title[2] := '�͡���Ң�';
  Title[3] := '��������â��';
  Title[4] := '�Ţ�ѭ��';
  Title[5] := '�����١���';
  Title[6] := '����';
  Title[7] := 'ʡ��';
  Title[8] := '�ӹǹ�Թ';
  Title[9] := '¡��ԡ';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDT';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'TSALE';
  Fldgrd[4] := 'CONTNO';
  Fldgrd[5] := 'CUSCOD';
  Fldgrd[6] := 'NAME1';
  Fldgrd[7] := 'NAME2';
  Fldgrd[8] := 'TOTAMT';
  Fldgrd[9] := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help 㺡ӡѺ���բ��';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTaxCrd: Integer;
begin
  OrderCombo.Tag := 1;
  Title[0] := '�Ţ����Ŵ˹��';
  Title[1] := '�ѹ����Ŵ˹��';
  Title[2] := '�͡���Ң�';
  Title[3] := '��ҧ�֧㺡ӡѺ';
  Title[4] := '�ѹ���㺡ӡѺ';
  Title[5] := '�Ţ�ѭ��';
  Title[6] := '����';
  Title[7] := 'ʡ��';
  Title[8] := '�ӹǹ�Թ';
  Title[9] := '¡��ԡ';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDT';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'REFNO';
  Fldgrd[4] := 'REFDT';
  Fldgrd[5] := 'CONTNO';
  Fldgrd[6] := 'NAME1';
  Fldgrd[7] := 'NAME2';
  Fldgrd[8] := 'TOTAMT';
  Fldgrd[9] := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  // ** Field Name & Title**
  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help �Ŵ˹���� ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTypcred: Integer;
begin
  OrderCombo.Tag := 2;
  Title[0] := '�������Ŵ˹��';
  Title[1] := '��¡��';

  Fldgrd[0] := 'CRDTYP';
  Fldgrd[1] := 'CRDDESC';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.ItemIndex := 0;
  // ** Field Name & Title**
  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help �������Ŵ˹�� ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTaxFinc: Integer;
begin
  OrderCombo.Tag := 3;
  Title[0] := '�Ţ���㺡ӡѺ';
  Title[1] := '�ѹ���㺡ӡѺ';
  Title[2] := '�͡���Ң�';
  Title[3] := '����ѷ�ṹ��';
  Title[4] := '�Ţ�ѭ��';
  Title[5] := '�����١���';
  Title[6] := '����';
  Title[7] := 'ʡ��';
  Title[8] := '�ӹǹ�Թ';
  Title[9] := '¡��ԡ';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDT';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'FINCOD';
  Fldgrd[4] := 'CONTNO';
  Fldgrd[5] := 'CUSCOD';
  Fldgrd[6] := 'NAME1';
  Fldgrd[7] := 'NAME2';
  Fldgrd[8] := 'TOTAMT';
  Fldgrd[9] := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.ItemIndex := 0;
  // ** Field Name & Title**
  CalcMax;
  OrderComboChange(nil);
  Caption := '����㺡ӡѺ ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTaxBuy: Integer;
begin
  OrderCombo.Tag := 4;
  Title[0] := '�Ţ���㺡ӡѺ';
  Title[1] := '�ѹ���㺡ӡѺ';
  Title[2] := '�Ţ�����Ѻ';
  Title[3] := '�ѹ�������Ѻ';
  Title[4] := '���ʺ.���˹��';
  Title[5] := '�ӹǹ�Թ';
  Title[6] := '¡��ԡ';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDATE';
  Fldgrd[2] := 'TAXREFNO';
  Fldgrd[3] := 'RECVDT';
  Fldgrd[4] := 'CUSCOD';
  Fldgrd[5] := 'TOTTAX';
  Fldgrd[6] := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.ItemIndex := 0;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help 㺡ӡѺ���ի���';
  Result := ShowModal;
end;

function TSearchTax.ShowModalStrRecv: Integer;
begin
  OrderCombo.Tag := 5;
  Title[0] := '�Ţ��Ƕѧ';
  Title[1] := '��Ť���Թ���';
  Title[2] := '��Ť������';
  Title[3] := '����ҤҢ��';
  Title[4] := '�ѵ������';
  Title[5] := '�Ţ�Ŵ˹��';
  Title[6] := '�ʹŴ˹������';

  Fldgrd[0] := 'STRNO';
  Fldgrd[1] := 'NETCOST';
  Fldgrd[2] := 'CRVAT';
  Fldgrd[3] := 'TOTCOST';
  Fldgrd[4] := 'VATRT';
  Fldgrd[5] := 'CRDTXNO';
  Fldgrd[6] := 'CRDAMT';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.ItemIndex := 0;
  // ** Field Name & Title**
  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help �Ţ��Ƕѧ ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTaxCrdB1: Integer;
begin
  OrderCombo.Tag := 6;
  Title[0] := '�Ţ����Ŵ˹��';
  Title[1] := '�ѹ����Ŵ˹��';
  Title[2] := '�͡���Ң�';
  Title[3] := '��ҧ�֧㺡ӡѺ';
  Title[4] := '�ѹ��㺡ӡѺ';
  Title[5] := '�.���˹��';
  Title[6] := '�ӹǹ�Թ';
  Title[7] := '¡��ԡ';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDATE';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'TAXREFNO';
  Fldgrd[4] := 'RECVDT';
  Fldgrd[5] := 'CUSCOD';
  Fldgrd[6] := 'TOTTAX';
  Fldgrd[7] := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.ItemIndex := 0;
  // ** Field Name & Title**
  CalcMax;
  OrderComboChange(nil);
  Caption := 'Help �Ŵ˹����� ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTaxno1: Integer;
begin
  //*** Tax ****
  OrderCombo.Tag := 7;
  Title[0] := '�Ţ���㺡ӡѺ';
  Title[1] := '�ѹ���㺡ӡѺ';
  Title[2] := '�͡���Ң�';
  Title[3] := '��������â��';
  Title[4] := '�Ţ�ѭ��';
  Title[5] := '�Ţ��Ƕѧ';
  Title[6] := '����';
  Title[7] := 'ʡ��';
  Title[8] := '�ӹǹ�Թ';
  Title[9] := '¡��ԡ';

  Fldgrd[0] := 'TAXNO';
  Fldgrd[1] := 'TAXDT';
  Fldgrd[2] := 'LOCAT';
  Fldgrd[3] := 'TSALE';
  Fldgrd[4] := 'CONTNO';
  Fldgrd[5] := 'STRNO';
  Fldgrd[6] := 'NAME1';
  Fldgrd[7] := 'NAME2';
  Fldgrd[8] := 'TOTAMT';
  Fldgrd[9] := 'FLAG';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[4]);
  OrderCombo.Properties.Items.Add(Title[5]);
  OrderCombo.Properties.Items.Add(Title[6]);
  OrderCombo.Properties.Items.Add(Title[7]);
  OrderCombo.Properties.Items.Add('All field...');
  OrderCombo.ItemIndex := 6;
  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help 㺡ӡѺ���բ��';
  Result := ShowModal;
end;

function TSearchTax.ShowModalAgnStrno: Integer;
begin
  //*** Tax ****
  OrderCombo.Tag := 8;
  Title[0] := '�Ţ��Ƕѧ';
  Title[1] := '��Ť���Թ���';
  Title[2] := '����';
  Title[3] := '�������';

  Fldgrd[0] := 'STRNO';
  Fldgrd[1] := 'NPRICE';
  Fldgrd[2] := 'VATPRC';
  Fldgrd[3] := 'TOTPRC';
  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[0]);
  OrderCombo.ItemIndex := 0;

   { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help �Ţ��Ƕѧ';
  Result := ShowModal;
end;

function TSearchTax.ShowModalTAXPST: Integer;
begin
  OrderCombo.Tag := 9;
  Title[0] := '�Ң�';
  Title[1] := '�Ţ���㺡ӡѺ';
  Title[2] := '�Ţ�����ҧ�ԧ';
  Title[3] := '����-ʡ��';
  Title[4] := '�ʹ�Թ';

  Fldgrd[0] := 'LOCAT';
  Fldgrd[1] := 'TAXNO';
  Fldgrd[2] := 'TAXREFNO';
  Fldgrd[3] := 'CUSTNAME';
  Fldgrd[4] := 'TOTTAX';

  OrderCombo.Properties.Items.Clear;
  OrderCombo.Properties.Items.Add(Title[1]);
  OrderCombo.Properties.Items.Add(Title[2]);
  OrderCombo.Properties.Items.Add(Title[3]);
  OrderCombo.Properties.Items.Add('All field...');

  OrderCombo.ItemIndex := 3;

  { ** Field Name & Title** }
  CalcMax;
  //
  OrderComboChange(nil);
  Caption := 'Help 㺡ӡѺ�Թ�Ѵ��';
  Result := ShowModal;
end;

function TSearchTax.GetKeyno: string;
begin
  if HQuery1.Active then
    case OrderCombo.Tag of
      0:
        Result := HQuery1.Fieldbyname('TAXNO').Asstring;
      1:
        Result := HQuery1.Fieldbyname('TAXNO').Asstring;
      2:
        Result := HQuery1.Fieldbyname('CRDTYP').Asstring;
      3:
        Result := HQuery1.Fieldbyname('TAXNO').Asstring;
      4:
        Result := HQuery1.Fieldbyname('TAXNO').Asstring;
      5:
        Result := HQuery1.Fieldbyname('STRNO').Asstring;
      6:
        Result := HQuery1.Fieldbyname('TAXNO').Asstring;
      7:
        Result := HQuery1.Fieldbyname('TAXNO').Asstring;
      8:
        Result := HQuery1.fieldbyname('STRNO').AsString;
      9:
        Result := HQuery1.fieldbyname('TAXNO').AsString;
    end;
end;

procedure TSearchTax.SearchButtonClick(Sender: TObject);
begin
  with HQuery1 do
  begin
    Close;
    SQL.Clear;
    case OrderCombo.Tag of
      0:
        begin
          if OrderCombo.Itemindex = 0 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE TAXNO LIKE :EDIT1 ' + XTaxtyp + ' ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 1 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE LOCAT LIKE :EDIT1 ' + XTaxtyp + ' ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 2 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE CONTNO LIKE :EDIT1  ' + XTaxtyp + ' ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 3 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE CUSCOD LIKE :EDIT1  ' + XTaxtyp + ' ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 4 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE NAME1 LIKE :EDIT1  ' + XTaxtyp + ' ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 5 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE NAME2 LIKE :EDIT1  ' + XTaxtyp + ' ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 6 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE ((STRNO LIKE :EDIT1) or (TAXNO LIKE :EDIT1) or (LOCAT LIKE :EDIT1) or (CONTNO LIKE :EDIT1) ' +
              'or (CUSCOD LIKE :EDIT1) or (NAME1 LIKE :EDIT1) or (NAME2 LIKE :EDIT1))  ' + XTaxtyp + ' ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
        end;
      1:
        begin
          if OrderCombo.Itemindex = 0 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE TAXNO LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND FLAG <> ''C'' ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 1 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE LOCAT LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 2 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE REFNO LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 3 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE CONTNO LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 4 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE NAME1 LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 5 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE NAME2 LIKE :EDIT1 AND TAXTYP BETWEEN ''1'' and ''9'' AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 6 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,REFNO,REFDT,CONTNO,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE ((TAXNO LIKE :EDIT1) or (LOCAT LIKE :EDIT1) or (REFNO LIKE :EDIT1) or ' +
              '(CONTNO LIKE :EDIT1) or (NAME1 LIKE :EDIT1) or (NAME2 LIKE :EDIT1)) AND TAXTYP BETWEEN ''1'' and ''9'' ' +
              'AND (FLAG = '''' OR FLAG IS NULL) ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
        end;
      2:
        begin
          if OrderCombo.Itemindex = 0 then
            SQL.ADD('SELECT CRDTYP,CRDDESC FROM TYPCRED ' +
              'WHERE CRDTYP LIKE :EDIT1 ');
          if OrderCombo.Itemindex = 1 then
            SQL.ADD('SELECT CRDTYP,CRDDESC FROM TYPCRED ' +
              'WHERE CRDDESC LIKE :EDIT1 ');
        end;
      3:
        begin
          SqlText := 'SELECT TAXNO,TAXDT,LOCAT,FINCOD,TSALE,CONTNO,CUSCOD,NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
            'WHERE TSALE=''F'' ';
          if OrderCombo.Itemindex = 0 then
            Sql.Add(SqlText + 'AND TAXNO  LIKE :0');
          if OrderCombo.Itemindex = 1 then
            Sql.Add(SqlText + 'AND FINCOD LIKE :0');
          if OrderCombo.Itemindex = 2 then
            Sql.Add(SqlText + 'AND CONTNO LIKE :0');
          if OrderCombo.Itemindex = 3 then
            Sql.Add(SqlText + 'AND CUSCOD LIKE :0');
          if OrderCombo.Itemindex = 4 then
            Sql.Add(SqlText + 'AND NAME1  LIKE :0');
          if OrderCombo.Itemindex = 5 then
            Sql.Add(SqlText + 'AND NAME2  LIKE :0');
        end;
      4:
        begin
          if OrderCombo.Itemindex = 0 then
            SQL.ADD('SELECT TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,' +
              'TOTTAX,FLAG FROM TAXBUY ' +
              'WHERE TAXNO LIKE :EDIT1 ');
          if OrderCombo.Itemindex = 1 then
            SQL.ADD('SELECT TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,' +
              'TOTTAX,FLAG FROM TAXBUY ' +
              'WHERE TAXDATE LIKE :EDIT1 ');
          if OrderCombo.Itemindex = 2 then
            SQL.ADD('SELECT TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,' +
              'TOTTAX,FLAG FROM TAXBUY ' +
              'WHERE TAXREFNO LIKE :EDIT1 ');
          if OrderCombo.Itemindex = 3 then
            SQL.ADD('SELECT TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,' +
              'TOTTAX,FLAG FROM TAXBUY ' +
              'WHERE RECVDT LIKE :EDIT1 ');
          if OrderCombo.Itemindex = 4 then
            SQL.ADD('SELECT TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,' +
              'TOTTAX,FLAG FROM TAXBUY ' +
              'WHERE CUSCOD LIKE :EDIT1 ');
        end;
      5:
        begin
          if OrderCombo.Itemindex = 0 then
            SQL.ADD('SELECT RECVNO,STRNO,NETCOST,CRVAT,TOTCOST,' +
              'VATRT,CRDTXNO,CRDAMT FROM INVTRAN ' +
              'WHERE STRNO LIKE :EDIT1 AND RECVNO=:V0');
        end;
      6:
        begin
          if OrderCombo.Itemindex = 0 then
            SQL.ADD('SELECT LOCAT,TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,' +
              'TOTTAX,FLAG FROM TAXBUY ' +
              'WHERE TAXNO LIKE :EDIT1  AND TAXTYP=:V0');
          if OrderCombo.Itemindex = 1 then
            SQL.ADD('SELECT LOCAT,TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,' +
              'TOTTAX,FLAG FROM TAXBUY ' +
              'WHERE TAXDATE LIKE :EDIT1 AND TAXTYP=:V0');
          if OrderCombo.Itemindex = 2 then
            SQL.ADD('SELECT LOCAT,TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,' +
              'TOTTAX,FLAG FROM TAXBUY ' +
              'WHERE TAXREFNO LIKE :EDIT1 AND TAXTYP=:V0');
          if OrderCombo.Itemindex = 3 then
            SQL.ADD('SELECT LOCAT,TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,' +
              'TOTTAX,FLAG FROM TAXBUY ' +
              'WHERE RECVDT LIKE :EDIT1 AND TAXTYP=:V0');
          if OrderCombo.Itemindex = 4 then
            SQL.ADD('SELECT LOCAT,TAXNO,TAXDATE,TAXREFNO,RECVDT,CUSCOD,' +
              'TOTTAX,FLAG FROM TAXBUY ' +
              'WHERE CUSCOD LIKE :EDIT1 AND TAXTYP=:V0');
        end;
      7:
        begin
          if OrderCombo.Itemindex = 0 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE TAXNO LIKE :EDIT1 ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 1 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE LOCAT LIKE :EDIT1 ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 2 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE CONTNO LIKE :EDIT1 ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 3 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE STRNO LIKE :EDIT1 ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 4 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE NAME1 LIKE :EDIT1 ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 5 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE NAME2 LIKE :EDIT1 ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 6 then
            SQL.ADD('SELECT TAXNO,TAXDT,LOCAT,TSALE,CONTNO,CUSCOD,' +
              'NAME1,NAME2,TOTAMT,FPAY,FLAG FROM TAXTRAN ' +
              'WHERE ((NAME2 LIKE :EDIT1) or (TAXNO LIKE :EDIT1) or (LOCAT LIKE :EDIT1) ' +
              'or (TSALE LIKE :EDIT1) or (CONTNO LIKE :EDIT1) or (STRNO LIKE :EDIT1) or (NAME1 LIKE :EDIT1)) ' +
              'ORDER BY TAXDT DESC ' + cbViewdata.EditValue);
        end;
      8:
        begin
          if OrderCombo.ItemIndex = 0 then
            SQL.Add('SELECT CONTNO,STRNO,NPRICE,VATPRC,TOTPRC FROM AR_TRANS WHERE ' +
              'STRNO LIKE :EDIT1 AND CONTNO =:EDIT2');
        end;
      9:
        begin
          if OrderCombo.Itemindex = 0 then
            SQL.ADD('SELECT A.LOCAT,A.TAXNO,A.TAXREFNO,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.TOTTAX ' +
              'FROM TAXSAL A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) ' +
              'WHERE A.TAXNO  LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2  ' + SC1 + ' ' +
              'ORDER BY  A.TAXDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 1 then
            SQL.ADD('SELECT A.LOCAT,A.TAXNO,A.TAXREFNO,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.TOTTAX ' +
              'FROM TAXSAL A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) ' +
              'WHERE A.TAXREFNO LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2  ' + SC1 + ' ' +
              'ORDER BY  A.TAXDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 2 then
            SQL.ADD('SELECT A.LOCAT,A.TAXNO,A.TAXREFNO,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.TOTTAX ' +
              'FROM TAXSAL A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) ' +
              'WHERE B.CUSTNAME LIKE :EDIT1 AND A.LOCAT LIKE :EDIT2  ' + SC1 + ' ' +
              'ORDER BY  A.TAXDATE DESC ' + cbViewdata.EditValue);
          if OrderCombo.Itemindex = 3 then
            SQL.ADD('SELECT A.LOCAT,A.TAXNO,A.TAXREFNO,SUBSTR(B.CUSTNAME,1,50) CUSTNAME,A.TOTTAX ' +
              'FROM TAXSAL A LEFT JOIN VIEW_CUST B ON (A.CUSCOD=B.CUSCOD) ' +
              'WHERE ((B.CUSTNAME LIKE :EDIT1) or (A.TAXNO  LIKE :EDIT1) or (A.TAXREFNO LIKE :EDIT1)) AND A.LOCAT LIKE :EDIT2  ' + SC1 + ' ' +
              'ORDER BY  A.TAXDATE DESC ' + cbViewdata.EditValue);
        end;
    end;
    HQuery1.Params[0].Asstring := Uppercase('%' + SearchEd.Text + '%');
    if (OrderCombo.Tag = 5) or (OrderCombo.Tag = 6) or (OrderCombo.Tag = 8) then
      HQuery1.Params[1].Asstring := Xcont;

    if (OrderCombo.Tag = 9) then
    begin
      if OrderCombo.Itemindex = 3 then
        HQuery1.Params[1].Asstring := XSrLocat + '%'
      else
        HQuery1.Params[1].Asstring := XSrLocat + '%';
    end;
    HQuery1.Open;
    SFMain.Do_Show_DisplayFormat_Floating(HQuery1);
  end;
end;

procedure TSearchTax.OrderComboChange(Sender: TObject);
var
  I, K: word;
  T1, F1: string;
begin
  SearchEd.Text := '';
  K := 0;
  I := 0;
  while (I <= Max) do
  begin
    if (Title[I] = OrderCombo.Text) then
    begin
      K := I;
      Break;
    end;
    I := I + 1;
  end;

  T1 := Title[0];
  Title[0] := Title[K];
  Title[K] := T1;

  F1 := Fldgrd[0];
  Fldgrd[0] := Fldgrd[K];
  Fldgrd[K] := F1;
  cxGridDBTableView1.ClearItems;
  for I := 0 to Max do
  begin
    cxGridDBTableView1.CreateColumn.DataBinding.FieldName := Fldgrd[I];
    cxGridDBTableView1.Columns[I].Caption := Title[I];
    if Fldgrd[I] = 'NAME1' then
      cxGridDBTableView1.Columns[I].Width := 60;
  end;
end;

procedure TSearchTax.SearchEdChange(Sender: TObject);
begin
  if SFMain.Xsrch = 'Y' then
    SearchButtonClick(Sender);
end;

procedure TSearchTax.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TSearchTax.FormShow(Sender: TObject);
begin
  SearchEd.Setfocus;
end;

procedure TSearchTax.CalcMax;
begin
{ ** Field Name & Title** }
  I := 0;
  while I <= 10 do
  begin
    cxGridDBTableView1.CreateColumn.DataBinding.FieldName := Fldgrd[I];
    cxGridDBTableView1.Columns[I].Caption := Title[I];
    if Fldgrd[I] = '' then
    begin
      Max := I - 1;
      if Max < 0 then
        Max := 0;
      break;
    end;
    I := I + 1;
  end;
end;

procedure TSearchTax.FormCreate(Sender: TObject);
begin
  I := 0;
  while I <= 10 do
  begin
    Title[I] := '';
    Fldgrd[I] := '';
    I := I + 1;
  end;
end;

procedure TSearchTax.SearchEdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    SearchButtonClick(Sender);
    DbGrid1.SetFocus;
  end;
end;

procedure TSearchTax.DBGrid1DBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSearchTax.DBGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    OKBtn.Click;
  end;
end;

procedure TSearchTax.cxGridDBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AStyle: TcxStyle;
  IndNo: string;
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
    IndNo := ''
  else
    IndNo := IntToStr(AIndicatorViewInfo.GridRecord.Index + 1);

  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
    False, False, IndNo,
    AStyle.Font, AStyle.TextColor, AStyle.Color);
  ADone := True;
end;

procedure TSearchTax.cxGridDBTableView1DblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TSearchTax.cxGridDBTableView1DataControllerGroupingChanged(Sender: TObject);
begin
  if HQuery1.Active = True then
  begin
    cxCheckBox1.Checked := False;
    cxCheckBox1.Enabled := ((HQuery1.RecordCount > 0) and
      (cxGridDBTableView1.GroupedColumnCount > 0));
  end;
end;

procedure TSearchTax.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked = true then
    cxGridDBTableView1.DataController.Groups.FullExpand
  else
    cxGridDBTableView1.DataController.Groups.FullCollapse;
end;

procedure TSearchTax.cxGridDBTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    OKBtn.Click;
  end;
end;

end.

