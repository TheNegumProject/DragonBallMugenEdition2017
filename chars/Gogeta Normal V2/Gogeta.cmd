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

;-| Special Motions |------------------------------------------------------

[Command]
name = "finalshinnig"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "hyperattack"
command = ~D, DF, F, x
time = 30

[Command]
name = "hypercombo"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "finalkame"
command = ~D, DF, F, b
time = 30

[Command]
name = "bigbang"
command = ~D, DF, F, a

[Command]
name = "beam"
command = ~D, DF, F, c
time = 15

[Command]
name = "fastcombos"
command = ~D, DF, F, y

;-| Basic Attack Motions |------------------------------------------------------
[Command]
name = "elbowattack"
command = ~D, DB, B, x

[Command]
name = "finalstrpunch"
command = ~D, DB, B, y

[Command]
name = "3balls"
command = ~D, DB, B, c

[Command]
name = "finalstrkick"
command = ~D, DB, B, b

[Command]
name = "kickfwd"
command = ~D, DB, B, a

[Command]
name = "downkick"
command = ~D, DB, B, b

;-| Double Tap |-----------------------------------------------------------
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
command = /y
time = 1
[Command]
name = "hold_y"
command = /x
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /b
time = 1
[Command]
name = "hold_b"
command = /a
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
[State -1, IA]
type = VarSet
triggerall = var(40) != 1
trigger1 = command = "IA_1"
trigger2 = command = "IA_2"
trigger3 = command = "IA_3"
trigger4 = command = "IA_4"
trigger5 = command = "IA_5"
trigger6 = command = "IA_6"
trigger7 = command = "IA_7"
trigger8 = command = "IA_8"
trigger9 = command = "IA_9"
trigger10 = command = "IA_10"
var(40) = 1

;This is not a move, but it sets up var(1) to be 1 if conditions are right
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

;-------------------------------------------------------------------------------
;Help Menu
[State -1, Help Menu]
type = ChangeState
value = 8499
triggerall = var(40) = 0
triggerall = command = "start" && command = "holddown"
trigger1 = statetype = c && ctrl

;---------------------------------------------------------------------------
;------------------------Special Moves--------------------------------------
;---------------------------------------------------------------------------

;Hand Stop
[State -1, Hand Stop]
type = ChangeState
value = 3000
triggerall = command = "hold_a" && command = "hold_x" && var(18) > 1
trigger1 = (statetype = S || statetype = A || statetype = C) && ctrl

;hypercombo
[State -1, hypercombo]
type = ChangeState
value = 2012
triggerall = command = "hypercombo" && power >= 1500 && var(18) > 1
trigger1 = (statetype = S || statetype = A) && ctrl

;hyperattack
[State -1, hyperattack]
type = ChangeState
value = 2008
triggerall = command = "hyperattack" && power >= 2000 && var(18) > 1
trigger1 = (statetype = S || statetype = A) && ctrl

;Finalshinning
[State -1, finalshinnig]
type = ChangeState
value = 2006
triggerall = command = "finalshinnig" && power >= 2000
trigger1 = (statetype = S || statetype = A) && ctrl

;Finalkame
[State -1, Finalkame]
type = ChangeState
value = 2004
triggerall = command = "finalkame" && power >= 1000
trigger1 = (statetype = S || statetype = A) && ctrl

;Bigbang
[State -1, Bigbang]
type = ChangeState
value = 2002
triggerall = command = "bigbang" && power >= 1000
trigger1 = (statetype = S || statetype = A) && ctrl

;Beam
[State -1, Beam]
type = ChangeState
value = 2000
triggerall = command = "beam" && power >= 100
trigger1 = (statetype = S || statetype = A) && ctrl

;---------------------------------------------------------------------------
;------------------------Basic Attack Moves---------------------------------
;---------------------------------------------------------------------------
;MultiBalls
[State -1, MultiBalls]
type = ChangeState
value = 255
triggerall = command = "3balls" && power > 1000 && var(18) > 1
trigger1 = (statetype = S || statetype = A) && ctrl

;Down Kick
[State -1, Down Kick]
type = ChangeState
value = 641
triggerall = command = "downkick"
trigger1 = statetype = A && ctrl

;Elbowattack
[State -1, Elbowattack]
type = ChangeState
value = 215
triggerall = command = "elbowattack"
trigger1 = (statetype = S || statetype = A) && ctrl

;Kickfwd
[State -1, Kickfwd]
type = ChangeState
value = 244
triggerall = command = "kickfwd"
trigger1 = (statetype = S || statetype = A) && ctrl

;Fastcombo
[State -1, Fastcombo]
type = ChangeState
value = 1100
triggerall = var(21) < 20
trigger1 = command = "fastcombos"
trigger1 = power >= 100
trigger1 = (statetype = S || statetype = A) && ctrl
;-------------------------------------------------------------------------------
; Super Jump Extraido de Highlight Vegeta by Duende Macabro
;-------------------------
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
;Run Fast Fwd Aura
[State -1, Run Fast Fwd Aura]
type = ChangeState
value = 1010
triggerall = command = "z" && command = "holdfwd"
triggerall = power >= 500
triggerall = var(15) = 0
trigger1 = (statetype = A && ctrl) || (statetype = S && ctrl)
trigger1 = stateno != 1010
trigger2 = stateno = 1006
trigger3 = stateno = 10101
trigger4 = stateno = 10102
trigger5 = stateno = 10103

;Run Fast Fwd 2
[State -1, Run Fast Fwd2]
type = ChangeState
value = 1010
triggerall = command = "holdfwd"
triggerall = power >= 500
triggerall = var(15) = 0
triggerall = Time > 10
trigger1 = stateno = 10101
trigger2 = stateno = 10102
trigger3 = stateno = 10103

;Run Fast Back Aura
[State -1, Run Fast Back Aura]
type = ChangeState
value = 10101
triggerall = command = "z" && command = "holdback"
triggerall = power >= 500
triggerall = var(15) = 0
trigger1 = (statetype = A && ctrl) || (statetype = S && ctrl)
trigger1 = stateno != 10101
trigger2 = stateno = 1006
trigger3 = stateno = 1010
trigger4 = stateno = 10102
trigger5 = stateno = 10103

;Run Fast back2
[State -1, Run Fast back2]
type = ChangeState
value = 10101
triggerall = command = "holdback"
triggerall = power >= 500
triggerall = var(15) = 0
triggerall = Time > 10
trigger1 = stateno = 1010
trigger2 = stateno = 10102
trigger3 = stateno = 10103


;Run Fast Up Aura
[State -1, Run Fast Up Aura]
type = ChangeState
value = 10102
triggerall = command = "z" && command = "holdup"
triggerall = power >= 500
triggerall = var(15) = 0
trigger1 = (statetype = A && ctrl) || (statetype = S && ctrl)
trigger1 = stateno != 10101
trigger2 = stateno = 1006
trigger3 = stateno = 1010
trigger4 = stateno = 10101
trigger5 = stateno = 10103

;Run Fast Up2
[State -1, Run Fast Up2]
type = ChangeState
value = 10102
triggerall = command = "holdup"
triggerall = power >= 500
triggerall = var(15) = 0
triggerall = Time > 10
trigger1 = stateno = 1010 && pos y < 0
trigger2 = stateno = 10101 && pos y < 0
trigger3 = stateno = 10103

;Run Fast Down Aura
[State -1, Run Fast Down Aura]
type = ChangeState
value = 10103
triggerall = command = "z" && command = "holddown"
triggerall = power >= 500
triggerall = var(15) = 0
trigger1 = (statetype = A && ctrl) || (statetype = S && ctrl)
trigger1 = stateno != 10101
trigger2 = stateno = 1006
trigger3 = stateno = 1010
trigger4 = stateno = 10102
trigger5 = stateno = 10101

;Run Fast Down
[State -1, Run Down Up2]
type = ChangeState
value = 10103
triggerall = command = "holddown"
triggerall = power >= 500
triggerall = var(15) = 0
triggerall = Time > 10
trigger1 = stateno = 1010 && pos y < 0
trigger2 = stateno = 10101 && pos y < 0
trigger3 = stateno = 10102

;Run Fast Normal
[State -1, Run Fast Normal]
type = ChangeState
value = 1006
triggerall = Alive = 1
triggerall = command = "z"
triggerall = power >= 500
triggerall = var(15) = 0
trigger1 = (statetype = A || (statetype = S && ctrl))
trigger1 = stateno != 1006 && stateno != [1008,1009]
trigger2 = stateno = 2131 || (stateno = 214 && animelem = 4) || stateno = 1008
trigger3 = var(17) = 1

;Zanzoken
[State -1, Zanzoken]
type = ChangeState
value = 1011
triggerall = Alive = 1
triggerall = command = "z"
triggerall = power >= 250
triggerall = var(15) = 1
trigger1 = ((statetype = A) || (statetype = S && ctrl))
trigger1 = stateno != 1011 && gethitvar(fall) != 1 && stateno != [1008,1009]
trigger2 = (movetype = H && Time > 20)
trigger3 = var(17) = 1

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Air Back
[State -1, Run Air Back]
type = ChangeState
value = 1005
trigger1 = command = "BB"
trigger1 = statetype = A

;Run Air Fwd
[State -1, Run Air Fwd]
type = ChangeState
value = 1000
trigger1 = command = "FF"
trigger1 = statetype = A

;Run Air Down
[State -1, Run Air Down]
type = ChangeState
value = 107
trigger1 = command = "DD"
trigger1 = statetype = A

;Run Air Up
[State -1, Run Air Up]
type = ChangeState
value = 109
triggerall = pos y > -320
trigger1 = command = "UU"
trigger1 = statetype = A

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y" && command = "x"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;Power Combo 1
[State -1, Power Combo 1]
type = ChangeState
value = 1204
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(18) > 1
trigger1 = stateno = 200 && movehit
trigger2 = stateno = 600 && movehit

;Power Combo 2
[State -1, Power Combo 2]
type = ChangeState
value = 1206
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(18) > 1
trigger1 = stateno = 211 && movehit
trigger2 = stateno = 610 && movehit

;Power Combo 3
[State -1, Power Combo 3]
type = ChangeState
value = 1208
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(18) > 1
trigger1 = stateno = 231 && movehit
trigger2 = stateno = 630 && movehit

;Power Combo 4
[State -1, Power Combo 4]
type = ChangeState
value = 1210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(18) > 1
trigger1 = stateno = 241 && movehit
trigger2 = stateno = 640 && movehit

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movehit && var(18) > 0

;Final Standing strong Down Punch
[State -1, Final Strong Down punch]
type = ChangeState
value = 214
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = ((stateno = 210 || stateno = 211) || (stateno = 240 || stateno = 241)) && movehit && hitcount >= 5
trigger2 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount >= 5

;Final Standing strong back punch
[State -1, Final Strong Back punch2]
type = ChangeState
value = 213
trigger1 = command = "y"
trigger1 = command = "holdback"
trigger1 = ((stateno = 210 || stateno = 211) || (stateno = 240 || stateno = 241)) && movehit && hitcount = 5
trigger2 = command = "y"
trigger2 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount = 5 && Time = [12,30]

;Final Standing strong back punch
[State -1, Final Strong Back punch]
type = ChangeState
value = 1200
trigger1 = command = "finalstrpunch"
trigger1 = ctrl = 1

;Final Standing strong Fwd punch
[State -1, Final Strong Fwd punch]
type = ChangeState
value = 216
trigger1 = command = "x"
trigger1 = command = "holdfwd"
trigger1 = ((stateno = 210 || stateno = 211) || (stateno = 240 || stateno = 241)) && movehit && hitcount = 5
trigger2 = command = "x"
trigger2 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount = 5 && Time = [12,30]

;Stand Strong Back Punch
[State -1, Stand Strong Back Punch]
type = ChangeState
value = 212
triggerall = command = "y"
trigger1 = command = "holdback"
trigger1 = ((stateno = 210 || stateno = 211) || (stateno = 240 || stateno = 241)) && movehit
trigger2 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount < 5 && Time = [12,30]
trigger3 = command = "holdback"
trigger3 = statetype = S && ctrl

;Stand Strong Fwd Punch
[State -1, Stand Strong Fwd Punch]
type = ChangeState
value = 215
triggerall = command = "x"
trigger1 = command = "holdfwd"
trigger1 = ((stateno = 210 || stateno = 211 || stateno = 215) || (stateno = 240 || stateno = 241)) && movehit
trigger2 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount < 5 && Time = [12,30]
trigger3 = command = "finalstrpunch"
trigger3 = ctrl = 1

;Stand Strong Punch4
[State -1, Stand Strong Punch4]
type = ChangeState
value = 212
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = stateno = 215 && movehit

;Stand Strong Punch3
[State -1, Stand Strong Punch3]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = var(18) <= 0
trigger1 = stateno = 211 && movehit

;Stand Strong Punch2
[State -1, Stand Strong Punch2]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = stateno = 210 && movehit && var(18) = 0
trigger2 = stateno = 210 && movehit && var(18) > 0 && command = "holdfwd"
trigger3 = stateno = 211 && movehit && var(18) > 0

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movehit
trigger3 = (stateno = 230 || stateno = 231) && movehit
trigger4 = stateno = 400 && movehit
trigger5 = stateno = 210 && movehit && var(18) > 0

;---------------------------------------------------------------------------
;Stand Light Kick2
[State -1, Stand Light Kick2]
type = ChangeState
value = 231
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 230 && movehit

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movehit
trigger3 = stateno = 400 && movehit

;Final Standing strong Down Kick
[State -1, Final Strong Down Kick]
type = ChangeState
value = 641
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = ((stateno = 210 || stateno = 211) || (stateno = 240 || stateno = 241)) && movehit && hitcount >= 5
trigger2 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount >= 5

;Final Standing strong back Kick2
[State -1, Final Strong Back Kick2]
type = ChangeState
value = 243
trigger1 = command = "b"
trigger1 = command = "holdback"
trigger1 = ((stateno = 210 || stateno = 211) || (stateno = 240 || stateno = 241)) && movehit && hitcount = 5
trigger2 = command = "b"
trigger2 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount = 5 && Time = [12,30]

;Final Standing strong back Kick
[State -1, Final Strong Back Kick]
type = ChangeState
value = 1202
trigger1 = command = "finalstrkick"
trigger1 = ctrl = 1

;Final Standing strong Fwd Kick
[State -1, Final Strong Fwd Kick]
type = ChangeState
value = 245
trigger1 = command = "a"
trigger1 = command = "holdfwd"
trigger1 = ((stateno = 210 || stateno = 211) || (stateno = 240 || stateno = 241)) && movehit && hitcount = 5
trigger2 = command = "a"
trigger2 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount = 5 && Time = [12,30]

;Stand Strong Back Kick
[State -1, Stand Strong Back Kick]
type = ChangeState
value = 242
triggerall = command = "b"
trigger1 = command = "holdback"
trigger1 = ((stateno = 210 || stateno = 211) || (stateno = 240 || stateno = 241)) && movehit
trigger2 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount < 5 && Time = [12,30]
trigger3 = command = "holdback"
trigger3 = statetype = S && ctrl

;Stand Strong Fwd Kick
[State -1, Stand Strong Fwd Kick]
type = ChangeState
value = 244
triggerall = command = "a"
trigger1 = command = "holdfwd"
trigger1 = ((stateno = 210 || stateno = 211 || stateno = 215 || stateno = 244) || (stateno = 240 || stateno = 241)) && movehit
trigger2 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount < 5 && Time = [12,30]

;Stand Strong Kick4
[State -1, Stand Strong Kick4]
type = ChangeState
value = 242
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 244 && movehit

;Stand Strong Kick3
[State -1, Stand Strong Kick3]
type = ChangeState
value = 244
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = stateno = 241 && movehit

;Stand Strong Kick2
[State -1, Stand Strong Kick2]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 240 && movehit

;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movehit
trigger3 = (stateno = 230 || stateno = 231) && movehit
trigger4 = (stateno = 210 || stateno = 211) && movehit
trigger5 = stateno = 400 && movehit

;-------------------------------------------------------------------------------
;Beam Execute
[State -1, Beam Execute]
type = ChangeState
value = 2000
triggerall = command = "c"
trigger1 = (stateno = 212 || stateno = 242 || stateno = 215 || stateno = 244) && movehit && hitcount < 5 && Time = [12,30]

;Air Fireball
[State -1, Air FireBall]
type = ChangeState
value = 251
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Time > 12 && stateno = 251

;FireBall2
[State -1, FireBall2]
type = ChangeState
value = 252
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = Time > 10 && stateno = 250

;FireBall
[State -1, FireBall]
type = ChangeState
value = 250
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Time > 10 && stateno = 252

;FireBall Crouch
[State -1, FireBall Crouch]
type = ChangeState
value = 253
triggerall = var(21) < 20
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = power >= 100
triggerall = stateno != 1006
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Time > 12 && stateno = 253

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

; Power Charge
[State -1, Full Power Charge]
type = ChangeState
value = 735
triggerall = command = "hold_b" && command = "hold_y" && power = 3000 && var(18) = 0
trigger1 = statetype = S || Statetype = A
trigger1 = ctrl = 1

; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = command = "hold_b" && command = "hold_y" && var(18) = 0 && var(40) = 0
trigger1 = statetype = S || Statetype = A
trigger1 = ctrl = 1

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

;---------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
;Jump Light Punch2
[State -1, Jump Light Punch2]
type = ChangeState
value = 601
triggerall = command = "x"
triggerall = command = "holdup"
trigger1 = stateno = 600 && movehit && var(18) <= 0

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(21) < 20
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Stand Strong Back Punch
[State -1, Jump Back Strong Punch]
type = ChangeState
value = 212
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = statetype = A && ctrl = 1
trigger2 = (stateno = 610 || stateno = 640) && movehit

;Final Standing strong Down Punch
[State -1, Final Strong Down punch]
type = ChangeState
value = 611
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 610 || stateno = 640) && movehit

;Jump Strong Punch2
[State -1, Jump Strong Punch2]
type = ChangeState
value = 612
triggerall = command = "y"
triggerall = command = "holdup"
trigger1 = stateno = 610 && movehit && var(18) <= 0

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 1350

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350
trigger3 = (stateno = 600 || stateno = 601) && movehit

;Stand Strong Back Kick
[State -1, Jump Back Strong Kick]
type = ChangeState
value = 242
triggerall = command = "b"
triggerall = command = "holdback"
trigger1 = statetype = A && ctrl = 1
trigger2 = (stateno = 610 || stateno = 601 || stateno = 640) && movehit

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 601 || stateno = 610 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 1350
