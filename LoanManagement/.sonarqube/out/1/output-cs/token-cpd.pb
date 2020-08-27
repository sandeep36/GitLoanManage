�K
YD:\GitLoanManage\LoanManagement\LoanManagementService\Controllers\LoanManageController.cs
	namespace
LoanManagementService
 
.
Controllers
{ 
[ 

ApiVersion 
( 
$str 
) 
] 
[ 
Route 

(
 
$str  
)  !
]! "
[ 

] 
public 

class  
LoanManageController %
:& '
ControllerBase( 6
{ 
private 
ILoanService 
_loanService )
;) *
private 
ILoggerService 
_logger &
;& '
private 
readonly 
ILoanDataRepository ,
<, -
Loan- 1
>1 2
_loandataRepository3 F
;F G
public  
LoanManageController #
(# $
ILoanService$ 0
loanService1 <
,< =
ILoanDataRepository> Q
<Q R
LoanR V
>V W
loandataRepositoryX j
,j k
ILoggerServicel z
logger	{ �
)
� �
{ 	
this 
. 
_loanService 
= 
loanService  +
;+ ,
this 
. 
_loandataRepository %
=& '
loandataRepository( :
;: ;
this 
. 
_logger 
= 
logger !
;! "
} 	
[ 	
Route	 
( 
$str 
) 
] 
[   	
HttpPost  	 
]   
public"" 


SearchLoan"" '
(""' (
string""( .
borrowerName""/ ;
,""; <
int""< ?
loanTerm""@ H
,""H I
decimal""I P

loanAmount""Q [
)""[ \
{## 	
try$$ 
{%% 
var&& 
result&& 
=&& 
_loanService&& )
.&&) *
GetLoanInfo&&* 5
(&&5 6
borrowerName&&6 B
,&&B C
loanTerm&&D L
,&&L M

loanAmount&&N X
)&&X Y
;&&Y Z
if'' 
('' 
result'' 
.'' 
Count''  
==''! #
$num''$ %
)''% &
{(( 
return)) 
NotFound)) #
())# $
$str))$ 5
)))5 6
;))6 7
}** 
else++ 
{,, 
return-- 
new-- 

JsonResult-- )
(--) *
result--* 0
)--0 1
{--2 3

StatusCode--4 >
=--? @
StatusCodes--A L
.--L M
Status200OK--M X
}--Y Z
;--Z [
}.. 
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
_logger22 
.22 
Error22 
(22 
ex22 
.22  
Message22  '
)22' (
;22( )
return33 

StatusCode33 !
(33! "
(33" #
int33# &
)33& '
HttpStatusCode33' 5
.335 6
InternalServerError336 I
,33I J
ex33K M
.33M N
Message33N U
)33U V
;33V W
}44 
}66 	
[88 	
HttpPost88	 
]88 
[99 	
Route99	 
(99 
$str99 
)99 
]99 
[:: 	
	Authorize::	 
(:: 
Roles:: 
=:: 
$str:: "
)::" #
]::# $
public;; 

AddLoan;; $
(;;$ %
[;;% &
Bind;;& *
(;;* +
nameof;;+ 1
(;;1 2
Loan;;2 6
.;;6 7

LoanNumber;;7 A
);;A B
,;;B C
nameof;;C I
(;;I J
Loan;;J N
.;;N O

LoanAmount;;O Y
);;Y Z
,;;Z [
nameof;;[ a
(;;a b
Loan;;b f
.;;f g
LoanTerm;;g o
);;o p
,;;p q
nameof<< 
(<< 
Loan<< 
.<< 
LoanType<<  
)<<  !
,<<! "
nameof<<" (
(<<( )
Loan<<) -
.<<- .

LoanAmount<<. 8
)<<8 9
,<<9 :
nameof<<: @
(<<@ A
Loan<<A E
.<<E F
BorrowerInformation<<F Y
.<<Y Z
BorrowerName<<Z f
)<<f g
,<<g h
nameof== 
(== 
Loan== 
.== 
PropertyInfomation== *
.==* +
AddressLine1==+ 7
)==7 8
,==8 9
nameof==9 ?
(==? @
Loan==@ D
.==D E
PropertyInfomation==E W
.==W X
AddressLine2==X d
)==d e
,==e f
nameof==f l
(==l m
Loan==m q
.==q r
PropertyInfomation	==r �
.
==� �
City
==� �
)
==� �
,
==� �
nameof
==� �
(
==� �
Loan
==� �
.
==� � 
PropertyInfomation
==� �
.
==� �
ZipCode
==� �
)
==� �
)
==� �
]
==� �
[
==� �
FromBody
==� �
]
==� �
Loan
==� �
loan
==� �
)
==� �
{>> 	
try?? 
{@@ 
ifAA 
(AA 
loanAA 
isAA 
nullAA  
)AA  !
{BB 
returnCC 

BadRequestCC %
(CC% &
$strCC& 5
)CC5 6
;CC6 7
}DD 
ifFF 
(FF 
!FF 

ModelStateFF 
.FF  
IsValidFF  '
)FF' (
{GG 
returnHH 

BadRequestHH %
(HH% &
)HH& '
;HH' (
}II 
_loandataRepositoryKK #
.KK# $
AddKK$ '
(KK' (
loanKK( ,
)KK, -
;KK- .
returnLL 
OkLL 
(LL 
)LL 
;LL 
}MM 
catchNN 
(NN 
	ExceptionNN 
exNN 
)NN  
{OO 
_loggerPP 
.PP 
ErrorPP 
(PP 
exPP !
.PP! "
MessagePP" )
)PP) *
;PP* +
returnQQ 

StatusCodeQQ "
(QQ" #
(QQ# $
intQQ$ '
)QQ' (
HttpStatusCodeQQ( 6
.QQ6 7
InternalServerErrorQQ7 J
,QQJ K
exQQL N
.QQN O
MessageQQO V
)QQV W
;QQW X
}RR 
}TT 	
[VV 	
HttpPutVV	 
]VV 
[WW 	
RouteWW	 
(WW 
$strWW  
)WW  !
]WW! "
publicYY 


UpdateLoanYY '
(YY' (
[YY( )
BindYY) -
(YY- .
nameofYY. 4
(YY4 5
LoanYY5 9
.YY9 :

LoanAmountYY: D
)YYD E
,YYE F
nameofYYF L
(YYL M
LoanYYM Q
.YYQ R
LoanTermYYR Z
)YYZ [
,YY[ \
nameofYY\ b
(YYb c
LoanYYc g
.YYg h
LoanTypeYYh p
)YYp q
,YYq r
nameofYYs y
(YYy z
LoanYYz ~
.YY~ 
Id	YY �
)
YY� �
)
YY� �
]
YY� �
int
YY� �
id
YY� �
,
YY� �
[
YY� �
FromBody
YY� �
]
YY� �
Loan
YY� �
loan
YY� �
)
YY� �
{ZZ 	
try[[ 
{\\ 
if]] 
(]] 
loan]] 
==]] 
null]]  
)]]  !
{^^ 
return__ 

BadRequest__ %
(__% &
$str__& 6
)__6 7
;__7 8
}`` 
varbb 
loanToUpdatebb  
=bb! "
_loandataRepositorybb# 6
.bb6 7
Getbb7 :
(bb: ;
idbb; =
)bb= >
;bb> ?
ifcc 
(cc 
loanToUpdatecc  
==cc! #
nullcc$ (
)cc( )
{dd 
returnee 
NotFoundee #
(ee# $
$stree$ C
)eeC D
;eeD E
}ff 
ifhh 
(hh 
!hh 

ModelStatehh 
.hh  
IsValidhh  '
)hh' (
{ii 
returnjj 

BadRequestjj %
(jj% &
)jj& '
;jj' (
}kk 
_loandataRepositorymm #
.mm# $
Updatemm$ *
(mm* +
loanToUpdatemm+ 7
,mm7 8
loanmm9 =
)mm= >
;mm> ?
returnoo 
Okoo 
(oo 
)oo 
;oo 
}pp 
catchqq 
(qq 
	Exceptionqq 
exqq 
)qq  
{rr 
_loggerss 
.ss 
Errorss 
(ss 
exss  
.ss  !
Messagess! (
)ss( )
;ss) *
returntt 

StatusCodett !
(tt! "
(tt" #
inttt# &
)tt& '
HttpStatusCodett' 5
.tt5 6
InternalServerErrortt6 I
,ttI J
exttK M
.ttM N
MessagettN U
)ttU V
;ttV W
}uu 
}ww 	
}xx 
}yy �9
[D:\GitLoanManage\LoanManagement\LoanManagementService\Controllers\LoanManageV1Controller.cs
	namespace
LoanManagementService
 
.
Controllers
{ 
[ 

] 
[ 

ApiVersion 
( 
$str 
) 
] 
[ 
Route 

(
 
$str ,
), -
]- .
public 

class "
LoanManageV1Controller '
:( )
ControllerBase* 8
{ 
private 
ILoanService 
_loanService )
;) *
private 
ILoggerService 
_logger &
;& '
private 
readonly 
ILoanDataRepository ,
<, -
Loan- 1
>1 2
_loandataRepository3 F
;F G
public "
LoanManageV1Controller %
(% &
ILoanService& 2
loanService3 >
,> ?
ILoanDataRepository@ S
<S T
LoanT X
>X Y
loandataRepositoryZ l
,l m
ILoggerServicen |
logger	} �
)
� �
{ 	
this 
. 
_loanService 
= 
loanService  +
;+ ,
this 
. 
_loandataRepository $
=% &
loandataRepository' 9
;9 :
this 
. 
_logger 
= 
logger !
;! "
} 	
[   	
Route  	 
(   
$str   
)   
]   
[!! 	
HttpPost!!	 
]!! 
public## 


SearchLoan## '
(##' (
string##( .
borrowerName##/ ;
,##; <
int##= @
loanTerm##A I
,##I J
decimal##K R

loanAmount##S ]
)##] ^
{$$ 	
try%% 
{&& 
var'' 
result'' 
='' 
_loanService'' )
.'') *
GetLoanInfo''* 5
(''5 6
borrowerName''6 B
,''B C
loanTerm''D L
,''L M

loanAmount''N X
)''X Y
;''Y Z
if(( 
((( 
result(( 
.(( 
Count((  
==((! #
$num(($ %
)((% &
{)) 
return** 
NotFound** #
(**# $
$str**$ 5
)**5 6
;**6 7
}++ 
else,, 
{-- 
return.. 
new.. 

JsonResult.. )
(..) *
result..* 0
)..0 1
{..2 3

StatusCode..4 >
=..? @
StatusCodes..A L
...L M
Status200OK..M X
}..Y Z
;..Z [
}// 
}00 
catch11 
(11 
	Exception11 
ex11 
)11  
{22 
_logger33 
.33 
Error33 
(33 
ex33  
.33  !
Message33! (
)33( )
;33) *
return44 

StatusCode44 !
(44! "
(44" #
int44# &
)44& '
HttpStatusCode44' 5
.445 6
InternalServerError446 I
,44I J
ex44K M
.44M N
Message44N U
)44U V
;44V W
}55 
}77 	
[99 	
HttpPost99	 
]99 
[:: 	
Route::	 
(:: 
$str:: 
):: 
]:: 
public<< 

AddLoan<< $
(<<$ %
[<<% &
FromBody<<& .
]<<. /
Loan<<0 4
loan<<5 9
)<<9 :
{== 	
try>> 
{?? 
if@@ 
(@@ 
loan@@ 
is@@ 
null@@  
)@@  !
{AA 
returnBB 

BadRequestBB %
(BB% &
$strBB& 5
)BB5 6
;BB6 7
}CC 
ifEE 
(EE 
!EE 

ModelStateEE 
.EE  
IsValidEE  '
)EE' (
{FF 
returnGG 

BadRequestGG %
(GG% &
)GG& '
;GG' (
}HH 
_loandataRepositoryJJ #
.JJ# $
AddJJ$ '
(JJ' (
loanJJ( ,
)JJ, -
;JJ- .
returnKK 
OkKK 
(KK 
)KK 
;KK 
}LL 
catchMM 
(MM 
	ExceptionMM 
exMM 
)MM  
{NN 
_loggerOO 
.OO 
ErrorOO 
(OO 
exOO  
.OO  !
MessageOO! (
)OO( )
;OO) *
returnPP 

StatusCodePP !
(PP! "
(PP" #
intPP# &
)PP& '
HttpStatusCodePP' 5
.PP5 6
InternalServerErrorPP6 I
,PPI J
exPPK M
.PPM N
MessagePPN U
)PPU V
;PPV W
}QQ 
}SS 	
[UU 	
HttpPutUU	 
]UU 
[VV 	
RouteVV	 
(VV 
$strVV  
)VV  !
]VV! "
publicXX 


UpdateLoanXX '
(XX' (
intXX( +
idXX, .
,XX. /
[XX0 1
FromBodyXX1 9
]XX9 :
LoanXX; ?
loanXX@ D
)XXD E
{YY 	
tryZZ 
{[[ 
if\\ 
(\\ 
loan\\ 
==\\ 
null\\  
)\\  !
{]] 
return^^ 

BadRequest^^ %
(^^% &
$str^^& 6
)^^6 7
;^^7 8
}__ 
varaa 
loanToUpdateaa  
=aa! "
_loandataRepositoryaa# 6
.aa6 7
Getaa7 :
(aa: ;
idaa; =
)aa= >
;aa> ?
ifbb 
(bb 
loanToUpdatebb  
==bb! #
nullbb$ (
)bb( )
{cc 
returndd 
NotFounddd #
(dd# $
$strdd$ C
)ddC D
;ddD E
}ee 
ifgg 
(gg 
!gg 

ModelStategg 
.gg  
IsValidgg  '
)gg' (
{hh 
returnii 

BadRequestii %
(ii% &
)ii& '
;ii' (
}jj 
_loandataRepositoryll #
.ll# $
Updatell$ *
(ll* +
loanToUpdatell+ 7
,ll7 8
loanll9 =
)ll= >
;ll> ?
returnnn 
Oknn 
(nn 
)nn 
;nn 
}oo 
catchpp 
(pp 
	Exceptionpp 
expp 
)pp  
{qq 
_loggerrr 
.rr 
Errorrr 
(rr 
exrr  
.rr  !
Messagerr! (
)rr( )
;rr) *
returnss 

StatusCodess !
(ss! "
(ss" #
intss# &
)ss& '
HttpStatusCodess' 5
.ss5 6
InternalServerErrorss6 I
,ssI J
exssK M
.ssM N
MessagessN U
)ssU V
;ssV W
}tt 
}vv 	
}ww 
}xx �
ND:\GitLoanManage\LoanManagement\LoanManagementService\Logger\ILoggerService.cs
	namespace 	!
LoanManagementService
 
.  
Logger  &
{ 
public 	
	interface
 
ILoggerService "
{		 
void

 
Information


(

 
string

 
message

  '
)

' (
;

( )
void 
Warning
( 
string 
message #
)# $
;$ %
void 
Debug
( 
string 
message !
)! "
;" #
void
Error
(
string
message
)
;
} 
} �
JD:\GitLoanManage\LoanManagement\LoanManagementService\Logger\LogService.cs
	namespace 	!
LoanManagementService
 
.  
Logger  &
{		 
public

 

class

 

LogService

 
:

 
ILoggerService

 ,
{ 
private 
static 
ILogger 
logger %
=& '

LogManager( 2
.2 3!
GetCurrentClassLogger3 H
(H I
)I J
;J K
public
void
Debug
(
string
message
)
{ 	
logger 
. 
Debug 
( 
message  
)  !
;! "
} 	
public 
void 
Error 
( 
string  
message! (
)( )
{ 	
logger 
. 
Error 
( 
message  
)  !
;! "
} 	
public 
void 
Information 
(  
string  &
message' .
). /
{ 	
logger 
. 
Info 
( 
message 
)  
;  !
} 	
public 
void 
Warning 
( 
string "
message# *
)* +
{ 	
logger 
. 
Warn 
( 
message 
)  
;  !
} 	
}   
}!! �H
^D:\GitLoanManage\LoanManagement\LoanManagementService\Migrations\20200820124340_loaninitial.cs
	namespace 	!
LoanManagementService
 
.  

Migrations  *
{ 
public 

partial 
class 
loaninitial $
:% &
	Migration' 0
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
CreateTable		 (
(		( )
name

 
:

 
$str

 
,

 
columns 
: 
table 
=> !
new" %
{ 
Id
=
table
.
Column
<
int
>
(
nullable
:
false
)
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B

LoanNumber 
=  
table! &
.& '
Column' -
<- .
int. 1
>1 2
(2 3
nullable3 ;
:; <
false= B
)B C
,C D

LoanAmount 
=  
table! &
.& '
Column' -
<- .
decimal. 5
>5 6
(6 7
nullable7 ?
:? @
falseA F
)F G
,G H
LoanTerm 
= 
table $
.$ %
Column% +
<+ ,
int, /
>/ 0
(0 1
nullable1 9
:9 :
false; @
)@ A
,A B
LoanType 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
nullable4 <
:< =
true> B
)B C
,C D

LoanStatus 
=  
table! &
.& '
Column' -
<- .
bool. 2
>2 3
(3 4
nullable4 <
:< =
false> C
)C D
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% /
,/ 0
x1 2
=>3 5
x6 7
.7 8
Id8 :
): ;
;; <
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str ,
,, -
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
nullable+ 3
:3 4
false5 :
): ;
,; <
BorrowerName  
=! "
table# (
.( )
Column) /
</ 0
string0 6
>6 7
(7 8
nullable8 @
:@ A
trueB F
)F G
}   
,   
constraints!! 
:!! 
table!! "
=>!!# %
{"" 
table## 
.## 

PrimaryKey## $
(##$ %
$str##% >
,##> ?
x##@ A
=>##B D
x##E F
.##F G
Id##G I
)##I J
;##J K
table$$ 
.$$ 

ForeignKey$$ $
($$$ %
name%% 
:%% 
$str%% @
,%%@ A
column&& 
:&& 
x&&  !
=>&&" $
x&&% &
.&&& '
Id&&' )
,&&) *
principalTable'' &
:''& '
$str''( /
,''/ 0
principalColumn(( '
:((' (
$str(() -
,((- .
onDelete))  
:))  !
ReferentialAction))" 3
.))3 4
Cascade))4 ;
))); <
;))< =
}** 
)** 
;** 
migrationBuilder,, 
.,, 
CreateTable,, (
(,,( )
name-- 
:-- 
$str-- %
,--% &
columns.. 
:.. 
table.. 
=>.. !
new.." %
{// 
Id00 
=00 
table00 
.00 
Column00 %
<00% &
int00& )
>00) *
(00* +
nullable00+ 3
:003 4
false005 :
)00: ;
,00; <
	Documents11 
=11 
table11  %
.11% &
Column11& ,
<11, -
string11- 3
>113 4
(114 5
nullable115 =
:11= >
true11? C
)11C D
}22 
,22 
constraints33 
:33 
table33 "
=>33# %
{44 
table55 
.55 

PrimaryKey55 $
(55$ %
$str55% 7
,557 8
x559 :
=>55; =
x55> ?
.55? @
Id55@ B
)55B C
;55C D
table66 
.66 

ForeignKey66 $
(66$ %
name77 
:77 
$str77 9
,779 :
column88 
:88 
x88  !
=>88" $
x88% &
.88& '
Id88' )
,88) *
principalTable99 &
:99& '
$str99( /
,99/ 0
principalColumn:: '
:::' (
$str::) -
,::- .
onDelete;;  
:;;  !
ReferentialAction;;" 3
.;;3 4
Cascade;;4 ;
);;; <
;;;< =
}<< 
)<< 
;<< 
migrationBuilder>> 
.>> 
CreateTable>> (
(>>( )
name?? 
:?? 
$str?? +
,??+ ,
columns@@ 
:@@ 
table@@ 
=>@@ !
new@@" %
{AA 
IdBB 
=BB 
tableBB 
.BB 
ColumnBB %
<BB% &
intBB& )
>BB) *
(BB* +
nullableBB+ 3
:BB3 4
falseBB5 :
)BB: ;
,BB; <
AddressLine1CC  
=CC! "
tableCC# (
.CC( )
ColumnCC) /
<CC/ 0
stringCC0 6
>CC6 7
(CC7 8
nullableCC8 @
:CC@ A
trueCCB F
)CCF G
,CCG H
AddressLine2DD  
=DD! "
tableDD# (
.DD( )
ColumnDD) /
<DD/ 0
stringDD0 6
>DD6 7
(DD7 8
nullableDD8 @
:DD@ A
trueDDB F
)DDF G
,DDG H
CityEE 
=EE 
tableEE  
.EE  !
ColumnEE! '
<EE' (
stringEE( .
>EE. /
(EE/ 0
nullableEE0 8
:EE8 9
trueEE: >
)EE> ?
,EE? @
ZipCodeFF 
=FF 
tableFF #
.FF# $
ColumnFF$ *
<FF* +
stringFF+ 1
>FF1 2
(FF2 3
nullableFF3 ;
:FF; <
trueFF= A
)FFA B
}GG 
,GG 
constraintsHH 
:HH 
tableHH "
=>HH# %
{II 
tableJJ 
.JJ 

PrimaryKeyJJ $
(JJ$ %
$strJJ% =
,JJ= >
xJJ? @
=>JJA C
xJJD E
.JJE F
IdJJF H
)JJH I
;JJI J
tableKK 
.KK 

ForeignKeyKK $
(KK$ %
nameLL 
:LL 
$strLL ?
,LL? @
columnMM 
:MM 
xMM  !
=>MM" $
xMM% &
.MM& '
IdMM' )
,MM) *
principalTableNN &
:NN& '
$strNN( /
,NN/ 0
principalColumnOO '
:OO' (
$strOO) -
,OO- .
onDeletePP  
:PP  !
ReferentialActionPP" 3
.PP3 4
CascadePP4 ;
)PP; <
;PP< =
}QQ 
)QQ 
;QQ 
}RR 	
	protectedTT 
overrideTT 
voidTT 
DownTT  $
(TT$ %
MigrationBuilderTT% 5
migrationBuilderTT6 F
)TTF G
{UU 	
migrationBuilderVV 
.VV 
	DropTableVV &
(VV& '
nameWW 
:WW 
$strWW ,
)WW, -
;WW- .
migrationBuilderYY 
.YY 
	DropTableYY &
(YY& '
nameZZ 
:ZZ 
$strZZ %
)ZZ% &
;ZZ& '
migrationBuilder\\ 
.\\ 
	DropTable\\ &
(\\& '
name]] 
:]] 
$str]] +
)]]+ ,
;]], -
migrationBuilder__ 
.__ 
	DropTable__ &
(__& '
name`` 
:`` 
$str`` 
)`` 
;`` 
}aa 	
}bb 
}cc �
RD:\GitLoanManage\LoanManagement\LoanManagementService\Model\BorrowerInformation.cs
	namespace 	!
LoanManagementService
 
.  
Model  %
{		 
public

 

class

 
BorrowerInformation

 $
{ 
[ 	
Key	 
] 
[

ForeignKey
(
$str
)
]
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
BorrowerName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
virtual 
Loan 
Loan  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
LD:\GitLoanManage\LoanManagement\LoanManagementService\Model\LegalDocument.cs
	namespace 	!
LoanManagementService
 
.  
Model  %
{		 
public

 

class

 


 
{ 
[ 	
Key	 
] 
[

ForeignKey
(
$str
)
]
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
	Documents 
{  !
get" %
;% &
set' *
;* +
}, -
public 
virtual 
Loan 
Loan  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
CD:\GitLoanManage\LoanManagement\LoanManagementService\Model\Loan.cs
	namespace 	!
LoanManagementService
 
.  
Model  %
{ 
public		 

class		 
Loan		 
{

 
[ 	
Key	 
] 
public 
int 
Id 
{ 
get 
; 
set 
;  
}! "
public
int

LoanNumber
{
get
;
set
;
}
public 
decimal 

LoanAmount "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
LoanTerm 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
LoanType 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 

LoanStatus 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual 
BorrowerInformation *
BorrowerInformation+ >
{? @
getA D
;D E
setF I
;I J
}K L
public 
virtual 
PropertyInfomation )
PropertyInfomation* <
{= >
get? B
;B C
setD G
;G H
}I J
public 
virtual 


{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
} �

RD:\GitLoanManage\LoanManagement\LoanManagementService\Model\LoanDatabaseContext.cs
	namespace 	!
LoanManagementService
 
.  
Model  %
{ 
public		 

class		 
LoanDatabaseContext		 $
:		$ %
	DbContext		% .
{

 
public 
LoanDatabaseContext "
(" #
DbContextOptions# 3
<3 4
LoanDatabaseContext4 G
>G H
optionsI P
)P Q
:R S
baseT X
(X Y
optionsY `
)` a
{ 	
} 	
public 
DbSet 
< 
Loan 
> 
Loans  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DbSet 
< 
BorrowerInformation (
>( ) 
BorrowerInformations* >
{? @
getA D
;D E
setF I
;I J
}K L
public 
DbSet 
< 
PropertyInfomation '
>' (
PropertyInfomations) <
{= >
get? B
;B C
setD G
;G H
}I J
} 
} �

QD:\GitLoanManage\LoanManagement\LoanManagementService\Model\PropertyInfomation.cs
	namespace 	!
LoanManagementService
 
.  
Model  %
{		 
public

 

class

 
PropertyInfomation

 #
{ 
[ 	
Key	 
] 
[

ForeignKey
(
$str
)
]
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
AddressLine1 "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
AddressLine2 "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
ZipCode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
virtual 
Loan 
Loan  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �

@D:\GitLoanManage\LoanManagement\LoanManagementService\Program.cs
	namespace

 	!
LoanManagementService


 
{ 
public 

class 
Program 
{
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} �!
`D:\GitLoanManage\LoanManagement\LoanManagementService\Repository\DataManager\LoanDataManager .cs
	namespace

 	!
LoanManagementService


 
.

  

Repository

  *
.

* +
DataManager

+ 6
{ 
public 

class 
LoanDataManager  
:  !
ILoanDataRepository" 5
<5 6
Loan6 :
>: ;
{
private 
readonly 
LoanDatabaseContext ,

_dbcontext- 7
;7 8
public 
LoanDataManager 
( 
LoanDatabaseContext 2
context3 :
): ;
{ 	

_dbcontext 
= 
context  
;  !
} 	
public 
void 
Add 
( 
Loan 
entity #
)# $
{ 	

_dbcontext 
. 
Loans 
. 
Add  
(  !
entity! '
)' (
;( )

_dbcontext 
. 
SaveChanges "
(" #
)# $
;$ %
} 	
public 
void 
Delete 
( 
Loan 
entity  &
)& '
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
}   	
public"" 
Loan"" 
Get"" 
("" 
int"" 
id"" 
)"" 
{## 	
var$$ 
loan$$ 
=$$ 

_dbcontext$$ !
.$$! "
Loans$$" '
.$$' (
SingleOrDefault$$( 7
($$7 8
b$$8 9
=>$$: <
b$$= >
.$$> ?
Id$$? A
==$$B D
id$$E G
)$$G H
;$$H I
return%% 
loan%% 
;%% 
}&& 	
public(( 
IEnumerable(( 
<(( 
Loan(( 
>((  
GetAll((! '
(((' (
)((( )
{)) 	
return** 

_dbcontext** 
.** 
Loans** #
.**# $
Include**$ +
(**+ ,
loan**, 0
=>**1 3
loan**4 8
.**8 9
BorrowerInformation**9 L
)**L M
.++ 
ToList++ 
(++ 
)++ 
;++ 
},, 	
public77 
void77 
Update77 
(77 
Loan77 
entityToUpdate77  .
,77. /
Loan770 4
entity775 ;
)77; <
{88 	
entityToUpdate99 
=99 

_dbcontext99 '
.99' (
Loans99( -
.:: 
Include:: 
(:: 
a:: 
=>:: 
a:: 
.::  
BorrowerInformation::  3
)::3 4
.;; 
Include;; 
(;; 
a;; 
=>;; 
a;; 
.;;  
PropertyInfomation;;  2
);;2 3
.<< 
Include<< 
(<< 
a<< 
=><< 
a<< 
.<< 

)<<+ ,
.== 
Single== 
(== 
b== 
=>== 
b== 
.== 
Id== !
====" $
entityToUpdate==% 3
.==3 4
Id==4 6
)==6 7
;==7 8
entityToUpdate?? 
.?? 

LoanAmount?? %
=??& '
entity??( .
.??. /

LoanAmount??/ 9
;??9 :
entityToUpdate@@ 
.@@ 
LoanType@@ #
=@@$ %
entity@@& ,
.@@, -
LoanType@@- 5
;@@5 6
entityToUpdateAA 
.AA 
LoanTermAA #
=AA$ %
entityAA& ,
.AA, -
LoanTermAA- 5
;AA5 6

_dbcontextCC 
.CC 
UpdateCC 
(CC 
entityToUpdateCC +
)CC+ ,
.CC, -
StateCC- 2
=CC3 4
EntityStateCC5 @
.CC@ A
ModifiedCCA I
;CCI J

_dbcontextDD 
.DD 
SaveChangesDD !
(DD! "
)DD" #
;DD# $
}EE 	
}FF 
}GG Y
WD:\GitLoanManage\LoanManagement\LoanManagementService\Repository\DTO\LoanBorrowerDto.csQ
OD:\GitLoanManage\LoanManagement\LoanManagementService\Repository\DTO\LoanDto.csW
UD:\GitLoanManage\LoanManagement\LoanManagementService\Repository\DTO\LoanDtoMapper.cs�
PD:\GitLoanManage\LoanManagement\LoanManagementService\Repository\ILoanService.cs
	namespace 	!
LoanManagementService
 
.  

Repository  *
{ 
public		 	
	interface		
 
ILoanService		  
{

 
List 
< 
Loan
> 
GetLoanInfo 
( 
string %
borrowerName& 2
,2 3
int4 7
loanTerm8 @
,@ A
decimalB I

loanAmountJ T
)T U
;U V
List 
< 
BorrowerInformation
>  !
GetBorrowersByName" 4
(4 5
string5 ;
borrowerName< H
)H I
;I J
}
public 

	interface 
ILoanDataRepository (
<( )
TEntity) 0
>0 1
{ 
IEnumerable 
< 
TEntity 
> 
GetAll #
(# $
)$ %
;% &
TEntity 
Get 
( 
int 
id 
) 
; 
void 
Add
( 
TEntity 
entity 
)  
;  !
void 
Update
( 
TEntity 
entityToUpdate *
,* +
TEntity, 3
entity4 :
): ;
;; <
void 
Delete
( 
TEntity 
entity "
)" #
;# $
} 
} �)
OD:\GitLoanManage\LoanManagement\LoanManagementService\Repository\LoanService.cs
	namespace 	!
LoanManagementService
 
.  

Repository  *
{ 
public

class
LoanService
:
ILoanService
{ 
private 
readonly 
LoanDatabaseContext ,

_dbcontext- 7
;7 8
private 
IConfiguration 
_config &
;& '
public 
LoanService 
( 
LoanDatabaseContext .
context/ 6
,6 7
IConfiguration8 F
configG M
)M N
{ 	

_dbcontext 
= 
context  
;  !
_config 
= 
config 
; 
} 	
public 
List 
< 
BorrowerInformation '
>' (
GetBorrowersByName) ;
(; <
string< B
borrowerNameC O
)O P
{ 	

IQueryable 
< 
BorrowerInformation *
>* +
borrowrs, 4
=5 6

_dbcontext7 A
.A B 
BorrowerInformationsB V
;V W
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
borrowerName* 6
)6 7
)7 8
return 
null 
; 
borrowrs 
= 
borrowrs 
.  
Where  %
(% &
bow& )
=>* ,
bow- 0
.0 1
BorrowerName1 =
.= >
ToLower> E
(E F
)F G
.G H
ContainsH P
(P Q
borrowerNameQ ]
.] ^
Trim^ b
(b c
)c d
.d e
ToLowere l
(l m
)m n
)n o
)o p
;p q
return   
borrowrs   
.   
ToList   "
(  " #
)  # $
;  $ %
}!! 	
public## 
List## 
<## 
Loan## 
>## 
GetLoanInfo## %
(##% &
string##& ,
borrowerName##- 9
,##9 :
int##; >
loanTerm##? G
,##G H
decimal##I P

loanAmount##Q [
)##[ \
{$$ 	

IQueryable%% 
<%% 
Loan%% 
>%% 
query%% "
=%%# $

_dbcontext%%% /
.%%/ 0
Loans%%0 5
;%%5 6
var(( 

=(( 
new((  #
BorrowerInformation(($ 7
(((7 8
)((8 9
;((9 :
try)) 
{** 
if++ 
(++ 
!++ 
string++ 
.++ 
IsNullOrWhiteSpace++ .
(++. /
borrowerName++/ ;
)++; <
)++< =
{,, 
var-- 
	borrowers-- !
=--" #
this--$ (
.--( )
GetBorrowersByName--) ;
(--; <
borrowerName--< H
)--H I
;--I J
foreach.. 
(.. 
var..  
borrower..! )
in..* ,
	borrowers..- 6
)..6 7
{// 
query00 
=00  
query00! &
.00& '
Where00' ,
(00, -
x00- .
=>00/ 1
x002 3
.003 4
BorrowerInformation004 G
.00G H
Id00H J
==00K M
borrower00N V
.00V W
Id00W Y
)00Y Z
;00Z [
}22 
}33 
if44 
(44 
loanTerm44 
>44 
$num44  
)44  !
{55 
query66 
=66 
query66 !
.66! "
Where66" '
(66' (
x66( )
=>66* ,
x66- .
.66. /
LoanTerm66/ 7
==668 :
loanTerm66; C
)66C D
;66D E
}77 
if88 
(88 

loanAmount88 
>88  
$num88! "
)88" #
{99 
query:: 
=:: 
query:: !
.::! "
Where::" '
(::' (
x::( )
=>::* ,
x::- .
.::. /

LoanAmount::/ 9
==::: <

loanAmount::= G
)::G H
;::H I
};; 
query>> 
.>> 
Select>> 
(>> 
x>>  
=>>>! #
new>>$ '
{>>( )
x?? 
.?? 

LoanAmount??  
,??  !
x@@ 
.@@ 
LoanTerm@@ 
,@@ 
xAA 
.AA 
LoanTypeAA 
,AA 
xBB 
.BB 
BorrowerInformationBB )
.BB) *
BorrowerNameBB* 6
}CC 
)CC 
;CC 
returnEE 
queryEE 
.EE 
ToListEE #
(EE# $
)EE$ %
;EE% &
}FF 
catchGG 
(GG 
	ExceptionGG 
)GG 
{HH 
throwJJ 
;JJ 
}LL 
}MM 	
}NN 
}OO �-
@D:\GitLoanManage\LoanManagement\LoanManagementService\Startup.cs
	namespace 	!
LoanManagementService
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %

)3 4
{ 	

LogManager 
. 
LoadConfiguration (
(( )
System) /
./ 0
String0 6
.6 7
Concat7 =
(= >
	Directory> G
.G H
GetCurrentDirectoryH [
([ \
)\ ]
,] ^
$str_ m
)m n
)n o
;o p

= 

;) *
}   	
public"" 
IConfiguration"" 

{"", -
get"". 1
;""1 2
}""3 4
public%% 
void%% 
ConfigureServices%% %
(%%% &
IServiceCollection%%& 8
services%%9 A
)%%A B
{&& 	
services'' 
.'' 
AddDbContext'' !
<''! "
LoanDatabaseContext''" 5
>''5 6
(''6 7
options''7 >
=>''? A
{''B C
options(( 
.(( 
UseSqlServer(( $
((($ %

.((2 3
GetConnectionString((3 F
(((F G
$str((G Z
)((Z [
)(([ \
;((\ ]
})) 
)))
;)) 
services** 
.** 
	AddScoped** 
<** 
ILoanService** +
,**+ ,
LoanService**- 8
>**8 9
(**9 :
)**: ;
;**; <
services,, 
.,, 
	AddScoped,, 
<,, 
ILoanDataRepository,, 2
<,,2 3
Loan,,3 7
>,,7 8
,,,8 9
LoanDataManager,,: I
>,,I J
(,,J K
),,K L
;,,L M
services-- 
.-- 
AddSingleton-- !
<--! "
ILoggerService--" 0
,--0 1

LogService--2 <
>--< =
(--= >
)--> ?
;--? @
services// 
.// 

(//" #
c//# $
=>//% '
{00 
c11 
.11 

SwaggerDoc11 
(11 
$str11 !
,11! "
new11# &
OpenApiInfo11' 2
{22 
Version33 
=33 
$str33 "
,33" #
Title44 
=44 
$str44 -
,44- .
Description55 
=55  !
$str55" 8
,558 9
}77 
)77 
;77 
}88 
)88
;88 
services:: 
.:: 
AddControllers:: #
(::# $
)::$ %
.::% &
AddNewtonsoftJson::& 7
(::7 8
options::8 ?
=>::? A
{::B C
options;; 
.;; 
SerializerSettings;; *
.;;* +!
ReferenceLoopHandling;;+ @
=;;A B

Newtonsoft;;C M
.;;M N
Json;;N R
.;;R S!
ReferenceLoopHandling;;S h
.;;h i
Ignore;;i o
;;;o p
}<< 
)<<
;<< 
services?? 
.?? 
AddApiVersioning?? %
(??% &
x??& '
=>??( *
{@@ 
xAA 
.AA 
DefaultApiVersionAA #
=AA$ %
newAA& )

ApiVersionAA* 4
(AA4 5
$numAA5 6
,AA6 7
$numAA8 9
)AA9 :
;AA: ;
xBB 
.BB /
#AssumeDefaultVersionWhenUnspecifiedBB 5
=BB6 7
trueBB8 <
;BB< =
xCC 
.CC 
ReportApiVersionsCC #
=CC$ %
trueCC& *
;CC* +
}DD 
)DD
;DD 
servicesFF 
.FF 

(FF" #
)FF# $
;FF$ %
}GG 	
publicJJ 
voidJJ 
	ConfigureJJ 
(JJ 
IApplicationBuilderJJ 1
appJJ2 5
,JJ5 6
IWebHostEnvironmentJJ7 J
envJJK N
)JJN O
{KK 	
ifLL 
(LL 
envLL 
.LL 

(LL! "
)LL" #
)LL# $
{MM 
appNN 
.NN %
UseDeveloperExceptionPageNN -
(NN- .
)NN. /
;NN/ 0
}OO 
appQQ 
.QQ 
UseHttpsRedirectionQQ #
(QQ# $
)QQ$ %
;QQ% &
appSS 
.SS 

UseSwaggerSS 
(SS 
)SS 
;SS 
appWW 
.WW 
UseSwaggerUIWW 
(WW 
cWW 
=>WW !
{XX 
cYY 
.YY 
SwaggerEndpointYY !
(YY! "
$strYY" <
,YY< =
$strYY> B
)YYB C
;YYC D
}ZZ 
)ZZ
;ZZ 
app[[ 
.[[ 

UseRouting[[ 
([[ 
)[[ 
;[[ 
app]] 
.]] 
UseAuthorization]]  
(]]  !
)]]! "
;]]" #
app^^ 
.^^ 
UseAuthentication^^ !
(^^! "
)^^" #
;^^# $
app`` 
.`` 
UseEndpoints`` 
(`` 
	endpoints`` &
=>``' )
{aa 
	endpointsbb 
.bb 
MapControllersbb (
(bb( )
)bb) *
;bb* +
}cc 
)cc
;cc 
}dd 	
}ee 
}ff 