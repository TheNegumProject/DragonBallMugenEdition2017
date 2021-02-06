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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

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
name = "holdstart"
command = /s
time = 1

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
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

;-| Super Motions |--------------------------------------------------------
[Command]
name = "roadrollerda"
command = D,DF,F, c

[Command]
name = "boom"
command = /B, c

[Command]
name = "proton"
command = /F, c

[Command]
name = "sgs"
command = /DB, c

[Command]
name = "roundkickkillah"
command = /DF, c

[Command]
name = "falconpunch"
command = ~D,D, c

;-| Special Motions |------------------------------------------------------
[Command]
name = "grenade"
command = /B, a

[Command]
name = "dynamite"
command = /B, b

[Command]
name = "roundkick"
command = /DF, a

[Command]
name = "roundkick"
command = /DF, b

[Command]
name = "KT"
command = /DB, a

[Command]
name = "KT"
command = /DB, b

[Command]
name = "knives"
command = /F, a

[Command]
name = "destroy"
command = /F, b

[Command]
name = "supahjump"
command = D,U
time = 10

[Command]
name = "supahjump"
command = D,UF
time = 10

[Command]
name = "supahjump"
command = D,UB
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

;---------------------------------------------------------------------------
[Statedef -1]

;---------------------------------------------------------------------------
[State -1, ROADROLLERDA!!!]
type = ChangeState
value = 3400
triggerall = stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "roadrollerda"
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
trigger1 = ctrl
trigger2 = stateno = [630,650]
trigger3 = stateno = 1000
trigger4 = stateno = 1100
trigger5 = stateno = 1200
trigger6 = stateno = 1250
trigger7 = stateno = [230,250]
trigger8 = stateno = [430,440]

;---------------------------------------------------------------------------
[State -1, GOTTAHELL!!!]
type = ChangeState
value = 3300
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "sgs"
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [630,650]
trigger3 = stateno = 1000

;---------------------------------------------------------------------------
[State -1, SGS!!!]
type = ChangeState
value = 3350
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "sgs"
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1100
trigger3 = stateno = 1200
trigger4 = stateno = 1250
trigger5 = stateno = [230,250]
trigger6 = stateno = [430,440]

;---------------------------------------------------------------------------
[State -1, BOOM!!!]
type = ChangeState
value = 15850
triggerall = stateno != [123456,987655]
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
triggerall = ctrl
trigger1 = command = "boom"

;---------------------------------------------------------------------------
[State -1, ROUNDKICKKILLAH!!!]
type = ChangeState
value = 3000
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = (P2name != "G-sakuya" && P4name != "G-sakuya")
triggerall = command = "roundkickkillah"
trigger1 = ctrl
trigger2 = stateno = [630,650]
trigger3 = stateno = 1000
trigger4 = stateno = 1100
trigger5 = stateno = 1200
trigger6 = stateno = 1250
trigger7 = stateno = [230,250]
trigger8 = stateno = [430,440]

;---------------------------------------------------------------------------
[State -1, PROTONCANNON!!!]
type = ChangeState
value = 3200
triggerall = 1 && stateno != [123456,987655]
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
triggerall = roundstate = 2
triggerall = command = "proton"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1100
trigger3 = stateno = 1200
trigger4 = stateno = 1250
trigger5 = stateno = [230,250]
trigger6 = stateno = [430,440]

;---------------------------------------------------------------------------
[State -1, FALCON PUNCH!!!]
type = ChangeState
value = 1300
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
triggerall = command = "falconpunch"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1100
trigger3 = stateno = 1200
trigger4 = stateno = 1250
trigger5 = stateno = [230,250]
trigger6 = stateno = [430,440]

;===========================================================================
;---------------------------------------------------------------------------
[State -1, DYNAMITE!!!]
type = ChangeState
value = 1150
triggerall = 1 && stateno != [123456,987655]
triggerall = command = "dynamite"
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
triggerall = stateno != 15850 && stateno != [3000,3999]
trigger1 = statetype != A
trigger1 = roundstate = 2

[State -1, GRENADE!!!]
type = ChangeState
value = 1100
triggerall = 1 && stateno != [123456,987655]
triggerall = command = "grenade"
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
triggerall = stateno != 15850 && stateno != [3000,3999]
trigger1 = statetype != A
trigger1 = roundstate = 2

;---------------------------------------------------------------------------
[State -1, RoundKick]
type = ChangeState
value = 1000
triggerall = 1
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
triggerall = command = "roundkick" && stateno != [123456,987655]
triggerall = stateno != 15850 && stateno != [3000,3999]
trigger1 = roundstate = 2

;---------------------------------------------------------------------------
[State -1, DESTROY!!!]
type = ChangeState
value = 1200
triggerall = 1 && stateno != [123456,987655]
triggerall = command = "destroy"
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
triggerall = stateno != 15850 && stateno != [3000,3999]
trigger1 = statetype != A
trigger1 = roundstate = 2

;---------------------------------------------------------------------------
[State -1, KNIVES!!!]
type = ChangeState
value = 1260
triggerall = 1 && stateno != [123456,987655]
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
triggerall = command = "knives" && numhelper(1260) < 10
triggerall = stateno != 15850 && stateno != [3000,3999]
trigger1 = statetype != A
trigger1 = roundstate = 2

;---------------------------------------------------------------------------
; Knife Thrower
[State -1, Knife Thrower]
type = ChangeState
value = 195
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "KT"
triggerall = statetype != A
trigger1 = ctrl && numhelper(1260)

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = 1 && stateno != [123456,987655]
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = 1 && stateno != [123456,987655]
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Teleport
[State -1, Teleport]
type = ChangeState
value = 200
triggerall = 1 && stateno != [123456,987655]
triggerall = command = "x"
triggerall = stateno != 15850 && stateno != 120 && stateno != [3000,3999]
trigger1 = roundstate = 2 && stateno != 200

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [230,250]
trigger3 = stateno = [430,440]

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [230,250]
trigger3 = stateno = [430,440]

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [230,250]
trigger3 = stateno = [430,440]

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [230,250]
trigger3 = stateno = [430,440]

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [230,250]
trigger3 = stateno = [430,440]

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = P2name != "G-sakuya" && P4name != "G-sakuya"
triggerall = stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [230,250]
trigger3 = stateno = [430,440]

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [630,650]

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [630,650]

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = 1 && stateno != [123456,987655]
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [630,650]

;---------------------------------------------------------------------------
; SupahJump
[State -1, SupahJump]
type = ChangeState
value = 55
triggerall = command = "supahjump"
trigger1 = statetype != A && ctrl
trigger2 = statetype = A && ctrl && stateno != [55,59]

