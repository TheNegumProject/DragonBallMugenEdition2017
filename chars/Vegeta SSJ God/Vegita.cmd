;---| Super Vegeta |-------------------------------------------------------
;---| by Dizzy |-----------------------------------------------------------
;Vars:
;var(0)=Music controller
;var(1)=Flying ctrl
;var(2)=Floating counter
;var(3)=Floating controller
;var(4)=Hit sound control
;var(5)=Dead sound control
;var(6)=Facing
;var(7)=renzoku counter
;var(8)=fireball anim randomizer
;var(9)=Rocks
;var(10)=Rocks random placer
;var(11)=Rage mode
;var(12)=rage bar display
;var(13)=number of hits-combo
;var(14)=Guard Crush
;var(15)=Combo Counter
;var(16)=Custom Combo Mode
;var(17)=Custom Timer
;var(18)=Custom Timer - no reset
;var(19)=Exhaustion time...
;var(20)=Negative Penality
;var(21)=Negative Penality
;var(22)=Beam
;var(58)=
;var(59)=AI

;fvar(0)=Flash main orb,charge power ring,Gyarriku-ho no aura x axis
;fvar(1)=Flash right orb,bba ball#1,Gyarriku-ho no aura y axis
;fvar(2)=Flash left orb,bba ball#2
;fvar(3)=Rage Bar
;fvar(4)=power based attack boost
;fvar(5)=Combo power substract

;channels
;1-
;2-aura-shock
;3-aura-explosion
;4-aura-pulse
;5-beam
;6-beam
;7-electricity
;8-JUMP/LAND
;9-vegita's voice
;10-quake
;15-intro
;16-intro
;-| Supers |---------------------------------------------------------------
[Command]
name="Powered up Big Bang Attack"
command=~B,BD,D,DF,F,D,DF,F,x
time=60

[Command]
name="Big Bang Attack"
command=~D,DF,F,D,DF,F,x
time=30

[Command]
name="Super Beam"
command=~D,DF,F,D,DF,F,y
time=30

[Command]
name="Desperation"
command=~D,DF,F,D,DF,F,c
time=30
;-| Specials |---------------------------------------------------------------
[Command]
name="Renzoku"
command=~D,DF,F,D,DF,F,z
time=30

[Command]
name="fireball"
command=~D,DF,F,z
time=30

[Command]
name="Sonic kick"
command=~D,DF,F,c
time=30

[Command]
name="Bakuhatsu"
command=~D,DB,B,x
time=30

[Command]
name="Kienzan"
command=~D,DF,F,x
time=30

[Command]
name="Bakuhatsu2"
command=~D,DB,B,y
time=30

[Command]
name="Kienzan2"
command=~D,DF,F,y
time=30

[Command]
name="elbow"
command=~D,DB,B,a
time=30

[Command]
name="Zanzoken"
command=~D,DB,B,z
time=30

[Command]
name="backflip"
command=~D,DF,F,a
time=30

[Command]
name="divekick"
command=~D,DF,F,b
time=30

[Command]
name="counter attack"
command=/$F,a
time=20

[Command]
name="Guard Push"
command=/$B,a
time=20

[Command]
name="FD"
command=a+x
time=10

[Command]
name="Cancel"
command=a+b
command=a+x
command=a+y
command=x+y
time=2

[Command]
name="fly"
command=x+y
time=10

;-| Double Tap |-----------------------------------------------------------
[Command]
name="Super Jump"
command=~D,U

[Command]
name="FF"
command=F,F
time=10

[Command]
name="BB"
command=B,B
time=10

[Command]
name="UU"
command=U,U
time=10

[Command]
name="DD"
command=D,D
time=10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name="recovery"
command=a+b
command=x+y
time=1

[Command];AI
name="recovery"
command=a+b
command=x+y
command=a+x
command=b+x
command=a+y
command=b+y
time=0
;-| Dir + Button |---------------------------------------------------------
[Command]
name="down_a"
command=/$D,a
time=1

[Command]
name="down_b"
command=/$D,b
time=1

;-| Single Button |---------------------------------------------------------
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="start"
command=s
time=1
[Command]
name="B"
command=B
time=1
[Command]
name="F"
command=F
time=1
[Command]
name="U"
command=U
time=1
[Command]
name="D"
command=D
time=1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name="holdfwd"
command=/$F
time=1

[Command]
name="holdback"
command=/$B
time=1

[Command]
name="holdup"
command=/$U
time=1

[Command]
name="holddown"
command=/$D
time=1

[Command]
name="holda"
command=/$a
time=1

[Command]
name="holdb"
command=/$b
time=1

[Command]
name="holdc"
command=/$c
time=1

[Command]
name="holdx"
command=/$x
time=1

[Command]
name="holdy"
command=/$y
time=1

[Command]
name="holdz"
command=/$z
time=1

[Command]
name="holds"
command=/$s
time=1
;-------------------| A.I.|------------------------------------
[command]
name="ai1"
command=a+x+y+b+z+D,D,D,F,D,D,U,a+x+y+b+z,D,F,D,F,D,F,D,D,a+x+y+b+z
time=0

[command]
name="ai2"
command=D,D,U,F,D,a+x+y+b+z,D,F,D,D,D,D,D,D,a+x+y+b+z,D,D,D
time=0

[command]
name="ai3"
command=D,a+x+y+b+z,F,D,D,F,D,F,D,F,D,F,D,F,D,D,a+x+y+b+z
time=0

[command]
name="ai4"
command=D,D,B,D,D,F,D,a+x+y+b+z,D,D,F,D,D,F,D,F,D,a+x+y+b+z
time=0

[command]
name="ai5"
command=D,U,D,D,D,D,D,F,D,D,D,D,D,F,D,F,D,a+x+y+b+z
time=0

[command]
name="ai6"
command=D,U,F,D,D,F,D,F,D,a+x+y+b+z,F,D,D,F,D,F,D,a+x+y+b+z
time=0

[command]
name="ai7"
command=D,a+x+y+b+z,B,D,D,F,D,F,D,D,F,D,D,F,D,F,D,a+x+y+b+z
time=0

[command]
name="ai8"
command=D,U,U,D,D,a+x+y+b+z,D,F,D,D,F,D,F,a+x+y+b+z,D,F,D,D
time=0

[command]
name="ai9"
command=D,F,D,D,D,D,D,a+x+y+b+z,D,D,F,D,F,a+x+y+b+z,D,F,D,D
time=0

[command]
name="ai10"
command=D,a+x+y+b+z,U,D,D,D,D,F,D,D,F,D,F,a+x+y+b+z,D,F,D,D
time=0

[command]
name="ai11"
command=D,a+x+y+b+z,F,D,D,F,D,F,D,D,F,D,F,a+x+y+b+z,D,F,D,D
time=0

[command]
name="ai12"
command=a+x+y+b+z,D,B,D,D,F,D,F,D,D,F,D,F,a+x+y+b+z,D,F,D
time=0

[command]
name="ai13"
command=D,a+x+y+b+z,D,D,D,F,a+x+y+b+z,F,D,D,F,D,F,a+x+y+b+z,D,F,D,D
time=0

[command]
name="ai14"
command=D,D,U,a+x+y+b+z,D,F,D,F,D,D,F,D,F,a+x+y+b+z,D,F,D,D
time=0
;===========================================================================
[Statedef -1]
;---------------------------------------------------------------------------
;desperation
[State -1,DS]
type=ChangeState
value=850
trigger1=(command="Desperation")&&(alive)&&(!win)&&(statetype=S)&&(pos y>=0)&&(ctrl)&&(power>=3000)&&(life<200)
;---------------------------------------------------------------------------
;Attack Cancel
[State -1,LP]
type=ChangeState
value=2050
triggerall=command="Cancel"
triggerall=power>500
triggerall=alive
triggerall=movehit
trigger1=movetype=A
;---------------------------------------------------------------------------
;Final Flash
[State -1,Final Flash]
type=ChangeState
value=1000
triggerall=(command="Super Beam"&&power>=2000&&alive&&!win)
trigger1=(statetype=S&&ctrl)||stateno=551
;---------------------------------------------------------------------------
;Powered up Big Bang Attack
[State -1:Powered up Big Bang Attack]
type=null;ChangeState
triggerall=(command="Powered up Big Bang Attack"&&power>=1000&&alive&&!win)
trigger1=(statetype=S&&ctrl)||stateno=551
value=1210
;---------------------------------------------------------------------------
;Big Bang Attack
[State -1:Big Bang Attack]
type=ChangeState
triggerall=(command="Big Bang Attack"&&command!="Powered up Big Bang Attack"&&power>=1000&&alive&&!win)
trigger1=(statetype=S&&ctrl)||stateno=551
value=1199
;---------------------------------------------------------------------------
;Renzoku
[State -1,Renzoku]
type=ChangeState
value=739
triggerall=command="Renzoku"
triggerall=power>=500
triggerall=alive
triggerall=!win
trigger1=(statetype=S&&ctrl)||stateno=551
;---------------------------------------------------------------------------
;Elbow punch
[State -1,LP]
type=ChangeState
value=900
triggerall=command="elbow"
trigger1=(statetype=S&&ctrl)||stateno=551
;---------------------------------------------------------------------------
;Zanzoken
[State -1,HB]
type=ChangeState
value=1050
triggerall=(command="Zanzoken")&&(movetype!=H)&&(alive)&&(!win)
trigger1=Ctrl&&statetype=S
trigger2=Ctrl&&statetype=A
trigger3=Ctrl&&stateno=551
trigger4=stateno=5210
trigger5=stateno=5200
trigger6=(stateno=[150,155])&&(power>150)
;---------------------------------------------------------------------------
;Dash Zanzoken
[State -1,ZZ]
type=ChangeState
trigger1=((command="z")&&(movetype!=H)&&(alive)&&(vel x!=0)&&(!win))&&((stateno=107)||(stateno=108))
value=1056
;---------------------------------------------------------------------------
;Bakuhatsu
[State -1,Bakuhatsu]
type=ChangeState
triggerall=alive&&!win
trigger1=((statetype=S&&ctrl)||(stateno=551&&pos y>-60))&&(command="Bakuhatsu"||command="Bakuhatsu2")
trigger2=(stateno=220)&&(pos y>-60)&&(movehit)&&(command="z")
value=1100+(command="Bakuhatsu2")
;---------------------------------------------------------------------------
;Kienzan
[State -1,Kienzan]
type=ChangeState
triggerall=(alive&&!win)
trigger1=((statetype=S&&ctrl)||(stateno=551))&&(command="Kienzan"||command="Kienzan2")
trigger2=(stateno=220)&&(movehit)&&(command="y")
value=510+((command="Kienzan")||(stateno=220&&movehit&&command="y"))
;---------------------------------------------------------------------------
;Backflip att
[State -1,backflip]
type=ChangeState
value=500
triggerall=command="backflip"
triggerall=alive&&!win
trigger1=(statetype=S&&ctrl)
;---------------------------------------------------------------------------
;divekick att
[State -1,divekick]
type=ChangeState
triggerall=(command="divekick"&&alive&&!win)
trigger1=(statetype=A&&ctrl)
value=501
;---------------------------------------------------------------------------
;Super Jump
[State -1,SJ]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="Super Jump"
triggerall=alive
triggerall=pos y>=0
triggerall=!win
trigger1=(statetype!=A&&ctrl)
;---------------------------------------------------------------------------
;Super Fall
[State -1,SF]
type=ChangeState
triggerall=var(59)=0&&command="DD"&&alive&&!win
trigger1=(statetype=A&&ctrl)||(stateno=551)
value=116
;---------------------------------------------------------------------------
;Counter Attack
[State -1]
type=SelfState
triggerall=(command="counter attack"&&power>500&&alive&&!win&&p2dist x<70&&p2dist y<100&&p2dist y>-100)
trigger1=stateno=[150,155]
value=708
;---------------------------------------------------------------------------
;Guard Push
[State -1]
type=SelfState
triggerall=(command="Guard Push"&&power>500&&alive&&!win&&p2dist x<70&&p2dist y<100&&p2dist y>-100)
trigger1=stateno=[150,155]
value=710
;---------------------------------------------------------------------------
[State -1:Flying - start]
type=ChangeState
triggerall=(stateno!=[400,495])&&(stateno!=[710,711])&&(stateno!=2050)&&(command="UU")&&(alive)&&(!win)
triggerall=(command!="a")&&(command!="b")&&(command!="c")&&(command!="z")&&(command!="holda")&&(command!="holdb")&&(command!="holdc")&&(command!="holdz")
trigger1=(statetype!=A&&ctrl)
value=550
;---------------------------------------------------------------------------
[State -1:Flying]
type=ChangeState
triggerall=(stateno!=[400,495])&&(stateno!=[710,711])&&(command="UU")&&(alive)&&(!win)
trigger1=(statetype=A&&ctrl)||(stateno=50)||(stateno=707)
value=551
;---------------------------------------------------------------------------
;Run Fwd
[State -1,Run Fwd]
type=ChangeState
value=107
triggerall=command="FF"
triggerall=ctrl
trigger1=statetype=S
trigger2=statetype=A
trigger3=stateno=551
;---------------------------------------------------------------------------
;Run Back
[State -1,Run Back]
type=ChangeState
value=108
triggerall=command="BB"
triggerall=ctrl
trigger1=statetype=S
trigger2=statetype=A
trigger3=stateno=551
;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type=ChangeState
value=800
triggerall=pos y <=0
triggerall=alive
triggerall=!win
trigger1=command!="holddown"
trigger1=command="holdfwd"
trigger1=p2bodydist x<7
trigger1=command="y"
trigger1=statetype=S
trigger1=ctrl
;---------------------------------------------------------------------------
[State -1,Jump kick]
type=ChangeState
value=252
triggerall=var(59)=0
triggerall=command="Sonic kick"
triggerall=alive
triggerall=!win
trigger1=(statetype=S&&ctrl)||stateno=551
;---------------------------------------------------------------------------
[State -1,Faultless Defense]
type=ChangeState
value=540
triggerall=(command="holdback")&&(command="FD")&&(var(11)=0)&&(var(59)=0)
trigger1=(statetype=S)&&(ctrl)
trigger2=(statetype=C)&&(ctrl)
trigger3=(stateno=551)&&(ctrl)
;---------------------------------------------------------------------------
[State -1:Charging]
type=ChangeState
triggerall=(var(59)=0&&var(11)=0)&&(command="holdx"&&command="holda")&&(alive&&!win&&power<3000)
trigger1=(pos y>=0)&&(statetype=S)&&(ctrl)||(stateno=551)
value=700
;---------------------------------------------------------------------------
;Fireball
[State -1,FB]
type=ChangeState
value=225
triggerall=var(59)=0&&command="fireball"&&command!="holddown"
trigger1=(pos y >=0)&&(statetype=S)&&(ctrl)
trigger2=(stateno=551)
;---------------------------------------------------------------------------
;Fireball ai
[State -1,FB]
type=ChangeState
value=225
triggerall=var(59)>0&&command="fireball"&&command!="holddown"&&power>50
trigger1=(pos y >=0)&&(statetype=S)&&(ctrl)
trigger2=(stateno=551)
;---------------------------------------------------------------------------
;LP
[State -1,LP]
type=ChangeState
triggerall=(var(59)=0&&command!="holddown")
trigger1=(pos y>=0)&&(statetype=S)&&(ctrl)&&(command="x")
trigger2=(stateno=551)&&(command="x")
trigger3=((command="x")&&(alive)&&(!win))&&(stateno=107)
value=200+(stateno=107)
;---------------------------------------------------------------------------
;MP
[State -1,MP]
type=ChangeState
triggerall=(var(59)=0&&command!="holddown")
trigger1=(pos y>=0)&&(statetype=S)&&(ctrl)&&(command="y")
trigger2=(stateno=200)&&(movehit)&&(command="x")
trigger3=(stateno=551)&&(command="y")
trigger4=((command="y")&&(alive)&&(!win))&&(stateno=107)
value=210+(stateno=107)
;---------------------------------------------------------------------------
;HP
[State -1,HP]
type=ChangeState
triggerall=(var(59)=0&&command!="holddown")
trigger1=(pos y>=0)&&(statetype=S)&&(ctrl)&&(command="z")
trigger2=(stateno=200)&&(movehit)&&(command="x")
trigger3=(stateno=210)&&(movehit)&&(command="x")
trigger4=(stateno=210)&&(movehit)&&(command="y")
trigger5=(stateno=551)&&(command="z")
value=220
;---------------------------------------------------------------------------
;LK
[State -1,LK]
type=ChangeState
triggerall=(var(59)=0&&command!="holddown")
trigger1=(pos y>=0)&&(statetype=S)&&(ctrl)&&(command="a")
trigger2=(stateno=551)&&(command="a")
trigger3=((command="a")&&(alive)&&(!win))&&(stateno=107)
value=230+(stateno=107)
;---------------------------------------------------------------------------
;MK
[State -1,MK]
type=ChangeState
triggerall=(var(59)=0&&command!="holddown")
trigger1=(pos y>=0)&&(statetype=S)&&(ctrl)&&(command="b")
trigger2=(stateno=230)&&(movehit)&&(command="a")
trigger3=(stateno=551)&&(command="b")
value=240+(stateno=107)
;---------------------------------------------------------------------------
;HK
[State -1,HK]
type=ChangeState
triggerall=(var(59)=0&&command!="holddown")
trigger1=(pos y>=0)&&(statetype=S)&&(ctrl)&&(command="c")
trigger2=(stateno=230)&&(movehit)&&(command="a")
trigger3=(stateno=240)&&(movehit)&&(command="a")
trigger4=(stateno=240)&&(movehit)&&(command="b")
trigger5=(stateno=551)&&(command="c")
value=250+(stateno=107)
;---------------------------------------------------------------------------
;LPc
[State -1,LPc]
type=ChangeState
value=300
triggerall=var(59)=0
triggerall=command="x"
triggerall=command="holddown"
trigger1=statetype=C
trigger1=ctrl
;---------------------------------------------------------------------------
;MPc
[State -1,MPc]
type=ChangeState
value=310
triggerall=var(59)=0
triggerall=command="y"
triggerall=command="holddown"
trigger1=statetype=C
trigger1=ctrl
;---------------------------------------------------------------------------
;HPc
[State -1,HPc]
type=ChangeState
value=320
triggerall=var(59)=0
triggerall=command="z"
triggerall=command="holddown"
trigger1=statetype=C
trigger1=ctrl
;---------------------------------------------------------------------------
;LKc
[State -1,LKc]
type=ChangeState
value=330
triggerall=var(59)=0
triggerall=command="a"
triggerall=command="holddown"
trigger1=statetype=C
trigger1=ctrl
;---------------------------------------------------------------------------
;MKc
[State -1,MKc]
type=ChangeState
value=340
triggerall=var(59)=0
triggerall=command="b"
triggerall=command="holddown"
trigger1=statetype=C
trigger1=ctrl
;---------------------------------------------------------------------------
;HKc
[State -1,HKc]
type=ChangeState
value=350
triggerall=var(59)=0
triggerall=command="c"
triggerall=command="holddown"
trigger1=statetype=C
trigger1=ctrl
;---------------------------------------------------------------------------
;LPa
[State -1,LPa]
type=ChangeState
value=400
triggerall=var(59)=0
triggerall=command="x"
triggerall=var(1)=0
trigger1=statetype=A&&ctrl
trigger2=(stateno=252)&&(movehit)&&(command="x")
;---------------------------------------------------------------------------
;MPa
[State -1,MPa]
type=ChangeState
value=410
triggerall=var(59)=0
triggerall=var(1)=0
trigger1=(statetype=A&&ctrl&&command="y")
trigger2=(stateno=400)&&(movehit)&&(command="x")
trigger3=(stateno=252)&&(movehit)&&(command="y")
;---------------------------------------------------------------------------
;HPa
[State -1,HPa]
type=ChangeState
value=420
triggerall=var(59)=0
triggerall=(stateno!=711)&&(prevstateno!=711)
triggerall=var(1)=0
trigger1=(statetype=A&&ctrl&&command="z")
trigger2=(stateno=400)&&(movehit)&&(command="x")
trigger3=(stateno=410)&&(movehit)&&(command="x")
trigger4=(stateno=410)&&(movehit)&&(command="y")
trigger5=(stateno=252)&&(movehit)&&(command="z")
;---------------------------------------------------------------------------
;LKa
[State -1,LKa]
type=ChangeState
value=430
triggerall=var(59)=0
triggerall=command="a"
triggerall=var(1)=0
trigger1=(statetype=A&&ctrl)
trigger2=(stateno=252)&&(movehit)&&(command="a")
;---------------------------------------------------------------------------
;MKa
[State -1,MKa]
type=ChangeState
value=440
triggerall=var(59)=0
triggerall=var(1)=0
trigger1=(statetype=A&&ctrl&&command="b")
trigger2=(stateno=430)&&(movehit)&&(command="a")
trigger3=(stateno=252)&&(movehit)&&(command="b")
;---------------------------------------------------------------------------
;HKa
[State -1,HKa]
type=ChangeState
value=450
triggerall=var(59)=0
triggerall=var(1)=0
trigger1=(statetype=A&&ctrl&&command="c")
trigger2=(stateno=430)&&(movehit)&&(command="a")
trigger3=(stateno=440)&&(movehit)&&(command="a")
trigger4=(stateno=440)&&(movehit)&&(command="b")
trigger5=(stateno=252)&&(movehit)&&(command="c")
;---------------------------------------------------------------------------
;-|This turns the A.I. Controller on|---------------------------------------
;---------------------------------------------------------------------------
[State -1]
type=varset
trigger1=((Var(59) != 1)&&(RoundState=1||RoundState=2||RoundState=3||RoundState=4))
trigger1=((command="ai1")||(command="ai2")||(command="ai3")||(command="ai4")||(command="ai5")||(command="ai6")||(command="ai7")||(command="ai8")||(command="ai9")||(command="ai10")||(command="ai11")||(command="ai12")||(command="ai13")||(command="ai14"))
v=59
value=ifelse((palno=[0,4]),1,ifelse((palno=[5,10]),2,3))
;-------------------- Floating code -----------------------
[State -1: floating vars]
type=Null
trigger1=(pos y<0&&var(1)>0)
trigger1=(0&&var(3):=ifelse(var(2)>=30,var(3)+1,ifelse(var(2)<=-30,var(3)-1,var(3))))
trigger2=(pos y<0&&var(1)>0)
trigger2=(0&&var(2):=ifelse(var(3)=0,var(2)+1,var(2)-1))
trigger3=(pos y>=0)
trigger3=(var(1):=0)
;---------------- End of Floating code ---------------------
[State -1:Jump sounds]
type=PlaySnd
trigger1=(Time=1)&&(((prevstateno=40)&&(stateno=50))||(stateno=707)||(stateno=52))
value=0,ifelse(stateno=52,5,4)
channel=8

[State -1,Get Hit Sound]
type=PlaySnd
trigger1=(var(4)=0&&GetHitVar(fall)=1&&GetHitVar(hitcount)<2&&time=1&&alive)
trigger1=(var(4):=var(4)+1)
trigger2=(movetype!=H&&time=1&&alive)
trigger2=(var(4):=0)
value=3,5
volume=255

[State -1:Die Sound]
type=PlaySnd
trigger1=(!alive)&&(time=1)&&(!var(5))
trigger1=(var(5):=var(5)+1)
value=4,5
channel=9

[State -1]
type=StopSnd
trigger1=movetype=H
channel=2
ignorehitpause=1
[State -1]
type=StopSnd
trigger1=movetype=H
channel=3
ignorehitpause=1
[State -1]
type=StopSnd
trigger1=movetype=H
channel=4
ignorehitpause=1
[State -1]
type=StopSnd
trigger1=movetype=H
channel=5
ignorehitpause=1
[State -1]
type=StopSnd
trigger1=movetype=H
channel=6
ignorehitpause=1
[State -1]
type=StopSnd
trigger1=movetype=H
channel=7
ignorehitpause=1
[State -1]
type=StopSnd
trigger1=movetype=H
channel=9
ignorehitpause=1
[State -1]
type=StopSnd
trigger1=movetype=H
channel=10
ignorehitpause=1
[State -1]
type=StopSnd
trigger1=(roundstate=2||stateno=0||stateno=551)
channel=15
ignorehitpause=1
[State -1]
type=StopSnd
trigger1=(roundstate=2||stateno=0||stateno=551)
channel=16
ignorehitpause=1

[State 0, ]
type=Helper
trigger1=numhelper(6200)=0
helpertype=normal
name="Rage bar"
ID=6200
pos=0,999
postype=p1
ownpal=0
stateno=6200
pausemovetime=999999999999999999
supermovetime=999999999999999999
ignorehitpause=1

[State 0, ]
type=StateTypeSet
trigger1=pos y < 0
statetype=A
ignorehitpause=1

[State 0, ]
type=PosSet
trigger1=(pos y>0)&&(stateno!=[5000,5299])&&(alive)&&(name="[Dizzy]'s Super Vegeta")
y=0
ignorehitpause=1

[State -2: Vars]
type=Null
trigger1=(fvar(3)<=0)
trigger1=(0&&var(16):=0)
trigger2=(Ctrl)||(Stateno=[5000,5299])
trigger2=(0&&var(17):=0)
trigger3=(Ctrl)||(Stateno=[5000,5299])
trigger3=(0&&var(18):=0)
trigger4=win||lose
trigger4=(0&&fvar(3):=0)
[State -2: Vars]
type=Null
trigger1=(fvar(3)<=0&&var(11)=1)||win||lose
trigger1=(0&&var(11):=0)
trigger2=fvar(3)>1.0001
trigger2=(0&&fvar(3):=1.0001)
trigger3=P2MoveType!=H
trigger3=(0&&var(15):=0)
trigger4=(HitPauseTime=1&&MoveHit&&P2MoveType=H)||(ProjHitTime(0)=1)
trigger4=(0&&var(15):=var(15)+1)
trigger5=(pos y>=0)
trigger5=(0&&var(1):=0)
ignorehitpause=1
[State -2: Vars]
type=Null
trigger1=(fvar(5)>0)&&(movetype!=A)
trigger1=(0&&fvar(5):=fvar(5)-0.04)
trigger2=(fvar(5)<0)
trigger2=(0&&fvar(5):=0)
trigger3=(stateno!=191&&stateno!=701&&stateno!=703&&var(9)=1)
trigger3=(0&&var(9):=0)
ignorehitpause=1

[State -2: X]
type=null;varadd
trigger1=(movetype=H)&&(stateno!=[5035,5300])&&(stateno!=[150,155])&&(fvar(3)<1)
fvar(3)=0.008
[State 0, ]
type=null;varadd
trigger1=(movetype=H)&&(stateno!=[5035,5300])&&(stateno=[150,155])&&(fvar(3)<1)
fvar(3)=0.004
[State 0, ]
type=varadd
trigger1=(movetype!=H)&&(stateno!=[5035,5300])&&(stateno!=[150,155])&&(stateno!=[7000,7002])&&(fvar(3)>=0)
fvar(3)=-0.0008

[State 0, ]
type=ChangeState
triggerall=(name!="[Dizzy]'s Super Vegeta")
trigger1=(1)&&((Stateno!=8000)||(Stateno!=8001))
value=IfElse(Random>500,8001,8000)

[State -2, CC AfterImageTime]
type=AfterImageTime
trigger1=(var(11)=1&&fvar(3)<=0)||(RoundState=3)
time=1

[State -2, CC PowerAdd]
type=PowerAdd
trigger1=Var(16)=1
value=ifelse((stateno>=700&&stateno<=705),-2,-3)

[State -2, CC AssertSpecial]
type=AssertSpecial
trigger1=Var(16)=1
flag=NoJuggleCheck
persistent=1

[State 0, ]
type=Posadd
trigger1=(name!="[Dizzy]'s Super Vegeta")
x=0
y=999

[State 0, ]
type=AfterImage
trigger1=(fvar(3)<=0)&&(var(11)=1)
time=1
length=1
palcontrast=0,0,0
timegap=1
trans=add
ignorehitpause=1

[State 0, ]
type=PalFX
trigger1=(var(11)=1)
trigger1=gametime%3=0
time=1
add=50,0,0
ignorehitpause=1

[State 0, ]
type=ChangeState
trigger1=(fvar(3)>=0.99)&&(var(11)=0)&&(stateno!=[7000,7001])&&movetype!=H
value=7000
ignorehitpause=1

[State 0, ]
type=ChangeState
triggerall=(name!="[Dizzy]'s Super Vegeta")
trigger1=(1)&&((Stateno!=8002)||(Stateno!=8003))
value=IfElse(Random>500,8003,8002)

[Statedef -2]
[State -2] 
type=LifeAdd 
trigger1=(Roundstate=2)&&(name != "[Dizzy]'s Super Vegeta")
value=-50 
ignorehitpause=1
;--------------------------------------------------------------------------
;---| AI routines |--------------------------------------------------------
;--------------------------------------------------------------------------
[state -2,Counter]
type=changestate
triggerall=Var(59)>0&&alive&&power>500&&ifelse(Var(59)=2,random>200,ifelse(Var(59)=1,random>400,random>50))&&(p2bodydist x<30&&p2dist y<80&&p2dist y>0)
trigger1=(stateno=[150,155])&&(prevstateno!=710)
value=708
ignorehitpause=1

[state -2,Break]
type=changestate
triggerall=Var(59)>0&&alive&&power>500&&ifelse(Var(59)=2,random>200,ifelse(Var(59)=1,random>400,random>50))&&p2bodydist x<30&&p2dist y<80&&p2dist y>0
trigger1=(gethitvar(fall)=0)&&(stateno=[5000,5029])&&(pos y<=0)&&(stateno!=[120,156])
value=710
ignorehitpause=1

[state -2,Throw]
type=changestate
triggerall=(Var(59)>0)&&alive&&p2movetype!=H&&p2stateno!=5120&&(p2bodydist x<10&&p2dist y<50&&p2dist y>-10)
triggerall=ifelse(Var(59)=2,random>500,ifelse(Var(59)=1,random>900,random>100))&&(pos y>=0)
trigger1=((statetype=S)&&(ctrl))||((stateno=551)&&(ctrl))
value=800
ignorehitpause=1

[state -2,Teleport]
type=changestate
triggerall=(roundstate=2)&&(!win)&&(Var(59)>0)&&(alive)
trigger1=movetype=I&&p2movetype=A&&p2dist x<120&&random>980&&statetype=S&&ctrl
trigger2=movetype=I&&stateno=551&&p2movetype=A&&p2dist x<120&&random>980&&ctrl
trigger3=movetype=H&&(stateno=[150,156])&&random>950&&p2bodydist x>=30
value=1050
ignorehitpause=1

[state -2,jump]
type=changestate
triggerall=(Var(59)>0)&&(alive)&&(roundstate=2)&&(!win)&&(movetype!=H)&&(stateno=0||stateno=11)&&(pos y>=0)
trigger1=(p2dist y<-40)&&(p2bodydist x>30||p2bodydist x<-30)&&(ctrl)&&(random>300)
value=40
ignorehitpause=1

[state -2,fall]
type=changestate
triggerall=(roundstate=2)&&(!win)&&(Var(59)>0)&&(alive)&&(movetype!=H)
trigger1=p2dist y>150&&ctrl&&random>500
value=116
ignorehitpause=1

[state -2,block]
type=changestate
triggerall=(roundstate=2)&&(!win)&&(Var(59)>0)&&(alive)&&(movetype!=H)
trigger1=(p2movetype=A)&&(p2bodydist x<30)&&(p2bodydist y=[70,90])&&(ctrl)&&(random<500)
value=130+(statetype=C)+(statetype=A)*2
ignorehitpause=1

[State 0, ]
type=VelSet
trigger1=(Var(59)>0&&alive&&stateno=132)
x=0
y=0
ignorehitpause=1

[state -2,Bakuhatsu]
type=changestate
triggerall=(roundstate=2)&&(!win)&&Var(59)>0&&pos y>=0&&alive&&ctrl&&(p2bodydist x=[30,60])&&(p2dist y=[-100,100])
trigger1=ifelse(Var(59)=2,random>750,ifelse(Var(59)=1,random>940,random>520))
value=1100
ignorehitpause=1

[state -2,Rushing Elbow]
type=changestate
triggerall=(roundstate=2)&&(!win)&&Var(59)>0&&alive&&ctrl&&(p2bodydist x=[0,60])&&(p2dist y=[-30,20])
triggerall=ifelse(Var(59)=2,random>100,ifelse(Var(59)=1,random>300,random>10))
trigger1=stateno=0||stateno=551
value=900
ignorehitpause=1

[state -2,Backflip]
type=changestate
triggerall=(roundstate=2)&&(!win)&&Var(59)>0&&alive&&ctrl&&(p2bodydist x=[0,60])&&pos y>=0&&(ifelse(Var(59)=2,random>100,ifelse(Var(59)=1,random>300,random>10)))
trigger1=stateno=0||stateno=20
value=500
ignorehitpause=1

[state -2,Dive kick]
type=changestate
triggerall=(roundstate=2)&&(!win)&&Var(59)>0&&alive&&ctrl&&statetype=A&&(p2bodydist x=[0,70])&&(p2bodydist y=[70,90])
triggerall=ifelse(Var(59)=2,random>430,ifelse(Var(59)=1,random>600,random>200))
trigger1=stateno=50||stateno=707
value=501
ignorehitpause=1

[state -2,dash]
type=changestate
triggerall=(roundstate=2)&&(!win)&&Var(59)>0&&alive&&ctrl&&p2bodydist x>40
triggerall=ifelse(Var(59)=2,random>300,ifelse(Var(59)=1,random>600,random>10))
trigger1=stateno=0||stateno=551
value=107
ignorehitpause=1

[state -2,Punch/kick]
type=changestate
triggerall=(roundstate=2)&&(!win)&&(Var(59)>0)&&(alive)&&(ctrl)&&((statetype=S)&&((stateno=0)||(stateno=100)))&&(p2bodydist x=[0,30])&&(p2dist y=[-100,100])
trigger1=ifelse(Var(59)=2,random>230,ifelse(Var(59)=1,random>460,random>100))
value=200||210||230||240||250
ignorehitpause=1

[state -2,Crouch Punch/kick]
type=changestate
triggerall=(roundstate=2)&&(!win)&&(Var(59)>0)&&(alive)&&(ctrl)&&((statetype=C)&&(stateno=11))&&(p2bodydist x=[0,30])&&(p2dist y=[-100,100])
trigger1=ifelse(Var(59)=2,random>230,ifelse(Var(59)=1,random>460,random>100))
value=300||310||330||340||350
ignorehitpause=1

[state -2,Launcher]
type=changestate
triggerall=(roundstate=2)&&(!win)&&(Var(59)>0)&&(alive)&&(ctrl)&&((statetype=C)&&(stateno=11))&&(p2bodydist x=[0,30])&&(p2dist y=0)
trigger1=ifelse(Var(59)=2,random>130,ifelse(Var(59)=1,random>160,random>0))
value=310
ignorehitpause=1

[state -2,Air Punch/kick]
type=changestate
triggerall=(roundstate=2)&&(!win)&&(Var(59)>0)&&(alive)&&(ctrl)&&((statetype=A)&&((stateno=50)||(stateno=707)))&&(p2bodydist x=[0,30])&&(p2dist y=[-80,-10])
trigger1=ifelse(Var(59)=2,random>230,ifelse(Var(59)=1,random>460,random>100))
value=400||410||430||440||450
ignorehitpause=1

[state -2,Desperation]
type=changestate
trigger1=(Var(59)>0)&&(life<200)&&(power>=3000)&&(alive)&&(!win)&&(ctrl)&&(pos y>=0)&&(p2bodydist x=[0,80])&&(ifelse(Var(59)=2,random>320,ifelse(Var(59)=1,random>800,random>90)))
value=850
ignorehitpause=1
;--------------------------------------------------------------------------
;---| /AI routines |-------------------------------------------------------
;--------------------------------------------------------------------------
[State 0, blargh]
type=DisplayToClipboard
trigger1=1
text="Blargh..."
;text="var(11)=%d,fvar(0)=%f,Attackmulset=%f"
;params=var(11),fvar(0),fvar(4)
ignorehitpause=1
[State -2: Power to attack counter]
type=varset
trigger1=1
fvar(4)=((1+(power*0.00004))-fvar(5))+(var(11)*0.3)
ignorehitpause=1
[State -2: Power to attack counter]
type=AttackMulSet
trigger1=1
value=fvar(4)
ignorehitpause=1
[State -2: Power to defence counter]
type=DefenceMulSet
trigger1=1
value=(fvar(4)*1.3)
ignorehitpause=1

[Statedef -3]
[State -2]
type=LifeAdd
trigger1=(var(11)=1)
value=floor(-gethitvar(damage))
kill=1
ignorehitpause=1

[State 0, ]
type=HitOverride
trigger1=(var(11)>0)
slot=5
attr=SCA,AA,AP,AT
stateno=stateno
time=1
ctrl=1
ignorehitpause=1

[State 0, ]
type=AssertSpecial
trigger1=(roundstate!=2)
flag=nobardisplay
ignorehitpause=1

[State 0, ]
type=AssertSpecial
trigger1=(var(0)=1)
flag=nomusic
ignorehitpause=1

[State -2, negative penality]
type=PowerSet
triggerall=(stateno!=[1000,1011])&&(stateno!=[1200,1202])&&(stateno!=[170,199])&&(stateno!=2222)&&(stateno!=540)&&(stateno!=[5000,5300])
trigger1=(((movetype=A)&&(movecontact))||(roundstate!=2))||(Var(21)>1000)
trigger1=(0)&&(Var(21):=0)
trigger2=(0)&&(Var(21):=(Var(21)+1))
trigger3=(Var(21)>1000)
value=0

[State 0, ]
type=Helper
trigger1=(stateno!=[1000,1011])&&(stateno!=[1200,1202])&&(stateno!=[170,199])&&(stateno!=2222)&&(stateno!=540)&&(stateno!=[5000,5300])&&(!ishelper)&&(Var(21)=700)&&(numhelper(561)=0)&&(AuthorName="Dizzy")
helpertype=normal
name="Danger text"
ID=561
pos=0,0
postype=p1
stateno=561
keyctrl=0
ownpal=1
ignorehitpause=1
persistent=0

[State 0, ]
type=Helper
trigger1=(stateno!=[1000,1011])&&(stateno!=[1200,1202])&&(stateno!=[170,199])&&(stateno!=2222)&&(stateno!=540)&&(stateno!=[5000,5300])&&(!ishelper)&&(Var(21)=1000)&&(numhelper(560)=0)&&(AuthorName="Dizzy")
helpertype=normal
name="Negative penality text"
ID=560
pos=0,50
postype=p1
stateno=560
keyctrl=0
ownpal=1
ignorehitpause=1
persistent=0

[State 0, ]
type=Helper
trigger1=(enemynear(0),alive=0)&&(numhelper(1122)=0)&&(AuthorName="Dizzy")
helpertype=normal
name="Kill"
ID=1122
pos=0,0
postype=p1
stateno=1122
keyctrl=0
persistent=0
