µ
HD:\GitLoanManage\LoanManagement\LoanApiService\Appsetting\AppSettings.cs
	namespace 	
LoanUserService
 
. 

Appsetting $
{ 
public 

class 
AppSettings 
{		 
public

 
string

 
Secret

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
} 
} ’
QD:\GitLoanManage\LoanManagement\LoanApiService\Controllers\UserLoginController.cs
	namespace 	
LoanApiService
 
. 
Controllers $
{ 
[ 
ApiController 
] 
[ 

ApiVersion 
( 
$str 
) 
] 
[ 
Route 

(
 
$str 
)  
]  !
public 

class 
UserLoginController $
:% &
ControllerBase' 5
{ 
private 
readonly 
ILoggerManager '
_logger( /
;/ 0
private 
IUserService 
_userService )
;) *
public 
UserLoginController "
(" #
IUserService# /
userService0 ;
,; <
ILoggerManager= K
loggerL R
)R S
{ 	
this 
. 
_userService 
=  
userService! ,
;, -
this 
. 
_logger 
= 
logger "
;" #
} 	
[!! 	
HttpPost!!	 
]!! 
["" 	
Route""	 
("" 
$str"" 
)"" 
]"" 
public$$ 
IActionResult$$ 
Login$$ "
($$" #
[$$# $
FromBody$$$ ,
]$$, -
User$$. 2
user$$3 7
)$$7 8
{%% 	
IActionResult&& 
response&& "
=&&# $
Unauthorized&&% 1
(&&1 2
)&&2 3
;&&3 4
try'' 
{(( 
var)) 
userAuthenticate)) $
=))% &
_userService))' 3
.))3 4
AuthenticateUser))4 D
())D E
user))E I
)))I J
;))J K
if** 
(** 
userAuthenticate** $
.**$ %
Email**% *
==**+ -
null**. 2
)**2 3
return++ 

BadRequest++ %
(++% &
new++& )
{++* +
message++, 3
=++4 5
$str++6 Y
}++Z [
)++[ \
;++\ ]
if-- 
(-- 
userAuthenticate-- $
!=--% '
null--( ,
)--, -
{.. 
var00 
tokenString00 #
=00$ %
_userService00& 2
.002 3 
GenerateJSONWebToken003 G
(00G H
userAuthenticate00H X
)00X Y
;00Y Z
response11 
=11 
Ok11 !
(11! "
new11" %
{11& '
token11( -
=11. /
tokenString110 ;
}11< =
)11= >
;11> ?
}22 
return33 
response33 
;33  
}44 
catch55 
(55 
	Exception55 
ex55 
)55  
{66 
_logger88 
.88 
LogError88  
(88  !
ex88! #
.88# $
Message88$ +
)88+ ,
;88, -
return99 

StatusCode99 !
(99! "
(99" #
int99# &
)99& '
HttpStatusCode99' 5
.995 6
InternalServerError996 I
,99I J
ex99K M
.99M N
Message99N U
)99U V
;99V W
};; 
}== 	
}?? 
}@@ ™
SD:\GitLoanManage\LoanManagement\LoanApiService\Controllers\UserLoginV1Controller.cs
	namespace 	
LoanUserService
 
. 
Controllers %
{ 
[ 
ApiController 
] 
[ 

ApiVersion 
( 
$str 
) 
] 
[ 
Route 

(
 
$str !
)! "
]" #
public 

class !
UserLoginV1Controller &
:' (
ControllerBase) 7
{ 
private 
readonly 
ILoggerManager '
_logger( /
;/ 0
private 
IUserService 
_userService )
;) *
public !
UserLoginV1Controller $
($ %
IUserService% 1
userService2 =
,= >
ILoggerManager? M
loggerN T
)T U
{ 	
this 
. 
_userService 
= 
userService  +
;+ ,
this 
. 
_logger 
= 
logger !
;! "
} 	
[   	
HttpPost  	 
]   
[!! 	
Route!!	 
(!! 
$str!! 
)!! 
]!! 
public## 
IActionResult## 
Login## "
(##" #
[### $
FromBody##$ ,
]##, -
User##. 2
user##3 7
)##7 8
{$$ 	
IActionResult%% 
response%% "
=%%# $
Unauthorized%%% 1
(%%1 2
)%%2 3
;%%3 4
try&& 
{'' 
var(( 
userAuthenticate(( $
=((% &
_userService((' 3
.((3 4
AuthenticateUser((4 D
(((D E
user((E I
)((I J
;((J K
if)) 
()) 
userAuthenticate)) $
.))$ %
Email))% *
==))+ -
null)). 2
)))2 3
return** 

BadRequest** %
(**% &
new**& )
{*** +
message**, 3
=**4 5
$str**6 Y
}**Z [
)**[ \
;**\ ]
if,, 
(,, 
userAuthenticate,, $
!=,,% '
null,,( ,
),,, -
{-- 
var// 
tokenString// #
=//$ %
_userService//& 2
.//2 3 
GenerateJSONWebToken//3 G
(//G H
userAuthenticate//H X
)//X Y
;//Y Z
response00 
=00 
Ok00 !
(00! "
new00" %
{00& '
token00( -
=00. /
tokenString000 ;
}00< =
)00= >
;00> ?
}11 
return22 
response22 
;22  
}33 
catch44 
(44 
	Exception44 
ex44 
)44  
{55 
_logger77 
.77 
LogError77  
(77  !
ex77! #
.77# $
Message77$ +
)77+ ,
;77, -
return88 

StatusCode88 !
(88! "
(88" #
int88# &
)88& '
HttpStatusCode88' 5
.885 6
InternalServerError886 I
,88I J
ex88K M
.88M N
Message88N U
)88U V
;88V W
}:: 
}<< 	
}>> 
}?? “
GD:\GitLoanManage\LoanManagement\LoanApiService\Logger\ILoggerManager.cs
	namespace 	
LoanUserService
 
. 
Logger  
{ 
public 	
	interface
 
ILoggerManager "
{		 
void

 
LogInfo

 
(

 
string

 
message

 #
)

# $
;

$ %
void 
LogWarn 
( 
string 
message #
)# $
;$ %
void 
LogDebug 
( 
string 
message $
)$ %
;% &
void 
LogError 
( 
string 
message $
)$ %
;% &
} 
} õ
GD:\GitLoanManage\LoanManagement\LoanApiService\Logger\LoggerManager .cs
	namespace 	
LoanUserService
 
. 
Logger  
{ 
public		 

class		 
LoggerManager		 
:		  
ILoggerManager		! /
{

 
private	 
static 
ILogger 
logger  &
=' (

LogManager) 3
.3 4!
GetCurrentClassLogger4 I
(I J
)J K
;K L
public 
void 
LogDebug 
( 
string #
message$ +
)+ ,
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
void 
LogError 
( 
string #
message$ +
)+ ,
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
void 
LogInfo 
( 
string "
message# *
)* +
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
void 
LogWarn 
( 
string "
message# *
)* +
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
}   è'
SD:\GitLoanManage\LoanManagement\LoanApiService\Migrations\20200818043601_initial.cs
	namespace 	
LoanApiService
 
. 

Migrations #
{ 
public 

partial 
class 
initial  
:! "
	Migration# ,
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
 !
,

! "
columns 
: 
table 
=> !
new" %
{ 
RoleId 
= 
table "
." #
Column# )
<) *
int* -
>- .
(. /
nullable/ 7
:7 8
false9 >
)> ?
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
RoleName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
nullable4 <
:< =
true> B
)B C
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 3
,3 4
x5 6
=>7 9
x: ;
.; <
RoleId< B
)B C
;C D
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
ID 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
nullable+ 3
:3 4
false5 :
): ;
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
nullable4 <
:< =
true> B
)B C
,C D
Password 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
nullable4 <
:< =
true> B
)B C
,C D
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
nullable1 9
:9 :
true; ?
)? @
,@ A
UserRoleRoleId "
=# $
table% *
.* +
Column+ 1
<1 2
int2 5
>5 6
(6 7
nullable7 ?
:? @
trueA E
)E F
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
$str##% /
,##/ 0
x##1 2
=>##3 5
x##6 7
.##7 8
ID##8 :
)##: ;
;##; <
table$$ 
.$$ 

ForeignKey$$ $
($$$ %
name%% 
:%% 
$str%% A
,%%A B
column&& 
:&& 
x&&  !
=>&&" $
x&&% &
.&&& '
UserRoleRoleId&&' 5
,&&5 6
principalTable'' &
:''& '
$str''( 3
,''3 4
principalColumn(( '
:((' (
$str(() 1
,((1 2
onDelete))  
:))  !
ReferentialAction))" 3
.))3 4
Restrict))4 <
)))< =
;))= >
}** 
)** 
;** 
migrationBuilder,, 
.,, 
CreateIndex,, (
(,,( )
name-- 
:-- 
$str-- /
,--/ 0
table.. 
:.. 
$str.. 
,.. 
column// 
:// 
$str// (
)//( )
;//) *
}00 	
	protected22 
override22 
void22 
Down22  $
(22$ %
MigrationBuilder22% 5
migrationBuilder226 F
)22F G
{33 	
migrationBuilder44 
.44 
	DropTable44 &
(44& '
name55 
:55 
$str55 
)55 
;55 
migrationBuilder77 
.77 
	DropTable77 &
(77& '
name88 
:88 
$str88 !
)88! "
;88" #
}99 	
}:: 
};; µ
=D:\GitLoanManage\LoanManagement\LoanApiService\Models\User.cs
	namespace 	
LoanApiService
 
. 
Models 
{ 
public		 

class		 
User		 
{

 
[ 	
Key	 
] 
public 
int 
ID 
{ 
get 
; 
set  
;  !
}" #
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
UserRole 
UserRole  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} —
LD:\GitLoanManage\LoanManagement\LoanApiService\Models\UserDatabaseContext.cs
	namespace 	
LoanApiService
 
. 
Models 
{ 
public		 

class		 
UserDatabaseContext		 $
:		$ %
	DbContext		% .
{

 
public 
UserDatabaseContext "
(" #
DbContextOptions# 3
<3 4
UserDatabaseContext4 G
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
User 
> 
Users  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DbSet 
< 
UserRole 
> 
	UserRoles (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} î
AD:\GitLoanManage\LoanManagement\LoanApiService\Models\UserRole.cs
	namespace 	
LoanApiService
 
. 
Models 
{ 
public		 

class		 
UserRole		 
{

 
[ 	
Key	 
] 
public 
int 
RoleId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Å
9D:\GitLoanManage\LoanManagement\LoanApiService\Program.cs
	namespace 	
LoanApiService
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. 
ConfigureLogging 
( 
( 
hostingContext -
,- .
logging/ 6
)6 7
=>8 :
{ 
logging 
. 
AddConfiguration (
(( )
hostingContext) 7
.7 8
Configuration8 E
.E F

GetSectionF P
(P Q
$strQ Z
)Z [
)[ \
;\ ]
logging 
. 
AddDebug  
(  !
)! "
;" #
logging 
. 
AddNLog 
(  
)  !
;! "
} 
) 
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
}   
}!! Û
ID:\GitLoanManage\LoanManagement\LoanApiService\Repository\IUserService.cs
	namespace 	
LoanApiService
 
. 

Repository #
{		 
public

 

	interface

 
IUserService

 !
{ 
Models 
. 
User 
AuthenticateUser $
($ %
User% )
userathenticate* 9
)9 :
;: ;
string  
GenerateJSONWebToken #
(# $
User$ (
	usertoken) 2
)2 3
;3 4
} 
} Ä3
ID:\GitLoanManage\LoanManagement\LoanApiService\Repository\UserService .cs
	namespace 	
LoanApiService
 
. 

Repository #
{ 
public 

class 
UserService 
: 
IUserService )
{ 
private 
readonly 
UserDatabaseContext ,

_dbcontext- 7
;7 8
private 
IConfiguration 
_config &
;& '
public 
UserService 
( 
UserDatabaseContext .
context/ 6
,6 7
IConfiguration8 F
configG M
)M N
{ 	

_dbcontext 
= 
context  
;  !
_config 
= 
config 
; 
} 	
public 
User 
AuthenticateUser $
($ %
User% )
userathenticate* 9
)9 :
{ 	
var 
userinfo 
= 
new 
Models %
.% &
User& *
(* +
)+ ,
;, -
var 
userRole 
= 
new 
Models %
.% &
UserRole& .
(. /
)/ 0
;0 1
var 
userInfo 
= 
( 
from  
user! %
in& (

_dbcontext) 3
.3 4
Users4 9
join  
userrole! )
in* ,

_dbcontext- 7
.7 8
	UserRoles8 A
on 
user #
.# $
UserRole$ ,
., -
RoleId- 3
equals4 :
userrole; C
.C D
RoleIdD J
where !
(" #
user# '
.' (
Email( -
==. 0
userathenticate1 @
.@ A
EmailA F
&&G I
userJ N
.N O
PasswordO W
==X Z
userathenticate[ j
.j k
Passwordk s
)s t
select   "
new  # &
{!! 
user""  $
.""$ %
ID""% '
,""' (
user##  $
.##$ %
Email##% *
,##* +
user$$  $
.$$$ %
UserRole$$% -
.$$- .
RoleId$$. 4
,$$4 5
user%%  $
.%%$ %
UserName%%% -
,%%- .
userrole&&  (
.&&( )
RoleName&&) 1
}'' 
)'' 
.'' 
FirstOrDefault'' -
(''- .
)''. /
;''/ 0
if(( 
((( 
userInfo(( 
!=(( 
null((  
)((  !
{)) 
userinfo** 
.** 
ID** 
=** 
userInfo** &
.**& '
ID**' )
;**) *
userinfo++ 
.++ 
UserName++ !
=++" #
userInfo++$ ,
.++, -
UserName++- 5
;++5 6
userRole,, 
.,, 
RoleName,, !
=,," #
userInfo,,$ ,
.,,, -
RoleName,,- 5
;,,5 6
userinfo-- 
.-- 
Email-- 
=--  
userInfo--! )
.--) *
Email--* /
;--/ 0
userinfo.. 
... 
UserRole.. !
=.." #
userRole..$ ,
;.., -
}// 
if44 
(44 
userinfo44 
==44 
null44  
)44  !
return55 
null55 
;55 
return77 
userinfo77 
;77 
}88 	
public:: 
string::  
GenerateJSONWebToken:: *
(::* +
User::+ /
	usertoken::0 9
)::9 :
{;; 	
var<< 
securityKey<< 
=<< 
new<< ! 
SymmetricSecurityKey<<" 6
(<<6 7
System<<7 =
.<<= >
Text<<> B
.<<B C
Encoding<<C K
.<<K L
UTF8<<L P
.<<P Q
GetBytes<<Q Y
(<<Y Z
_config<<Z a
[<<a b
$str<<b k
]<<k l
)<<l m
)<<m n
;<<n o
var== 
credentials== 
=== 
new== !
SigningCredentials==" 4
(==4 5
securityKey==5 @
,==@ A
SecurityAlgorithms==B T
.==T U

HmacSha256==U _
)==_ `
;==` a
var?? 
claims?? 
=?? 
new?? 
[?? 
]?? 
{??  
new@@ 
Claim@@ 
(@@ #
JwtRegisteredClaimNames@@ 1
.@@1 2
Sub@@2 5
,@@5 6
	usertoken@@7 @
.@@@ A
UserName@@A I
)@@I J
,@@J K
newAA 
ClaimAA 
(AA #
JwtRegisteredClaimNamesAA 1
.AA1 2
EmailAA2 7
,AA7 8
	usertokenAA9 B
.AAB C
EmailAAC H
)AAH I
,AAI J
newBB 
ClaimBB 
(BB #
JwtRegisteredClaimNamesBB 1
.BB1 2
JtiBB2 5
,BB5 6
GuidBB7 ;
.BB; <
NewGuidBB< C
(BBC D
)BBD E
.BBE F
ToStringBBF N
(BBN O
)BBO P
)BBP Q
,BBQ R
newCC 
ClaimCC 
(CC 

ClaimTypesCC $
.CC$ %
RoleCC% )
,CC) *
	usertokenCC* 3
.CC3 4
UserRoleCC4 <
.CC< =
RoleNameCC= E
)CCE F
}DD 
;DD 
varEE 
tokenEE 
=EE 
newEE 
JwtSecurityTokenEE ,
(EE, -
_configEE- 4
[EE4 5
$strEE5 A
]EEA B
,EEB C
_configFF 
[FF 
$strFF  
]FF  !
,FF! "
claimsGG 
,GG 
expiresHH 
:HH 
DateTimeHH 
.HH 
NowHH !
.HH! "

AddMinutesHH" ,
(HH, -
$numHH- 0
)HH0 1
,HH1 2
signingCredentialsII 
:II 
credentialsII  +
)II+ ,
;II, -
returnKK 
newKK #
JwtSecurityTokenHandlerKK .
(KK. /
)KK/ 0
.KK0 1

WriteTokenKK1 ;
(KK; <
tokenKK< A
)KKA B
;KKB C
}LL 	
}MM 
}NN þ2
9D:\GitLoanManage\LoanManagement\LoanApiService\Startup.cs
	namespace 	
LoanApiService
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration   
=   
configuration   )
;  ) *
}!! 	
public## 
IConfiguration## 
Configuration## +
{##, -
get##. 1
;##1 2
}##3 4
public'' 
void'' 
ConfigureServices'' %
(''% &
IServiceCollection''& 8
services''9 A
)''A B
{(( 	
services)) 
.)) 
AddDbContext)) !
<))! "
UserDatabaseContext))" 5
>))5 6
())6 7
options))7 >
=>))? A
{))B C
options** 
.** 
UseSqlServer** $
(**$ %
Configuration**% 2
.**2 3
GetConnectionString**3 F
(**F G
$str**G Z
)**Z [
)**[ \
;**\ ]
}++ 
)++ 
;++ 
services-- 
.-- 
AddControllers-- #
(--# $
)--$ %
;--% &
services// 
.// 
AddAuthentication// &
(//& '
JwtBearerDefaults//' 8
.//8 9 
AuthenticationScheme//9 M
)//M N
.00 
AddJwtBearer00 
(00 
options00 
=>00 
{11 
options22 
.22 %
TokenValidationParameters22 )
=22* +
new22, /%
TokenValidationParameters220 I
{33 	
ValidateIssuer44 
=44 
true44 !
,44! "
ValidateAudience55 
=55 
true55 #
,55# $
ValidateLifetime66 
=66 
true66 #
,66# $$
ValidateIssuerSigningKey77 $
=77% &
true77' +
,77+ ,
ValidIssuer88 
=88 
Configuration88 '
[88' (
$str88( 4
]884 5
,885 6
ValidAudience99 
=99 
Configuration99 )
[99) *
$str99* 6
]996 7
,997 8
IssuerSigningKey:: 
=:: 
new:: " 
SymmetricSecurityKey::# 7
(::7 8
Encoding::8 @
.::@ A
UTF8::A E
.::E F
GetBytes::F N
(::N O
Configuration::O \
[::\ ]
$str::] f
]::f g
)::g h
)::h i
};; 	
;;;	 

}<< 
)<< 
;<< 
services>> 
.>> 
AddApiVersioning>> %
(>>% &
x>>& '
=>>>( *
{?? 
x@@ 
.@@ 
DefaultApiVersion@@ #
=@@$ %
new@@& )

ApiVersion@@* 4
(@@4 5
$num@@5 6
,@@6 7
$num@@8 9
)@@9 :
;@@: ;
xAA 
.AA /
#AssumeDefaultVersionWhenUnspecifiedAA 5
=AA6 7
trueAA8 <
;AA< =
xBB 
.BB 
ReportApiVersionsBB #
=BB$ %
trueBB& *
;BB* +
}CC 
)CC 
;CC 
servicesEE 
.EE 
AddSwaggerGenEE "
(EE" #
cEE# $
=>EE% '
{FF 
cGG 
.GG 

SwaggerDocGG 
(GG 
$strGG !
,GG! "
newGG# &
OpenApiInfoGG' 2
{HH 
VersionII 
=II 
$strII "
,II" #
TitleJJ 
=JJ 
$strJJ -
,JJ- .
DescriptionKK 
=KK  !
$strKK" 8
,KK8 9
}MM 
)MM 
;MM 
}NN 
)NN 
;NN 
servicesOO 
.OO 
AddCorsOO 
(OO 
)OO 
;OO 
servicesPP 
.PP 
	AddScopedPP 
<PP 
IUserServicePP +
,PP+ ,
UserServicePP- 8
>PP8 9
(PP9 :
)PP: ;
;PP; <
servicesQQ 
.QQ 
AddSingletonQQ !
<QQ! "
ILoggerManagerQQ" 0
,QQ0 1
LoggerManagerQQ2 ?
>QQ? @
(QQ@ A
)QQA B
;QQB C
servicesTT 
.TT 
AddSwaggerGenTT "
(TT" #
)TT# $
;TT$ %
}UU 	
publicXX 
voidXX 
	ConfigureXX 
(XX 
IApplicationBuilderXX 1
appXX2 5
,XX5 6
IWebHostEnvironmentXX7 J
envXXK N
)XXN O
{YY 	
ifZZ 
(ZZ 
envZZ 
.ZZ 
IsDevelopmentZZ !
(ZZ! "
)ZZ" #
)ZZ# $
{[[ 
app\\ 
.\\ %
UseDeveloperExceptionPage\\ -
(\\- .
)\\. /
;\\/ 0
}]] 
app__ 
.__ 
UseHttpsRedirection__ #
(__# $
)__$ %
;__% &
appaa 
.aa 

UseSwaggeraa 
(aa 
)aa 
;aa 
appee 
.ee 
UseSwaggerUIee 
(ee 
cee 
=>ee !
{ff 
cgg 
.gg 
SwaggerEndpointgg !
(gg! "
$strgg" <
,gg< =
$strgg> B
)ggB C
;ggC D
}hh 
)hh 
;hh 
appii 
.ii 

UseRoutingii 
(ii 
)ii 
;ii 
appkk 
.kk 
UseAuthorizationkk  
(kk  !
)kk! "
;kk" #
appmm 
.mm 
UseCorsmm 
(mm 
optionsmm 
=>mm  "
optionsnn 
.nn 	
AllowAnyOriginnn	 
(nn 
)nn 
.oo 
AllowAnyMethodoo 
(oo 
)oo 
.pp 
AllowAnyHeaderpp 
(pp 
)pp 
)pp 
;pp 
apprr 
.rr 
UseEndpointsrr 
(rr 
	endpointsrr &
=>rr' )
{ss 
	endpointstt 
.tt 
MapControllerstt (
(tt( )
)tt) *
;tt* +
}uu 
)uu 
;uu 
}vv 	
}ww 
}xx 