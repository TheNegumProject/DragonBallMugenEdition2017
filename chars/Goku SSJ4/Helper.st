;================================
;Goku Type-Z
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;-Stateno 8000-8999

;=============================================================
;---------------------------------------------------------------------------
; Format:
;[Statedef ?]
;type            = 
;movetype        = 
;physics         = 
;anim            = 
;velset          = 0,0,0
;ctrl            = 0
;poweradd        = 0
;juggle          = 0
;facep2          = 0
;hitdefpersist   = 0
;movehitpersist  = 0
;hitcountpersist = 0
;sprpriority     = 0
;---------------

;[State 0:     VelSet]
;type            = VelSet
;trigger1        = (!Time)
;x		        = 0
;y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


;---------------

;---------------
;[State 0:     ChangeState]
;type            = ChangeState
;trigger1        = (!AnimTime)
;value           = 0
;ctrl		    = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Ki Shot Helper
[Statedef 8000]
type            = S
movetype        = A
physics         = S
anim            = 8002
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 13
y               = 0

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8010
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0

[State 0: Dust]
type            = MakeDust
trigger1        = (1)
pos             = 20,57
;pos2           = 0,0
spacing         = 2

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
trigger1        = (1)
attr            = S, NP
hitflag         = MAFP
guardflag       = MAFP
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 20, 5
pausetime       = 0, 0
guard.pausetime = 7, 15
sparkno         = S7005
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 7
ground.velocity = -3, 0
air.velocity    = -3, 0
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

;---------------

[State 0:    End]
type            = ChangeState
trigger1        = (movecontact) || ((frontedgedist <= -75) || (backedgedist <= -75))
value           = 8010

;---------------------------------------------------------------------------
; Ki Shot Destroy
[Statedef 8010]
type            = S
movetype        = I
physics         = N
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------
;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)
;---------------------------------------------------------------------------
; Invisible Ki Helper
[Statedef 8015]
type            = S
movetype        = A
physics         = S
anim            = 8005
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 25
y               = 0

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8020
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
trigger1        = (1)
attr            = S, NP
hitflag         = MAFP
guardflag       = MAFP
animtype        = heavy
air.animtype    = heavy
priority        = 4, Hit
damage          = 80, 5
pausetime       = 2, 2
guard.pausetime = 7, 15
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 7
ground.velocity = -8, -5
air.velocity    = -8, -5
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

;---------------

[State 0:    End]
type            = ChangeState
trigger1        = (movecontact) || ((frontedgedist <= -75) || (backedgedist <= -75))
value           = 8020

;---------------------------------------------------------------------------
; Invisible Ki Destroy
[Statedef 8020]
type            = S
movetype        = I
physics         = N
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------
;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)
;---------------------------------------------------------------------------
; Push Effect
[Statedef 8030]
type            = S
movetype        = I
physics         = S
anim            = 8030
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 15
y		        = 0

[State 0:    PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (1)
time            = 1
value           = SCA

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


;---------------

;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (Time = 20)

;---------------------------------------------------------------------------
; Air Ki Shot Helper
[Statedef 8040]
type            = S
movetype        = A
physics         = S
anim            = 8011
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 10
y               = 10

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8050
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (movecontact = 1)
value           = 255,255,255
time            = 1
under           = 0

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
trigger1        = (1)
attr            = S, NP
hitflag         = MAFPD
guardflag       = MAFP
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 20, 5
pausetime       = 0, 0
guard.pausetime = 7, 15
sparkno         = S7005
guard.sparkno   = S7005
sparkxy         = 0, 0
hitsound        = S8000, 1
guardsound      = S8000, 1
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 7
ground.velocity = 0, 0
air.velocity    = -3, 0
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

;---------------

[State 0:    End]
type            = ChangeState
trigger1        = (movecontact) || ((frontedgedist <= -75) || (backedgedist <= -75))|| (pos y > 0)
value           = 8050

;---------------------------------------------------------------------------
; Air Ki Shot Destroy
[Statedef 8050]
type            = S
movetype        = I
physics         = N
anim            = 7005
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------
;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (animtime = 0)
;---------------------------------------------------------------------------
; Taioken Helper
[Statedef 8060]
type            = S
movetype        = A
physics         = S
anim            = 7051
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 0
y               = 0

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:     AssertSpecial] ;Cannot Guard
type 			= AssertSpecial
trigger1 		= (1)
flag 			= unguardable

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (time = 0)
value           = 255,255,255
time            = 1
under           = 0

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
trigger1        = (time = 0)
attr            = S, NP
hitflag         = MAFP
guardflag       = MAFP
animtype        = Light
air.animtype    = Light
priority        = 4, Hit
damage          = 5, 0
pausetime       = 0, 150
guard.pausetime = 0, 0
sparkno         = -1
guard.sparkno   = -1
sparkxy         = 0, 0
hitsound        = -1
guardsound      = -1
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 7
ground.velocity = 0, 0
air.velocity    = 0, 0
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 0, 0
givepower       = 20, 3
kill            = IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

;---------------

;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (animtime = 0)

;---------------------------------------------------------------------------
; K.Y.O. Ki punch helper
[Statedef 8065]
type            = S
movetype        = A
physics         = S
anim            = 8020
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (Time > 1)
x               = 0
y               = 0

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8066
attr            = SCA, NP, SP, HP
ignorehitpause  = 1

;---------------
;Sound
;---------------

[State 0:     KiSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 1050,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 25
framegap 		= 2
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100, 100, 100
trans 		    = add

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
trigger1        = (time = 0)
attr            = S, NP
hitflag         = MAFP
guardflag       = MAFP
animtype        = heavy
air.animtype    = heavy
priority        = 4, Hit
damage          = 70, 25
pausetime       = 0, 20
guard.pausetime = 0, 15
sparkno         = S7006
guard.sparkno   = S7006
sparkxy         = -10, 0
hitsound        = S1050, 1
guardsound      = S1050, 1
ground.slidetime    = 10
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 7
ground.velocity = -7, 0
air.velocity    = -7, 0
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
getpower        = 20, 0
givepower       = 20, 3
kill            = IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.time   = 10
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

;---------------

[State 0:    End]
type            = changestate
trigger1        = (!animtime) || (movecontact) && (!animtime)
value           = 8066

;---------------------------------------------------------------------------
; K.Y.O. Ki punch destroy
[Statedef 8066]
type            = S
movetype        = I
physics         = N
anim            = 90
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 0
;---------------

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

;---------------
;---------------
[State 0:    DestroySelf]
type            = DestroySelf
trigger1        = (!Time)
;---------------------------------------------------------------------------
;Rock
[Statedef 8200]
type 			= S
movetype		= I
physics		    = N
anim			= 8200
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 0:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 0)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			    = 0
range			= -200,200

[State 0:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		    = (Parent, StateNo)

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			    = var(0)
y			    = 0

[State 0:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			    = (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			    = (IfElse(Random <= 499,-.5,-1))

[State 0:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			    = .5

[State 0:	PlaySnd]
type			= PlaySnd
trigger1		= (!Time) && (Const(Size.XScale) <= 1)
value			= S0,3

[State 0:	PlaySnd]
type			= PlaySnd
trigger1		= (!Time) && (Const(Size.XScale) > 1)
value			= S0,1

[State 0:	PlaySnd]
type			= PlaySnd
trigger1		= (Pos Y >= 1)
value			= S0,2

[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		    = 1
framegap 		= 2
length 		    = 10
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 110,110,110
trans 		    = add

[State 0:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)

;---------------------------------------------------------------------------
;Rock 1
[Statedef 8210]
type 			= S
movetype		= I
physics		    = N
anim			= 8210
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 0:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 0)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			    = 0
range			= -200,200

[State 0:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		    = (Parent, StateNo)

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			    = var(0)
y			    = 0

[State 0:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			    = (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			    = (IfElse(Random <= 499,-1.5,-2.5))

[State 0:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			    = .1

[State 0:	PlaySnd]
type			= PlaySnd
trigger1		= (!Time)
value			= S2,2

[State 0:	PlaySnd]
type			= PlaySnd
trigger1		= (Pos Y >= 1)
value			= S1,9

[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		    = 1
framegap 		= 2
length 		    = 10
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 110,110,110
trans 		    = add

[State 0:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)

;---------------------------------------------------------------------------
;Rock 2
[Statedef 8220]
type 			= S
movetype		= I
physics		    = N
anim			= 8220
;velset		    = 0,0
ctrl			= 0
poweradd		= 0
juggle		    = 0
facep2		    = 0
hitdefpersist	= 0
movehitpersist	= 0
hitcountpersist	= 0
sprpriority		= 0

[State 0:	SprPriority]
type			= SprPriority
trigger1		= (!Time)
value			= (IfElse(Random <= 499,3,-3))

[State Spinning the Rocks]
type        = VelAdd
trigger1    = (vel y < 0)
x           = ifelse(parentdist x<=0,-3,3)
y           = ifelse(random>500,-0.05,ifelse(random>500,-0.04,ifelse(random>500,-0.03,-0.02)))

[State 0:	VarRandom]
type			= VarRandom
trigger1		= (!Time)
v			= 0
range			= -200,200

[State 0:	VarSet]
type			= VarSet
trigger1		= (!Time)
var(1)		= (Parent, StateNo)

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
x			= var(0)
y			= 0

[State 0:	PosSet]
type			= PosSet
trigger1		= (!Time)
y			= 0

[State 0:	VelSet]
type			= VelSet
trigger1		= (Time = 1)
x			= (IfElse(Random <= 799,0,IfElse((Random = [800,900]),-0.2,0.2)))
y			= (IfElse(Random <= 499,-2,-3))

[State 0:	VelAdd]
type			= VelAdd
trigger1		= (Parent, StateNo != Var(1))
y			= .1

[State 0:	PlaySnd]
type			= PlaySnd
trigger1		= (!Time)
value			= S2,2

[State 0:	PlaySnd]
type			= PlaySnd
trigger1		= (Pos Y >= 1)
value			= S1,9

[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 15
timegap		= 1
framegap 		= 2
length 		= 10
paladd 		= 0, 0, 0
palmul 		= .50, .50, .50
palcontrast 	= 110,110,110
trans 		= add

[State 0:	DestroySelf]
type			= DestroySelf
trigger1		= (Pos Y < -210) || (Pos Y >= 1) || (!AnimTime)
;----------------------------------------------------------------------------------------------------------------
;-Kamehameha stage 1 Beam
[Statedef 8100]
type            = S
movetype        = A
physics         = S
anim            = 6007
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (!Time)
x               = 0
y               = 0

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8010
attr            = SCA, NP, SP, HP
ignorehitpause  = 1


;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 20
timegap		    = 2
framegap 		= 3
length 		    = 8
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100,100,100
trans 		    = add

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
facing          = 0
pos             = 30, -58
;ignorehitpause = 0
;persistent = 1

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
trigger1        = (!Time)
attr 			= S, SP
hitflag 		= MAF
guardflag 		= MA
animtype 		= Hard
air.animtype 	= Hard
fall.animtype 	= Back
priority 		= 4,Hit
damage 		    = 200,85
pausetime 		= 0,5
guard.pausetime =  0,10
sparkno 		= S7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S3200 ,2
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  0
ground.slidetime    = 25
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -15, -4
air.velocity    = -15, -4
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 0
givepower       = 50, 10
envshake.time   = 10
envshake.freq   = 80
envshake.ampl   = -3
envshake.phase  = 2

;---------------

;---------------

[State 0:    End]
type            = DestroySelf
trigger1        = (!Animtime)

;---------------------------------------------------------------------------
;Kamehameha Ring waves
[Statedef 8101]
type            = S
movetype        = I
physics         = N
anim            = 6003
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
pos		        = -20,-45

[State 0:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 9999999
framegap 		= 4
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .60, .60, .60
palcontrast 	= 100, 100, 100
trans 		    = add


[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= (Time=ifelse(parent,stateno=3000,-1,51))
trigger2 		= (parent,stateno=3001)
trigger3 		= (parent,movetype=H)
;---------------------------------------------------------------------------
;Kamehameha Ball
[Statedef 8102]
type            = S
movetype        = I
physics         = N
anim            = 6001
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
pos		        = -20,-45

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 9999999
framegap 		= 4
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .20, .20, .20
palcontrast 	= 100, 100, 100
trans 		    = add


[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= (Time=ifelse(parent,stateno=3000,-1,51))
trigger2 		= (parent,stateno=3001)
trigger3 		= (parent,movetype=H)

;----------------------------------------------------------------------------------------------------------------
;-Chou Kamehameha Beam
[Statedef 8103]
type            = S
movetype        = A
physics         = S
anim            = 6009
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:    Velset]
type            = VelSet
trigger1        = (!Time)
x               = 0
y               = 0

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

[State 0:    NotHitBy]
type            = NotHitBy
trigger1        = (Time > 0)
time            = 1
value           = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause  = 1

[State 0:    HitBy]
type            = HitBy
trigger1        = (Time > 0)
value           = SCA, NP, SP, HP
time            = 1
ignorehitpause  = 1

[State 0:    HitOverride]
type            = HitOverride
trigger1        = (Time > 0)
slot            = 1
time            = 1
stateno         = 8010
attr            = SCA, NP, SP, HP
ignorehitpause  = 1


;---------------
;Sound
;---------------

;---------------
;Effects
;---------------

[State 0:	AfterImage]
type			= AfterImage
trigger1 		= (!Time)
time 			= 20
timegap		    = 2
framegap 		= 3
length 		    = 8
paladd 		    = 0, 0, 0
palmul 		    = .50, .50, .50
palcontrast 	= 100,100,100
trans 		    = add

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
facing          = 0
pos             = 30, -58
;ignorehitpause = 0
;persistent = 1

;---------------
;Hit Details
;---------------

[State 0: 	HitDef]
type            = HitDef
trigger1        = (!Time)
attr 			= S, SP
hitflag 		= MAF
guardflag 		= MA
animtype 		= Hard
air.animtype 	= Hard
fall.animtype 	= Back
priority 		= 4,Hit
damage 		    = 400,185
pausetime 		= 0,5
guard.pausetime =  0,10
sparkno 		= S7006
guard.sparkno 	= S7006
sparkxy 		= 0, 0
hitsound 		= S3200 ,2
guardsound 		= S3200 ,2
ground.type 	= High
air.type 		= High
ground.slidetime =  0
ground.slidetime    = 25
ground.hittime  = 25
guard.hittime   = 25
air.hittime     = 25
ground.velocity = -15, -4
air.velocity    = -15, -4
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = -7, 1
down.hittime    = 0
down.bounce     = 1
ID              = 8000
chainID         = -1
numhits         = 1
kill            = IfElse(parent,Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 30, 0
givepower       = 50, 10
envshake.time   = 10
envshake.freq   = 80
envshake.ampl   = -3
envshake.phase  = 2

;---------------

;---------------

[State 0:    End]
type            = DestroySelf
trigger1        = (!Animtime)

;---------------------------------------------------------------------------
;Kamehameha Ring waves
[Statedef 8104]
type            = S
movetype        = I
physics         = N
anim            = 6004
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
pos		        = -20,-45

[State 0:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 9999999
framegap 		= 4
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .60, .60, .60
palcontrast 	= 100, 100, 100
trans 		    = add


[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= (Time=ifelse(parent,stateno=3002,-1,51))
trigger2 		= (parent,stateno=3003)
trigger3 		= (parent,movetype=H)
;---------------------------------------------------------------------------
;Kamehameha Ball
[Statedef 8105]
type            = S
movetype        = I
physics         = N
anim            = 6002
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 5
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 0, ]
type            = BindToParent
trigger1        = time = 0
time            = -1
pos		        = -20,-45

[State 0:    No Shadow]
Type        = AssertSpecial
Trigger1    = 1
Flag        = NoShadow

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


[State 0: 	AfterImage]
type 			= AfterImage
trigger1 		= (!Time)
time 			= 9999999
framegap 		= 4
length 		    = 20
paladd 		    = 0, 0, 0
palmul 		    = .20, .20, .20
palcontrast 	= 100, 100, 100
trans 		    = add


[State 0:        DestroySelf]
type 			= DestroySelf
trigger1 		= (Time=ifelse(parent,stateno=3002,-1,51))
trigger2 		= (parent,stateno=3003)
trigger3 		= (parent,movetype=H)

;---------------------------------------------------------------------------
