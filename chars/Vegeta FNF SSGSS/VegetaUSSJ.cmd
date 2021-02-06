[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a command. Minimum 1,
; maximum 30.
command.buffer.time = 1
;=================[Level 4]=====================================================
[command]
name = "FinalKameHameHa"
command = D,DF,F,D,DF,F,c+z
time = 30
;=================[Level 3]=====================================================
[command]
name = "Berserker Fury"
command = D,DF,F,B,c
time = 30
;=================[Level 2]=====================================================
[command]
name = "DestelloFinal"
command = D,DF,F,B,x+y
time = 30
[command]
name = "RenzokuKikoHa"
command = D,DB,B,D,DB,B, c
time = 30
;=================[Level 1]=====================================================
[command]
name = "Big-Bang-Attack"
command = D,DB,B,F,c
time = 30
[command]
name = "Amazing-Fire"
command = D,DF,F,D,DF,F,x
time = 30
[command]
name = "Amazing-Fire"
command = D,DF,F,D,DF,F,y
time = 30
[command]
name = "Fukushahado"
command = D,DF,F,D,DF,F,a
time = 30
[command]
name = "Fukushahado"
command = D,DF,F,D,DF,F,b
time = 30
;=================[Especiales de Ki-XYZ]============================================
[command]
name = "Fire Balls"
command = c
time = 20
[command]
name = "Atomic-Blast"
command = D,DF,F, c
time = 25
[command]
name = "PhotonBomber"
command = /D, c
time = 20
[command]
name = "Garlick-Cannon"
command = D,DB,B,c
time = 20
[command]
name = "Big-Ball"
command = D,DF,F,c
time = 20
[command]
name = "Crazy-Ball-Ex"
command = B,DB,D,DF,F,c
time = 30
[command]
name = "Crazy-Ball"
command = /D, c
time = 15
[command]
name = "Shyougeki Ha"
command = D,DB,B, c
time = 25
;====================[Especiales de melXYZ]=====================================
[command]
name = "ShoryuKen-Ex"
command = F,D,DF,x+y
time = 20
[command]
name = "ShoryuKen-Débil"
command = F,D,DF,x
time = 20
[command]
name = "ShoryuKen-Medio"
command = F,D,DF,y
time = 20
[command]
name = "codazo"
command = D,DB,B,x
time = 15
[command]
name = "codazo2"
command = D,DB,B,y
time = 15
[command]
name = "Burn-Knuckle"
command = D,DB,B,x+y
time = 15
[command]
name = "Launcher"
command = a+x
time = 1
;====================[Especiales de melABC]=====================================
[command]
name = "Knee-Smash-Debil"
command = D,DB,B,a
time = 20
[command]
name = "Knee-Smash-Medio"
command = D,DB,B,b
time = 20
[command]
name = "Knee-Smash-Ex"
command = D,DB,B,a+b
time = 20
[command]
name = "Raigeki-Shuu-Debil"
command = F,DF,D,a
time = 15
[command]
name = "Raigeki-Shuu-Medio"
command = F,DF,D,b
time = 15
[command]
name = "Raigeki-Shuu-Ex"
command = F,DF,D,a+b
time = 15
;==================[Comandos]============================================

[command]
name = "Super Jump"
command = ~D, U
time = 10

;-| Double Tap |-----------------------------------------------------------
[command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[command]
name = "PP"
command = x+y
time = 1

[command]
name = "KK"
command = a+b
time = 1

[command]
name = "DummyPlug"
command = b+c
time = 1

[command]
name = "dodge"
command = a+x
time = 1

[command]
name = "Zero-Counter"
command = b+y
time = 1

[command]
name = "USSJ"
command = z+c
time = 1

[command]
name = "charge"
command = /b
time = 1

[command]
name = "charge 1"
command = /y
time = 1

[command]
name = "hold_a"
command = /a
time = 1

[command]
name = "hold_b"
command = /b
time = 1

[command]
name = "hold_c"
command = /c
time = 1

[command]
name = "hold_x"
command = /x
time = 1

[command]
name = "hold_y"
command = /y
time = 1

[command]
name = "fly"
command = a+b
time = 1

[command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[command]
name = "holda"
command = /a
time = 1

[command]
name = "holdb"
command = /b
time = 1

[command]
name = "FF"
command = F, F
time = 10

[command]
name = "BB"
command = B, B
time = 10

[command]
name = "UU"
command = U, U
time = 10

[command]
name = "DD"
command = D, D
time = 10



;-| Dir + Button |---------------------------------------------------------
[command]
name = "down_a"
command = /$D,a
time = 1

[command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "start"
command = s
time = 1

[command]
name = "forward"
command = F
time = 1

[command]
name = "back"
command = B
time = 1

[command]
name = "up"
command = U
time = 1

[command]
name = "down"
command = D
time = 1
;-| Hold Dir |--------------------------------------------------------------
[command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[command]
name = "holddf";Required (do not remove)
command = /$DF
time = 1

[command]
name = "holddb";Required (do not remove)
command = /$DB
time = 1

[command]
name = "holdub";Required (do not remove)
command = /$UB
time = 1

[command]
name = "holduf";Required (do not remove)
command = /$UF
time = 1

[command]
name = "holda";Required (do not remove)
command = /a
time = 1

[command]
name = "holdb";Required (do not remove)
command = /b
time = 1

[command]
name = "holdc";Required (do not remove)
command = /c
time = 1

[command]
name = "holdx";Required (do not remove)
command = /x
time = 1

[command]
name = "holdy";Required (do not remove)
command = /y
time = 1

[command]
name = "holdz";Required (do not remove)
command = /z
time = 1

[Statedef -1]
[State -1, 10]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && (PREVSTATENO != [10,12])
trigger1 = p2bodydist y <= 35 && (random=[500,700])
trigger1 = (Ctrl) && statetype = S
value = 10
[State -1, 60]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0
trigger1 = p2bodydist y <= -50 && (random=[0,400])
trigger1 = (Ctrl) && statetype !=A
trigger2 = stateno = 1200 && movecontact && (random=[0,500])
value = 60
[State -1, 100]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0
trigger1 = p2bodydist x > 100 && (random=[201,600])
trigger1 = Ctrl && statetype !=A
value = 100
[State -1, 105/40]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && BACKEDGEBODYDIST >120
trigger1 = p2bodydist x < 60 && (random=[0,200])
trigger1 = Ctrl && statetype = S
value = 105
[State -1, 130]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && var(56)!=1
trigger1 = p2bodydist x <= 75 && (random=[0,400])
trigger1 = (Ctrl) && p2movetype = A && statetype = S
value = 130
[State -1, 131]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && var(56)!=1
trigger1 = p2bodydist x <= 75 && (random=[0,400])
trigger1 = Ctrl && p2movetype = A && statetype = C
value = 131
[State -1, 132]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && var(56)!=1
trigger1 = p2bodydist x  <= 75 && (random=[0,400])
trigger1 = Ctrl && p2movetype = A && statetype = A
value = 132
[State -1, Parry]
type = HitOverride
triggerall = RoundState = 2 && AiLevel>0 && var(56)!=1
trigger1 = ctrl && statetype = s && (random=[0,200])
trigger1 =prevstateno = 700 && (random=[0,300])
attr = SCA,AP,AA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 700
time = ifelse(var(56)=1,12,6)
[State -1, AirParry]
type = HitOverride
triggerall = RoundState = 2 && AiLevel>0 && var(56)!=1
trigger1 = ctrl && statetype = a && (random=[0,150])
trigger1 =prevstateno = 701 && (random=[0,300])
attr = SCA,AP,AA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 701
time = ifelse(var(56)=1,12,6)
forceair = 0
[State -1, Charge]
type = ChangeState
triggerall = power < 3000 && AiLevel>0 && p2bodydist x > 100 && var(56)=0
trigger1 = statetype = S && ctrl && random < 300 && p2bodydist x > 100 && var(56)=0
value = 730
[State -1, Zero-Counter]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && (stateno = [150,155]) && power >=500
trigger1 = p2bodydist x < 30 && random < 250
value = IFELSE(statetype = A,744,740)
[State -1, Zanzoken]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && var(56)!=1 && power >=250&& p2statetype != L
trigger1 = p2bodydist x < 50 && (random=[0,400]); <=700
TRIGGER1 = statetype = S
trigger1 = (Ctrl)
trigger1 = p2movetype = A
value = 710
;[State -1, Zanzoken]
;type = ChangeState
;triggerall = RoundState = 2 && AiLevel>0 && var(56)!=1 && power >=250&& p2statetype != L
;trigger1 = p2bodydist x < 50 && (random=[0,400]); <=700
;TRIGGER1 = statetype = A
;trigger1 = (Ctrl)
;trigger1 = p2movetype = A
;value = 715
[State -1, USSJ]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && var(56)!=1
trigger1 = p2bodydist x > 200 && (random=[400,600]) && power >= 2000
TRIGGER1 = statetype = S
trigger1 = ctrl
value = 760
[State -1, Taunt]
type = ChangeState
triggerall = AiLevel>0 && (p2bodydist x > 100 && p2statetype = L)
trigger1 = statetype = S && ctrl && random < 100
value = 195
[State -1, Agarre]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L; && p2statetype != L
trigger1 = p2bodydist x < 3 && (random=[0,200]); <=700
trigger1 = (Ctrl)&& statetype = S
value = 820
[State -1, 200]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x < 3 && (random=[0,200]); <=700
trigger1 = (Ctrl)&& statetype = S
value = 200
[State -1, 201]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = (p2bodydist x >= 3 && p2bodydist x < 40) && (random=[0,200]); <=700
trigger1 = (Ctrl)&& statetype = S
trigger2 = (stateno = 200 && movecontact) && (random=[0,200])
value = 201
[State -1, 210]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x < 3 && (random=[201,400]); <=700
trigger1 = (Ctrl)&& statetype = S
trigger2 = (stateno = 200) && movecontact && (random=[201,400])
trigger3 = (stateno = 230) && movecontact && (random=[201,400])
trigger4 = ((stateno = [400,430])) && movecontact && (random=[201,400])
value = 210
[State -1, 211]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = (p2bodydist x >= 3 && p2bodydist x < 40) && (random=[201,400]); <=700
trigger1 = (Ctrl)&& statetype = S
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210) && movecontact && (random=[201,400])
trigger3 = (stateno = 230 || stateno = 231 ) && movecontact && (random=[201,400])
trigger4 = (stateno = 400 || stateno = 410 ) && movecontact && (random=[201,400])
value = 211 
[State -1, 230]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x < 3 && (random=[401,600]); <=700
trigger1 = (Ctrl)&& statetype = S
value = 230
[State -1, 231]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = (p2bodydist x >= 3 && p2bodydist x < 40) && (random=[401,600]); <=700
trigger1 = (Ctrl)&& statetype = S
trigger2 = (stateno = 200 || stateno = 210) && movecontact && (random=[401,600])
trigger3 = (stateno = 230) && movecontact && (random=[401,600])
trigger4 = (stateno = 400 || stateno = 430) && movecontact && (random=[401,600])
value = 231
[State -1, 240]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x < 5 && (random=[601,800]); <=700
trigger1 = (Ctrl)&& statetype = S
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210) && movecontact && (random=[601,800])
trigger3 = (stateno = 230 || stateno = 231) && movecontact && (random=[601,800])
trigger4 = (stateno = [400,430]) && movecontact && (random=[601,800])
value = 240
[State -1, 241]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = (p2bodydist x >= 5 && p2bodydist x < 40) && (random=[601,800]); <=700
trigger1 = (Ctrl)&& statetype = S
trigger2 = (stateno = 200 || stateno = 201 || stateno = 211 || stateno = 210) && movecontact && (random=[601,800])
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240) && movecontact && (random=[601,800])
trigger4 = (stateno = [400,430]) && movecontact && (random=[601,800])
value = 241
[State -1, 400]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x < 30 && (random=[0,200]); <=700
trigger1 = (Ctrl)&& statetype =C
value = 400
[State -1, 410]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x < 30 && (random=[201,400]); <=700
trigger1 = (Ctrl)&& statetype =C
trigger2 = (stateno = 400 || stateno = 430) && movecontact && (random=[201,400]); < 500
trigger3 = (stateno = 200 || stateno = 230) && movecontact && (random=[201,400]); < 500
value = 410
[State -1, 430]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x < 30 && (random=[401,600]); <=700
trigger1 = (Ctrl)&& statetype =C
trigger2= (stateno = 200 || stateno = 230) && movecontact && (random=[401,600]); < 500
trigger3 = (stateno = 201 || stateno = 231) && movecontact && (random=[401,600]); < 500
value = 430
[State -1, 440]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x < 40 && (random=[601,800]); <=700
trigger1 = (Ctrl)&& statetype =C
trigger2 = (stateno = [200,241]) && movecontact && (random=[601,800]); < 500
trigger3 = (stateno = [400,430]) && movecontact && (random=[601,800]); < 500
value = 440
[State -1, Launcher]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x < 45 && ((random=[0,300]) || (random=[801,899])); <=700
trigger1 = (Ctrl)&& statetype !=A
trigger2 = ((stateno = [200,241])) && movecontact && (random=[700,999])
trigger3 = ((stateno = [400,430])) && movecontact && (random=[700,999])
value = 1200
[State -1, 600/630]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x < 35 && (random=[0,500]); <=700
trigger1 = (Ctrl)&& statetype = A
value = ifelse(random>500,600,630)
[State -1, 600/620]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x < 40 && (random=[500,999]); <=700
trigger1 = (Ctrl)&& statetype = A
TRIGGER2 = (stateno = 600 || stateno = 630) && movecontact && (random=[500,999]); >600
value = ifelse(random>500,610,640)
[State -1, 2000]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 150
trigger1 = p2bodydist x >= 50 && (random=[900,999]); <=700
trigger1 = (Ctrl)&& statetype = S
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact && (random=[900,999])
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact && (random=[900,999])
trigger4 = (stateno = [400,440]) && movecontact && (random=[900,999])
value = 2000
[State -1, 1500]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x <= 100 && (random=[0,200])
trigger1 = (Ctrl) && statetype !=A
trigger2 = ((stateno = [200,241])) && movecontact && (random=[0,120])
trigger3 = ((stateno = [400,450])) && movecontact && (random=[0,120])
value = 1500
[State -1, 1501]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = stateno = 1500 && Animelem = 2, >= 10 && Animelem = 2, >= 10 && movecontact &&  (random=[0,120])
trigger2 = stateno = 1511 && Animelem = 2, >= 9 && movecontact &&  (random=[0,120])
value = 1501
[State -1, 1502]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = stateno = 1501 && Animelem = 3, >= 8 && movecontact &&  (random=[0,120])
trigger2 = stateno = 1512 && Animelem = 2, >= 10 && movecontact &&  (random=[0,120])
value = 1502
[State -1, 1510]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x <= 40 && (random=[201,400])
trigger1 = (Ctrl) && statetype !=A
trigger2 = (stateno = [200,241]) && movecontact && (random=[121,240]); <600
trigger3 = (stateno = [400,450]) && movecontact && (random=[121,240]); <600
value = 1510
[State -1, 1512]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[121,240])
trigger2 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[121,240])
value = 1512
[State -1, 1513]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = stateno = 1501 && Animelem = 3, >= 8 && movecontact && (random=[121,240])
trigger2 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[121,240])
value = 1513
[State -1, 1301]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >=500
trigger1 = p2bodydist x <= 150 && (random=[241,360])
trigger1 = (Ctrl) && statetype !=A
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[241,360])
trigger3 = stateno = 1501 && Animelem = 3, >= 8 && movecontact && (random=[241,360])
trigger4 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[241,360])
trigger5 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[241,360])
trigger6 = stateno = 1513 && movecontact && (random=[241,360])
trigger7 = (stateno = [200,241]) && movecontact && (random=[241,360]); <600
trigger8 = (stateno = [400,450]) && movecontact && (random=[241,360]); <600
value = 1301
[State -1, 1700]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x <= 50 && (random=[361,480])
trigger1 = (Ctrl) && statetype !=A
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[361,480])
trigger3 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[361,480])
trigger4 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[361,480])
trigger5 = stateno = 1513 && movecontact && (random=[361,480])
trigger6 = (stateno = [200,241]) && movecontact && (random=[361,480]); <600
trigger7 = (stateno = [400,430]) && movecontact && (random=[361,480]); <600
trigger9 = (stateno = 2201) && (Animelem = 5, >= 0) && (random = [401,450])
value = 1700
[State -1, 1710]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist x <= 100 && (random=[481,600])
trigger1 = (Ctrl) && statetype !=A
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[481,600])
trigger3 = stateno = 1501 && Animelem = 3, >= 8 && movecontact && (random=[481,600])
trigger4 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[481,600])
trigger5 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[481,600])
trigger6 = stateno = 1513 && movecontact && (random=[481,600])
trigger7 = (stateno = [200,241]) && movecontact && (random=[481,600]); <600
trigger8 = (stateno = [400,450]) && movecontact && (random=[481,600]); <600
trigger9 = (stateno = 2201) && (Animelem = 5, >= 0) && (random = [451,500])
value = 1710
[State -1, 1720]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && POWER >= 500
trigger1 = p2bodydist x <= 70 && (random=[601,720])
trigger1 = (Ctrl) && statetype !=A
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[601,720])
trigger3 = stateno = 1501 && Animelem = 3, >= 8 && movecontact && (random=[601,720])
trigger4 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[601,720])
trigger5 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[601,720])
trigger6 = stateno = 1513 && movecontact && (random=[601,720])
trigger7 = (stateno = [200,241]) && movecontact && (random=[601,720]); <600
trigger8 = (stateno = [400,430]) && movecontact && (random=[601,720]); <600
trigger9 = (stateno = 2201) && (Animelem = 5, >= 0) && (random = [501,550])
value = 1720
[State -1, 1600/1610]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = p2bodydist y < -40 && (random=[251,650]) && p2bodydist x < 50
trigger1 = (Ctrl) && statetype !=A
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[721,780])
trigger3 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[721,780])
trigger4 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[721,780])
trigger5 = (stateno = [200,241]) && movecontact && (random=[721,780]); <600
trigger6 = (stateno = [400,430]) && movecontact && (random=[721,780]); <600
value = ifelse(random>500,1600,1610)
[State -1, 1620]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 500
trigger1 = p2bodydist y < -40 && (random=[651,999]) && p2bodydist x < 50
trigger1 = (Ctrl) && statetype !=A
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[781,840])
trigger3 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[781,840])
trigger4 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[781,840])
trigger5 = (stateno = [200,241]) && movecontact && (random=[781,840]); <600
trigger6 = (stateno = [400,430]) && movecontact && (random=[781,840]); <600
value = 1620
[State -1, 1400]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = statetype = A && (random=[0,400]) && POS Y < -60 && p2bodydist x < 20
trigger1 = (Ctrl)
trigger2 = (stateno = [600,610]) && movecontact && (random=[0,200]); <600
value = 1400
[State -1, 1425]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L
trigger1 = statetype = A && (random=[201,400]) && POS Y < -40 && p2bodydist x < 100
trigger1 = (Ctrl)
trigger2 = (stateno = [600,640]) && movecontact && (random=[0,400]); <600
trigger3 = stateno = 1700 && time >= 10 && movecontact && (random=[201,400]); <600
trigger4 = stateno = 1710 && animelem = 3,>=6 && movecontact && (random=[201,400]); <600
value = 1425
[State -1, 1450]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 500
trigger1 = statetype = A && (random=[401,600])&& POS Y < -20 && p2bodydist x < 70 && (p2bodydist y =[-50,50])
trigger1 = (Ctrl)
trigger2 = (stateno = [600,640]) && movecontact && (random=[0,600]); <600
trigger3 = stateno = 1700 && time >= 10 && movecontact && (random=[401,600]); <600
trigger4 = stateno = 1710 && animelem = 3,>=6 && animelem = 3,>=4 && movecontact && (random=[401,600]); <600
value = 1450
[State -1, 2100]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && power >= 100
trigger1 = p2bodydist y > 40 && (random=[800,999])
trigger1 = (Ctrl) && statetype !=A
trigger2 = prevstateno = 1200 && movecontact && (random=[800,999]); <600
value = 2100
[State -1, 2102]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && numhelper(2110)>0
trigger1 = p2bodydist y > 60 && (random=[0,500])
trigger1 = (Ctrl) && statetype !=A
value = 2102
[State -1, 2200]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 400
trigger1 = p2bodydist x > 30 && (random=[800,999])
trigger1 = (Ctrl) && statetype !=A
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[841,900])
trigger3 = stateno = 1501 && Animelem = 3, >= 8 && movecontact && (random=[841,900])
trigger4 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[841,900])
trigger5 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[841,900])
trigger6 = stateno = 1513 && movecontact && (random=[841,900])
trigger7 = (stateno = [200,241]) && movecontact && (random=[841,900]); <300
trigger8 = (stateno = [400,440]) && movecontact && (random=[841,900]); <600
value = 2200
[State -1, 2300]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 400
trigger1 = p2bodydist x > 60 && (random=[600,799]) && p2bodydist y < -40
trigger1 = (Ctrl) && statetype !=A
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[900,950])
trigger3 = stateno = 1501 && Animelem = 3, >= 8 && movecontact && (random=[900,950])
trigger4 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[900,950])
trigger5 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[900,950])
trigger6 = stateno = 1513 && movecontact && (random=[900,950])
trigger7 = (stateno = [200,241]) && movecontact && (random=[900,950]); <300
trigger8 = (stateno = [400,440]) && movecontact && (random=[900,950]); <600
trigger9 = (stateno = 2201) && (Animelem = 5, >= 0) && (random = [551,700])
value = 2300
[State -1, 2150]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 150
trigger1 = statetype = A && (random=[500,599])&& POS Y < -40 && p2bodydist x < 140
trigger1 = (Ctrl)
trigger2 = (stateno = [600,640]) && movecontact && (random=[500,599]); <600
trigger3 = ((stateno = 1700 && time >=10)|| (stateno = 1710 && animelem =3,>=4)) && movecontact && (random=[500,599]); < 600
value = 2150
[State -1, 2151]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 150
trigger1 = statetype = A && (random=[500,599])&& POS Y < -40 && p2bodydist x < 140
trigger1 = (Ctrl)
trigger2 = (stateno = [600,640]) && movecontact && (random=[500,599]); <600
trigger3 = prevstateno = 2150 && (random=[500,599]); <600
value = 2151
[State -1, 2600]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 400
trigger1 = statetype = A && (random=[601,800])&& POS Y < -40 && p2bodydist x < 140
trigger1 = (Ctrl)
trigger2 = (stateno = [630,640]) && movecontact && (random=[601,800]); <600
trigger3 = (prevstateno = [2150,2151]) && (random=[601,800]); <600
trigger4 = ((stateno = 1700 && time >=10)|| (stateno = 1710 && animelem =3,>=4)) && movecontact && (random=[601,800]); < 600
value = 2600
[State -1, 2800]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 400
trigger1 = statetype = A && (random=[800,999])&& POS Y < -30 && p2bodydist x < 50
trigger1 = (Ctrl)
trigger2 = (stateno = [630,640]) && movecontact && (random=[800,999]); <600
trigger3 = ((stateno = 1700 && time >=10)|| (stateno = 1710 && animelem =3,>=4)) && movecontact && (random=[800,999]); < 600
value = 2800
[State -1, 2700]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 150
trigger1 = statetype = A && (random=[0,200]) && POS Y < -60 && p2bodydist x < 30
trigger1 = (Ctrl)
trigger2 = (stateno = [600,610]) && movecontact && (random=[0,200]); <600
value = 2700
[State -1, 2701]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 150
trigger1 = statetype = A && (random=[0,500])
trigger1 = (prevstateno = [2700,2701]) && (random=[0,500]); <600
value = 2701
[State -1, 3100]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 1000
trigger1 = statetype !=A && (random=[0,250]) && P2BODYDIST X < 70 && ctrl
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[0,250])
trigger3 = stateno = 1501 && Animelem = 3, >= 8 && movecontact && (random=[0,250])
trigger4 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[0,250])
trigger5 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[0,250])
trigger6 = stateno = 1513 && movecontact && (random=[0,250])
trigger7 = (stateno = [200,241]) && movecontact && (random=[0,250]); <300
trigger8 = (stateno = [400,440]) && movecontact && (random=[0,250]); <600
trigger9 = (stateno = 2201) && (Animelem = 5, >= 0) && (random = [601,700])
value = 3100
[State -1, 3150]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 1000
trigger1 = statetype =A && (random=[0,250]) && P2BODYDIST X < 50 && POS Y < -50 && ctrl 
;trigger2 = stateno = 1700 && time >= 10 && movecontact && (random=[0,250])
trigger2 = stateno = 1710 && animelem = 3,>=4 && movecontact && (random=[0,250])
trigger3 = (stateno = [600,640]) && movecontact && (random=[0,250]); <500
value = 3150
[State -1, 3200]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 2000
trigger1 = statetype =A && (random=[0,400])&& P2BODYDIST X >= 50 && POS Y < -50  && ctrl
trigger2 = stateno = 1700 && time >= 10 && movecontact && (random=[251,500])
trigger3 = stateno = 1710 && animelem = 3,>=4 && movecontact && (random=[251,500])
trigger4 = (stateno = [600,640]) && movecontact && (random=[251,500]); <500
value = 3200
[State -1, 3300]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 1000
trigger1 = statetype !=A && (random=[251,500]) && P2BODYDIST X < 40 && ctrl
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[251,500])
trigger4 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[251,500])
trigger5 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[251,500])
trigger7 = (stateno = [200,241]) && movecontact && (random=[251,500]); <300
trigger8 = (stateno = [400,440]) && movecontact && (random=[251,500]); <600
value = 3300
[State -1, 3400]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 2000
trigger1 = statetype !=A && (random=[501,750]) && P2BODYDIST X > 70 && ctrl
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[501,750])
trigger3 = stateno = 1501 && Animelem = 3, >= 8 && movecontact && (random=[501,750])
trigger4 = stateno = 1511 && Animelem = 2, >= 9 && Animelem = 2, >= 9 && movecontact && (random=[501,750])
trigger5 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[501,750])
trigger6 = stateno = 1513 && movecontact && (random=[501,750])
trigger7 = stateno = 1301 && movecontact && (random=[501,750])
trigger8 = (stateno = [200,241]) && movecontact && (random=[501,750]); <300
trigger9 = (stateno = [400,440]) && movecontact && (random=[501,750])
trigger10 = (stateno = 2201) && (Animelem = 5, >= 0) && (random = [801,900])
value = 3400
[State -1, 3500]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 1000
trigger1 = statetype =A && (random=[501,750]) && P2BODYDIST X < 50 && POS Y < -40  && ctrl
;trigger2 = stateno = 1700 && time >= 10 && movecontact && (random=[501,750])
;trigger3 = stateno = 1710 && animelem = 3,>=4 && movecontact && (random=[501,750])
trigger2 = (stateno = [600,640]) && movecontact && (random=[501,750]); <500
value = 3500
[State -1, 3550]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 1000
trigger1 = statetype !=A && (random=[0,250]) && P2BODYDIST X >= 40 && ctrl
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[0,250])
trigger3 = stateno = 1501 && Animelem = 3, >= 8 && Animelem = 3, >= 8 && movecontact && (random=[0,250])
trigger4 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[0,250])
trigger5 = stateno = 1512 && Animelem = 2, >= 10 && Animelem = 2, >= 10 && movecontact && (random=[0,250])
trigger6 = stateno = 1513 && movecontact && (random=[0,250])
trigger7 = stateno = 1301 && movecontact && (random=[0,250])
trigger8 = (stateno = [200,241]) && movecontact && (random=[0,250]); <200
trigger9 = (stateno = [400,440]) && movecontact && (random=[0,250]); <200
trigger10 = (stateno = 2201) && (Animelem = 5, >= 0) && (random = [701,800])
value = 3550
[State -1, 3250]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 2000
trigger1 = statetype !=A && (random=[751,999]) && P2BODYDIST X >= 80 && ctrl
trigger2 = (stateno = 2201) && (Animelem = 5, >= 0) && (random = [900,999])
value = 3250
[State -1, 3600]
type = ChangeState
triggerall = RoundState = 2 && AiLevel>0 && p2statetype != L && power >= 3000
trigger1 = statetype !=A && (random=[500,999]) && P2BODYDIST X < 100 && ctrl
trigger2 = stateno = 1500 && Animelem = 2, >= 10 && movecontact && (random=[600,999])
trigger4 = stateno = 1511 && Animelem = 2, >= 9 && movecontact && (random=[600,999])
trigger5 = stateno = 1512 && Animelem = 2, >= 10 && movecontact && (random=[600,999])
trigger6 = stateno = 1513 && movecontact && (random=[600,999])
trigger7 = (stateno = [200,241]) && movecontact && (random=[600,999])
trigger8 = (stateno = [400,440]) && movecontact && (random=[600,999])
value = 3600

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1
;===============================================================================
;---------------- Supers -------------------------------------------------------
;===============================================================================
;FinalKameHameHa
[State -1, FinalKameHameHa]
type = ChangeState
value = 4500
triggerall = p3name = "[Necromancer's] Goku" || p1name = "[Necromancer's] Goku"
triggerall = partner, alive && partner, name = "[Necromancer's] Goku"
trigger1 = command = "FinalKameHameHa" && Power >=2000
trigger1 = (statetype != A && ctrl)
;-------------------------------------------------------------------------------
;FinalKameHameHa
[State -1, FinalKameHameHa]
type = ChangeState
value = 4500
triggerall = p3name = "[Necromancer's] Goku" || p1name = "[Necromancer's] Goku"
triggerall = partner, alive && partner, name = "[Necromancer's] Goku"
trigger1 = partner, stateno = 4500 && stateno !=4500
trigger1 = statetype != A && ctrl
;-------------------------------------------------------------------------------
;AirDestelloFinal
[State -1, AirDestelloFinal]
type = ChangeState
value = 3200
triggerall = command = "DestelloFinal" && Power >=2000
trigger1 = (statetype = A && ctrl)
trigger2 = stateno = 1700 && time >= 10 && movecontact
trigger3 = stateno = 1710 && animelem = 3,>=4 && movecontact
trigger4 = (stateno = [600,640]) && movecontact
;-------------------------------------------------------------------------------
;DestelloFinal
[State -1, DestelloFinal]
type = ChangeState
value = 3250
triggerall = command = "DestelloFinal" && Power >=2000
trigger1 = p2stateno=3250 && stateno!=3250
;-----------------------------------
;-------------------------------------------------------------------------------
;DestelloFinal
[State -1, DestelloFinal]
type = ChangeState
value = 3250
triggerall = command = "DestelloFinal" && Power >=2000
trigger1 = (statetype != A && ctrl)
;-------------------------------------------------------------------------------
;BigBang Burst
[State -1, BigBang Burst]
type = ChangeState
value = 3500
triggerall = command = "Big-Bang-Attack" && Power >=1000
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 || stateno = 610) && movecontact
trigger3 = (stateno = 630 || stateno = 640) && movecontact
;trigger4 = (stateno = 1700) && movecontact
;-------------------------------------------------------------------------------
;Big-Bang-Attack
[State -1, Big-Bang-Attack]
type = ChangeState
value = 3550
triggerall = command = "Big-Bang-Attack" && Power >=1000
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
trigger5 = stateno = 1513 && movecontact
;-------------------------------------------------------------------------------
;RenzokuKikoHa
[State -1, RenzokuKikoHa]
type = ChangeState
value = 3400
triggerall = command = "RenzokuKikoHa" && Power >=2000
trigger1 =(statetype = S && ctrl)
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
TRIGGER5 = stateno = 1301 && movecontact
trigger6 = stateno = 1513 && movecontact
;-------------------------------------------------------------------------------
;Air-Fukushahado
[State -1, Air-Fukushahado]
type = ChangeState
value = 3150
triggerall = command = "Fukushahado"
triggerall = Power >=1000
triggerall = prevstateno != 3150
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610) && movecontact
trigger3 = (stateno = 630 || stateno = 640) && movecontact
trigger4 = (stateno = 1710) && movecontact
;-------------------------------------------------------------------------------
;Fukushahado
[State -1, Fukushahado]
type = ChangeState
value = 3100
triggerall = command = "Fukushahado"
triggerall = Power >=1000
triggerall = prevstateno != 3100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
;-------------------------------------------------------------------------------
;Amazing-Fire
[State -1, Amazing-Fire]
type = ChangeState
value = 3300
triggerall = command = "Amazing-Fire"
triggerall = Power >=1000
triggerall = prevstateno != 3300
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430) && movecontact

;-------------------------------------------------------------------------------
;Berserker Fury
[State -1, Berserker Fury]
type = ChangeState
value = ifelse(var(56)=1,3700,3600)
triggerall = command = "Berserker Fury"
triggerall = Power >=3000
triggerall = prevstateno != 3600
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420 || stateno = 430 || stateno = 440) && movecontact
;
;===============================================================================
;---------------- Specials Ki --------------------------------------------------
;===============================================================================
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;Crazy-Ball-Execution
[State -1, Crazy-Ball-Execution]
type = ChangeState
value = 2102
triggerall = command = "Crazy-Ball-Ex"
triggerall = numhelper(2110) >=1 && power >= 100
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Atomic-Blast
[State -1, Atomic-Blast]
type = ChangeState
value = 2300;ifelse(var(56)=1,2300,2400)
triggerall = power >= 400
triggerall = numhelper(2320)=0
triggerall = command = "Atomic-Blast"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
trigger5 = stateno = 1513 && movecontact
;-------------------------------------------------------------------------------
;Garlick-Cannon
[State -1, Garlick-Cannon]
type = ChangeState
value = 2800
triggerall = command = "Garlick-Cannon"
triggerall = power >= 400
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 630 ||stateno = 640) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 1700) && movecontact
trigger5 = (stateno = 1710) && movecontact
;-------------------------------------------------------------------------------
;Big-Ball
[State -1, Big-Ball]
type = ChangeState
value = 2600
triggerall = command = "Big-Ball"
triggerall = power >= 400
triggerall = numhelper(2610)=0 && numhelper(8023)=0
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 630 ||stateno = 640) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 1710) && movecontact
;-------------------------------------------------------------------------------
;Crazy-Ball
[State -1, Crazy-Ball]
type = ChangeState
value = 2100
triggerall = command = "Crazy-Ball"
triggerall = power >= 100
triggerall = numhelper(2110) <ifelse(var(56)=1,8,6)
triggerall = prevstateno != 2100
trigger1 = statetype !=A
trigger1 = ctrl
;-------------------------------------------------------------------------------
[State -1, Rodillazo-Ex]
type = ChangeState
value = 1720
triggerall = command = "Knee-Smash-Ex" && power >=500
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
trigger5 = stateno = 1513 & movecontact
;-------------------------------------------------------------------------------
;rodillazo1
[State -1, Rodillazo-Debil]
type = ChangeState
value = 1700
triggerall = command = "Knee-Smash-Debil"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
trigger5 = stateno = 1513 & movecontact
;-------------------------------------------------------------------------------
[State -1, Rodillazo-Medio]
type = ChangeState
value = 1710
triggerall = command = "Knee-Smash-Medio"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
trigger5 = stateno = 1513 & movecontact
;-------------------------------------------------------------------------------
;ShoryuKen-Ex
[State -1, ShoryuKen-Ex]
type = ChangeState
value = 1620
triggerall = command = "ShoryuKen-Ex" && power >=500
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact

;-------------------------------------------------------------------------------
;ShoryuKen-Débil
[State -1, ShoryuKen-Débil]
type = ChangeState
value = 1600
triggerall = command = "ShoryuKen-Débil"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact

;-------------------------------------------------------------------------------
;ShoryuKen-Medio
[State -1, ShoryuKen-Medio]
type = ChangeState
value = 1610
triggerall = command = "ShoryuKen-Medio"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact

;-------------------------------------------------------------------------------
;PhotonBomber
[State -1, PhotonBomber]
type = ChangeState
value = 2701
triggerall = command = "PhotonBomber"
triggerall = power >= 150
trigger1 = statetype = A && ctrl
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 630 ||stateno = 640) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;---------------------------------------------------------------------------
;===============================================================================
;---------------- Specials -----------------------------------------------------
;===============================================================================

;Burn-Knuckle
[State -1,Burn-Knuckle]
type = ChangeState
value = 1300
triggerall = command = "Burn-Knuckle" && power >=500
trigger1= (StateType = S) && (Ctrl) 
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211 || stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
;-------------------------------------------------------------------------------
;Codazo
[State -1, Codazo]
type = ChangeState
value = 1500
triggerall = command = "codazo"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact

trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
;-------------------------------------------------------------------------------
;Codazo2
[State -1, Codazo 2]
type = ChangeState
value = 1510
triggerall = command = "codazo2"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact

;-------------------------------------------------------------------------------
;Shyougeki Ha
[State -1, Shyougeki Ha]
type = ChangeState
value = 2200
triggerall = power >= 400
triggerall = command = "Shyougeki Ha"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = stateno = 1513 && movecontact
;===============================================================================
;---------------- Comands ------------------------------------------------------
;===============================================================================
;Ki Charge
[State -1,Ki Charge]
type = ChangeState
value = 730
triggerall = ((power < 3000) || (power > 3000)) && var(56)!=1
trigger1 = command = "charge" && time > 5
trigger1 = command = "charge 1" && time > 5
trigger1 = (StateType = S) && (Ctrl)
;-------------------------------------------------------------------------------
;Launcher
[State -1, Launcher]
type = ChangeState
value = 1200
triggerall = command = "Launcher"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440) && movecontact
;-------------------------------------------------------------------------------
;Raigeki-Shuu-Ex
[State -1,Raigeki-Shuu-Ex]
type = ChangeState
value = 1450
triggerall = command = "Raigeki-Shuu-Ex" && power >=500
trigger1= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 630 ||stateno = 640) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 1710) && movecontact; && animelem = 3,>= 6
;-------------------------------------------------------------------------------
;Raigeki-Shuu-Debil
[State -1,Raigeki-Shuu-Debil]
type = ChangeState
value = 1400
triggerall = command = "Raigeki-Shuu-Debil"
trigger1= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 630 ||stateno = 640) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;-------------------------------------------------------------------------------
;Raigeki-Shuu-Medio
[State -1,Raigeki-Shuu-Medio]
type = ChangeState
value = 1425
triggerall = command = "Raigeki-Shuu-Medio"
trigger1= (StateType = A) && (Ctrl)
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 630 ||stateno = 640) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = (stateno = 1710) && movecontact && animelem = 3,>=4
;-------------------------------------------------------------------------------
;Super Jump
[State -1,Super Jump]
type = ChangeState
value = 60
triggerall = command = "Super Jump"
trigger1 = (statetype = S) && (ctrl)
;-------------------------------------------------------------------------------
;Run-Forward
[State -1, Run-Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 700
trigger1 = stateno != [100,101]
;-------------------------------------------------------------------------------
;Run-Back
[State -1, Run-Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Air-Dash Forward
[State -1,Air-Dash Forward]
type = ChangeState
value = 107
trigger1 = (command = "FF")
trigger1 = (StateType = A) && (Ctrl)
;-------------------------------------------------------------------------------
;Air-Dash Back
[State -1,Air-Dash Back]
type = ChangeState
value = 108
trigger1 = (command = "BB")
trigger1 = (StateType = A) && (Ctrl)
;-------------------------------------------------------------------------------
[State -1, SSJ2-Off]
type = ChangeState
triggerall = var(56)=1
trigger1 = command = "USSJ"
trigger1 = statetype = S && ctrl
value = 762
ctrl = 0
;-------------------------------------------------------------------------------
[State -1, SSJ2-On]
type = ChangeState
triggerall = var(56)=0 && power >= 1000
trigger1 = command = "USSJ"
trigger1 = statetype = S && ctrl
value = 760
ctrl = 0
;-------------------------------------------------------------------------------
[State -1, Zanzoken]
type = ChangeState
triggerall = command = "z" && power >=250 && var(56)!=1
trigger1 = ctrl &&  stateno !=[710,712]
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 || stateno = 450) && movecontact
trigger5 = (stateno = 600 || stateno = 610|| stateno = 630 || stateno = 640) && movecontact
trigger6 = stateno = 700 && time > 4
value = 710
ctrl = 0
;-------------------------------------------------------------------------------
[State -1, Counter]
type = ChangeState
triggerall = command = "Zero-Counter" && power >=500
trigger1 = stateno = [150,155]
TRIGGER2 = stateno = 701 || stateno = 700
value = IFELSE(statetype = A,744,740)
ctrl = 0
;-------------------------------------------------------------------------------
[State -1, Stand-Parry]
type = HitOverride
triggerall = statetype = S
triggerall = command = "forward" && command != "down" && command != "up" && command != "back" 
trigger1 = ctrl || stateno = 700
attr = SCA,AP,AA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 700
time = 8
forceair = 0
;-------------------------------------------------------------------------------
[State -1, Air-Parry]
type = HitOverride
triggerall = statetype = A
triggerall = command = "forward" && command != "down" && command != "up" && command != "back"
trigger1 = ctrl || stateno = 701
attr = SCA,AP,AA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 701
time = 8
forceair = 0
;===============================================================================
;---------------- Básicos ------------------------------------------------------
;===============================================================================
;-------------------------------------------------------------------------------
;820-Agarre-Simple
[State -1, 820-Agarre-Simple]
type = ChangeState
value = 820
triggerall = command = "x" && command = "y"
triggerall = p2bodydist x < 3
triggerall = command != "holddown"
triggerall = p2STATETYPE !=L
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;200-Codo-Stand
[State -1, 200-Codo-Stand]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = p2bodydist x < 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;201-Puño-Stand
[State -1, 201-Puño-Stand]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = p2bodydist x >= 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
;-------------------------------------------------------------------------------
;210-Gancho-Stand
[State -1, 210-Gancho-Stand]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = p2bodydist x < 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = ((stateno = [400,450])) && movecontact
;-------------------------------------------------------------------------------
;211-Puño-Stand
[State -1, 211-Puño-Stand]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = p2bodydist x >= 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 231 ) && movecontact
trigger4 = (stateno = 400 || stateno = 410 ) && movecontact

;-------------------------------------------------------------------------------
;230-Rodilla-Stand
[State -1, 230-Rodilla-Stand]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = p2bodydist x < 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-------------------------------------------------------------------------------
;231-Patada-Stand
[State -1, 231-Patada-Stand]
type = ChangeState
value = 231
triggerall = command = "a"
triggerall = p2bodydist x >= 3
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 400 || stateno = 430) && movecontact
;-------------------------------------------------------------------------------
;240-Patadita-Stand
[State -1, 240-Patadita-Stand]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = p2bodydist x < 5
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 231) && movecontact
trigger4 = (stateno = [400,430]) && movecontact
;-------------------------------------------------------------------------------
;241-Patadon-Stand
[State -1, 241-Patadon-Stand]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = p2bodydist x >= 5
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 201 || stateno = 211 || stateno = 210) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240) && movecontact
trigger4 = (stateno = [400,430]) && movecontact
;Fire Balls
[State -1, Fire Balls]
type = ChangeState
value = 2000
triggerall = power >= 150
triggerall = command = "Fire Balls"
trigger1 = statetype =S
trigger1 = ctrl = 1
trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
trigger4 = (stateno = [400,440]) && movecontact

;-------------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;-------------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 430) && movecontact
trigger3 = ((stateno = 200) || (stateno = 230))&& movecontact
;-------------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 230 || stateno = 231) && movecontact
;-------------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger3 = ((stateno = [200,241])) && movecontact
;-------------------------------------------------------------------------------
;Fire Balls
;[State -1, Fire Balls]
;type = ChangeState
;value = 2050
;triggerall = power >= 100
;triggerall = command = "Fire Balls"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl = 1
;trigger2 = (stateno = 200 || stateno = 201 || stateno = 210 || stateno = 211|| stateno = 220) && movecontact
;trigger3 = (stateno = 230 || stateno = 231 || stateno = 240 || stateno = 241 || stateno = 250) && movecontact
;trigger4 = (stateno = 400 || stateno = 410 || stateno = 420|| stateno = 430 || stateno = 440 ) && movecontact
;trigger5 = stateno = 1200 && movehit
;-------------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger3 = (stateno = [107,108]) && time >=10
;-------------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;-------------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger3 = (stateno = [107,108]) && time >=10
;-------------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1350
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
;-------------------------------------------------------------------------------
;Air-Fire Balls
[State -1, Air-Fire Balls]
type = ChangeState
value = 2150
triggerall = power >= 150
triggerall = command = "Fire Balls"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600 ||stateno = 610 ||stateno = 630 ||stateno = 640) && movecontact
trigger3 = (stateno = [107,108]) && time >=10
trigger4 = stateno = 1700 && time >= 10 && time >= 10 && movecontact && time > 16
trigger5 = stateno = 1710 && animelem = 3,>=4 && movecontact && time > 18
