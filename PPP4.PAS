{*****************************************************************}
{* PROTECTION PLUS PROFESSIONAL 4.0                               }
{*                                                                }
{* Global constants and declare statements for Borland Delphi 2.0 }
{*****************************************************************}

unit PPP4;
interface
Uses WinTypes,
     WinProcs;

Type PBool     = ^WordBool;
     PBoolean  = ^Boolean;
     PByte     = ^Byte;
     PWord     = ^Word;
     PShortInt = ^ShortInt;
     PInteger  = ^Integer;
     PLongInt  = ^LongInt;
     PSingle   = ^Single;
     PDouble   = ^Double;

{ computer number defines }
Const COMPNO_BIOS = 1;
Const COMPNO_HDSERIAL = 2;
Const COMPNO_HDLOCK = 4;
Const COMPNO_HDTYPE = 8;
Const COMPNO_NETNAME = 16;
Const COMPNO_MACADDR = 32;


{ pp_copycheck() action codes }
Const ACTION_MANUAL = 0;
Const ACTION_AUTOADD = 1;


{ pp_copyadd() flags }
Const COPYADD_ADDDUPE = 1;
Const COPYADD_ERASEALL = 2;


{ license file type defines }
Const LF_FILE = 1;
Const LF_REGISTRY = 2;
Const LF_CBOX_VERSA = 3;
Const LF_CBOX_560 = 4;


{ license file flag defines }
Const LF_CREATE_NORMAL = 0;
Const LF_CREATE_RDONLY = 1;
Const LF_CREATE_HIDDEN = 2;
Const LF_CREATE_SYSTEM = 4;
Const LF_CREATE_MISSING = 8;


{ pp_lfcreate() flags }
Const LFCREATE_OVERWRITE = 1;


{ pp_semopen() flags }
Const SEM_FILE = 0;
Const SEM_TCPIP = 1;


{ result codes }
Const PP_FAILURE = 0;
Const PP_FALSE = 0;
Const PP_SUCCESS = 1;
Const PP_TRUE = 1;

Const ERR_INVALID_ATTRIBUTES = 2;
Const ERR_CANNOT_CHANGE_ATTRIBS = 3;
Const ERR_HFILE_ERROR = 4;
Const ERR_CANNOT_WRITE_FILE = 5;
Const ERR_CANNOT_CLOSE_FILE = 6;
Const ERR_CANNOT_OPEN_FILE = 7;
Const ERR_CANNOT_READ_FILE = 8;
Const ERR_CANNOT_CREATE_FILE = 9;
Const ERR_CANNOT_DELETE_FILE = 10;
Const ERR_FILE_WAS_CREATED = 11;
Const ERR_INVALID_PASSWORD = 12;
Const ERR_WRONG_PASSWORD = 13;
Const ERR_INCORRECT_PARAMETERS = 14;
Const ERR_FILE_MISSING = 15;
Const ERR_MEMORY_ALLOCATION = 16;
Const ERR_MEMORY_FREE = 17;
Const ERR_MEMORY_LOCK = 18;
Const ERR_SLOT_NUM_INVALID = 19;
Const ERR_SLOT_EMPTY = 20;
Const ERR_SLOTS_FULL = 21;
Const ERR_SLOT_ALREADY_ASSIGNED = 22;
Const ERR_NET_LIC_FULL = 23;
Const ERR_COMPNO_NOT_FOUND = 24;
Const ERR_VAR_NO_INVALID = 25;
Const ERR_SOFT_EXPIRATION = 26;
Const ERR_EXPTYPE_INVALID = 27;
Const ERR_EXP_DATE_EMPTY = 28;
Const ERR_STRING_TOO_LONG = 29;
Const ERR_CURRENT_DATE_OLDER = 30;
Const ERR_CANNOT_LOCK_FILE = 31;
Const ERR_WRONG_LF_VERSION = 32;
Const ERR_CORRUPT_LICENSE_FILE = 33;
Const ERR_SEM_FILE_LOCKED = 34;
Const ERR_CORRUPT_CONTROL_FILE = 35;
Const ERR_WRONG_CF_SERIAL_NUM = 36;
Const ERR_LF_LOCKED = 37;
Const ERR_LF_CHECKSUM_INVALID = 38;
Const ERR_NOT_APPLICABLE = 39;
Const ERR_NOT_IMPLEMENTED_YET = 40;
Const ERR_FILE_EXISTS = 41;
Const ERR_REGISTRY_OPEN = 42;
Const ERR_REGISTRY_QUERY = 43;
Const ERR_REGISTRY_CLOSE = 44;
Const ERR_REGISTRY_READ = 45;
Const ERR_REGISTRY_SET = 46;
Const ERR_CBOX_NOT_PRESENT = 47;
Const ERR_CBOX_WRONG_TYPE = 48;
Const ERR_CBOX_READ_RAM1_ERROR = 49;
Const ERR_CBOX_READ_RAM2_ERROR = 50;
Const ERR_CBOX_WRITE_RAM1_ERROR = 51;
Const ERR_CBOX_WRITE_RAM2_ERROR = 52;
Const ERR_CBOX_ID1_ERROR = 53;
Const ERR_CBOX_ID2_ERROR = 54;
Const ERR_CBOX_ID3_ERROR = 55;


{ attributes defines }
Const PP_NORMAL = 0;
Const PP_RDONLY = 1;
Const PP_HIDDEN = 2;
Const PP_SYSTEM = 4;


{ expiration types }
Const EXP_NONE = 'N';
Const EXP_EXE_LIMIT = 'E';
Const EXP_SHAREWARE_VER = 'S';
Const EXP_PAYMENT_LIMIT = 'P';
Const EXP_DEMO_VERSION = 'D';


{ getvar / setvar definitions - character fields }
Const VAR_COMPANY = 1;
Const VAR_NAME = 2;
Const VAR_ADDRESS1 = 3;
Const VAR_ADDRESS2 = 4;
Const VAR_ADDRESS3 = 5;
Const VAR_PHONE1 = 6;
Const VAR_PHONE2 = 7;
Const VAR_SERIAL_TEXT = 8;
Const VAR_EXPIRE_TYPE = 9;
Const VAR_UDEF_CHAR_1 = 10;
Const VAR_UDEF_CHAR_2 = 11;
Const VAR_UDEF_CHAR_3 = 12;
Const VAR_UDEF_CHAR_4 = 13;
Const VAR_UDEF_CHAR_5 = 14;
Const VAR_UDEF_CHAR_6 = 15;
Const VAR_UDEF_CHAR_7 = 16;
Const VAR_UDEF_CHAR_8 = 17;
Const VAR_UDEF_CHAR_9 = 18;
Const VAR_UDEF_CHAR_10 = 19;


{ getvar / setvar definitions - numeric fields }
Const VAR_SERIAL_NUM = 1;
Const VAR_EXP_COUNT = 2;
Const VAR_EXP_LIMIT = 3;
Const VAR_LAN_COUNT = 4;
Const VAR_LAN_LIMIT = 5;
Const VAR_INSTALL_COUNT = 6;
Const VAR_INSTALL_LIMIT = 7;
Const VAR_AUTHORIZED_COMPS = 8;
Const VAR_UDEF_NUM_1 = 9;
Const VAR_UDEF_NUM_2 = 10;
Const VAR_UDEF_NUM_3 = 11;
Const VAR_UDEF_NUM_4 = 12;
Const VAR_UDEF_NUM_5 = 13;
Const VAR_LF_CHECKSUM = 14;


{ getvar / setvar definitions - date fields }
Const VAR_EXP_DATE_SOFT = 1;
Const VAR_EXP_DATE_HARD = 2;
Const VAR_LAST_DATE = 3;
Const VAR_LAST_TIME = 4;
Const VAR_UDEF_DATE_1 = 5;
Const VAR_UDEF_DATE_2 = 6;
Const VAR_UDEF_DATE_3 = 7;
Const VAR_UDEF_DATE_4 = 8;
Const VAR_UDEF_DATE_5 = 9;


{ compatibility with previous versions }
Const VAR_PRODUCT = VAR_UDEF_CHAR_2;
Const VAR_DISTRIBUTOR = VAR_UDEF_CHAR_3;
Const VAR_USER_DEF_1 = VAR_UDEF_CHAR_1;
Const VAR_USER_DEF_2 = VAR_UDEF_NUM_1;
Const VAR_USER_DEF_3 = VAR_UDEF_NUM_2;
Const VAR_USER_DEF_4 = VAR_UDEF_DATE_1;


{*****************************************************************}
{ Function prototypes follow                                      }
{*****************************************************************}
     
procedure pp_adddays(mmonth: PLongInt; mday: PLongInt; myear: PLongInt; mdays: LongInt); stdcall;
function pp_bitclear(bit_field: PLongInt; bit_number: LongInt): LongInt;
function pp_bitset(bit_field: PLongInt; bit_number: LongInt): LongInt;
function pp_bittest(bit_field: LongInt; bit_number: LongInt): LongInt; stdcall;
procedure pp_cedate(cenum: LongInt; mmonth: PLongInt; mday: PLongInt; myear: PLongInt); stdcall;
function pp_checksum(filename: PChar; checksum: PLongInt): LongInt; stdcall;
function pp_chkvarchar(handle: LongInt; var_no: LongInt): LongInt; stdcall;
function pp_chkvardate(handle: LongInt; var_no: LongInt): LongInt; stdcall;
function pp_chkvarnum(handle: LongInt; var_no: LongInt): LongInt; stdcall;
function pp_cenum: LongInt; stdcall;
function pp_compno(cnotype: LongInt; filename: PChar; hard_drive: PChar): LongInt; stdcall;
function pp_convertv3(handle: LongInt; v3_cf: PChar; v3_cpf: PChar; v3_sn: LongInt): LongInt; stdcall;
function pp_copyadd(handle: LongInt; flags: LongInt; comp_num: LongInt): LongInt; stdcall;
function pp_copycheck(handle: LongInt; action: LongInt; comp_num: LongInt): LongInt; stdcall;
function pp_copydelete(handle: LongInt; comp_num: LongInt): LongInt; stdcall;
function pp_copyget(handle: LongInt; slot: LongInt; comp_num: PLongInt): LongInt; stdcall;
function pp_countdec(handle: LongInt; var_no: LongInt): LongInt; stdcall;
function pp_countinc(handle: LongInt; var_no: LongInt): LongInt; stdcall;
function pp_ctcodes(code: LongInt; cenum: LongInt; computer: LongInt; seed: LongInt): LongInt; stdcall;
procedure pp_decrypt(strin: PChar; pwstr: PChar; ret: PChar); stdcall;
procedure pp_encrypt(strin: PChar; pwstr: PChar; ret: PChar); stdcall;
procedure pp_errorstr(number: LongInt; buffer: PChar); stdcall;
function pp_expired(handle: LongInt): LongInt; stdcall;
function pp_filedelete(filename: PChar): LongInt; stdcall;
function pp_getcode(hwnd: LongInt; str_title: PChar; str_cenum: PChar; str_comp: PChar; str_code: PChar): LongInt; stdcall;
procedure pp_getdate(mmonth: PLongInt; mday: PLongInt; myear: PLongInt; mdayofweek: PLongInt); stdcall;
procedure pp_gettime(hours: PLongInt; minutes: PLongInt; seconds: PLongInt; hseconds: PLongInt); stdcall;
function pp_getvarchar(handle: LongInt; var_no: LongInt; buffer: PChar): LongInt; stdcall;
function pp_getvardate(_1: LongInt; _2: LongInt; _3: PLongInt; _4: PLongInt; _5: PLongInt): LongInt; stdcall;
function pp_getvarnum(handle: LongInt; var_no: LongInt; value: PLongInt): LongInt; stdcall;
procedure pp_lastday(mmonth: LongInt; mday: PLongInt; myear: LongInt); stdcall;
function pp_lanactive(handle: LongInt): LongInt; stdcall;
function pp_lancheck(handle: LongInt): LongInt; stdcall;
function pp_libtest(testnum: LongInt): LongInt; stdcall;
function pp_lfclose(handle: LongInt): LongInt; stdcall;
function pp_lfcopy(handle: LongInt; filename: PChar; lftype: LongInt): LongInt; stdcall;
function pp_lfcreate(fn: PChar; flags: LongInt; lftype: LongInt; password: PChar; attrib: LongInt): LongInt; stdcall;
function pp_lflock(mem_handle: LongInt): LongInt; stdcall;
function pp_lfopen(filename: PChar; lftype: LongInt; lfflags: LongInt; password: PChar; handle: PLongInt): LongInt; stdcall;
function pp_lfunlock(mem_handle: LongInt): LongInt; stdcall;
function pp_hdserial(drive: PChar): LongInt; stdcall;
function pp_ndecrypt(number: LongInt; seed: LongInt): LongInt; stdcall;
function pp_nencrypt(number: LongInt; seed: LongInt): LongInt; stdcall;
procedure pp_npdate(mmonth: PLongInt; mday: PLongInt; myear: PLongInt; dop: LongInt); stdcall;
function pp_password(buffer: PChar): LongInt; stdcall;
function pp_redir(drive: PChar): LongInt; stdcall;
function pp_semclose(handle: LongInt): LongInt; stdcall;
function pp_semcount(handle: LongInt; semtype: LongInt; prefix_server: PChar; mname: PChar; number: PLongInt): LongInt; stdcall;
function pp_semopen(handle: LongInt; semtype: LongInt; prefix_server: PChar; mname: PChar; sem_handle: PLongInt): LongInt; stdcall;
function pp_setvarchar(handle: LongInt; var_no: LongInt; buffer: PChar): LongInt; stdcall;
function pp_setvardate(_1: LongInt; _2: LongInt; _3: LongInt; _4: LongInt; _5: LongInt): LongInt; stdcall;
function pp_setvarnum(handle: LongInt; var_no: LongInt; value: LongInt): LongInt; stdcall;
function pp_tcode(number: LongInt; cenum: LongInt; computer: LongInt; seed: LongInt): LongInt; stdcall;
function pp_timercheck(timestamp: LongInt; minutes: LongInt): LongInt; stdcall;
function pp_timerstart: LongInt; stdcall;
function pp_transfer(handle: LongInt; filename: PChar; password: PChar; comp_num: LongInt): LongInt; stdcall;
function pp_upddate(handle: LongInt; flag: LongInt): LongInt; stdcall;
function pp_valdate(handle: LongInt): LongInt; stdcall;

implementation

procedure pp_adddays; external 'KeyLib32.dll.dll';
function pp_bitclear; external 'KeyLib32.dll';
function pp_bitset; external 'KeyLib32.dll';
function pp_bittest; external 'KeyLib32.dll';
procedure pp_cedate; external 'TrgLib32';
function pp_checksum; external 'KeyLib32.dll';
function pp_chkvarchar; external 'KeyLib32.dll';
function pp_chkvardate; external 'KeyLib32.dll';
function pp_chkvarnum; external 'KeyLib32.dll';
function pp_cenum; external 'KeyLib32.dll';
function pp_compno; external 'KeyLib32.dll';
function pp_convertv3; external 'KeyLib32.dll';
function pp_copyadd; external 'KeyLib32.dll';
function pp_copycheck; external 'KeyLib32.dll';
function pp_copydelete; external 'KeyLib32.dll';
function pp_copyget; external 'KeyLib32.dll';
function pp_countdec; external 'KeyLib32.dll';
function pp_countinc; external 'KeyLib32.dll';
function pp_ctcodes; external 'TrgLib32';
procedure pp_decrypt; external 'KeyLib32.dll';
procedure pp_encrypt; external 'KeyLib32.dll';
procedure pp_errorstr; external 'KeyLib32.dll';
function pp_expired; external 'KeyLib32.dll';
function pp_filedelete; external 'KeyLib32.dll';
function pp_getcode; external 'KeyLib32.dll';
procedure pp_getdate; external 'KeyLib32.dll';
procedure pp_gettime; external 'KeyLib32.dll';
function pp_getvarchar; external 'KeyLib32.dll';
function pp_getvardate; external 'KeyLib32.dll';
function pp_getvarnum; external 'KeyLib32.dll';
procedure pp_lastday; external 'KeyLib32.dll';
function pp_lanactive; external 'KeyLib32.dll';
function pp_lancheck; external 'KeyLib32.dll';
function pp_libtest; external 'KeyLib32.dll';
function pp_lfclose; external 'KeyLib32.dll';
function pp_lfcopy; external 'KeyLib32.dll';
function pp_lfcreate; external 'KeyLib32.dll';
function pp_lflock; external 'KeyLib32.dll';
function pp_lfopen; external 'KeyLib32.dll';
function pp_lfunlock; external 'KeyLib32.dll';
function pp_hdserial; external 'KeyLib32.dll';
function pp_ndecrypt; external 'KeyLib32.dll';
function pp_nencrypt; external 'KeyLib32.dll';
procedure pp_npdate; external 'KeyLib32.dll';
function pp_password; external 'KeyLib32.dll';
function pp_redir; external 'KeyLib32.dll';
function pp_semclose; external 'KeyLib32.dll';
function pp_semcount; external 'KeyLib32.dll';
function pp_semopen; external 'KeyLib32.dll';
function pp_setvarchar; external 'KeyLib32.dll';
function pp_setvardate; external 'KeyLib32.dll';
function pp_setvarnum; external 'KeyLib32.dll';
function pp_tcode; external 'KeyLib32.dll';
function pp_timercheck; external 'KeyLib32.dll';
function pp_timerstart; external 'KeyLib32.dll';
function pp_transfer; external 'KeyLib32.dll';
function pp_upddate; external 'KeyLib32.dll';
function pp_valdate; external 'KeyLib32.dll';

end.
