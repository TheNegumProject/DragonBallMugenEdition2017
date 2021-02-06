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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

[command]
name = "Genki Dama"
command = DB,B,D,DB,B,F,b
time = 30

[command]
name = "Ryu Ken"
command = ~D,DF,F,D,DF,F,x
time = 30

[command]
name = "Ryu Ken"
command = ~D,DF,F,D,DF,F,y
time = 30

[command]
name = "Fire Flip Kick"
command = ~D,DB,B,D,DB,B,a
time = 30

[command]
name = "Fire Flip Kick"
command = ~D,DB,B,D,DB,B,b
time = 30

[command]
name = "Meteor Attack"
command = ~D,DF,F,D,DF,F,b
time = 30

[command]
name = "Chou Kame Hame Ha"
command = ~D,DF,F,D,DF,F,c
time = 30

;-| Special Ki Motions |---------------------------------------------------

[command]
name = "Kame Hame Ha"
command = ~D,DB,B,D,DB,B,c
time = 25

[Command]
name = "Super Jump"
command = ~D, U
time = 10

[command]
name = "Zanzouken"
command = z
time = 15

[command]
name = "Fireball"
command = c
time = 15

;-| Special Melee Motions |------------------------------------------------

[command]
name = "EX Elbow Dash"
command = ~D,DB,B,x+y
time = 15

[command]
name = "EX Fire Kick"
command = ~25$B, F, a+b
time = 20

[command]
name = "EX Air Fang"
command = ~F, D, DF, x+y
time = 15

[command]
name = "EX Arrow Kick"
command = D,DF,F,a+b
time = 15

[command]
name = "EX Flip Kick"
command = ~D,DB,B,a+b
time = 15

[command]
name = "Strong Flip Kick"
command = ~D,DB,B,b
time = 15

[command]
name = "Light Flip Kick"
command = ~D,DB,B, a
time = 15

[command]
name = "Medium Fire Kick"
command = ~25$B, F, b
time = 20

[command]
name = "Light Fire Kick"
command = ~25$B, F, a
time = 20

[Command]
name = "Light Air Fang"
command = ~F, D, DF, x
time = 25

[Command]
name = "Medium Air Fang"
command = ~F, D, DF, y
time = 25

[command]
name = "Light Elbow Dash"
command = ~D,DB,B,x
time = 15

[command]
name = "Medium Elbow Dash"
command = ~D,DB,B,y
time = 15

[command]
name = "Scissor Kick"
command = D,DF,F,b
time = 25

[command]
name = "Arrow Kick Light"
command = D,DF,F,a
time = 25

[command]
name = "Arrow Kick Medium"
command = D,DF,F,b
time = 25

;-| AI |------------------------------------------------------

[Command]
name = "CPU1"
command = U, D, F, U, D, F
time = 0

[Command]
name = "CPU2"
command = U, B, F, U, D, F
time = 0

[Command]
name = "CPU3"
command = U, D, D, U, D, F
time = 0

[Command]
name = "CPU4"
command = U, F, U, B, U, D, F
time = 0

[Command]
name = "CPU5"
command = B, B, B, U, B, U, D, F
time = 0

[Command]
name = "CPU6"
command = U, D, B, U, B, U, D, F
time = 0

[Command]
name = "CPU7"
command = F, F, B, U, B, U, D, F
time = 0

[Command]
name = "CPU8"
command = U, D, U, U, B, U, D, F
time = 0

[Command]
name = "CPU9"
command = F, B, B, U, B, U, D, F
time = 0

[Command]
name = "CPU10"
command = F, F, B, B, U, B, U, D, F
time = 0

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
name = "AI Prueba"
command = c+s ; con el botón A+B activamos la AI
time = 1

[Command]
name = "AI desactivado"
command = b+c ; Con el boton B+C desactivamos la AI
time = 1

[Command]
name = "Dodge"
command = x+a
time = 30

[Command]
name = "Smash"
command = x+y
time = 30

[Command]
name = "Uppercutkick"
command = a+b
time = 30

[Command]
name = "Rage"
command = z+c
time = 30

[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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
name = "s"
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

;-| Single Dir |------------------------------------------------------------

[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------

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
name = "hold_s"
command = /s
time = 1

[Command]
name = "charge"
command = /b

[Command]
name = "charge 1"
command = /y

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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
;---------------------------------------------------------------------------

;===========================================================================


;---------------------------------------------------------------------------

;Genki Dama
[State -1, Genki Dama]
type = ChangeState
value = 4800
triggerall = command = "Genki Dama"
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl

;---------------------------------------------------------------------------

;Chou Kame Hame Ha
[State -1, Chou Kame Hame Ha]
type = ChangeState
value = 4500
triggerall = command = "Chou Kame Hame Ha"
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl
trigger2 = stateno = [1602, 1604]
trigger3 = stateno != 4500 && var(8)

;---------------------------------------------------------------------------

;Ryu Ken
[State -1, Ryu Ken]
type = ChangeState
value = 4400
triggerall = command = "Ryu Ken"
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl
trigger2 = stateno != 4400 && var(8)

;---------------------------------------------------------------------------

;Fire Flip Kick
[State -1, Fire Flip Kick]
type = ChangeState
value = 3500
triggerall = command = "Fire Flip Kick"
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 210 || stateno = 225 || stateno = 230 || stateno = 240 || stateno = 440) && movecontact
trigger3 = (stateno = 640) && movecontact && time > 5
trigger4 = (var(25) && (stateno = [200,499]) && movecontact)
trigger5 = stateno != 3500 && var(8)

;---------------------------------------------------------------------------

;Meteor Attack
[State -1, Meteor Attack]
type = ChangeState
value = 4000
triggerall = command = "Meteor Attack"
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl

;---------------------------------------------------------------------------

;Kame Hame Ha
[State -1, Kame Hame Ha]
type = ChangeState
value = 1850
triggerall = command = "Kame Hame Ha"
triggerall = power >= 1000
trigger1 = (statetype != A) && ctrl
trigger2 = (stateno = [1601,1604]) && movecontact

;---------------------------------------------------------------------------

;Rage Mode
[State -1, Rage Mode]
type = ChangeState
value = 780
triggerall =  var(25) = 0 && command = "Rage"
triggerall = power >= 3000
trigger1 = (statetype != A) && ctrl

;---------------------------------------------------------------------------

;Fireball (Air)
[State -1, Fireball (Air)]
type = ChangeState
value = 1611
triggerall = command = "Fireball" && time > 10
triggerall = power >= 150
triggerall = !var(25)
trigger1 = (statetype = A) && ctrl

;---------------------------------------------------------------------------

;Fireball
[State -1, Fireball]
type = ChangeState
value = 1601
triggerall = command = "Fireball"
triggerall = power >= 150
triggerall = !var(25)
trigger1 = (statetype != A) && ctrl

;---------------------------------------------------------------------------

;EX Arrow Kick
[State -1, EX Arrow Kick]
type = ChangeState
value = 2550
triggerall = command = "EX Arrow Kick"
triggerall = power >= 500
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = stateno = 630 || stateno = 640 && movecontact

;---------------------------------------------------------------------------

;EX Flip Kick
[State -1, EX Flip Kick]
type = ChangeState
value = 2504
triggerall = command = "EX Flip Kick"
triggerall = power >= 500
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 240 && movecontact
;trigger4 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

;EX Elbow Dash
[State -1, EX Elbow Dash]
type = ChangeState
value = 2030
triggerall = command = "EX Elbow Dash"
trigger1 = ctrl = 1
trigger1 = statetype != A

;---------------------------------------------------------------------------

;EX Fire Kick
[State -1, EX Fire Kick]
type = ChangeState
value = 2050
triggerall = command = "EX Fire Kick"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 230 || stateno = 240) && movecontact

;---------------------------------------------------------------------------

;EX Air Fang
[State -1, EX Air Fang]
type = ChangeState
value = 2040
triggerall = command = "EX Air Fang"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200 || stateno = 220) && movecontact

;---------------------------------------------------------------------------

;Strong Flip Kick
[State -1, Strong Flip Kick]
type = ChangeState
value = 1502
triggerall = command = "Strong Flip Kick"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 210 || stateno = 225 || stateno = 240 || stateno = 440) && movecontact
trigger3 = (stateno = 640) && movecontact && time > 5
trigger4 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

;Light Flip Kick
[State -1, Light Flip Kick]
type = ChangeState
value = 1501
triggerall = command = "Light Flip Kick"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200 || stateno = 220 || stateno = 230) && movecontact
trigger3 = (stateno = 430 || stateno = 630) && movecontact
trigger4 = (stateno = 1540) && movecontact
trigger5 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

;Runnin' Kick (air)
[State -1, Runnin' Kick (air)]
type = ChangeState
value = 1200
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = stateno = 102
trigger1 = ctrl = 1
trigger1 = statetype = A

;---------------------------------------------------------------------------

;Runnin' Kick
[State -1, Runnin' Kick]
type = ChangeState
value = 1200
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = stateno = 100
trigger1 = ctrl = 1
trigger1 = statetype != A

;---------------------------------------------------------------------------

;Runnin' Punch
[State -1, Runnin' Punch]
type = ChangeState
value = 1150
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = stateno = 100
trigger1 = ctrl = 1
trigger1 = statetype != A

;---------------------------------------------------------------------------

;Arrow Kick Light
[State -1, Arrow Kick Light]
type = ChangeState
value = 1540
triggerall = command = "Arrow Kick Light"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = (stateno = 630 || stateno = 640) && movecontact

;---------------------------------------------------------------------------

;Arrow Kick Medium
[State -1, Arrow Kick Medium]
type = ChangeState
value = 1550
triggerall = command = "Arrow Kick Medium"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = (stateno = 630 || stateno = 640) && movecontact
trigger4 = stateno = 842 && movecontact && time < 10

;---------------------------------------------------------------------------

;Shizazu kikku
[State -1, Scissor Kick]
type = ChangeState
value = 1555
triggerall = command = "Scissor Kick"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = stateno = 1550 && movecontact

;---------------------------------------------------------------------------

;Teleport Chains

; Hit 3
[State -1]
type = ChangeState
value = 1304
triggerall = (command = "a" && command = "b") || (command = "x" && command = "y")
trigger1 = (stateno = 1303) && movehit && time = [4,25]

; Hit 2
[State -1]
type = ChangeState
value = 1302
triggerall = (command = "a" && command = "b") || (command = "x" && command = "y")
trigger1 = (stateno = 1301) && movehit && time = [4,25]

; Hit 1
[State -1]
type = ChangeState
value = 1300
triggerall = (command = "a" && command = "b") || (command = "x" && command = "y")
trigger1 = (stateno = 1100 || stateno = 1111 || stateno = 1200) && movehit && time = [4,25]
trigger1 = (stateno = 1100 || stateno = 1111 || stateno = 1200) && movehit && time = [4,25]

;---------------------------------------------------------------------------

; Smash
[State -1, Smash]
type = ChangeState
value = 1110
triggerall = !var(25)
triggerall = command = "Smash"
triggerall = power >= 500
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 210) && movecontact

;---------------------------------------------------------------------------

; Launcher
[State -1, Launcher]
type = ChangeState
value = 1100
;triggerall = Var (30) = 2
triggerall = command = "Uppercutkick"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 225 || stateno = 230 || stateno = 240 || stateno = 250 || stateno = 430 || stateno = 440) && movecontact

;---------------------------------------------------------------------------

;Medium Fire Kick
[State -1, Medium Fire Kick]
type = ChangeState
value = 1055
triggerall = command = "Medium Fire Kick"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 240 || stateno = 250) && movecontact

;---------------------------------------------------------------------------

;Light Fire Kick
[State -1, Light Fire Kick]
type = ChangeState
value = 1050
triggerall = command = "Light Fire Kick"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 225 || stateno = 230 || stateno = 1501) && movecontact

;---------------------------------------------------------------------------

;Medium Air Fang
[State -1, Medium Air Fang]
type = ChangeState
value = 1042
triggerall = command = "Medium Air Fang"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 210 || stateno = 410) && movecontact

;---------------------------------------------------------------------------

;Light Air Fang
[State -1, Light Air Fang]
type = ChangeState
value = 1040
triggerall = command = "Light Air Fang"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200 || stateno = 400 || stateno = 1501) && movecontact

;---------------------------------------------------------------------------

;Medium Elbow Dash
[State -1, Medium Elbow Dash]
type = ChangeState
value = 1034
triggerall = command = "Medium Elbow Dash"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 210 || stateno = 410) && movecontact
trigger3 = (stateno = 1501) && movecontact

;---------------------------------------------------------------------------

;Light Elbow Dash
[State -1, Light Elbow Dash]
type = ChangeState
value = 1030
triggerall = command = "Light Elbow Dash"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 200 || stateno = 220 || stateno = 225 || stateno = 400) && movecontact
trigger3 = (stateno = 1501) && movecontact

;---------------------------------------------------------------------------

;Ki Charge
[State -1]
type = ChangeState
value = 750
triggerall = ctrl = 1
triggerall = (power < 3000)
triggerall = !var(25)
trigger1 = command = "charge"&& time > 10
trigger1 = command = "charge 1" && time > 10
trigger1 = statetype != C

;---------------------------------------------------------------------------

;Zanzouken
[State -1, Zanzouken]
type = ChangeState
value = 730
triggerall = command = "Zanzouken" && time > 4
triggerall = power >= 100
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 50 || stateno = 100
trigger3 = stateno = [200,499]

;---------------------------------------------------------------------------

;Counter
[State -1, Counter]
type = ChangeState
value = 720
triggerall = power >= 1000
triggerall = !var(25)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = Statetype != A
trigger1 = stateno = 150 || stateno = 151 || stateno = 152 && power >= 1000

;---------------------------------------------------------------------------

; Kick After Dodge
[State -1, Kick After Dodge]
type = ChangeState
value = 1200
triggerall = command = "b"
triggerall = statetype != A
trigger1 = stateno = 710 & Time = [12,22]

;---------------------------------------------------------------------------

;Dodge
[State -1, Dodge]
type = ChangeState
value = 710
triggerall = var(25) < 1
triggerall = command = "Dodge"
triggerall = statetype = S
trigger1 = ctrl

;-------------------------------------------------------------------------------

;Parry
[State -1, Parry]
type = HitOverride
triggerall = statetype = S
triggerall = command = "forward" && command != "down" && command != "up" && command != "back"
trigger1 = ctrl || stateno = 700
attr = SCA,AP,AA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
slot = 0
stateno = 700
time = 10
forceair = 0
;ignorehitpause =
;persistent =

;---------------------------------------------------------------------------

;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 41
triggerall = command = "Super Jump"
trigger1 = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------

; Air Dash Forward
[State -1, Air Dash Forward]
type = ChangeState
value = 102
trigger1 = command = "FF"
trigger1 = statetype = A && ctrl
 
;---------------------------------------------------------------------------

; Air Dash Back
[State -1, Air Dash Back]
type = ChangeState
value = 107
trigger1 = command = "BB"
trigger1 =statetype = A && ctrl

;---------------------------------------------------------------------------

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Grab
[State -1, Grab]
type = ChangeState
value = 800
triggerall = command = "y" ;|| command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = !var(25)
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------

; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s" &&  life > 300
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------

; Stand Near Punch
[State -1, Stand Near Punch]
type = ChangeState
value = 220
triggerall = command = "x" && command != "holddown" && p2bodydist x <= 6
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 7
trigger3 = stateno = 220 || stateno = 240 && movecontact
trigger4 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 230) && movecontact
trigger3 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

; Stand Near Kick
[State -1, Stand Near Kick]
type = ChangeState
value = 225
triggerall = command = "a" && command != "holddown" && p2bodydist x <= 6
trigger1 = statetype = S && ctrl
trigger2 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 225 && movecontact
trigger3 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

; Stand Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 250
triggerall = command = "b" && command = "holdback"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 240 || stateno = 230 && movecontact
trigger3 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 || stateno = 230 || stateno = 225 && movecontact
trigger3 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220
trigger3 = stateno = 400 && time >= 5
trigger4 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 230 || stateno = 225) && movecontact
trigger3 = (stateno = 200 || stateno = 220) && movecontact
trigger4 = stateno = 430 && time >= 5
trigger5 = (stateno = 410 || stateno = 400) && movecontact
trigger6 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400 || stateno = 410 || stateno = 430) && movecontact
trigger3 = (stateno = 240 || stateno = 250) && movecontact && time > 5
trigger4 = stateno = 640 && movecontact && Pos y > 0 && time > 9
trigger5 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

;; Crouching Strong Kick
;[State -1, Crouching Strong Kick]
;type = ChangeState
;value = 450
;triggerall = command = "c"
;triggerall = command = "holddown"
;trigger1 = statetype = C
;trigger1 = ctrl
;trigger2 = (stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 440) && movecontact
;trigger3 = (var(25) && (stateno = [200,499]) && movecontact)

;---------------------------------------------------------------------------

; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = (stateno = 600) && movecontact
trigger2 = (var(25) && (stateno = [200,499]) && movecontact)
trigger3 = (var(25) && (stateno = [599,651]) && movecontact)

;---------------------------------------------------------------------------

; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 630) && movecontact
trigger3 = (var(25) && (stateno = [200,499]) && movecontact)
trigger4 = (var(25) && (stateno = [599,651]) && movecontact)
 
;---------------------------------------------------------------------------

; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (var(25) && (stateno = [200,499]) && movecontact)
trigger3 = (var(25) && (stateno = [599,651]) && movecontact)
 
;---------------------------------------------------------------------------

; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600 || stateno = 610 || stateno = 630) && movecontact
trigger3 = (var(25) && (stateno = [200,499]) && movecontact)
trigger4 = (var(25) && (stateno = [599,651]) && movecontact)

;---------------------------------------------------------------------------


;--------------------------------------------------------------------------------
; con esto la pc activa la IA

[State -2, AI activada por la PC]
type = VarSet
trigger1 = (command = "CPU1") ||(Command = "CPU2") || (Command = "CPU3") || (Command = "CPU4") || (Command = "CPU5")
trigger2 = (Command = "CPU6") || (Command = "CPU7") || (Command = "CPU8") || (Command = "CPU9") || (Command = "CPU10")
;trigger4 = (Command = "AI11") || (Command = "AI12") || (Command = "AI13") || (Command = "AI14")
var(59) = 1
