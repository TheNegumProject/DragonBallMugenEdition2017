;================================
;Goku Type-Z
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;-Stateno 170-999

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
; Lose by Time Over
[Statedef 170]
type            = S
ctrl            = 0
anim            = 170
velset          = 0,0

;Hehehe
[State 0, ]
type            = PlaySnd
trigger1        = time = 0
value           = 180, 2
volume          = 255
channel         = 4

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type            = S

[State 0:     1]
type            = ChangeState
trigger1        = (!Time)
value           = ifelse(random > 500,182,181)

;---------------------------------------------------------------------------
; Win pose 1
[Statedef 181]
type            = S
ctrl            = 0
anim            = 180
velset          = 0,0

;---------------
;Sound
;---------------

[State 181:     SUBS- Pardon me..]
type            = Explod
trigger1        = (animelem = 1)
anim            = 8303
ID              = 8303
pos             = 90, 220
postype         = left
facing          = ifelse(teamside = 1, 1, 1)
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 181:     SUBS- Never thought..]
type            = Explod
trigger1        = (time = 130)
anim            = 8304
ID              = 8304
pos             = 80, 220
postype         = left
facing          = ifelse(teamside = 1, 1, 1)
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 2
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Intro]
type            = AssertSpecial
trigger1        = time < 460
flag            = roundnotover
flag2           = NoBarDisplay

;pardon me
[State 0, ]
type            = PlaySnd
trigger1        = time = 0
value           = 180, 0
volume          = 255
channel         = 4

;---------------

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1
;---------------------------------------------------------------------------
; Win pose 2
[Statedef 182]
type            = S
ctrl            = 0
anim            = 170
velset          = 0,0

;---------------
;Sound
;---------------

;Hehehe
[State 0, ]
type            = PlaySnd
trigger1        = time = 0
value           = 180, 2
volume          = 255
channel         = 4

[State 0:     1]
type            = NotHitBy
trigger1        = 1
value           = SCA
time            = 1
;---------------------------------------------------------------------------
; Intro Decider
[Statedef 190]
type            = S

[State 0:     3]
type            = ChangeState
trigger1        = (!Time)
value           = 191

;---------------------------------------------------------------------------
;Instant translocation
[Statedef 191]
type            = S
movetype        = I
physics         = N
anim            = 191
velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     Freeze]
type            = ChangeAnim
trigger1        = (RoundState = 0)
value           = 191

[State 0:     Intro]
type            = AssertSpecial
trigger1        = (1)
flag            = Intro
flag2           = NoBarDisplay

;---------------
;Sound
;---------------

[State 0:     TeleportSND]
type 		    = PlaySnd
trigger1        = (Time = 20)
value           = 500,0
volume          = 255
channel         = -1
lowpriority     = 0
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

;---------------
;Effects
;---------------

[State 0:     Invisible]
type            = AssertSpecial
trigger1        = (Time < 25)
flag            = Invisible

[State 0:     AfterImage]
type            = AfterImage
trigger1        = (Time = 15)
time            = 10
length          = 2
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 120,120,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 1
trans           = Add
;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (AnimTime = 0)
value           = 0
ctrl            = 1

;---------------------------------------------------
; Standing Light Punch (x)
[Statedef 200]
type            = S
movetype        = A
physics         = S
anim            = 200
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 10
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     PunchSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 200,0
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
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 4, Hit
damage          = 20, 5
pausetime       = 7, 8
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10,-65
hitsound        = S200, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -3, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 200
chainID         = -1
numhits         = 1
Kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Standing Hard Punch (y)
[Statedef 201]
type            = S
movetype        = A
physics         = S
anim            = 201
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     VelSet]
type            = VelSet
trigger1        = (AnimElem = 2)
x		        = 1.3
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     PunchSound]
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

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 4, Hit
damage          = 25, 5
pausetime       = 7, 8
guard.pausetime = 7, 8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -15, -65
hitsound        = S201, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -2, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Uppercut
[Statedef 202]
type            = S
movetype        = A
physics         = S
anim            = 202
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (1)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 11
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     UppercutSound]
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

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 4, Hit
damage          = 35, 5
pausetime       = 7, 8
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -5, -60
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime    = 7
ground.cornerpush.veloff = -6
ground.hittime  = 7
guard.hittime   = 7
air.hittime     = 14
ground.velocity = -5
air.velocity    = -5 
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 10, 3
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Standing Light Kick (a)
[Statedef 211]
type            = S
movetype        = A
physics         = S
anim            = 211
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     KickSound]
type            = PlaySnd
trigger1        = (!Time)
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
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
ground.type     = low
priority        = 4, Hit
damage          = 30, 5
pausetime       = 7, 8
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -50
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -2, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 210
chainID         = -1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Standing Axe kick (a)
[Statedef 213]
type            = S
movetype        = A
physics         = S
anim            = 213
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 3
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 12
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     KickSound]
type            = PlaySnd
trigger1        = (!Time)
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
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
ground.type     = high
priority        = 4, Hit
damage          = 20, 5
pausetime       = 7, 8
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -70
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -2, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 210
chainID         = -1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = medium
air.animtype    = medium
ground.type     = low
priority        = 4, Hit
damage          = 20, 5
pausetime       = 7, 8
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -50
hitsound        = S210, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -2, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 210
chainID         = -1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1
;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Standing Hard Kick (b)
[Statedef 214]
type            = S
movetype        = A
physics         = S
anim            = 214
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 13
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     KickSound]
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

;---------------
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 4, Hit
damage          = 35, 5
pausetime       = 15, 20
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -15, -65
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5,0
air.velocity    = -5,0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;------------Comboing---

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Roundhouse Kick
[Statedef 215]
type            = S
movetype        = A
physics         = S
anim            = 215
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 0:     Combo VarSet]
type            = VarSet
triggerall      = (PrevStateno = 0)
trigger1        = (!Time)
v 		        = 14
value           = 1

;---------------
;Sound/Effects
;---------------

[State 0:     KickSound]
type            = PlaySnd
trigger1        = (!Time)
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
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = back
air.animtype    = back
ground.type     = high
priority        = 4, Hit
damage          = 35, 5
pausetime       = 7, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -20, -50
hitsound        = S210, 2
guardsound      = S201, 2
ground.slidetime= 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -6
air.velocity    = -6
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 212
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;-------------------------------------------------------------------------------------------------
; Crouching Light Punch
[Statedef 300]
type            = C
movetype        = A
physics         = C
anim            = 300
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
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
value           = 200,0
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
animtype        = Light
air.animtype    = Light
priority        = 4,Hit
damage          = 20, 5
pausetime       = 7, 8
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -35
hitsound        = S200, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -4, 0
air.velocity    = -4, 0
air.juggle      = 4
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
ID              = 300
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1

;-----------------------------------------------------------------------------------
; Crouching Hard Punch
[Statedef 301]
type            = C
movetype        = A
physics         = C
anim            = 301
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
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
value           = 200,0
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
animtype        = Light
air.animtype    = Light
priority        = 4,Hit
damage          = 30, 10
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -35
hitsound        = S200, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -4, 0
air.velocity    = -4, 0
air.juggle      = 4
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
ID              = 300
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 302]
type            = C
movetype        = A
physics         = C
anim            = 302
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
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
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 25, 10
pausetime       = 7, 8
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -5
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -5, 0
air.velocity    = -5, 0
air.juggle      = 4
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 310
chainID         = -1
numhits         = 1
getpower        = 5, 0
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1

;---------------------------------------------------------------------------
; Hard crouch Kick
[Statedef 303]
type            = C
movetype        = A
physics         = C
anim            = 303
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 4
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 312:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 312:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 312:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
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
;Hit Details
;---------------

[State 312:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = C, NA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 35, 15
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -10, -30
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.cornerpush.veloff = -6
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -3, 0
air.velocity    = -1, 0
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 312
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 312:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 11
ctrl            = 1
;---------------------------------------------------------------------------
; Air Light Punch
[Statedef 400]
type            = A
movetype        = A
physics         = A
anim            = 400
;velset          = 0,0
ctrl            = 0
poweradd        = 30
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

[State 400:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1
ignorehitpause  = 1
persistent      = 1

;---------------
;Effects/Sound
;---------------

[State 400:     SwingSound]
type            = PlaySnd
trigger1        = (!Time)
value           = 200,0
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

[State 400:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4,Hit
damage          = 20, 5
pausetime       = 15, 25
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -10, -50
hitsound        = S200, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -3, 0
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.velocity    = -3, 2
air.juggle      = 1
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 1
down.velocity   = -3, 2
down.hittime    = 0
down.bounce     = 0
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 400:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; Air Hard Punch
[Statedef 401]
type            = A
movetype        = A
physics         = A
anim            = 401
;velset          = 0,0
ctrl            = 0
poweradd        = 50
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

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
attr            = A, NA
hitflag         = MAF
guardflag       = MA
animtype        = Light
air.animtype    = Light
priority        = 4,Hit
damage          = 35, 10
pausetime       = 15, 25
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S200, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -4, 0
air.velocity    = -4, 3
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 2
down.hittime    = 0
down.bounce     = 0
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
ID              = 600
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; Air Light Kick
[Statedef 402]
type            = A
movetype        = A
physics         = A
anim            = 402
;velset          = 0,0,0
ctrl            = 0
poweradd        = 30
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

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
attr            = A, NA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 25, 10
pausetime       = 7, 8
guard.pausetime = 7, 8
sparkno         = S7000
guard.sparkno   = S7007
sparkxy         = -7, -25
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -4, 0
air.velocity    = -4, 3
air.juggle      = 1
fall            = 0
fall.recover    = 1
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
down.hittime    = 0
down.bounce     = 0
ID              = 410
chainID         = -1
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; Air Hard Kick
[Statedef 403]
type            = A
movetype        = A
physics         = A
anim            = 403
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 2
;---------------

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
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 2)
attr            = A, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = high
priority        = 4,Hit
damage          = 35, 15
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -7, -25
hitsound        = S210, 1
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -4, 0
air.velocity    = -4, 3
air.juggle      = 1
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 4
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1
;---------------------------------------------------------------------------
; Kickdown
[Statedef 404]
type            = A
movetype        = A
physics         = A
anim            = 404
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
x		        = 0
y		        = -4

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
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = A, NA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 30, 10
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -7, -25
hitsound        = S420, 0
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -5, 0
air.velocity    = -5, 6
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 30
air.fall        = 1
down.velocity   = 0, 4
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; Smackdown
[Statedef 405]
type            = A
movetype        = A
physics         = A
anim            = 405
;velset          = 0,0,0
ctrl            = 0
poweradd        = 50
juggle          = 1
facep2          = 1
hitdefpersist   = 1
movehitpersist  = 1
hitcountpersist = 1
sprpriority     = 1
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (animelem = 3)
x		        = 0
y		        = -4

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
;Hit Details
;---------------

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
attr            = A, NA
hitflag         = MAF
guardflag       = MA
animtype        = Medium
air.animtype    = Medium
priority        = 4,Hit
damage          = 30, 10
pausetime       = 15, 15
guard.pausetime = 7, 8
sparkno         = S7005
guard.sparkno   = S7007
sparkxy         = -7, -25
hitsound        = S420, 0
guardsound      = S201, 2 
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
air.hittime     = 20
air.cornerpush.veloff = -4
ground.velocity = -5, 0
air.velocity    = -5, 6
air.juggle      = 1
fall            = 1
fall.recover    = 0
fall.damage     = 30
air.fall        = 1
down.velocity   = 0, 4
down.hittime    = 0
down.bounce     = 0
ID              = 412
chainID         = -1
numhits         = 1
getpower        = 5, 0
givepower       = 15, 0
envshake.time   = 5
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

;---------------

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl            = 1

;---------------------------------------------------------------------------
; Throw - Attempt
[Statedef 600]
type            = S
movetype        = A
physics         = S
anim            = 600
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects/Hit Details
;---------------

[State 0:     AssertSpecial] ;Cannot Guard
type 			= AssertSpecial
trigger1 		= (1)
flag 			= unguardable

[State 0:     HitDef]
type            = HitDef
trigger1        = AnimElem = 1
attr            = S, NT
priority        = 4, miss
sparkno         = -1
pausetime       = 20, 50
numhits         = 0
snap            = 40,-5
hitsound        = S600,1
p1stateno       = 605
p2facing        = 1

;---------------

;---------------
[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Throw - Success - P1 State
[Statedef 605]
type            = S
movetype        = A
physics         = S
anim            = 601
;velset          = 0,0,0
ctrl            = 0
poweradd        = 100
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     PlayerPush]
type 			= PlayerPush
trigger1 		= (1)
value 		    = 0

[State 0:     NothitBy]
type 			= NotHitBy
trigger1 		= (1)
value 		    = SCA 
time 			=  1

;---------------
;Sound
;---------------

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 7)
trigger3        = (AnimElem = 11)
value           = 210,0
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     SwingSound]
type            = PlaySnd
trigger1        = (AnimElem = 17)
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
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 7)
trigger3        = (AnimElem = 11)
value           = 60, ifelse(random>500,-1,ifelse(random> 500,0,2))
volume          = 200
channel         = -1
lowpriority     = 0 
freqmul         = 1.0
loop            = 0
pan             = 0
abspan          = 0

[State 0:     VoiceSound]
type            = PlaySnd
trigger1        = (AnimElem = 17)
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

[State 0:     Bind]
type            = TargetBind
trigger1        = (time < 50)
pos             = 40,-5

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 3)
trigger2        = (AnimElem = 7)
trigger3        = (AnimElem = 11)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 4, Hit
damage          = 25, 5
pausetime       = 20, 40
guard.pausetime = 7, 8
sparkno         = S7000 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S201, 1
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 7
air.hittime     = 20
ground.velocity = -2, 0
air.velocity    = -2, 1
air.juggle      = 4
fall            = 0
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

[State 0:     HitDef]
type            = HitDef
trigger1        = (AnimElem = 17)
attr            = S, NA
hitflag         = MAF
guardflag       = MA
animtype        = heavy
air.animtype    = heavy
ground.type     = low
priority        = 4, Hit
damage          = 25, 5
pausetime       = 15, 5
guard.pausetime = 7, 8
sparkno         = S7005 
guard.sparkno   = S7007
sparkxy         = -25, -50
hitsound        = S420, 0
guardsound      = S201, 2
ground.slidetime    = 12
ground.hittime  = 12
guard.hittime   = 15
air.hittime     = 20
ground.velocity = -15, -3
air.velocity    = -15, -3
air.juggle      = 4
fall            = 1
fall.recover    = 0
fall.damage     = 0
air.fall        = 0
down.velocity   = 0, 0
kill            = IfElse(Var(59), IfElse(P2StateNo != 987123, 0, 1), 1)
down.hittime    = 0
down.bounce     = 0
ID              = 202
chainID         = -1
numhits         = 1
getpower        = 10, 3
givepower       = 20, 3
envshake.time   = 0
envshake.freq   = 60
envshake.ampl   = -2
envshake.phase  = 1

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
;---- Chain Combos ---------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Power Up - Start
[Statedef 700]
type            = S
movetype        = I
physics         = N
anim            = 700
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

;---------------
;Effects
;---------------


;---------------

[State 0:     ChangeState]
type            = ChangeState
trigger1        = (!AnimTime); && (Pos Y >= 0)
value           = 705

[State 0:     ChangeState] ;Air
type            = Null;ChangeState
trigger1        = (!AnimTime) && (Pos Y < 0)
value           = 710
;---------------------------------------------------------------------------
; Power Up (Charge)
[Statedef 705]
type            = S
movetype        = A
physics         = S
anim            = 705
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 0:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 5
under           = 0

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (animelem = 2)
value           = 255,255,255
time            = 5
under           = 1

[State 0:     BGPalFX]
type            = BGPalFX
trigger1        = (1)
time		    = 1
add		        = -25,-25,-25
mul		        = 225,225,225
sinadd		    = 0,0,0,1
color		    = 256
invertall	    = 0

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 20) && ((GameTime%70) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 0:     PowerAdd]
type            = PowerAdd
trigger1        = (1)
value           = 4

;---------------
;Sound
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 1)
value           = 700, 0
volume		    = -100
channel	        = 3
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (time > 30) && (TimeMod = 24, 0)
value           = 700, 1
volume		    = 255
channel	        = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 700, 3
volume		    = 255
channel	        = 2
freqmul	        = 1.0
loop		    = 1
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 700, 4
volume		    = 255
channel	        = 3
freqmul	        = 1.0
loop		    = 1
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = ((command != "holda") && (command !="holdx"))
value           = 700, 0
volume		    = 255
channel	        = -1
lowpriority	    = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 700, 0
volume		    = 255
channel	        = -1
lowpriority	    = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 700, 2
volume		    = 255
channel	        = -1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0, PalFXWiz] ;Generated by MEE PalFX Editor
type            = PalFX
trigger1        = time > 30 && (1)
time            = 1
add             = -25,-25,-25
mul             = 328,328,328
sinadd          = 0,0,0,1
invertall       = 0
color           = 180
ignorehitpause = 0
persistent     = 1

;---------------
;Effects
;---------------

[State 0:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
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
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1


[State 0:    C Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7011
ID              = 705
pos             = -10,7
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
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    C Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7011
ID              = 705
pos             = 10,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    CB Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7012
ID              = 705
pos             = -15,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    CB Dust Left]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 7012
ID              = 705
pos             = 15,7
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
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (TimeMod = 24,0)
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
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Aura]
type            = Explod
trigger1        = animelem = 2
anim            = 7036
ID              = 7036
pos             = 6,0
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
scale           = .8, .8
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 35,0)) 
anim            = 7047
ID              = 7036
pos             = -5,-10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 25,0))
anim            = 7048
ID              = 7036
pos             = 5,-15
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 35,0))
anim            = 7049
ID              = 7036
pos             = 5, 20
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
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Elec]
type            = Explod
trigger1        = ((time >30) && (timemod = 30,0))
anim            = 7050
ID              = 7036
pos             = -2, -10
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 3
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Push Effect]
type            = Helper
trigger1        = (TimeMod = 30,0)
helpertype	    = normal
name		    = "Push Effect"
id              = 8030
pos		        = 0,0
postype         = p1
facing		    = 1
stateno	        = 8030
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = 1

[State 0:     Huge dust]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7014
ID              = 7014
pos             = 3, 0
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
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Tornado]
type            = Explod
trigger1        = (!Time)
anim            = 7013
ID              = 7013
pos             = 3,-0
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
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Ring]
type            = Explod
trigger1        = (!time)
anim            = 7020
ID              = 7020
pos             = 3,-40
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
sprpriority     = 3
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%10) = 0) && (Random < 249) && (NumHelper(8200) < 5)
helpertype		= Normal
name			= "Rock000"
id			    = 8200
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8200
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 799,0.75,3))
size.yscale		= (IfElse(Random <= 799,0.75,3))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%20) = 0) && (Random > 749) && (NumHelper(8210) < 5)
helpertype		= Normal
name			= "Rock001"
id			    = 8210
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8210
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.75,0.50))
size.yscale		= (IfElse(Random <= 499,0.75,0.50))

[State 0:		Helper]
type			= Helper
trigger1		= (Time > 20) && ((GameTime%30) = 0) && (Random = [249,749]) && (NumHelper(8220) < 5)
helpertype		= Normal
name			= "Rock002"
id			    = 8220
pos			    = 0,0
postype		    = p1
facing		    = 0
stateno		    = 8220
keyctrl		    = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale		= (IfElse(Random <= 499,0.50,0.75))
size.yscale		= (IfElse(Random <= 499,0.50,0.75))

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 70
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;---------------
[State 0:     RemoveExplod]
type            = RemoveExplod
trigger1        = ((command != "holda") && (command !="holdx"))
ID              = 7036
ignorehitpause  = 0
persistent      = 1

[State 0:     RemoveExplod]
type            = RemoveExplod
trigger1        = ((command != "holda") && (command !="holdx"))
ID              = 7049
ignorehitpause  = 0
persistent      = 1

;---------------
[State 0:     End]
type            = ChangeState
trigger1        = ((command != "holda") && (command !="holdx"))
value           = 0
ctrl            = 1
;---------------------------------------------------------------------------
;Super Jump
[Statedef 9001]
type            = A
movetype        = I
physics         = N
anim            = 41
velset          = 0,-11
ctrl            = 0
poweradd        = -50
juggle          = 0
facep2          = 0
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0, VarSet]
type            = VarSet
trigger1        = Time = 0
var(10)         = 1

[State 0, VelSet]
type            = VelSet
trigger1        = AnimTime = 0
x               = 0
y               = -11

[State 0, ChangeState]
type            = ChangeState
trigger1        = AnimTime = 0
value           = 50
ctrl            = 1

[State 0, ChangeAnim]
type            = ChangeAnim
trigger1        = Time = 0
value           = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[state 0, CtrlSet]
type            = CtrlSet
trigger1        = Time >= 1
value           = 1

[state 0, VelSetFwd]
type            = VelSet
trigger1        = command = "holdfwd"
x               = 3 

[state 0, VelSetBack]
type            = VelSet
trigger1        = command = "holdback"
x               = -3

[state 0, VelAdd]
type            = VelAdd
trigger1        = Time > 10
x               = 0
y               = .40

;---------------
;Sound
;---------------

[State 0, PlaySnd]
type            = PlaySnd
trigger1        = Time = 0
value           = 9000,0

;---------------
;Effects
;---------------

[State 0:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
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
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     Dust Left]
type            = Explod
trigger1        = (Time = 0)
anim            = 7010
ID              = 7010
pos             = ifelse(anim = 705, 35, 25),0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (Time = 0)
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
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1
;---------------

;---------------
[state 0, End]
type            = ChangeState
trigger1        = Pos Y >= 1 
value           = 52
ctrl            = 1

;---------------------------------------------------------------------------
;Flashy kill
[Statedef 1122]
type            = S
movetype        = I
physics	        = N
velset          = 0,0,0
ctrl            = 0

[State 0, ]
type            = AssertSpecial
trigger1        = (1)
flag            = Noshadow
flag2           = Invisible
flag3           = nobardisplay
ignorehitpause  = 1

[State 0, ]
type            = AllPalFX
trigger1        = time =[0,40]
add             = (255-((time)*6)),(-255+((time)*6)),(-255+((time)*6))
mul             = (80+((time)*4)),(0+((time)*4)),(0+((time)*4))
time            = 1
ignorehitpause  = 1

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 1122, 0
volume		    = 255
channel	        = 1
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0
;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 10
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 11
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 12
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 13
value           = 0

[State -2:      VarReset]
type            = VarSet
trigger1        = (StateNo = 0)
v 		        = 14
value           = 0

[State -2:      StopSND] ;Stop Powerup Sound
type            = StopSnd
trigger1        = (StateNo != 705)
channel		    = 1

[State -2:      StopSND] ;Stop Powerup  wind Sound
type            = StopSnd
trigger1        = (StateNo != 705)
channel		    = 2

[State -2:      StopSND] ;Stop Powerup rumble Sound
type            = StopSnd
trigger1        = (StateNo != 705)
channel		    = 3

[State -2:      PosSet]
type 			= PosSet
trigger1 		= (Pos Y > 0) && (StateNo = 0)
y               = 0

[State -2:      VarRandom]
type 			= VarRandom
trigger1 		= (1)
v 			    = 40
range           = -40, -10

[State -2:      VarRandom]
type 			= VarRandom
trigger1 		= (1)
v 			    = 41
range           = 10, 40

[State -2: Win Once]
Type            = VarSet
Trigger1        = Win
var(59)         = 1

[State -2, 5] 
type                = AttackMulSet
triggerall          = !Var(59) && p2life <= 1
trigger1            = RoundNo != 1 && Win=0
trigger2            = p2stateno = 987123
value               = 9999

[state -2, 1]
type                = Helper
trigger1            = NumHelper(9010) = 1
trigger1            = NumHelper(9011) = 0
trigger1            = enemy(0), stateno = 987123
ID                  = 9011
pos                 = 160, -140
postype             = left
stateno             = 9011
helpertype          = normal
name                = "NO MERCY!! MSG"
keyctrl             = 0
ownpal              = 1

z;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3:      DisplayToClipboard]
type            = DisplayToClipboard
trigger1        = (1)
text		    = "Var(10) = %d, Var(11) = %d"
params		    = Var(10), Var(11)
