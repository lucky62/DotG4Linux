unit DotgV_064;

{$MODE Delphi}

//1 bites BMP 0 vagy 1 bitjeinél lefúró G-code generáló

//2011.07.30.  Win verzió funkciókkal feltöltése kezdet V02
//2011.10.04.  V05b: Szélesebb tesztre bocsátás
//2011.11.28.  V062b: kiadás elõtti tesztre felkészítve,
//             cimkék és egyebek mentése a központi DotG panellal
//2011.12.08.  Felület átrendezés, angolosítás folyamatban
//2012.01.01.  Képméret miatti hiba javítása (65535x ..... jó)
//2013.10.06.  Open Source ...
//2017.01.21   Converted to Linux/Translated to English by Ján (lucky62) Koštial at lucky62@kostial.sk

interface

uses
  SysUtils, LCLIntf, LCLType, Classes, Graphics, Controls,Math,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, ExtDlgs, ComCtrls;

type

  { TMainForm }

  TMainForm = class(TForm)
    FileMenu: TMenuItem;
    HelpMenu: TMenuItem;
    MainMenu: TMainMenu;
    FileOpenItem: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    FilePrintItem: TMenuItem;
    FilePrintSetupItem: TMenuItem;
    FileExitItem: TMenuItem;
    HelpContentsItem: TMenuItem;
    HelpSearchItem: TMenuItem;
    HelpHowToUseItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    SpeedBar: TPanel;
    SpeedButton1: TSpeedButton;  { &Open... }
    SpeedButton2: TSpeedButton;  { &Save }
    SpeedButton3: TSpeedButton;  { &Print... }
    SpeedButton5: TSpeedButton;  { &Contents }
    SpeedButton7: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    SpeedButton8: TSpeedButton;
    label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    Edit7: TEdit;
    Edit8: TEdit;
    pan1: TPanel;
    pan2: TPanel;
    pan3: TPanel;
    pan4: TPanel;
    pan5: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit13: TEdit;
    Panel2: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Panel3: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Panel4: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Panel5: TPanel;
    Image5: TImage;
    Panel6: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Belltsmegnyitsa1: TMenuItem;
    N2: TMenuItem;
    OpenDialog1: TOpenDialog;
    SpeedButton9: TSpeedButton;
    StatusBar1: TStatusBar;
    CheckBox23: TCheckBox;
    StatusBar2: TStatusBar;
    SaveDialog1: TSaveDialog;
    Label22: TLabel;
    Edit20: TEdit;
    CheckBox24: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    Panel7: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Panel8: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit12: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    Edit24: TEdit;
    Edit25: TEdit;
    procedure FileOpen(Sender: TObject);
    procedure FileSave(Sender: TObject);
    procedure FileSaveAs(Sender: TObject);
    procedure FileExit(Sender: TObject);
    procedure HelpContents(Sender: TObject);
    procedure HelpSearch(Sender: TObject);
    procedure HelpHowToUse(Sender: TObject);
    procedure HelpAbout(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure CheckBox23Click(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit17Change(Sender: TObject);
    procedure Edit18Change(Sender: TObject);
    procedure Edit19Change(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure Edit16Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure CheckBox21Click(Sender: TObject);
    procedure CheckBox22Click(Sender: TObject);
    procedure Edit20Change(Sender: TObject);
    procedure CheckBox24Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox16Click(Sender: TObject);
    procedure CheckBox17Click(Sender: TObject);
    procedure CheckBox18Click(Sender: TObject);
    procedure CheckBox19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit21Change(Sender: TObject);
    procedure Edit22Change(Sender: TObject);
    procedure Edit23Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure OnCreateZsoci(Sender: TObject);
    procedure Edit24Change(Sender: TObject);
    procedure Edit25Change(Sender: TObject);
  end;

const inpuffsize=256*32;
    project_head = 'DotG V0.64 for Linux';
    hexcon : string = '0123456789ABCDEF';
    varmax=30; // változók száma
    numeric : set of char = ['0'..'9','.']; //számokban elõforduló karakterek
    numericpm : set of char = ['0'..'9','.','+','-']; //számokban elõforduló karakterek

    szam : set of char = ['0'..'9'];
    separ : set of char = [' ',Chr(13),Chr(10)];
    post_var : array [1..varmax] of string[11] = ('n','xa','ya','za','xh','yh','zh',
    '~~','zd','sl','xmin','ymin','zmin','xmax','ymax','zmax','pname','tnum',
    '~~~','sp','m34','bmpfile','f','~~~~','fz','cs1','cs2','cs3','zt','m78');
    CRLF = Chr(13)+Chr(10);

type    cbt = array [1..24] of boolean;
        config = record
            xh :string[32];
            yh :string[32];
            zh :string[32];
            za :string[32];
            zd :string[32];
            sl :string[32];
            tnum  :string[32];
            sp    :string[32];
            srast_x :string[32];
            srast_y :string[32];
            rep_dist :string[32];
            d_sl :string[32];
            z_timer :string[32];
            f  :string[32];
            fz :string[32];
            cs1 :string[32];
            cs2 :string[32];
            cs3 :string[32];
            acc_x :string[32];
            acc_y :string[32];
            acc_z :string[32];
            rapx :string[32];
            rapy :string[32];
            rapz :string[32];
            xy_mul:string[32];
            z_mul:string[32];
            c_box : cbt;
        end;


var
  MainForm: TMainForm;

    onlynumb : string[64] = 'Only Numbers and Decimal Point Allowed!';
    onlynumbpm : string[64] = 'Only Numbers, Sign and Decimal Point Allowed!';
    onlynumb2 : string[64] = 'Only numbers allowed';
    bm_pp_open : string[64] = 'Image or PostProcessor not loaded';
    bmp_wide : string[64] = 'Max. 65535 pixel wide picture is available to open!';
    code_ok : string[64] = 'Code saved!';
    info: string='Visit our homepage: www.dotg.weeby.com';
    no_access : string[64] ='Unable to access File!';
    not_1bit : string[80] ='  BMP is not 1-bit format!'+CRLF+' Output will be invalid!';
    imtext : string[17] =' Image: ';
    posttxt : string[17] =' Postp.:';
    impix : string[33] =' Img. pix. size: ';
    megmm : string[33] =' Working area: ';
    conftxt : string[17] =' Sets.: ';
    
    ffname,tname, stest, blk_xs,blk_ys : string;
    sfname,sfname_tr: string;
    inpointer,incount,data_offs,bpl,a,b: integer;
    infile: file;
    inpuff : array [1..inpuffsize] of byte;
    header: array [1..20] of string;
    format: array [1..10] of string;
    moving: array [1..30] of string;
    pgmend: array [1..30] of string;
    initdir: array [1..5] of string; //alapkönyvtárak

    index,bm_width,bm_height,row,column,bm_wtemp : longint;
    outfile, testpix : textfile;
    conf_name : string;
    xy_x,z_x,f_x,xy_d,z_d,f_d: integer;
    sigbits,zero_pos, way_mod: byte;
    spin,cool: char;       //igeiglenes változók
    pen_up,negate,contch_ok,xymod,zmod,fmod,n_inc,skip_y: boolean;
    onezero, linedot,rep_line,slip_p,bztim,htext,ifs_ok,slip_now: boolean;
    bm_opened : boolean = false;
    reg_ok : boolean = false;
    post_opened : boolean = false;
    init_opened : boolean = false;
    LtoR : boolean = true;
    pos_stored : boolean = false;
    slip_yes : boolean = false; // ha elõfordult SLIP vagy vonal, akkor TRUE
    prog_var : array [1..varmax] of string[63];
    decimal_var : array [1..varmax] of integer;
    mul_var : array [1..varmax] of integer;
    c_box : cbt;
    extens,seq_l,seq_str,seq_inc: string[23];
    n,xa,ya,za,xh,yh,zh,zs,zd,sl,xmin,ymin,zmin,xmax,ymax,zmax,pname,tnum,tcorr,sp,m34,bmpfile:string[39];
    f,fs,fz,cs1,cs2,cs3:string[39];
    rep_dist,d_sl,z_timer:string[39];
    _inpuff: string;  //Post beolvasáshoz
    _postfile : textfile;
    line_shift: extended;
    i_store : integer; //kezdõ pont sorszáma X irányban SLIP és vonal esetén

    raster_x,raster_y,x_act,y_act,x_pre,y_pre,offs_x,offs_y,x_store: real;
    acc_x,acc_y,acc_z: string[39];
    ac_x,ac_y,ac_z,feed_xy,feed_z,fullspeedx,fullspeedy,fullspeedz: real;
    rapidx,rapidy,rapidz,xy_m,z_m: real;
    rapx,rapy,rapz,xy_mul,z_mul: string[39];
    fulltime,drill_time : extended;

    srast_x,srast_y:string;

    cnf : config;
    conf_file : file of config;

    dirfile,labfile : textfile;
    cdir: integer;
    startdir, def_out: string;  //innen indították a programot


implementation

{$R *.lfm}
{$W+}
{$Q+} 

function HexToByte(_str:string):byte;
  begin
    result:=16*(Pos(_str[1],hexcon)-1)+ Pos(_str[2],hexcon)-1;
  end;

function kerek(_x:real):real;
    begin
        result:=(round(_x*1000))/1000;
    end;

function kerek10(_x:real):real;
    begin
        result:=(round(_x*10))/10;
    end;

function kereks(_x:real):string;
    begin
        result:=FloatToStr((round(_x*1000))/1000);
    end;

function RStS(_u:extended;_x:integer;_d:integer):string;   // tizedesjegy beállítás és szorzás
var _p,_mul:extended;
    begin
        _p:=Power(10,_d);
        _mul:=Power(10,_x);
        result:=FloatToStr((round(_mul*_u*_p))/_p);
    end;

function BoolToStr(_b:boolean):string;
begin
    if _b then
        result:='True'
    else
        result:='False';
end;

procedure SaveConf();
begin

    cnf.xh:=xh;
    cnf.yh:=yh;
    cnf.zh:=zh;
    cnf.za:=za;
    cnf.zd:=zd;
    cnf.sl:=sl;
    cnf.tnum:=tnum;
    cnf.sp:=sp;
    cnf.srast_x:=srast_x;
    cnf.srast_y:=srast_y;
    cnf.rep_dist:=rep_dist;
    cnf.d_sl:=d_sl;
    cnf.z_timer:=z_timer;
    cnf.f:=f;
    cnf.fz:=fz;
    cnf.cs1:=cs1;
    cnf.cs2:=cs2;
    cnf.cs3:=cs3;
    cnf.acc_x:=acc_x;
    cnf.acc_y:=acc_y;
    cnf.acc_z:=acc_z;
    cnf.rapx:=rapx;
    cnf.rapy:=rapy;
    cnf.rapz:=rapz;
    cnf.xy_mul:=xy_mul;
    cnf.z_mul:=z_mul;
    cnf.c_box:=c_box;


end;

procedure accel_speed_recalc;
var _dz,_dl:real;
begin
    ac_x:=StrToFloat(acc_x);
    ac_y:=StrToFloat(acc_y);
    ac_z:=StrToFloat(acc_z);
    feed_xy:=StrToFloat(f);
    feed_z:=StrToFloat(fz);
    xy_m:=StrToFloat(xy_mul);
    z_m:=StrToFloat(z_mul);

    fullspeedx:=(Sqr(feed_xy)/(2*ac_x));  //TELJES SEBESSÉGRE EKKORA HOSSZON GYORSUL
    fullspeedy:=(Sqr(feed_xy)/(2*ac_y));
    fullspeedz:=(Sqr(feed_z)/(2*ac_z));
    rapidx:=(Sqr(StrToFloat(rapx))/(2*ac_x));  //GYORSMENETRE EKKORA HOSSZON GYORSUL
    rapidy:=(Sqr(StrToFloat(rapy))/(2*ac_y));
    rapidz:=(Sqr(StrToFloat(rapz))/(2*ac_z));

    _dz:=Abs(StrToFloat(za)-StrToFloat(zd));

    if (_dz/2) < fullspeedz then
        drill_time:=2*Sqrt(_dz/ac_z)      // LE ÉS FEL ELÕTOLÁSSAL SZÁMOLVA
    else
        begin
            _dl:=_dz-2*fullspeedz;
            drill_time:=2*_dl/feed_z+2*Sqrt(fullspeedz/ac_z);   // LE ÉS FEL ELÕTOLÁSSAL SZÁMOLVA
        end;

    if bztim then
        drill_time:=drill_time+StrToFloat(z_timer)+0.08;   // Idõzítés hozzáadva egyszer

end;

function curr_xytime(_dxy:real):extended;
var _xytime:extended;
    _dl:real;
begin
    if (_dxy/2) < fullspeedx then
        _xytime:=2*Sqrt(_dxy/ac_x)      // LE ÉS FEL ELÕTOLÁSSAL SZÁMOLVA
    else
        begin
            _dl:=_dxy-2*fullspeedx;
            _xytime:=_dl/feed_xy+2*Sqrt(fullspeedx/ac_x);   // LE ÉS FEL ELÕTOLÁSSAL SZÁMOLVA
        end;

        result:=xy_m*_xytime+z_m*drill_time;
end;


function format_cycletime(_cte:extended):string;
var _dv,_ct: int64;
    _sout:string;
begin
        _ct:=Round(_cte);
    _sout:=':'+IntToStr(_ct mod 60); //sec
    _dv:=_ct div 60;
    _sout:=':'+IntToStr(_dv mod 60)+ _sout; //min
    _dv:=_dv div 60;
    _sout:=':'+IntToStr(_dv mod 24)+ _sout; //hour
    _dv:=_dv div 24;
    _sout:=IntToStr(_dv)+ _sout; //day

    result:=_sout;
end;



procedure  calc_offs();
begin
    case zero_pos of

        1:  begin
                offs_x:=0;
                offs_y:=0;

                prog_var[11]:='0';  //xmin
                prog_var[12]:='0';  //ymin
                prog_var[13]:=zd;  //zmin
                prog_var[14]:=FloatToStr((bm_width-1)*raster_x); //xmax
                prog_var[15]:=FloatToStr((bm_height-1)*raster_y); //ymax
                if zh>za then
                    prog_var[16]:=zh   //zmax
                else
                    prog_var[16]:=za;
            end;
        2:  begin
                offs_x:=0-(bm_width-1)*raster_x;
                offs_y:=0;

                prog_var[11]:=FloatToStr(0-(bm_width-1)*raster_x);  //xmin
                prog_var[12]:='0';  //ymin
                prog_var[13]:=zd;  //zmin
                prog_var[14]:='0'; //xmax
                prog_var[15]:=FloatToStr((bm_height-1)*raster_y); //ymax
                if zh>za then
                    prog_var[16]:=zh   //zmax
                else
                    prog_var[16]:=za;
            end;

        3:  begin
                offs_x:=0-(bm_width-1)*raster_x;
                offs_y:=0-(bm_height-1)*raster_y;

                prog_var[11]:=FloatToStr(0-(bm_width-1)*raster_x);  //xmin
                prog_var[12]:=FloatToStr(0-(bm_height-1)*raster_y);  //ymin

                prog_var[13]:=zd;  //zmin
                prog_var[14]:='0'; //xmax
                prog_var[15]:='0'; //ymax
                if zh>za then
                    prog_var[16]:=zh   //zmax
                else
                    prog_var[16]:=za;
            end;

        4:  begin
                offs_x:=0;
                offs_y:=0-(bm_height-1)*raster_y;

                prog_var[11]:='0';  //xmin
                prog_var[12]:=FloatToStr(0-(bm_height-1)*raster_y);  //ymin
                prog_var[13]:=zd;  //zmin
                prog_var[14]:=FloatToStr((bm_width-1)*raster_x); //xmax
                prog_var[15]:='0'; //ymax
                if zh>za then
                    prog_var[16]:=zh   //zmax
                else
                    prog_var[16]:=za;
            end;

        5:  begin
                offs_x:=(0-(bm_width-1)*raster_x)/2;
                offs_y:=(0-(bm_height-1)*raster_y)/2;

                prog_var[11]:=FloatToStr((0-(bm_width-1)*raster_x)/2);  //xmin
                prog_var[12]:=FloatToStr((0-(bm_height-1)*raster_y)/2);  //ymin
                prog_var[13]:=zd;  //zmin
                prog_var[14]:=FloatToStr(((bm_width-1)*raster_x)/2); //xmax
                prog_var[15]:=FloatToStr(((bm_height-1)*raster_y)/2); //ymax
                if zh>za then
                    prog_var[16]:=zh   //zmax
                else
                    prog_var[16]:=za;
            end;

    end;
    y_pre:=StrToFloat(prog_var[12])-1;
end;

function ReadTextWithoutOnChange(anEdit: TEdit): String;
var
    anEvent: TNotifyEvent;
begin
    anEvent := anEdit.OnChange;
    anEdit.OnChange := nil;
    try
        result:=anEdit.Text;
    finally
        anEdit.OnChange := anEvent;
    end;
end;

procedure SetTextWithoutOnChange(anEdit: TEdit; str: String);
var
    anEvent: TNotifyEvent;
begin
    anEvent := anEdit.OnChange;
    anEdit.OnChange := nil;
    try
        anEdit.Text := str;
    finally
        anEdit.OnChange := anEvent;
    end;
end;

procedure SetCheckBoxWithoutOnClick(anCheckBox: TCheckBox);
var
    anEvent: TNotifyEvent;
begin
    anEvent := anCheckBox.OnClick;
    anCheckBox.OnClick := nil;
    try
        anCheckBox.Checked:=true;
    finally
        anCheckBox.OnClick := anEvent;
    end;
end;

procedure SetResetCheckBox(anCheckBox: TCheckBox; _b:boolean);
var
    anEvent: TNotifyEvent;
begin
    anEvent := anCheckBox.OnClick;
    anCheckBox.OnClick := nil;
    try
        anCheckBox.Checked:=_b;
    finally
        anCheckBox.OnClick := anEvent;
    end;
end;

Function ReadCheckBox(anCheckBox: TCheckBox):boolean;
var
    anEvent: TNotifyEvent;
begin
    anEvent := anCheckBox.OnClick;
    anCheckBox.OnClick := nil;
    try
        result:=anCheckBox.Checked;
    finally
        anCheckBox.OnClick := anEvent;
    end;
end;

procedure ReSetCheckBoxWithoutOnClick(anCheckBox: TCheckBox);
var
    anEvent: TNotifyEvent;
begin
    anEvent := anCheckBox.OnClick;
    anCheckBox.OnClick := nil;
    try
        anCheckBox.Checked:=false;
    finally
        anCheckBox.OnClick := anEvent;
    end;
end;

function change_cont(_c:string):string; //zárójeles változónevet cseréli valós értékre
var _m:integer;
//    _is:string;
begin
    _m:=1;
//    _is:='';
    contch_ok:=false;
    repeat
        if post_var[_m]=LowerCase(_c) then
            begin
                if ((_m>1) and (_m<17)) or ((_m>22) and (_m<26)) then
                    result:=RStS(StrToFloat(prog_var[_m]),mul_var[_m],decimal_var[_m])
                else
                    result:=prog_var[_m];
                if LowerCase(_c)='n' then
                    begin
                        n_inc:=true;
                        result:=seq_l+result;
                    end;

                _m:=varmax+1;
                contch_ok:=true;

            end
        else
            inc(_m);

    until _m > (varmax);
    if not contch_ok then
        result:='['+_c+']';
end;

function process_line(_s:string):string;  // sor feldolgozása
var i:integer;
    cont:string[16];

procedure process_cont();   // Zárójelben szereplõ tartalmat másolja a cont változóba
begin
    cont:='';
    inc(i);
    while _s[i]<>']' do
        begin
            cont:=cont+_s[i];
            inc(i);
        end;

    cont:=change_cont(cont);
end;

    begin
        i:=1;
        result:='';
        n_inc:=false;
        while _s[i]<>Chr(13) do
            begin
                if _s[i]='[' then
                    begin
                        process_cont();
                        result:=result+cont;
                    end
                else
                    result:=result+_s[i];
                inc(i);
            end;
            
        if n_inc then
            prog_var[1]:=IntToStr(StrToInt(prog_var[1])+StrToInt(seq_inc)); //N növelése
    end;

procedure process_header();
  begin
    a:=1;
    while Pos('}',header[a])<>1 do
        begin
            writeln(outfile,process_line(header[a]+chr(13)));
            inc(a);
        end;
  end;

procedure pgmend_ifs();
begin
    ifs_ok:=true;
            if Pos('ifym',pgmend[a])=1 then  //ha Y nem változott
                begin
                    ifs_ok:=false;
                    if skip_y then
                        inc(a,2)  //következõ sor kihagyása
                    else
                        inc(a);
                end;


            if Pos('ifsl',pgmend[a])=1 then
                begin
                    ifs_ok:=false;
                    if not slip_yes then  //ha nincs csúsztatás
                        begin
                            while Pos('endsl',pgmend[a+1])<>1 do  //amíg nincs ENDSL
                                inc(a);

                            inc(a,2);
                        end
                    else
                        inc(a);
                end;

            if Pos('ifzt',pgmend[a])=1  then
                begin
                    ifs_ok:=false;
                    if not bztim then    //ha nincs idõzítés
                        begin
                            while Pos('endzt',pgmend[a+1])<>1 do  //amíg nincs ENDZT
                                inc(a);

                            inc(a,2);
                        end
                    else
                        inc(a);
                end;
end;

procedure moving_ifs();
begin
    ifs_ok:=true;
            if Pos('ifym',moving[a])=1 then  //ha Y nem változott
                begin
                    ifs_ok:=false;
                    if skip_y then
                        inc(a,2)  //következõ sor kihagyása
                    else
                        inc(a);
                end;


            if Pos('ifsl',moving[a])=1 then
                begin
                    ifs_ok:=false;
                    if not slip_now then  //ha most nincs csúsztatás
                        begin
                            while Pos('endsl',moving[a+1])<>1 do  //amíg nincs ENDSL
                                inc(a);

                            inc(a,2);
                        end
                    else
                        inc(a);
                end;

            if Pos('ifzt',moving[a])=1  then
                begin
                    ifs_ok:=false;
                    if not bztim then    //ha nincs idõzítés
                        begin
                            while Pos('endzt',moving[a+1])<>1 do  //amíg nincs ENDZT
                                inc(a);

                            inc(a,2);
                        end
                    else
                        inc(a);
                end;
end;


procedure process_moving();
  begin
    a:=1;
    while Pos('}',moving[a])<>1 do
        begin
            ifs_ok:=false;
            while not ifs_ok do
                moving_ifs();

           if Pos('end',moving[a])<>1 then
                writeln(outfile,process_line(moving[a]+chr(13)));

            inc(a);
        end;
  end;

procedure process_pgmend();
begin

    a:=1;
    while Pos('}',pgmend[a])<>1 do
        begin
            ifs_ok:=false;
            while not ifs_ok do
                pgmend_ifs();

           if Pos('end',pgmend[a])<>1 then
                writeln(outfile,process_line(pgmend[a]+chr(13)));

            inc(a);
        end;
end;

procedure do_this_pix(_x:integer);
var sls: real;
begin
    x_act:=raster_x*(_x)+offs_x;
    x_store:=raster_x*(i_store)+offs_x;
    y_act:=raster_y*row+line_shift+offs_y;

    if LtoR then          //slip számítása
        sls:=x_act+StrToFloat(d_sl)
    else
        begin
            sls:=x_act;
            x_store:=x_store+StrToFloat(d_sl);
        end;

    if sls=x_store then // pontonkénti megmunkálás csúsztatás nélkül
        slip_now:=false
    else
        begin
            slip_now:=true;
            slip_yes:=true;
        end;

    prog_var[2]:=FloatToStr(x_store);  //Xact
    prog_var[3]:=FloatToStr(y_act);  //Yact
    prog_var[10]:=FloatToStr(sls);   //slip abs

    if y_pre=y_act then
        skip_y:=true
    else
        skip_y:=false;

    process_moving();
    pos_stored:=false;

    fulltime:=fulltime+curr_xytime(Sqrt(Sqr(y_pre-y_act)+Sqr(x_store-sls)));

    y_pre:=y_act;
end;

function give_pix(_i:integer):boolean; // pixel kinyerése és maszkolása beállítások szerint
var ix: integer; // byte sorszáma a pufferban
    mask: byte; // AND mask bit kinyeréshez
begin
    ix:=1+ _i div 8;
    mask:=Round(Power(2,(7-(_i mod 8))));
    if (inpuff[ix] and mask)>0 then
        result:=true xor negate xor not onezero
    else
        result:=false xor negate xor not onezero;
end;

procedure process_BMPline();
var i,prev_i: integer; //pixel sorszáma
    pix, pix_next: boolean;
    n: integer; //ciklusváltozó
begin
    pos_stored:=false;
    if LtoR then
        i:=0
    else
        i:=bm_width-1;
    for n:=1 to bm_width do
        begin
            pix:=give_pix(i);
            if pix and not pos_stored then
                begin
                    pos_stored:=true;
                    i_store:=i;
                end;

            prev_i:=i;

            if LtoR then
                inc(i)
            else
                dec(i);

            if (i<>-1) and (i<>bm_width) then  //ha nem elsõ vagy utolsó pixel
                pix_next:=give_pix(i)
            else
                pix_next:=false;

            if pix and ( not pix_next or not linedot) then
                do_this_pix(prev_i);
        end;
end;


procedure process_format();  // Formátumok beállítása
var i,d:integer;
    _u:string[8];
    _s:string;

    procedure read_ext();
    var _s:string;
    begin
        _s:=format[i];
        extens:='';
        d:=Pos(']',_s)+1;
        while _s[d]<> chr(13) do
            begin
                extens:=extens+_s[d];
                inc(d);
            end;
    end;

    procedure read_seq();
    begin
        _s:=format[i];
        seq_l:='';
        d:=Pos(']',_s)+1;
        if _s[d]<>'|' then
            seq_l:=_s[d]; // Sorszám bevezetõ karakter beállítása

        while _s[d]<>'|' do
            inc(d);

        inc(d);
        seq_str:='';
        seq_inc:='';
        while _s[d]<>'|' do
            begin
               if (_s[d] in szam) then
                    seq_str:=seq_str+_s[d];
                inc(d);
            end;
            prog_var[1]:=seq_str;

        inc(d);
        while _s[d]<>'|' do
            begin
                if (_s[d] in szam) then
                    seq_inc:=seq_inc+_s[d];
                inc(d);
            end;
    end;


    procedure mdx();
    var _v: char;
    begin
        _u:=LowerCase(_s[d]);
        _v:=_s[d+1];

        if _u='x' then
            if (_s[d+1] in szam) then
                xy_x:=StrToInt(_v);


        if _u='d' then
            if (_s[d+1] in szam) then
                xy_d:=StrToInt(_v);
    end;

    procedure mdz();
    var _v: char;
    begin
        _u:=LowerCase(_s[d]);
        _v:=_s[d+1];

        if _u='x' then
            if (_s[d+1] in szam) then
                z_x:=StrToInt(_v);

        if _u='d' then
            if (_s[d+1] in szam) then
                z_d:=StrToInt(_v);
    end;

    procedure mdf();
    var _v: char;
    begin
        _u:=LowerCase(_s[d]);
        _v:=_s[d+1];

        if _u='x' then
            if (_s[d+1] in szam) then
                f_x:=StrToInt(_v);

        if _u='d' then
            if (_s[d+1] in szam) then
                f_d:=StrToInt(_v);
    end;

    procedure read_xy();
    begin
        _s:=format[i];
        d:=Pos(']',_s)+1;

        while _s[d]<>Chr(13) do
            begin
                mdx();
                while _s[d]<>'|' do
                    inc(d);
            if _s[d]='|' then
                inc(d);
            end;
    end;

    procedure read_z();
    begin
        _s:=format[i];
        d:=Pos(']',_s)+1;

        while _s[d]<>Chr(13) do
            begin
                mdz();
                while _s[d]<>'|' do
                    inc(d);
            if _s[d]='|' then
                inc(d);
            end;
    end;

    procedure read_f();
    begin
        _s:=format[i];
        d:=Pos(']',_s)+1;

        while _s[d]<>Chr(13) do
            begin
                mdf();
                while _s[d]<>'|' do
                    inc(d);
            if _s[d]='|' then
                inc(d);
            end;
    end;

    begin
      i:=1;
      xy_x:=0; z_x:=0; f_x:=0;
      xy_d:=3; z_d:=3; f_d:=0;

        while Pos('}',format[i])=0 do
            begin
                if Pos('[ext]',format[i])=1 then
                    read_ext();
                if Pos('[seq]',format[i])=1 then
                    read_seq();
                if Pos('[xy]',format[i])=1 then
                    read_xy();
                if Pos('[z]',format[i])=1 then
                    read_z();
                if Pos('[f]',format[i])=1 then
                    read_f();
                inc(i);
            end;
            
            decimal_var[2]:=xy_d;
            decimal_var[5]:=xy_d;
            decimal_var[10]:=xy_d;
            decimal_var[11]:=xy_d;
            decimal_var[14]:=xy_d;

            decimal_var[3]:=xy_d;
            decimal_var[6]:=xy_d;
            decimal_var[12]:=xy_d;
            decimal_var[15]:=xy_d;

            decimal_var[4]:=z_d;
            decimal_var[7]:=z_d;
            decimal_var[8]:=z_d;
            decimal_var[9]:=z_d;
            decimal_var[13]:=z_d;
            decimal_var[16]:=z_d;

            decimal_var[23]:=f_d;
            decimal_var[24]:=f_d;
            decimal_var[25]:=f_d;

            mul_var[2]:=xy_x;
            mul_var[5]:=xy_x;
            mul_var[10]:=xy_x;
            mul_var[11]:=xy_x;
            mul_var[14]:=xy_x;

            mul_var[3]:=xy_x;
            mul_var[6]:=xy_x;
            mul_var[12]:=xy_x;
            mul_var[15]:=xy_x;

            mul_var[4]:=z_x;
            mul_var[7]:=z_x;
            mul_var[8]:=z_x;
            mul_var[9]:=z_x;
            mul_var[13]:=z_x;
            mul_var[16]:=z_x;

            mul_var[23]:=f_x;
            mul_var[24]:=f_x;
            mul_var[25]:=f_x;


    end;


procedure read_format();
var i: integer;
    begin
        i:=1;
        repeat
            readln(_postfile,_inpuff);
            format[i]:=_inpuff+chr(13);
            inc(i);
        until Pos('}',_inpuff)=1;
    end;

procedure read_header();
var i: integer;
    begin
        i:=1;
        repeat
            readln(_postfile,_inpuff);
            header[i]:=_inpuff+chr(13);
            inc(i);
        until Pos('}',_inpuff)=1;
    end;

procedure read_moving();
var i: integer;
    begin
        i:=1;
        repeat
            readln(_postfile,_inpuff);
            moving[i]:=_inpuff+chr(13);
            inc(i);
        until Pos('}',_inpuff)=1;
    end;

procedure read_pgmend();
var i: integer;
    begin
        i:=1;
        repeat
            readln(_postfile,_inpuff);
            pgmend[i]:=_inpuff+chr(13);
            inc(i);
        until Pos('}',_inpuff)=1;
    end;


procedure read_post(_pname:string);
var _i: integer;
    _sect: string[80];

    begin
        AssignFile(_postfile,_pname);
        Reset(_postfile);
        while not eof(_postfile) do
            begin
                readln(_postfile,_inpuff);
                _inpuff:=_inpuff+chr(13);
                if Pos('{',_inpuff)=1 then
                    begin
                        _i:=2;
                        _sect:='';
                        while not (_inpuff[_i] in separ) do
                            begin
                                _sect:=_sect+_inpuff[_i];
                                inc(_i);
                            end;
                        if LowerCase(_sect)='format' then
                            read_format();
                        if LowerCase(_sect)='header' then
                            read_header();
                        if LowerCase(_sect)='moving' then
                            read_moving();
                        if LowerCase(_sect)='pgmend' then
                            read_pgmend();

                    end;
            end;
        CloseFile(_postfile);
    end;
//  -----------+++++++++++++++++++++++--------------++++++++++++++++++++-------+
procedure save_gcode();
begin
    if not (bm_opened and post_opened) then
        begin
            MessageDlg(bm_pp_open,mtWarning,[mbOK],0);
            Exit;
        end;

    DecimalSeparator:='.';   // Alapból tizedes vesszõ van, módosít pontra

    tname:=sfname;   // állomány-kiterjesztések hozzáadása
    AssignFile(infile,tname);  // megnyitások
    AssignFile(outfile,ffname);
    Reset(infile,1);
    try
        Rewrite(outfile);
    except
        CloseFile(infile);
        MessageDlg(no_access,mtError,[mbAbort],0);
        Exit;
    end;


    raster_x:=StrToFloat(srast_x);
    raster_y:=StrToFloat(srast_y);
    row:=0;
    column:=0;
    pen_up:=true;

    fulltime:=0;

    slip_yes:=false;

    BlockRead(infile,inpuff,32,incount); // fejléc beolvasása

    if inpuff[29]<> 1 then
        begin
            MessageDlg(not_1bit,mtWarning,[mbOK],0);
        end;

    data_offs:=inpuff[11];

    bm_width:=((inpuff[22]*256+inpuff[21])*256+inpuff[20])*256+inpuff[19]; // Bitmap szélessége
    bm_height:=((inpuff[26]*256+inpuff[25])*256+inpuff[24])*256+inpuff[23]; // Bitmap szélessége

    bpl:=Floor((bm_width+31)/32)*4;  //byte per line (row)

    BlockRead(infile,inpuff,data_offs-32,incount); // szükségtelen adatok átolvasása

    if inpuff[incount-3]=0 then    // Negált paletta vizsgálata
        negate:=true
    else
        negate:=false;

    blk_xs:=FloatToStr(bm_width*raster_x);
    blk_ys:=FloatToStr(bm_height*raster_y);

    //seq_str:='0';
    //seq_inc:='1';

    calc_offs();

    prog_var[17]:=UpperCase(pname); //pname
    //Showmessage(UpperCase(pname));
    process_header();

    if not slip_p then  // ha CSÚSZTATÁS nincs kipipálva, akkor nulla
        d_sl:='0';

    repeat
        BlockRead(infile,inpuff,bpl,incount); // egy sor beolvasása
        if incount <> 0 then
            begin
                stest:='';

                line_shift:=0;
                process_BMPline();

                if way_mod=2 then   // irány váltása
                    LtoR:= not LtoR;

                if rep_line then    // Sorismétlés
                    begin
                        line_shift:=StrToFloat(rep_dist);
                        process_BMPline();
                    end;

                inc(row);
            end;

    until incount = 0;

    process_pgmend();

    CloseFile(infile);
    CloseFile(outfile);

end;

procedure TMainForm.FileOpen(Sender: TObject);
var only_name: string;
    l: integer;
begin
    if initdir[4]<>'' then
        OpenDialog.InitialDir:=initdir[4];

    if OpenDialog.Execute then
        begin
            initdir[4]:=GetCurrentDir();
            DecimalSeparator:='.';
            { Add code to open OpenDialog1.FileName }
            conf_name:=OpenDialog.FileName;
            l:=length(conf_name);
            repeat
                dec(l);
            until ((conf_name[l]='\') or (l=0));
            only_name:='';
            repeat
                inc(l);
             only_name:=only_name+conf_name[l];
            until Length(conf_name)=l;

            Statusbar1.Panels[1].Text:=conftxt+only_name;

            AssignFile(conf_file,conf_name);  // megnyitások
            Reset(conf_file);

            read(conf_file,cnf);
            c_box:=cnf.c_box;

            Closefile(conf_file);

            SetResetCheckBox(Checkbox1,c_box[1]);
            SetResetCheckBox(Checkbox2,c_box[2]);
            SetResetCheckBox(Checkbox3,c_box[3]);
            SetResetCheckBox(Checkbox4,c_box[4]);
            SetResetCheckBox(Checkbox5,c_box[5]);
            SetResetCheckBox(Checkbox6,c_box[6]);
            SetResetCheckBox(Checkbox7,c_box[7]);
            SetResetCheckBox(Checkbox8,c_box[8]);
            SetResetCheckBox(Checkbox9,c_box[9]);
            SetResetCheckBox(Checkbox10,c_box[10]);
            SetResetCheckBox(Checkbox11,c_box[11]);
            SetResetCheckBox(Checkbox12,c_box[12]);
            SetResetCheckBox(Checkbox13,c_box[13]);
            SetResetCheckBox(Checkbox14,c_box[14]);
            SetResetCheckBox(Checkbox15,c_box[15]);
            SetResetCheckBox(Checkbox16,c_box[16]);
            SetResetCheckBox(Checkbox17,c_box[17]);
            SetResetCheckBox(Checkbox18,c_box[18]);
            SetResetCheckBox(Checkbox21,c_box[21]);
            SetResetCheckBox(Checkbox22,c_box[22]);
            SetResetCheckBox(Checkbox23,c_box[23]);
            Application.ShowHint := c_box[23];
            SetResetCheckBox(Checkbox24,c_box[24]);

    SetTextWithoutOnChange(Edit14,cnf.xh);
    SetTextWithoutOnChange(Edit15,cnf.yh);
    SetTextWithoutOnChange(Edit16,cnf.zh);
    SetTextWithoutOnChange(Edit11,cnf.za);
    SetTextWithoutOnChange(Edit13,cnf.zd);
    SetTextWithoutOnChange(Edit8,cnf.d_sl);
    SetTextWithoutOnChange(Edit1,cnf.tnum);
    SetTextWithoutOnChange(Edit3,cnf.sp);
    SetTextWithoutOnChange(Edit9,cnf.srast_x);;
    SetTextWithoutOnChange(Edit10,cnf.srast_y);;
    SetTextWithoutOnChange(Edit7,cnf.rep_dist);
    SetTextWithoutOnChange(Edit20,cnf.z_timer);;
    SetTextWithoutOnChange(Edit4,cnf.f);
    SetTextWithoutOnChange(Edit6,cnf.fz);;
    SetTextWithoutOnChange(Edit17,cnf.cs1);
    SetTextWithoutOnChange(Edit18,cnf.cs2);
    SetTextWithoutOnChange(Edit19,cnf.cs3);
    SetTextWithoutOnChange(Edit21,cnf.acc_x);
    SetTextWithoutOnChange(Edit22,cnf.acc_y);
    SetTextWithoutOnChange(Edit23,cnf.acc_z);
    SetTextWithoutOnChange(Edit2,cnf.rapx);
    SetTextWithoutOnChange(Edit5,cnf.rapy);
    SetTextWithoutOnChange(Edit12,cnf.rapz);
    SetTextWithoutOnChange(Edit24,cnf.xy_mul);
    SetTextWithoutOnChange(Edit25,cnf.z_mul);



        init_opened:=true;
        end;
end;

procedure TMainForm.FileSave(Sender: TObject);
var only_name,sonly: string;
    l: integer;

begin
    if not (bm_opened and post_opened) then
        begin
            MessageDlg(bm_pp_open,mtWarning,[mbOK],0);
            Exit;
        end;
        if initdir[3]<>'' then
            SaveDialog1.InitialDir:=initdir[3];
     process_format();

     SaveDialog1.FileName:=def_out; // BMP file neve
     SaveDialog1.Filter := 'G-code file  (*.'+ extens +')'+'|*.'+extens;

     if SaveDialog1.Execute and (SaveDialog1.FileName<>'') then
  begin

    initdir[3]:=GetCurrentDir();

    prog_var[18]:=ReadTextWithoutOnChange(Edit1);
    prog_var[20]:=ReadTextWithoutOnChange(Edit3);
    prog_var[23]:=ReadTextWithoutOnChange(Edit4);
    prog_var[25]:=ReadTextWithoutOnChange(Edit6);

    f:=ReadTextWithoutOnChange(Edit4);
    fz:=ReadTextWithoutOnChange(Edit6);

    rep_dist:=ReadTextWithoutOnChange(Edit7);
    d_sl:=ReadTextWithoutOnChange(Edit8);
    srast_x:=ReadTextWithoutOnChange(Edit9);
    srast_y:=ReadTextWithoutOnChange(Edit10);
    prog_var[4]:=ReadTextWithoutOnChange(Edit11);
    prog_var[9]:=ReadTextWithoutOnChange(Edit13);
    zd:=ReadTextWithoutOnChange(Edit13);
    prog_var[5]:=ReadTextWithoutOnChange(Edit14);
    prog_var[6]:=ReadTextWithoutOnChange(Edit15);
    prog_var[7]:=ReadTextWithoutOnChange(Edit16);
    zh:=ReadTextWithoutOnChange(Edit16);
    za:=ReadTextWithoutOnChange(Edit11);
    prog_var[26]:=ReadTextWithoutOnChange(Edit17);
    prog_var[27]:=ReadTextWithoutOnChange(Edit18);
    prog_var[28]:=ReadTextWithoutOnChange(Edit19);
    prog_var[29]:=ReadTextWithoutOnChange(Edit20);

    z_timer:=ReadTextWithoutOnChange(Edit20);

    rapx:=ReadTextWithoutOnChange(Edit2);
    rapy:=ReadTextWithoutOnChange(Edit5);
    rapz:=ReadTextWithoutOnChange(Edit12);

    acc_x:=ReadTextWithoutOnChange(Edit21);
    acc_y:=ReadTextWithoutOnChange(Edit22);
    acc_z:=ReadTextWithoutOnChange(Edit23);

    xy_mul:=ReadTextWithoutOnChange(Edit24);
    z_mul:=ReadTextWithoutOnChange(Edit25);



    If ReadCheckBox(CheckBox1) then zero_pos:=1;
    If ReadCheckBox(CheckBox2) then zero_pos:=2;
    If ReadCheckBox(CheckBox3) then zero_pos:=3;
    If ReadCheckBox(CheckBox4) then zero_pos:=4;
    If ReadCheckBox(CheckBox5) then zero_pos:=5;

    If ReadCheckBox(CheckBox6) then way_mod:=2;
    If ReadCheckBox(CheckBox7) then way_mod:=1;
    If ReadCheckBox(CheckBox8) then way_mod:=3;

    If ReadCheckBox(CheckBox9) then onezero:=true;
    If ReadCheckBox(CheckBox10) then onezero:=false;

    If ReadCheckBox(CheckBox11) then linedot:=true;
    If ReadCheckBox(CheckBox12) then linedot:=false;

    If ReadCheckBox(CheckBox13) then prog_var[21]:='3';  //m34
    If ReadCheckBox(CheckBox14) then prog_var[21]:='4';
    If ReadCheckBox(CheckBox15) then prog_var[21]:='5';

    If ReadCheckBox(CheckBox16) then prog_var[30]:='7';
    If ReadCheckBox(CheckBox17) then prog_var[30]:='8';
    If ReadCheckBox(CheckBox18) then prog_var[30]:='9';


    rep_line:=ReadCheckBox(CheckBox21);
    slip_p:=ReadCheckBox(CheckBox22);
    bztim:=ReadCheckBox(CheckBox24);

    ffname:=SaveDialog1.FileName+'.'+extens;

    sonly:=SaveDialog1.FileName;
    l:=length(sonly);
    repeat
        dec(l);
    until ((sonly[l]='\') or (l=0));
    only_name:='';
    repeat
        inc(l);
        only_name:=only_name+sonly[l];
    until Length(sonly)=l;

    pname:=only_name;

    accel_speed_recalc;

    save_gcode();

    Label31.Caption:=format_cycletime(fulltime);

    ShowMessage(code_ok);

  end;


end;

procedure TMainForm.FileSaveAs(Sender: TObject); // Konfig mentése

begin
    if initdir[4]<>'' then
        SaveDialog.InitialDir:=initdir[4];
        
    if SaveDialog.Execute and (SaveDialog.FileName<>'') then
    begin
        initdir[4]:=GetCurrentDir();
        conf_name:=SaveDialog.FileName+'.init';
        AssignFile(conf_file,conf_name);
        Rewrite(conf_file);

    tnum:=ReadTextWithoutOnChange(Edit1);
    sp:=ReadTextWithoutOnChange(Edit3);
    f:=ReadTextWithoutOnChange(Edit4);
    fz:=ReadTextWithoutOnChange(Edit6);
    rep_dist:=ReadTextWithoutOnChange(Edit7);
    d_sl:=ReadTextWithoutOnChange(Edit8);
    srast_x:=ReadTextWithoutOnChange(Edit9);
    srast_y:=ReadTextWithoutOnChange(Edit10);
    za:=ReadTextWithoutOnChange(Edit11);
    zd:=ReadTextWithoutOnChange(Edit13);
    xh:=ReadTextWithoutOnChange(Edit14);
    yh:=ReadTextWithoutOnChange(Edit15);
    zh:=ReadTextWithoutOnChange(Edit16);
    cs1:=ReadTextWithoutOnChange(Edit17);
    cs2:=ReadTextWithoutOnChange(Edit18);
    cs3:=ReadTextWithoutOnChange(Edit19);
    z_timer:=ReadTextWithoutOnChange(Edit20);

    rapx:=ReadTextWithoutOnChange(Edit2);
    rapy:=ReadTextWithoutOnChange(Edit5);
    rapz:=ReadTextWithoutOnChange(Edit12);

    acc_x:=ReadTextWithoutOnChange(Edit21);
    acc_y:=ReadTextWithoutOnChange(Edit22);
    acc_z:=ReadTextWithoutOnChange(Edit23);

    xy_mul:=ReadTextWithoutOnChange(Edit24);
    z_mul:=ReadTextWithoutOnChange(Edit25);

    c_box[1]:=ReadCheckBox(CheckBox1);
    c_box[2]:=ReadCheckBox(CheckBox2);
    c_box[3]:=ReadCheckBox(CheckBox3);
    c_box[4]:=ReadCheckBox(CheckBox4);
    c_box[5]:=ReadCheckBox(CheckBox5);

    c_box[6]:=ReadCheckBox(CheckBox6);
    c_box[7]:=ReadCheckBox(CheckBox7);
    c_box[8]:=ReadCheckBox(CheckBox8);

    c_box[9]:=ReadCheckBox(CheckBox9);
    c_box[10]:=ReadCheckBox(CheckBox10);

    c_box[11]:=ReadCheckBox(CheckBox11);
    c_box[12]:=ReadCheckBox(CheckBox12);

    c_box[13]:=ReadCheckBox(CheckBox13);
    c_box[14]:=ReadCheckBox(CheckBox14);
    c_box[15]:=ReadCheckBox(CheckBox15);

    c_box[16]:=ReadCheckBox(CheckBox16);
    c_box[17]:=ReadCheckBox(CheckBox17);
    c_box[18]:=ReadCheckBox(CheckBox18);

    c_box[21]:=ReadCheckBox(CheckBox21);
    c_box[22]:=ReadCheckBox(CheckBox22);
    c_box[23]:=ReadCheckBox(CheckBox23);
    c_box[24]:=ReadCheckBox(CheckBox24);


        SaveConf();
        write(conf_file,cnf);
        CloseFile(conf_file);


    end;
end;

procedure TMainForm.FileExit(Sender: TObject);
  var conf_name: string;
    conf_file: file of config;
    _i:integer;

begin
    SetCurrentDir(startdir);
    conf_name:='DotG.init';
    AssignFile(conf_file,conf_name);
    Rewrite(conf_file);

    tnum:=ReadTextWithoutOnChange(Edit1);
    sp:=ReadTextWithoutOnChange(Edit3);
    f:=ReadTextWithoutOnChange(Edit4);
    fz:=ReadTextWithoutOnChange(Edit6);
    rep_dist:=ReadTextWithoutOnChange(Edit7);
    d_sl:=ReadTextWithoutOnChange(Edit8);
    srast_x:=ReadTextWithoutOnChange(Edit9);
    srast_y:=ReadTextWithoutOnChange(Edit10);
    za:=ReadTextWithoutOnChange(Edit11);
    zd:=ReadTextWithoutOnChange(Edit13);
    xh:=ReadTextWithoutOnChange(Edit14);
    yh:=ReadTextWithoutOnChange(Edit15);
    zh:=ReadTextWithoutOnChange(Edit16);
    cs1:=ReadTextWithoutOnChange(Edit17);
    cs2:=ReadTextWithoutOnChange(Edit18);
    cs3:=ReadTextWithoutOnChange(Edit19);
    z_timer:=ReadTextWithoutOnChange(Edit20);

    rapx:=ReadTextWithoutOnChange(Edit2);
    rapy:=ReadTextWithoutOnChange(Edit5);
    rapz:=ReadTextWithoutOnChange(Edit12);

    acc_x:=ReadTextWithoutOnChange(Edit21);
    acc_y:=ReadTextWithoutOnChange(Edit22);
    acc_z:=ReadTextWithoutOnChange(Edit23);

    xy_mul:=ReadTextWithoutOnChange(Edit24);
    z_mul:=ReadTextWithoutOnChange(Edit25);

    c_box[1]:=ReadCheckBox(CheckBox1);
    c_box[2]:=ReadCheckBox(CheckBox2);
    c_box[3]:=ReadCheckBox(CheckBox3);
    c_box[4]:=ReadCheckBox(CheckBox4);
    c_box[5]:=ReadCheckBox(CheckBox5);

    c_box[6]:=ReadCheckBox(CheckBox6);
    c_box[7]:=ReadCheckBox(CheckBox7);
    c_box[8]:=ReadCheckBox(CheckBox8);

    c_box[9]:=ReadCheckBox(CheckBox9);
    c_box[10]:=ReadCheckBox(CheckBox10);

    c_box[11]:=ReadCheckBox(CheckBox11);
    c_box[12]:=ReadCheckBox(CheckBox12);

    c_box[13]:=ReadCheckBox(CheckBox13);
    c_box[14]:=ReadCheckBox(CheckBox14);
    c_box[15]:=ReadCheckBox(CheckBox15);

    c_box[16]:=ReadCheckBox(CheckBox16);
    c_box[17]:=ReadCheckBox(CheckBox17);
    c_box[18]:=ReadCheckBox(CheckBox18);

    c_box[21]:=ReadCheckBox(CheckBox21);
    c_box[22]:=ReadCheckBox(CheckBox22);
    c_box[23]:=ReadCheckBox(CheckBox23);
    c_box[24]:=ReadCheckBox(CheckBox24);


    SaveConf();
    write(conf_file,cnf);
    CloseFile(conf_file);

    AssignFile(dirfile,'InitDirs.dirs');
    Rewrite(dirfile);

    for _i:=1 to 5 do
        writeln(dirfile,initdir[_i]);
    CloseFile(dirfile);

  Close;
end;

procedure TMainForm.HelpContents(Sender: TObject);
begin
//  Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TMainForm.HelpSearch(Sender: TObject);
//const
//  EmptyString: PChar = '';
begin
//  Application.HelpCommand(HELP_PARTIALKEY, Longint(EmptyString));
end;

procedure TMainForm.HelpHowToUse(Sender: TObject);
begin
//  Application.HelpCommand(HELP_HELPONHELP, 0);
end;

procedure TMainForm.HelpAbout(Sender: TObject);
begin
    Showmessage(info);
  { Add code to show program's About Box }
end;

procedure TMainForm.SpeedButton8Click(Sender: TObject);
var only_name,only_fname : string;
    l: integer;
    

begin
    if initdir[1]<>'' then
        OpenPictureDialog1.InitialDir:=initdir[1];
  if OpenPictureDialog1.Execute then
  begin
    { Add code to open OpenPictureDialog1.FileName }
    DecimalSeparator:='.';

    initdir[1]:=GetCurrentDir();

    if not init_opened then
        begin
          if FileExists('DotG.init') then
           begin
            Statusbar1.Panels[1].Text:=conftxt+'DotG.init';

            AssignFile(conf_file,'DotG.init');  // megnyitások
            Reset(conf_file);

            read(conf_file,cnf);
            c_box:=cnf.c_box;

            Closefile(conf_file);

            SetResetCheckBox(Checkbox1,c_box[1]);
            SetResetCheckBox(Checkbox2,c_box[2]);
            SetResetCheckBox(Checkbox3,c_box[3]);
            SetResetCheckBox(Checkbox4,c_box[4]);
            SetResetCheckBox(Checkbox5,c_box[5]);
            SetResetCheckBox(Checkbox6,c_box[6]);
            SetResetCheckBox(Checkbox7,c_box[7]);
            SetResetCheckBox(Checkbox8,c_box[8]);
            SetResetCheckBox(Checkbox9,c_box[9]);
            SetResetCheckBox(Checkbox10,c_box[10]);
            SetResetCheckBox(Checkbox11,c_box[11]);
            SetResetCheckBox(Checkbox12,c_box[12]);
            SetResetCheckBox(Checkbox13,c_box[13]);
            SetResetCheckBox(Checkbox14,c_box[14]);
            SetResetCheckBox(Checkbox15,c_box[15]);
            SetResetCheckBox(Checkbox16,c_box[16]);
            SetResetCheckBox(Checkbox17,c_box[17]);
            SetResetCheckBox(Checkbox18,c_box[18]);
            SetResetCheckBox(Checkbox21,c_box[21]);
            SetResetCheckBox(Checkbox22,c_box[22]);
            SetResetCheckBox(Checkbox23,c_box[23]);
            Application.ShowHint := c_box[23];
            SetResetCheckBox(Checkbox24,c_box[24]);

            SetTextWithoutOnChange(Edit14,cnf.xh);
            SetTextWithoutOnChange(Edit15,cnf.yh);
            SetTextWithoutOnChange(Edit16,cnf.zh);
            SetTextWithoutOnChange(Edit11,cnf.za);
            SetTextWithoutOnChange(Edit13,cnf.zd);
            SetTextWithoutOnChange(Edit8,cnf.d_sl);
            SetTextWithoutOnChange(Edit1,cnf.tnum);
            SetTextWithoutOnChange(Edit3,cnf.sp);
            SetTextWithoutOnChange(Edit9,cnf.srast_x);;
            SetTextWithoutOnChange(Edit10,cnf.srast_y);;
            SetTextWithoutOnChange(Edit7,cnf.rep_dist);
            SetTextWithoutOnChange(Edit20,cnf.z_timer);;
            SetTextWithoutOnChange(Edit4,cnf.f);
            SetTextWithoutOnChange(Edit6,cnf.fz);;
            SetTextWithoutOnChange(Edit17,cnf.cs1);
            SetTextWithoutOnChange(Edit18,cnf.cs2);
            SetTextWithoutOnChange(Edit19,cnf.cs3);
            SetTextWithoutOnChange(Edit21,cnf.acc_x);
            SetTextWithoutOnChange(Edit22,cnf.acc_y);
            SetTextWithoutOnChange(Edit23,cnf.acc_z);
            SetTextWithoutOnChange(Edit2,cnf.rapx);
            SetTextWithoutOnChange(Edit5,cnf.rapy);
            SetTextWithoutOnChange(Edit12,cnf.rapz);
            SetTextWithoutOnChange(Edit24,cnf.xy_mul);
            SetTextWithoutOnChange(Edit25,cnf.z_mul);

            init_opened:=true;
           end;

        end;


    sfname:=OpenPictureDialog1.FileName;
    sfname_tr:=sfname;
    SetLength(sfname_tr,Length(sfname)-4);
    l:=length(sfname)-3;
    repeat
        dec(l);
    until ((sfname[l]='\') or (l=0));
    only_name:='';
    only_fname:=imtext;
    repeat
        inc(l);
        only_name:=only_name+sfname[l];
        only_fname:=only_fname+sfname[l];
    until Length(sfname)=l;

    prog_var[22]:=only_name;

    def_out:=only_name;   // Mentésnél felajánlott fájlnév
    SetLength(def_out,Length(def_out)-4);

    tname:=sfname;
    AssignFile(infile,tname);
    Reset(infile,1);

    BlockRead(infile,inpuff,32,incount); // fejléc beolvasása

    if inpuff[29]<> 1 then
        begin
            MessageDlg(not_1bit,mtWarning,[mbOK],0);
        end;

    data_offs:=inpuff[11];

    bm_width:=((inpuff[22]*256+inpuff[21])*256+inpuff[20])*256+inpuff[19]; // Bitmap szélessége
    bm_height:=((inpuff[26]*256+inpuff[25])*256+inpuff[24])*256+inpuff[23]; // Bitmap szélessége

    bpl:=Floor((bm_width+31)/32)*4;  //byte per line (row)

    BlockRead(infile,inpuff,data_offs-32,incount); // szükségtelen adatok átolvasása

    if inpuff[incount-3]=0 then    // Negált paletta vizsgálata
        negate:=true
    else
        negate:=false;

    CloseFile(infile);

    if bm_width < (inpuffsize*8) then
        begin
            bm_opened:=true;
            Statusbar2.Panels[1].Text:=only_fname;

            if (bm_width<374) and (bm_height<398) then
                Image5.Stretch:=false
            else
                Image5.Stretch:=true;

            SetResetCheckBox(Checkbox19,Image5.Stretch);
            Image5.Picture.LoadFromFile(tname);

            raster_x:=StrToFloat(Edit9.Text);
            raster_y:=StrToFloat(Edit10.Text);

            blk_xs:=FloatToStr(kerek10(bm_width*raster_x));
            blk_ys:=FloatToStr(kerek10(bm_height*raster_y));

            Statusbar1.Panels[2].Text:=impix+ FloatToStr(bm_width)+'x'+FloatToStr(bm_height);
            Statusbar1.Panels[3].Text:=megmm+ blk_xs + 'x' + blk_ys;
        end
    else
        MessageDlg(bmp_wide,mtWarning,[mbOK],0);

  end;
end;


procedure TMainForm.CheckBox23Click(Sender: TObject);
begin
    if CheckBox23.Checked  then
        Application.ShowHint := true
    else
        Application.ShowHint := false;
end;

procedure TMainForm.CheckBox9Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox10);
    onezero:= true;
    CheckBox9.Checked:=true;
end;


procedure TMainForm.CheckBox10Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox9);
    onezero:= false;
    CheckBox10.Checked:=true;
end;

procedure TMainForm.CheckBox11Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox12);
    linedot:= true;
    CheckBox11.Checked:=true;
end;

procedure TMainForm.CheckBox12Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox11);
    linedot:= false;
    CheckBox12.Checked:=true;
end;

procedure TMainForm.CheckBox1Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox2);
    ReSetCheckBoxWithoutOnClick(CheckBox3);
    ReSetCheckBoxWithoutOnClick(CheckBox4);
    ReSetCheckBoxWithoutOnClick(CheckBox5);
    zero_pos:=1;
    CheckBox1.Checked:=true;
end;

procedure TMainForm.CheckBox2Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox1);
    ReSetCheckBoxWithoutOnClick(CheckBox3);
    ReSetCheckBoxWithoutOnClick(CheckBox4);
    ReSetCheckBoxWithoutOnClick(CheckBox5);
    zero_pos:=2;
    CheckBox2.Checked:=true;
end;

procedure TMainForm.CheckBox3Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox2);
    ReSetCheckBoxWithoutOnClick(CheckBox1);
    ReSetCheckBoxWithoutOnClick(CheckBox4);
    ReSetCheckBoxWithoutOnClick(CheckBox5);
    zero_pos:=3;
    CheckBox3.Checked:=true;
end;

procedure TMainForm.CheckBox4Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox2);
    ReSetCheckBoxWithoutOnClick(CheckBox3);
    ReSetCheckBoxWithoutOnClick(CheckBox1);
    ReSetCheckBoxWithoutOnClick(CheckBox5);
    zero_pos:=4;
    CheckBox4.Checked:=true;
end;

procedure TMainForm.CheckBox5Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox2);
    ReSetCheckBoxWithoutOnClick(CheckBox3);
    ReSetCheckBoxWithoutOnClick(CheckBox4);
    ReSetCheckBoxWithoutOnClick(CheckBox1);
    zero_pos:=5;
    CheckBox5.Checked:=true;
end;

procedure TMainForm.CheckBox7Click(Sender: TObject); //Balról jobbra
begin
    ReSetCheckBoxWithoutOnClick(CheckBox6);
    ReSetCheckBoxWithoutOnClick(CheckBox8);
    way_mod:=1;
    LtoR:=true;
    CheckBox7.Checked:=true;
end;


procedure TMainForm.CheckBox6Click(Sender: TObject);  //cikk-cakk
begin
    ReSetCheckBoxWithoutOnClick(CheckBox7);
    ReSetCheckBoxWithoutOnClick(CheckBox8);
    way_mod:=2;
    LtoR:=true;
    CheckBox6.Checked:=true;
end;

procedure TMainForm.CheckBox8Click(Sender: TObject); //Jobbról balra
begin
    ReSetCheckBoxWithoutOnClick(CheckBox7);
    ReSetCheckBoxWithoutOnClick(CheckBox6);
    way_mod:=3;
    LtoR:=false;
    CheckBox8.Checked:=true;
end;

procedure TMainForm.CheckBox13Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox14);
    ReSetCheckBoxWithoutOnClick(CheckBox15);
    spin:='3';
    CheckBox13.Checked:=true;
end;

procedure TMainForm.CheckBox14Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox13);
    ReSetCheckBoxWithoutOnClick(CheckBox15);
    spin:='4';
    CheckBox14.Checked:=true;
end;

procedure TMainForm.CheckBox15Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox14);
    ReSetCheckBoxWithoutOnClick(CheckBox13);
    spin:='5';
    CheckBox15.Checked:=true;
end;

procedure TMainForm.CheckBox16Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox17);
    ReSetCheckBoxWithoutOnClick(CheckBox18);
    cool:='7';
    CheckBox16.Checked:=true;
end;

procedure TMainForm.CheckBox17Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox16);
    ReSetCheckBoxWithoutOnClick(CheckBox18);
    cool:='8';
    CheckBox17.Checked:=true;
end;

procedure TMainForm.CheckBox18Click(Sender: TObject);
begin
    ReSetCheckBoxWithoutOnClick(CheckBox17);
    ReSetCheckBoxWithoutOnClick(CheckBox16);
    cool:='9';
    CheckBox18.Checked:=true;
end;

procedure TMainForm.Edit9Change(Sender: TObject);
begin
    srast_x:=Edit9.Text;
    if Length(srast_x)>0 then
        if not (srast_x[Length(srast_x)] in numeric) then
            begin
                SetLength(srast_x,Length(srast_x)-1);
                Edit9.Text:=srast_x;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;

    if Edit9.Text='' then
        Edit9.Text:='0';

    Edit10.Text:=Edit9.Text;

    if bm_opened then
        begin
            raster_x:=StrToFloat(Edit9.Text);
            raster_y:=StrToFloat(Edit10.Text);

            blk_xs:=FloatToStr(kerek10(bm_width*raster_x));
            blk_ys:=FloatToStr(kerek10(bm_height*raster_y));

            Statusbar1.Panels[3].Text:=megmm+ blk_xs + 'x' + blk_ys;
        end;
end;

procedure TMainForm.Edit10Change(Sender: TObject);
begin
    srast_y:=Edit10.Text;
    if Length(srast_y)>0 then
        if not (srast_y[Length(srast_y)] in numeric) then
            begin
                SetLength(srast_y,Length(srast_y)-1);
                Edit10.Text:=srast_y;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
        if Edit10.Text='' then
            Edit10.Text:='0';

    if bm_opened then
        begin
            raster_x:=StrToFloat(Edit9.Text);
            raster_y:=StrToFloat(Edit10.Text);

            blk_xs:=FloatToStr(kerek10(bm_width*raster_x));
            blk_ys:=FloatToStr(kerek10(bm_height*raster_y));

            Statusbar1.Panels[3].Text:=megmm+ blk_xs + 'x' + blk_ys;
        end;
end;

procedure TMainForm.Edit17Change(Sender: TObject);
begin
    cs1:=Edit17.Text
end;

procedure TMainForm.Edit18Change(Sender: TObject);
begin
    cs2:=Edit18.Text
end;

procedure TMainForm.Edit19Change(Sender: TObject);
begin
    cs3:=Edit19.Text
end;

procedure TMainForm.SpeedButton9Click(Sender: TObject);
var only_name,post_name : string;
    l: integer;
begin
    if initdir[2]<>'' then
        OpenDialog1.InitialDir:=initdir[2];
        
    if OpenDialog1.Execute then
        begin
            initdir[2]:=GetCurrentDir();
            DecimalSeparator:='.';
            post_name:=OpenDialog1.FileName;
            initdir[5]:=post_name;  // következõ indításnál Post betöltése
            l:=length(post_name);
            repeat
                dec(l);
            until ((post_name[l]='\') or (l=0));
            only_name:='';
            repeat
                inc(l);
             only_name:=only_name+post_name[l];
            until Length(post_name)=l;

            read_post(OpenDialog1.FileName);

            post_opened:=true;

            Statusbar2.Panels[0].Text:=posttxt+only_name;
        end;
end;

procedure TMainForm.Edit14Change(Sender: TObject);
begin
    xh:=Edit14.Text;
    if Length(xh)>0 then
        if not (xh[Length(xh)] in numericpm) then
            begin
                SetLength(xh,Length(xh)-1);
                Edit14.Text:=xh;
                MessageDlg(onlynumbpm,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.Edit15Change(Sender: TObject);
begin
    yh:=Edit15.Text;
    if Length(yh)>0 then
        if not (yh[Length(yh)] in numericpm) then
            begin
                SetLength(yh,Length(yh)-1);
                Edit15.Text:=yh;
                MessageDlg(onlynumbpm,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.Edit16Change(Sender: TObject);
begin
    zh:=Edit16.Text;
    if Length(zh)>0 then
        if not (zh[Length(zh)] in numericpm) then
            begin
                SetLength(zh,Length(zh)-1);
                Edit16.Text:=zh;
                MessageDlg(onlynumbpm,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.Edit1Change(Sender: TObject);
begin
    tnum:=Edit1.Text;
    if Length(tnum)>0 then
        if not (tnum[Length(tnum)] in szam) then
            begin
                SetLength(tnum,Length(tnum)-1);
                Edit1.Text:=tnum;
                MessageDlg(onlynumb2,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.Edit3Change(Sender: TObject);
begin
    sp:=Edit3.Text;
    if Length(sp)>0 then
        if not (sp[Length(sp)] in szam) then
            begin
                SetLength(sp,Length(sp)-1);
                Edit3.Text:=sp;
                MessageDlg(onlynumb2,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.Edit4Change(Sender: TObject);
begin
    f:=Edit4.Text;
    if Length(f)>0 then
        if not (f[Length(f)] in numeric) then
            begin
                SetLength(f,Length(f)-1);
                Edit4.Text:=f;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
end;


procedure TMainForm.Edit6Change(Sender: TObject);
begin
    fz:=Edit6.Text;
    if Length(fz)>0 then
        if not (fz[Length(fz)] in numeric) then
            begin
                SetLength(fz,Length(fz)-1);
                Edit6.Text:=fz;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.Edit7Change(Sender: TObject);
begin
    rep_dist:=Edit7.Text;
    if Length(rep_dist)>0 then
        if not (rep_dist[Length(rep_dist)] in numeric) then
            begin
                SetLength(rep_dist,Length(rep_dist)-1);
                Edit7.Text:=rep_dist;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.Edit8Change(Sender: TObject);
begin
    d_sl:=Edit8.Text;
    if Length(d_sl)>0 then
        if not (d_sl[Length(d_sl)] in numeric) then
            begin
                SetLength(d_sl,Length(d_sl)-1);
                Edit8.Text:=d_sl;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.Edit11Change(Sender: TObject);
begin
    za:=Edit11.Text;
    if Length(za)>0 then
        if not (za[Length(za)] in numericpm) then
            begin
                SetLength(za,Length(za)-1);
                Edit11.Text:=za;
                MessageDlg(onlynumbpm,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.Edit13Change(Sender: TObject);
begin
    zd:=Edit13.Text;
    if Length(zd)>0 then
        if not (zd[Length(zd)] in numericpm) then
            begin
                SetLength(zd,Length(zd)-1);
                Edit13.Text:=zd;
                MessageDlg(onlynumbpm,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.CheckBox21Click(Sender: TObject);
begin
    if CheckBox21.Checked  then
        rep_line:= true
    else
        rep_line:= false;
end;

procedure TMainForm.CheckBox22Click(Sender: TObject);
begin
    if CheckBox22.Checked  then
        slip_p:= true
    else
        slip_p:= false;
end;

procedure TMainForm.Edit20Change(Sender: TObject);
begin
    z_timer:=Edit20.Text;
    if Length(z_timer)>0 then
        if not (z_timer[Length(z_timer)] in numeric) then
            begin
                SetLength(z_timer,Length(z_timer)-1);
                Edit20.Text:=z_timer;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.CheckBox24Click(Sender: TObject);
begin
    if CheckBox24.Checked  then
        bztim:= true
    else
        bztim:= false;
end;

procedure TMainForm.CheckBox19Click(Sender: TObject);
begin
    if CheckBox19.Checked  then
        Image5.Stretch:=true
    else
        Image5.Stretch:=false;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin

    AssignFile(labfile,'Labels.txt');  // megnyitások
    Rewrite(labfile);

    writeln(labfile,Label1.Caption);
    writeln(labfile,Label2.Caption);
    writeln(labfile,Label3.Caption);
    writeln(labfile,Label4.Caption);
    writeln(labfile,Label6.Caption);
    writeln(labfile,Label7.Caption);
    writeln(labfile,Label8.Caption);
    writeln(labfile,Label9.Caption);
    writeln(labfile,Label10.Caption);
    writeln(labfile,Label12.Caption);
    writeln(labfile,Label13.Caption);
    writeln(labfile,Label14.Caption);
    writeln(labfile,Label15.Caption);
    writeln(labfile,Label16.Caption);
    writeln(labfile,Label17.Caption);
    writeln(labfile,Label18.Caption);
    writeln(labfile,Label19.Caption);
    writeln(labfile,Label20.Caption);
    writeln(labfile,Label21.Caption);
    writeln(labfile,Label22.Caption);
    writeln(labfile,Label23.Caption);
    writeln(labfile,Label25.Caption);
    writeln(labfile,Label26.Caption);
    writeln(labfile,Label27.Caption);
    writeln(labfile,Label30.Caption);
    writeln(labfile,Label34.Caption);
    writeln(labfile,Label35.Caption);
    writeln(labfile,Label36.Caption);

    writeln(labfile,imtext);
    writeln(labfile,posttxt);
    writeln(labfile,impix);
    writeln(labfile,megmm);
    writeln(labfile,conftxt);


    // HINTS
    writeln(labfile,'(-- ** HINTS **--)');
    writeln(labfile,Image1.Hint);
    writeln(labfile,pan2.Hint);
    writeln(labfile,pan3.Hint);
    writeln(labfile,pan4.Hint);
    writeln(labfile,pan5.Hint);
    writeln(labfile,Panel1.Hint);
    writeln(labfile,Panel2.Hint);
    writeln(labfile,Panel3.Hint);
    writeln(labfile,Panel4.Hint);
    writeln(labfile,Panel6.Hint);
    writeln(labfile,Panel7.Hint);
    writeln(labfile,SpeedButton1.Hint);
    writeln(labfile,SpeedButton2.Hint);
    writeln(labfile,SpeedButton3.Hint);
    writeln(labfile,SpeedButton5.Hint);
    writeln(labfile,SpeedButton7.Hint);
    writeln(labfile,SpeedButton8.Hint);
    writeln(labfile,SpeedButton9.Hint);

    writeln(labfile,Edit7.Hint);
    writeln(labfile,Edit24.Hint);
    writeln(labfile,Edit25.Hint);
    writeln(labfile,Label31.Hint);
    writeln(labfile,CheckBox19.Hint);
    writeln(labfile,CheckBox23.Caption);

    writeln(labfile,'(--** Messages **--)');
    writeln(labfile,onlynumb);
    writeln(labfile,onlynumb2);
    writeln(labfile,onlynumbpm);
    writeln(labfile,bm_pp_open);
    writeln(labfile,bmp_wide);
    writeln(labfile,code_ok);
    writeln(labfile,no_access);
    writeln(labfile,not_1bit);
    writeln(labfile,info);

    CloseFile(labfile);

end;

procedure TMainForm.Button2Click(Sender: TObject);
var _s:string;
begin
    AssignFile(labfile,'Labels_eng.txt');  // megnyitások
    Reset(labfile);

    readln(labfile,_s);
    Label1.Caption:=_s;

    readln(labfile,_s);
    Label2.Caption:=_s;

    readln(labfile,_s);
    Label3.Caption:=_s;

    readln(labfile,_s);
    Label4.Caption:=_s;

    readln(labfile,_s);
    Label6.Caption:=_s;

    readln(labfile,_s);
    Label7.Caption:=_s;

    readln(labfile,_s);
    Label8.Caption:=_s;

    readln(labfile,_s);
    Label9.Caption:=_s;

    readln(labfile,_s);
    Label10.Caption:=_s;

    readln(labfile,_s);
    Label12.Caption:=_s;

    readln(labfile,_s);
    Label13.Caption:=_s;

    readln(labfile,_s);
    Label14.Caption:=_s;

    readln(labfile,_s);
    Label15.Caption:=_s;

    readln(labfile,_s);
    Label16.Caption:=_s;

    readln(labfile,_s);
    Label17.Caption:=_s;

    readln(labfile,_s);
    Label18.Caption:=_s;

    readln(labfile,_s);
    Label19.Caption:=_s;

    readln(labfile,_s);
    Label20.Caption:=_s;

    readln(labfile,_s);
    Label21.Caption:=_s;

    readln(labfile,_s);
    Label22.Caption:=_s;

    readln(labfile,_s);
    Label23.Caption:=_s;

    readln(labfile,_s);
    Label25.Caption:=_s;

    readln(labfile,_s);
    Label26.Caption:=_s;

    readln(labfile,_s);
    Label27.Caption:=_s;

    readln(labfile,_s);
    Label30.Caption:=_s;

    readln(labfile,_s);
    Label34.Caption:=_s;

    readln(labfile,_s);
    Label35.Caption:=_s;
    
    readln(labfile,_s);
    Label36.Caption:=_s;

    readln(labfile,_s); // Hints megjegyzés átolvasása

    readln(labfile,_s);
    Image1.Hint:=_s;

    readln(labfile,_s);
    pan2.Hint:=_s;

    readln(labfile,_s);
    pan3.Hint:=_s;

    readln(labfile,_s);
    pan4.Hint:=_s;

    readln(labfile,_s);
    pan5.Hint:=_s;

    readln(labfile,_s);
    Panel1.Hint:=_s;

    readln(labfile,_s);
    Panel2.Hint:=_s;

    readln(labfile,_s);
    Panel3.Hint:=_s;

    readln(labfile,_s);
    Panel4.Hint:=_s;

    readln(labfile,_s);
    Panel6.Hint:=_s;

    readln(labfile,_s);
    Panel7.Hint:=_s;

    readln(labfile,_s);
    SpeedButton1.Hint:=_s;

    readln(labfile,_s);
    SpeedButton2.Hint:=_s;

    readln(labfile,_s);
    SpeedButton3.Hint:=_s;

    readln(labfile,_s);
    SpeedButton5.Hint:=_s;

    readln(labfile,_s);
    SpeedButton7.Hint:=_s;

    readln(labfile,_s);
    SpeedButton8.Hint:=_s;

    readln(labfile,_s);
    SpeedButton9.Hint:=_s;

    readln(labfile,_s);
    Edit7.Hint:=_s;

    readln(labfile,_s);
    Edit24.Hint:=_s;
    Label35.Hint:=_s;

    readln(labfile,_s);
    Edit25.Hint:=_s;
    Label36.Hint:=_s;

    readln(labfile,_s);
    Label31.Hint:=_s;

    readln(labfile,_s);
    CheckBox19.Hint:=_s;

    readln(labfile,_s);
    CheckBox23.Caption:=_s;

    readln(labfile,_s);  // átolvasás '--** Messages **--'

    readln(labfile,_s);
    onlynumb:=_s;

    readln(labfile,_s);
    onlynumb2:=_s;

    readln(labfile,_s);
    onlynumbpm:=_s;

    readln(labfile,_s);
    bm_pp_open:=_s;

    readln(labfile,_s);
    bmp_wide:=_s;

    readln(labfile,_s);
    code_ok:=_s;

    readln(labfile,_s);
    no_access:=_s;

    readln(labfile,_s);
    not_1bit:=_s;

    readln(labfile,_s);
    not_1bit:=CRLF+ not_1bit +_s;

    readln(labfile,_s);
    info:=_s;

    CloseFile(labfile);
end;

procedure TMainForm.Edit21Change(Sender: TObject); //Acc_X
begin
    acc_x:=Edit21.Text;
    if Length(acc_x)>0 then
        if not (acc_x[Length(acc_x)] in numeric) then
            begin
                SetLength(acc_x,Length(acc_x)-1);
                Edit21.Text:=acc_x;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
        if Edit21.Text='' then
            Edit21.Text:='0';
end;

procedure TMainForm.Edit2Change(Sender: TObject); //Acc_X
begin
    rapx:=Edit2.Text;
    if Length(rapx)>0 then
        if not (rapx[Length(rapx)] in numeric) then
            begin
                SetLength(rapx,Length(rapx)-1);
                Edit2.Text:=rapx;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
        if Edit2.Text='' then
            Edit2.Text:='0';
end;


procedure TMainForm.Edit22Change(Sender: TObject); //Acc_Y
begin
    acc_y:=Edit22.Text;
    if Length(acc_y)>0 then
        if not (acc_y[Length(acc_y)] in numeric) then
            begin
                SetLength(acc_y,Length(acc_y)-1);
                Edit22.Text:=acc_y;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
        if Edit22.Text='' then
            Edit22.Text:='0';
end;

procedure TMainForm.Edit5Change(Sender: TObject); //Acc_Y
begin
    rapy:=Edit5.Text;
    if Length(rapy)>0 then
        if not (rapy[Length(rapy)] in numeric) then
            begin
                SetLength(rapy,Length(rapy)-1);
                Edit5.Text:=rapy;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
        if Edit5.Text='' then
            Edit5.Text:='0';
end;

procedure TMainForm.Edit23Change(Sender: TObject); //Acc_Z
begin
    acc_z:=Edit23.Text;
    if Length(acc_z)>0 then
        if not (acc_z[Length(acc_z)] in numeric) then
            begin
                SetLength(acc_z,Length(acc_z)-1);
                Edit23.Text:=acc_z;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
        if Edit23.Text='' then
            Edit23.Text:='0';
end;

procedure TMainForm.Edit12Change(Sender: TObject); //Acc_Z
begin
    rapz:=Edit12.Text;
    if Length(rapz)>0 then
        if not (rapz[Length(rapz)] in numeric) then
            begin
                SetLength(rapz,Length(rapz)-1);
                Edit12.Text:=rapz;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
        if Edit12.Text='' then
            Edit12.Text:='0';
end;

procedure TMainForm.Edit24Change(Sender: TObject);
begin
    xy_mul:=Edit24.Text;
    if Length(xy_mul)>0 then
        if not (xy_mul[Length(xy_mul)] in numeric) then
            begin
                SetLength(xy_mul,Length(xy_mul)-1);
                Edit24.Text:=xy_mul;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.Edit25Change(Sender: TObject);
begin
    z_mul:=Edit25.Text;
    if Length(z_mul)>0 then
        if not (z_mul[Length(z_mul)] in numeric) then
            begin
                SetLength(z_mul,Length(z_mul)-1);
                Edit25.Text:=z_mul;
                MessageDlg(onlynumb,mtWarning,[mbOK],0);
            end;
end;

procedure TMainForm.OnCreateZsoci(Sender: TObject);
var only_name,post_name,_s : string;
    l: integer;
begin

if FileExists('LangFile.txt') then
  begin

    AssignFile(labfile,'LangFile.txt');
    Reset(labfile);

    readln(labfile,_s);
    Label1.Caption:=_s;

    readln(labfile,_s);
    Label2.Caption:=_s;

    readln(labfile,_s);
    Label3.Caption:=_s;

    readln(labfile,_s);
    Label4.Caption:=_s;

    readln(labfile,_s);
    Label6.Caption:=_s;

    readln(labfile,_s);
    Label7.Caption:=_s;

    readln(labfile,_s);
    Label8.Caption:=_s;

    readln(labfile,_s);
    Label9.Caption:=_s;

    readln(labfile,_s);
    Label10.Caption:=_s;

    readln(labfile,_s);
    Label12.Caption:=_s;

    readln(labfile,_s);
    Label13.Caption:=_s;

    readln(labfile,_s);
    Label14.Caption:=_s;

    readln(labfile,_s);
    Label15.Caption:=_s;

    readln(labfile,_s);
    Label16.Caption:=_s;

    readln(labfile,_s);
    Label17.Caption:=_s;

    readln(labfile,_s);
    Label18.Caption:=_s;

    readln(labfile,_s);
    Label19.Caption:=_s;

    readln(labfile,_s);
    Label20.Caption:=_s;

    readln(labfile,_s);
    Label21.Caption:=_s;

    readln(labfile,_s);
    Label22.Caption:=_s;

    readln(labfile,_s);
    Label23.Caption:=_s;

    readln(labfile,_s);
    Label25.Caption:=_s;

    readln(labfile,_s);
    Label26.Caption:=_s;

    readln(labfile,_s);
    Label27.Caption:=_s;

    readln(labfile,_s);
    Label30.Caption:=_s;

    readln(labfile,_s);
    Label34.Caption:=_s;

    readln(labfile,_s);
    Label35.Caption:=_s;

    readln(labfile,_s);
    Label36.Caption:=_s;

    readln(labfile,_s);
    imtext:=_s;
    readln(labfile,_s);
    posttxt:=_s;
    readln(labfile,_s);
    impix:=_s;
    readln(labfile,_s);
    megmm:=_s;
    readln(labfile,_s);
    conftxt:=_s;

    readln(labfile,_s); // Hints megjegyzés átolvasása

    readln(labfile,_s);
    Image1.Hint:=_s;

    readln(labfile,_s);
    pan2.Hint:=_s;

    readln(labfile,_s);
    pan3.Hint:=_s;

    readln(labfile,_s);
    pan4.Hint:=_s;

    readln(labfile,_s);
    pan5.Hint:=_s;

    readln(labfile,_s);
    Panel1.Hint:=_s;

    readln(labfile,_s);
    Panel2.Hint:=_s;

    readln(labfile,_s);
    Panel3.Hint:=_s;

    readln(labfile,_s);
    Panel4.Hint:=_s;

    readln(labfile,_s);
    Panel6.Hint:=_s;

    readln(labfile,_s);
    Panel7.Hint:=_s;

    readln(labfile,_s);
    SpeedButton1.Hint:=_s;

    readln(labfile,_s);
    SpeedButton2.Hint:=_s;

    readln(labfile,_s);
    SpeedButton3.Hint:=_s;

    readln(labfile,_s);
    SpeedButton5.Hint:=_s;

    readln(labfile,_s);
    SpeedButton7.Hint:=_s;

    readln(labfile,_s);
    SpeedButton8.Hint:=_s;

    readln(labfile,_s);
    SpeedButton9.Hint:=_s;

    readln(labfile,_s);
    Edit7.Hint:=_s;

    readln(labfile,_s);
    Edit24.Hint:=_s;
    Label35.Hint:=_s;

    readln(labfile,_s);
    Edit25.Hint:=_s;
    Label36.Hint:=_s;

    readln(labfile,_s);
    Label31.Hint:=_s;

    readln(labfile,_s);
    CheckBox19.Hint:=_s;

    readln(labfile,_s);
    CheckBox23.Caption:=_s;

    readln(labfile,_s);  // átolvasás '--** Messages **--'

    readln(labfile,_s);
    onlynumb:=_s;

    readln(labfile,_s);
    onlynumb2:=_s;

    readln(labfile,_s);
    onlynumbpm:=_s;

    readln(labfile,_s);
    bm_pp_open:=_s;

    readln(labfile,_s);
    bmp_wide:=_s;

    readln(labfile,_s);
    code_ok:=_s;

    readln(labfile,_s);
    no_access:=_s;

    readln(labfile,_s);
    not_1bit:=_s;

    readln(labfile,_s);
    not_1bit:=CRLF+ not_1bit +_s;

    readln(labfile,_s);
    info:=_s;

    CloseFile(labfile);
  end;

      if FileExists('DotG.init') then
        begin
            Statusbar1.Panels[1].Text:=conftxt+'DotG.init';

            AssignFile(conf_file,'DotG.init');  // megnyitások
            Reset(conf_file);

            read(conf_file,cnf);
            c_box:=cnf.c_box;

            Closefile(conf_file);

            SetResetCheckBox(Checkbox1,c_box[1]);
            SetResetCheckBox(Checkbox2,c_box[2]);
            SetResetCheckBox(Checkbox3,c_box[3]);
            SetResetCheckBox(Checkbox4,c_box[4]);
            SetResetCheckBox(Checkbox5,c_box[5]);
            SetResetCheckBox(Checkbox6,c_box[6]);
            SetResetCheckBox(Checkbox7,c_box[7]);
            SetResetCheckBox(Checkbox8,c_box[8]);
            SetResetCheckBox(Checkbox9,c_box[9]);
            SetResetCheckBox(Checkbox10,c_box[10]);
            SetResetCheckBox(Checkbox11,c_box[11]);
            SetResetCheckBox(Checkbox12,c_box[12]);
            SetResetCheckBox(Checkbox13,c_box[13]);
            SetResetCheckBox(Checkbox14,c_box[14]);
            SetResetCheckBox(Checkbox15,c_box[15]);
            SetResetCheckBox(Checkbox16,c_box[16]);
            SetResetCheckBox(Checkbox17,c_box[17]);
            SetResetCheckBox(Checkbox18,c_box[18]);
            SetResetCheckBox(Checkbox21,c_box[21]);
            SetResetCheckBox(Checkbox22,c_box[22]);
            SetResetCheckBox(Checkbox23,c_box[23]);
            Application.ShowHint := c_box[23];
            SetResetCheckBox(Checkbox24,c_box[24]);

            SetTextWithoutOnChange(Edit14,cnf.xh);
            SetTextWithoutOnChange(Edit15,cnf.yh);
            SetTextWithoutOnChange(Edit16,cnf.zh);
            SetTextWithoutOnChange(Edit11,cnf.za);
            SetTextWithoutOnChange(Edit13,cnf.zd);
            SetTextWithoutOnChange(Edit8,cnf.d_sl);
            SetTextWithoutOnChange(Edit1,cnf.tnum);
            SetTextWithoutOnChange(Edit3,cnf.sp);
            SetTextWithoutOnChange(Edit9,cnf.srast_x);;
            SetTextWithoutOnChange(Edit10,cnf.srast_y);;
            SetTextWithoutOnChange(Edit7,cnf.rep_dist);
            SetTextWithoutOnChange(Edit20,cnf.z_timer);;
            SetTextWithoutOnChange(Edit4,cnf.f);
            SetTextWithoutOnChange(Edit6,cnf.fz);;
            SetTextWithoutOnChange(Edit17,cnf.cs1);
            SetTextWithoutOnChange(Edit18,cnf.cs2);
            SetTextWithoutOnChange(Edit19,cnf.cs3);
            SetTextWithoutOnChange(Edit21,cnf.acc_x);
            SetTextWithoutOnChange(Edit22,cnf.acc_y);
            SetTextWithoutOnChange(Edit23,cnf.acc_z);
            SetTextWithoutOnChange(Edit2,cnf.rapx);
            SetTextWithoutOnChange(Edit5,cnf.rapy);
            SetTextWithoutOnChange(Edit12,cnf.rapz);
            SetTextWithoutOnChange(Edit24,cnf.xy_mul);
            SetTextWithoutOnChange(Edit25,cnf.z_mul);

            init_opened:=true;
        end;


    // Initdir beolvasás
    for cdir:=1 to 5 do
        initdir[cdir]:='';
    if FileExists('InitDirs.dirs') then
        begin
            AssignFile(dirfile,'InitDirs.dirs');
            Reset(dirfile);
            try
                for cdir:=1 to 5 do
                    readln(dirfile,initdir[cdir]);
            except
                CloseFile(dirfile);
                MessageDlg(no_access,mtError,[mbAbort],0);
                Exit;
            end;
            CloseFile(dirfile);

        end;

        // Post megnyitás
    if FileExists(initdir[5]) then
        begin
            DecimalSeparator:='.';
            post_name:=initdir[5];
            l:=length(post_name);
            repeat
                dec(l);
            until ((post_name[l]='\') or (l=0));
            only_name:='';
            repeat
                inc(l);
             only_name:=only_name+post_name[l];
            until Length(post_name)=l;

            read_post(initdir[5]);

            post_opened:=true;

            Statusbar2.Panels[0].Text:=posttxt+only_name;
        end;

end;

begin  //Initdir beolvasás
    startdir:=GetCurrentDir();

    for cdir:=1 to 5 do
        initdir[cdir]:='';
    if FileExists('InitDirs.dirs') then
        begin
            AssignFile(dirfile,'InitDirs.dirs');
            Reset(dirfile);
            try
                for cdir:=1 to 5 do
                    readln(dirfile,initdir[cdir]);
            except
                CloseFile(dirfile);
                MessageDlg(no_access,mtError,[mbAbort],0);
                Exit;
            end;
            CloseFile(dirfile);

        end;




end.


