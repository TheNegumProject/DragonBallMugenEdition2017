;================================
;Vegeta Type-R
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

; 		Finisher State file

;=========================== NO MERCY ===============================

; HELPER CALL
[Statedef 9000]
type                = S
movetype            = I
physics             = S
juggle              = 4
ctrl                = 1
velset              = 0,0,0

; NO MERCY Helper
[State 9000, 1]
type                = Helper
trigger1            = 1
trigger1            = NumHelper(9010) = 0
ID                  = 9010
pos                 = 160, -140
postype             = left
stateno             = 9010
helpertype          = normal
name                = "NO MERCY!!"
keyctrl             = 0
ownpal              = 1

; Back to stand position
[State 9000, 2]
type                = ChangeState
trigger1            = AnimTime = 0
value               = 0 
ctrl                = 1

;---------------------------------------------------------------------------

[Statedef 9001]
type                = S
physics             = S
sprpriority         = 4

[State 9001, 1]
type                = ChangeAnim
triggerall          = prevstateno != 10001
trigger1            = Anim != 0 && Anim != 5
trigger2            = Anim = 5 && AnimTime = 0 ;Turn anim over
value               = 0
persistent          = 0

[State 9001, 3] ;Stop moving if low velocity or 4 ticks pass
type                = VelSet
trigger1            = Abs(Vel x) < 2
trigger2            = Time = 4
x               = 0
y               = 0

;---------------------------------------------------------------------------
; Helper: NO MERCY!! (invisible)
[Statedef 9010]
type                = S
movetype            = A
physics             = S
anim                = 9010
velset              = 0,0
ctrl                = 1

[State 0, AssertSpecial]
type            = AssertSpecial
trigger1        = (1)
flag            = invisible

; Hitting the whole screen
[State 9010, 1]
type                = HitDef
trigger1            = AnimElem = 1
trigger1            = P2StateType != A
attr                = S, SP
damage              = 0,0
animtype            = Heavy
getpower            = 10
givepower           = 25
hitflag             = MF
guardflag           = A 
priority            = 7
pausetime           = 0,2
sparkxy             = 0,0
sparkno             = -1
guard.sparkno       = -1
hitsound            = -1
guardsound          = -1
ground.type         = High
ground.slidetime    = 0
ground.hittime      = 0
ground.velocity     = 0
air.velocity        = 0
air.fall            = 1
fall                = 0
p2stateno           = 987123
numhits             = 0

[State 9010, DestroySelf]
type                = DestroySelf
trigger1            = time > 999
;ignorehitpause = 0
;persistent = 1
;---------------------------------------------------------------------------
; Helper: NO MERCY!! (message)
[Statedef 9011]
type                = S
movetype            = A
physics             = S
anim                = 99999
velset              = 0,0
ctrl                = 1

[State 9011, 1]
type                = VarSet
trigger1            =(fvar(0)>1)
fvar(0)             = 1

[State 9011, 2]
type                = VarAdd
trigger1            =(fvar(0)<1)&&(time<=100)
fvar(0)             = 0.05

[State 9011, 3]
type                = VarAdd
trigger1            =(fvar(0)>0)&&(time>100)
fvar(0)             =-0.05

[State 9011, 4]
type                = DisplayToClipboard
trigger1            = (1)
text                = "fvar(0)=%f"
params              = fvar(0)
ignorehitpause      = 1

[State 9011, 5]
type                = PlaySnd
trigger1            = (Time=0)
value               = 9010,0
volume              = 255
channel             = 4
ignorehitpause      = 1

[State 9011, 6]
type                = Explod
trigger1            =(1)
anim                = 9011
ID                  = 9011
pos                 = 160,90
postype             =left
bindtime            =-1
removetime          = 1
supermovetime       = 9999999999
pausemovetime       = 9999999999
sprpriority         = 999
scale               = fvar(0),fvar(0)
ontop               = 1
ownpal              = 1
ignorehitpause      = 1

[State 9011, 7]
type                = DestroySelf
trigger1            = P2Life <=0

;--------------------
; CUSTOM STATES
;--------------------
; Dizzy
[Statedef 987123]
type                = S
movetype            = H
physics             = S
juggle              = 2
ctrl                = 0
velset              = 0,0

[State 987123, 1]
type                = LifeSet
trigger1            = 1
value               = 1

[State 987123, 1]
type                = TargetLifeAdd
trigger1            = P2life <= 1
value               = 1

[State 987123, 1]
type                = LifeSet
trigger1            = P2StateNo != [10000,10100]
trigger1            = Time = 400
value               = 0

[State 987123, 1]
type                = SelfState
trigger1            = P2StateNo != [10000,10100] 
trigger1            = Time = 400
value               = 5050
ctrl                = 0

[State 987123, 1]
type                = ChangeState
trigger1            = P2StateNo = [10000,10100]
value               = 987124
ctrl                = 0

[State 987123, 2]
type                = ChangeAnim 
trigger1            = AnimExist(5300)
trigger1            = Anim!=5300
value               = 5300
persistent          = 0

[Statedef 987124]
type                = S
movetype            = H
physics             = S
juggle              = 2
ctrl                = 0
velset              = 0,0,0

[State 987124, 2]
type                = ChangeAnim 
trigger1            = AnimExist(5300)
trigger1            = Anim != 5300
value               = 5300
persistent          = 0

;---------------------------------------------------------------------------
;Kamehameha Start
[Statedef 10000]
type                = S
movetype            = A
physics             = S
juggle              = 0
velset              = 0,0
ctrl                = 0
anim                = 0
poweradd            = 20
sprpriority         = 2

[State 0, AssertSpecial]
type                = AssertSpecial
trigger1            = 1
flag                = nokosnd
flag2               = nokoslow
flag3               = nomusic

[State 0, AssertSpecial]
type                = AssertSpecial
trigger1            = 1
flag                = timerfreeze
flag2               = nobardisplay

;Fatality Start
[State 0, PlaySnd]
type                = PlaySnd
trigger1            = time = 0
value               = 10000,0
volume              = 255
loop                = 1
channel             = 20

[State 0, ChangeState]
type                = ChangeState
trigger1            = time = 120
value               = 10002

;----------------------------------------------------------------------------
;kamehameha 2
[Statedef 10002]
type                = S
movetype            = A
physics             = S
anim                = 10005
juggle              = 0
velset              = 0,0
ctrl                = 0
poweradd            = 20
sprpriority         = 2

[State 10002, AssertSpecial]
type                = AssertSpecial
trigger1            = 1
flag                = nomusic
flag2               = nobardisplay
flag3               = nokoslow

[State 10002:     BGPalFX]
type            = BGPalFX
trigger1        = (time>23);(1)
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 10002:     Screen Flash]
type            = EnvColor
trigger1        = (Time = 20)
value           = 255,255,255
time            = 5
under           = 0

[State 10002:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 20) && ((GameTime%70) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 10002:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 70
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;---------------
;Sound
;---------------
[State 10002, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 60 ,4
volume          = 255
channel         = 6

[State 10002:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 20)
value           = 700, 0
volume		    = 255
channel	        = 7
lowpriority	    = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 10002:     PlaySND]
type            = PlaySnd
trigger1        = (TimeMod = 24, 0)
value           = 700, 1
volume		    = 255
channel	        = 8
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 10002, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 0 ,4
volume          = 255
channel         = 9

[State 10002, ]
type            = PlaySnd
trigger1        = (animelem = 4)
value           = 10000 ,1
volume          = 255
channel         = 10

[State 10002, ]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 10000 ,2
volume          = 255
channel         = 12

[State 10002, Aura colours]
type            = PalFX
trigger1        = animelem = 2
time            = 690
add             = -102,1,-10
mul             = 458,206,256
sinadd          = 0,0,0,1
invertall       = 0
color           = 256
;ignorehitpause = 0
;persistent     = 1

[State 10002:    Dust Right]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = -20,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 10002:    Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 20,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 10002:     Aura]
type            = Explod
trigger1        = (Time = 20)
anim            = 7036
ID              = 17036
pos             = 6,-5
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = -1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = 0
pausemovetime   = 0
scale           = .8, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 10002:    Explod] ;Ring Thingy
type 			= Explod
trigger1 		= (Time = 20)
anim 			= 7020
ID 			    = 7020
pos 			= 10,-35
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove 		= -1
pausemovetime 	= -1
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

[State 10002:    Energy Bring in]
type            = Explod
trigger1        = (animelem = 4)
anim            = 9067
ID              = 9067
pos             = -15,-43
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1.5, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 10002:    GroundWaves]
type            = Explod
trigger1        = (animelem = 2)
trigger2        = (TimeMod = 50,0)
anim            = 7025
ID              = 705
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 10002:    Helper] ;Charging Ball
type 			= Helper
trigger1 		= (animelem = 4)
helpertype 		= normal
name 			= "Charging Ball"
ID 			    = 8046
pos             = -14,-45
postype 		= p1
stateno 		= 8046
keyctrl 		= 0
ownpal 		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale     = .1
size.yscale     = .1

[State 10003:    Charging Ball- Before firing]
type            = null;Explod
trigger1        = (time = 160)
anim            = 10002
ID              = 10002
pos 			= -14,-45
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = .24, .24
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 10003:    Electricity]
type            = Explod
trigger1        = (animelem = 4)
anim            = 7049
ID              = 7049
pos 			= -14,-45
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .8, .8
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 10002:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%10) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			= 8200
pos			= 0,0
postype		= p1
facing		= 0
stateno		= 8200
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 799,0.75,3))
size.yscale		= (IfElse(Random <= 799,0.75,3))

[State 10002:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			= 8210
pos			= 0,0
postype		= p1
facing		= 0
stateno		= 8210
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.75,0.50))
size.yscale		= (IfElse(Random <= 499,0.75,0.50))

[State 10002:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%30) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			= 8220
pos			= 0,0
postype		= p1
facing		= 0
stateno		= 8220
keyctrl		= 0
ownpal		= 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.50,0.75))
size.yscale		= (IfElse(Random <= 499,0.50,0.75))

[State 10002, ]
type            = RemoveExplod
trigger1        = animtime = 0
ID              = 7049
;ignorehitpause = 0
;persistent = 1

[State 10002, ChangeState]
type                = ChangeState
trigger1            = animtime = 0
value               = 10003
;---------------------------------------------------------------------------
; Kamehameha Fire
[Statedef 10003]
type            = S
movetype        = A
physics         = S
anim            = 10003
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = -1
;---------------

[State 10003:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 10003, AssertSpecial]
type                = AssertSpecial
trigger1            = 1
flag                = nomusic
flag2               = nobardisplay
flag3               = nokoslow

[State 10003:     Screen Flash]
type            = EnvColor
trigger1        = (Time = 25)
value           = 255,255,255
time            = 5
under           = 0

[State 10002:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 70
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;---------------
;Sound
;---------------

[State 10003:     PlaySND]
type            = PlaySnd
trigger1        = (time < 300) && (timemod=24,0)
value           = 700, 1
volume		    = 255
channel	        = 4
freqmul	        = 1.0
loop		    = 1
pan		        = 0
abspan		    = 0

[State 10003, ]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 60 ,9
volume          = 255
channel         = 11

[State 10003, ]
type            = PlaySnd
trigger1        = (Time = 1)
value           = 10000 ,3
volume          = 255
channel         = 13

[State 10003:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 300)
value           = 700, 0
volume		    = 255
channel	        = 14
lowpriority	    = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 10003:     Screen Flash]
type            = EnvColor
trigger1        = (Time = 300)
value           = 255,255,255
time            = 5
under           = 0

;---------------
;Effects
;---------------
[State 10002:    Dust Right]
type            = Explod
trigger1        = (time = 25)
anim            = 7010
ID              = 7010
pos             = -20,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 10002:    Charging Ball- Before firing]
type            = Explod
trigger1        = (time = 0)
anim            = 7048
ID              = 7048
pos 			= 40,-45
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = -1
pausemovetime   = -1
scale           = .1, .1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 10002:    Explod] ;Ring Thingy
type 			= Explod
trigger1 		= time = 300
anim 			= 7020
ID 			    = 7020
pos 			= 10,-30
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove 		= -1
pausemovetime 	= -1
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

;KHH Blast
[State 10003, Helper]
type            = Helper
trigger1        = (Time = 21)
trigger1        = !IsHelper(10005)
helpertype      = normal
name            = "BLAST"
ID              = 10005
pos             = 25,-47
postype         = p1
facing          = 1
stateno         = 10005
keyctrl         = 0
ownpal          = 1

[State 10003, ]
type            = RemoveExplod
trigger1        = time = 300
ID              = 17036 
;ignorehitpause = 0
;persistent = 1

[State 10003, ]
type            = StopSnd
trigger1        = (time = 300)
channel         = 4

;---------------

;---------------

[State 10003, ScreenBound]
type            = ScreenBound
trigger1        = 1
value           = 0
movecamera      = ifelse(time <220,0,1),ifelse(time <220,0,1)
ignorehitpause  = 1
;persistent = 1


[State 10003: ]
type 			= RemoveExplod
trigger1        = (time= 21)
ID 			    = 7048

[State 10003:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
;Kamehameha Blast
[Statedef 10005]
type            = S
movetype        = A
physics         = S
juggle          = 0
velset          = 0,0
ctrl            = 0
anim            = 10000
poweradd        = 20
sprpriority     = 7

[State 0, ]
type = AssertSpecial
trigger1 = 1
flag = Noshadow
ignorehitpause = 1

;Kamehameha Blast
[State 0, 0]
type            = HitDef
trigger1        = !movecontact
attr            = S, NA
damage          = 9999,9999
animtype        = Light
guardflag       = MA
hitflag         = MAF
priority        = 7,Hit
pausetime       = 0,0
sparkno         = -1
sparkxy         = 0, 0
hitsound        = S-1,0
guardsound      = -1,-1
ground.type     = Low
ground.slidetime = 0
ground.hittime  = 0
ground.velocity = 0
airguard.velocity = 0,0
air.type        = High
air.velocity    = 0,0
air.hittime     = 0
p2stateno       = 10010

[State 0, DestroySelf]
type            = DestroySelf
trigger1        = (animtime = 0)
;ignorehitpause = 0
;persistent     = 1

;---------------------------------------------------------------------------
[Statedef 10010]
type            = S
movetype        = I
physics         = N
anim            = 5050
velset          = -3.5,0
sprpriority     = 10
facep2          = 1 

[State 0, AssertSpecial]
type            = AssertSpecial
trigger1        = 1
flag            = Noshadow

[State 0, ScreenBound]
type            = ScreenBound
trigger1        = 1
value           = 0
movecamera      = 1,1
ignorehitpause  = 1

[State 0, ]
type            = PalFX
trigger1        = 1
time            = 1
add             = ((time)*2),((time)*2),((time)*2)
ignorehitpause  = 1

[State 0, AssertSpecial]
type            = AssertSpecial
trigger1        = time>= 128
flag            = invisible

[State 0, PosSet]
type            = PosSet
trigger1        = time = 128
y               = 99999999

[State 0, LifeSet]
type            = LifeSet
trigger1        = time = 128
value           = 0

[State 0, ]
type            = VelSet
trigger1        = BackEdgeBodyDist < 0
x               = 0

[State 0, SelfState]
type            = SelfState
trigger1        = time = 128
value           = 5150
;ctrl           = 1
;anim           = 
;ignorehitpause = 0
;persistent     = 1

;----------------------------------------------------------------------------
