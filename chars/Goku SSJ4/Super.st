;================================
;Goku Type-Z
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;-Stateno 3000-4999

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
; Kamehameha stage 1 - Charge
[Statedef 3000]
type            = S
movetype        = A
physics         = S
anim            = 3000
;velset          = 0,0,0
ctrl            = 0
poweradd        = -2000
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
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (Time = 1)
value           = 8050 ,0
volume          = 255
channel         = 5

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 8050 ,1
volume          = 255
channel         = 6

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 5
under           = 0

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 25
flag           = NoBarDisplay

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 20) && ((GameTime%70) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 57
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 57
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0:    Dust Right]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = -20,7
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 20,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 4
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
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 5
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
supermove       = 999
pausemovetime   = 999
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
supermove       = 999
pausemovetime   = 999
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
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 5
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

[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 20
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    Super effect]
type            = Explod
trigger1        = (Time = 0)
anim            = 6500
ID              = 6500
pos		        = -15,-55
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (Time = 5)
anim            = 6501
ID              = 6501
pos		        = -15,-45
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (!Time)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

; Ring waves
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 2)
helpertype	    = normal
stateno	        = 8101
id              = 8101
postype         = p1
facing		    = 1
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1

; KHH Ball
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 2)
helpertype	    = normal
stateno	        = 8102
id              = 8102
postype         = p1
facing		    = 1
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 70
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;------------------------------------------------------------ I T L

[State 500:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 500:     PosAdd]
type            = PosAdd
triggerall      = (time > 57) && (power >=500)
trigger1        = (command = "c")
x               = (P2BodyDist X+55)

;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
triggerall      = (time > 57) && (power >=500)
trigger1        = (command = "c")
value           = 500,0
volume          = 155
channel         = -1

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall      = (time > 57) && (power >=500)
trigger1        = (command = "c")
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


[State 0, ]
type            = PowerAdd
triggerall      = (time > 57) && (power >=500)
trigger1        = (command = "c")
value           = -500
;---------------

[State 0: ]
type 			= RemoveExplod
trigger1        = ((command != "holdx") && (time > 57))
ID 			    = 6001

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = ((command != "holdx") && (time > 57))
value           = 3001
ctrl		    = 0;1

;---------------------------------------------------------------------------
; Kamehameha stage 1 - Fire
[Statedef 3001]
type            = S
movetype        = A
physics         = S
anim            = 3001
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
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
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (time = 0)
value           = 3000 ,0
volume          = 255
channel         = 5

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 3200 ,1
volume          = 255
channel         = 6

;---------------
;Effects/Hit Details
;---------------
; Ball
[State 0:    Explod]
type 			= Explod
trigger1 		= (time = 0)
anim 			= 6008
ID 			    = 6008
pos 			= -20,-45
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 1

[State 0:    Dust Left]
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    C Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7011
ID              = 705
pos             = 20,7
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
trigger1        = (animelem = 2)
anim            = 7012
ID              = 705
pos             = 20,7
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

[State 0:    Beam head]
type            = Explod
trigger1        = (animelem = 2)
anim            = 6005
ID              = 6005
pos 			= 30, -60
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .6, .6
sprpriority     = 6
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    KHH waves]
type            = Explod
trigger1        = (animelem = 2)
anim            = 6006
ID              = 6006
pos 			= 35, -57
postype         = p1
facing          = 1
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

[State 0:    Projectile Helper]
type 			= Helper
trigger1 		= (animelem = 2)
helpertype 		= normal
name 			= "KHH Stage 1 Beam"
ID 			    = 8100
stateno 		= 8100
pos 			= 30, -57
postype 		= p1
keyctrl 		= 0
ownpal 		    = 1
supermovetime 	= 9999
pausemovetime 	= 9999
size.xscale 	= 1
size.yscale 	= .65

;---------------

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 30)
ID 			    = 6005

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 35)
ID 			    = 6006

[State 0, 	ChangeState]
type 			= ChangeState
trigger1 		= time = 50
value 		    = 0
ctrl 			= 1
;---------------------------------------------------------------------------
; Chou Kamehameha - Charge
[Statedef 3002]
type            = S
movetype        = A
physics         = S
anim            = 3002
;velset          = 0,0,0
ctrl            = 0
poweradd        = -3000
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
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (Time = 1)
value           = 8050 ,0
volume          = 255
channel         = 5

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 1)
value           = 3002 ,0
volume          = 255
channel         = 6

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 8050 ,1
volume          = 255
channel         = 7

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 3)
value           = 3000 ,1
volume          = 255
channel         = 8

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 13)
value           = 3000 ,2
volume          = 255
channel         = 9

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 23)
value           = 3000 ,3
volume          = 255
channel         = 10

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 33)
value           = 3000 ,4
volume          = 255
channel         = 11

;---------------
;Effects
;---------------

[State 0:     Screen Flash]
type            = EnvColor
trigger1        = (!Time)
value           = 255,255,255
time            = 5
under           = 0

[State 0:     super effect]
type            = AssertSpecial
trigger1        = time < 25
flag           = NoBarDisplay

[State 0:		BGPalFX]
type			= BGPalFX
trigger1		= ((Time > 20) && ((GameTime%70) = 0))
time			= 10
add		    	= 20,20,20
mul			    = 256,256,256
sinadd		    = 200,200,200,4
invertall		= 1
color			= 256

[State 0:    SuperPause]
type 			= SuperPause
trigger1 		= (!Time)
time 			= 190
anim 			= -1
sound 		    = -1
pos 			= 0,0
movetime 		= 190
darken 		    = 0
poweradd 		= 0
unhittable 		= 1

[State 0:    Dust Right]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = -20,7
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7010
ID              = 7010
pos             = 20,7
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 4
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
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 5
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
supermove       = 999
pausemovetime   = 999
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
supermove       = 999
pausemovetime   = 999
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
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = 5
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

[State 0, ]
type            = BGPalFX
trigger1        = (Time = 0)
time            = 20
mul             = 0,0,0
color           = 0
invertall       = 0
ignorehitpause  = 0
persistent      = 1

[State 0:    Super effect]
type            = Explod
trigger1        = (Time = 0)
anim            = 6500
ID              = 6500
pos		        = 30, -57
postype         = p1
facing          = -1
vfacing         = -1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 0
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Super effect 2]
type            = Explod
trigger1        = (Time = 5)
anim            = 6501
ID              = 6501
pos		        = 30, -57
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1.5, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (TimeMod = 24,0)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 1, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:     GroundWaves]
type            = Explod
trigger1        = (TimeMod = 30,0)
anim            = 6000
ID              = 6001
pos             = 0,0
postype         = p1
facing          = -1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -2
supermove       = 999
pausemovetime   = 999
scale           = 2, 1
sprpriority     = -2
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Explod] ;Energy Ring
type 			= Explod
trigger1 		= (!Time)
anim 			= 7020
ID 			    = 7020
pos 			= 0,-37
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 0

; Ring waves
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 2)
helpertype	    = normal
stateno	        = 8104
id              = 8104
postype         = p1
facing		    = 1
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1

; KHH Ball
[State 0:    Helper]
type            = Helper
trigger1        = (animelem = 2)
helpertype	    = normal
stateno	        = 8105
id              = 8105
postype         = p1
facing		    = 1
keyctrl	        = 0
ownpal		    = 1
supermovetime 	= 999
pausemovetime   = 999
size.xscale	    = 1
size.yscale	    = 1
ignorehitpause  = 1
persistent      = 1

[State 0:     EnvShake]
type 			= EnvShake
trigger1 		= (TimeMod = 10, 0)
time 			= 10
freq 			= 70
ampl 			= ifelse(power < 2000, 3, 6)
;phase 		    = 

;------------------------------------------------------------ I T L

[State 500:     Turn]
type            = Turn
trigger1        = (P2BodyDist X < 0)

[State 500:     PosAdd]
type            = PosAdd
triggerall      = (time > 190) && (power >=500)
trigger1        = (command = "c")
x               = (P2BodyDist X+55)

;---------------
;Sound
;---------------

[State 500:     TeleportSND]
type            = PlaySnd
triggerall      = (time > 190) && (power >=500)
trigger1        = (command = "c")
value           = 500,0
volume          = 155
channel         = -1

;---------------
;Effects
;---------------

[State 500:     AfterImage]
type            = AfterImage
triggerall      = (time > 190) && (power >=500)
trigger1        = (command = "c")
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


[State 0, ]
type            = PowerAdd
triggerall      = (time > 190) && (power >=500)
trigger1        = (command = "c")
value           = -500
;---------------

[State 0: ]
type 			= RemoveExplod
trigger1        = ((command != "holdy") && (time > 190))
ID 			    = 6001

;---------------
[State 0:    ChangeState]
type            = ChangeState
trigger1        = ((command != "holdy") && (time > 190))
value           = 3003
ctrl		    = 0;1

;---------------------------------------------------------------------------
; Kamehameha stage 1 - Fire
[Statedef 3003]
type            = S
movetype        = A
physics         = S
anim            = 3001
;velset          = 0,0,0
ctrl            = 0
poweradd        = 0
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
x		        = 0
y		        = 0

;---------------
;Sound
;---------------

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 3200 ,1
volume          = 255
channel         = 5

[State 0, ]
type            = PlaySnd
trigger1        = (animelem = 2)
value           = 3000 ,5
volume          = 255
channel         = 6

;---------------
;Effects/Hit Details
;---------------
; Ball
[State 0:    Explod]
type 			= Explod
trigger1 		= (time = 0)
anim 			= 6008
ID 			    = 6008
pos 			= -20,-45
postype 		= p1
facing 		    = 1
vfacing 		= 1
bindtime 		= -1
vel 			= 0,0
accel 		    = 0,0
random 		    = 0,0
removetime 		= -2
supermove       = 999
pausemovetime   = 999
scale 		    = 1, 1
sprpriority 	= 4
ontop 		    = 0
shadow 		    = 0,0,0
ownpal 		    = 1
removeongethit 	= 1

[State 0:    Dust Left]
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
supermove       = -1
pausemovetime   = -1
scale           = 1, 1
sprpriority     = 5
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    C Dust Left]
type            = Explod
trigger1        = (animelem = 2)
anim            = 7011
ID              = 705
pos             = 20,7
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
trigger1        = (animelem = 2)
anim            = 7012
ID              = 705
pos             = 20,7
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

[State 0:    Beam head]
type            = Explod
trigger1        = (animelem = 2)
anim            = 6005
ID              = 6005
pos 			= 30, -60
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .9, .9
sprpriority     = 6
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    KHH waves]
type            = Explod
trigger1        = (animelem = 2)
anim            = 6006
ID              = 6006
pos 			= 35, -57
postype         = p1
facing          = 1
vfacing         = 1
bindtime        = 1
vel             = 0,0
accel           = 0,0
random          = 0,0
removetime      = -1
supermove       = -1
pausemovetime   = -1
scale           = .9, .9
sprpriority     = 4
ontop           = 0
shadow          = 0,0,0
ownpal          = 1
removeongethit  = 1

[State 0:    Projectile Helper]
type 			= Helper
trigger1 		= (animelem = 2)
helpertype 		= normal
name 			= "Chou KHH Beam"
ID 			    = 8103
stateno 		= 8103
pos 			= 30, -57
postype 		= p1
keyctrl 		= 0
ownpal 		    = 1
supermovetime 	= 9999
pausemovetime 	= 9999
size.xscale 	= .9
size.yscale 	= .9

;---------------

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 30)
ID 			    = 6005

[State 0: ]
type 			= RemoveExplod
trigger1        = (time = 35)
ID 			    = 6006

[State 0, 	ChangeState]
type 			= ChangeState
trigger1 		= time = 60
value 		    = 0
ctrl 			= 1
;----------------------------------------------------------
