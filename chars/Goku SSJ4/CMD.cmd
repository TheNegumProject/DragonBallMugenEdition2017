;================================
;Goku Type-Z
;================================

;------------------------------------------------------
;Author:	ZGTE
;	http://www.zgtm.tk
;------------------------------------------------------

;=============================================================

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
name = "recovery"
command = x+y
time = 1

[Command]
name = "nothing"
command = b+y
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
;-| Hold Single Button |-----------------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holds"
command = /s
time = 1
;-| Circle |-----------------------------------------------------------
[Command]
name = "QCF_A"     ;Required (do not remove)
command = ~D, F, a
time = 10

[Command]
name = "QCF_B"     ;Required (do not remove)
command = ~D, F, b
time = 10

[Command]
name = "QCF_C"     ;Required (do not remove)
command = ~D, F, c
time = 10

[Command]
name = "QCF_X"     ;Required (do not remove)
command = ~D, F, x
time = 10

[Command]
name = "QCF_Y"     ;Required (do not remove)
command = ~D, F, y
time = 10

[Command]
name = "QCF_Z"     ;Required (do not remove)
command = ~D, F, z
time = 10
;-----------------------
[Command]
name = "QCB_A"     ;Required (do not remove)
command = ~D, B, a
time = 10

[Command]
name = "QCB_B"     ;Required (do not remove)
command = ~D, B, b
time = 10

[Command]
name = "QCB_C"     ;Required (do not remove)
command = ~D, B, c
time = 10

[Command]
name = "QCB_X"     ;Required (do not remove)
command = ~D, B, x
time = 10

[Command]
name = "QCB_Y"     ;Required (do not remove)
command = ~D, B, y
time = 10

[Command]
name = "QCB_Z"     ;Required (do not remove)
command = ~D, B, z
time = 10
;-| Ki Specials |-----------------------------------------------------------

[Command]
name = "Invisible Ki"
command = ~D, DF, F, z
time = 30

[Command]
name = "Taioken"
command = ~D, B, D, B, x
time = 30

[Command]
name = "KYO Ki Punch"
command = ~D, DF, F, x
time = 30

[Command]
name = "KYO Ki punch 2"
command = ~D, DF, F, y
time = 30

;-| Specials |--------------------------------------------------------------
[Command]
name = "Super Jump"
command = ~D, U
time = 30

[Command]
name = "Rising Knee"
command = ~F, D, DF, a
time = 30

[Command]
name = "Rising Knee 2"
command = ~F, D, DF, b
time = 30

[Command]
name = "Cartwheel"
command = ~D, DB, B, a
time = 30

[Command]
name = "Cartwheel 2"
command = ~D, DB, B, b
time = 30

[Command]
name = "Dashing elbow"
command = ~B, F, x
time = 30

[Command]
name = "Dashing elbow 2"
command = ~B, F, y
time = 30

;-| Supers |----------------------------------------------------------------

[Command]
name = "Kamehameha stage 1"
command = ~D, DF, F, x
time = 30

[Command]
name = "Chou Kamehameha"
command = ~D, DF, F, D, DF, F, y
time = 30

;-| Hold Dir |--------------------------------------------------------------

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
;-------------------------------------------------------------FINISHERS-----
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; NO MERCY!!
[State -1]
type            = Changestate
value       = 9000
triggerall      = P2Life   <= 1 && NumHelper(9010) = 0 && p2stateno != 987123 && RoundNo != 1 && var(59) >= 1 
trigger1        = ctrl      = 1 && statetype = S && (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
;----------------------------------------------------------------SUPERS-----
;---------------------------------------------------------------------------
; Kamehameha stage 1
[State -1:      Kamehameha stage 1]
type            = ChangeState
value      = 3000
triggerall      = (command = "Kamehameha stage 1")
triggerall      = (power >= 1000)
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Chou Kamehameha
[State -1:      Chou Kamehameha]
type            = ChangeState
value      = 3002
triggerall      = (command = "Chou Kamehameha")
triggerall      = (power >= 2000)
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
;--------------------------------------------------------------------KI-----
;---------------------------------------------------------------------------
; Taioken
[State -1:      Taioken]
type            = ChangeState
value      = 2025
triggerall      = (command = "Taioken")
triggerall      = (power >= 200)
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Invisible Ki
[State -1:      Invisible Ki]
type            = ChangeState
value      = 2005
triggerall      = (command = "Invisible Ki")
triggerall      = (power >= 150)
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Ki Shot
[State -1:      Ki Shot]
type            = ChangeState
value      = 2000
triggerall      = (command = "z")
triggerall      = (power >= 100)
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Air Ki Shot
[State -1:      Air Ki Shot]
type            = ChangeState
value      = 2020
triggerall      = (command = "holdz")
triggerAll      = (power >= 100)
trigger1        = (statetype = A) && (ctrl)

;---------------------------------------------------------------------------
; K.Y.O. Ki Punch 2
[State -1:      K.Y.O. Ki Punch 2]
type            = ChangeState
value      = 2050
triggerall      = (command = "KYO Ki punch 2")
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)
trigger3        = (stateno = 2040) && (time >= 13)

;---------------------------------------------------------------------------
; K.Y.O. Ki Punch
[State -1:      K.Y.O. Ki Punch]
type            = ChangeState
value      = 2040
triggerall      = (command = "KYO Ki Punch")
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
;---------------------------------------------------------------SPECIAL-----
;---------------------------------------------------------------------------
; Rising Knee 2
[State -1:      Rising Knee 2]
type            = ChangeState
value      = 1002
triggerall      = command = "Rising Knee 2"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Rising Knee
[State -1:      Rising Knee]
type            = ChangeState
value      = 1000
triggerall      = command = "Rising Knee"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Cartwheel 2
[State -1:      Cartwheel 2]
type            = ChangeState
value      = 1006
triggerall      = command = "Cartwheel 2"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (statetype = A) && (ctrl)
trigger3        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger3        = (movecontact)

;---------------------------------------------------------------------------
; Cartwheel
[State -1:      Cartwheel]
type            = ChangeState
value      = 1005
triggerall      = command = "Cartwheel"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (statetype = A) && (ctrl)
trigger3        = (stateno = 400) || (stateno = 401)|| (stateno = 402)|| (stateno = 403)
trigger3        = (movecontact)
trigger4        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger4        = (movecontact)

;---------------------------------------------------------------------------
; Dashing elbow
[State -1:      Dashing elbow]
type            = ChangeState
value      = 1008
triggerall      = command = "Dashing elbow"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Dashing elbow 2
[State -1:      Dashing elbow 2]
type            = ChangeState
value      = 1009
triggerall      = command = "Dashing elbow 2"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Dashing Gut punch
[State -1:      Dashing Gut punch]
type            = ChangeState
value      = 1040
triggerall      = (stateno = 100) && (command = "y")
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Dashing Gut punch (light)
[State -1:      Dashing Gut punch(light)]
type            = ChangeState
value      = 1041
triggerall      = (stateno = 100) && (command = "x")
trigger1        = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;-----------------------------------------------------------------NORMAL----
;---------------------------------------------------------------------------
; Power Up
[State -1:      Charge Power]
type            = ChangeState
value      = 700
triggerall      = ((command = "holda") && (command = "holdx"))
triggerall = power < 4000
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Super Jump
[State -1:      Super Jump]
type            = ChangeState
value      = 9001
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Zanzoken
[State -1:      Zanzoken]
type            = ChangeState
value      = 500
triggerall      = (command = "c")
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
;------------------------------------------------------------------BASIC----
;---------------------------------------------------------------------------
; Run Fwd
[State -1:      Run Fwd]
type            = ChangeState
value      = 100
triggerall      = (command = "FF")
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Run Back
[State -1:      Run Back]
type            = ChangeState
value      = 105
triggerall      = (command = "BB")
trigger1        = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
; Throw Attempt
[State -1:      Throw Attempt]
type            = ChangeState
value      = 600
triggerall      = (command = "holdfwd") && (command = "y")
trigger1        = (statetype = S) && (ctrl) 
trigger1        = (stateno != 100) && (p2movetype != H)
trigger1        = (p2statetype != A) && (P2bodydist X <= 10)

;---------------------------------------------------------------------------
; Uppercut
[State -1:          Uppercut]
type            = ChangeState
value      = 202
triggerall      = (command = "holdback") && (command = "y")
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 213) && (time > 10) ||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)

;---------------------------------------------------------------------------
; Roundhouse
[State -1:         Roundhouse]
type            = ChangeState
value      = 215
triggerall      = (command = "holdback") && (command = "b")
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Axe kick
[State -1:         Axe kick]
type            = ChangeState
value      = 213
triggerall      = (command = "holdback") && (command = "a")
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214)||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Standing Light Punch
[State -1:      Light Punch]
type            = ChangeState
value      = 200
triggerall      = (command = "x")
triggerall      = command != "holddown"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)

;---------------------------------------------------------------------------
; Standing Hard Punch
[State -1:      Hard Punch]
type            = ChangeState
value      = 201
triggerall      = (command = "y")
triggerall      = command != "holddown"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 213) && (time > 10) ||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Standing Light Kick
[State -1:      Light Kick]
type            = ChangeState
value      = 211
triggerall      = (command = "a")
triggerall      = command != "holddown"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200)||(stateno = 201)|| (stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Standing Hard Kick
[State -1:      Hard Kick]
type            = ChangeState
value      = 214
triggerall      = (command = "b")
triggerall      = command != "holddown"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 213) && (time > 10)||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1:      Crouch Light Punch]
type            = ChangeState
value      = 300
triggerall      = (command = "x")
trigger1        = (statetype = C) && (ctrl)

;---------------------------------------------------------------------------
; Crouching Hard Punch
[State -1:      Crouch Hard Punch]
type            = ChangeState
value      = 301
triggerall      = (command = "y")
trigger1        = (statetype = C) && (ctrl)
trigger2        = (stateno = 302) || (stateno = 300)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1:      Crouch Light Kick]
type            = ChangeState
value      = 302
triggerall      = (command = "a")
trigger1        = (statetype = C) && (ctrl)
trigger2        = (stateno = 300)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Crouching Hard Kick
[State -1:      Crouch Hard Kick]
type            = ChangeState
value      = 303
triggerall      = (command = "b")
trigger1        = (statetype = C) && (ctrl)
trigger2        = (stateno = 302) || (stateno = 301)|| (stateno = 300)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Air Light Punch
[State -1:      Air Light Punch]
type            = ChangeState
value      = 400
triggerall      = (command = "x")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 403)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Air Smackdown
[State -1:      Air Smackdown]
type            = ChangeState
value      = 405
triggerall      = (command = "holddown") && (command = "y")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 400) || (stateno = 401)|| (stateno = 402)|| (stateno = 403)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1:      Air Hard Punch]
type            = ChangeState
value      = 401
triggerall      = (command = "y")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 400) || (stateno = 402)|| (stateno = 403)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Air Light Kick
[State -1:      Air Light Kick]
type            = ChangeState
value      = 402
triggerall      = (command = "a")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 401)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Air Kick down
[State -1:      Air Kick down]
type            = ChangeState
value      = 404
triggerall      = (command = "holddown") && (command = "b")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 400) || (stateno = 401)|| (stateno = 402)|| (stateno = 403)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1:      Air Hard Kick]
type            = ChangeState
value      = 403
triggerall      = (command = "b")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 400) || (stateno = 401)|| (stateno = 402)
trigger2        = (movecontact)

;---------------------------------------------------------------------------
;KO finish
[State -1, ]
type            = Helper
trigger1        =(enemynear(0),alive=0)
trigger1        =(numhelper(1222)=0)
helpertype      = normal
name            = "Kill"
ID              = 1222
pos             = 0,500
postype         = p1
stateno         = 1122
keyctrl         = 0
ignorehitpause  = 1
persistent      = 0

;---------------------------------------------------------------------------
