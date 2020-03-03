unit Chglocat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ComCtrls, StdCtrls, Dbkbd, Db,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, 
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, 
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFChglocat = class(TForm)
    Label40: TLabel;
    Label41: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    ProcBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ProgressBar1: TProgressBar;
    SpeedButton3: TSpeedButton;
    DBkbd1: TDBkbd;
    Query1: TFDQuery;
    procedure ProcBtn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Change(TB,LC,EDIT1,EDIT2:String);
  public
    { Public declarations }
  end;

var
  FChglocat: TFChglocat;
  I,P,Maxno:Integer;

implementation
uses Dmset1,Srchdlg;
{$R *.DFM}

procedure TFChglocat.ProcBtn1Click(Sender: TObject);
Var FTbname :Array[0..99] of string;
    FLocat  :Array[0..99] of string;
begin
  If Edit1.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสสาขาเดิม');
  If Edit5.Text ='' Then
  SFMain.RaiseException('ยังไม่บันทึกรหัสสาขาใหม่');
  //-- Assign Table Name --
  Maxno := 90;
  Ftbname[0] :='ADJ_INVOI';
  Ftbname[1] :='ADJ_TRANS';
  Ftbname[2] :='WARTRAN  ';
  Ftbname[3] :='APBILL   ';
  Ftbname[4] :='APBILTR  ';
  Ftbname[5] :='APCHQ    ';
  Ftbname[6] :='APINVOI  ';
  Ftbname[7] :='APPAY    ';
  Ftbname[8] :='APPAYTRN ';
  Ftbname[9] :='AR_SERV  ';
  Ftbname[10]:='ARBILL   ';
  Ftbname[11]:='ARBILTR  ';
  Ftbname[12]:='ARCHQ    ';
  Ftbname[13]:='ARCRED   ';
  Ftbname[14]:='ARFINC   ';
  Ftbname[15]:='ARINVOI  ';
  Ftbname[16]:='ARPAY    ';
  Ftbname[17]:='ARPAYTRN ';
  Ftbname[18]:='ARRESV   ';
  Ftbname[19]:='CANAJHD  ';
  Ftbname[20]:='CANAJTR  ';
  Ftbname[21]:='CANICHD  ';
  Ftbname[22]:='CANICTR  ';
  Ftbname[23]:='CANJOB   ';
  Ftbname[24]:='CANPKHD  ';
  Ftbname[25]:='CANPKTR  ';
  Ftbname[26]:='CANRCHD  ';
  Ftbname[27]:='CANRCTR  ';
  Ftbname[28]:='CANRTHD  ';
  Ftbname[29]:='CANRTTR  ';
  Ftbname[30]:='COLRTRAN ';
  Ftbname[31]:='DAWNTRN  ';
  Ftbname[32]:='DISCPO   ';
  Ftbname[33]:='FIFOBAL  ';
  Ftbname[34]:='FIFOCARD ';
  Ftbname[35]:='FIFOSTAK ';
  Ftbname[36]:='IC_INVOI ';
  Ftbname[37]:='IC_TRANS ';
  Ftbname[38]:='ICOTHINV ';
  Ftbname[39]:='ICOTHTRN ';
  Ftbname[40]:='INVANLS  ';
  Ftbname[41]:='INVENTOR ';
  Ftbname[42]:='INVGRAD  ';
  Ftbname[43]:='INVINVO  ';
  Ftbname[44]:='INVMOVM  ';
  Ftbname[45]:='INVMOVT  ';
  Ftbname[46]:='INVMOVM  ';
  Ftbname[47]:='INVMOVT  ';
  Ftbname[48]:='INVTRAN  ';
  Ftbname[49]:='JOBORDER ';
  Ftbname[50]:='LASTNO   ';
  Ftbname[51]:='MV_INVOI ';
  Ftbname[52]:='MV_TRANS ';
  Ftbname[53]:='MV_INVOI ';
  Ftbname[54]:='MV_TRANS ';
  Ftbname[55]:='OILTRAN  ';
  Ftbname[56]:='OTH_TXIV ';
  Ftbname[57]:='OTH_TXTR ';
  Ftbname[58]:='OTHINVOI ';
  Ftbname[59]:='OTHTRAN  ';
  Ftbname[60]:='OUTTRAN  ';
  Ftbname[61]:='PARTTRAN ';
  Ftbname[62]:='PASSWRD  ';
  Ftbname[63]:='PK_INVOI ';
  Ftbname[64]:='PK_TRANS ';
  Ftbname[65]:='PO_INVOI ';
  Ftbname[66]:='PO_TRANS ';
  Ftbname[67]:='PURCHS   ';
  Ftbname[68]:='QA_INVOI ';
  Ftbname[69]:='QAINVOI  ';
  Ftbname[70]:='QATRANS  ';
  Ftbname[71]:='RC_INVOI ';
  Ftbname[72]:='RC_TRANS ';
  Ftbname[73]:='RT_INVOI ';
  Ftbname[74]:='RT_TRAN  ';
  Ftbname[75]:='SERVTRAN ';
  Ftbname[76]:='STKCARD  ';
  Ftbname[77]:='SV_INVOI ';
  Ftbname[78]:='SV_ORDIV ';
  Ftbname[79]:='SV_ORDTN ';
  Ftbname[80]:='SV_TRANS ';
  Ftbname[81]:='SVCHARG  ';
  Ftbname[82]:='SVSTOCK  ';
  Ftbname[83]:='SVWARMST ';
  Ftbname[84]:='TAXBUY   ';
  Ftbname[85]:='TAXSAL   ';
  Ftbname[86]:='TEMPTB2  ';
  Ftbname[87]:='TMPAJIV  ';
  Ftbname[88]:='TMPAJTR  ';
  Ftbname[89]:='LOCATMST  ';

  Flocat[0] :='ADJLOC   ';
  Flocat[1] :='ADJLOC   ';
  Flocat[2]:='LOCAT    ';
  Flocat[3] :='LOCAT    ';
  Flocat[4] :='LOCAT    ';
  Flocat[5] :='LOCAT    ';
  Flocat[6] :='LOCAT    ';
  Flocat[7] :='LOCAT    ';
  Flocat[8] :='LOCAT    ';
  Flocat[9] :='LOCAT    ';
  Flocat[10]:='LOCAT    ';
  Flocat[11]:='LOCAT    ';
  Flocat[12]:='LOCAT    ';
  Flocat[13]:='LOCAT    ';
  Flocat[14]:='LOCAT    ';
  Flocat[15]:='LOCAT    ';
  Flocat[16]:='LOCAT    ';
  Flocat[17]:='LOCAT    ';
  Flocat[18]:='LOCAT    ';
  Flocat[19]:='ADJLOC   ';
  Flocat[20]:='ADJLOC   ';
  Flocat[21]:='INVLOC   ';
  Flocat[22]:='INVLOC   ';
  Flocat[23]:='LOCAT    ';
  Flocat[24]:='PKLOCAT  ';
  Flocat[25]:='PKLOCAT  ';
  Flocat[26]:='RECVLOC  ';
  Flocat[27]:='RECVLOC  ';
  Flocat[28]:='RTNLOC   ';
  Flocat[29]:='RTNLOC   ';
  Flocat[30]:='LOCAT    ';
  Flocat[31]:='LOCAT    ';
  Flocat[32]:='LOCAT    ';
  Flocat[33]:='LOCAT    ';
  Flocat[34]:='LOCAT    ';
  Flocat[35]:='LOCAT    ';
  Flocat[36]:='INVLOC   ';
  Flocat[37]:='INVLOC   ';
  Flocat[38]:='LOCAT    ';
  Flocat[39]:='LOCAT    ';
  Flocat[40]:='LOCAT    ';
  Flocat[41]:='LOCAT    ';
  Flocat[42]:='LOCAT    ';
  Flocat[43]:='LOCAT    ';
  Flocat[44]:='MOVEFM   ';
  Flocat[45]:='MOVEFM   ';
  Flocat[46]:='MOVETO   ';
  Flocat[47]:='MOVETO   ';
  Flocat[48]:='RVLOCAT  ';
  Flocat[49]:='LOCAT    ';
  Flocat[50]:='LOCAT    ';
  Flocat[51]:='MOVFRM   ';
  Flocat[52]:='MOVFRM   ';
  Flocat[53]:='MOVTO    ';
  Flocat[54]:='MOVTO    ';
  Flocat[55]:='LOCAT    ';
  Flocat[56]:='LOCAT    ';
  Flocat[57]:='LOCAT    ';
  Flocat[58]:='LOCAT    ';
  Flocat[59]:='LOCAT    ';
  Flocat[60]:='LOCAT    ';
  Flocat[61]:='LOCAT    ';
  Flocat[62]:='LOCAT    ';
  Flocat[63]:='PKLOCAT  ';
  Flocat[64]:='PKLOCAT  ';
  Flocat[65]:='POLOCAT  ';
  Flocat[66]:='POLOCAT  ';
  Flocat[67]:='LOCAT    ';
  Flocat[68]:='LOCAT    ';
  Flocat[69]:='QALOCAT  ';
  Flocat[70]:='QALOCAT  ';
  Flocat[71]:='RECVLOC  ';
  Flocat[72]:='RECVLOC  ';
  Flocat[73]:='RTNLOC   ';
  Flocat[74]:='RTNLOC   ';
  Flocat[75]:='LOCAT    ';
  Flocat[76]:='LOC      ';
  Flocat[77]:='RECVLOC  ';
  Flocat[78]:='ORDLOCAT ';
  Flocat[79]:='ORDLOCAT ';
  Flocat[80]:='RECVLOC  ';
  Flocat[81]:='LOCAT    ';
  Flocat[82]:='LOCAT    ';
  Flocat[83]:='LOCAT    ';
  Flocat[84]:='LOCAT    ';
  Flocat[85]:='LOCAT    ';
  Flocat[86]:='LOCAT    ';
  Flocat[87]:='ADJLOC   ';
  Flocat[88]:='ADJLOC   ';
  Flocat[89]:='LOCATCOD ';

  ProgressBar1.Max := Maxno;

  For I:=0 to Maxno Do
  Begin
    with Query1 do
    begin
     Close;
     Sql.Clear;
     Sql.Add('select * from SYSIBM.SYSTABLES where NAME=:1 AND CREATOR=:Xschema');
     Params[0].Asstring :=Ftbname[I];
     Params[1].Asstring :=Dm_set1.Xschema;
     Open;
     If Not(Bof and Eof) Then
     Change(Ftbname[I],Flocat[I],Edit5.Text,Edit1.Text);
    end;
    ProgressBar1.Position := I;
  end;


{ With Dm_set1.Query1 Do
 begin
   Close;
   Sql.Clear;
   Sql.Add('UPDATE adj_invoi set adjloc=:edit1 where adjloc=:edit2 ');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 1;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE adj_trans set adjloc=:edit1 where adjloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 3;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE analys01  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 4;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE apbill  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 5;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE apbiltr  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 6;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE  apchq Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 7;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE apinvoi  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 8;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE appay  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 10;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE appaytrn  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 11;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE ar_serv  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 12;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE arbill  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 13;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE arbiltr  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 15;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE archq  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 16;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE arinvoi  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 18;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE arpay  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 20;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE arpaytrn  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 21;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE canajhd  Set adjloc=:edit1 where adjloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 22;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE canajtr  Set adjloc=:edit1 where adjloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 23;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE canichd  Set invloc=:edit1 where invloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 24;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE canictr  Set invloc=:edit1 where invloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 25;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE canjob  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 26;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE canpkhd  Set pklocat=:edit1 where pklocat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 27;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE canpktr  Set pklocat=:edit1 where pklocat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 28;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE canrchd  Set recvloc=:edit1 where recvloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 29;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE canrctr  Set  recvloc=:edit1 where recvloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 31;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE canrthd  Set rtnloc=:edit1 where rtnloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 33;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE canrttr  Set  rtnloc=:edit1 where rtnloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 34;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE colrtran  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 35;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE ic_invoi  Set  invloc=:edit1 where invloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 36;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE ic_trans  Set  invloc=:edit1 where invloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 38;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE invanls  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 40;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE inventor  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 41;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE joborder  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 42;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE lastno  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 43;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE mv_invoi  Set  movfrm=:edit1 where movfrm=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 44;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE mv_invoi  Set  movto=:edit1 where movto=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 44;
   //

   Close;
   Sql.Clear;
   Sql.Add('UPDATE mv_trans  Set  movfrm=:edit1  where movfrm=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 45;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE mv_trans  Set  movto=:edit1 where movto=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 45;

   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE oiltran  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 48;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE othinvoi  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 50;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE othtran  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 51;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE outtran  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 52;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE parttran  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 54;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE passwrd  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 56;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE pk_invoi  Set  pklocat=:edit1 where pklocat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 57;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE pk_trans  Set  pklocat=:edit1 where pklocat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 58;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE po_invoi  Set  polocat=:edit1 where polocat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 60;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE po_trans  Set  polocat=:edit1 where polocat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 62;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE qa_invoi  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 64;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE qainvoi  Set  qalocat=:edit1 where qalocat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 66;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE qatrans  Set  qalocat=:edit1 where qalocat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 68;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE rc_invoi  Set  recvloc=:edit1 where recvloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 70;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE rc_trans  Set  recvloc=:edit1 where recvloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 72;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE rt_invoi  Set  rtnloc=:edit1 where rtnloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 73;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE rt_tran  Set  rtnloc=:edit1 where rtnloc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 74;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE servtran  Set  locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 76;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE stkcard  Set  loc=:edit1 where loc=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 78;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE sv_ordiv  Set  ordlocat=:edit1 where ordlocat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 80;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE sv_ordtn  Set  ordlocat=:edit1 where ordlocat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 85;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE svstock  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 90;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE svcharg  Set locat=:edit1 where locat=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;
   ProgressBar1.Position := 95;
   //
   Close;
   Sql.Clear;
   Sql.Add('UPDATE locatmst  Set locatcod=:edit1 where locatcod=:edit2');
   params[0].asstring := Edit5.Text;
   params[1].asstring := Edit1.Text;
   Execsql;

   ProgressBar1.Position := 100;
   ProgressBar1.Position := 0;

 end;
 }
end;


procedure TFChglocat.SpeedButton3Click(Sender: TObject);
begin
  Application.Createform(TSearchDlg,SearchDlg);
  If SearchDlg.ShowModalLocat=Mrok Then
  Edit1.Text := SearchDlg.Keyno;
end;

procedure TFChglocat.Edit1Exit(Sender: TObject);
begin
  If Edit1.Text<>'' Then
  With Query1 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM LOCATMST WHERE LOCATCOD=:EDIT1');
    Params[0].asstring := EDIT1.Text;
    Open;
    If Query1.Bof and Query1.Eof Then
    begin
      Edit1.Setfocus;
      SFMain.RaiseException('ไม่พบรหัสสาขา');
    end;
    Edit2.Text := Query1.Fieldbyname('locatnam').asstring;
  End;
end;

procedure TFChglocat.Edit1Change(Sender: TObject);
begin
  ProcBtn1.Enabled := Edit1.Text<>'';
end;

procedure TFChglocat.Change(TB,LC,EDIT1,EDIT2:String);
Var Sqltx:String;
begin
 Sqltx :='UPDATE '+TB+' SET '+LC+' = '+''''+EDIT1+''''+'  WHERE '+LC+' = '+''''+EDIT2+'''';
 With Dm_set1.Query1 Do
 begin
   Close;
   Sql.Clear;
   Sql.Add(Sqltx);
   Execsql;
 end
end;

procedure TFChglocat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
