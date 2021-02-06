;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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


;-| Super Motions |--------------------------------------------------------


[Command]
name = "Masenko Rapido"
command =  ~D, DB, B, a
time = 30

[Command]
name = "Masenko"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
name = "chou kame Debil"
command = ~D, DB, B, F, x
time = 30

[Command]
name = "chou kame"
command = ~D, DB, B, F, y
time = 30

[Command]
name = "chou kame-Hame-Ha"
command = ~D, DF, F, B, x+y
time = 30

[Command]
name = "Anti-Fire balls"
command =  z+c
time = 30

[command]
name = "Amazing-Impact"
command = D,DF,F,B, c
time = 30

[Command]
name = "Giga-Explosion Mystica"
command = D, D, D, a+b
time = 30



;-| Special Ki |--------------------------------------------------------






;-| Special Motions |------------------------------------------------------

[Command]
name = "Cuerpazo"
command = ~F, D, DF, c
time = 15

[Command]
name = "Mystic Earthquake"
command = ~D, DB, B, x
time = 15

[Command]
name = "Mystic Earthquake Strong"
command = ~D, DB, B, y
time = 15


[Command]
name = "combo"
command = ~D, DF, F, y
time = 15


[Command]
name = "Air Kick Combo"
command = ~D, DF, F, a
time = 15

[Command]
name = "Air Kick Combo 2"
command = ~D, DF, F, b
time = 15

[Command]
name = "Charging Double Kick"
command = ~15$B, F, a
time = 15

[Command]
name = "Charging Double Kick 2"
command = ~15$B, F, b
time = 15

[Command]
name = "Sonic Kick"
command = ~F, D, DF, a
time = 15
[Command]
name = "Sonic Kick 2"
command = ~F, D, DF, b
time = 15

[Command]
name = "Rushing Fury"
command = ~F, D, DF, x
time = 15

[Command]
name = "Rushing Fury Orochi"
command = ~F, D, DF, z
time = 15


;-| Comands  |-----------------------------------------------------------

[Command]
name = "Super Jump"
command = ~D, U
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "charge"
command = /y
time = 1

[Command]
name = "charge 1"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "fly"
command = a+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

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
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------- Comandos de la Inteligencia Artificial-----------------
; Comandos activadores
;[Command]
;name = "AI Prueba"
;command = b+c ; con el bot A+B activamos la AI
;time = 10

;[Command]
;name = "AI desactivado"
;command = y+z ; Con el boton B+C desactivamos la AI
;time = 10

;---------- comandos para que la PC active la IA -------------------------
[command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b
time = 1

[command]
name = "AI2"
command = b,c,b,c,b,c,b,c,b,c,b,c
time = 1

[command]
name = "AI3"
command = b,c,b,c,b,c,b,c,b,c,b
time = 1

[command]
name = "AI4"
command = a,b,a,b,a,b,a,b,a,b,a
time = 1

[command]
name = "AI5"
command = b,a,b,a,b,a,b,a,b,a,b
time = 1

[command]
name = "AI6"
command = b,b,b,b,z,b,z,b,z,z,z
time = 1

[command]
name = "AI7"
command = b,x,b,b,x,b,b,b,b,b,x
time = 1

[command]
name = "AI8"
command = b,y,b,b,b,y,b,b,b,b,y
time = 1

[command]
name = "AI9"
command = b,b,b,b,s,z,y,x,c,b,a
time = 1

[command]
name = "AI10"
command = z,b,x,y,b,b,c,b,b,b,a
time = 1

[command]
name = "AI11"
command = b,x,b,b,x,b,b,b,b,b,z
time = 1

[command]
name = "AI12"
command = b,y,b,s,b,y,b,b,b,b,y
time = 1

[command]
name = "AI13"
command = b,b,b,z,s,z,y,x,c,b,a
time = 1

[command]
name = "AI14"
command = z,b,x,y,b,b,c,b,b,c,a
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
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

;===================================================================================
;---------------- Supers -----------------------------------------------------------
;===================================================================================
;Masenko Rapido
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Masenko Rapido"
triggerall = power >= 750
trigger1 = statetype = S
trigger1 = ctrl = 1


;Masenko Rapido
[State -1]
type = ChangeState
value = 3070
triggerall = command = "Masenko Rapido"
triggerall = power >= 750
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 1100)

;chou kame
[State -1]
type = ChangeState
value = 3100
triggerall = command = "chou kame"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

;chou kame Debil
[State -1]
type = ChangeState
value = 3200
triggerall = command = "chou kame Debil"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1


;Masenko
[State -1]
type = ChangeState
value = 3060
triggerall = command = "Masenko"
triggerall = power >= 1500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 1100)

;chou kame-Hame-Ha
[State -1]
type = ChangeState
value = 3800
triggerall = command = "chou kame-Hame-Ha"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1


;Anti Ki force camp
[State -1, Anti-Ki_forcecamp]
type = ChangeState
value = 2000
triggerall = command = "Anti-Fire balls"
triggerall = numhelper(2220) = 0
triggerall = numhelper(2230) = 0
triggerall = numhelper(2240) = 0
trigger1 = statetype = S
triggerall = power >= 999
trigger1 = ctrl = 1
trigger1 = stateno != 2000

;Amazing-Impact
[State -1, Amazing-Impact]
type = ChangeState
value = 4000
triggerall = command = "Amazing-Impact" && Power >=ifelse(var(56)=1,1500,2000)
trigger1 = (statetype = S && ctrl)

;Giga-Explosion Mystica
[State -1, Giga-Explosion Mystica]
type = ChangeState
value = 3900
triggerall = power >= 3000
triggerall = command = "Giga-Explosion Mystica"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Giga-Explosion Mystica en el aire
[State -1, Giga-Explosion Mystica]
type = ChangeState
value = 3900
triggerall = power >= 3000
triggerall = command = "Giga-Explosion Mystica"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 1100)

;===================================================================================
;---------------- Specials Ki -----------------------------------------------------------
;===================================================================================


;Strong Hit - Punch  -
[State -1, Strong Hit - en el aire -]
type = ChangeState
value = 1020
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger2 = (stateno = 610) && (movecontact = 1)
trigger3 = (stateno = 630) && (movecontact = 1)
trigger4 = (stateno = 300) && (movecontact = 1)
trigger5 = stateno = 1350 ;Air blocking

;Strong Hit  Kick
[State -1, Strong Hit]
type = ChangeState
value = 1000
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 400)  && (movecontact = 1)
trigger7 = (stateno = 410)  && (movecontact = 1)
trigger8 = (stateno = 430)  && (movecontact = 1)
trigger9 = (stateno = 431)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310) && (movecontact = 1)

;Strong Hit-Cuerpazo
[State -1]
type = ChangeState
value = 1010
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)





;===================================================================================
;---------------- Specials ---------------------------------------------------------
;===================================================================================
[State -1, Mystic Earthquake]
type = ChangeState
value = 1200
triggerall = command = "Mystic Earthquake"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)

[State -1, Mystic Earthquake Strong]
type = ChangeState
value = 1251
triggerall = command = "Mystic Earthquake Strong"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)






;[State -1, Mystic Earthquake]
;type = ChangeState
;value = 1251
;triggerall = command = "Mystic Earthquake"
;trigger1 = statetype = A
;trigger1 = ctrl
;trigger2 = (stateno = 600)  && (movecontact = 1)
;trigger3 = (stateno = 610)  && (movecontact = 1)
;trigger4 = (stateno = 630)  && (movecontact = 1)
;trigger5 = (stateno = 640)  && (movecontact = 1)
;trigger6 = (stateno = 615)  && (movecontact = 1)
;trigger7 = (stateno = 1100) && (movecontact = 1)


[State -1, codaso fuerte]
type = ChangeState
value = 1300
triggerall = command = "combo"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)

; Air Kick Combo
[State -1, Air Kick Combo]
type = ChangeState
value = 1400
triggerall = command = "Air Kick Combo"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600)  && (movecontact = 1)
trigger3 = (stateno = 610)  && (movecontact = 1)
trigger4 = (stateno = 630)  && (movecontact = 1)
trigger5 = (stateno = 640)  && (movecontact = 1)
trigger6 = (stateno = 615)  && (movecontact = 1)
trigger7 = (stateno = 1100) && (movecontact = 1)

[State -1, Air Kick Combo fuerte]
type = ChangeState
value = 1450
triggerall = command = "Air Kick Combo 2"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600)  && (movecontact = 1)
trigger3 = (stateno = 610)  && (movecontact = 1)
trigger4 = (stateno = 630)  && (movecontact = 1)
trigger5 = (stateno = 640)  && (movecontact = 1)
trigger6 = (stateno = 615)  && (movecontact = 1)
trigger7 = (stateno = 1100) && (movecontact = 1)

;Charging Double Kick
[State -1, Charging Double Kick]
type = ChangeState
value = 1500
triggerall = command = "Charging Double Kick"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)

;Charging Double Kick 2
[State -1, Charging Double Kick]
type = ChangeState
value = 1550
triggerall = command = "Charging Double Kick 2"
trigger1 = statetype = S
trigger1 = ctrl
triggerall = numhelper(2210) = 0
triggerall = numhelper(2220) = 0
triggerall = numhelper(2230) = 0
triggerall = numhelper(2240) = 0
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)

[State -1, Sonick Kick]
type = ChangeState
value = 1600
triggerall = command = "Sonic Kick"
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)

[State -1, Sonick Kick]
type = ChangeState
value = 1600
triggerall = command = "Sonic Kick"
trigger1 = statetype =A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)

[State -1, Sonick Kick 2]
type = ChangeState
value = 1650
triggerall = command = "Sonic Kick 2"
trigger1 = statetype =A
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)

[State -1, Sonick Kick 2]
type = ChangeState
value = 1650
triggerall = command = "Sonic Kick 2"
trigger1 = statetype!=A && (stateno=[0,40])
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)

[State -1, Rushing Fury]
type = ChangeState
value = 1700
triggerall = command = "Rushing Fury"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)


[State -1, Rushing Fury Orochi]
type = ChangeState
value = 1810
triggerall = command = "Rushing Fury Orochi"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 240) && (movecontact = 1)
trigger7 = (stateno = 241) && (movecontact = 1)
trigger8 = (stateno = 400)  && (movecontact = 1)
trigger9 = (stateno = 410)  && (movecontact = 1)
trigger10 = (stateno = 430)  && (movecontact = 1)
trigger11 = (stateno = 431)  && (movecontact = 1)
trigger12 = (stateno = 310) && (movecontact = 1)



;==================================================================================
;---------------- Comands -------------------------------------------------------
;===================================================================================

[State -1, Sidestep]
type = ChangeState
value = 800
triggerall = command = "x" && command = "a"
triggerall = statetype = S
trigger1 = ctrl

;Ki Charge
[State -1: 		Ki Charge]
type 			= ChangeState
value 		= 7030
triggerall = (power < 3000)
trigger1 = command = "charge" && time > 5
trigger1 = command = "charge 1" && time > 5
trigger1		= (StateType = S) && (Ctrl)



;Flying Start
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = A
triggerall = numhelper(2210) = 0
triggerall = numhelper(2220) = 0
triggerall = numhelper(2230) = 0
triggerall = numhelper(2240) = 0

;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value      = 60
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)

;zanzoken
[State -1, zanzoken]
type = ChangeState
value = 1090
triggerall = command = "z"
triggerall = numhelper(2210) = 0
triggerall = numhelper(2220) = 0
triggerall = numhelper(2230) = 0
triggerall = numhelper(2240) = 0
triggerall = (power > 400)
triggerall = alive = 1
trigger1 = ctrl = 1
trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071
trigger20 = stateno = 1100

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

;Run Fwd en el aire
[State -1: 		Run Fwd]
type 			= ChangeState
value 		        = 107
triggerall 		= (Command = "FF")
trigger1		= (StateType = A) && (Ctrl)

;---------------------------------------------------------------------------

;Run Back en el aire
[State -1: 		Run Back]
type 			= ChangeState
value 		        = 108
triggerall 		= (Command = "BB")
trigger1		= (StateType = A) && (Ctrl)


;===================================================================================
;---------------- Corriendo --------------------------------------------------------
;===================================================================================
;Runing Patada
[State -1, Runing Patada]
type = ChangeState
value = 104
triggerall = stateno = 100
triggerall = command = "a" || command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;Runing punch
[State -1, Runing codazo]
type = ChangeState
value = 103
triggerall = stateno = 100
triggerall = command = "x" || command = "y"
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl




;giro patada
[State -1]
type = ChangeState
value = 330
triggerall = command = "a" && command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 400)  && (movecontact = 1)
trigger7 = (stateno = 410)  && (movecontact = 1)
trigger8 = (stateno = 430)  && (movecontact = 1)
trigger9 = (stateno = 431)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310) && (movecontact = 1)
trigger12 = (stateno = 240) && (movecontact = 1)

;===================================================================================
;---------------- B疽icos ----------------------------------------------------------
;===================================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 310) && (movecontact = 1)

;---------------------------------------------------------------------------
;Stand Light Punch - 2nd hit
[State -1, Stand Light Punch, 2nd hit]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 230) && (movecontact = 1)
trigger5 = (stateno = 241) && (movecontact = 1)
trigger6 = (stateno = 310) && (movecontact = 1)

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 241) && (movecontact = 1)
trigger3 = (stateno = 200) && (movecontact = 1)
trigger4 = (stateno = 201) && (movecontact = 1)
trigger5 = (stateno = 310) && (movecontact = 1)

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (movecontact = 1)
trigger3 = (stateno = 201) && (movecontact = 1)
trigger4 = (stateno = 210) && (movecontact = 1)
trigger5 = (stateno = 230) && (movecontact = 1)
trigger6 = (stateno = 400)  && (movecontact = 1)
trigger7 = (stateno = 410)  && (movecontact = 1)
trigger8 = (stateno = 430)  && (movecontact = 1)
trigger9 = (stateno = 431)  && (movecontact = 1)
trigger10 = (stateno = 440)  && (movecontact = 1)
trigger11 = (stateno = 310) && (movecontact = 1)

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)  && (movecontact = 1)
trigger3 = (stateno = 430)  && (movecontact = 1)
trigger4 = (stateno = 431)  && (movecontact = 1)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)


;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)  && (movecontact = 1)
trigger3 = (stateno = 430)  && (movecontact = 1)


;===========================================================================
;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630) && (movecontact = 1)
trigger3 = (stateno = 300) && (movecontact = 1)
trigger4 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 630) && (movecontact = 1)
trigger5 = (stateno = 300) && (movecontact = 1)

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && (movecontact = 1)
trigger2 = (stateno = 610) && (movecontact = 1)
trigger3 = (stateno = 630) && (movecontact = 1)
trigger4 = (stateno = 300) && (movecontact = 1)
trigger5 = stateno = 1350 ;Air blocking


;===========================================================================
;---------------------------------------------------------------------------
;Fly Light Punch
[State -1, Fly Light Punch]
type = ChangeState
value = 500
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 530) && (movecontact = 1)
trigger3 = stateno = 1350 ;Air blocking
trigger4 = Stateno = 1100

;---------------------------------------------------------------------------
;Fly Strong Punch
[State -1, Fly Strong Punch]
type = ChangeState
value = 510
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 500) && (movecontact = 1)
trigger3 = (stateno = 530) && (movecontact = 1)
trigger4 = stateno = 1350 ;Air blocking
trigger5 = Stateno = 1100
;---------------------------------------------------------------------------
;Fly Light Kick
[State -1, Fly Light Kick]
type = ChangeState
value = 530
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = Stateno = 1100
;---------------------------------------------------------------------------
;Fly Strong Kick
[State -1, Fly Strong Kick]
type = ChangeState
value = 540
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 500) && (movecontact = 1)
trigger3 = (stateno = 510) && (movecontact = 1)
trigger4 = (stateno = 530) && (movecontact = 1)
trigger5 = stateno = 1350 ;Air blocking
trigger6 = Stateno = 1100
;----------------------------------------------------------------------------
; con esto la pc activa la IA

[State -2, AI activada por la PC]
type = VarSet
trigger1 = (command = "AI1") ||(Command = "AI2") || (Command = "AI3") || (Command = "AI4") || (Command = "AI5")
trigger2 = (Command = "AI6") || (Command = "AI7") || (Command = "AI8") || (Command = "AI9") || (Command = "AI10")
trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(9) = 1
