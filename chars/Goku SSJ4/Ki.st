;================================
;Goku Type-Z
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;-Stateno 2000-2999

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
; Ki Shot
[Statedef 2000]
type            = S
movetype        = A
physics         = S
anim            = 2000
;velset          = 0,0,0
ctrl            = 0
poweradd        = -100
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     Ki ball]
type            = Explod
trigger1        = (!Time)
anim            = 8000
ID              = 8000
pos             = 15,-65
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
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1

[State 0:     Ki Wave]
type            = Explod
trigger1        = (animelem = 2)
anim            = 8001
ID              = 8001
pos             = 40,-65
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
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1
;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 2, 2) 
helpertype	    = normal
name		    = "Ki Shot Straight"
id              = 8000
pos		        = 42,-67
postype         = p1
facing		    = 1
stateno	        = 8000
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = .5
size.yscale	    = .4

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 2001
ctrl		    = 1

;---------------------------------------------------------------------------
; Ki Shot Ready
[Statedef 2001]
type            = S
movetype        = A
physics         = S
anim            = 2001
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

;---------------
;Sound/Effects
;---------------

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

[State 0:    ChangeState]
type            = ChangeState
trigger1        = (command = "z") && (power >= 100)
value           = 2002
ctrl		    = 1

;---------------------------------------------------------------------------
; Ki Shot Fire 2
[Statedef 2002]
type            = S
movetype        = A
physics         = S
anim            = 2002
;velset          = 0,0,0
ctrl            = 0
poweradd        = -100
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     Ki Wave]
type            = Explod
trigger1        = (animelem = 1)
anim            = 8001
ID              = 8001
pos             = 35,-65
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
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1
;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 1, 2) 
helpertype	    = normal
name		    = "Ki Shot Straight"
id              = 8000
pos		        = 42,-67
postype         = p1
facing		    = 1
stateno	        = 8000
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = .5
size.yscale	    = .4

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 2003
ctrl		    = 1

;---------------------------------------------------------------------------
; Ki Shot Ready 2
[Statedef 2003]
type            = S
movetype        = A
physics         = S
anim            = 2001
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

;---------------
;Sound/Effects
;---------------

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

[State 0:    ChangeState]
type            = ChangeState
trigger1        = (command = "z") && (power >= 100)
value           = 2000
ctrl		    = 1
;---------------------------------------------------------------------------
; Invisible Ki
[Statedef 2005]
type            = S
movetype        = A
physics         = S
anim            = 2000
;velset          = 0,0,0
ctrl            = 0
poweradd        = -150
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8050, 2
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     Dust]
type            = Explod
trigger1        = (animelem = 2, 2)
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
supermove       = 0
pausemovetime   = 0
scale           = 1, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 2, 2) 
helpertype	    = normal
name		    = "invisble Ki"
id              = 8000
pos		        = 42,0
postype         = p1
facing		    = 1
stateno	        = 8015
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Air Ki Shot Ready
[Statedef 2020]
type            = A
movetype        = A
physics         = A
anim            = 2020
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

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = -1

;---------------
;Sound/Effects
;---------------

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

[State 0:    ChangeState]
type            = ChangeState
trigger1        = (command = "holdz") && (power >= 100)
value           = 2021
ctrl		    = 1

;---------------------------------------------------------------------------
; Air Ki Shot Fire
[Statedef 2021]
type            = A
movetype        = A
physics         = A
anim            = 2021
;velset          = 0,0,0
ctrl            = 0
poweradd        = -100
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = -1

;---------------
;Sound/Effects
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     Ki Wave]
type            = Explod
trigger1        = (animelem = 1)
anim            = 8010
ID              = 8010
pos		        = 35,-43
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
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1
;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 1, 2) 
helpertype	    = normal
name		    = "Air Ki Shot"
id              = 8040
pos		        = 38,-40
postype         = p1
facing		    = 1
stateno	        = 8040
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = .5
size.yscale	    = .4

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 2022
ctrl		    = 1

;---------------------------------------------------------------------------
; Air Ki Shot Ready 2
[Statedef 2022]
type            = A
movetype        = A
physics         = A
anim            = 2020
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

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = -1

;---------------
;Sound/Effects
;---------------

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 50
ctrl		    = 1

[State 0:    ChangeState]
type            = ChangeState
trigger1        = (command = "holdz") && (power >= 100)
value           = 2023
ctrl		    = 1

;---------------------------------------------------------------------------
; Air Ki Shot Fire 2
[Statedef 2023]
type            = A
movetype        = A
physics         = A
anim            = 2021
;velset          = 0,0,0
ctrl            = 0
poweradd        = -100
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 2
;---------------

[State 0:    VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 0
y		        = -1

;---------------
;Sound/Effects
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 2000, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 8000, 0
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     Ki Wave]
type            = Explod
trigger1        = (animelem = 1)
anim            = 8010
ID              = 8010
pos		        = 32,-47
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
sprpriority     = 0
ontop           = 1
shadow          = 0,0,0
ownpal          = 1
ignorehitpause  = 1
;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 1, 2) 
helpertype	    = normal
name		    = "Air Ki Shot"
id              = 8040
pos		        = 32,-47
postype         = p1
facing		    = 1
stateno	        = 8040
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = .5
size.yscale	    = .4

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 2020
ctrl		    = 1

;---------------------------------------------------------------------------
; Taioken
[Statedef 2025]
type            = S
movetype        = A
physics         = S
anim            = 1020
;velset          = 0,0,0
ctrl            = 0
poweradd        = -200
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
x		        = 0
y		        = 0

;---------------
;Sound/Effects
;---------------

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 2025, 0
volume		    = 255
channel	        = 5
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

[State 0:     PlaySND]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 8050, 2
volume		    = 255
channel	        = 6
freqmul	        = 1.0
loop		    = 0
pan		        = 0
abspan		    = 0

;---------------
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 3) 
helpertype	    = normal
name		    = "Taioken"
id              = 8060
pos		        = 20,-65
postype         = p1
facing		    = 1
stateno	        = 8060
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; K.Y.O. Ki Punch
[Statedef 2040]
type            = S
movetype        = A
physics         = S
anim            = 1050
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

[State 0:    VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 4
y		        = 0

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
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 4) 
helpertype	    = normal
name		    = "K.Y.O. Ki Punch"
id              = 8065
pos		        = 55,-62
postype         = p1
facing		    = 1
stateno	        = 8065
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; K.Y.O. Ki Punch 2
[Statedef 2050]
type            = S
movetype        = A
physics         = S
anim            = 1051
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

[State 0:    VelSet]
type            = VelSet
trigger1        = (animelem = 2)
x		        = 6
y		        = 0

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
;Misc
;---------------

[State 0:    Helper]
type            = Helper
trigger1        = (AnimElem = 5) 
helpertype	    = normal
name		    = "K.Y.O. Ki Punch"
id              = 8065
pos		        = 63,-55
postype         = p1
facing		    = 1
stateno	        = 8065
keyctrl	        = 0
ownpal		    = 1
supermovetime	= 0
pausemovetime	= 0
size.xscale	    = 1
size.yscale	    = 1

;---------------

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = (!AnimTime)
value           = 0
ctrl		    = 1

;---------------------------------------------------------------------------
; Zanzouken
[Statedef 500]
type            = S
movetype        = A
physics         = S
anim            = 500
;velset          = 2,0,0
ctrl            = 0
poweradd        = 0
juggle          = 0
facep2          = 1
hitdefpersist   = 0
movehitpersist  = 0
hitcountpersist = 0
sprpriority     = 1
;---------------

[State 500:     VelSet]
type            = VelSet
trigger1        = (!Time)
x		        = 4
y		        = 0

[State 500:     PlayerPush]
type            = PlayerPush
trigger1        = (1)
value           = 1

[State 500:     Turn]
type            = Turn
trigger1        = (time = 2)

[State 500:     PosAdd]
type            = PosAdd
trigger1        = (Time = 1)
x               = (P2BodyDist X+45)

;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
trigger1        = (Time = 0)
value           = 500,0
volume          = 155
channel         = -1

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
trigger1        = (!Time)
time            = 5
length          = 5
palcolor        = 256
palinvertall    = 0
palbright       = 30,30,30
palcontrast     = 120,120,220
palpostbright   = 0,0,0
paladd          = 10,10,25
palmul          = .65,.65,.75
timegap         = 1
framegap        = 4
trans           = Add
ignorehitpause  = 1
persistent      = 1

;---------------

;---------------
[State 500:     End]
type            = ChangeState
trigger1        = (animtime = 0)
value           = 0
ctrl            = 1

;---------------------------------------------------------------------------
