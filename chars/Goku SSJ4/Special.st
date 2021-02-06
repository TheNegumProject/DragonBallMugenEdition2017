;================================
;Goku Type-Z
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;-Stateno 1000-1999

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
;sprpriority     = 2
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
; Rising Knee
[Statedef 1000]
type            = A
movetype        = A
physics         = S
anim            = 1007
;velset          = 0,0,0
ctrl            = 0
poweradd        = 60
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 7
y		        = -8

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 9000,0
channel         = 5

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,1,3))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = .6, .6
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 4,Hit
damage          = 100, 35
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -4
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -1, -8
air.velocity    = -1, -8
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 0

;---------------------------------------------------------------------------
; Rising Knee 2
[Statedef 1002]
type            = A
movetype        = A
physics         = S
anim            = 212
;velset          = 0,0,0
ctrl            = 0
poweradd        = 80
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 9
y		        = -8

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 9000,0
channel         = 5

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,1,3))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = -10,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 4,Hit
damage          = 50, 20
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -4
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -1, -12
air.velocity    = -1, -12
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

;---------------------------------------------------------------------------
; Cartwheel Kick
[Statedef 1005]
type            = S
movetype        = A
physics         = S
anim            = 1005
;velset          = 0,0,0
ctrl            = 0
poweradd        = 80
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 4
y		        = -4

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
x		        = 6

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
x		        = 5

[State 0, ]
type            = Gravity
trigger1        = (animelem = 4)
ignorehitpause = 0
persistent = 1

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

[State 0, ]
type            = StateTypeSet
trigger1        = animelem = 2
statetype       = A
physics         = A
;ignorehitpause = 0
;persistent = 1

;---------------
;Effects/Sound
;---------------

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (time = 0)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,0,2))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = high
priority        = 4,Hit
damage          = 30, 5
pausetime       = 10, 10
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -12
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
air.cornerpush.veloff = -12
ground.velocity = -2
air.velocity    = -2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = high
priority        = 4,Hit
damage          = 30, 5
pausetime       = 10, 10
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -25
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -18
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
air.cornerpush.veloff = -18
ground.velocity = -2
air.velocity    = -2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 4,Hit
damage          = 30, 5
pausetime       = 10, 10
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -35
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -25
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
air.cornerpush.veloff = -25
ground.velocity = -2, -5
air.velocity    = -3, -7
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

;---------------
[State 0, ]
type                = ChangeState
trigger1            = animtime = 0
value               = 50
ctrl                = 1

;---------------------------------------------------------------------------
; Cartwheel Kick 2
[Statedef 1006]
type            = S
movetype        = A
physics         = S
anim            = 1006
;velset          = 0,0,0
ctrl            = 0
poweradd        = 120
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 6
y		        = -5

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
x		        = 7

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 4)
x		        = 7

[State 0, ]
type            = Gravity
trigger1        = (animelem = 4)
ignorehitpause  = 0
persistent     = 1

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

[State 0, ]
type            = StateTypeSet
trigger1        = animelem = 2
statetype       = A
physics         = A
;ignorehitpause = 0
;persistent = 1

;---------------
;Effects/Sound
;---------------

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (time = 0)
value           = 200,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,1,3))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = high
priority        = 4,Hit
damage          = 40, 5
pausetime       = 10, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -65
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -12
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
air.cornerpush.veloff = -12
ground.velocity = -2
air.velocity    = -2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = high
priority        = 4,Hit
damage          = 40, 5
pausetime       = 10, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -25
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -20
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
air.cornerpush.veloff = -20
ground.velocity = -2
air.velocity    = -2
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 4)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 4,Hit
damage          = 40, 5
pausetime       = 10, 10
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -35
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.cornerpush.veloff = -27
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
air.cornerpush.veloff = -27
ground.velocity = -5, -6
air.velocity    = -5, -6
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;---------------

;---------------
[State 0, ]
type                = ChangeState
trigger1            = animtime = 0
value               = 50
ctrl                = 1

;---------------------------------------------------------------------------
; Dashing Elbow
[Statedef 1008]
type            = S
movetype        = A
physics         = S
anim            = 203
;velset          = 0,0,0
ctrl            = 0
poweradd        = 60
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 15
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 1
value           = 100,0
volume          = 250

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,1,3))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = .6, .6
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0, ]
type            = MakeDust
trigger1        = !animtime= 0
pos             = 0,0
spacing         = 2
ignorehitpause  = 0
persistent      = 1

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = low
priority        = 4,Hit
damage          = 100, 35
pausetime       = 10, 10
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -6,-4
air.velocity    = -6,-4
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Dashing Elbow 2
[Statedef 1009]
type            = S
movetype        = A
physics         = S
anim            = 203
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 20
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 201,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0, ]
type            = PlaySnd
trigger1        = animelem = 1
value           = 100,0
volume          = 250

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,1,3))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 0,0
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0, ]
type            = MakeDust
trigger1        = !animtime= 0
pos             = 0,0
spacing         = 2
ignorehitpause  = 0
persistent      = 1

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 4,Hit
damage          = 125, 35
pausetime       = 10, 10
guard.pausetime = 20, 10
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -30, -55
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 7
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -8,-4
air.velocity    = -8,-4
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 1
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Dashing Gut punch
[Statedef 1040]
type            = S
movetype        = A
physics         = S
anim            = 1040
;velset          = 0,0,0
ctrl            = 0
poweradd        = 200
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 10

[State 0:    PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 1

;---------------
;Sound
;---------------

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,1,3))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects/Hit Details
;---------------

[State 0, ]
type            = EnvShake
trigger1        = movecontact = 1
time            = 10
freq            = 60
ampl            = -4

[State 0:    HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = low
priority        = 4, Hit
damage          = 50, 5
pausetime       = 15, 20
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -35
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = 2
air.velocity    = 2
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 0
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 1041
ctrl		    = 1

;---------------------------------------------------------------------------
; Dashing Gut punch part 2
[Statedef 1041]
type            = S
movetype        = A
physics         = S
anim            = 1041
;velset          = 0,0,0
ctrl            = 0
poweradd        = 200
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 8

[State 0:    PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 1

;---------------
;Sound
;---------------

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,1,3))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects/Hit Details
;---------------

[State 0, ]
type            = EnvShake
trigger1        = movecontact = 1
time            = 10
freq            = 60
ampl            = -4

[State 0:    HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = high
priority        = 4, Hit
damage          = 50, 5
pausetime       = 10, 10
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -25
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -7, -5
air.velocity    = -7, -5
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 0
chainID         = -1
numhits         = 1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime) && (command != "holdfwd")
value           = 102
ctrl		    = 1

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (AnimTime = 0) && (command = "holdfwd")
value           = 100
ctrl		    = 1
;---------------------------------------------------------------------------
