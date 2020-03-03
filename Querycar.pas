unit QueryCar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Mask,
  DBCtrls, StdCtrls, Buttons, DB, ExtCtrls, Grids, DBGrids, AdvGlowButton,
  CurvyControls, W7Classes, W7Buttons, dxGDIPlusClasses, AdvPanel, AdvNavBar,
  BusinessSkinForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,
  cxGroupBox, cxRadioGroup, cxTextEdit, cxMemo, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFQueryCar = class(TForm)
    Qinvtran: TFDQuery;
    SoQinvtran: TDataSource;
    QueryAr: TFDQuery;
    SoAr: TDataSource;
    Qinvinvo: TFDQuery;
    SoInvinvo: TDataSource;
    AdvPanel1: TAdvPanel;
    Edit1: TCurvyEdit;
    RzGroupBar1: TAdvNavBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    AdvNavBarPanel1: TAdvNavBarPanel;
    AdvPanel2: TAdvPanel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label40: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBMemo1: TcxDBMemo;
    GroupBox1: TcxGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    DBRadioGroup1: TcxDBRadioGroup;
    DBEdit21: TcxDBButtonEdit;
    DBEdit22: TcxDBButtonEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    DBEdit24: TcxDBButtonEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    DBEdit25: TcxDBButtonEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    DBEdit29: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    DBEdit31: TcxDBTextEdit;
    DBEdit20: TcxDBTextEdit;
    Label45: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1ControlClick(Sender: TObject; Index: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FQueryCar: TFQueryCar;
  XCase : String;

implementation
uses SrchSet1,Srchstk, uSoftFirm;

{$R *.DFM}

procedure TFQueryCar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FQueryCar := nil;
end;

procedure TFQueryCar.FormShow(Sender: TObject);
begin
  GroupBox1.Visible :=SFMain.XChqCost='Y';
  cxDBTextEdit14.SetFocus;
end;

procedure TFQueryCar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if (Edit1.Text <> 'Search Title') then
    begin
      if Edit1.Text = '' then
      begin
       Qinvtran.close;
      end
      else
      begin
        WITH Qinvtran DO
        begin
           close;
           sql.clear;
           sql.add('SELECT * FROM INVTRAN WHERE ((STRNO LIKE :0) OR (ENGNO LIKE :0) OR (REGNO LIKE :0) OR (CONTNO LIKE :0)) ');
           params[0].asstring := UpperCase('%'+Edit1.text+'%');
           open;

           if (eof and bof) then
           sfmain.RaiseException('ไม่พบข้อมูล..!');

           IF fieldbyname('CONTNO').asstring <> '' THEN
           BEGIN
             WITH QueryAr Do
             begin
               close;
               sql.clear;
               if Qinvtran.fieldbyname('Tsale').asstring = 'C' then
                  sql.add('SELECT A.CUSCOD,'''' AS YSTAT,B.NAME1,B.NAME2 FROM ARCRED A,CUSTMAST B WHERE (A.CUSCOD=B.CUSCOD) AND A.CONTNO = :0 ');
               if Qinvtran.fieldbyname('Tsale').asstring = 'F' then
                  sql.add('SELECT A.CUSCOD,'''' AS YSTAT,B.NAME1,B.NAME2 FROM ARFINC A,CUSTMAST B WHERE (A.CUSCOD=B.CUSCOD) AND A.CONTNO = :0 ');
               Params[0].Asstring := Qinvtran.FieldByName('Contno').Asstring;
               Open;
              END;
           END
           ELSE
           BEGIN
             WITH Qinvinvo Do
             begin
               close;
               sql.clear;
               sql.add('SELECT TAXNO,TAXDT,APCODE FROM INVINVO WHERE RECVNO = :XRECVNO AND RECVDT = :XRECVDT ');
               PARAMS[0].ASSTRING := Qinvtran.fieldbyname('RECVNO').asstring;
               PARAMS[1].ASDate   := Qinvtran.fieldbyname('RECVDT').asdatetime;
               OPEN;
             END;
           END;
        end;
      end;
    end;
    SFMain.Do_Show_DisplayFormat_Floating(Qinvtran);
    SFMain.Do_Show_DisplayFormat_Floating(Qinvinvo);
  end;
end;

procedure TFQueryCar.Edit1Click(Sender: TObject);
begin
  Edit1.Text := 'Search Title';
  Edit1.Font.Size  := 14;
  Edit1.Font.Style := [];
  Edit1.Font.Color := clGray;
end;

procedure TFQueryCar.Edit1Exit(Sender: TObject);
begin
  Edit1.Text := 'Search Title';
  Edit1.Font.Size  := 14;
  Edit1.Font.Style := [fsItalic];
  Edit1.Font.Color := clSilver;
end;

procedure TFQueryCar.Edit1ControlClick(Sender: TObject; Index: Integer);
begin
   Application.Createform(TSearchstk,Searchstk);
   If Searchstk.ShowModalInvtrn = Mrok Then
   begin
     edit1.Text := SearchStk.Keyno;
        WITH Qinvtran DO
        begin
           close;
           sql.clear;
           sql.add('SELECT * FROM INVTRAN WHERE ((STRNO LIKE :0) OR (ENGNO LIKE :0) OR (REGNO LIKE :0) OR (CONTNO LIKE :0)) ');
           params[0].asstring := UpperCase('%'+Edit1.text+'%');
           open;

           if (eof and bof) then
           sfmain.RaiseException('ไม่พบข้อมูล..!');

           IF fieldbyname('CONTNO').asstring <> '' THEN
           BEGIN
             WITH QueryAr Do
             begin
               close;
               sql.clear;
               if Qinvtran.fieldbyname('Tsale').asstring = 'C' then
                  sql.add('SELECT A.CUSCOD,'''' AS YSTAT,B.NAME1,B.NAME2 FROM ARCRED A,CUSTMAST B WHERE (A.CUSCOD=B.CUSCOD) AND A.CONTNO = :0 ');
               if Qinvtran.fieldbyname('Tsale').asstring = 'F' then
                  sql.add('SELECT A.CUSCOD,'''' AS YSTAT,B.NAME1,B.NAME2 FROM ARFINC A,CUSTMAST B WHERE (A.CUSCOD=B.CUSCOD) AND A.CONTNO = :0 ');
               Params[0].Asstring := Qinvtran.FieldByName('Contno').Asstring;
               Open;
              END;
           END
           ELSE
           BEGIN
             WITH Qinvinvo Do
             begin
               close;
               sql.clear;
               sql.add('SELECT TAXNO,TAXDT,APCODE FROM INVINVO WHERE RECVNO = :XRECVNO AND RECVDT = :XRECVDT ');
               PARAMS[0].ASSTRING := Qinvtran.fieldbyname('RECVNO').asstring;
               PARAMS[1].ASDate   := Qinvtran.fieldbyname('RECVDT').asdatetime;
               OPEN;
             END;
           END;
        end;
    SFMain.Do_Show_DisplayFormat_Floating(Qinvtran);
    SFMain.Do_Show_DisplayFormat_Floating(Qinvinvo);        
   end;
end;

procedure TFQueryCar.FormCreate(Sender: TObject);
begin
  SFMain.Check_right('HDSTK', 'HDSTK01_8');
end;

end.
