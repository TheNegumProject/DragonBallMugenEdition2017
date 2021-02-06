; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

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
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

[Command]
name = "charge" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "hover" ;Required (do not remove)
command = a+b
time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------
[command]
name = "SPECIAL1"
command = D,F,x
time = 15

[command]
name = "SPECIAL2"
command = D,F,y
time = 15

[command]
name = "SPECIAL3"
command = D,F,z
time = 15

[command]
name = "SPECIAL4"
command = D,B,x
time = 15

[command]
name = "SPECIAL5"
command = D,B,y
time = 15

[command]
name = "SPECIAL6"
command = D,B,z
time = 15

[command]
name = "SPECIAL7"
command = D,F,a
time = 15

[command]
name = "SPECIAL8"
command = D,F,b
time = 15

[command]
name = "SPECIAL9"
command = D,F,c
time = 15

[command]
name = "SPECIAL10"
command = D,B,a
time = 15

[command]
name = "SPECIAL11"
command = D,B,b
time = 15

[command]
name = "SPECIAL12"
command = D,B,c
time = 15

[command]
name = "HYPER1"
command = D,F,x+y
time = 15

[command]
name = "HYPER1"
command = D,F,x+y
time = 15

[command]
name = "HYPER1"
command = D,F,x+z
time = 15

[command]
name = "HYPER1"
command = D,F,y+z

[command]
name = "HYPER2"
command = D,B,x+y
time = 15

[command]
name = "HYPER2"
command = D,B,x+z
time = 15

[command]
name = "HYPER2"
command = D,B,y+z
time = 15

[command]
name = "HYPER3"
command = D,F,a+b
time = 15

[command]
name = "HYPER3"
command = D,F,a+c
time = 15

[command]
name = "HYPER3"
command = D,F,b+c
time = 15

[command]
name = "HYPER4"
command = D,B,a+b
time = 15

[command]
name = "HYPER4"
command = D,B,a+c
time = 15

[command]
name = "HYPER4"
command = D,B,b+c
time = 15


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
name = "recovery" ;Required (do not remove)
command = $U
time = 1

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

;===========================================================================
;----AI-----------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef -1]

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
[State -1, SPECIAL1]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL1"
trigger2 = stateno = [200,450]
trigger2 = command = "SPECIAL1"
trigger2 = movecontact = 1
trigger3 = command = "SPECIAL1"
trigger3 = statetype = S
trigger3 = ctrl

[State -1, SPECIAL2]
type = ChangeState
value = 1002
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL2"
trigger2 = stateno = [200,450]
trigger2 = command = "SPECIAL2"
trigger2 = movecontact = 1
trigger3 = command = "SPECIAL2"
trigger3 = statetype = S
trigger3 = ctrl
trigger4 = stateno = 1001
trigger4 = command = "SPECIAL2"
trigger4 = movecontact = 1

[State -1, SPECIAL3]
type = ChangeState
value = 1003
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL3"
trigger2 = stateno = [200,450]
trigger2 = command = "SPECIAL3"
trigger2 = movecontact = 1
trigger3 = command = "SPECIAL3"
trigger3 = statetype = S
trigger3 = ctrl
trigger4 = stateno = 1001
trigger4 = command = "SPECIAL2"
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
[State -1, SPECIAL456]
type = ChangeState
value = 1006
triggerall = power >= 500
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL4"
trigger2 = stateno = [200,450]
trigger2 = command = "SPECIAL4"
trigger2 = movecontact = 1
trigger3 = command = "SPECIAL4"
trigger3 = statetype = S
trigger3 = ctrl
trigger4 = stateno = [200,450]
trigger4 = command = "SPECIAL5"
trigger5 = stateno = [200,450]
trigger5 = command = "SPECIAL5"
trigger5 = movecontact = 1
trigger6 = command = "SPECIAL5"
trigger6 = statetype = S
trigger6 = ctrl
trigger7 = stateno = [200,450]
trigger7 = command = "SPECIAL6"
trigger8 = stateno = [200,450]
trigger8 = command = "SPECIAL6"
trigger8 = movecontact = 1
trigger9 = command = "SPECIAL6"
trigger9 = statetype = S
trigger9 = ctrl
;---------------------------------------------------------------------------
[State -1, SPECIAL7]
type = ChangeState
value = 1008
triggerall = power >= 500
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL7"
trigger2 = stateno = [200,450]
trigger2 = command = "SPECIAL7"
trigger2 = movecontact = 1
trigger3 = command = "SPECIAL7"
trigger3 = statetype = S
trigger3 = ctrl
trigger4 = stateno = 1008
trigger4 = command = "a"
trigger4 = statetype = S
trigger4 = time >= 30
;---------------------------------------------------------------------------
[State -1, SPECIAL8]
type = ChangeState
value = 1010
triggerall = power >= 500
triggerall = var(59) != 1
triggerall = statetype != A
trigger1 = stateno = [200,450]
trigger1 = command = "SPECIAL8"
trigger2 = stateno = [200,450]
trigger2 = command = "SPECIAL8"
trigger2 = movecontact = 1
trigger3 = command = "SPECIAL8"
trigger3 = statetype = S
trigger3 = ctrl
trigger4 = stateno = 1010
trigger4 = command = "b"
trigger4 = statetype = S
trigger4 = time >= 30
;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Air
[State -1, Run Air]
type = ChangeState
value = 101
trigger1 = command = "FF"
trigger1 = statetype = A
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
; Run Back
[State -1, Run Back air]
type = ChangeState
value = 107
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Off screen Run
[State -1, Off Screen Run Fwd]
type = ChangeState
value = 102
triggerall = statetype = S
triggerall = ctrl
trigger1 = backedgedist < -25
;---------------------------------------------------------------------------
; Super Jump
[State -1, super jump ]
type = ChangeState
value = 900
triggerall = var(59) != 1
trigger1 = command = "holdup"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 420 && movecontact
trigger2 = command = "holdup"

;---------------------------------------------------------------------------
; Roll
[State -1, Front Roll]
type = ChangeState
value = 6195200
triggerall = (StateNo = 5100) || (StateNo = 5110)
trigger1 = command = "fwd"
;---------------------------------------------------------------------------
; Roll
[State -1, Back Roll]
type = ChangeState
value = 6195210
triggerall = (StateNo = 5100) || (StateNo = 5110)
trigger1 = command = "back"

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
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
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl
;-------------------------------------------------------------------------
[State -1, Charge]
type = ChangeState
value = 700
triggerall = var(59) != 1
triggerall = statetype = S
triggerall = ctrl
triggerall = power < 3000
trigger1 = command = "charge"

;-------------------------------------------------------------------------
[State -1, Charge Air]
type = ChangeState
value = 704
triggerall = var(59) != 1
triggerall = statetype = A
triggerall = power < 3000
triggerall = ctrl
trigger1 = command = "charge"
;-------------------------------------------------------------------------
[State -1, Charge Air]
type = ChangeState
value = 708
triggerall = var(59) != 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "hover"

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) != 1
trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) != 1
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "y"
trigger2 = stateno = 200
trigger2 = movecontact
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "z"
trigger2 = stateno = 210
trigger2 = movecontact
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "a"
trigger2 = stateno = 200
trigger2 = movecontact
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "b"
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = command = "b"
trigger3 = stateno = 210
trigger3 = movecontact
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = stateno = 240
trigger2 = movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "x"
trigger2 = stateno = 200
trigger2 = movecontact
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "y"
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = command = "y"
trigger3 = stateno = 210
trigger3 = movecontact
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno !=420
trigger2 = command = "z"
trigger2 = stateno = [200,450]
trigger2 = movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "a"
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = command = "a"
trigger3 = stateno = 400
trigger3 = movecontact
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "b"
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = command = "b"
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = command = "b"
trigger4 = stateno = 240
trigger4 = movecontact
;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = command = "c"
trigger2 = stateno = 440
trigger2 = movecontact
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 640]
trigger2 = StateNo != 620
trigger2 = MoveContact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600,610]
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact


;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) != 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600,640]
trigger2 = MoveContact
;===================ARTIFICIAL==INTELIGENCE=================================
[State -3, AI GUARD STAND]
type = ChangeState
value = 130
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 120
trigger1 = p2statetype = S
trigger2 = (enemy, NumProj >= 1)

[State -3, AI GUARD CROUCH]
type = ChangeState
value = 131
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 120
trigger1 = p2statetype = C
trigger2 = (enemy, NumProj >= 1)

[State -3,AI GUARD AIR]
type = ChangeState
value = 132
triggerall = var(59) = 1
triggerall = p2movetype = A || (enemy, NumProj >= 1) ;
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = roundstate = 2 && movetype != H
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 132
trigger1 = p2statetype = A
trigger2 = (enemy, NumProj >= 1)

[State -3, DASH AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
triggerall = prevstateno != 100
triggerall = prevstateno != 619100
triggerall = stateno != 619100
triggerall = stateno != 1002
triggerall = p2bodydist X >= 30 ;Near P2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = prevstateno = 5001
trigger3 = prevstateno = 5011
value = ifelse(random < 500, 1002,619100)

[State -3, ROLL AI]
type = ChangeState
value = 6195200
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = alive = 1
triggerall = ctrl
triggerall = (StateNo = 5100) || (StateNo = 5110)
trigger1 = time = 10

[State -3, HIT BACK AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = alive = 1
triggerall = ctrl
triggerall = statetype != A
trigger1 = prevstateno = 5001
trigger2 = prevstateno = 5011
trigger3 = prevstateno = 151
trigger4 = prevstateno = 153
value = ifelse(random < 500, 1000,1003)

[State -3, PUNCH1 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
triggerall = p2bodydist X <= 60 ;Near P2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = prevstateno = 6195200
value = ifelse(random < 500, 200,1000)

[State -3, PUNCH2 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 200
trigger1 = movecontact = 1
value = 210

[State -3, PUNCH4 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 210
trigger1 = movecontact = 1
value = ifelse(random < 500, 220,240)

[State -3, PUNCH4 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 240
trigger1 = movecontact = 1
value = 440

[State -3, PUNCH4 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 440
trigger1 = movecontact = 1
value = 450

[State -3, PUNCH4 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 450
trigger1 = movecontact = 1
value = 420

[State -3, SPECIAL1 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 220
trigger1 = movecontact = 1
value = ifelse(random < 500, 1008,1000)

[State -3, SPECIAL2 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 1001
trigger1 = animelem = 6
value = ifelse(random < 500, 1003,1002)

[State -3, GUARD SPECIAL1 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 1000
trigger1 = moveguarded
trigger1 = animelem = 9
value = ifelse(random < 500, 105,1006)

[State -3, SJUMP6 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
trigger1 = statetype != A
trigger1 = stateno  = 420
trigger1 = movehit = 1
value = 900

[State -3, LAND SPECIAL AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = roundstate = 2 && movetype != H
triggerall = alive = 1
triggerall = facing = 1
trigger1 = statetype != A
trigger1 = stateno  = 52
value = ifelse(random < 500, 1000,1003)

[State -3, AIR PUNCH1 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = movetype != H
triggerall = alive = 1
triggerall = statetype = A
trigger1 = prevstateno  = 900
trigger2 = prevstateno  = 1002
triggerall = pos y < -50
value = 600

[State -3, AIR PUNCH2 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = movetype != H
triggerall = alive = 1
triggerall = statetype = A
trigger1 = stateno  = 600
trigger1 = movecontact
value = 610

[State -3, AIR PUNCH3 AI]
type = ChangeState
triggerall = var(59) = 1
triggerall = movetype != H
triggerall = alive = 1
triggerall = statetype = A
trigger1 = stateno  = 610
trigger1 = movecontact
value = 620
