; The CMD file.

;-| Button Remapping |-----------------------------------------------------
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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| IA |------------------------------------------------------

[Command]
name = "IA_1"
command = a,a,a,a,a,a,a,a,a
time = 1

[Command]
name = "IA_2"
command = b,b,b,b,b,b,b,b,b
time = 1

[Command]
name = "IA_3"
command = a,b,b,b,b,b,b,b,b
time = 1

[Command]
name = "IA_4"
command = a,b,c,b,b,b,b,b,b
time = 1

[Command]
name = "IA_5"
command = a,b,c,x,b,b,b,b,b
time = 1

[Command]
name = "IA_6"
command = a,b,c,x,y,b,b,b,b
time = 1

[Command]
name = "IA_7"
command = a,b,c,x,y,z,b,b,b
time = 1

[Command]
name = "IA_8"
command = a,b,c,x,y,z,a,b,b
time = 1

[Command]
name = "IA_9"
command = a,b,c,x,y,z,a,b,c
time = 1

[Command]
name = "IA_10"
command = x,b,c,x,y,z,a,b,c
time = 1

;-| Special Motions |-----------------------------------------------------------

;-| Basic Attack Motions |------------------------------------------------------

;-| Double Tap |----------------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "C1"
command = a+b
time = 30

[Command]
name = "Ball1"
command = D,DF,F,D,DF,F,c
time = 30

[Command]
name = "BA"
command = D,DB,B,D,DB,B,c
time = 30

[Command]
name = "BC"
command = D,DF,F,D,DF,F,x+y
time = 30

[Command]
name = "FB"
command = D,D,DB,B,c
time = 30

[Command]
name = "CTF"
command = D,DB,B,D,DF,F,c
time = 30

[Command]
name = "DFB"
command = D,DF,F,b
time = 15

[Command]
name = "DFX"
command = D,DF,F,x
time = 15

[Command]
name = "DFY"
command = D,DF,F,y
time = 15

[Command]
name = "DBB"
command = D,DB,B,b
time = 15

[Command]
name = "DBA"
command = D,DB,B,a
time = 15

[Command]
name = "DFA"
command = D,DF,F,a
time = 15

[Command]
name = "DBX"
command = D,DB,B,x
time = 15

[Command]
name = "DBY"
command = D,DB,B,y
time = 15

[Command]
name = "UB"
command = U,U,b
time = 15

[Command]
name = "UY"
command = U,U,y
time = 15


[Command]
name = "DFC"
command = D,DF,F,c
time = 15

[Command]
name = "DBC"
command = D,DB,B,c
time = 15

[Command]
name = "Beam"
command = D,DF,F,c
time = 15

[Command]
name = "new ball"
command = a+y
time = 15

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;===================|
;--[ Hold Button ]--|
;===================|

[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /a
time = 1
[Command]
name = "hold_b"
command = /b
time = 1
[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "hold_start"
command = /s
time = 1

;==================|
;--[ Super Jump ]--|
;==================|

[command]
name = "superjump"
command = ~$D,U
time = 15
[command]
name = "superjumpF"
command = ~$D,UF
time = 15
[command]
name = "superjumpB"
command = ~$D,UB
time = 15

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right

[State -1, AI ON]  ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1 ; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0  ; it is on and
Trigger1=RoundState!=2  ; the round is not started yet or is already over
Trigger2=!IsHelper  ; OR if we are a player, but
Trigger2=AILevel=0  ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1


;---------------------------------------------------------------------------
;------------------------Special Moves--------------------------------------
;---------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Super Jump Extraido de Highlight Vegeta by Duende Macabro
;-------------------------------------------------------------------------------
[State -1, Superjump]
type = changestate
triggerall = command = "superjump" && statetype!= A
trigger1 = ctrl = 1
value = 110

[State -1, SuperjumpF]
type=changestate
triggerall = command = "superjumpF" && statetype != A
trigger1 = ctrl = 1
value = 112

[State -1,SuperjumpB]
type = changestate
triggerall = command = "superjumpB" && statetype != A
trigger1 = ctrl = 1
value = 114

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;AI
Trigger2 = Var(59) = 1
Trigger2 = P2Movetype = A
Trigger2 = P2dist X < 150
Trigger2 = Ctrl
Trigger2 = Random%5
Trigger2 = Random < 25

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
Triggerall = Statetype = S
trigger1 = command = "FF"
trigger1 = ctrl
;AI
Trigger2 = Var(59) = 1
Trigger2 = P2Dist X > 110
Trigger2 = Ctrl
Trigger2 = Stateno != 100
Trigger2 = Random%5
Trigger2 = Random < 25

;Dash BCK
[State -1, Run Air Back]
type = ChangeState
value = 1005
Triggerall = Ctrl
trigger1 = command = "BB"
trigger1 = statetype = A
;AI
Trigger2 = Var(59) = 1
Trigger2 = P2Movetype = A
Trigger2 = P2dist X < 150
Trigger2 = Ctrl
Trigger2 = Random%5
Trigger2 = Random < 25
Trigger2 = Statetype = A


;Dash FWD
[State -1, Run Air Fwd]
type = ChangeState
value = 1000
Triggerall = Ctrl
trigger1 = command = "FF"
trigger1 = statetype = A
;AI
Trigger2 = Var(59) = 1
Trigger2 = P2dist X > 110
Trigger2 = Ctrl
Trigger2 = Random%5
Trigger2 = Random < 25
Trigger2 = Statetype = A

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "y" && command = "x"
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "y" && command = "x"
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;AI
Trigger3 = Var(59) = 1
Trigger3 = P2BodyDist X < 10
Trigger3 = Ctrl
Trigger3 = Movetype != H
Trigger3 = P2Movetype != H
Trigger3 = (p2statetype = S) || (p2statetype = C)
Trigger3 = Random%5
Trigger3 = Random < 10
;--------------------------------------------------------------------------
;ESPECIALS
;ChangeTheFuture (AI Includded)
[State -1, ChangeTheFuture (AI Includded)]
type = ChangeState
value = 2150
trigger1 = command = "CTF"
triggerall = Power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger1 = Var(59) = 0
;AI
trigger2 = statetype = S
trigger2 = ctrl = 1
Trigger2 = Var(59) = 1
Trigger2 = P2Bodydist X > 200
Trigger2 = Random < 10
Trigger2 = Pos Y >= 0

;BurningAttack
[State -1, BurningAttack]
type = ChangeState
value = 2120
Triggerall = Var(59) = 0
triggerall = command = "BA"
triggerall = Numhelper(2121) = 0
triggerall = Power >= 2000
Triggerall = Pos Y >= 0
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger2 = Stateno = [200,250]
Trigger3 = Stateno = [400,450]
Trigger4 = Stateno = [300,350]

;BurningAttack AI
[State -1, BurningAttack AI]
type = ChangeState
value = 2120
Triggerall = Var(59) = 1
triggerall = Numhelper(2121) = 0
Triggerall = Pos Y >= 0
triggerall = Power >= 2000
Triggerall = P2Bodydist Y > -60
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger1 = Random < 5
Trigger1 = Random%5
Trigger1 = P2Bodydist X > 200
Trigger2 = Stateno = [200,250]
Trigger2 = Movehit
Trigger2 = Random < 10
Trigger2 = P2Bodydist X < 50
Trigger3 = Stateno = [400,450]
Trigger3 = Movehit
Trigger3 = Random < 10
Trigger3 = P2Bodydist X < 50
Trigger4 = Stateno = [300,350]
Trigger4 = Movehit
Trigger4 = Random < 10
Trigger4 = P2Bodydist X < 50

;BusterCanon
[State -1, BusterCanon]
type = ChangeState
value = 2130
Triggerall = Var(59) = 0
triggerall = command = "BC"
triggerall = Numhelper(2132) = 0
Triggerall = Pos Y >= 0
triggerall = Power >= 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger2 = Stateno = [200,250] 
Trigger3 = Stateno = [400,450] 
Trigger4 = Stateno = [300,350] 

;BusterCanon AI
[State -1, BusterCanon AI]
type = ChangeState
value = 2130
Triggerall = Var(59) = 1
triggerall = Numhelper(2132) = 0
Triggerall = Pos Y >= 0
triggerall = Power >= 1500
Trigger1 = P2Bodydist Y > -60
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger1 = P2Bodydist X > 100
Trigger1 = Random < 10
Trigger2 = Stateno = [200,250]
Trigger2 = Movehit
Trigger2 = Random < 10
Trigger3 = Stateno = [400,450]
Trigger3 = Random < 10
Trigger3 = Movehit
Trigger4 = Stateno = [300,350]
Trigger4 = Random < 10
Trigger4 = Movehit

;FinishBuster
[State -1, FinishBuster]
type = ChangeState
value = 2140
Triggerall = Var(59) = 0
triggerall = command = "FB"
triggerall = Numhelper(2141) = 0
Triggerall = Pos Y >= 0
trigger1 = Power >= 1750
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger2 = Stateno = [200,250]
Trigger2 = Movehit
Trigger3 = Stateno = [400,450]
Trigger3 = Movehit
Trigger4 = Stateno = [300,350]
Trigger4 = Movehit

;FinishBuster AI
[State -1, FinishBuster AI]
type = ChangeState
value = 2140
triggerall = Var(59) = 1
triggerall = Numhelper(2141) = 0
Triggerall = Pos Y >= 0
triggerall = Power >= 1750
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger1 = P2Bodydist Y > 150
Trigger1 = Random < 10
Trigger1 = P2Bodydist Y > -35
Trigger2 = Stateno = [200,250]
Trigger2 = Movehit
Trigger2 = Random < 10
Trigger3 = Stateno = [400,450]
Trigger3 = Random < 10
Trigger3 = Movehit
Trigger4 = Stateno = [300,350]
Trigger4 = Random < 10
Trigger4 = Movehit

;Ball Attack 1
[State -1, Ball Attack 1]
type = ChangeState
value = 2100
Triggerall = Var(59) = 0
triggerall = command = "Ball1"
triggerall = Numhelper(2110) = 0
trigger1 = Power >= 1000
trigger1 = statetype = S & ctrl = 1

;Ball Attack 1 AI
[State -1, Ball Attack 1 AI]
type = ChangeState
value = 2100
Triggerall = Pos Y >= 0
Triggerall = Var(59) = 1
triggerall = Numhelper(2110) = 0
triggerall = Power >= 1000
trigger1 = statetype = S & ctrl = 1
Trigger1 = p2Bodydist X > 50 && p2Bodydist X < 100
Trigger1 = Random < 10
Trigger2 = Stateno = [200,250]
Trigger2 = Movehit
Trigger2 = Random < 10
Trigger3 = Stateno = [400,450]
Trigger3 = Random < 10
Trigger3 = Movehit
Trigger4 = Stateno = [300,350]
Trigger4 = Random < 10
Trigger4 = Movehit
;-------------------------------------------------------------------------------
;Beam
[State -1, Beam]
type = ChangeState
value = 350
Triggerall = Var(59) = 0
triggerall = command = "Beam"
trigger1 = Power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1

;Beam AI
[State -1, Beam AI]
type = ChangeState
value = 350
Triggerall = Pos Y >= 0
triggerall = Var(59) = 1
trigger1 = Power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger1 = P2Bodydist X > 100
Trigger1 = Random < 10
Trigger2 = Stateno = [200,250]
Trigger2 = Movehit
Trigger2 = Random < 10
Trigger3 = Stateno = [400,450]
Trigger3 = Random < 10
Trigger3 = Movehit
Trigger4 = Stateno = [300,350]
Trigger4 = Random < 10
Trigger4 = Movehit

;Charged Fireball
[State -1, CFireball]
type = ChangeState
value = 355
Triggerall = Var(59) = 0
triggerall = var(21) < 20
triggerall = command = "DBC"
triggerall = command != "holddown"
triggerall = power >= 250
triggerall = stateno != 1006
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Time > 10 && stateno = 251

;DBA
[State -1, DBA Attack]
type = ChangeState
value = 330
triggerall = command = "DBA"
triggerall = command != "holddown"
Triggerall = Stateno != 330
Triggerall = Var(59) = 0
Trigger1 = Statetype = S && Stateno != 330 && Ctrl
Trigger2 = Stateno = [200,250]
Trigger3 = Stateno = [600,650]
Trigger4 = Stateno = 315 && Movehit
Trigger5 = Statetype = A && Stateno != 330 && Ctrl
Trigger6 = Stateno = [300,350]
Trigger6 = Movehit

;DBA (AI)
[State -1, DBA Attack (AI)]
type = ChangeState
value = 330
Triggerall = Abs(P2BodyDist X < 50)
Trigger1 = Var(59) = 1
Trigger1 = Statetype = S && Stateno != 330 && Ctrl
Trigger1 = Random < 10
Trigger2 = Var(59) = 1
Trigger2 = Stateno = [200,250]
Trigger2 = Random < 20
Trigger2 = Random%5
Trigger2 = Movehit

;DFA
[State -1, DFA Attack]
type = ChangeState
value = 335
Triggerall = Var(59) = 0
triggerall = command = "DFA"
triggerall = command != "holddown"
Trigger1 = Statetype = S && Stateno != 335 && Ctrl
Trigger2 = Stateno = [200,250]
Trigger3 = Stateno = [600,650]
Trigger4 = Stateno = 315 && Movehit
Trigger5 = Statetype = A && Stateno != 335 && Ctrl

;DFA (AI)
[State -1, DFA Attack (AI)]
type = ChangeState
value = 335
Triggerall = Var(59) = 1
Triggerall = abs(P2bodydist X < 50)
Trigger1 = Statetype = S && Stateno != 335 && Ctrl
Trigger1 = Random < 10
Trigger2 = Stateno = [200,250]
Trigger2 = Movehit
Trigger2 = Random < 20
Trigger3 = Stateno = [600,650]
Trigger3 = Random < 20

;DFA2 (AI)
[State -1, DFA Attack2 (AI)]
type = ChangeState
value = 336
Triggerall = Var(59) = 1
Triggerall = abs(P2bodydist X < 50)
Trigger1 = Stateno = 335 && Movehit
Trigger1 = Random < 100

;DFA3 (AI)
[State -1, DFA Attack3 (AI)]
type = ChangeState
value = 337
Triggerall = Var(59) = 1
Triggerall = abs(P2bodydist X < 50)
Trigger1 = Stateno = 336 && Movehit
Trigger1 = Random < 100

;DFB
[State -1, DFB Attack]
type = ChangeState
value = 340
triggerall = command = "DFB"
Triggerall = Var(59) = 0
triggerall = command != "holddown"
Triggerall = Statetype != A
Trigger1 = Statetype = S && Stateno != 340 && Ctrl
Trigger2 = Stateno = [200,250]
Trigger3 = Stateno = [400,450]
Trigger4 = Stateno = 300 && Movehit
Trigger5 = Stateno = [335,337]

;DFB (AI)
[State -1, DFB Attack (AI)]
type = ChangeState
value = 340
triggerall = Var(59) = 1
Triggerall = Statetype != A
Triggerall = Pos Y >= 0
Triggerall = p2Bodydist X < 50
Trigger1 = Statetype = S && Stateno != 340 && Ctrl
Trigger1 = Random < 5
Trigger2 = Stateno = [200,250]
Trigger2 = Random < 5
Trigger2 = Movehit
Trigger3 = Stateno = [400,450]
Trigger3 = Movehit
Trigger3 = Random < 5
Trigger4 = Stateno = 300 && Movehit
Trigger4 = Random < 5
Trigger5 = Stateno = [335,337]
Trigger5 = Random < 5
Trigger5 = Movehit
Trigger6 = HitCount > 4 && Random < 500

;DBB
[State -1, DBB Attack]
type = ChangeState
value = 345
Triggerall = Var(59) = 0
triggerall = command = "DBB"
triggerall = command != "holddown"
Triggerall = Statetype != A
Triggerall = Pos Y >= 0
Triggerall = Stateno != 345 
Trigger1 = Ctrl
Trigger2 = Stateno = [200,250]
Trigger3 = Stateno = [400,450]
Trigger4 = Stateno = [300,350]

;DBB (AI)
[State -1, DBB Attack (AI)]
type = ChangeState
value = 345
triggerall = Var(59) = 1
Triggerall = Statetype != A
Triggerall = Pos Y >= 0
Triggerall = Stateno != 345
Trigger1 = Ctrl
Trigger1 = Random < 10
Trigger2 = Stateno = [200,250]
Trigger2 = Movehit && Random < 10
Trigger3 = Stateno = [400,450]
Trigger3 = Movehit && Random < 10
Trigger4 = Stateno = [300,350]
Trigger4 = Movehit && Random < 10
Trigger5 = NumTarget > 0
Trigger5 = Target,Pos Y < -10
Trigger5 = Random < 10
Trigger5 = Ctrl

;DFX
[State -1, DFX Attack]
type = ChangeState
value = 300
triggerall = command = "DFX"
Triggerall = Var(59) = 0
Triggerall = Statetype != A
Trigger1 = Statetype = S && Stateno != 300 && Ctrl
Trigger2 = Stateno = [200,250]
Trigger3 = Stateno = [400,450]
Trigger4 = Stateno = [335,337]

;DFX (AI)
[State -1, DFX Attack (AI)]
type = ChangeState
value = 300
triggerall = Var(59) = 1
Triggerall = P2Bodydist X < 30
Trigger1 = Statetype = S && Stateno != 300 && Ctrl
Trigger1 = Random < 10
Trigger2 = Stateno = [200,250]
Trigger2 = MoveHit && Random < 20
Trigger3 = Stateno = [400,450]
Trigger3 = MoveHit && Random < 20
Trigger4 = Stateno = [335,337]
Trigger4 = MoveHit && Random < 20

;DBX
[State -1, DBX Attack]
type = ChangeState
value = 305
triggerall = command = "DBX"
Triggerall = Statetype != A
Triggerall = Var(59) = 0
Trigger1 = Statetype = S && Stateno != 305 && Ctrl
Trigger2 = Stateno = [200,250]
Trigger3 = Stateno = [400,450]
Trigger4 = Stateno = 300 && Movehit

;DBX (AI)
[State -1, DBX Attack (AI)]
type = ChangeState
value = 305
Triggerall = Statetype = S
triggerall = Var(59) = 1
Trigger1 = Statetype = S && Stateno != 305 && Ctrl
Trigger1 = Random < 10
Trigger1 = P2Dist X < 60
Trigger2 = Stateno = [200,250]
Trigger2 = Movehit && Random < 20
Trigger3 = Stateno = [400,450]
Trigger3 = Movehit && Random < 20
Trigger4 = Stateno = 300 && Movehit
Trigger4 = Random < 120

;DFY
[State -1, DFY Attack]
type = ChangeState
value = 310
triggerall = command = "DFY"
Triggerall = Statetype != A
Triggerall = Var(59) = 0
Triggerall = Pos Y >= 0
Trigger1 = Statetype = S && Stateno != 310 && Ctrl
Trigger2 = Stateno = [200,250]
Trigger3 = Stateno = [400,450]
Trigger4 = Stateno = 300 && Movehit
Trigger5 = Stateno = [335,337]

;DFY (AI)
[State -1, DFY Attack(AI)]
type = ChangeState
value = 310
triggerall = Var(59) = 1
Triggerall = P2Bodydist X < 30
Triggerall = Statetype != A
Triggerall = Pos Y >= 0
Trigger1 = Statetype = S && Stateno != 310 && Ctrl
Trigger1 = Random < 20
Trigger2 = Stateno = [200,250]
Trigger2 = Random < 20 & Movehit
Trigger3 = Stateno = [400,450]
Trigger3 = Random < 20 && Movehit
Trigger4 = Stateno = 300 && Movehit && Random < 20
Trigger5 = Stateno = [335,337]
trigger5 = Random < 20 && Movehit

;DBY
[State -1, DBY Attack]
type = ChangeState
value = 315
triggerall = command = "DBY"
triggerall = command != "holddown"
Triggerall = Var(59) = 0
Triggerall = Statetype != A
Trigger1 = Statetype = S && Stateno != 315 && Ctrl
Trigger2 = Stateno = [200,250]
Trigger3 = Stateno = [400,450]
Trigger4 = Stateno = 300 && Movehit
Trigger5 = Stateno = 310 && Movehit
Trigger6 = Stateno = [335,337]

;DBY (AI)
[State -1, DBY Attack (AI)]
type = ChangeState
value = 315
triggerall = Var(59) = 1
Triggerall = P2Bodydist X < 30
Triggerall = Statetype != A
Triggerall = Pos Y >= 0
Trigger1 = Statetype = S && Stateno != 315 && Ctrl
Trigger1 = Random < 10
Trigger2 = Stateno = [200,250]
Trigger2 = Random < 10 && Movehit
Trigger3 = Stateno = [400,450]
Trigger3 = Random < 100 && Movehit
Trigger4 = Stateno = 300 && Movehit
Trigger4 = Random < 10 
Trigger5 = Stateno = 310 && Movehit
Trigger5 = Random < 100
Trigger6 = Stateno = [335,337]
Trigger6 = Random < 10 & Movehit
;---------------------------------------------------------------------------

;new ball
[State -1, new ball]
type = ChangeState
value = 2200
triggerall = command = "new ball"
trigger1 = (statetype = s) && ctrl
Trigger1 = Power >1000

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;AI
Trigger2 = Var(59) = 1
Trigger2 = Ctrl
Trigger2 = Statetype = S
Trigger2 = Random < 100
Trigger2 = P2BodyDist X < 30

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
Trigger2 = Stateno = 300 && Movehit
;AI
Trigger3 = Var(59) = 1
Trigger3 = Ctrl
Trigger3 = Statetype = S
Trigger3 = Random < 50
Trigger3 = P2BodyDist X < 30
Trigger4 = Var(59) = 1
Trigger4 = Stateno = 200 && Movehit
Trigger4 = Statetype = S
Trigger4 = Random < 150

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
trigger1 = command = "a"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;AI
Trigger2 = Var(59) = 1
Trigger2 = Ctrl
Trigger2 = Statetype = S
Trigger2 = Random < 100
Trigger2 = P2BodyDist X < 30


;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
trigger1 = command = "b"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;AI
Trigger2 = Var(59) = 1
Trigger2 = Ctrl
Trigger2 = Statetype = S
Trigger2 = Random < 50
Trigger2 = P2BodyDist X < 30
Trigger3 = Var(59) = 1
Trigger3 = Stateno = 230 && Movehit
Trigger3 = Statetype = S
Trigger3 = Random < 150

;Standing Strong Kick 2 (AI)
[State -1, Standing Strong Kick 2 (AI)]
type = ChangeState
value = 241
;AI
Trigger1 = Var(59) = 1
Trigger1 = Stateno = 240 && Movehit
Trigger1 = Statetype = S
Trigger1 = Random < 200

;Air Fireball
[State -1, Air FireBall]
type = ChangeState
value = 254
triggerall = var(21) < 20
triggerall = power >= 100
triggerall = stateno != 1006
triggerall = statetype = A
trigger1 = ctrl
trigger1 = command = "c"
trigger1 = command != "holddown"
trigger2 = Time > 12 && stateno = 254
trigger2 = command = "c"
trigger2 = command != "holddown"
;AI
Trigger3 = Var(59) = 1
Trigger3 = Ctrl
Trigger3 = P2Bodydist X > 200
Trigger3 = Random < 25

;FireBall2
[State -1, FireBall2]
type = ChangeState
value = 251
triggerall = var(21) < 20
trigger1 = command = "c"
trigger1 = command != "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = Time > 10 && stateno = 250
;AI
Trigger2 = Var(59) = 1
Trigger2 = Ctrl
Trigger2 = P2Bodydist X > 200
Trigger2 = Stateno = 250 && Time > 10
Trigger2 = Random < 500

;FireBall
[State -1, FireBall]
type = ChangeState
value = 250
triggerall = var(21) < 20
trigger1 = command = "c"
trigger1 = command != "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Time > 10 && stateno = 251
;AI
Trigger3 = Var(59) = 1
Trigger3 = Ctrl
Trigger3 = P2Bodydist X > 200
Trigger3 = Random < 30


;FireBall Crouch
[State -1, FireBall Crouch]
type = ChangeState
value = 252
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Time > 12 && stateno = 252

;---------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 730
trigger1 = command = "hold_b" && command = "hold_y" && var(40) = 0 && Power < 3000
trigger1 = statetype = S || Statetype = A
trigger1 = ctrl = 1
Trigger1 = Var(59) = 0
;AI
Trigger2 = Var(59) = 1
Trigger2 = Var(40) = 0
Trigger2 = Power < 3000
Trigger2 = Stateno != 730
Trigger2 = Stateno != 730
Trigger2 = Random < 10
Trigger2 = Statetype = S
Trigger2 = P2Bodydist X > 200
Trigger2 = CTRL

[State -1, Power Charge Stop (AI)]
type = ChangeState
value = 731
triggerall = Var(59) = 1
Triggerall = Stateno = 730
trigger1 = P2Bodydist X < 200
Trigger2 = Power = 3000
Trigger3 = Random < 2
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 210

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 || stateno = 430
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = (stateno = 240 || stateno = 211)

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = (stateno = 230 || stateno = 231)

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = (stateno = 240 || stateno = 241)


;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
trigger1 = var(21) < 20
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
Trigger1 = Var(59) = 0
trigger2 = stateno = 610 || stateno = 630 || stateno = 640
trigger2 = var(21) < 20
trigger2 = command = "x"
trigger2 = movecontact
Trigger2 = Var(59) = 0
trigger3 = stateno = 1350
trigger3 = var(21) < 20
trigger3 = command = "x"
Trigger3 = Var(59) = 0
;AI
Trigger4 = Var(59) = 1
Trigger4 = Statetype = A
Trigger4 = Ctrl
Trigger4 = P2Bodydist X < 50
Trigger4 = Random < 100
Trigger4 = P2Bodydist Y < 60
Trigger4 = P2Bodydist Y > -60
Trigger5 = Var(59) = 1
Trigger5 = P2Bodydist X < 50
Trigger5 = Random < 100
Trigger5 = P2Bodydist Y < 60
Trigger5 = P2Bodydist Y > -60
trigger5 = stateno = 610 || stateno = 630 || stateno = 640

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
Trigger1 = Var(59) = 0
trigger2 = stateno = 600 || stateno = 640 || stateno = 630
trigger2 = movecontact
trigger2 = command = "y"
Trigger2 = Var(59) = 0
;AI
Trigger3 = Var(59) = 1
Trigger3 = Statetype = A
Trigger3 = Ctrl
Trigger3 = P2Bodydist X < 50
Trigger3 = Random < 100
Trigger3 = P2Bodydist Y < 60
Trigger3 = P2Bodydist Y > -60
Trigger4 = Var(59) = 1
Trigger4 = P2Bodydist X < 50
Trigger4 = Random < 100
Trigger4 = P2Bodydist Y < 60
Trigger4 = P2Bodydist Y > -60
trigger4 = stateno = 600 || stateno = 630 || stateno = 640

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = command = "a"
trigger2 = stateno = 600 || stateno = 610 || stateno = 640
trigger2 = movecontact
;AI
Trigger3 = Var(59) = 1
Trigger3 = Statetype = A
Trigger3 = Ctrl
Trigger3 = P2Bodydist X < 50
Trigger3 = Random < 100
Trigger3 = P2Bodydist Y < 60
Trigger3 = P2Bodydist Y > -60
Trigger4 = Var(59) = 1
Trigger4 = P2Bodydist X < 50
Trigger4 = Random < 100
Trigger4 = P2Bodydist Y < 60
Trigger4 = P2Bodydist Y > -60
trigger4 = stateno = 600 || stateno = 610 || stateno = 640

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = command = "b"
trigger2 = stateno = 600 || stateno = 610 || stateno = 630
trigger2 = movecontact
;AI
Trigger3 = Var(59) = 1
Trigger3 = Statetype = A
Trigger3 = Ctrl
Trigger3 = P2Bodydist X < 50
Trigger3 = Random < 100
Trigger3 = P2Bodydist Y < 60
Trigger3 = P2Bodydist Y > -60
Trigger4 = Var(59) = 1
Trigger4 = P2Bodydist X < 50
Trigger4 = Random < 100
Trigger4 = P2Bodydist Y < 60
Trigger4 = P2Bodydist Y > -60
trigger4 = stateno = 600 || stateno = 610 || stateno = 630
