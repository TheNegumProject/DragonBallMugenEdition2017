;--------------------------------------------------------------
;-|Vegiita.cmd|------------------------------------------------
;--------------------------------------------------------------

;--------------------------------------------------------------
;-|vegiita.cns|------------------------------------------------
;--------------------------------------------------------------
[Data]
life=1300
power=4000
attack=100
defence=120
fall.defence_up=50
liedown.time=60
airjuggle=15
sparkno=S6000
guard.sparkno=S6001
KO.echo=0
volume=0
IntPersistIndex=58
FloatPersistIndex=40

[Size]
xscale=1.025
yscale=1.025
ground.back=15
ground.front=16
air.back=12
air.front=12
height=60
attack.dist=90
proj.attack.dist=90
proj.doscale=1
head.pos=-5,-50
mid.pos=-5,-30
shadowoffset=0
draw.offset=0,-2

[Velocity]
walk.fwd=2.4
walk.back=-2.2
run.fwd=4.6,0
run.back=-4.5,0
jump.neu=0,-8.4
jump.back=-2.55
jump.fwd=2.5
runjump.back=-4.55,-8.1
runjump.fwd=5,-8.1
airjump.neu=0,-8.1
airjump.back=-2.55
airjump.fwd=2.5

[Movement]
airjump.num=1
airjump.height=35
yaccel=.44
stand.friction=.85
crouch.friction=.82

[Defaults]
command.time=15
command.buffer.time=1
;--------------------------------------------------------------
;-|Common.st|--------------------------------------------------
;--------------------------------------------------------------
; Stand
[Statedef 0]
type=S
physics=S
sprpriority=0

[State 0]
type=ChangeState
triggerall=(name!="[Dizzy]'s Super Vegeta")
trigger1=(1)&&((Stateno!=8000)||(Stateno!=8001))
value=IfElse(Random>500,8001,8000)

[State 0]
type=ChangeState
triggerall=(name!="[Dizzy]'s Super Vegeta")
trigger1=(1)&&((Stateno!=8002)||(Stateno!=8003))
value=IfElse(Random>500,8003,8002)

[State 0,1]
type=ChangeAnim
trigger1=Anim!=0&&Anim!=5
trigger2=Anim=5&&!AnimTime
value=0

[State 0,2]
type=VelSet
trigger1=!time
y=0

[State 0, ]
type=CtrlSet
trigger1=prevstateno=0
trigger2=var(11)=1
value=1
ignorehitpause=1

[State 0,3] ;Stop moving if low velocity or 4 ticks pass
type=VelSet
trigger1=abs(vel x)<2
trigger2=Time=4
x=0

[State 0,2]
type=ChangeState
trigger1=pos y<0
value=ifelse(var(1)=0,50,551)
ctrl=1

[State 0,4] ;Are you dead?
type=ChangeState
trigger1=!alive
value=5050
;---------------------------------------------------------------------------
; ???
[Statedef 1]
type=S
physics=S
sprpriority=0
ctrl=1

[State 0,4];Are you a retard? :P
type=ChangeState
trigger1=1
value=prevstateno
;---------------------------------------------------------------------------
; Stand to Crouch
[Statedef 10]
type=C
physics=C
anim=10

[State 10,2]
type=ChangeState
trigger1=var(1)=1
trigger1=pos y<0
value=551
ctrl=1

[State 10,1]
type=VelMul
trigger1=!time
x=.75

[State 10,2]
type=ChangeState
trigger1=!animtime
value=11
;---------------------------------------------------------------------------
; Crouching
[Statedef 11]
type=C
physics=C
anim=11

[State 0, ]
type=CtrlSet
trigger1=prevstateno=11
trigger2=var(11)=1
value=1
ignorehitpause=1

[State 11,1] ;Change from turning animation
type=ChangeAnim
trigger1=Anim=6&&!AnimTime
value=11
;---------------------------------------------------------------------------
; Crouch to Stand
[Statedef 12]
type=S
physics=S
anim=12

[State 12,1]
type=ChangeState
trigger1=!AnimTime
value=0
;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type=S
physics=S
ctrl=1

[State 20,1]
type=VelSet
trigger1=command="holdfwd"
x=const(velocity.walk.fwd.x)

[State 20,2]
type=VelSet
trigger1=command="holdback"
x=const(velocity.walk.back.x)

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 10,2]
type=ChangeState
trigger1=var(1)=1
trigger1=pos y<0
value=551
ctrl=1

[State 20,3]
type=ChangeAnim
triggerall=vel x>0
trigger1=Anim!=20&&Anim!=5
trigger2=Anim=5&&!AnimTime
value=20

[State 20,4]
type=ChangeAnim
triggerall=vel x<0
trigger1=Anim!=21&&Anim!=5
trigger2=Anim=5&&!AnimTime
value=21
;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type=S
physics=S
anim=40
ctrl=0

[State 40,1]
type=VarSet
trigger1=!time
sysvar(1)=0

[State 10,2]
type=ChangeState
trigger1=var(1)=1
trigger1=pos y<0
value=551
ctrl=1

[State 40,2]
type=VarSet
trigger1=command="holdfwd"
sysvar(1)=1

[State 40,3]
type=VarSet
trigger1=command="holdback"
sysvar(1)=-1

[State 40,4]
type=VelSet
trigger1=!animtime
x=ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y=const(velocity.jump.y)

[State 40,5]
type=VelSet
trigger1=!animtime
trigger1=prevstateno=107 ;RUN_FWD
trigger1=sysvar(1)=1
x=const(velocity.runjump.fwd.x)

[State 40,5]
type=VelSet
trigger1=!animtime
trigger1=prevstateno=108 ;RUN_FWD
trigger1=sysvar(1)=-1
x=const(velocity.runjump.back.x)

[State 191, Aura]
type = Explod
triggerall = time >= 1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6110
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 40,5]
type=VelSet
trigger1=command!="holdup"
y=const(velocity.jump.y)/2

[State 40,6]
type=ChangeState
trigger1=command!="holdup"
trigger2=!animtime
value=50
ctrl=1
;---------------------------------------------------------------------------
; AirJump Start
[Statedef 45]
type=A
physics=N
ctrl=0
velset=0,0

[State 45,1]
type=ChangeAnim
trigger1=SelfAnimExist(44)
value=44

[State 45,2]
type=ChangeAnim
trigger1=!SelfAnimExist(44)
value=41

[State 45,3]
type=VarSet
trigger1=!time
sysvar(1)=0

[State 45,4]
type=VarSet
trigger1=command="holdfwd"
sysvar(1)=1

[State 45,5]
type=VarSet
trigger1=command="holdback"
sysvar(1)=-1

[State 45,6]
type=VelSet
trigger1=Time=2
x=ifelse(sysvar(1)=0,const(velocity.airjump.neu.x),ifelse(sysvar(1)=1,const(velocity.airjump.fwd.x),const(velocity.airjump.back.x)))
y=const(velocity.airjump.y)

[State 45,7]
type=ChangeState
trigger1=Time=2
value=50
ctrl=1
;---------------------------------------------------------------------------
; Jump Up
[Statedef 50]
type=A
physics=A

[State 0]
type=VelAdd
trigger1=(time=4)&&(command="holdup")&&(var(59)>0)
y=-0.7
ignorehitpause=1

[State 0]
type=VelSet
trigger1=(time=3)&&(random>100)&&(var(59)>0)
x=p2bodydist x/10
ignorehitpause=1

[State 50,1]
type=VarSet
trigger1=!time
sysvar(1)=0

[State 50,2]
type=ChangeAnim
trigger1=!time
value=ifelse(vel x=0,41,ifelse(vel x>0,42,43))

[State 50,3]
type=ChangeAnim
trigger1=Vel y>-2
trigger1=SelfAnimExist(Anim+3)
value=(Anim+3)
persistent=0

[State 0]
type=ChangeState
trigger1=(var(59)>0)&&(random>100)&&(p2bodydist x=[0,30])&&(p2bodydist y=[-70,0])
value=ifelse(random>500,410,ifelse(random>500,430,ifelse(random>500,440,ifelse(random>500,450,400))))

[State 191, Aura]
type = Explod
triggerall = time >= 1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 0]
type=ChangeState
trigger1=(var(59)>0)&&(p2bodydist y<-80)&&(vel y>0)
value=551
ctrl=1
;---------------------------------------------------------------------------
; Jump Down (empty state for compatibility)
[Statedef 51]
type=A
physics=A

[State 51,1]
type=Null
trigger1=1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type=S
physics=S
ctrl=0
anim=47

[State 52,1]
type=VelSet
trigger1=!time
y=0

[State 52,2]
type=PosSet
trigger1=!time
y=0

[State 0]
type=VarSet
trigger1=!time
var(1)=0

[State 52,3]
type=CtrlSet
trigger1=Time=3
value=1

[State 52,4]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type=S
physics=S
anim=100

[State 100,1]
type=VelSet
trigger1=1
x=const(velocity.run.fwd.x)

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 100,2] ;Prevent run from canceling into walk
type=AssertSpecial
trigger1=1
flag=NoWalk

[State 100,3] ;Prevent from turning
type=AssertSpecial
trigger1=1
flag=NoAutoTurn

[State 0]
type=Explod
trigger1=!time
anim=6015
ID=6015
pos=0,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-2,0
scale=.5,.5
removetime=-2
sprpriority=4
ownpal=1

[State 106,3]
type=MakeDust
trigger1=1
pos=-25,-2
spacing=2

[State 100,4]
type=ChangeState
trigger1=command !="holdfwd"
value=101

;---------------------------------------------------------------------------
; RUN_FWD2
[Statedef 101]
type=S
physics=S
ctrl=0
anim=101

[State 106,1]
type=VelSet
trigger1=!time
y=0

[State 106,2]
type=null;PosSet
trigger1=!time
y=0

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 106,3]
type=MakeDust
trigger1=1
pos=-25,-2
spacing=2

[State 106,4]
type=ChangeState
trigger1=Time=7
value=0
ctrl=1
;---------------------------------------------------------------------------
;Air Run Fwd
[Statedef 102]
type=S
physics=S
velset=0,0
anim=100

[State 100,1]
type=VelSet
trigger1=1
x=const(velocity.run.fwd.x)+1

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 100,2] ;Prevent run from canceling into walk
type=AssertSpecial
trigger1=1
flag=NoWalk

[State 100,3] ;Prevent from turning
type=AssertSpecial
trigger1=1
flag=NoAutoTurn

[State 100,4]
type=ChangeState
trigger1=var(1)=0
trigger1=command !="holdfwd"
value=50
ctrl=1

[State 100,4]
type=ChangeState
trigger1=var(1)=1
trigger1=command !="holdfwd"
value=551
ctrl=1
;---------------------------------------------------------------------------
;Air Run Back
[Statedef 103]
type=S
physics=S
velset=0,0
anim=105

[State 100,1]
type=VelSet
trigger1=1
x=const(velocity.run.back.x)-1

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 100,2] ;Prevent run from canceling into walk
type=AssertSpecial
trigger1=1
flag=NoWalk

[State 100,3] ;Prevent from turning
type=AssertSpecial
trigger1=1
flag=NoAutoTurn

[State 100,4]
type=ChangeState
trigger1=var(1)=0
trigger1=command !="holdback"
value=50
ctrl=1

[State 100,4]
type=ChangeState
trigger1=var(1)=1
trigger1=command !="holdback"
value=551
ctrl=1
;---------------------------------------------------------------------------
; RUN_FWD2
[Statedef 104]
type=S
physics=S
ctrl=0
anim=101

[State 106,1]
type=VelSet
trigger1=!time
y=0

[State 106,2]
type=Posadd
trigger1=!time
y=2

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 106,3]
type=MakeDust
trigger1=1
pos=-25,-2
spacing=2

[State 106,4]
type=ChangeState
trigger1=Time=7
value=0
ctrl=1
;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type=S
physics=S
anim=105

[State 105,1]
type=VelSet
trigger1=1
x=const(velocity.run.back.x)

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 100,2] ;Prevent run from canceling into walk
type=AssertSpecial
trigger1=1
flag=NoWalk

[State 0]
type=Explod
trigger1=!time
anim=6015
ID=6015
pos=0,-(floor(pos y))
postype=p1
facing=-1
bindtime=1
vel=2,0
scale=.5,.5
removetime=-2
sprpriority=5
ownpal=1

[State 106,3]
type=MakeDust
trigger1=1
pos=25,-2
spacing=2

[State 100,3] ;Prevent from turning
type=AssertSpecial
trigger1=1
flag=NoAutoTurn

[State 105,3]
type=ChangeState
trigger1=command !="holdback"
value=106

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type=S
physics=S
ctrl=0
anim=106

[State 106,1]
type=VelSet
trigger1=!time
y=0

[State 106,2]
type=null;PosSet
trigger1=!time
y=0

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 106,3]
type=MakeDust
trigger1=1
pos=25,-2
spacing=2

[State 106,4]
type=ChangeState
trigger1=Time=7
value=0
ctrl=1
;---------------------------------------------------------------------------
; Super_RUN_FWD
[Statedef 107]
type=S
physics=N
CTRL=0

[State 11,1]
type=ChangeAnim
trigger1=Anim !=100 && !time
value=100

[State 100,1]
type=VelSet
trigger1=animelem=2
x=ifelse(pos y >=0,8,12)
y=0

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 0]
type=AfterImage
trigger1=var(11)=0
trigger1=animelem=2
time=20
length=20
palcolor=256
palbright=30,30,30
palcontrast=120,120,120
paladd=10,10,10
palmul=.65,.65,.65
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=Explod
trigger1=animelem=2
anim=6015
ID=6015
pos=0,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-2,0
scale=.5,.5
removetime=-2
sprpriority=4
ownpal=1

[State 106,3]
type=MakeDust
trigger1=1
pos=-25,floor(-pos y)
spacing=2

[State 0]
type=PlayerPush
trigger1=var(59)=1
value=0
ignorehitpause=0

[State 100,2] ;Prevent run from canceling into walk
type=AssertSpecial
trigger1=1
flag=NoWalk

[State 100,3] ;Prevent from turning
type=AssertSpecial
trigger1=1
flag=NoAutoTurn

[State 100,1]
type=null;VelSet
trigger1=time>=12
trigger1=pos y>=0
x=0

[State 100,4]
type=ChangeState
trigger1=time<=12
trigger1=command="a"
value=231

[State 100,4]
type=ChangeState
trigger1=time<=12
trigger1=command="b"
value=241

[State 100,4]
type=ChangeState
trigger1=time<=12
trigger1=command="c"
value=251

[State 100,4]
type=ChangeState
trigger1=time<=12
trigger1=command="x"
value=201

[State 100,4]
type=ChangeState
trigger1=time<=12
trigger1=command="y"
value=211

[State 100,4]
type=ChangeState
trigger1=time>12
value=ifelse(pos y >=0,101,ifelse(var(1)=1,551,50))
ctrl=ifelse(pos y >=0,1,0)
;---------------------------------------------------------------------------
; Super_RUN_BACK
[Statedef 108]
type=S
physics=N
CTRL=0

[State 11,1]
type=ChangeAnim
trigger1=Anim !=105 && !time
value=105

[State 100,1]
type=VelSet
trigger1=animelem=2
x=ifelse(pos y >=0,-7.5,-11)
y=0

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 0]
type=AfterImage
trigger1=var(11)=0
trigger1=animelem=2
time=20
length=20
palcolor=256
palbright=30,30,30
palcontrast=120,120,120
paladd=10,10,10
palmul=.65,.65,.65
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=Explod
trigger1=!time
anim=6015
ID=6015
pos=0,-(floor(pos y))
postype=p1
facing=-1
bindtime=1
vel=2,0
scale=.5,.5
removetime=-2
sprpriority=4
ownpal=1

[State 106,3]
type=MakeDust
trigger1=1
pos=25,floor(-pos y)
spacing=2

[State 0]
type=PlayerPush
trigger1=var(59)=1
value=0
ignorehitpause=0

[State 100,2] ;Prevent run from canceling into walk
type=AssertSpecial
trigger1=1
flag=NoWalk

[State 100,3] ;Prevent from turning
type=AssertSpecial
trigger1=1
flag=NoAutoTurn

[State 100,1]
type=null;VelSet
trigger1=time>=12
trigger1=pos y>=0
x=0

[State 100,4]
type=ChangeState
trigger1=time>12
value=ifelse(pos y >=0,106,ifelse(var(1)=1,551,50))
ctrl=ifelse(pos y >=0,1,0)
;---------------------------------------------------------------------------
; RUN_UP
[Statedef 110]
type=S
physics=N

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 110,0]
type=CtrlSet
trigger1=!time
value=0

[State 110,1]
type=ChangeAnim
trigger1=!time
value=110

[State 110,2]
type=HitBy
trigger1=!time
value=SCA,NT,ST,HT
time=30

[State 110,3]
type=VelSet
trigger1=!time
x=0
z=-7

[State 110,4]
type=VelMul
trigger1=1
z=0.8

[State 110,5]
type=VelSet
trigger1=AnimTime=-8
z=0

[State 110,7]
type=CtrlSet
trigger1=!animtime
value=1

[State 110,8]
type=ChangeState
trigger1=!animtime
value=0

;---------------------------------------------------------------------------
; RUN_DOWN
[Statedef 115]
type=S
physics=N

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6010
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 115,0]
type=CtrlSet
trigger1=!time
value=0

[State 115,1]
type=ChangeAnim
trigger1=!time
value=110

[State 115,2]
type=HitBy
trigger1=!time
value=SCA,NT,ST,HT
time=30

[State 115,3]
type=VelSet
trigger1=!time
x=0
z=7

[State 115,4]
type=VelMul
trigger1=1
z=0.8

[State 115,5]
type=VelSet
trigger1=AnimTime=-8
z=0

[State 115,7]
type=CtrlSet
trigger1=!animtime
value=1

[State 115,8]
type=ChangeState
trigger1=!animtime
value=0
;---------------------------------------------------------------------------
;Run Down 2
[Statedef 116]
type=A
physics=A

[State 0]
type=VelAdd
trigger1=1
y=3

[State 191, Aura]
type = Explod
triggerall = time >= -1
trigger1 = timemod = 12,0
Anim = 6010
Pos = 0,0
Id = 6110
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 50,4]
type=ChangeAnim
trigger1=!time
value=44
elem=2
;---------------------------------------------------------------------------
; GUARD (start)
[Statedef 120]
type=U    ;Leave state type unchanged
physics=U ;Leave physics unchanged

[State 120,5]
type=ChangeState
triggerall=var(1)=1
trigger1=p2dist y<-70
trigger1=p2dist y>70
trigger2=p2dist x>=70
value=551
ctrl=1

[State 0]
type=VarSet
trigger1=prevstateno=551
var(1)=1

[State 0]
type=null;VelSet
trigger1=var(3)=1
x=0
y=0

[State 120,1]
type=ChangeAnim
trigger1=!time
value=(120+(statetype=C)+(statetype=A)*2)

[State 120,2]
type=StateTypeSet
trigger1=!time && statetype=S
physics=S

[State 120,3]
type=StateTypeSet
trigger1=!time && statetype=C
physics=C

[State 120,4]
type=StateTypeSet
trigger1=!time && statetype=A
physics=A

[State 120,5]
type=ChangeState
trigger1=!animtime
value=130+(statetype=C)+(statetype=A)*2

;---------------------------------------------------------------------------
; STAND GUARD (guarding)
[Statedef 130]
type=S
physics=S

[State 130,1]
type=ChangeAnim
trigger1=Anim !=130
value=130

[State 130, 2]
type = ChangeState
trigger1 = command != "holdback"
;trigger2 = !inguarddist
value = 140
;---------------------------------------------------------------------------
; CROUCH GUARD (guarding)
[Statedef 131]
type=C
physics=C

[State 131,1]
type=ChangeAnim
trigger1=Anim !=131
value=131

[State 131, 2]
type = ChangeState
trigger1 = command != "holdback"
;trigger2 = !inguarddist
value = 140
;---------------------------------------------------------------------------
; AIR GUARD (guarding)
[Statedef 132]
type=A
physics=U

[State 120,5]
type=ChangeState
triggerall=var(1)=1
trigger1=p2dist y<-70
trigger1=p2dist y>70
trigger2=p2dist x>=70
value=551
ctrl=1

[State 132,4]
type=VelSet
trigger1=var(1)=1
y=0

[State 132,1]
type=ChangeAnim
trigger1=Anim !=132
value=132

[State 132,2]
type=VelAdd
trigger1=var(3) !=1
y=Const(movement.yaccel)

[State 132,3]
type=VarSet
trigger1=var(3) !=1
sysvar(0)=(pos y>=0) && (vel y>0)

[State 132,4]
type=VelSet
trigger1=sysvar(0)
y=0

[State 132, 2]
type = ChangeState
trigger1 = command != "holdback"
;trigger2 = !inguarddist
value = 140
;---------------------------------------------------------------------------
; GUARD (end)
[Statedef 140]
type=U    ;Leave state type unchanged
physics=U ;Leave physics unchanged
ctrl=1

[State 132,4]
type=VelSet
trigger1=var(1)=1
y=0

[State 140,1]
type=ChangeAnim
trigger1=!time
value=(140+(statetype=C)+(statetype=A)*2)

[State 140,2]
type=StateTypeSet
trigger1=!time && statetype=S
physics=S

[State 140,3]
type=StateTypeSet
trigger1=!time && statetype=C
physics=C

[State 140,4]
type=StateTypeSet
trigger1=!time && statetype=A
physics=N

[State 140,Hi to Lo]
type=StateTypeSet
trigger1=statetype=S && command="holddown"
statetype=C
physics=C

[State 140,Lo to Hi]
type=StateTypeSet
trigger1=statetype=C && command !="holddown"
statetype=S
physics=S

[State 140,5] ;Implemented within engine
type=ChangeState
triggerall=var(1)=0
trigger1=!animtime
value=(statetype=C)*11+(statetype=A)*51

[State 140,5] ;Implemented within engine
type=ChangeState
triggerall=var(1)>0
trigger1=!animtime
value=(statetype=C)*11+(statetype=A)*551
;---------------------------------------------------------------------------
; SGUARDHIT (shaking)
[Statedef 150]
type=S
movetype=H
physics=N
velset=0,0

[State 5000: X]
type=varadd
trigger1=(!time)&&(fvar(3)<1)
fvar(3)=(gethitvar(damage)*0.0035)
ignorehitpause=1
persistent=0

[State 150,1]
type=ChangeAnim
trigger1=1
value=150
;---------------------|crush
[State 0, ]
type=VarAdd
trigger1=(time>=0)
var(14)=1
ignorehitpause=1
persistent=0

[State 0, ]
type=ChangeState
trigger1=(var(14)>16)
value=5005
ctrl=0
ignorehitpause=1
;---------------------|crush
[State 150,2]
type=ChangeState
trigger1=HitShakeOver
value=151+2*(command="holddown")

[State 150,Hi to Lo]
type=StateTypeSet
trigger1=statetype=S && command="holddown"
statetype=C
physics=C

[State 150,Lo to Hi]
type=StateTypeSet
trigger1=statetype=C && command !="holddown"
statetype=S
physics=S

[State 150,3]
type=ForceFeedback
trigger1=!time
waveform=square
time=3
;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type=S
movetype=H
physics=S
anim=150

[State 151,1]
type=HitVelSet
trigger1=!time
x=1

[State 151,2]
type=VelSet
trigger1=Time=GetHitVar(slidetime)
trigger2=HitOver
x=0

[State 151,3]
type=CtrlSet
trigger1=Time=GetHitVar(ctrltime)
value=1

[State 151,Hi to Lo]
type=StateTypeSet
trigger1=statetype=S && command="holddown"
statetype=C
physics=C


[State 151,Lo to Hi]
type=StateTypeSet
trigger1=statetype=C && command !="holddown"
statetype=S
physics=S

[State 151,4]
type=ChangeState
trigger1=HitOver
value=130
ctrl=1
;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type=C
movetype=H
physics=N
velset=0,0

[State 5000: X]
type=varadd
trigger1=(!time)&&(fvar(3)<1)
fvar(3)=(gethitvar(damage)*0.0035)
ignorehitpause=1
persistent=0

[State 152,1]
type=ChangeAnim
trigger1=1
value=151
;---------------------|crush
[State 0, ]
type=VarAdd
trigger1=(time>=0)
var(14)=1
ignorehitpause=1
persistent=0

[State 0, ]
type=ChangeState
trigger1=(var(14)>16)
value=5005
ctrl=0
ignorehitpause=1
;---------------------|crush
[State 152,3]
type=ChangeState
trigger1=HitShakeOver
value=151+2*(command="holddown")

[State 152,Hi to Lo]
type=StateTypeSet
trigger1=statetype=S && command="holddown"
statetype=C
physics=C

[State 152,Lo to Hi]
type=StateTypeSet
trigger1=statetype=C && command !="holddown"
statetype=S
physics=S

[State 152,4]
type=ForceFeedback
trigger1=!time
waveform=square
time=4
;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type=C
movetype=H
physics=C
anim=151

[State 153,1]
type=HitVelSet
trigger1=!time
x=1

[State 153,2]
type=VelSet
trigger1=Time=GetHitVar(slidetime)
trigger2=HitOver
x=0

[State 153,3]
type=CtrlSet
trigger1=Time=GetHitVar(ctrltime)
value=1

[State 153,Hi to Lo]
type=StateTypeSet
trigger1=statetype=S && command="holddown"
statetype=C
physics=C

[State 153,Lo to Hi]
type=StateTypeSet
trigger1=statetype=C && command !="holddown"
statetype=S
physics=S

[State 153,4]
type=ChangeState
trigger1=HitOver
value=131
ctrl=1
;---------------------------------------------------------------------------
; AGUARDHIT (shaking)
[Statedef 154]
type=A
movetype=H
physics=N
velset=0,0

[State 5000: X]
type=varadd
trigger1=(!time)&&(fvar(3)<1)
fvar(3)=(gethitvar(damage)*0.0035)
ignorehitpause=1
persistent=0

[State 154,1]
type=ChangeAnim
trigger1=1
value=152
;---------------------|crush
[State 0, ]
type=VarAdd
trigger1=(time>=0)
var(14)=1
ignorehitpause=1
persistent=0

[State 0, ]
type=ChangeState
trigger1=(var(14)>16)
value=5005
ctrl=0
ignorehitpause=1
;---------------------|crush
[State 154,2]
type=ChangeState
trigger1=HitShakeOver
value=155 ;AGUARDHIT2

[State 154,3]
type=ForceFeedback
trigger1=!time
waveform=square
time=4
;---------------------------------------------------------------------------
; AGUARDHIT2 (knocked away)
[Statedef 155]
type=A
movetype=H
physics=S
anim=152

[State 0, hit check]
type=ChangeState
trigger1=(name!="[Dizzy]'s Super Vegeta")
value=6666

[State 155, 1]
type=HitVelSet
trigger1=Time=0
x=1

[State 0, ]
type=StateTypeSet
trigger1=(!vel x&&!vel y)||(var(1)=0)
physics=N
ignorehitpause=1

[State 155, 2]
type=VelAdd
triggerall=var(1)=0
trigger1=1
y=Const(movement.yaccel)

[State 155, 3]
type=CtrlSet
trigger1=Time=GetHitVar(ctrltime)
value=1

[State 155, 4]
type=VarSet
trigger1=1
sysvar(0)=(pos y>=0) && (vel y>0)

[State 155, 5]
type=VelSet
trigger1=sysvar(0)
y=0

[State 155, 7]
type=ChangeState
triggerall=(var(1)=1)
trigger1=(sysvar(0))&&(command!="holdback")||(!vel x)||(time>20)
value=551
ctrl=1

[State 155, 7]
type=ChangeState
triggerall=!var(1)
trigger1=(sysvar(0))&&(command!="holdback")||(!vel x)||(time>20)
value=51

[State 155, 8]
type=ChangeState
trigger1=sysvar(0)
trigger1=var(8)>0
value=132
;--------------------------------------------------------------------- 
[Statedef 8001]
type=S

[State 0]
type=ChangeState
trigger1=time>1
value=8002
;---------------------------------------------------------------------------
; LOSE (Time over)
[Statedef 170]
type=S
ctrl=0
anim=170
velset=0,0

[State 170,1]
type=NotHitBy
trigger1=1
value=SCA
time=1

;---------------------------------------------------------------------------
; DRAWGAME (Time over)
[Statedef 175]
type=S
ctrl=0
velset=0,0

[State 175,1] ; If no anim,use go to lose state.
type=ChangeState
trigger1=!time
trigger1=!SelfAnimExist(175)
value=170

[State 175,2]
type=ChangeAnim
trigger1=!time
value=175

[State 175,3]
type=NotHitBy
trigger1=1
value=SCA
time=1

;---------------------------------------------------------------------------
; Winpose
[Statedef 180]
type=S
ctrl=0

[State 0]
type=AssertSpecial
trigger1=(time=[0,150])
flag=Roundnotover
ignorehitpause=1

[State 0]
type=ChangeAnim
trigger1=(anim!=180)&&(life>=700)
value=180

[State 0]
type=ChangeAnim
trigger1=(anim!=181)&&(life=[200,700])
value=181

[State 0]
type=ChangeAnim
trigger1=(anim!=5300)&&(life<200)
value=5300
;---------------------|ussj >700 life|---------------------
[State 0]
type=SprPriority
trigger1=(life>=700)
value=0

[State 0]
type=AssertSpecial
triggerall=(life>=700)
trigger1=(time=[0,250])
flag=Roundnotover
ignorehitpause=1

[State 0]
type=PlaySnd
triggerall=(anim=180)
trigger1=animelem=3,=0
value=1,0
channel=2
volume=512

[State 0]
type=Helper
triggerall=(anim=180&&numhelper(6000)=0)
trigger1=animelem=2,=0
helpertype=normal
name="aura Starter"
ID=6000
postype=p1
stateno=6000
sprpriority=999
size.xscale=.8
size.yscale=.65
keyctrl=0
ownpal=1

[State 0]
type=Helper
triggerall=(anim=180&&numhelper(6001)=0)
trigger1=animelem=3,>=0
helpertype=normal
name="aura"
ID=6001
postype=p1
stateno=6001
sprpriority=999
size.xscale=.7
size.yscale=.65
keyctrl=0
ownpal=1

[State 0]
type=EnvColor
triggerall=(anim=180)
trigger1=animelem=3
time=5
Add=255,255,255

[State 0]
type=palfX
triggerall=(anim=180)
trigger1=animelem=3,>=0
time=2
Add=50,50,50

[State 0]
type=PlaySnd
triggerall=(anim=180)
trigger1=animelem=2,=40
value=2,0
channel=3
volume=512

[State 0]
type=PlaySnd
triggerall=(anim=180)
trigger1=animelem=3,>=0
trigger1=(gametime%20)=0
value=2,1
channel=4
volume=-120

[State 0]
type=PlaySnd
triggerall=(anim=180)
trigger1=animelem=3,=0
value=3,10
channel=0

[State dust]
type=Explod
triggerall=(anim=180)
trigger1=animelem=3,=0
anim=6014
pos=0,floor(-pos y)
postype=p1
scale=1.5,0.8
sprpriority=-40
ontop=0
ownpal=1
persistent=0

[State 0]
type=Explod
triggerall=(anim=180)
trigger1=animelem=3,>=0
anim=6015
ID=666
pos=-20,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-2,0
removetime=-2
scale=.5,.5
sprpriority=10
ownpal=1
persistent=0

[State 0]
type=Explod
triggerall=(anim=180)
trigger1=animelem=3,>=0
anim=6015
ID=666
pos=20,-(floor(pos y))
postype=p1
facing=-1
bindtime=1
vel=2,0
removetime=-2
sprpriority=10
scale=.5,.5
ownpal=1
persistent=0

[State 0]
type=Projectile
trigger1=(anim=181)&&(animelem=7)
ProjID=182
projanim=182
projscale=1,1
projremovetime=20
velocity=-7,9
projsprpriority=20
offset=-3,-58
postype=p1
ignorehitpause=1

;---------------------------------------------------------------------------
; PREINTRO
[Statedef 190]
type=S
ctrl=0
velset=0,0

[State 0]
type=AssertSpecial
trigger1=time=[0,400]
flag=intro
ignorehitpause=1

[State 190,2]
type=ChangeState
trigger1=!time
value=ifelse(var(58)=0,191,192)
;---------------------------------------------------------------------------
; INTRO1
[Statedef 191]
type=S
ctrl=0
anim=190

[State 0]
type=AssertSpecial
trigger1=(1)
flag=intro
flag2=nobardisplay
ignorehitpause=1

[State 551: Floating code]
type=PosAdd
trigger1=(var(1)<1)&&(pos y<0)
trigger1=(0&&var(1):=var(1)+1)
trigger2=(time>=525)&&(anim=24)&&(pos y<0)
y=ifelse(var(3)=1,0.1,-0.1)

[State 0, ]
type=ChangeAnim
trigger1=(time>=325)&&(anim!=24)&&(pos y<0)
value=24

[State 0]
type=PalFX
trigger1=(time=[9,20])
trigger1=(var(17)<21)&&(var(17):=(var(17)+1))
time=1
add=(-255+((var(17))*32)),(-255+((var(17))*32)),(-255+((var(17))*32))
ownpal=1
color=256
ignorehitpause=1

[State 0]
type=PalFX
trigger1=(time=[145,550])
time=1
add=50,50,50

[State 0]
type=AllPalFX
trigger1=(time=[400,450])
time=1
add=(time-400)*32,(time-400)*32,(time-400)*32
ownpal=1
ignorehitpause=1

[State 0]
type=EnvColor
trigger1=(time=[290,400])&&(random>980)
value=255,255,255
time=1
ignorehitpause=1
;===========================[Helpers]=========================
[State 0]
type=Helper
trigger1=(time=[130,145])&&(numhelper(6190)=0)
helpertype=normal
name="aura Starter"
ID=6190
postype=p1
facing=1
stateno=6190
sprpriority=999
size.xscale=.5
size.yscale=.65
keyctrl=0
ownpal=1
[State 0]
type=Helper
trigger1=(time=[145,150])&&(numhelper(6191)=0)
helpertype=normal
name="aura"
ID=6191
postype=p1
facing=1
stateno=6191
sprpriority=999
size.xscale=.5
size.yscale=.65
keyctrl=0
ownpal=1
[State 0]
type=Helper
trigger1=(time=[285,290])&&(numhelper(6191)=0)
helpertype=normal
name="aura"
ID=6191
postype=p1
facing=1
stateno=6191
size.xscale=.7
size.yscale=.65
keyctrl=0
ownpal=1
[State 0]
type=Helper
trigger1=(time=[400,410])&&(numhelper(6197)=0)
helpertype=normal
name="aura"
ID=6197
postype=p1
facing=1
stateno=6197
size.xscale=.6
size.yscale=.65
keyctrl=0
ownpal=1
[State 0]
type=Helper
trigger1=(time=390&&numhelper(6196)=0)
helpertype=normal
name="pillar"
ID=6196
postype=p1
facing=1
stateno=6196
sprpriority=4
size.xscale=1
size.yscale=1
keyctrl=0
ownpal=1
;===========================[/Helpers]========================
;===========================[Explods]=========================
[State waves]
type=Explod
trigger1=(time=[285,400])&&((gametime%20)=0)
anim=6040
pos=0,floor(-pos y)
postype=p1
scale=1.1,0.8
sprpriority=-990
removetime=-2
ontop=0
ownpal=1

[State 191: horiz. dust]
type=Explod
trigger1=(time=145)
anim=6015
ID=666
pos=-20,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-2,0
removetime=-2
scale=.5,.5
sprpriority=10
ownpal=1
persistent=0
[State 191: horiz. dust]
type=Explod
trigger1=(time=145)
anim=6015
ID=666
pos=20,-(floor(pos y))
postype=p1
facing=-1
bindtime=1
vel=2,0
removetime=-2
sprpriority=10
scale=.5,.5
ownpal=1
persistent=0

[State 191: vert. dust]
type=Explod
trigger1=(time=145)
anim=6014
pos=0,floor(-pos y)
postype=p1
scale=1.5,0.8
sprpriority=-40
removetime=-2
ontop=0
ownpal=1
persistent=0

[State 191: vert. dust]
type=Explod
trigger1=(time=[285,400])&&((gametime%10)=0)
anim=6014
pos=0,floor(-pos y)
postype=p1
scale=1.0,0.8
sprpriority=-40
ontop=0
ownpal=1

[State 191: horiz. dust back]
type=Explod
trigger1=(time=[285,400])&&(gametime%9=0)&&(pos y>-90)
anim=6015
ID=666
pos=-50,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-4,0
removetime=-2
scale=.5,.5
sprpriority=10
ownpal=1
[State 191: horiz. dust back 2]
type=Explod
trigger1=(time=[285,400])&&(gametime%9=0)&&(pos y>-90)
anim=6015
ID=666
pos=-10,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-4,0
removetime=-2
scale=1,1
sprpriority=10
ownpal=1

[State 191: horiz. dust forw]
type=Explod
trigger1=(time=[285,400])&&(gametime%9=0)&&(pos y>-90)
anim=6015
ID=666
pos=10,-(floor(pos y))+10
postype=p1
facing=-1
bindtime=1
vel=4,0
removetime=-2
scale=.5,.5
sprpriority=10
ownpal=1
[State 191: horiz. dust forw]
type=Explod
trigger1=(time=[285,400])&&(gametime%9=0)&&(pos y>-90)
anim=6015
ID=666
pos=50,-(floor(pos y))+10
postype=p1
facing=-1
bindtime=1
vel=4,0
removetime=-2
scale=1,1
sprpriority=10
ownpal=1

[State 0,circle]
type=Explod
trigger1=time=350
trigger2=time=[380,480]
trigger2=(0&&fvar(0):=fvar(0)+0.35)
anim=6045
ID=6045
pos=0,-40
postype=p1
facing=1
bindtime=1
removetime=60
scale=fvar(0),fvar(0)
sprpriority=-1
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=ModifyExplod
trigger1=time=[380,480]
ID=6045
ownpal=1
scale=fvar(0),fvar(0)
ignorehitpause=1
;===========================[/Explods]========================
;============================[Shake]=========================
[State 0]
type=EnvShake
trigger1=(time=[145,155])&&(gametime%10=0)
time=10
freq=250
ampl=-8

[State 0]
type=EnvShake
trigger1=(time=[285,500])
trigger1=((gametime%10)=0)
time=10
freq=260
ampl=-6
;============================[/Shake]=========================
;============================[Sounds]=========================
[State 0]
type=PlaySnd
trigger1=(time=20)
value=2,2
channel=3
persistent=0

[State 0, ]
type=PlaySnd
trigger1=time=450
value=1,12
volume=255

[State 0, ]
type=Null
trigger1=time=[390,600]
trigger1=(0&&fvar(2):=fvar(2)+0.08)
trigger1=gametime%6=0

[State 0, ]
type=PlaySnd
trigger1=time=[390,599]
trigger1=gametime%6=0
trigger2=!time
trigger2=(0&&fvar(2):=1)
value=1,5
channel=7
freqmul=fvar(2)
volume=100

[State 0, ]
type=StopSnd
trigger1=time>=500
channel=7

[State 0, ]
type=PlaySnd
trigger1=time=380
value=1,4
channel=7
volume=255

[State 0, ]
type=null;PlaySnd
trigger1=time=450
value=1,8
channel=6
volume=255

[State 0]
type=PlaySnd
trigger1=(time>285)&&(roundstate<2)&&(gametime%50=0)
value=1,7
channel=15
volume=100
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=time=130
value=2,0
channel=16
persistent=0

[State 0]
type=StopSnd
trigger1=(stateno!=191)
channel=15
ignorehitpause=1

[State 191: Scream]
type=PlaySnd
trigger1=(time=285)
value=3,10
channel=1
volume=255

[State 191: Scream]
type=null;PlaySnd
trigger1=(time=295)
value=3,7
channel=0
volume=255
;===========================[/Sounds]=========================
[State 191,1]
type=ChangeState
trigger1=time>=690
trigger2=(var(58)=0)
trigger2=(0&&var(58):=1);var(59)+1)
value=ifelse((pos y>=0),0,551)
;---------------------------------------------------------------------------
; INTRO2
[Statedef 192]
type=S
ctrl=0
anim=191

[State 0]
type=AssertSpecial
trigger1=1
flag=intro
ignorehitpause=1

[State 191,1]
type=ChangeState
trigger1=(Time>92)
value=5900
;--------------------------------------------------------------
[Statedef 200:LP]
type=S
movetype=A
physics=S
sprpriority=0
velset=0,0
juggle=4
anim=200
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.06)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=(animelem=2)
value=0,0

[State 0]
type=PowerAdd
trigger1=(animelem=2)
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=47,-45
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Light
priority=4,Hit
damage=32,11
pausetime=11,7
guard.pausetime=8,8
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=15
ground.hittime=14
ground.velocity=-4,0
guard.velocity=-2
air.velocity=-2,-1
airguard.velocity=-2,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=(!animtime)
value=0
ctrl=1
;--------------------------------------------------------------
;LP - dash
[Statedef 201]
type=S
movetype=A
physics=S
sprpriority=0
juggle=4
anim=201
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.06)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,0

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=Velset
trigger1=!time
y=0
ignorehitpause=1

[State 0]
type=VelAdd
trigger1=!time
x=10
ignorehitpause=1

[State 0]
type=VelAdd
trigger1=movehit
x=4
ignorehitpause=1
persistent=0

[State 0]
type=PlayerPush
trigger1=time>2
value=0
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=47,-45
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Light
priority=4,Hit
damage=32,11
pausetime=11,7
guard.pausetime=8,8
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=15
ground.hittime=14
ground.velocity=-4,0
guard.velocity=-2
air.velocity=-2,-1
airguard.velocity=-2,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;--------------------------------------------------------------
;MP
[Statedef 210]
type=S
movetype=A
physics=S
sprpriority=0
velset=0,0
juggle=4
anim=210
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.08)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,1

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=VelAdd
trigger1=animelem=2
x=1.3
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=47,-41
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Medium
priority=4,Hit
damage=44,13
pausetime=14,10
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=15
ground.hittime=14
ground.velocity=-5,0
guard.velocity=-3
air.velocity=-2.3,-1
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;--------------------------------------------------------------
;MP - dash
[Statedef 211]
type=S
movetype=A
physics=N
sprpriority=0
anim=211
juggle=4
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.08)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,1

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=VelAdd
trigger1=animelem=2
x=8
ignorehitpause=1

[State 0]
type=VelAdd
trigger1=movehit
x=4
ignorehitpause=1
persistent=0

[State 0]
type=StateTypeSet
trigger1=animelem=2
physics=S
ignorehitpause=1

[State 0]
type=PlayerPush
trigger1=time>5
value=0
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=37,-48
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Medium
priority=4,Hit
damage=44,13
pausetime=14,10
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=15
ground.hittime=14
ground.velocity=-5,0
guard.velocity=-3
air.velocity=-2.3,-2
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime||!vel x
value=0
ctrl=1
;--------------------------------------------------------------
;HP
[Statedef 220]
type=S
movetype=A
physics=S
sprpriority=0
velset=0,0
juggle=4
anim=220
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,7

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=VelAdd
trigger1=animelem=2
x=ifelse(prevstateno=210,6,3)
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=47,-41
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Medium
priority=4,Hit
damage=44,13
pausetime=14,10
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=15
ground.hittime=14
ground.velocity=ifelse(prevstateno=210,-7,-4),ifelse(prevstateno=210,-4,0)
guard.velocity=-3
air.velocity=ifelse(prevstateno=210,-4,-2.3),ifelse(prevstateno=210,-3,-1)
airguard.velocity=-1,-1
fall=ifelse(prevstateno=210,1,0)
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;------------------------------------------------------------
;Fireball
[Statedef 225]
type=S
movetype=A
physics=S
velset=0,0
sprpriority=0
PowerAdd=10
ctrl=0

[State 0]
type=VarSet
trigger1=!time
var(8)=ifelse(var(8)=0,1,0)
persistent=0

[State 0]
type=ChangeAnim
trigger1=!time
value=ifelse(var(8)=0,225,226)

[State 0]
type=PlaySnd
trigger1=animelem=2
value=1,9

[State 0]
type=PlaySnd
trigger1=animelem=2
value=1,10

[State 0]
type=PlaySnd
trigger1=animelem=2
value=3,6
channel=0

[State 0]
type=Helper
trigger1=(animelem=2)
helpertype=normal
name="Wave"
ID=521
pos=0,0
postype=p1
stateno=521
keyctrl=0
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=Helper
trigger1=animelem=2
helpertype=normal
name="fireball"
ID=227
pos=25,-44
postype=p1
facing=1
stateno=227
keyctrl=0
ownpal=1
sprpriority=1000
size.xscale=0.4
size.yscale=0.4
size.ground.back=6
size.ground.front=6
size.air.back=6
size.air.front=6

[State 0]
type=ChangeState
trigger1=(!animtime)
value=0
ctrl=1
;--------------------------------------------------------------
;LK
[Statedef 230]
type=S
movetype=A
physics=S
sprpriority=0
velset=0,0
juggle=4
anim=230
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.06)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,0

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=VelAdd
trigger1=animelem=2
x=1.7
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=48,-61
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Light
priority=4,Hit
damage=36,11
pausetime=11,7
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-56
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=15
ground.hittime=14
ground.velocity=-5,0
guard.velocity=-3
air.velocity=-2.3,-2
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;--------------------------------------------------------------
;LK - dash
[Statedef 231]
type=S
movetype=A
physics=S
sprpriority=0
juggle=4
anim=230
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.06)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,0

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=VelAdd
trigger1=animelem=2
x=1
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=48,-61
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Light
priority=4,Hit
damage=36,11
pausetime=11,7
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-56
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=15
ground.hittime=14
ground.velocity=-5,0
guard.velocity=-3
air.velocity=-2.3,-2
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;--------------------------------------------------------------
;MK
[Statedef 240]
type=S
movetype=A
physics=S
sprpriority=0
velset=0,0
juggle=4
anim=240
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.08)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,1

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=VelAdd
trigger1=animelem=2
x=ifelse(prevstateno=230,6.7,2)
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=38,-57
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Medium
priority=4,Hit
damage=45,14
pausetime=14,10
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=18
ground.hittime=17
ground.velocity=-6,0
guard.velocity=-4
air.velocity=-2.4,-1
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;--------------------------------------------------------------
;MK - dash
[Statedef 241]
type=S
movetype=A
physics=S
sprpriority=0
anim=240
juggle=4
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.08)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,1

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=VelAdd
trigger1=animelem=2
x=4
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=38,-57
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Hard
priority=4,Hit
damage=45,14
pausetime=14,10
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=18
ground.hittime=17
ground.velocity=-6,0
guard.velocity=-4
air.velocity=-2.4,-1
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;--------------------------------------------------------------
;HK
[Statedef 250]
type=S
movetype=A
physics=S
sprpriority=0
velset=0,0
anim=250
juggle=4
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,7

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=StateTypeSet
trigger1=animelem=2
statetype=A
physics=A
ignorehitpause=1

[State 0]
type=VelAdd
trigger1=animelem=2
x=ifelse(prevstateno=240,6.3,.7)
y=-3
ignorehitpause=1

[State 0]
type=StateTypeSet
trigger1=vel y>0
movetype=I
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=25,-51
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Light
priority=4,Hit
damage=60,15
pausetime=14,10
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-52
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=18
ground.hittime=17
ground.velocity=ifelse(prevstateno=240,-5,-2),-3
guard.velocity=-3
air.velocity=-3.1,-4
airguard.velocity=-1,-1
fall=ifelse(prevstateno=240,1,0)
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=var(1)=1
trigger1=time>23
value=551
ctrl=1
;--------------------------------------------------------------
;HK - dash
[Statedef 251]
type=S
movetype=A
physics=S
sprpriority=0
anim=250
juggle=4
hitcountpersist=1
ctrl=0

[State 0, ]
type=Null
trigger1=(movehit);animelem=2,=0)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,7

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=StateTypeSet
trigger1=animelem=2
statetype=A
physics=A
ignorehitpause=1

[State 0]
type=VelAdd
trigger1=animelem=2
x=.7
y=-4
ignorehitpause=1

[State 0]
type=StateTypeSet
trigger1=vel y>0
movetype=I
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=25,-51
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Light
priority=4,Hit
damage=60,15
pausetime=14,10
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-52
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=18
ground.hittime=17
ground.velocity=-2,-6
guard.velocity=-3
air.velocity=-3.1,-8
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=(command="holdup")&&(movehit)
value=50
ctrl=1

[State 0]
type=VelAdd
trigger1=(command="holdup")&&(movehit)
y=-3
persistent=0

[State 0]
type=ChangeState
trigger1=var(1)=1
trigger1=time>23
value=551
ctrl=1
;--------------------------------------------------------------
;Sonic Kick
[Statedef 252]
type=S
movetype=A
physics=S
sprpriority=0
velset=0
anim=250
juggle=4
airjuggle=4
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.12)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,7

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=StateTypeSet
trigger1=animelem=2
statetype=A
physics=A
ignorehitpause=1

[State 0]
type=VelAdd
trigger1=animelem=2
x=5
y=-11
ignorehitpause=1
persistent=0

[State 0]
type=Veladd
trigger1=time=[10,23]
trigger1=vel x>0
x=-0.35

[State 0]
type=StateTypeSet
trigger1=vel y>0
movetype=I
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=25,-51
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=A,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Hard
priority=6,Hit
damage=72,20
pausetime=14,10
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-52
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=18
ground.hittime=17
ground.velocity=-1,-9
guard.velocity=-3
air.velocity=-1,-6
fall=1
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
air.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
down.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
guard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
airguard.cornerpush.veloff=ifelse(var(11)=0,-8,-10)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=(time>10&&vel y>0)
value=50
ctrl=1
;--------------------------------------------------------------
;LPc
[Statedef 300]
type=C
movetype=A
physics=C
sprpriority=0
velset=0,0
anim=300
juggle=1
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.06)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,0

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=35,-29
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=C,NA
hitflag=MAF
guardflag=LA
affectteam=E
animtype=Light
priority=4,Hit
damage=32,11
pausetime=11,11
guard.pausetime=8,8
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=Low
ground.slidetime=15
ground.hittime=14
ground.velocity=-4,0
guard.velocity=-2
air.velocity=-1,-2
airguard.velocity=-2,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=11
ctrl=1
;--------------------------------------------------------------
;MPc
[Statedef 310]
type=C
movetype=A
physics=C
sprpriority=0
velset=0,0
anim=310
juggle=1
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.08)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,1

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=35,-29
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=C,NA
hitflag=MAF
guardflag=LA
affectteam=E
animtype=Light
priority=4,Hit
damage=44,13
pausetime=14,14
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=Low
ground.slidetime=15
ground.hittime=14
ground.velocity=-6,0
guard.velocity=-3
air.velocity=-1,-2
airguard.velocity=-2,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=11
ctrl=1
;--------------------------------------------------------------
;HPc
[Statedef 320]
type=C
movetype=A
physics=C
sprpriority=0
velset=0,0
juggle=2
anim=320
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,7

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=35,-52
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=C,NA
hitflag=MAF
guardflag=LA
affectteam=E
animtype=Medium
priority=4,Hit
damage=55,15
pausetime=16,16
guard.pausetime=12,12
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=Low
ground.slidetime=15
ground.hittime=14
ground.velocity=-8,0
guard.velocity=-4
air.velocity=-1.4,-2
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0


[State 0]
type=ChangeState
trigger1=(time>=15)&&(command="holdup")&&(movehit)
trigger2=(time>=15)&&(movehit)&&var(59)>0
value=707;711
ctrl=1

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;--------------------------------------------------------------
;LKc
[Statedef 330]
type=C
movetype=A
physics=C
sprpriority=0
velset=0,0
juggle=1
anim=330
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.06)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,0

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=35,-35
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=C,NA
hitflag=MAF
guardflag=LA
affectteam=E
animtype=Light
priority=4,Hit
damage=36,11
pausetime=14,14
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-56
hitsound=S0,2
guardsound=S0,3
ground.type=Low
ground.slidetime=15
ground.hittime=14
ground.velocity=-5,0
guard.velocity=-3
air.velocity=-1.4,-2
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=11
ctrl=1

;--------------------------------------------------------------
;MKc
[Statedef 340]
type=C
movetype=A
physics=C
sprpriority=0
velset=0,0
anim=340
juggle=2
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.08)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,1

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=41,-7
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=C,NA
hitflag=MAF
guardflag=LA
affectteam=E
animtype=Medium
priority=4,Hit
damage=45,14
pausetime=14,14
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=Low
ground.slidetime=18
ground.hittime=17
ground.velocity=-6,0
guard.velocity=-4
air.velocity=-1.4,-2
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=11
ctrl=1
;--------------------------------------------------------------
;HKc
[Statedef 350]
type=C
movetype=A
physics=C
sprpriority=0
velset=0,0
anim=350
juggle=3
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,7

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0]
type=VelAdd
trigger1=animelem=2
x=4
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=41,-7
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=(!time)
attr=C,NA
hitflag=MAF
guardflag=LA
affectteam=E
animtype=Hard
priority=4,Hit
damage=45,14
pausetime=14,14
guard.pausetime=10,10
sparkno=-1
guard.sparkno=-1
sparkxy=0,-38
hitsound=S0,2
guardsound=S0,3
ground.type=Low
fall=1
ground.slidetime=18
ground.hittime=17
ground.velocity=-1.6,-2
guard.velocity=-1
air.velocity=-1.4,-2
airguard.velocity=-1,-1
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=!animtime
value=11
ctrl=1
;--------------------------------------------------------------
;LPa
[Statedef 400]
type=A
movetype=A
physics=A
sprpriority=0
juggle=1
anim=400
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.06)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,0

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=55,-11
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=A,NA
hitflag=MAF
guardflag=HA
affectteam=E
animtype=Light
priority=4,Hit
damage=32,11
pausetime=7,7
sparkno=-1
guard.sparkno=-1
sparkxy=-20,0
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=5
ground.hittime=5
ground.velocity=-2
air.velocity=-1,-4
fall=0
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=(var(59)>0)&&(random>100)&&(movehit)
value=ifelse(random>500,410,ifelse(random>500,430,ifelse(random>500,440,450)))

[State 0]
type=ChangeState
trigger1=!animtime
value=50
ctrl=1
;--------------------------------------------------------------
;MPa
[Statedef 410]
type=A
movetype=A
physics=A
sprpriority=0
juggle=1
anim=410
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.08)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,0

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=55,-11
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=A,NA
hitflag=MAF
guardflag=HA
affectteam=E
animtype=Light
priority=4,Hit
damage=42,11
pausetime=8,8
sparkno=-1
guard.sparkno=-1
sparkxy=-20,0
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=5
ground.hittime=5
ground.velocity=-2
air.velocity=-1,-4
fall=0
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=(var(59)>0)&&(random>100)&&(movehit)
value=ifelse(random>500,410,ifelse(random>500,430,ifelse(random>500,440,450)))

[State 0]
type=ChangeState
trigger1=!animtime
value=50
ctrl=1
;--------------------------------------------------------------
;HPa
[Statedef 420]
type=A
movetype=A
physics=A
sprpriority=0
juggle=2
anim=420
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,1

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=19,-11
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=A,NA
hitflag=MAF
guardflag=HA
affectteam=E
animtype=Medium
priority=4,Hit
damage=54,13
pausetime=9,9
sparkno=-1
guard.sparkno=-1
sparkxy=0,-2
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=5
fall=1
ground.hittime=5
ground.velocity=-2
air.velocity=-4,8
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
fall=0

[State 0]
type=ChangeState
trigger1=(var(59)>0)&&(random>100)&&(movehit)
value=ifelse(random>500,400,ifelse(random>500,430,ifelse(random>500,440,450)))

[State 0]
type=ChangeState
trigger1=!animtime
value=50
ctrl=1
;------------------------------------------------------------
;Fireball #1
[Statedef 425]
type=A
movetype=A
physics=A
sprpriority=0
anim=425
ctrl=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=1,9

[State 0]
type=PlaySnd
trigger1=animelem=2
value=1,10

[State 0]
type=PlaySnd
trigger1=animelem=2
value=3,6
channel=0

[State 0]
type=VelAdd
trigger1=pos y>=-140
trigger1=animelem=2
y=-4
ignorehitpause=1

[State 0]
type=Helper
trigger1=(animelem=2)
helpertype=normal
name="Wave"
ID=522
pos=0,0
postype=p1
stateno=522
keyctrl=0
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=Helper
trigger1=animelem=2
helpertype=normal
name="fireball"
ID=425
pos=11,-13
postype=p1
facing=1
stateno=425
keyctrl=0
ownpal=1
sprpriority=1000
size.xscale=0.4
size.yscale=0.4
size.ground.back=6
size.ground.front=6
size.air.back=6
size.air.front=6

[State 0]
type=ChangeState
triggerall=time>5
trigger1=command="z"
trigger2=var(59)=1&&random>880&&power>240&&(p2bodydist x=[20,-20])
value=426

[State 0]
type=ChangeState
trigger1=!animtime
value=50
ctrl=1
;------------------------------------------------------------
;Fireball #2
[Statedef 426]
type=A
movetype=A
physics=A
sprpriority=0
anim=426
ctrl=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=1,9

[State 0]
type=PlaySnd
trigger1=animelem=2
value=1,10

[State 0]
type=PlaySnd
trigger1=animelem=2
value=3,6
channel=0

[State 0]
type=VelAdd
trigger1=pos y>=-140
trigger1=animelem=2
y=-4
ignorehitpause=1

[State 0]
type=Helper
trigger1=(animelem=2)
helpertype=normal
name="Wave"
ID=522
pos=0,0
postype=p1
stateno=522
keyctrl=0
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=Helper
trigger1=animelem=2
helpertype=normal
name="fireball"
ID=425
pos=-11,-13
postype=p1
facing=1
stateno=425
keyctrl=0
ownpal=1
sprpriority=1000
size.xscale=0.4
size.yscale=0.4
size.ground.back=6
size.ground.front=6
size.air.back=6
size.air.front=6

[State 0]
type=ChangeState
triggerall=time>5
trigger1=command="z"
trigger2=var(59)=1&&random>880&&power>240&&(p2bodydist x=[20,-20])
value=425

[State 0]
type=ChangeState
trigger1=!animtime
value=50
ctrl=1
;--------------------------------------------------------------
;LKa
[Statedef 430]
type=A
movetype=A
physics=A
sprpriority=0
juggle=1
anim=450
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.06)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,0

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=19,-9
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=A,NA
hitflag=MAF
guardflag=HA
affectteam=E
animtype=Light
priority=4,Hit
damage=36,11
pausetime=7,7
sparkno=-1
guard.sparkno=-1
sparkxy=0,-2
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=5
ground.hittime=5
ground.velocity=-2
air.velocity=-1,-4
fall=0
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=(var(59)>0)&&(random>100)&&(movehit)
value=ifelse(random>500,400,ifelse(random>500,410,ifelse(random>500,440,450)))

[State 0]
type=ChangeState
trigger1=!animtime
value=50
ctrl=1

;--------------------------------------------------------------
;MKa
[Statedef 440]
type=A
movetype=A
physics=A
sprpriority=0
juggle=2
anim=450
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.08)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,1

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=19,-9
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=A,NA
hitflag=MAF
guardflag=HA
affectteam=E
animtype=Medium
priority=4,Hit
damage=45,14
pausetime=8,8
sparkno=-1
guard.sparkno=-1
sparkxy=0,-2
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=5
ground.hittime=5
ground.velocity=-2
air.velocity=-1,-4
fall=0
persistent=0
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)

[State 0]
type=ChangeState
trigger1=(var(59)>0)&&(random>100)&&(movehit)
value=ifelse(random>500,400,ifelse(random>500,410,ifelse(random>500,430,450)))

[State 0]
type=ChangeState
trigger1=!animtime
value=50
ctrl=1

;--------------------------------------------------------------
;HKa
[Statedef 450]
type=A
movetype=A
physics=A
sprpriority=0
juggle=3
anim=450
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,7

[State 0]
type=PowerAdd
trigger1=animelem=2
value=ifelse(var(16)=1,0,ifelse(random>500,27,ifelse(random>500,37,ifelse(random>500,47,ifelse(random>500,57,43)))))

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=19,-9
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=A,NA
hitflag=MAF
guardflag=HA
affectteam=E
animtype=Hard
priority=4,Hit
damage=60,15
pausetime=9,9
sparkno=-1
guard.sparkno=-1
sparkxy=0,-2
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=5
ground.hittime=5
ground.velocity=-2
air.velocity=-5,8
fall=1
ground.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
air.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
down.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
guard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
airguard.cornerpush.veloff=ifelse(var(11)=0,-4,-8)
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
persistent=0

[State 0]
type=ChangeState
trigger1=(var(59)>0)&&(random>100)&&(movehit)
value=ifelse(random>500,410,ifelse(random>500,430,ifelse(random>500,440,400)))

[State 0]
type=ChangeState
trigger1=!animtime
value=50
ctrl=1
;--------------------------------------------------------------
;------------------------------------------------------------
[Statedef 550: Start flying]
type=S
movetype=I
physics=S
velset=0,0
anim=23
ctrl=0

[State 550: VelAdd]
type=VelAdd
trigger1=(animelem=4)
x=ifelse(command="holdback",-15,ifelse(command="holdfwd",15,0))
y=ifelse((command="holdback"||command="holdfwd"),-9,-6)

[State 550: ChangeAnim]
type=ChangeAnim
trigger1=(command="holdback"||command="holdfwd")&&(animelem=4)
value=ifelse(command="holdback",28,ifelse(command="holdfwd",27,anim))
elem=ifelse((command="holdback"||command="holdfwd"),1,animelemno(0))

[State 0]
type=PlaySnd
trigger1=animelem=4
value=0,4
channel=8

[State 0]
type=PlaySnd
trigger1=animelem=4
value=3,4
channel=0

[State 550: ChangeState]
type=ChangeState
trigger1=(pos y<0&&var(1)<1)
trigger1=(0&&var(1):=var(1)+1)
trigger2=(time>30)
value=551
;---------------------------------------------------------------------------
;Fly
[Statedef 551]
type=A
movetype=I
physics=N
velset=0,0

[State 0, ]
type=CtrlSet
trigger1=prevstateno=551
trigger2=var(11)=1
value=1
ignorehitpause=1

[State 551: Choose Anim]
type=ChangeAnim
trigger1=1
trigger2=(Var(59)>0)&&(Vel X=0)&&(Vel Y=0)
trigger3=(Var(59)=0)&&(Vel X=0)&&(Vel Y=0)
value=ifelse(command="holdfwd",27,ifelse(command="holdback",28,ifelse(command="holdup",25,ifelse(command="holddown",26,24))))

[State 551: Accelerate]
type=VelAdd
trigger1=(command="holdup"||command="holddown")&&(vel y>=-8&&vel y<=8)
y=ifelse(command="holdup",-.5,.5)
[State 551: Accelerate]
type=VelAdd
trigger1=(command="holdfwd"||command="holdback")&&(vel x>=-8&&vel x<=8)
x=ifelse(command="holdfwd",.5,-.5)

[State 551: slowdown]
type=VelAdd
trigger1=(command!="holdup")&&(vel y<0)
y=0.5
[State 551: slowdown]
type=VelAdd
trigger1=(command!="holddown")&&(vel y>0)
y=-0.5
[State 551: slowdown]
type=VelAdd
trigger1=(command!="holdfwd")&&(vel x>0)
x=-0.5
[State 551: slowdown]
type=VelAdd
trigger1=(command!="holdback")&&(vel x<0)
x=0.5

[State 551: Turn around]
type=Turn
trigger1=(P2dist X<-12)

[State 551: Offscreen block]
type=VelSet
trigger1=(ScreenPos Y<0&&Vel Y<0)
y=0

[State 551: AI]
type=VelSet
trigger1=(Var(59)>0)
x=p2bodydist x/20
y=p2bodydist y/40

[State 551: Floating code]
type=PosAdd
trigger1=(var(1)<1)
trigger1=(0&&var(1):=var(1)+1)
trigger2=(pos y<0)
y=ifelse(var(3)=1,0.1,-0.1)

[State 191, Aura]
type = Explod
triggerall = time >= 1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6110
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 551: Air Block]
type=ChangeState
trigger1=(p2movetype=A&&p2dist x<70&&p2dist y>-70&&p2dist y<70&&command="holdback")
value=132

[State 551: Land]
type=ChangeState
trigger1=(Var(1)=1&&(Pos Y>=0||Win))
value=50
ctrl=1
;--------------------------------------------------------------
; Charge
[Statedef 700]
type=S
movetype=I
physics=N
velset=0,0
ctrl=0

[State 0]
type=ChangeAnim
trigger1=!time
value=ifelse(pos y>=0,700,707)

[State 0]
type=PlaySnd
trigger1=!time
value=1,0
channel=2
volume=512

[State 0]
type=PlaySnd
trigger1=!time
value=2,0
channel=3
volume=512

[State 0]
type=Helper
trigger1=!time&&numhelper(6000)=0
helpertype=normal
name="aura Starter"
ID=6000
postype=p1
facing=1
stateno=6000
sprpriority=999
size.xscale=0.6
size.yscale=0.6
keyctrl=0
ownpal=1

[State 0,Floating code]
type=PosAdd
trigger1=pos y<0
y=ifelse(var(3)=1,0.1,-0.1)

[State 0]
type=EnvColor
trigger1=time=13
time=4
value=255,255,255

[State 0: anim]
type=ChangeAnim
trigger1=time=13
value=701

[State 0]
type=ChangeState
trigger1=time=13
value=701
;---------------------------------------------------------------------------
; Charge 2
[Statedef 701]
type=S
movetype=I
physics=N
velset=0,0
ctrl=0

[State 0: varset]
type=Null
triggerall=(!time&&!var(18))
trigger1=(0&&var(17):=0)
trigger2=(0&&var(18):=0)
ignorehitpause=1

[State 0]
type=VarAdd
trigger1=1
var(17)=1
ignorehitpause=1

[State 0]
type=AssertSpecial
trigger1=var(17)=[1,5]
flag=globalnoshadow
ignorehitpause=1

[State 0]
type=VarRandom
trigger1=var(17)<=10
v=10
range=-100,100
ignorehitpause=1

[State 0]
type=Helper
trigger1=var(17)=[0,8]
trigger1=pos y>=0
helpertype=normal
name="Rock"
ID=6192
postype=p1
pos=var(10),floor(-pos y)-2
facing=1
stateno=6195
sprpriority=ifelse(random>500,-20,20)
size.xscale=ifelse(random>500,0.4,ifelse(random>500,0.5,ifelse(random>500,0.6,ifelse(random>500,0.7,ifelse(random>500,0.8,ifelse(random>500,0.9,1.0))))))
size.yscale=ifelse(random>500,0.4,ifelse(random>500,0.5,ifelse(random>500,0.6,ifelse(random>500,0.7,ifelse(random>500,0.8,ifelse(random>500,0.9,1.0))))))
keyctrl=0
ownpal=1

[State 0]
type=PlaySnd
trigger1=var(17)>=20
trigger1=(gametime%20)=0
value=2,1
channel=4
volume=-120

[State 0]
type=PlaySnd
trigger1=(var(58)=0)&&(var(17)=200)
value=3,3
channel=0

[State 0]
type=Helper
trigger1=var(17)>=0&&numhelper(6001)=0
helpertype=normal
name="aura"
ID=6001
postype=p1
facing=1
stateno=6001
sprpriority=999
size.xscale=.7
size.yscale=.65
keyctrl=0
ownpal=1

[State 0]
type=Helper
trigger1=var(17)=2
helpertype=normal
name="charge pressure"
ID=6002
postype=p1
pos=20,0
facing=1
stateno=6002
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=var(17)=2
helpertype=normal
name="charge pressure"
ID=6002
postype=p1
pos=-20,0
facing=-1
stateno=6002
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=var(17)=2
helpertype=normal
name="charge pressure"
ID=6003
postype=p1
pos=20,-20
facing=1
stateno=6003
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=var(17)=2
helpertype=normal
name="charge pressure"
ID=6003
postype=p1
pos=-20,-20
facing=-1
stateno=6003
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=var(17)=2
helpertype=normal
name="charge pressure"
ID=6004
postype=p1
pos=20,-25
facing=1
stateno=6004
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=var(17)=2
helpertype=normal
name="charge pressure"
ID=6004
postype=p1
pos=-20,-25
facing=-1
stateno=6004
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=var(17)=2
helpertype=normal
name="charge pressure"
ID=6005
postype=p1
pos=20,-30
facing=1
stateno=6005
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=var(17)=2
helpertype=normal
name="charge pressure"
ID=6005
postype=p1
pos=-20,-30
facing=-1
stateno=6005
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=var(17)=2
helpertype=normal
name="charge pressure"
ID=6006
postype=p1
pos=-20,-30
facing=-1
stateno=6006
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=var(17)=2
trigger1=pos y<-0
helpertype=normal
name="charge pressure"
ID=6007
postype=p1
pos=20,0
facing=1
stateno=6007
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=var(17)=2
trigger1=pos y<-0
helpertype=normal
name="charge pressure"
ID=6007
postype=p1
pos=-20,0
facing=-1
stateno=6007
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=var(17)=2
trigger1=pos y<-0
helpertype=normal
name="charge pressure"
ID=6008
postype=p1
pos=20,5
facing=1
stateno=6008
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=var(17)=2
trigger1=pos y<-0
helpertype=normal
name="charge pressure"
ID=6008
postype=p1
pos=-20,5
facing=-1
stateno=6008
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=var(17)=2
trigger1=pos y<-0
helpertype=normal
name="charge pressure"
ID=6009
postype=p1
pos=20,10
facing=1
stateno=6009
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=var(17)=2
trigger1=pos y<-0
helpertype=normal
name="charge pressure"
ID=6009
postype=p1
pos=-20,10
facing=-1
stateno=6009
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=var(17)=2
trigger1=pos y<-0
helpertype=normal
name="charge pressure"
ID=6010
postype=p1
pos=-20,10
facing=-1
stateno=6010
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=PalFX
trigger1=var(17)>=6
time=1
add=50,50,50

[State dust]
type=Explod
trigger1=pos y>-90
anim=6014
pos=0,floor(-pos y)
postype=p1
scale=1.5,0.8
sprpriority=-40
ontop=0
ownpal=1
persistent=0

[State 0]
type=Explod
trigger1=pos y>-90
anim=6015
ID=666
pos=-20,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-2,0
removetime=-2
scale=.5,.5
sprpriority=10
ownpal=1
persistent=0

[State 0]
type=Explod
trigger1=pos y>-90
anim=6015
ID=666
pos=20,-(floor(pos y))
postype=p1
facing=-1
bindtime=1
vel=2,0
removetime=-2
sprpriority=10
scale=.5,.5
ownpal=1
persistent=0

[State 0,Floating code]
type=PosAdd
trigger1=pos y<0
y=ifelse(var(3)=1,0.1,-0.1)

[State 0]
type=PowerAdd
trigger1=(gametime%1)=0
value=ifelse(var(11)=0,7,9)

[State 0]
type=ChangeState
trigger1=(var(59)=0&&(command!="holdx"||command!="holda")&&var(17)>10)
trigger2=(var(59)>0&&(command!="holdx"||command!="holda")&&var(17)>100)&&random>900
trigger3=(var(59)>0&&(p2bodydist x<=50&&p2dist Y>-70&&p2dist Y<70))
trigger4=(var(59)>0&&random>900)
trigger5=power>=3000
value=702
;------------------------power effects----------------------
[State 0]
type=EnvColor
triggerall=power>2300
trigger1=random>950
time=1
value=255,255,255

[State 0]
type=PlaySnd
triggerall=var(17)=[50,90]
trigger1=timemod=50,0
value=1,7
channel=10
volume=-200
ignorehitpause=1

[State 0]
type=PlaySnd
triggerall=var(17)=[90,120]
trigger1=timemod=50,0
value=1,7
channel=10
volume=-175
ignorehitpause=1

[State 0]
type=PlaySnd
triggerall=var(17)=[120,150]
trigger1=timemod=50,0
value=1,7
channel=10
volume=-150
ignorehitpause=1

[State 0]
type=PlaySnd
triggerall=var(17)=[150,200]
trigger1=timemod=50,0
value=1,7
channel=10
volume=-125
ignorehitpause=1

[State 0]
type=PlaySnd
triggerall=var(17)=[200,250]
trigger1=timemod=50,0
value=1,7
channel=10
volume=-100
ignorehitpause=1

[State 0]
type=PlaySnd
triggerall=var(17)>=250
trigger1=timemod=50,0
value=1,7
channel=10
volume=-50
ignorehitpause=1

[State 0]
type=EnvShake
triggerall=var(17)=[0,50]
trigger1=timemod=10,0
time=10
freq=60
ampl=-1
phase=0
ignorehitpause=1

[State 0]
type=EnvShake
triggerall=var(17)>=50
trigger1=timemod=10,0
time=10
freq=60
ampl=-2
phase=0
ignorehitpause=1

[State dust]
type=Explod
triggerall=var(17)=[50,130]
trigger1=gametime%30=0
anim=6040
pos=0,floor(-pos y)
postype=p1
scale=1.5,0.8
sprpriority=-40
ontop=0
ownpal=1

[State dust]
type=Explod
triggerall=var(17)=[130,240]
trigger1=gametime%20=0
anim=6040
pos=0,floor(-pos y)
postype=p1
scale=1.4,0.8
sprpriority=-40
ontop=0
ownpal=1

[State dust]
type=Explod
triggerall=var(17)>=240
trigger1=(gametime%10)=0
anim=6040
pos=0,floor(-pos y)
postype=p1
scale=1.3,0.8
sprpriority=-40
ontop=0
ownpal=1

[State 0]
type=VarRandom
trigger1=var(17)>=200
v=10
range=-100,100
ignorehitpause=1

[State 0]
type=Helper
trigger1=var(17)>=200
trigger1=random>940
helpertype=normal
name="Rock 1"
ID=6192
postype=p1
pos=var(10),floor(-pos y) -2
facing=1
stateno=6192
sprpriority=ifelse(random>500,-20,20)
size.xscale=ifelse(random>500,0.6,ifelse(random>500,0.7,ifelse(random>500,0.5,ifelse(random>500,0.9,0.8))))
size.yscale=ifelse(random>500,0.6,ifelse(random>500,0.7,ifelse(random>500,0.5,ifelse(random>500,0.9,0.8))))
keyctrl=0
ownpal=1

[State 0]
type=Helper
trigger1=var(17)>=200
trigger1=random>950
helpertype=normal
name="Rock 2"
ID=6193
postype=p1
pos=var(10),floor(-pos y) -2
facing=1
stateno=6193
sprpriority=ifelse(random>500,-20,20)
size.xscale=ifelse(random>500,0.6,ifelse(random>500,0.7,ifelse(random>500,0.5,ifelse(random>500,0.9,0.8))))
size.yscale=ifelse(random>500,0.6,ifelse(random>500,0.7,ifelse(random>500,0.5,ifelse(random>500,0.9,0.8))))
keyctrl=0
ownpal=1
;---------------------------------------------------------------------------
; Charge 3
[Statedef 702]
type=S
movetype=I
physics=N
velset=0,0
ctrl=0

[State 0]
type=VarAdd
trigger1=1
var(17)=1
ignorehitpause=1

[State 0]
type=VarSet
trigger1=!time&&var(18)=1
var(17)=0
ignorehitpause=1
persistent=0

[State 0]
type=VarSet
trigger1=!time&&var(18)=1
var(18)=0
ignorehitpause=1
persistent=0

[State 0]
type=ChangeAnim
trigger1=pos y>=0&&(anim!=702)
value=702

[State 0]
type=ChangeAnim
trigger1=pos y<0&&(anim!=708)
value=708

[State 0]
type=StopSnd
trigger1=!time
channel=2
ignorehitpause=1

[State 0]
type=StopSnd
trigger1=!time
channel=3
ignorehitpause=1

[State 0]
type=StopSnd
trigger1=!time
channel=4
ignorehitpause=1

[State 0]
type=StopSnd
trigger1=!time
channel=0
ignorehitpause=1

[State 0]
type=StopSnd
trigger1=1
channel=10
ignorehitpause=1

[State 0,Floating code]
type=PosAdd
trigger1=pos y<0
y=ifelse(var(3)=1,0.1,-0.1)

[State 0]
type=StopSnd
trigger1=!time
channel=8

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;---------------------------------------------------------------------------
;Super jump
[Statedef 707]
type=A
movetype=I
physics=A
velset=0,0
ctrl=1

[State 0]
type=Veladd
trigger1=Vel X>=0 && vel x<4 && vel y<0
trigger1=command="holdfwd"
x=0.2

[State 0]
type=Veladd
trigger1=Vel X<=0 && vel x>-4 && vel y<0
trigger1=command="holdback"
x=-0.2

[State x]
type=Veladd
trigger1=(command !="holdback") && (command !="holdfwd")
x=ifelse(Vel X<0,0.2,ifelse(Vel X>0,-0.2,0))

[State 0]
type=VelSet
trigger1=!time
x=const(velocity.jump.neu.x)
y=-14.0

[State 191, Aura]
type = Explod
triggerall = time >= 1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6110
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 50,2]
type=ChangeAnim
trigger1=!time
value=ifelse(vel x=0,41,ifelse(vel x>0,42,43))

[State 50,3]
type=ChangeAnim
trigger1=Vel y>-2
trigger1=SelfAnimExist(anim+3)
persistent=0
value=Anim+3

[State 0]
type=ChangeState
trigger1=(var(59)>0)&&(p2bodydist y<-50)&&(vel y>0)
value=551
ctrl=1

[State 0]
type=ChangeState
trigger1=(var(59)>0)&&(random>100)&&(p2bodydist x=[0,30])&&(p2bodydist y=[-70,0])
value=ifelse(random>500,410,ifelse(random>500,430,ifelse(random>500,440,ifelse(random>500,450,400))))

[State 0]
type=ChangeState
trigger1=time>10
trigger1=pos y>=0
value=50
;ctrl=1
;---------------------------------------------------------------------------
;Super jump for air combos
[Statedef 711]
type=A
movetype=I
physics=A
velset=0,0
ctrl=1

[State 0]
type=VarSet
trigger1=!time
sysvar(0)=0

[State 0]
type=VelSet
trigger1=(!time)&&(pos y>=0)
y=-13.5

[State 0]
type=velset
triggerall=!time
trigger1=p2bodydist X<=30
x=1

[State 0]
type=velset
triggerall=!time
trigger1=p2bodydist X=[30,100]
x=2.1

[State 0]
type=velset
triggerall=!time
trigger1=p2bodydist X=[100,160]
x=3.2

[State 0]
type=velset
triggerall=!time
trigger1=p2bodydist X=[160,220]
x=5.0

[State 0]
type=velset
triggerall=!time
trigger1=p2bodydist X>=220
x=6

[State 191, Aura]
type = Explod
triggerall = time >= 1
trigger1 = timemod = 12,0
Anim = 6110
Pos = 0,0
Id = 6110
sprpriority = 3
removeongethit = 1
removetime = 12
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 50,2]
type=ChangeAnim
trigger1=!time
value=41

[State 50,3]
type=ChangeAnim
trigger1=Vel y>-2
trigger1=SelfAnimExist(anim+3)
persistent=0
value=Anim+3

[State 0]
type=ChangeState
trigger1=time>10
trigger1=pos y>=0
value=50
;-----------------------------------------------------------------------------------------------
;Counter attack
[Statedef 708]
type=S
movetype=A
physics=S
juggle=4
PowerAdd=-500
anim=240
velset=0,0
ctrl=0

[State 0]
type=Turn
trigger1=p2dist x<0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=NotHitBy
trigger1=1
value=SCA
time=1
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,1

[State 0]
type=VelSet
trigger1=animelem=2
x=5

[State 0]
type=HitDef
trigger1=!time
attr=S,NA
hitflag=MAF
guardflag=MA
animtype=Hard
priority=9,Hit
damage=90,21
pausetime=10,10
sparkno=S8910
guard.sparkno=S8911
sparkxy=0,-60
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=30
ground.hittime=50
ground.velocity=-7,-2
air.velocity=-7,-2
fall=1
getpower=0,0
givepower=0,0
envshake.time=20
envshake.freq=260
envshake.ampl=-4
envshake.phase=90

[State 0]
type=ChangeState
trigger1=!animtime
trigger1=pos y>=0
value=0
ctrl=1

[State 0]
type=ChangeState
trigger1=var(1)=1
trigger1=!animtime
trigger1=pos y<0
value=551
ctrl=1

[State 0]
type=ChangeState
trigger1=var(1)=0
trigger1=!animtime
trigger1=pos y<0
value=50
ctrl=1

;-----------------------------------------------------------------------------------------------
;Guard Push
[Statedef 710]
type=S
movetype=I
physics=S
juggle=4
PowerAdd=-500
velset=0,0
ctrl=0

[State 0]
type=ChangeAnim
trigger1=time=1
value=720

[State 0]
type=NotHitBy
trigger1=1
value=SCA
time=1
ignorehitpause=1

[State 1002: Fire Effect]
type=Helper
trigger1=time=2
helpertype=normal
name="Wave"
ID=527
pos=0,0
postype=p1
stateno=527
keyctrl=0
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Breaker 2 pressure"
ID=6002
postype=p1
pos=20,0
facing=1
stateno=6002
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Breaker 2 pressure"
ID=6002
postype=p1
pos=-20,0
facing=-1
stateno=6002
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Breaker 2 pressure"
ID=6003
postype=p1
pos=20,-20
facing=1
stateno=6003
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Breaker 2 pressure"
ID=6003
postype=p1
pos=-20,-20
facing=-1
stateno=6003
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Breaker 2 pressure"
ID=6004
postype=p1
pos=20,-25
facing=1
stateno=6004
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Breaker 2 pressure"
ID=6004
postype=p1
pos=-20,-25
facing=-1
stateno=6004
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Breaker 2 pressure"
ID=6005
postype=p1
pos=20,-30
facing=1
stateno=6005
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Breaker 2 pressure"
ID=6005
postype=p1
pos=-20,-30
facing=-1
stateno=6005
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Breaker 2 pressure"
ID=6006
postype=p1
pos=-20,-30
facing=-1
stateno=6006
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Breaker 2 pressure"
ID=6007
postype=p1
pos=20,0
facing=1
stateno=6007
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Breaker 2 pressure"
ID=6007
postype=p1
pos=-20,0
facing=-1
stateno=6007
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Breaker 2 pressure"
ID=6008
postype=p1
pos=20,5
facing=1
stateno=6008
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Breaker 2 pressure"
ID=6008
postype=p1
pos=-20,5
facing=-1
stateno=6008
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Breaker 2 pressure"
ID=6009
postype=p1
pos=20,10
facing=1
stateno=6009
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Breaker 2 pressure"
ID=6009
postype=p1
pos=-20,10
facing=-1
stateno=6009
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Breaker 2 pressure"
ID=6010
postype=p1
pos=-20,10
facing=-1
stateno=6010
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=ChangeState
trigger1=anim=720&&!animtime
value=0
ctrl=1
;------------------------------------------------------------
;Final Flash
[Statedef 1000]
type=S
movetype=I
physics=S
velset=0,0
sprpriority=0
ctrl=0

[State 0]
type=VarSet
trigger1=(!time)
var(22)=0
ignorehitpause=1

[State 0]
type=ChangeAnim
trigger1=(var(17)=0)&&(anim!=1000)
value=1000
ignorehitpause=1
persistent=0

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(18)=1
ignorehitpause=1
persistent=0

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(17)=0
ignorehitpause=1
persistent=0

[State 0]
type=VarAdd
trigger1=(1)
var(17)=1
ignorehitpause=1

[State AssertSpecial]
type=AssertSpecial
trigger1=1
flag=GlobalNoShadow
flag2=NoFG
flag3=nobardisplay

[State 1200: ragebar display]
type=VarSet
trigger1=1
var(12)=ifelse((var(17)=[2,24]),1,0)

[State 0]
type=AssertSpecial
trigger1=1
flag=nomusic
ignorehitpause=1

[State 0]
type=Explod
trigger1=(var(17)=2)
anim=9001
ID=9001
pos=0,0
postype=back
bindtime=-1
removetime=-2
supermovetime=99999999
pausemovetime=99999999
scale=0.9,1.1
sprpriority=-5
ontop=0
ownpal=1

[State 0]
type=SuperPause
trigger1=(var(17)=2)
time=22
anim=-1
pos=8,-46
sound=S1,14
movetime=22
darken=1
poweradd=-2000
persistent=0

[State 0]
type=VarSet
trigger1=(!animtime)
var(17)=0
ignorehitpause=1
persistent=0

[State 0]
type=ChangeState
trigger1=(!animtime)
value=ifelse(((win)||(lose)),1005,1001)
;------------------------------------------------------------
;Final Flash hold
[Statedef 1001]
type=S
movetype=I
physics=S
velset=0,0
ctrl=0

[State 1200: ragebar display]
type=VarSet
trigger1=1
var(12)=ifelse((var(17)=[0,13]),1,0)

[State 0]
type=ChangeAnim
trigger1=(var(17)=0)&&(anim!=1001)
value=1001
ignorehitpause=1
persistent=0

[State 1001: Orb]
type=Varset
trigger1=(var(17)=0)
fvar(0)=0

[State 1001: Orb]
type=Varset
trigger1=(var(17)=0)
fvar(1)=0

[State 1001: Orb]
type=Varset
trigger1=(var(17)=0)
fvar(2)=0

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=1)
var(18)=0
ignorehitpause=1
persistent=0

[State 0]
type=VarAdd
trigger1=(1)
var(17)=1
ignorehitpause=1

[State 0]
type=PalFX
trigger1=(var(17)>=13)
time=1
add=50,50,50
ignorehitpause=1

[State 0]
type=RemoveExplod
trigger1=(var(17)=13)
ID=6036
ignorehitpause=1

[State 0]
type=EnvColor
trigger1=(var(17)=13)
value=255,255,255
time=5
ignorehitpause=1

[State 0,aura]
type=Explod
trigger1=(var(17)>=13)
trigger1=(numexplod(6036)=0)
anim=6500
ID=6036
pos=0,0
postype=p1
facing=1
bindtime=-1
removetime=-1
supermove=1
pausemovetime=9999999999
supermovetime=9999999999
scale=1,1
sprpriority=900
ontop=0
ownpal=1
removeongethit=1
ignorehitpause=1

[State ground waves]
type=Explod
trigger1=(var(17)>=13)
trigger1=(gametime%20=0)
anim=6040
pos=0,floor(-pos y)
postype=p1
scale=1.5,0.8
sprpriority=-4
ontop=0
ownpal=1

[State 0]
type=PlaySnd
trigger1=(gametime%25=0)||(gametime%42=0)||(gametime%36=0)
value=1,1
channel=7
;-------------------|Orbs
[State 1001: Electricity]
type=Explod
trigger1=(random<330)
anim=6012
ID=6012
pos=-24,-55
postype=p1
bindtime=1
random=30,20
vel=0,0
removetime=-2
pausemovetime=9999999999999
supermovetime=9999999999999
sprpriority=1
scale=.32,.32
trans=add
ownpal=1
removeongethit=1
ignorehitpause=1
[State 1001: Electricity]
type=Explod
trigger1=(random<350)
anim=6011
ID=6011
pos=-24,-55
postype=p1
bindtime=1
vel=0,0
random=30,20
removetime=-2
pausemovetime=9999999999999
supermovetime=9999999999999
scale=.32,.32
sprpriority=1
trans=add
ownpal=1
removeongethit=1
ignorehitpause=1

[State 1001: Electricity]
type=Explod
trigger1=(random<330)
anim=6012
ID=6012
pos=23,-48
postype=p1
bindtime=1
random=19,13
vel=0,0
removetime=-2
pausemovetime=9999999999999
supermovetime=9999999999999
sprpriority=-1
scale=.25,.25
trans=add
ownpal=1
removeongethit=1
ignorehitpause=1
[State 1001: Electricity]
type=Explod
trigger1=(random<350)
anim=6011
ID=6011
pos=23,-48
postype=p1
bindtime=1
vel=0,0
random=18,10
removetime=-2
pausemovetime=9999999999999
supermovetime=9999999999999
scale=.25,.25
sprpriority=-1
trans=add
ownpal=1
removeongethit=1
ignorehitpause=1

[State 1001: Fire Orb]
type=VarSet
trigger1=(var(17)>5)
fvar(0)=.6

[State 1001: Rear Orb]
type=Varadd
trigger1=(var(17)>9)&&(fvar(1)<.3)
fvar(1)=0.03

[State 1001: Front Orb]
type=Varadd
trigger1=(var(17)>3)&&(fvar(2)<.5)
fvar(2)=0.03

[State 1001: Rear Effect]
type=Explod
trigger1=(1)
anim=6045
ID=6045
pos=23,-52
postype=p1
bindtime=-1
removetime=1
sprpriority=-3
scale=fvar(1)/1.5,fvar(1)/1.5
ownpal=1
supermovetime=9999
pausemovetime=9999
removeongethit=1
ignorehitpause=1
[State 1001: Front Effect]
type=Explod
trigger1=(1)
anim=6045
ID=6045
pos=-25,-55
postype=p1
bindtime=-1
removetime=1
sprpriority=3
scale=fvar(2)/1.75,fvar(2)/1.75
ownpal=1
supermovetime=9999
pausemovetime=9999
removeongethit=1
ignorehitpause=1

[State 1001: Rear Orb]
type=Explod
trigger1=(1)
anim=6013
ID=6013
pos=23,-52
postype=p1
bindtime=-1
removetime=1
sprpriority=-2
scale=fvar(1),fvar(1)
ownpal=1
supermovetime=9999
pausemovetime=9999
removeongethit=1
ignorehitpause=1
[State 1001: Front Orb]
type=Explod
trigger1=(1)
anim=6013
ID=6014
pos=-25,-55
postype=p1
bindtime=-1
removetime=1
scale=fvar(2),fvar(2)
sprpriority=2
supermovetime=9999
pausemovetime=9999
removeongethit=1
ownpal=1
ignorehitpause=1
;-------------------|/Orbs
[State 0]
type=PlaySnd
trigger1=(var(17)>25)&&((gametime%50)=0)
value=1,7
ignorehitpause=1
channel=10

[State 0]
type=EnvShake
trigger1=(var(17)>25)&&((gametime%10)=0)
time=10
freq=60
ampl=-2
phase=0
ignorehitpause=1

[State 0]
type=ChangeState
trigger1=(var(17)>25)||(win)||(lose)
value=1002
;------------------------------------------------------------
;Final Flash - helper version nonextending shot
[Statedef 1002]
type=S
movetype=I
physics=S
velset=0,0
sprpriority=0
ctrl=0

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(17)=0
ignorehitpause=1
persistent=0

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(18)=1
ignorehitpause=1
persistent=0

[State 0]
type=ChangeAnim
trigger1=(var(17)=0)&&(anim!=1002)
value=1002
ignorehitpause=1
persistent=0

[State 0]
type=RemoveExplod
trigger1=(var(17)=0)
ID=6036
ignorehitpause=1

[State 0]
type=RemoveExplod
trigger1=(var(17)=0)
ID=6013
ignorehitpause=1

[State 0]
type=RemoveExplod
trigger1=(var(17)=0)
ID=6014
ignorehitpause=1

[State 0, ]
type=NotHitBy
trigger1=var(17)=[10,55]
value=SCA,AA,AP,AT
time=2
ignorehitpause=1

[State 1002: Rear Effect]
type=Explod
trigger1=(var(17)=0)
anim=6045
ID=6045
pos=15,-41
postype=p1
bindtime=-1
removetime=5
sprpriority=-3
scale=fvar(1)/1.5,fvar(1)/1.5
ownpal=1
supermovetime=9999
pausemovetime=9999
removeongethit=1
ignorehitpause=1
[State 1001: Front Effect]
type=Explod
trigger1=(var(17)=0)
anim=6045
ID=6045
pos=-10,-39
postype=p1
bindtime=-1
removetime=5
sprpriority=3
scale=fvar(2)/1.75,fvar(2)/1.75
ownpal=1
supermovetime=9999
pausemovetime=9999
removeongethit=1
ignorehitpause=1
[State 1002: Fire Effect]
type=Helper
trigger1=(var(17)=5)
helpertype=normal
name="Wave"
ID=525
pos=0,0
postype=p1
stateno=525
keyctrl=0
ownpal=1
ignorehitpause=1
persistent=0

[State 0: Front orb]
type=Explod
trigger1=(var(17)=0)
anim=6013
ID=6014
pos=-10,-39
postype=p1
bindtime=-1
removetime=5
scale=fvar(1),fvar(1)
sprpriority=5
removeongethit=1
ownpal=1
ignorehitpause=1
[State 0: Rear orb]
type=Explod
trigger1=(var(17)=0)
anim=6013
ID=6013
pos=15,-41
postype=p1
bindtime=-1
removetime=5
scale=fvar(1),fvar(1)
sprpriority=-5
removeongethit=1
ownpal=1
ignorehitpause=1
[State 1001: Fire Orb]
type=Explod
trigger1=(var(17)=5)
anim=6013
ID=6013
pos=36,-50
postype=p1
bindtime=-1
removetime=5
sprpriority=5
scale=fvar(0),fvar(0)
ownpal=1
supermovetime=9999
pausemovetime=9999
removeongethit=1
ignorehitpause=1

[State 0]
type=VarAdd
trigger1=(1)
var(17)=1
ignorehitpause=1

[State 0]
type=ScreenBound
trigger1=(var(19)=1)
value=0
movecamera=0,0
ignorehitpause=1

[State 0]
type=RemoveExplod
trigger1=(var(17)=6)
ID=6036
ignorehitpause=1

[State 0,aura]
type=Explod
trigger1=(var(17)=[0,5])
trigger1=(numexplod(6036)=0)
anim=6507
ID=6036
pos=0,0
postype=p1
facing=1
bindtime=-1
removetime=-1
supermove=1
pausemovetime=9999999999
supermovetime=9999999999
scale=1,1
sprpriority=3
ontop=0
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0,aura]
type=Explod
trigger1=(var(17)=[5,10])
trigger1=(numexplod(6036)=0)
anim=6501
ID=6036
pos=0,0
postype=p1
facing=1
bindtime=-1
removetime=-1
supermove=1
pausemovetime=9999999999
supermovetime=9999999999
scale=1,1
sprpriority=3
ontop=0
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=RemoveExplod
trigger1=(var(17)=11)
ID=6036
ignorehitpause=1

[State 0,aura]
type=Explod
trigger1=(var(17)=[11,70])
trigger1=(numexplod(6036)=0)
anim=6502
ID=6036
pos=0,0
postype=p1
facing=1
bindtime=-1
removetime=70
supermove=1
pausemovetime=9999999999
supermovetime=9999999999
scale=1,1
sprpriority=3
ontop=0
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=PalFX
trigger1=(var(17)<80)
time=1
add=50,50,50
ignorehitpause=1

[State 0]
type=Width
trigger1=(var(17)=[4,7])
edge=10,0
player=10,0
ignorehitpause=1

[State 0]
type=Width
trigger1=(var(17)>7)
edge=20,0
player=20,0
ignorehitpause=1

[State 1002: back dust]
type=Explod
trigger1=(var(17)=[10,42])&&(gametime%9=0)&&(pos y>-90)
anim=6015
ID=666
pos=70,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-4,0
removetime=-2
scale=.5,.5
sprpriority=-10
ownpal=1

[State 1002: back dust 2]
type=Explod
trigger1=(var(17)=[10,42])&&(gametime%9=0)&&(pos y>-90)
anim=6015
ID=666
pos=40,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-4,0
removetime=-2
scale=1,1
sprpriority=-10
ownpal=1

[State 1002: front dust]
type=Explod
trigger1=(var(17)=[10,42])&&(gametime%9=0)&&(pos y>-90)
anim=6015
ID=666
pos=30,-(floor(pos y))+10
postype=p1
facing=1
bindtime=1
vel=-4,0
removetime=-2
scale=.5,.5
sprpriority=10
ownpal=1

[State 1002: front dust 2]
type=Explod
trigger1=(var(17)=[10,42])&&(gametime%9=0)&&(pos y>-90)
anim=6015
ID=666
pos=-20,-(floor(pos y))+10
postype=p1
facing=1
bindtime=1
vel=-4,0
removetime=-2
scale=1,1
sprpriority=10
ownpal=1

[State 0]
type=StopSnd
trigger1=(var(17)=20)
channel=5

[State 0]
type=VarSet
trigger1=(var(17)=0)
fvar(0)=0.3

[State 0]
type=Varadd
trigger1=(var(17)<10)
fvar(0)=0.06

[State 0]
type=Explod
trigger1=(var(17)=[0,10])&&(random<330)
anim=6012
ID=6012
pos=30,-43
postype=p1
bindtime=1
random=20,20
vel=0,0
removetime=-2
pausemovetime=9999999999999
supermovetime=9999999999999
sprpriority=999
scale=.7,.7
trans=add
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=Explod
trigger1=(var(17)=[0,10])&&(random<330)
anim=6011
ID=6011
pos=30,-43
postype=p1
bindtime=1
vel=0,0
random=20,20
removetime=-2
pausemovetime=9999999999999
supermovetime=9999999999999
scale=.7,.7
sprpriority=999
trans=add
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=Explod
trigger1=(var(17)=0)
anim=6010
ID=6010
pos=20,-48
postype=p1
bindtime=-1
removetime=26
scale=fvar(0),fvar(0)
sprpriority=9
removeongethit=1
ownpal=1
ignorehitpause=1

[State 0]
type=ModifyExplod
trigger1=(var(17)=[0,11])
ID=6010
scale=fvar(0),fvar(0)
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=(animelem=3)
value=1,8
volume=255
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=(animelem=3)
value=1,13
volume=255
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=(animelem=1)
value=3,2
volume=255
channel=0
ignorehitpause=1

[State 0]
type=RemoveExplod
trigger1=(var(17)=11)
ID=1003

[State 0]
type=ScreenBound
trigger1=(var(22)>0)
value=0
ignorehitpause=1
;-------------------------| beam stuff
[State dust]
type=Explod
trigger1=(animelem=3)
anim=6041
pos=-5,-45
postype=p1
scale=1.4,0.8
sprpriority=40
ontop=0
ownpal=1

[State 0]
type=Helper
trigger1=(var(22)>0)&&(numhelper(1)=0)
helpertype=normal
name="dust maker"
ID=1
pos=0,0
postype=p2
stateno=1006
ignorehitpause=1
persistent=0

[State 0, ]
type=BGPalFX
trigger1=time=[10,15]
time=1
add=(time-10)*56,(time-10)*56,(time-10)*56
ignorehitpause=1

[State 0, ]
type=BGPalFX
trigger1=time=[16,18]
time=1
add=255-((time-16)*86),255-((time-16)*86),255-((time-16)*86)
ignorehitpause=1

[State 0]
type=Helper
trigger1=(animelem=3)
helpertype=normal
name="beam start"
ID=1341
pos=29,-49
postype=p1
facing=1
stateno=1341
sprpriority=999
keyctrl=0
size.xscale=0.5
size.yscale=0.5
ownpal=1
size.ground.back=0
size.ground.front=0
size.air.back=0
size.air.front=0
size.height=0
size.proj.doscale=1
size.head.pos=0
size.mid.pos=0
ignorehitpause=1

[State 0]
type=Helper
trigger1=(animelem=3)
helpertype=normal
name="beam"
ID=1340
pos=-2,-49
postype=p1
facing=1
stateno=1340
sprpriority=999
keyctrl=0
ownpal=1
size.xscale=1
size.ground.back=0
size.ground.front=0
size.air.back=0
size.air.front=0
size.height=0
size.proj.doscale=1
size.head.pos=0
size.mid.pos=0
ignorehitpause=1
;-------------------------| beam stuff
[State 0]
type=VarSet
trigger1=(var(17)>10)&&(numhelper(1340)>0)
trigger1=(helper(1340),movecontact)
var(19)=1

[State 0,1]
type=ChangeState
trigger1=(!animtime)&&((((facing=1)&&(screenpos x<=10))||((facing=-1)&&(screenpos x>=320)))||(lose)||((win)&&(p2stateno=5150)))
value=1010

[State 0,2]
type=ChangeState
trigger1=(!animtime)&&((((facing=1)&&(screenpos x>10))||((facing=-1)&&(screenpos x<320)))||(lose)||((win)&&(p2stateno=5150)))
value=ifelse(power=0,5300,0)
ctrl=ifelse(power=0,0,1)
;------------------------------------------------------------
;Final Flash - empty
[Statedef 1003]
type=S
movetype=I
physics=S
velset=0,0
ctrl=0

[State 0]
type=stopSnd
trigger1=(!time)
channel=10
ignorehitpause=1

[State 0]
type=stopSnd
trigger1=(!time)
channel=0
ignorehitpause=1

[State 0]
type=stopSnd
trigger1=(!time)
channel=8
ignorehitpause=1

[State 0]
type=stopSnd
trigger1=(!time)
channel=7
ignorehitpause=1

[State 0]
type=stopSnd
trigger1=(!time)
channel=6
ignorehitpause=1

[State 0]
type=stopSnd
trigger1=(!time)
channel=5
ignorehitpause=1

[State 0]
type=ChangeState
trigger1=(time>0)
value=ifelse(power>0,0,5300)
ctrl=ifelse(power>0,1,0)
;------------------------------------------------------------
; Flash - enemy
[Statedef 1004]
type=A
movetype=H
physics=N
ctrl=0
anim=5030
velset=-20,-1

[State 0]
type=AfterImageTime
trigger1=(!time)
!time
ignorehitpause=1

[State 1005: Anim freeze]
type=ChangeAnim
trigger1=1
value=anim
ignorehitpause=1

[State 0]
type=PosFreeze
trigger1=time<20
value=1
ignorehitpause=1

[State 0]
type=PosSet
trigger1=pos y>=0
y=0
ignorehitpause=1

[State 0]
type=VelSet
trigger1=(time=28)||(time=33)||(time=38)||(time=43)||(time=48)
y=-6

[State 0]
type=VelSet
trigger1=(time=25)||(time=30)||(time=35)||(time=40)||(time=45)
y=6

[State 0]
type=ScreenBound
trigger1=((time>10)&&((screenpos x>300)||(screenpos x<20)))||(time>=49)
value=0

[State 0]
type=ChangeState
trigger1=((time>10)&&((screenpos x>300)||(screenpos x<20)))||(time>50)
value=1005
;------------------------------------------------------------
; Flash - wall bounce
[Statedef 1005]
type=A
movetype=H
physics=A
velset=2,-12
ctrl=0

[State 0]
type=EnvShake
trigger1=!time
time=10
freq=260
ampl=-12
ignorehitpause=1

[State 0]
type=Turn
trigger1=time=10
ignorehitpause=1
persistent=0

[State 1005: pos freeze]
type=PosFreeze
trigger1=time<10
value=1
ignorehitpause=1

[State 1005: Anim freeze]
type=ChangeAnim
trigger1=time<10
value=anim
ignorehitpause=1

[State 1002: dust]
type=Explod
trigger1=(!time)&&(pos y>-90)
anim=6015
ID=664
pos=0,-(floor(pos y))
postype=p1
facing=-1
bindtime=1
vel=0,0
removetime=-2
scale=.5,.5
sprpriority=-90
ownpal=1

[State 0]
type=ScreenBound
trigger1=1
value=0

[State 0]
type=SelfState
trigger1=(time>10)
value=5050
;------------------------------------------------------------
; Flash - dust helper
[Statedef 1006]
type=A
movetype=I
physics=N
ctrl=0
anim=1
velset=-20,-1

[State 0]
type=PosFreeze
trigger1=time<20
value=1
ignorehitpause=1

[State 0]
type=PosSet
trigger1=pos y>=0
y=0
ignorehitpause=1

[State 0]
type=VelSet
trigger1=(time=28)||(time=33)||(time=38)||(time=43)||(time=48)
y=-6

[State 0]
type=VelSet
trigger1=(time=25)||(time=30)||(time=35)||(time=40)||(time=45)
y=6

[State 1002: dust]
type=Explod
trigger1=(gametime%4=0)&&(time>8)
anim=6015
ID=664
pos=0,-(floor(pos y))
postype=p1
facing=-1
bindtime=1
vel=0,0
removetime=-2
scale=.5,.5
sprpriority=ifelse(pos y<0,5,-5)
ownpal=1

[State 1002: ground dust]
type=Explod
trigger1=(pos y>=0)&&(gametime%4=0)&&(time>10)
anim=6014
ID=664
pos=0,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=0,0
removetime=-2
sprpriority=-1
ownpal=1

[State 0]
type=Helper
trigger1=(enemy,stateno!=1004)&&(numhelper(2)=0)
helpertype=normal
name="explod"
ID=2
pos=0,0
postype=p2
stateno=1007
ignorehitpause=1
persistent=0

[State 0]
type=destroyself
trigger1=(enemy,stateno!=1004)
;------------------------------------------------------------
; Flash - explod
[Statedef 1007]
type=A
movetype=I
physics=N
ctrl=0
anim=1
velset=-20,-1

[State 0]
type=PalFX
trigger1=1
time=9999
color=0
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=(!time)
value=S1,6
volume=0
freqmul=0.9;1.0

[State 1002: exp]
type=Explod
trigger1=(time=1)
anim=6037
ID=664
pos=10,0
postype=p1
facing=-1
bindtime=1
vel=0,0
;scale=.5,.5
removetime=-2
sprpriority=10

[State 0]
type=destroyself
trigger1=(time>20)
;------------------------------------------------------------
;After beam decider
[Statedef 1010]
type=S
movetype=I
physics=S
velset=0,0
Anim=0
ctrl=0

[State 0]
type=ScreenBound
trigger1=(1)
value=0

[State 0]
type=ChangeState
trigger1=((((facing=1)&&(screenpos x<=10))||((facing=-1)&&(screenpos x>=320)))&&(power>0)||(lose)||(win))||(!animtime)
value=1011

[State 0]
type=ChangeState
trigger1=(((facing=1)&&(screenpos x>10))||((facing=-1)&&(screenpos x<320)))&&(power>0)||(lose)||(win)
value=0
ctrl=1

[State 0]
type=ChangeState
trigger1=(!animtime)&&((facing=1)&&(screenpos x>10)||(facing=-1)&&(screenpos x<320))&&(power=0)
value=5300
;------------------------------------------------------------
;aftershot zanzoken
[Statedef 1011]
type=S
movetype=I
physics=N
velset=0,0
Anim=25
ctrl=0

[State 0, ]
type=PosAdd
trigger1=(pos y>=0)&&(!time)
y=-pos y-10

[State 0, ]
type=AfterImage
trigger1=(timemod=2,0)
time=2
length=2
palcontrast=120,120,120
palmul=.65,.65,.65
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0, ]
type=AssertSpecial
trigger1=(time<4)
flag=invisible
flag2=noshadow
ignorehitpause=1

[State 0, ]
type=EnvColor
trigger1=(time=4)
value=255,255,255
time=1

[State 0, ]
type=EnvShake
trigger1=(time=4)
time=5
freq=60
ampl=-4

[State 0, ]
type=NotHitBy
trigger1=(time<4)
value=SCA,NT,AT
time=1
ignorehitpause=1

[State 0]
type=PlayerPush
trigger1=(time<4)
value=0

[State 0, ]
type=PlaySnd
trigger1=(time=4)
value=2,2

[State 0]
type=ChangeState
trigger1=time>10
value=ifelse(var(1)=0,50,551)
ctrl=1
;------------------------------------------------------------
;Bakuhatsu close
[Statedef 1100]
type=S
movetype=I
physics=S
sprpriority=0
velset=0,0
PowerAdd=100
ctrl=0

[State 0]
type=ChangeAnim
trigger1=(anim!=1100)
value=1100

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(18)=1
ignorehitpause=1
persistent=0

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(17)=0
ignorehitpause=1
persistent=0

[State 0]
type=VarAdd
trigger1=(1)
var(17)=1
ignorehitpause=1

[State 0]
type=Turn
trigger1=(prevstateno=[900,904])&&(p2bodydist x<0)

[State 0]
type=Helper
trigger1=(animelem=2)
helpertype=normal
name="Bakuhatsu"
ID=1105
pos=60,floor(-pos y)
postype=p1
facing=1
stateno=1105
keyctrl=0
ownpal=1
size.xscale=.8

[State 0]
type=EnvShake
trigger1=(animelem=2)
time=10
freq=60
ampl=-4
phase=90
ignorehitpause=1

[State 0]
type=BGPalFX
trigger1=(animelem=2)
time=5
add=50,50,50
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=(animelem=2)
value=1,8

[State 0]
type=PlaySnd
trigger1=(animelem=2)
value=0,0

[State 0]
type=ChangeState
trigger1=(command="holdup")&&(p2stateno=[5030,5050])&&(enemy(0),vel y<0)&&(var(17)=[35,45])
value=715
ctrl=1

[State 0]
type=ChangeState
triggerall=(power>=1000)&&(var(17)=[25,85])
trigger1=command="Big Bang Attack"
trigger2=(var(59)=1&&random>950)
value=1199

[State 0]
type=ChangeState
trigger1=!animtime
value=ifelse(power>0,0,5300)
ctrl=ifelse(power>0,1,0)
;------------------------------------------------------------
;Bakuhatsu far
[Statedef 1101]
type=S
movetype=I
physics=S
sprpriority=0
velset=0,0
PowerAdd=100
ctrl=0

[State 0]
type=ChangeAnim
trigger1=(anim!=1100)
value=1100

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(18)=1
ignorehitpause=1
persistent=0

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(17)=0
ignorehitpause=1
persistent=0

[State 0]
type=VarAdd
trigger1=(1)
var(17)=1
ignorehitpause=1

[State 0]
type=Turn
trigger1=(prevstateno=[900,904])&&(p2bodydist x<0)

[State 0]
type=Helper
trigger1=(animelem=2)
helpertype=normal
name="Bakuhatsu"
ID=1105
pos=150,floor(-pos y)
postype=p1
facing=1
stateno=1105
keyctrl=0
ownpal=1
size.xscale=.8

[State 0]
type=EnvShake
trigger1=(animelem=2)
time=10
freq=60
ampl=-4
phase=90
ignorehitpause=1

[State 0]
type=BGPalFX
trigger1=(animelem=2)
time=5
add=50,50,50
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=(animelem=2)
value=1,8

[State 0]
type=PlaySnd
trigger1=(animelem=2)
value=0,0

[State 0]
type=ChangeState
trigger1=(command="holdup")&&(p2stateno=[5030,5050])&&(enemy(0),vel y<0)&&(var(17)=[35,45])
value=715
ctrl=1

[State 0]
type=ChangeState
triggerall=(power>=1000)&&(var(17)=[25,85])
trigger1=command="Big Bang Attack"
trigger2=(var(59)=1&&random>950)
value=1199

[State 0]
type=ChangeState
trigger1=!animtime
value=ifelse(power>0,0,5300)
ctrl=ifelse(power>0,1,0)
;---------------------------------------------------------------------------
;jump after bakuhatsu
[Statedef 715]
type=A
movetype=I
physics=A
velset=0,0
ctrl=0

[State 0]
type=Velset
trigger1=(1)
x=(p2bodydist x)/3
y=(p2bodydist y)/3

[State 0]
type=Velset
trigger1=(p2bodydist y>50)
y=0

[State 50,2]
type=ChangeAnim
trigger1=!time
value=41

[State 0]
type=ChangeState
trigger1=time>6
trigger2=time>10
trigger2=pos y>=0
value=50
ctrl=1
;------------------------------------------------------------
;Zanzoken when dashing
[Statedef 1056]
type=S
movetype=I
physics=N
sprpriority=0
ctrl=0

[State 0]
type=AssertSpecial
trigger1=(time=[5,20])
flag=invisible
flag2=noshadow
ignorehitpause=1

[State 0]
type=PlayerPush
trigger1=(time=[5,20])
value=0

[State 0]
type=NotHitBy
trigger1=(time=[5,20])
value=SCA,NT,AT
time=1
ignorehitpause=1

[State 0]
type=VelSet
trigger1=(!time)
x=ifelse(vel x=0,ifelse(anim=100,5,-5),vel x)
y=0
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=(time=5)||(time=10)
value=2,2

[State 0]
type=AfterImage
trigger1=(var(11)=0)&&(time=5)
time=10
length=10
palcontrast=120,120,120
palmul=.35,.35,.35
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=VarSet
trigger1=(time=[10,12])&&(pos y<0)
var(1)=1

[State 0]
type=PosAdd
trigger1=(time=10)
x=ifelse(anim=100,40,ifelse(anim=105,-40,0))

[State 0]
type=AfterImage
trigger1=(var(11)=0)&&((time=5)||((time>=10)&&(gametime%2=0)))
time=ifelse(time=5,10,8)
length=ifelse(time=5,10,20)
palcontrast=120,120,120
palmul=.65,.65,.65
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=ChangeState
trigger1=(time>=30)
value=ifelse(pos y<0,ifelse(var(1)=0,50,551),ifelse(prevstateno=107,101,106))
ctrl=1
;------------------------------------------------------------
;Zanzoken
[Statedef 1050]
type=S
movetype=I
physics=N
velset=0,0
sprpriority=0
ctrl=0

[State 0, ]
type=ChangeAnim
trigger1=!time
value=anim
elem=animelemno(0)
[State 0]
type=null;ChangeAnim
trigger1=(time<=5)
;value=ifelse(pos y >=0,22,29)

[State 0]
type=AssertSpecial
trigger1=(time=[8,55])
flag=invisible
flag2=noshadow
ignorehitpause=1

[State 0]
type=EnvShake
trigger1=time=8
time=8
freq=260
ampl=-8

[State 0]
type=AllPalFX
trigger1=time=7
time=6
add=160,160,160
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=(time=8)||(time=25)
value=2,2

[State 0]
type=AfterImage
trigger1=(var(11)=0)&&(time=8)
time=10
length=10
palcontrast=120,120,120
palmul=.35,.35,.35
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=Helper
trigger1=(time=8)
helpertype=normal
name="Afterimage bck"
ID=1053
pos=0,0
postype=p1
facing=1
stateno=1053
keyctrl=0
ownpal=1
persistent=0

[State 0]
type=Helper
trigger1=(time=8)
helpertype=normal
name="Afterimage forw"
ID=1054
pos=0,0
postype=p1
facing=1
stateno=1054
keyctrl=0
ownpal=1
persistent=0

[State 0]
type=ChangeAnim
trigger1=(time>=25)
value=(ifelse(vel y<0,25,ifelse(vel y>0,26,ifelse(vel x<0,107,ifelse(vel x>0,102,ifelse(pos y<0,24,0))))))

[State 0]
type=PowerAdd
trigger1=(prevstateno=[150,156])
value=-150
persistent=0

[State 0]
type=PlayerPush
trigger1=(time=[5,55])
value=0

[State 0]
type=NotHitBy
trigger1=(time=[5,55])
value=SCA,NT,AT
time=1
ignorehitpause=1

[State 0]
type=VarSet
trigger1=(time=[25,35])&&(pos y>=0)&&(command="holdup")
var(1)=1

[State 0]
type=PosAdd
trigger1=(time=25)
x=ifelse(command="holdfwd",(165),(ifelse(command="holdback",(-165),0)))
y=ifelse(command="holdup",(-105),(ifelse(command="holddown",105,0)))

[State 0]
type=VelSet
trigger1=(time>=25)
x=ifelse(command="holdfwd",(3),(ifelse(command="holdback",(-3),(0))))
y=ifelse(command="holdup",(-3),(ifelse(command="holddown",(3),0)))

[State 0]
type=Turn
trigger1=p2dist x<0;(command!="holdfwd")&&(command!="holdback")&&(command!="holddown")&&(command!="holdup")&&(!win)&&(time=25)

[State 0]
type=ScreenBound
trigger1=(command!="holdfwd")&&(command!="holdback")&&(command!="holddown")&&(command!="holdup")&&(time>=25)
movecamera=1,1
value=0

[State 0]
type=AfterImage
trigger1=(Var(11)=0)&&((time=5)||((time>=25)&&(gametime%3=0)))
time=ifelse(time=5,10,3)
length=ifelse(time=5,10,20)
palcontrast=120,120,120
palmul=ifelse(time=5,.55,.65),ifelse(time=5,.55,.65),ifelse(time=5,.55,.65)
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=ChangeState
trigger1=(time>=65)
value=ifelse(pos y<0,ifelse(var(1)=0,50,551),0)
ctrl=1
;---------------------------------------------------
;Throw
[Statedef 800]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
sprpriority=1
anim=800

[State 0]
type=HitDef
trigger1=(!time)
attr=S,NT
hitflag=MAF
guardflag=
affectteam=E
animtype=Light
priority=9,Hit
sparkno=-1
guard.sparkno=-1
ground.type=High
ground.slidetime=20
ground.hittime=20
guard.dist=80
sprpriority=20
snap=20,0
hitsound=S0,6
p1facing=1
p2facing=1
p1stateno=801
p2stateno=802
forcestand=1
down.bounce=1
down.velocity=-1,-1
fall.xvelocity=4
fall.yvelocity=-2
fall.damage=60
ignorehitpause=1

[State -2,negative penality]
type=VarSet
trigger1=(((movetype=A)&&(movecontact))||(roundstate!=2))
var(21)=0

[State 0]
type=PlayerPush
trigger1=(1)
value=0

[State 0]
type=ChangeState
trigger1=(!animtime)&&((p2stateno!=802)||(p2stateno!=803)||(p2stateno!=5100))
value=0
ctrl=1
;---------------------------------------------------
[Statedef 801]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
sprpriority=-1

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(17)=0
ignorehitpause=1
persistent=0

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(18)=1
ignorehitpause=1
persistent=0

[State 0]
type=ChangeAnim
trigger1=(var(17)=0)
value=801

[State 0]
type=PlayerPush
trigger1=(1)
value=0

[State 0]
type=VarAdd
trigger1=(1)
var(17)=1
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=(animelem=3)
value=0,1

[State 0]
type=Turn
trigger1=(animelem=3)
ignorehitpause=1

[State 0]
type=ChangeState
trigger1=(!animtime)&&((p2stateno!=802)||(p2stateno!=803)||(p2stateno!=5100))
value=0
ctrl=1
;---------------------------------------------------
[Statedef 802]
type=A
movetype=H
physics=N
ctrl=0
velset=0,0
anim=5000
sprpriority=1

[State 0]
type=ChangeAnim
trigger1=(time<25)
value=5000

[State 0]
type=ChangeAnim
trigger1=(time>=25)
value=5050

[State 0]
type=PlayerPush
trigger1=(1)
value=0

[State 0]
type=PosAdd
trigger1=(!time)||(time=10)||(time=15)
x=ifelse(!time,4,ifelse(time=10,10,ifelse(time=15,3,0)))
y=ifelse(!time,-6,ifelse(time=10,-5,0))
ignorehitpause=1

[State 40,4]
type=VelSet
trigger1=(time=15)
x=6
y=-7

[State 0]
type=PlayerPush
trigger1=(1)
value=0
ignorehitpause=1

[State 0]
type=SelfState
trigger1=((time>22)&&(vel y<=0)&&(command="recovery")&&(canrecover))||(p2stateno!=801)
value=5210
ignorehitpause=1

[State 0]
type=SelfState
trigger1=((time>35)&&(vel y>0)&&(pos y>-10)&&(command="recovery")&&(canrecover))||(p2stateno!=801)
value=5200
ignorehitpause=1

[State 0]
type=StateTypeSet
trigger1=(time=14)
physics=A
ignorehitpause=1

[State 0]
type=SelfState
trigger1=(time>15)&&(pos y>-15)
value=5100
;---------------------------------------------------
;Elbow rush
[Statedef 900]
type=S
movetype=A
physics=S
ctrl=0
velset=20,0
PowerAdd=100
sprpriority=-1
anim=100

[State 0]
type=PlayerPush
trigger1=1
value=0
ignorehitpause=1

[State 0]
type=ChangeAnim
trigger1=p2bodydist x <-20
value=900

[State 0]
type=Turn
trigger1=p2bodydist x <-20
trigger2=vel x=0
ignorehitpause=1
persistent=0

[State 0]
type=ChangeState
trigger1=vel x=0
value=901
;---------------------------------------------------
[Statedef 901]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
sprpriority=-1
anim=901

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=VelSet
trigger1=!time
x=25
ignorehitpause=1

[State 0]
type=PlayerPush
trigger1=1
value=0
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=37,-48
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=S,SA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Light
priority=4,Hit
damage=32,10
pausetime=10,20
sparkno=-1
guard.sparkno=-1
sparkxy=0,-42
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=20
ground.hittime=20
ground.velocity=0,0
guard.velocity=0
air.velocity=0,0
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
airguard.velocity=0,0

[State 0]
type=ChangeState
;triggerall=p2movetype=H
triggerall=movehit
trigger1=command="elbow"
trigger1=time=[10,30]
trigger2=var(59)=1
trigger2=time>=10
trigger2=p2bodydist x<-50
trigger2=movehit
value=902

[State 0]
type=ChangeState
trigger1=time>30
value=0
ctrl=1

[State 0]
type=ChangeState
triggerall=(movehit&&power>=1000&&p2dist x>5)
trigger1=command="Big Bang Attack"
trigger2=(var(59)=1&&random>950)
value=1200

[State 0]
type=ChangeState
triggerall=(movecontact&&pos y>-30&&power>=750)
trigger1=command="Bakuhatsu"
trigger2=(var(59)=1&&random>950)
value=1100
;---------------------------------------------------
[Statedef 902]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
sprpriority=-1
PowerAdd=100
anim=902

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=PlayerPush
trigger1=1
value=0
ignorehitpause=1

[State 0]
type=Turn
trigger1=animelem=1
ignorehitpause=1
persistent=0

[State 0]
type=VelSet
trigger1=animelem=2
x=25
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=37,-48
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=S,SA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Light
priority=4,Hit
damage=32,10
pausetime=10,20
sparkno=-1
guard.sparkno=-1
sparkxy=0,-42
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=20
ground.hittime=20
ground.velocity=0,0
guard.velocity=0
air.velocity=0,0
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
airguard.velocity=0,0

[State 0]
type=ChangeState
;triggerall=p2movetype=H
triggerall=movehit
trigger1=command="elbow"
trigger1=time=[10,30]
trigger2=var(59)=1
trigger2=time>=10
trigger2=p2bodydist x<-50
trigger2=movehit
value=903

[State 0]
type=ChangeState
trigger1=time>30
value=0
ctrl=1

[State 0]
type=ChangeState
triggerall=(movehit&&power>=1000&&p2dist x>5)
trigger1=command="Big Bang Attack"
trigger2=(var(59)=1&&random>950)
value=1200

[State 0]
type=ChangeState
triggerall=(movecontact&&pos y>-30&&power>=750)
trigger1=command="Bakuhatsu"
trigger2=(var(59)=1&&random>950)
value=1100
;---------------------------------------------------
[Statedef 903]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
sprpriority=-1
PowerAdd=100
anim=902

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=PlayerPush
trigger1=1
value=0
ignorehitpause=1

[State 0]
type=Turn
trigger1=animelem=1
ignorehitpause=1
persistent=0

[State 0]
type=VelSet
trigger1=animelem=2
x=25
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=37,-48
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=S,SA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Light
priority=4,Hit
damage=32,10
pausetime=10,20
sparkno=-1
guard.sparkno=-1
sparkxy=0,-42
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=20
ground.hittime=20
ground.velocity=0,0
guard.velocity=0
air.velocity=0,0
envshake.time=ifelse(var(11)=0,0,10)
envshake.freq=ifelse(var(11)=0,0,60)
envshake.ampl=ifelse(var(11)=0,0,-4)
envshake.phase=ifelse(var(11)=0,0,90)
airguard.velocity=0,0

[State 0]
type=ChangeState
;triggerall=p2movetype=H
triggerall=movehit
trigger1=command="elbow"
trigger1=time=[10,30]
trigger2=var(59)=1
trigger2=time>=10
trigger2=p2bodydist x<-50
trigger2=movehit
value=904

[State 0]
type=ChangeState
trigger1=time>30
value=0
ctrl=1

[State 0]
type=ChangeState
triggerall=(movehit&&power>=1000&&p2dist x>5)
trigger1=command="Big Bang Attack"
trigger2=(var(59)=1&&random>970)
value=1200

[State 0]
type=ChangeState
triggerall=(movecontact&&pos y>-30&&power>=750)
trigger1=command="Bakuhatsu"
trigger2=(var(59)=1&&random>950)
value=1100
;---------------------------------------------------
[Statedef 904]
type=S
movetype=A
physics=S
ctrl=0
velset=0,0
sprpriority=-1
PowerAdd=100
anim=902

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 0]
type=Turn
trigger1=animelem=1
ignorehitpause=1
persistent=0

[State 0]
type=VelSet
trigger1=animelem=2
x=25
ignorehitpause=1

[State 0]
type=VelSet
trigger1=movecontact
x=0
ignorehitpause=1

[State 0]
type=EnvColor
trigger1=movehit
time=3
value=255,255,255
ignorehitpause=1
persistent=0

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=37,-48
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=S,SA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Light
priority=4,Hit
damage=48,15
pausetime=20,20
sparkno=-1
guard.sparkno=-1
sparkxy=0,-42
hitsound=S0,2
guardsound=S0,3
ground.type=trip
ground.slidetime=20
ground.hittime=20
ground.velocity=-10,-2
guard.velocity=-8
air.velocity=-10,-2
airguard.velocity=-8,-1
envshake.time=ifelse(var(11)=0,20,40)
envshake.freq=ifelse(var(11)=0,150,260)
envshake.ampl=ifelse(var(11)=0,-2,-4)
envshake.phase=ifelse(var(11)=0,90,90)
fall=1

[State 0]
type=ChangeState
trigger1=time>40
value=0
ctrl=1

[State 0]
type=ChangeState
triggerall=(movehit&&power>=1000&&p2dist x>5)
trigger1=command="Big Bang Attack"
trigger2=(var(59)=1&&random>970)
value=1200

[State 0]
type=ChangeState
triggerall=(movecontact&&pos y>-30&&power>=750)
trigger1=command="Bakuhatsu"
trigger2=(var(59)=1&&random>950)
value=1100
;---------------------------------------------------
;Renzoku Energy Dan initialtion
[Statedef 739]
type=S
movetype=I
physics=N
ctrl=0
velset=0,0
sprpriority=-1
PowerAdd=-200
anim=222

[State 0]
type=Varset
trigger1=!time
fvar(1)=0

[State 0]
type=Varset
trigger1=!time
fvar(2)=0

[State 0]
type=Varset
trigger1=!time
var(7)=0

[State 0]
type=Varadd
trigger1=time<15
fvar(1)=0.01

[State 0]
type=Varadd
trigger1=time<15
fvar(2)=0.02

[State 0]
type=Explod
trigger1=1
anim=6013
ID=6014
pos=-7,-42
postype=p1
facing=1
bindtime=-1
removetime=1
scale=fvar(2),fvar(2)
sprpriority=220
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=Explod
trigger1=1
anim=6013
ID=6014
pos=12,-36
postype=p1
facing=1
bindtime=-1
removetime=1
scale=fvar(1),fvar(1)
sprpriority=220
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0,Floating code]
type=PosAdd
trigger1=pos y<0
y=ifelse(var(3)=1,0.1,-0.1)

[State 0]
type=ChangeState
trigger1=time>30
value=740
;---------------------------------------------------
;Renzoku Energy Dan
[Statedef 740]
type=S
movetype=I
physics=N
ctrl=0
velset=0,0
sprpriority=-1
anim=222

[State 0]
type=Turn
trigger1=p2dist x<-3
ignorehitpause=1

[State 551: Floating code]
type=PosAdd
trigger1=(var(1)<1)
trigger1=(0&&var(1):=var(1)+1)
trigger2=(pos y<0)
y=ifelse(var(3)=1,0.1,-0.1)

[State 0]
type=Explod
trigger1=1
anim=6013
ID=6014
pos=-7,-42
postype=p1
facing=1
bindtime=-1
removetime=1
scale=fvar(2),fvar(2)
sprpriority=220
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=Explod
trigger1=1
anim=6013
ID=6014
pos=12,-36
postype=p1
facing=1
bindtime=-1
removetime=1
scale=fvar(1),fvar(1)
sprpriority=220
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=ChangeState
triggerall=(prevstateno!=741)
trigger1=(command="z")
trigger2=var(59)=1&&random>500&&power>200
value=741

[State 0]
type=ChangeState
triggerall=(prevstateno=741)
trigger1=(command="z")
trigger2=var(59)=1&&random>500&&power>200
value=742

[State 0]
type=ChangeState
trigger1=(command="FF")
trigger2=var(59)=1&&random>980
value=743

[State 0]
type=ChangeState
trigger1=(command="BB")
trigger2=var(59)=1&&random>980
value=744

[State 0]
type=ChangeState
trigger1=(command="UU")
trigger2=var(59)=1&&random>980
value=745

[State 0]
type=ChangeState
triggerall=pos y<0
trigger1=(command="DD")
trigger2=var(59)=1&&random>980
value=746

[State 0, ]
type=VarSet
trigger1=power<=0
var(19)=300

[State 0]
type=ChangeState
trigger1=power<=0||command="a"||command="b"||command="x"||command="y"||win
value=ifelse(power<0,5300,ifelse(pos y>=0,0,551))
ctrl=ifelse(power>0,1,0)
;------------------------------------------------------------
;Fireball #1
[Statedef 741]
type=S
movetype=A
physics=S
velset=0,0
sprpriority=0
anim=223
ctrl=0

[State 0]
type=VarAdd
trigger1=!time
var(7)=1

[State 0]
type=Explod
trigger1=time<2
anim=6013
ID=6014
pos=27,-42
postype=p1
facing=1
bindtime=-1
removetime=1
scale=fvar(2),fvar(2)
sprpriority=220
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=Explod
trigger1=time>=7
anim=6013
ID=6014
pos=-7,-42
postype=p1
facing=1
bindtime=-1
removetime=1
scale=fvar(2),fvar(2)
sprpriority=220
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=Explod
trigger1=time>=7
anim=6013
ID=6014
pos=12,-36
postype=p1
facing=1
bindtime=-1
removetime=1
scale=fvar(1),fvar(1)
sprpriority=220
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0,Floating code]
type=PosAdd
trigger1=pos y<0
y=ifelse(var(3)=1,0.1,-0.1)

[State 0]
type=PlaySnd
trigger1=animelem=1
value=1,9

[State 0]
type=PlaySnd
trigger1=animelem=1
value=1,10

[State 0]
type=PlaySnd
trigger1=animelem=1
value=3,6
channel=0

[State 0]
type=Helper
trigger1=(animelem=1)
helpertype=normal
name="Wave"
ID=521
pos=0,0
postype=p1
stateno=521
keyctrl=0
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=Helper
trigger1=animelem=1
helpertype=normal
name="fireball"
ID=227
pos=30,-40
postype=p1
facing=1
stateno=227
keyctrl=0
ownpal=1
sprpriority=1000
size.xscale=0.4
size.yscale=0.4
size.ground.back=6
size.ground.front=6
size.air.back=6
size.air.front=6

[State 0]
type=PowerAdd
trigger1=animelem=1
value=-50

[State 0, ]
type=VarSet
trigger1=power<=0
var(19)=300

[State 0]
type=ChangeState
trigger1=!animtime
value=ifelse(power>0,740,5300)
ignorehitpause=1

[State 0]
type=ChangeState
triggerall=(time>5&&!win)
trigger1=(power>0&&command="z")
trigger2=(var(59)=1&&random>460&&power>100)
value=742
;------------------------------------------------------------
;Fireball #2
[Statedef 742]
type=S
movetype=A
physics=S
velset=0,0
sprpriority=0
anim=224
ctrl=0

[State 0]
type=VarAdd
trigger1=!time
var(7)=1

[State 0,Floating code]
type=PosAdd
trigger1=pos y<0
y=ifelse(var(3)=1,0.1,-0.1)

[State 0]
type=Explod
trigger1=time<2
anim=6013
ID=6014
pos=23,-42
postype=p1
facing=1
bindtime=-1
removetime=1
scale=fvar(2),fvar(2)
sprpriority=220
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=Explod
trigger1=time>=7
anim=6013
ID=6014
pos=-7,-42
postype=p1
facing=1
bindtime=-1
removetime=1
scale=fvar(2),fvar(2)
sprpriority=220
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=Explod
trigger1=time>=7
anim=6013
ID=6014
pos=12,-36
postype=p1
facing=1
bindtime=-1
removetime=1
scale=fvar(1),fvar(1)
sprpriority=220
ownpal=1
removeongethit=1
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=animelem=1
value=1,9

[State 0]
type=PlaySnd
trigger1=animelem=1
value=1,10

[State 0]
type=PlaySnd
trigger1=animelem=1
value=3,6
channel=0

[State 0]
type=Helper
trigger1=(animelem=1)
helpertype=normal
name="Wave"
ID=521
pos=0,0
postype=p1
stateno=521
keyctrl=0
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=Helper
trigger1=animelem=1
helpertype=normal
name="fireball"
ID=227
pos=30,-40
postype=p1
facing=1
stateno=227
keyctrl=0
ownpal=1
sprpriority=1000
size.xscale=0.4
size.yscale=0.4
size.ground.back=6
size.ground.front=6
size.air.back=6
size.air.front=6

[State 0]
type=PowerAdd
trigger1=animelem=1
value=-50

[State 0, ]
type=VarSet
trigger1=power<=0
var(19)=300

[State 0]
type=ChangeState
trigger1=!animtime
value=ifelse(power>0,740,5300)
ignorehitpause=1

[State 0]
type=ChangeState
triggerall=(time>5&&!win)
trigger1=(power>0&&command="z")
trigger2=(var(59)=1&&random>460&&power>100)
value=741
;------------------------------------------------------------
;Renzoku Zanzoken forward
[Statedef 743]
type=S
movetype=I
physics=N
velset=3,0
sprpriority=0
ctrl=0

[State 0]
type=ChangeAnim
trigger1=!time
value=100
elem=2

[State 0]
type=ChangeAnim
trigger1=time=20
value=105
elem=2

[State 0]
type=AssertSpecial
trigger1=time=[1,20]
flag=invisible
flag2=noshadow
ignorehitpause=1

[State 0]
type=PowerAdd
trigger1=time=10
value=-80
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=!time
trigger2=time=20
value=2,2

[State 0]
type=AfterImage
trigger1=var(11)=0
trigger1=!time
time=5
length=20
palcontrast=120,120,120
palmul=.35,.35,.35
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=PlayerPush
trigger1=time=[1,50]
value=0

[State 0]
type=NotHitBy
trigger1=time=[1,50]
value=SCA,NT,AT
time=1
ignorehitpause=1

[State 0]
type=PosAdd
trigger1=time=20
x=p2dist x+100
y=ifelse((command="holdup"),-90,ifelse((command="holddown"),90,0))

[State 0]
type=ScreenBound
trigger1=time>=20
movecamera=1,1
value=0

[State 0]
type=AfterImage
trigger1=var(11)=0
trigger1=time=20
time=5
length=20
palcontrast=120,120,120
palmul=.65,.65,.65
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=Turn
trigger1=time=20

[State 0]
type=ChangeState
trigger1=time>=30
value=740

;------------------------------------------------------------
;Renzoku Zanzoken Back
[Statedef 744]
type=S
movetype=I
physics=N
velset=-3,0
sprpriority=0
ctrl=0

[State 0]
type=ChangeAnim
trigger1=!time
value=105
elem=2

[State 0]
type=PowerAdd
trigger1=time=10
value=-80
ignorehitpause=1

[State 0]
type=AssertSpecial
trigger1=time=[1,20]
flag=invisible
flag2=noshadow
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=!time
trigger2=time=20
value=2,2

[State 0]
type=AfterImage
trigger1=var(11)=0
trigger1=!time
time=5
length=20
palcontrast=120,120,120
palmul=.35,.35,.35
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=PlayerPush
trigger1=time=[1,50]
value=0

[State 0]
type=NotHitBy
trigger1=time=[1,50]
value=SCA,NT,AT
time=1
ignorehitpause=1

[State 0]
type=PosAdd
trigger1=time=20
x=-100
y=ifelse((command="holdup"),-90,ifelse((command="holddown"),90,0))

[State 0]
type=ScreenBound
trigger1=time>=20
movecamera=1,1
value=0

[State 0]
type=AfterImage
trigger1=var(11)=0
trigger1=time=20
time=5
length=20
palcontrast=120,120,120
palmul=.65,.65,.65
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=ChangeState
trigger1=time>=30
value=740
;------------------------------------------------------------
;Renzoku Zanzoken Up
[Statedef 745]
type=S
movetype=I
physics=N
velset=0,-3
sprpriority=0
ctrl=0

[State 0]
type=ChangeAnim
trigger1=!time
value=41

[State 0]
type=PowerAdd
trigger1=time=10
value=-80
ignorehitpause=1

[State 0]
type=AssertSpecial
trigger1=time=[1,20]
flag=invisible
flag2=noshadow
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=!time
trigger2=time=20
value=2,2

[State 0]
type=AfterImage
trigger1=var(11)=0
trigger1=!time
time=5
length=20
palcontrast=120,120,120
palmul=.35,.35,.35
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=PlayerPush
trigger1=time=[1,50]
value=0

[State 0]
type=NotHitBy
trigger1=time=[1,50]
value=SCA,NT,AT
time=1
ignorehitpause=1

[State 0]
type=PosAdd
trigger1=time=20
x=ifelse((command="holdfwd"),90,ifelse((command="holdback"),-90,0))
y=-20

[State 0]
type=ScreenBound
trigger1=time>=20
movecamera=1,1
value=0

[State 0]
type=AfterImage
trigger1=var(11)=0
trigger1=time=20
time=5
length=20
palcontrast=120,120,120
palmul=.65,.65,.65
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=ChangeState
trigger1=time>=30
value=740
;------------------------------------------------------------
;Renzoku Zanzoken Down
[Statedef 746]
type=S
movetype=I
physics=N
velset=0,3
sprpriority=0
ctrl=0

[State 0]
type=ChangeAnim
trigger1=!time
value=41

[State 0]
type=PowerAdd
trigger1=time=10
value=-80
ignorehitpause=1

[State 0]
type=AssertSpecial
trigger1=time=[1,20]
flag=invisible
flag2=noshadow
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=!time
trigger2=time=20
value=2,2

[State 0]
type=AfterImage
trigger1=var(11)=0
trigger1=!time
time=5
length=20
palcontrast=120,120,120
palmul=.35,.35,.35
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=PlayerPush
trigger1=time=[1,50]
value=0

[State 0]
type=NotHitBy
trigger1=time=[1,50]
value=SCA,NT,AT
time=1
ignorehitpause=1

[State 0]
type=PosAdd
trigger1=time=20
x=ifelse((command="holdfwd"),90,ifelse((command="holdback"),-90,0))
y=20

[State 0]
type=ScreenBound
trigger1=time>=20
movecamera=1,1
value=0

[State 0]
type=AfterImage
trigger1=var(11)=0
trigger1=time=20
time=5
length=20
palcontrast=120,120,120
palmul=.65,.65,.65
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=ChangeState
trigger1=time>=30
value=740
;--------------------------------------------------------------
;Rage mode
[Statedef 7000]
type=S
movetype=I
physics=N
velset=0,0
ctrl=0

[State 0]
type=ChangeAnim
trigger1=(!time&&anim!=700)
value=700

[State 0]
type=NotHitBy
trigger1=1
value=SCA;,AT,AA,AP
time=1
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=!time
value=1,0
channel=2

[State 0]
type=PlaySnd
trigger1=!time
value=2,0
channel=3

[State 0]
type=Helper
trigger1=!time&&numhelper(6000)=0
helpertype=normal
name="aura Starter"
ID=6000
postype=p1
facing=1
stateno=6000
sprpriority=999
size.xscale=0.6
size.yscale=0.6
keyctrl=0
ownpal=1

[State 3900,VarSet]
type=VarSet
trigger1=!time
v=16
value=1

[State 0,Floating code]
type=PosAdd
trigger1=pos y<0
y=ifelse(var(3)=1,0.1,-0.1)

[State 0]
type=ChangeState
trigger1=!animtime
value=7001
;---------------------------------------------------------------------------
; Rage mode 2
[Statedef 7001]
type=S
movetype=I
physics=N
velset=0,0
ctrl=0

[State 0]
type=NotHitBy
trigger1=1
value=SCA;,AA,AT,AP
time=1
ignorehitpause=1

[State 0]
type=ChangeAnim
trigger1=(!time)&&(anim!=701)
value=701

[State 0]
type=AllpalFX
trigger1=!time
time=5
Add=130,130,130

[State 0]
type=StateTypeSet
trigger1=time=200
movetype=A
ignorehitpause=1

[State 0]
type=AssertSpecial
trigger1=time=[1,5]
flag=globalnoshadow
ignorehitpause=1

[State 0]
type=VarRandom
trigger1=time<=10
v=10
range=-100,100
ignorehitpause=1

[State 0]
type=VarSet
trigger1=!time
var(11)=1

[State 0]
type=Helper
trigger1=time=[0,8]
trigger1=pos y>=0
helpertype=normal
name="Rock"
ID=6192
postype=p1
pos=var(10),floor(-pos y)-2
facing=1
stateno=6195
sprpriority=ifelse(random>500,-20,20)
size.xscale=ifelse(random>500,0.4,ifelse(random>500,0.5,ifelse(random>500,0.6,ifelse(random>500,0.7,ifelse(random>500,0.8,ifelse(random>500,0.9,1.0))))))
size.yscale=ifelse(random>500,0.4,ifelse(random>500,0.5,ifelse(random>500,0.6,ifelse(random>500,0.7,ifelse(random>500,0.8,ifelse(random>500,0.9,1.0))))))
keyctrl=0
ownpal=1

[State 0]
type=HitDef
trigger1=!time
attr=S,NA
hitflag=
guardflag=
priority=1,miss
damage=0
sparkno=-1
sparkxy=0,0
mindist=0
guard.dist=0
maxdist=0

[State 0]
type=PlaySnd
trigger1=time>=10
trigger1=(gametime%20)=0
value=2,1
channel=4

[State 0]
type=PlaySnd
trigger1=!time
value=3,9
channel=0

[State 0]
type=Helper
trigger1=time>=0&&numhelper(6001)=0
helpertype=normal
name="aura"
ID=6001
postype=p1
facing=1
stateno=6001
sprpriority=999
size.xscale=0.6
size.yscale=0.6
keyctrl=0
ownpal=1

[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Rage pressure"
ID=6002
postype=p1
pos=20,0
facing=1
stateno=6002
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Rage pressure"
ID=6002
postype=p1
pos=-20,0
facing=-1
stateno=6002
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Rage pressure"
ID=6003
postype=p1
pos=20,-20
facing=1
stateno=6003
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Rage pressure"
ID=6003
postype=p1
pos=-20,-20
facing=-1
stateno=6003
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Rage pressure"
ID=6004
postype=p1
pos=20,-25
facing=1
stateno=6004
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Rage pressure"
ID=6004
postype=p1
pos=-20,-25
facing=-1
stateno=6004
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Rage pressure"
ID=6005
postype=p1
pos=20,-30
facing=1
stateno=6005
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Rage pressure"
ID=6005
postype=p1
pos=-20,-30
facing=-1
stateno=6005
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
helpertype=normal
name="Rage pressure"
ID=6006
postype=p1
pos=-20,-30
facing=-1
stateno=6006
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Rage pressure"
ID=6007
postype=p1
pos=20,0
facing=1
stateno=6007
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Rage pressure"
ID=6007
postype=p1
pos=-20,0
facing=-1
stateno=6007
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Rage pressure"
ID=6008
postype=p1
pos=20,5
facing=1
stateno=6008
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Rage pressure"
ID=6008
postype=p1
pos=-20,5
facing=-1
stateno=6008
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Rage pressure"
ID=6009
postype=p1
pos=20,10
facing=1
stateno=6009
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1
[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Rage pressure"
ID=6009
postype=p1
pos=-20,10
facing=-1
stateno=6009
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=time=2
trigger1=pos y<-0
helpertype=normal
name="Rage pressure"
ID=6010
postype=p1
pos=-20,10
facing=-1
stateno=6010
sprpriority=999
keyctrl=0
ownpal=1
size.ground.back=40
size.ground.front=20
size.height=60
size.proj.doscale=1
ignorehitpause=1

[State 0]
type=PalFX
trigger1=time>=6
time=1
add=50,50,50

[State dust]
type=Explod
trigger1=pos y>-90
anim=6014
pos=0,floor(-pos y)
postype=p1
scale=1.5,0.8
sprpriority=-40
ontop=0
ownpal=1
persistent=0

[State 0]
type=Explod
trigger1=pos y>-90
anim=6015
ID=666
pos=-20,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-2,0
removetime=-2
scale=.7,.7
sprpriority=10
ownpal=1
persistent=0

[State 0]
type=Explod
trigger1=pos y>-90
anim=6015
ID=666
pos=20,-(floor(pos y))
postype=p1
facing=-1
bindtime=1
vel=2,0
removetime=-2
sprpriority=10
scale=.7,.7
ownpal=1
persistent=0

[State 0,Floating code]
type=PosAdd
trigger1=pos y<0
y=ifelse(var(3)=1,0.1,-0.1)

[State 0]
type=AfterImage
trigger1=time=8
time=10000
length=20
paladd=20,0
palcontrast=160,0
palmul=.65,.15,.15
timegap=1
framegap=1
trans=add
ignorehitpause=1

[State 0]
type=ChangeState
trigger1=time>90
value=702
ctrl=1
;--------------------------------------------------------------------- 
[Statedef 8000]
type=S

[State 0]
type=ChangeState
trigger1=time>1
value=8001
;------------------------------------------------------------
;Big Bang Attack
[Statedef 1199]
type=S
movetype=I
physics=S
velset=0,0
sprpriority=0
anim=1200
ctrl=0
[State 0]
type=VarSet
trigger1=1
var(17)=0
ignorehitpause=1
persistent=0
[State 0]
type=VarSet
trigger1=1
var(18)=0
ignorehitpause=1
persistent=0
[State 0]
type=ChangeState
trigger1=1
value=1200
;------------------------------------------------------------
;Big Bang Attack
[Statedef 1200]
type=S
movetype=I
physics=S
velset=0,0
ctrl=0

[State 0]
type=null
trigger1=!time&&var(18)=0
trigger1=(0&&var(17):=0)
trigger2=!time&&var(18)=0
trigger2=(0&&var(18):=1)
trigger3=!time&&var(17)=0
trigger3=(0&&fvar(1):=0)
ignorehitpause=1

[State 0]
type=VarAdd
trigger1=1
var(17)=1
ignorehitpause=1

[State 0]
type=Explod
trigger1=(var(17)=2)
anim=9001
ID=9001
pos=0,0
postype=back
bindtime=-1
removetime=-2
supermovetime=99999999
pausemovetime=99999999
scale=0.9,1.1
sprpriority=-5
ontop=0
ownpal=1

[State AssertSpecial]
type=AssertSpecial
trigger1=var(17)=[2,24]
flag=GlobalNoShadow
flag2=NoFG
flag3=nobardisplay

[State 0]
type=AssertSpecial
trigger1=var(17)=[2,24]
flag=nomusic
ignorehitpause=1

[State 1200: ragebar display]
type=VarSet
trigger1=1
var(12)=ifelse((var(17)=[2,24]),1,0)

[State 0]
type=SuperPause
trigger1=var(17)=2
time=22
anim=-1
pos=8,-46
sound=S1,14
movetime=22
darken=1
poweradd=-1000
persistent=0

[State dust]
type=Explod
trigger1=var(17)>=25
trigger1=pos y>-90
anim=6014
pos=0,floor(-pos y)
postype=p1
scale=1.5,0.8
sprpriority=-40
ontop=0
ownpal=1
persistent=0

[State 1200:Orb]
type=VarAdd
trigger1=var(17)>=11
trigger1=fvar(1)<=0.45
fvar(1)=0.05
[State 1200:Orb]
type=Explod
trigger1=(var(17)>=10)
ID=6046
ownpal=1
anim=6046
pos=35,-57
postype=p1
bindtime=-1
removetime=1
sprpriority=5
removeongethit=1
ignorehitpause=1
pausemovetime=9999
supermovetime=99999
scale=fvar(1),fvar(1)

[State 1002: Fire Effect]
type=Helper
trigger1=(var(17)=10)
helpertype=normal
name="Wave"
ID=526
pos=0,0
postype=p1
stateno=526
keyctrl=0
ownpal=1
ignorehitpause=1
persistent=0

[State 0: Dust]
type=Explod
trigger1=var(17)=22
anim=6015
pos=-20,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-2,0
removetime=-2
scale=.5,.5
sprpriority=10
ownpal=1
[State 0: Dust]
type=Explod
trigger1=var(17)=22
anim=6015
pos=20,-(floor(pos y))
postype=p1
facing=-1
bindtime=1
vel=2,0
removetime=-2
sprpriority=10
scale=.5,.5
ownpal=1

[State 0]
type=PlaySnd
trigger1=var(17)=25
value=1,0
channel=2

[State 0]
type=PlaySnd
trigger1=var(17)=25
value=2,0
channel=3

[State 0]
type=PlaySnd
trigger1=var(17)>=25
trigger1=(gametime%20)=0
value=2,1
channel=4
volume=-120

[State 0]
type=PalFX
trigger1=var(17)>=24
time=1
add=50,50,50

[State 0]
type=EnvColor
trigger1=(var(17)=24)
time=4
Value=255,255,255
ignorehitpause=1

[State 0]
type=Helper
trigger1=(var(17)>=25)&&(numhelper(6001)=0)
helpertype=normal
name="aura"
ID=6001
postype=p1
facing=1
stateno=6001
sprpriority=999
size.xscale=(ifelse(var(58)=0,.5,.65))
size.yscale=(ifelse(var(58)=0,.65,.7))
keyctrl=0
ownpal=1
[State 0: aura snd]
type=PlaySnd
trigger1=(gametime%20)=0
value=2,1
channel=4
volume=-120

[State 0,Floating code]
type=PosAdd
trigger1=(pos y<0)&&(var(17)>24)
y=ifelse(var(3)=1,0.1,-0.1)

[State 0]
type=ChangeState
trigger1=var(17)>25
value=1201
;------------------------------------------------------------
;Big Bang Attack aim
[Statedef 1201]
type=S
movetype=I
physics=S
velset=0,0
ctrl=0

[State 0]
type=null
trigger1=!time&&var(18)=1
trigger1=(0&&var(17):=0)
trigger2=!time&&var(18)=1
trigger2=(0&&var(18):=1)
ignorehitpause=1

[State 0]
type=VarAdd
trigger1=1
var(17)=1
ignorehitpause=1

[State 0]
type=PalFX
trigger1=1
time=1
add=50,50,50

[State 0]
type=Width
trigger1=1
edge=20,0
player=20,0
ignorehitpause=1

[State 0: aura snd]
type=PlaySnd
trigger1=(gametime%20)=0
value=2,1
channel=4
volume=-120

[State 0]
type=PlaySnd
trigger1=var(17)=0
value=3,8
channel=0

[State 1200:Front Orb 2]
type=VarAdd
trigger1=fvar(1)<=0.45
fvar(1)=0.05
[State 0: orb 2]
type=Explod
trigger1=1
ID=6046
ownpal=1
anim=6046
pos=35,-57
postype=p1
bindtime=-1
removetime=1
sprpriority=5
removeongethit=1
ignorehitpause=1
scale=fvar(1),fvar(1)

[State 0,Floating code]
type=PosAdd
trigger1=pos y<0
y=ifelse(var(3)=1,0.1,-0.1)

[State 0.y]
type=ChangeAnim
trigger1=var(17)>10&&anim!=1201
value=1201

[State 0]
type=ChangeState
trigger1=var(17)>10
value=1202
;------------------------------------------------------------
;Big Bang Attack fire
[Statedef 1202]
type=S
movetype=I
physics=S
velset=0,0
ctrl=0

[State 0.x]
type=VarSet
trigger1=!time&&var(18)=0
var(17)=0
ignorehitpause=1
persistent=0

[State 0.y]
type=ChangeAnim
trigger1=var(17)=0&&anim!=1201
value=1201

[State 0.x]
type=VarSet
trigger1=!time&&var(18)=0
var(18)=1
ignorehitpause=1
persistent=0

[State 0]
type=VarAdd
trigger1=1
var(17)=1
ignorehitpause=1

[State 0]
type=PalFX
trigger1=(var(17)<10)
time=1
add=50,50,50

[State 0]
type=PalFX
trigger1=(var(17)=[10,27])
time=1
add=(50-((time-10)*3)),(50-((time-10)*3)),(50-((time-10)*3))

[State 0]
type=PalFX
trigger1=(var(17)=27)
time=1
add=0,0,0

[State 0]
type=Width
trigger1=(1)
edge=20,0
player=20,0
ignorehitpause=1

[State 0,Floating code]
type=PosAdd
trigger1=(pos y<0)
y=ifelse(var(3)=1,0.1,-0.1)

[State 0: orb 2]
type=Explod
trigger1=!var(17)
anim=6046
ID=6046
ownpal=1
postype=p1
pos=35,-57
bindtime=-1
removetime=8
sprpriority=5
removeongethit=1
ignorehitpause=1
scale=fvar(1),fvar(1)

[State 1002: back dust]
type=Explod
trigger1=(var(17)=[0,10])&&(gametime%5=0)&&(pos y>-90)
anim=6015
ID=666
pos=100,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-4,0
removetime=-2
scale=.5,.5
sprpriority=-10
ownpal=1
[State 1002: back dust 2]
type=Explod
trigger1=(var(17)=[0,10])&&(gametime%5=0)&&(pos y>-90)
anim=6015
ID=666
pos=70,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-4,0
removetime=-2
scale=1,1
sprpriority=-10
ownpal=1
[State 1002: front dust]
type=Explod
trigger1=(var(17)=[0,10])&&(gametime%5=0)&&(pos y>-90)
anim=6015
ID=666
pos=60,-(floor(pos y))+10
postype=p1
facing=1
bindtime=1
vel=-4,0
removetime=-2
scale=.5,.5
sprpriority=10
ownpal=1
[State 1002: front dust 2]
type=Explod
trigger1=(var(17)=[0,10])&&(gametime%5=0)&&(pos y>-90)
anim=6015
ID=666
pos=10,-(floor(pos y))+10
postype=p1
facing=1
bindtime=1
vel=-4,0
removetime=-2
scale=1,1
sprpriority=10
ownpal=1

[State 0]
type=PlaySnd
trigger1=animelem=2
value=1,8
channel=8

[State power wave]
type=Explod
trigger1=animelem=2
vel=0,0
ontop=0
ownpal=1
anim=6041
pos=32,-55
postype=p1
scale=0.6,0.8
accel=-0.01,0
sprpriority=-2
[State 0]
type=Helper
trigger1=animelem=2
helpertype=normal
name="BBA"
ID=1220
pos=60,-55
postype=p1
facing=1
stateno=1220
keyctrl=0
ownpal=1
sprpriority=1900
size.ground.back=60
size.ground.front=30
size.air.back=60
size.air.front=30

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;--------------------------------------------------------------------- 
[Statedef 8002]
type=S

[State 0]
type=ChangeState
trigger1=time>1
value=8003
;------------------------------------------------------------
;backflip attack
[Statedef 500]
type=S
movetype=I
physics=S
juggle=3
PowerAdd=100
velset=0,0
ctrl=0

[State 0]
type=PosSet
trigger1=!time&&pos y<0
y=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.1)
ignorehitpause=1
persistent=0

[State 5120,1a]
type=ChangeAnim
trigger1=anim !=(500)
value=500

[State 0]
type=VelSet
trigger1=animelem=1
x=-2
y=-0.3

[State 0]
type=VelSet
trigger1=animelem=2
x=-8
y=0.32

[State 0]
type=VelSet
trigger1=animelem=3
trigger2=movehit
x=0
y=0

[State 0]
type=StateTypeSet
trigger1=animelem=7
statetype=S
movetype=A
physics=N
ignorehitpause=1

[State 0]
type=VelSet
trigger1=animelem=7
x=8
y=0

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=30,-38
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Hard
fall.animtype=Back
priority=6,Hit
damage=80,10
pausetime=8,28
sparkno=-1
guard.sparkno=-1
sparkxy=10,-38
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=20
ground.hittime=20
ground.velocity=-8,-2
guard.velocity=-6
air.velocity=-8,-2
airguard.velocity=-8,0
fall=1
;ignorehitpause=0
;persistent=1

[State 0]
type=Explod
trigger1=animelem=7
anim=6015
ID=6015
pos=0,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-2,0
scale=.7,.7
removetime=-2
sprpriority=10
ownpal=1

[State 106,3]
type=MakeDust
trigger1=time>23
pos=-25,floor(-pos y)
spacing=2

[State 0]
type=ChangeState
trigger1=time>38
value=104
ctrl=1

[State 0]
type=ChangeState
triggerall=movecontact
trigger1=(command="holdc"&&p2bodydist x<10)||(var(59)=1&&random<500)
value=252

[State 0]
type=ChangeState
triggerall=movecontact
trigger1=(command="elbow")||(var(59)=1&&random<500)
value=900

[State 0]
type=ChangeState
triggerall=(movehit&&power>=1000&&p2dist x>5)
trigger1=(command="Big Bang Attack")||(var(59)=1&&random>950)
value=1200

[State 0]
type=ChangeState
triggerall=(movecontact&&power>=750)
trigger1=(command="Bakuhatsu")||(var(59)=1&&random>800)
value=1100

[State 0]
type=ChangeState
triggerall=(movehit&&power>=2000&&p2dist x>5)
trigger1=(command="Super Beam")||(var(59)=1&&random>990)
value=1000
;--------------------------------------------------------------
;Dive Kick
[Statedef 501]
type=A
movetype=A
physics=N
sprpriority=0
velset=0,0
PowerAdd=100
juggle=5
anim=451
hitcountpersist=1
ctrl=0

[State Combo power decrease]
type=Null
trigger1=(movehit)
trigger1=(fvar(5):=fvar(5)+0.09)
ignorehitpause=1
persistent=0

[State 0]
type=PlaySnd
trigger1=animelem=2
value=0,1

[State 0]
type=VelSet
trigger1=animelem=2
x=12
y=6

[State 0]
type=StateTypeSet
trigger1=animelem=3
trigger2=pos y>-5
physics=A
ignorehitpause=1

[State 0, ]
type=Explod
trigger1=(movecontact)
anim=6000+(moveguarded)
ID=6000
pos=19,-9
postype=p1
facing=1
bindtime=1
removetime=-2
scale=0.5,0.5
sprpriority=1
ontop=1
ownpal=1
ignorehitpause=1
persistent=0

[State 0]
type=HitDef
trigger1=!time
attr=S,NA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Light
priority=4,Hit
damage=36,13
pausetime=15,15
sparkno=-1
guard.sparkno=-1
sparkxy=10,-2
hitsound=S0,2
guardsound=S0,3
ground.type=High
ground.slidetime=13
ground.hittime=13
ground.velocity=-4,4
guard.velocity=-6
air.velocity=-4,4
fall=1
persistent=0

[State 0]
type=ChangeState
trigger1=(movecontact)
value=502

[State 0]
type=ChangeState
trigger1=(!animtime)
trigger2=(time>20)&&((screenpos x<=30)||(screenpos x>=290))
value=50
ctrl=1
;--------------------------------------------------------------
;Dive Kick 2
[Statedef 502]
type=A
movetype=I
physics=A
sprpriority=0
velset=-6,-2
anim=452
hitcountpersist=1
ctrl=0

[State 0]
type=ChangeState
trigger1=!animtime
value=50
ctrl=1
;------------------------------------------------------------
;Kienzan low
[Statedef 510]
type=S
movetype=I
physics=S
juggle=3
PowerAdd=100
velset=0,0
anim=510
ctrl=0

[State 0, ]
type=Explod
trigger1=!time
trigger1=0&&fvar(0):=0
trigger2=!time
anim=512
ID=512
pos=-12,-75
postype=p1
bindtime=-1
removetime=20
sprpriority=5
scale=0,0
ownpal=1
removeongethit=1

[State 0, ]
type=PlaySnd
trigger1=!time
value=1,15
channel=5
loop=1
volume=-100
freqmul=1.4

[State 0, ]
type=PlaySnd
trigger1=!time
value=1,4
channel=6
freqmul=5.0
volume=255

[State 0, ]
type=PlaySnd
trigger1=animelem=2
value=0,7

[State 0, ]
type=StopSnd
trigger1=time=25
channel=5

[State 0, ]
type=ModifyExplod
trigger1=time<=20
ID=512
anim=512
facing=1
scale=fvar(0),fvar(0)

[State 0]
type=Helper
trigger1=animelem=2
trigger2=time=[1,20]
trigger2=0&&fvar(0):=fvar(0)+0.05
helpertype=normal
name="kienzan"
ID=427
pos=-12,-75
postype=p1
facing=1
stateno=427
keyctrl=0
ownpal=1
sprpriority=5

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;------------------------------------------------------------
;Kienzan high
[Statedef 511]
type=S
movetype=I
physics=S
juggle=3
PowerAdd=100
velset=0,0
anim=ifelse(prevstateno=220,511,510)
ctrl=0

[State 0, ]
type=Explod
trigger1=!time
trigger1=0&&fvar(0):=0
trigger2=!time
anim=512
ID=512
pos=-12,-75
postype=p1
bindtime=-1
removetime=ifelse(prevstateno=220,10,20)
sprpriority=5
scale=0,0
ownpal=1
removeongethit=1

[State 0, ]
type=PlaySnd
trigger1=!time
value=1,15
channel=5
loop=1
volume=-100
freqmul=1.4

[State 0, ]
type=PlaySnd
trigger1=!time
value=1,4
channel=6
freqmul=5.0
volume=255

[State 0, ]
type=PlaySnd
trigger1=animelem=2
value=0,7

[State 0, ]
type=StopSnd
trigger1=time=25
channel=5

[State 0, ]
type=ModifyExplod
trigger1=ifelse(prevstateno=220,time<=10,time<=20)
ID=512
anim=512
facing=1
scale=ifelse(prevstateno=220,fvar(0)*2,fvar(0)),ifelse(prevstateno=220,fvar(0)*2,fvar(0))

[State 0]
type=Helper
trigger1=animelem=2
trigger2=time=[1,20]
trigger2=0&&fvar(0):=fvar(0)+0.05
helpertype=normal
name="kienzan"
ID=427
pos=-12,-75
postype=p1
facing=1
stateno=427
keyctrl=0
ownpal=1
sprpriority=5

[State 0]
type=ChangeState
trigger1=!animtime
value=0
ctrl=1
;---------------------------------------------------------------------------
; Faultless defense
[Statedef 540]
type=U
statetype=U
physics=U
velSet=0,0
ctrl=0

[State 120,1]
type=ChangeAnim
trigger1=(var(17)=0)
value=(160+(statetype=C)+(statetype=A)*2)
elem=ifelse(((anim!=[160,163])||(anim!=[10160,10163])),2,1)

[State 120,1]
type=ChangeAnim
trigger1=((anim!=[160,163])||(anim!=[10160,10163]))
value=(160+(statetype=C)+(statetype=A)*2)
elem=2

[State 0]
type=VarSet
trigger1=var(17)=0
var(17)=1
ignorehitpause=1

[State 0]
type=Helper
trigger1=(!time)&&(!numhelper(540))
helpertype=normal
name="Aura"
ID=540
pos=0,0
postype=p1
stateno=541
keyctrl=1
ownpal=1
size.xscale=1.0
size.yscale=1.0
sprpriority=-1
ignorehitpause=1

[State 0]
type=HitOverride
trigger1=1
slot=0
attr=SCA,AT,AP,AA
stateno=540
time=1
ignorehitpause=1

[State 120,2]
type=StateTypeSet
trigger1=(!time)&&(statetype=S)
physics=S

[State 120,3]
type=StateTypeSet
trigger1=(!time)&&(statetype=C)
physics=C

[State 120,4]
type=StateTypeSet
trigger1=(!time)&&(statetype=A)
physics=N

[State 0,Floating code]
type=PosAdd
trigger1=(pos y<0)
y=ifelse(var(3)=1,0.1,-0.1)

[State 0]
type=PowerAdd
trigger1=1
value=-7

[State 120,5]
type=ChangeState
trigger1=(var(59)=0)&&((command!="holdx")||(command!="holda")||(power<=0))
trigger2=(var(59)=1)&&((random>500)||(power<=0))
value=ifelse(statetype=S,0,ifelse(statetype=C,11,551))
ctrl=1
;---------------------------------------------------------------------------
; Faultless defense helper
[Statedef 541]
type=U
physics=N
velSet=0,0
ctrl=0
sprpriority=-5

[State 120,1]
type=ChangeAnim
trigger1=1
value=parent,anim
elem=parent,animelemno(0)

[State 0]
type=AssertSpecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State 0]
type=BindToParent
trigger1=(1)
time=1
pos=ifelse(random<333,-1,ifelse((random=[333,666]),1,0)),ifelse(random<333,-1,ifelse((random=[333,666]),1,0))
ignorehitpause=1

[State 0]
type=NotHitBy
trigger1=1
value=SCA,AA,AT,AP
time=1
ignorehitpause=1

[State 0]
type=AfterImage
trigger1=!time
time=5
length=50
paladd=20,20,0
palcontrast=160,160,0
palmul=.65,.65,.15
timegap=1
framegap=1
sprpriority=-5
trans=add
ignorehitpause=1

[State 0]
type=AfterImageTime
trigger1=1
time=5
sprpriority=0
ignorehitpause=1

[State 0]
type=DestroySelf
trigger1=(parent,stateno!=540)
ignorehitpause=1
;---------------------------------------------------------------------------
; Attatck Cancel
[Statedef 2050]
type=U
movetype=I
physics=U
PowerAdd=-500
ctrl=0

[State 0, ]
type=Helper
trigger1=(!time)&&(!numhelper(2055))
helpertype=normal
name="Effect"
ID=2055
pos=0,0
postype=p1
stateno=2055
keyctrl=1
ownpal=1
sprpriority=0
ignorehitpause=1

[State 0]
type=PalFX
trigger1=(!time)
time=4
add=128,128,128

[State 0]
type=ChangeState
trigger1=(time>=1)
value=ifelse(prevstateno=711,711,0)
ctrl=1
;---------------------------------------------------------------------------
;Desperation
[Statedef 850]
type=S
movetype=A
physics=N
velset=0,0
anim=849
ctrl=0

[State 1200: ragebar display]
type=VarSet
trigger1=1
var(12)=ifelse((time=[2,24]),1,0)

[State 0]
type=Explod
trigger1=(time=2)
anim=9001
ID=9001
pos=0,0
postype=back
bindtime=-1
removetime=-2
supermovetime=99999999
pausemovetime=99999999
scale=0.9,1.1
sprpriority=-5
ontop=0
ownpal=1

[State 0]
type=AssertSpecial
trigger1=(time=[2,52])
flag=GlobalNoShadow
flag2=NoFG
flag3=nobardisplay

[State 0]
type=AssertSpecial
trigger1=(time=[2,52])
flag=nomusic
ignorehitpause=1

[State 0]
type=SuperPause
trigger1=(time=2)
time=22
anim=-1
pos=8,-46
sound=S1,14
movetime=22
darken=1
poweradd=-3000
persistent=0

[State 100,1]
type=VelSet
trigger1=animelem=4
x=ifelse(pos y >=0,8,12)
y=0

[State 0]
type=AfterImage
trigger1=var(11)=0
trigger1=animelem=4
time=20
length=20
palcolor=256
palbright=30,30,30
palcontrast=120,120,120
paladd=10,10,10
palmul=.65,.65,.65
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 0]
type=Explod
trigger1=animelem=4
anim=6015
ID=6015
pos=0,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-2,0
scale=.7,.7
removetime=-2
sprpriority=10
ownpal=1

[State 106,3]
type=MakeDust
trigger1=time>50
pos=-25,floor(-pos y)
spacing=2

[State 100,3] ;Prevent from turning
type=AssertSpecial
trigger1=1
flag=NoAutoTurn

[State 0]
type=HitDef
trigger1=!time
attr=S,ST
hitflag=MAF
guardflag=H
affectteam=E
animtype=Light
air.animtype=Light
priority=4,Miss
damage=0,0
sparkno=-1
guard.sparkno=-1
hitsound=S0,6
ground.type=High
ground.slidetime=9
ground.hittime=9
fall=1
snap=20,0
sprpriority=1
p1facing=1
p2facing=1
p1stateno=851
p2stateno=860

[State 100,4]
type=ChangeState
trigger1=(!animtime)
value=ifelse(pos y >=0,101,ifelse(var(1)=1,551,50))
ctrl=ifelse(pos y >=0,1,0)
;---------------------------------------------------------------------------
;Desperation 1
[Statedef 851]
type=S
movetype=A
physics=N
velset=0,0
anim=850
ctrl=0

[State 0]
type=PlayerPush
trigger1=1
value=0
ignorehitpause=1

[State 0]
type=TargetBind
trigger1=(time=[0,3])
time=-1
pos=10,-20
ignorehitpause=1

[State 0]
type=TargetBind
trigger1=(time=[4,7])
time=-1
pos=-10,-30
ignorehitpause=1

[State 0]
type=TargetDrop
trigger1=time>7
ignorehitpause=1

[State 0]
type=ChangeState
trigger1=!animtime
value=852
;---------------------------------------------------------------------------
;Desperation 2
[Statedef 852]
type=S
movetype=A
physics=N
velset=0,0
anim=851
ctrl=0

[State 0]
type=ScreenBound
trigger1=(1)
value=1
movecamera=1,1
ignorehitpause=1

[State 0]
type=VarAdd
trigger1=(command!="holdc"||command!="holdz")
trigger1=(animelem=2)||(animelem=4)
trigger2=(command="holdc"&&command="holdz")
trigger2=(animelem=2)||(animelem=3)
var(17)=1
ignorehitpause=1

[State 0]
type=PlaySnd
trigger1=(animelem=2)||(animelem=4)
value=1,9

[State 0]
type=PlaySnd
trigger1=(animelem=2)||(animelem=4)
value=1,10

[State 0]
type=PlaySnd
trigger1=(animelem=2)||(animelem=4)
value=3,6
channel=0

[State 0,Haste/V-ism Sorrowedge's Haste code];'
type=ChangeAnim
triggerall=(command="holdc"&&command="holdz")
trigger1=(AnimElemTime(AnimElemNo(0)+1)<0)&&(AnimElemTime(AnimElemNo(0))>floor((AnimElemTime(AnimElemNo(0))-AnimElemTime(AnimElemNo(0)+1))/2))
value=anim
elem=AnimElemNo(0)+2
ignorehitpause=1

[State 0]
type=Helper
trigger1=(animelem=2)||(animelem=4)
helpertype=normal
name="fireball"
ID=428
pos=ifelse((animelem=2),-5,ifelse((animelem=4),4,0)),-83
postype=p1
facing=1
stateno=428
keyctrl=0
ownpal=1
sprpriority=1000
size.xscale=0.4
size.yscale=0.4
size.ground.back=6
size.ground.front=6
size.air.back=6
size.air.front=6

[State 0, ]
type=LifeAdd
trigger1=command="holdc"&&command="holdz"
value=-5
kill=0
ignorehitpause=1
;persistent=0

[State 0]
type=Turn
trigger1=var(17)>ifelse((command="holdc"&&command="holdz"),31,36)
persistent=0

[State 0, ]
type=VarSet
trigger1=var(17)>ifelse((command="holdc"&&command="holdz"),31,36)
trigger2=(0&&fvar(5):=0)
var(19)=ifelse((command="holdc"&&command="holdz"),600,300)

[State 0]
type=ChangeState
trigger1=var(17)>ifelse((command="holdc"&&command="holdz"),31,36)
value=5300
;---------------------------------------------------------------------------
;Desperation - enemy 1
[Statedef 860]
type=A
movetype=H
velset=0,0
physics=A
ctrl=0

[State 0]
type=ScreenBound
trigger1=1
value=0
ignorehitpause=1

[State 0]
type=ChangeAnim2
trigger1=!time
value=860

[State 0]
type=VelAdd
trigger1=time=7
y=-10
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 5000]
type=S
movetype=H
physics=N
velset=0,0

[State 5000: X]
type=varadd
trigger1=(!time)&&(fvar(3)<1)
fvar(3)=(gethitvar(damage)*0.0015)

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type=ChangeAnim
trigger1=(!Time)&&(AuthorName="Dizzy")
trigger1=GetHitVar(animtype) !=[3,5]
value=ifelse((GetHitVar(groundtype)=1),5000,5010)+GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type=ChangeAnim
trigger1=(!Time)&&(AuthorName="Dizzy")
trigger1=GetHitVar(animtype)=[3,5]
value=5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type=ChangeAnim
trigger1=(!Time)&&(AuthorName="Dizzy")
trigger1=(GetHitVar(animtype)=[4,5]) && (SelfAnimExist(5047+GetHitVar(animtype)))
value=5047+GetHitVar(animtype) ;5051 - 4+type

[State 5000, 4] ;Freeze anim
type=ChangeAnim
trigger1=(Time>0)&&(AuthorName="Dizzy")
value=anim

[State 10, 2]
type=ChangeState
trigger1=(Anim!=[5000,5300])&&(!time)
value=0

[State 5000, 5] ;State type gets set to aerial if getting hit up
type=StateTypeSet
trigger1=Time=0
trigger1=GetHitVar(yvel) !=0 && GetHitVar(fall)
trigger2=Pos Y !=0
type=a

[State 5000, 6]
type=ChangeState
trigger1=HitShakeOver
trigger1=GetHitVar(yvel)=0
value=5001 ;HITG_SLIDE

[State 5000, 7]
type=ChangeState
trigger1=HitShakeOver
value=5030

[State 5000, FFB Light]
type=ForceFeedback
trigger1=anim=5000
trigger2=anim=5010
persistent=0
time=6
waveform=square

[State 5000, FFB Medium]
type=ForceFeedback
trigger1=anim=5001
trigger2=anim=5011
persistent=0
time=8
waveform=sinesquare
ampl=110,-1,-.3

[State 5000, FFB Hard]
type=ForceFeedback
trigger1=anim=5012
trigger2=anim=5002
trigger3=anim=5030
persistent=0
time=15
waveform=sinesquare
ampl=140
;---------------------------------------------------------------------------
; HITG_SLIDE
[Statedef 5001]
type=S
movetype=H
physics=S

[State 5001, 1]
type=HitVelSet
triggerall=var(1)=0
trigger1=Time=0
x=1

[State 5001, 2]
type=ChangeAnim
trigger1=AnimTime=0
value=5005+GetHitVar(animtype)+(GetHitVar(groundtype)=2)*10

[State 5001, 6]
type=ChangeState
trigger1=(anim=5005)&&(!animtime)&&(var(1)=1)
value=0
ctrl=1
ignorehitpause=1

[State 5001, 3] ;Stop sliding back
type=VelMul
trigger1=Time>=GetHitVar(slidetime)
x=.6

[State 5001, 4]
type=VelSet
triggerall=var(4)=0
trigger1=HitOver
x=0

[State 5001, 5]
type=DefenceMulSet
trigger1=HitOver
value=1

[State 5001, 6]
type=ChangeState
trigger1=HitOver
value=0
ctrl=1
;---------------------------------------------------------------------------
; Guard Crush
[Statedef 5005]
type  =A
movetype=H
physics=N

[State 5005: Change anim when done with transition]
type=ChangeAnim
trigger1=(!AnimTime)&&(Anim=5035)&&(AuthorName="Dizzy")
trigger2=(!Time)
trigger2=(Anim!=5035)&&(AuthorName="Dizzy")
trigger2=(Anim!=[5051,5059])&&(Anim!=[5061,5069])
trigger2=(Anim!=5090)
value=5050

[State 5005: Coming down anim]
type=ChangeAnim
trigger1=(anim=[5050,5059])&&(time>12)&&(AuthorName="Dizzy")
trigger1=(Vel Y>=ifelse(anim=5050,1,-2))
trigger1=(SelfAnimExist(anim+10))
value=anim+10
persistent=0

[State 10, 2]
type=ChangeState
trigger1=(Anim!=[5030,5100])&&(!time)
value=6666

[State 0, ]
type=VarSet
trigger1=!time
var(19)=300

[State 0, ]
type=EnvShake
trigger1=!time
time=10
freq=260
ampl=-8

[State 0, ]
type=VelSet
trigger1=!time
x=-4
y=-6

[State 5050, 3] ;Gravity
type=VelAdd
trigger1=1
y=GetHitVar(yaccel)

[State 5050, 6]
type=ChangeState
trigger1=Vel Y>0
trigger1=Pos Y>=ifelse((anim=[5051,5059])||(anim=[5061,5069]),0,5)
value=5100 ;HIT_BOUNCE
;---------------------------------------------------------------------------
; HITC_SHAKE
[Statedef 5010]
type=C
movetype=H
physics=N
velset=0,0

[State 5000: X]
type=varadd
trigger1=(!time)&&(fvar(3)<1)
fvar(3)=(gethitvar(damage)*0.0015)

[State 5010,1] ;Anim for HIT_LIGHT to HIT_HARD
type=ChangeAnim
trigger1=!time
trigger1=GetHitVar(animtype) !=[3,5]
value=(5020+GetHitVar(animtype))

[State 5010,2] ;Anim for HIT_BACK
type=ChangeAnim
trigger1=!time
trigger1=GetHitVar(animtype)=[3,5]
value=5030

[State 5010,3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type=ChangeAnim
trigger1=!time
trigger1=(GetHitVar(animtype)=[4,5]) && (SelfAnimExist(5047+GetHitVar(animtype)))
value=(5047+GetHitVar(animtype)) ;5051 - 4+type

[State 5010,4] ;Freeze anim
type=ChangeAnim
trigger1=Time>0
value=anim

[State 5010,5]
type=ChangeState
trigger1=HitShakeOver
trigger1=GetHitVar(yvel)=0
value=5011 ;HITC_SLIDE

[State 5010,6]
type=ChangeState
trigger1=HitShakeOver
value=5030

[State 5010,FFB Light]
type=ForceFeedback
trigger1=anim=5020
persistent=0
time=6
waveform=square

[State 5010,FFB Medium]
type=ForceFeedback
trigger1=anim=5021
persistent=0
time=8
waveform=sinesquare
ampl=110,-1,-.3

[State 5010,FFB Hard]
type=ForceFeedback
trigger1=anim=5022
persistent=0
time=15
waveform=sinesquare
ampl=140

;---------------------------------------------------------------------------
; HITC_SLIDE
[Statedef 5011]
type=C
movetype=H
physics=C

[State 5011,1]
type=HitVelSet
trigger1=!time
x=1

[State 5011,2]
type=ChangeAnim
trigger1=!animtime
value=(5025+GetHitVar(animtype))

[State 5011,3] ;Stop sliding back
type=VelMul
trigger1=Time>=GetHitVar(slidetime)
x=.6

[State 5011,4]
type=VelSet
trigger1=HitOver
x=0

[State 5011,5]
type=DefenceMulSet
trigger1=HitOver
value=1

[State 5011,6]
type=ChangeState
trigger1=HitOver
value=11
ctrl=1

;---------------------------------------------------------------------------
; HITA_SHAKE 2
[Statedef 5019]
type=A
movetype=H
physics=N
sprpriority=-3

[State 5000: X]
type=varadd
trigger1=(!time)&&(fvar(3)<1)
fvar(3)=(gethitvar(damage)*0.0015)

[State 5020,1] ;Anim for HIT_LIGHT to HIT_HARD
type=ChangeAnim
trigger1=!time
trigger1=GetHitVar(animtype) !=[3,5]
value=(ifelse((GetHitVar(airtype)=1),5000,5010)+GetHitVar(animtype))

[State 5020,2] ;Anim for HIT_BACK
type=ChangeAnim
trigger1=!time
trigger1=GetHitVar(animtype)=[3,5]
value=5030

[State 5020,3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type=ChangeAnim
trigger1=!time
trigger1=(GetHitVar(animtype)=[4,5]) && (SelfAnimExist(5047+GetHitVar(animtype)))
value=(5047+GetHitVar(animtype)) ;5051 - 4+type

[State 5020,4] ;Freeze anim
type=ChangeAnim
trigger1=Time>0
value=anim

[State 5020,5]
type=ChangeState
trigger1=TIME>=20
value=5000

[State 5020,FFB Light]
type=ForceFeedback
trigger1=anim=5000
trigger2=anim=5010
persistent=0
time=6
waveform=square

[State 5020,FFB Medium]
type=ForceFeedback
trigger1=anim=5001
trigger2=anim=5011
persistent=0
time=8
waveform=sinesquare
ampl=110,-1,-.3

[State 5020,FFB Hard]
type=ForceFeedback
trigger1=anim=5012
trigger2=anim=5002
trigger3=anim=5030
trigger4=anim=[5051,5059]
persistent=0
time=15
waveform=sinesquare
ampl=140

;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 5020]
type=A
movetype=H
physics=N
velset=0,0

[State 5000: X]
type=varadd
trigger1=(!time)&&(fvar(3)<1)
fvar(3)=(gethitvar(damage)*0.0015)

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type=ChangeAnim
trigger1=Time=0
trigger1=GetHitVar(animtype) !=[3,5]
value=ifelse((GetHitVar(airtype)=1),5000,5010)+GetHitVar(animtype);+(ifelse(pos y<0,10000,0))

[State 5020, 2] ;Anim for HIT_BACK
type=ChangeAnim
trigger1=Time=0
trigger1=GetHitVar(animtype)=[3,5]
value=5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type=ChangeAnim
trigger1=Time=0
trigger1=(GetHitVar(animtype)=[4,5]) && (SelfAnimExist(5047+GetHitVar(animtype)))
value=5047+GetHitVar(animtype) ;5051 - 4+type

[State 5020, 4] ;Freeze anim
type=ChangeAnim
trigger1=Time>0
value=anim

[State 5020, 5]
type=ChangeState
trigger1=HitShakeOver
trigger1=var(1)=0
trigger1=gethitvar(fall)>0
trigger2=HitShakeOver
trigger2=var(1)>0
trigger2=gethitvar(fall)>0
trigger3=anim=5018
trigger4=HitShakeOver
trigger4=var(1)=0
trigger4=gethitvar(fall)=0
value=5030

[State 5020, 5]
type=ChangeState
triggerall=HitShakeOver
trigger1=(var(1)=1)
trigger1=(gethitvar(fall)=0)
trigger1=(anim!=5018)
value=5031

[State 5020, 5]
type=null;ChangeState
trigger1=HitShakeOver
value=5030

[State 5020, FFB Light]
type=ForceFeedback
trigger1=anim=5000
trigger2=anim=5010
persistent=0
time=6
waveform=square

[State 5020, FFB Medium]
type=ForceFeedback
trigger1=anim=5001
trigger2=anim=5011
persistent=0
time=8
waveform=sinesquare
ampl=110,-1,-.3

[State 5020, FFB Hard]
type=ForceFeedback
trigger1=anim=5012
trigger2=anim=5002
trigger3=anim=5030
trigger4=anim=[5051,5059]
persistent=0
time=15
waveform=sinesquare
ampl=140
;---------------------------------------------------------------------------
; HITA_UP (initial going up)
[Statedef 5030]
type=A
movetype=H
physics=N
ctrl=0

[State 0,3] ;Are you dead?
type=ChangeAnim
trigger1=(life<=0&&anim=0);!alive
value=5030

[State 5030,1]
type=VelAdd;Gravity
trigger1=1
y=GetHitVar(yaccel)

[State 5030,2]
type=HitVelSet
trigger1=!time
x=1
y=1

[State 5030,3]
type=ChangeState
triggerall=!HitFall
trigger1=HitOver
trigger2=Vel Y>0    ;Hit ground
trigger2=Pos Y>=10  ;.
value=5040 ;HITA_RECOV

[State 5030,4]
type=ChangeState
triggerall=HitFall
trigger1=HitOver
trigger2=Vel Y>0    ;Hit ground
trigger2=Pos Y>=10  ;.
value=5050 ;HITA_FALL

[State 5030,5]
type=ChangeState
trigger1=!animtime
value=5035 ;HITA_UP (transition)
;---------------------------------------------------------------------------
; HITA_UP (initial going up flying)
[Statedef 5031]
type  =A
movetype=H
physics=N
ctrl=0

[State 5030, 1]
type=VelAdd;Gravity
trigger1=1
y=GetHitVar(yaccel)

[State 5030, 2]
type=HitVelSet
trigger1=Time=0
x=1
y=1

[State 5030, 3]
type=ChangeState
triggerall=!HitFall
trigger1=HitOver
trigger2=Vel Y>0    ;Hit ground
trigger2=Pos Y>=0  ;.
value=5032 ;HITA_RECOV

[State 5030, 4]
type=ChangeState
triggerall=HitFall
trigger1=HitOver
trigger2=Vel Y>0    ;Hit ground
trigger2=Pos Y>=0  ;.
value=5050 ;HITA_FALL

[State 5030, 5]
type=ChangeState
trigger1=AnimTime=0
value=5032;5035 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5032]
type  =A
movetype=I
physics=N
anim=5210
ctrl=0

[State 5210, 1]
type=PosFreeze
trigger1=Time=0
value=4

[State 5210, 2] ;Turn if not facing opponent
type=Turn
trigger1=Time=0
trigger1=p2dist X<-20

[State 5210, 1] 
type=VelMul
trigger1=Time=4
x=.8
y=ifelse(Vel Y>0,.5,.8)

[State 5210, 1]
type=VelAdd
trigger1=Time=4
y=ifelse(Vel Y>-3,-2,ifelse(Vel Y>-2,-1,-4.5))

[State 0,1337 |-|4X0r]
type=ChangeState
trigger1=(name!="[Dizzy]'s Super Vegeta")
value=6666

[State 5210, 2] ;Go up
type=VelAdd
trigger1=Time=4
trigger1=Command="holdup"
y=-2

[State 5210, 2] ;Go down
type=VelAdd
trigger1=Time=4
trigger1=Command="holddown"
y=1.5

[State 5210, 2] ;Go fwd
type=VelMul
trigger1=Time=4
trigger1=Command="holdfwd"
x=5

[State 5210, 2] ;Go back
type=VelAdd
trigger1=Time=4
trigger1=Command="holdback"
x=-5

[State 5210, 4]
type=CtrlSet
trigger1=Time=20
value=1

[State 5210, 5]
type=VelAdd;Gravity
trigger1=Time>=4
y=.35

[State 5210, 5] ;Land on ground
type=ChangeState
trigger1=time>5
value=551
ctrl=1
;---------------------------------------------------------------------------
; HITA_UP_T (transition)
[Statedef 5035]
type=A
movetype=H
physics=N

[State 5035,1]
type=ChangeAnim
trigger1=!time
trigger1=SelfAnimExist(5035)
trigger1=Anim !=[5051,5059] ;Not if in hit up anim
trigger1=Anim !=5090 ;Not if hit off ground anim
value=5035

[State 5035,2]
type=VelAdd
trigger1=1
y=GetHitVar(yaccel)

[State 5035,3]
type=ChangeState
triggerall=!HitFall
trigger1=HitOver  ;Hit is over
trigger2=!animtime ;Animation over
trigger3=Vel Y>0    ;Hit ground
trigger3=Pos Y>=10  ;.
trigger4=!time     ;No transition anim
trigger4=Anim !=5035 ;.
value=5040 ;HITA_RECOV

[State 5035,4]
type=ChangeState
triggerall=HitFall
trigger1=HitOver  ;Hit is over
trigger2=!animtime ;Anim is over
trigger3=Vel Y>0    ;Hit ground
trigger3=Pos Y>=10  ;.
trigger4=!time     ;No transition anim
trigger4=Anim !=5035 ;.
value=5050 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_RECOV (recovering in air,not falling)
[Statedef 5040]
type=A
movetype=H
physics=N

[State 5040,1]
type=ChangeState
trigger1=!Alive
value=5050

[State 5040,2]
type=ChangeAnim
trigger1=!animtime
trigger1=Anim !=5040
trigger2=!time
trigger2=Anim !=5035
value=5040

[State 5040,3]
type=CtrlSet
trigger1=HitOver
value=1

[State 5040,4]
type=StateTypeSet
trigger1=HitOver
movetype=I

[State 5040,5]
type=VelAdd
trigger1=1
y=GetHitVar(yaccel)

[State 5040,6]
type=ChangeState
trigger1=Vel Y>0
trigger1=Pos Y>=0
value=52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up,falling)
[Statedef 5050]
type=A
movetype=H
physics=N

[State 5050,1] ;Change anim when done with transition
type=ChangeAnim
trigger1=!animtime
trigger1=Anim=5035
trigger2=!time  ;If no transition anim
trigger2=Anim !=5035
trigger2=(Anim!=[5051,5059])&&(Anim !=[5061,5069])
trigger2=Anim !=5090 ;Not if hit off ground anim
value=5050

[State 5050,2] ;Coming down anim
type=ChangeAnim
trigger1=anim=[5050,5059]
trigger1=time>=12
trigger1=Vel Y>=ifelse((anim=5050),1,-2)
trigger1=(SelfAnimExist((anim+10)))
value=(anim+10)
persistent=0

[State 5050,3] ;Gravity
type=VelAdd
trigger1=1
y=GetHitVar(yaccel)

[State 5050,4] ;Recover near ground
type=ChangeState
triggerall=Vel Y>0
triggerall=Pos Y>=-20
triggerall=alive
triggerall=CanRecover
trigger1=Command="recovery"
value=5200 ;HITFALL_RECOVER

[State 5050,5]; Recover in mid air
type=ChangeState
triggerall=Vel Y>-1
triggerall=alive
triggerall=CanRecover
trigger1=Command="recovery"
value=5210 ;HITFALL_AIRRECOVER

[State 5050,6]
type=ChangeState
trigger1=Vel Y>0
trigger1=Pos Y>=ifelse((anim=[5051,5059])||(anim=[5061,5069]),0,25)
value=5100 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_TRIP (shaking)
[Statedef 5070]
type=A
movetype=H
physics=N
velset=0,0

[State 5070,1]
type=ChangeAnim 
trigger1=1
value=5070

[State 5070,2]
type=ChangeState
trigger1=HitShakeOver
value=5071

[State 5070,3]
type=ForceFeedback
trigger1=!time
time=12
waveform=sinesquare
ampl=140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5071]
type=A
movetype=H
physics=N

[State 5071,1]
type=HitVelSet
trigger1=!time
x=1
y=1

[State 5071,2] ;Acceleration
type=VelAdd
trigger1=1
y=GetHitVar(yaccel)

[State 5071,3] ;Hit ground
trigger1=Vel Y>0
trigger1=Pos Y>=15
type=ChangeState
value=5110

;---------------------------------------------------------------------------
; HITL_SHAKE
[Statedef 5080]
type=L
movetype=H
physics=N
velset=0,0

[State 5080,1] ;Set default anim
type=VarSet
trigger1=!time
sysvar(2)=ifelse(GetHitVar(yvel)=0,5080,5090)

[State 5080,2]
type=VarAdd
trigger1=!time
trigger1=(anim=[5081,5089]) || (anim=[5111,5119])
trigger1=SelfAnimExist(sysvar(2)+(anim % 10))
sysvar(2)=anim % 10

[State 5080,3] ;If 5090 doesn't exist,default to 5030
type=VarSet
trigger1=!time
trigger1=sysvar(2)=5090
trigger1=!SelfAnimExist(5090)
sysvar(2)=5030

[State 5080,3] ;Freeze
type=ChangeAnim
trigger1=1
value=sysvar(2)

[State 5080,4]
type=ChangeState
trigger1=HitShakeOver
trigger1=GetHitVar(yvel)=0
value=5081 ;HITL_SLIDE

[State 5080,5]
type=ChangeState
trigger1=HitShakeOver
trigger1=GetHitVar(yvel) !=0
value=5030 ;HITA_UP

;---------------------------------------------------------------------------
; HITL_SLIDE
[Statedef 5081]
type=L
movetype=H
physics=C

[State 5081,1]
type=HitVelSet
trigger1=!time
x=1

[State 5081,2]
type=VelSet
trigger1=HitOver
x=0

[State 5081,3] ;Don't show hit ground frame
type=VarSet
trigger1=!time
sysvar(0)=1

[State 5081,4]
type=ChangeState
trigger1=HitOver
value=5110 ;HIT_LIEDOWN

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type=L
movetype=H
physics=N

[State 5100,1]
type=VelSet
trigger1=!time
trigger1=GetHitVar(fall.yvel)=0
trigger1=vel x>1
x=1

[State 5100,EnvShake]
type=FallEnvShake
trigger1=!time

[State 5100,Var] ;Save fall velocity
type=VarSet
trigger1=!time
sysvar(1)=floor(vel y)

[State 5100,2] ;Hit ground anim (normal)
type=ChangeAnim
triggerall=!time
trigger1=(anim!=[5051,5059])&&(anim!=[5061,5069])
trigger2=!SelfAnimExist(5100+(anim % 10))
value=5100

[State 5100,3] ;Hit ground anim (for hit up)
type=ChangeAnim
trigger1=!time
trigger1=(anim=[5051,5059])||(anim=[5061,5069])
trigger1=SelfAnimExist((5100+(anim % 10)))
value=(5100+(anim % 10))

[State 5100,4]
type=PosSet
trigger1=!time
y=0

[State 5100,5]
type=VelSet
trigger1=!time
y=0

[State 5100,6] ;Reduce speed
type=VelMul
trigger1=!time
x=0.75

[State 5100,7]
type=ChangeState
trigger1=!time
trigger1=GetHitVar(fall.yvel)=0
value=5110 ;HIT_LIEDOWN

[State 5100,8]
type=GameMakeAnim
trigger1=Time=1
value=60+(sysvar(1)>5)+(sysvar(1)>14)
pos=0,0
under=sysvar(1)<=14

[State 5100,9]
type=HitFallDamage
trigger1=Time=3

[State 5100,10]
type=PlaySnd
trigger1=Time=1
value=F7,(sysvar(1)>5)+(sysvar(1)>14)

[State 5100,11]
type=PosFreeze
trigger1=1

[State 5100,12]
type=ChangeState
trigger1=!animtime
value=5101

[State 5100,13]
type=ForceFeedback
trigger1=!time
waveform=sinesquare
ampl=128,-3,-.2,.005
time=20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type=L
movetype=H
physics=N

[State 5101,1] ;Coming hit ground anim (normal)
type=ChangeAnim
triggerall=!time
trigger1=anim !=[5101,5109]
trigger2=!SelfAnimExist((5160+(anim % 10)))
value=5160

[State 5101,2] ;Coming hit ground anim (for hit up)
type=ChangeAnim
triggerall=!time
trigger1=anim=[5101,5109]
trigger1=SelfAnimExist((5160+(anim % 10)))
value=(5160+(anim % 10))

[State 5101,3]
type=HitFallVel
trigger1=!time

[State 5100,10]
type=null;PlaySnd
trigger1=(Time=1)&&(pos y>0)
value=F7,(sysvar(1)>5)+(sysvar(1)>14)

[State 5101,4]
type=PosSet
trigger1=!time
y=20

[State 5101,5] ;Acceleration
type=VelAdd
trigger1=1
y=.4

[State 5101,6] ;Hit ground
trigger1=Vel Y>0
trigger1=Pos Y>=12
type=ChangeState
value=5110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type=L
movetype=H
physics=N

[State 0]
type=null;Width
trigger1=1
player=30,0
ignorehitpause=1

[State 5110,EnvShake]
type=FallEnvShake
trigger1=!time

[State 5110,1] ;For hit up/up-diag type (from state 5081)
type=ChangeAnim
persistent=0
trigger1=SelfAnimExist((5110+(anim % 10)))
trigger1=anim=[5081,5089]
value=(5110+(anim % 10))

[State 5110,2] ;Hit ground anim (normal)
type=ChangeAnim
triggerall=!time
triggerall=anim !=[5110,5119] ;Not already changed anim
trigger1=anim !=[5161,5169]
trigger2=!SelfAnimExist((5170+(anim % 10)))
value=5170

[State 5110,3] ;Hit ground anim (for hit up)
type=ChangeAnim
triggerall=!time
triggerall=anim !=[5110,5119] ;Not already changed anim
trigger1=anim=[5161,5169]
trigger1=SelfAnimExist((5170+(anim % 10)))
value=(5170+(anim % 10))

[State 5110,4]
type=HitFallDamage
trigger1=!time

[State 5110,5]
type=PosSet
trigger1=!time
y=0

[State 5110,Var] ;Get fall velocity
type=VarSet
trigger1=!time
trigger1=GetHitVar(fall.yvel) !=0
sysvar(1)=floor(vel y)

[State 5110,6]
type=PlaySnd
trigger1=!time
trigger1=!SysVar(0)
value=F7,(sysvar(1)>5)+(sysvar(1)>14)

[State 5110,7]
type=GameMakeAnim
trigger1=!time
trigger1=!SysVar(0)
value=60+(sysvar(1)>5)+(sysvar(1)>14)
pos=0,0
under=sysvar(1)<=14

[State 5110,8]
type=VelSet
trigger1=!time
y=0

[State 5110,9] ;For hit up type
type=ChangeAnim
persistent=0
triggerall=anim=[5171,5179]
triggerall=SelfAnimExist((5110+(anim % 10)))
trigger1=!animtime
trigger2=SysVar(0) ;SysVar(0)=1 avoids hit ground anim
value=(5110+(anim % 10))

[State 5110,10] ;For normal
type=ChangeAnim
persistent=0
triggerall=Anim !=[5111,5119]
trigger1=!animtime
trigger2=SysVar(0) ;SysVar(0)=1 avoids hit ground frame
value=5110

[State 5110,11] ;If just died
type=ChangeState
triggerall=!alive
trigger1=!animtime
trigger2=SysVar(0) ;SysVar(0)=1 avoids hit ground frame
trigger3=Anim=[5110,5119]
value=5150

[State 5110,12]
type=VarSet
trigger1=SysVar(0)
trigger1=!time
sysvar(0)=0

[State 5110,13] ;Friction
type=VelMul
trigger1=1
x=0.85

[State 5110,14]
type=ForceFeedback
trigger1=alive
trigger1=!time
time=8
ampl=240
waveform=sine

[State 5110,15]
type=ForceFeedback
trigger1=!alive
trigger1=!time
ampl=200,7,-.467
time=30
waveform=sine
;--------------------------------------------------------------------- 
[Statedef 8003]
type=S

[State 0]
type=ChangeState
trigger1=time>1
value=8000
;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type=L
movetype=I
physics=N

[State 5120,1a] ;Get up anim (normal)
type=ChangeAnim
triggerall=!time
trigger1=anim !=[5111,5119]
trigger2=!SelfAnimExist((5120+(anim % 10)))
value=5120

[State 5120,1b] ;Get up anim (for hit up/diag-up)
type=ChangeAnim
triggerall=!time
trigger1=anim=[5111,5119]
trigger1=SelfAnimExist((5120+(anim % 10)))
value=(5120+(anim % 10))

[State 0]
type=ChangeState
triggerall=!time
trigger1=command="holdfwd"
;trigger2=var(59)=1&&random>550
trigger2=var(59)=1&&random>250&&p2bodydist x>0
value=5121

[State 0]
type=ChangeState
triggerall=!time
trigger1=command="holdback"
trigger2=var(59)=1&&random>250&&p2bodydist x<0
value=5122

[State 5120,2]
type=VelSet
trigger1=!time
x=0

[State 5120,3]
type=NotHitBy
trigger1=1
value=SCA
time=1

[State 5120,4]
type=HitFallSet
trigger1=!animtime
value=1

[State 5120,5] ;Can't be thrown right after getting up
type=NotHitBy
trigger1=!animtime
value=,NT,ST,HT
time=12

[State 5120,6] ;Can't be hit right after getting up (short time)
type=NotHitBy
trigger1=!animtime
value2=SCA
time=3

[State 5120, 7]
type=ChangeState
trigger1=!AnimTime
value=ifelse(var(19)>0,5300,0)
ctrl=ifelse(var(19)>0,0,1)
;---------------------------------------------------------------------------
; HIT_GETUP_roll forward
[Statedef 5121]
type=S
movetype=I
physics=N
anim=(48)
velset=7,0

[State 5120,3]
type=HitBy
trigger1=1
value=SCA
time=1

[State 0]
type=ChangeState
trigger1=p2bodydist x=[-3,10]
trigger1=command="holdc"
trigger2=p2bodydist x<10
trigger2=var(59)=1&&random<500
trigger3=time>8
trigger3=p2bodydist x>=10
trigger3=var(59)=1&&random>500
value=252

[State 0]
type=ChangeState
triggerall=p2bodydist x=[-3,5]
trigger1=command="holdy"
trigger2=var(59)=1&&random<900
value=310

[State 0]
type=ChangeState
trigger1=time>10
value=ifelse(var(19)>0,5300,11)
ctrl=ifelse(var(19)>0,0,1)
;---------------------------------------------------------------------------
; HIT_GETUP_backflip
[Statedef 5122]
type=S
movetype=I
physics=N
velset=-5,0

[State 5120,3]
type=HitBy
trigger1=1
value=SCA
time=1

[State 5120,1a] ;Get up anim (normal)
type=ChangeAnim
trigger1=anim !=49
value=49

[State 0]
type=VelSet
trigger1=animelem=3
x=0
y=0

[State 0]
type=ChangeState
trigger1=time>10
value=ifelse(var(19)>0,5300,11)
ctrl=ifelse(var(19)>0,0,1)
;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type=L
movetype=H
physics=N
sprpriority=-3

[State 5150,1] ;Normal anim
type=ChangeAnim
triggerall=!time
triggerall=SelfAnimExist(5140)
trigger1=(anim !=[5111,5119]) && (anim !=[5171,5179])
trigger2=!SelfAnimExist((5140+(anim % 10)))
value=5140

[State 5150,3] ;Hit up type anim
type=ChangeAnim
trigger1=!time
trigger1=(anim=[5111,5119])||(anim=[5171,5179])
trigger1=SelfAnimExist((5140+(anim % 10)))
value=(5140+(anim % 10))

[State 5150,4] ;Match over anim
type=ChangeAnim
persistent=0
;trigger1=!time
trigger1=MatchOver=1
trigger1=Anim=[5140,5149]
trigger1=SelfAnimExist(anim+10)
value=(anim+10);

[State 5150,5] ;Switch to 5110 if liedead anim does not exist
type=ChangeAnim
trigger1=!time
trigger1=Anim !=[5140,5159]
trigger1=Anim !=[5110,5119]
value=5110

[State 0]
type=AllPalFX
trigger1=(anim=5150)&&(animelem=3)
time=10
add=200,200,200
persistent=0

[State 0]
type=PlaySnd
trigger1=(anim=5150)&&(animelem=2)
value=1,13
persistent=0

[State dust]
type=Explod
trigger1=(anim=5150)&&(animelem=3)
anim=6014
pos=0,floor(-pos y)
postype=p1
scale=0.90,0.90
sprpriority=-40
ontop=0
ownpal=1
persistent=0

[State 0]
type=Explod
trigger1=(anim=5150)&&(animelem=3)
anim=6015
ID=666
pos=-20,-(floor(pos y))
postype=p1
facing=1
bindtime=1
vel=-2,0
removetime=-2
scale=.5,.5
sprpriority=10
ownpal=1
persistent=0

[State 0]
type=Explod
trigger1=(anim=5150)&&(animelem=3)
anim=6015
ID=666
pos=20,-(floor(pos y))
postype=p1
facing=-1
bindtime=1
vel=2,0
removetime=-2
sprpriority=10
scale=.5,.5
ownpal=1
persistent=0

[State 5150,6] ;Friction
type=VelMul
trigger1=1
x=0.85

[State 5150,7] ;Friction
type=VelSet
trigger1=Vel x<.05
persistent=0
x=0

[State 5150,8]
type=NotHitBy
trigger1=1
value=SCA
time=1

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type=A
movetype=H
physics=N

[State 5200,1] ;Change anim if done with transition
type=ChangeAnim
trigger1=Anim=5035
trigger1=!animtime
value=5050

[State 5200,2]
type=VelAdd
trigger1=1
y=GetHitVar(yaccel)

[State 5200,3]
type=SelfState
trigger1=Vel Y>0
trigger1=Pos Y>=10
value=5201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type=A
movetype=H
physics=A
anim=5200

[State 5201,1] ;Turn if not facing opponent
type=Turn
trigger1=!time
trigger1=p2dist X<-5

[State 5201,2]
type=VelSet
trigger1=!time
x=-.15
y=-3.5

[State 5201,3]
type=PosSet
trigger1=!time
y=0

[State 5201,4]
type=NotHitBy
trigger1=1
value=SCA
time=1

[State 5201,5] ;Blink white
type=PalFX
trigger1=!time
time=3
add=128,128,128 ;256,256,256

[State 5201,6]
type=GameMakeAnim
trigger1=Time=1
value=60
pos=0,0
under=1

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type=A
movetype=I
physics=N
anim=5210
ctrl=0

[State 5210,1] ;Blink white
type=PalFX
trigger1=!time
time=3
add=128,128,128 ;256,256,256

[State 5210,1]
type=PosFreeze
trigger1=!time
value=4

[State 5210,2] ;Turn if not facing opponent
type=Turn
trigger1=!time
trigger1=p2dist X<-20

[State 5210,1] 
type=VelMul
trigger1=Time=4
x=.8
y=.8

[State 5210,1]
type=VelAdd
trigger1=Time=4
y=-4.5

[State 5210,1] 
type=VelMul
trigger1=Time=4
trigger1=Vel Y>0
y=.5

[State 5210,1]
type=VelAdd
trigger1=Time=4
trigger1=Vel Y>-3
y=-2

[State 5210,1]
type=VelAdd
trigger1=Time=4
trigger1=Vel Y>-2
y=-1

[State 5210,2] ;Go up
type=VelAdd
trigger1=Time=4
trigger1=Command="holdup"
y=-2

[State 5210,2] ;Go down
type=VelAdd
trigger1=Time=4
trigger1=Command="holddown"
y=1.5

[State 5210,2] ;Go fwd
type=VelMul
trigger1=Time=4
trigger1=Command="holdfwd"
x=1

[State 5210,2] ;Go back
type=VelAdd
trigger1=Time=4
trigger1=Command="holdback"
x=-1

[State 5210,3]
type=NotHitBy
trigger1=!time
value=SCA
time=15

[State 5210,4]
type=CtrlSet
trigger1=Time=20
value=1

[State 5210,5]
type=VelAdd;Gravity
trigger1=Time>=4
y=.35

[State 5210,5] ;Land on ground
type=ChangeState
triggerall=command="holda"&&command="holdb"
trigger1=Pos Y<=0
value=501

[State 5210,5] ;Land on ground
type=ChangeState
trigger1=Vel Y>0
trigger1=Pos Y>=0
value=52 ;JUMP_LAND
ctrl=1
;------------------------------------------------------------
;Exhausted
[Statedef 5300]
type=S
movetype=I
physics=S
velset=0,0
ctrl=0

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(17)=0
ignorehitpause=1
persistent=0

[State 0]
type=VarSet
trigger1=(!time)&&(var(18)=0)
var(18)=1
ignorehitpause=1
persistent=0

[State 0]
type=ChangeAnim
trigger1=(anim!=5300)
value=5300

[State 0]
type=VarAdd
trigger1=(1)
var(17)=1
ignorehitpause=1

[State 0, ]
type=VarAdd
trigger1=(var(19)>0)
var(19)=-1

[State 0, ]
type=Varset
trigger1=(var(14)>0)
var(14)=0

[State 0, ]
type=PalFX
trigger1=(var(19)>0)&&((command="x")||(command="y")||(command="z")||(command="a")||(command="b")||(command="c")||(command="B")||(command="F")||(command="U")||(command="D"))
time=1
add=10,60,60
color=128

[State 0, ]
type=VarAdd
trigger1=(var(19)>0)&&((command="x")||(command="y")||(command="z")||(command="a")||(command="b")||(command="c")||(command="B")||(command="F")||(command="U")||(command="D"))
var(19)=-15

[State 0]
type=RemoveExplod
trigger1=(1)
ID=6036
ignorehitpause=1

[State 0]
type=PosAdd
trigger1=(pos y<0)
y=0.2

[State 0]
type=ChangeState
trigger1=(var(19)=0)&&((ifelse(var(11)=0,var(17)>190,var(17)>130))||(win))
trigger2=(var(19)<=1)
value=0
ctrl=1
;---------------------------------------------------------------------------
; Continue?
[Statedef 5500]
type=S
ctrl=0
anim=5300
velset=0,0

[State 5500,1] ;Use continue animation if available
type=ChangeAnim
trigger1=!time
trigger1=SelfAnimExist(5500)
value=5500

;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type=S

[State 0, 1]
type=ChangeAnim
trigger1=(!time)
value=ifelse(pos y<0,24,0)

[State 5900,1] ;Clear all int variables
type=VarRangeSet
trigger1=roundsexisted=0
value=0
first=0
last=57

[State 5900,2] ;Clear all float variables
type=VarRangeSet
trigger1=roundsexisted=0
fvalue=0

[State 0]
type=ChangeState
triggerall=(name!="[Dizzy]'s Super Vegeta")
trigger1=(1)&&((Stateno!=8000)||(Stateno!=8001))
value=IfElse(Random>500,8001,8000)

[State 0]
type=ChangeState
triggerall=(name!="[Dizzy]'s Super Vegeta")
trigger1=(1)&&((Stateno!=8002)||(Stateno!=8003))
value=IfElse(Random>500,8003,8002)

[State 551: Floating code]
type=PosAdd
trigger1=(var(1)<1)
trigger1=(0&&var(1):=var(1)+1)
trigger2=(pos y<0)
y=ifelse(var(3)=1,0.1,-0.1)

[State 0,facing]
type=VarSet
trigger1=!time
var(6)=IfElse(Facing=1,1,2)

[State 5900,3] ;Intro for round 1
type=ChangeState
trigger1=(roundno=1)&&(prevstateno!=192)
value=190
