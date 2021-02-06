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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.

;-| Special Motions |------------------------------------------------------
[Command]
name = "Da"     ;Required (do not remove)
command = D,a
time = 20

[Command]
name = "DFa"     ;Required (do not remove)
command = D,F,a
time = 20

[Command]
name = "DBa"     ;Required (do not remove)
command = D,B,a
time = 20

[Command]
name = "Db"     ;Required (do not remove)
command = D,b
time = 20

[Command]
name = "DFb"     ;Required (do not remove)
command = D,F,b
time = 20

[Command]
name = "DBb"     ;Required (do not remove)
command = D,B,b
time = 20

[Command]
name = "Dc"     ;Required (do not remove)
command = D,c
time = 20

[Command]
name = "DFc"     ;Required (do not remove)
command = D,F,c
time = 20

[Command]
name = "DBc"     ;Required (do not remove)
command = D,B,c
time = 20

[Command]
name = "Dx"     ;Required (do not remove)
command = D,x
time = 20

[Command]
name = "DFx"     ;Required (do not remove)
command = D,F,x
time = 20

[Command]
name = "DBx"     ;Required (do not remove)
command = D,B,x
time = 20

[Command]
name = "Dy"     ;Required (do not remove)
command = D,y
time = 20

[Command]
name = "DFy"     ;Required (do not remove)
command = D,F,y
time = 20

[Command]
name = "DBy"     ;Required (do not remove)
command = D,B,y
time = 20

[Command]
name = "Dz"     ;Required (do not remove)
command = D,z
time = 20
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
name = "recovery";Required (do not remove)
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

[Command]
name = "holda";Required (do not remove)
command = /$a
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /$x
time = 1

[Command]
name = "holds";Required (do not remove)
command = /$s
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /$y
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
;---------------------------------------------------------------------------
;Da
[State -1,Da]
type = ChangeState
value = 6215
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Da"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;DFa
[State -1,DFa]
type = ChangeState
value = 6120
triggerall = var(10) = 0
triggerall = power >= 250
triggerall = command = "DFa"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;DBa
[State -1,DBa]
type = ChangeState
value = 6125
triggerall = var(10) = 0
triggerall = power >= 250
triggerall = command = "DBa"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Db
[State -1,Db]
type = ChangeState
value = 6220
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Db"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;DFb
[State -1,DFb]
type = ChangeState
value = 6130
triggerall = var(10) = 0
triggerall = power >= 500
triggerall = command = "DFb"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;DBb
[State -1,DBb]
type = ChangeState
value = 6135
triggerall = var(10) = 0
triggerall = power >= 500
triggerall = command = "DBb"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;DC
[State -1,DC]
type = ChangeState
value = 6225
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "Dc"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;DFc
[State -1,DFc]
type = ChangeState
value = 6145
triggerall = var(10) = 0
triggerall = power >= 500
triggerall = command = "DFc"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;DBc
[State -1,DBc]
type = ChangeState
value = 6150
triggerall = var(10) = 0
triggerall = power >= 250
triggerall = command = "DBc"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dx
[State -1,Dx]
type = ChangeState
value = 6230
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Dx"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;DFx
[State -1,DFx]
type = ChangeState
value = 6155
triggerall = var(10) = 0
triggerall = power >= 500
triggerall = command = "DFx"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;DBx
[State -1,DBx]
type = ChangeState
value = 6160
triggerall = var(10) = 0
triggerall = power >= 500
triggerall = command = "DBx"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dy
[State -1,Dy]
type = ChangeState
value = 6235
triggerall = var(10) = 0
triggerall = power >= 3000
triggerall = command = "Dy"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;DFy
[State -1,DFy]
type = ChangeState
value = 6170
triggerall = var(10) = 0
triggerall = power >= 250
triggerall = command = "DFy"
trigger1 = ctrl
;---------------------------------------------------------------------------
;DBy
[State -1,DBy]
type = ChangeState
value = 6175
triggerall = var(10) = 0
triggerall = power >= 250
triggerall = command = "DBy"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Attack 1
[State -1,Attack 1]
type = ChangeState
value = 6040
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Attack 1
[State -1,Attack 1]
type = ChangeState
value = 6045
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6040
;---------------------------------------------------------------------------
;Attack 1
[State -1,Attack 1]
type = ChangeState
value = 6050
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6045
;---------------------------------------------------------------------------
;Attack 1
[State -1,Attack 1]
type = ChangeState
value = 6055
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6050
;---------------------------------------------------------------------------
;Attack 2
[State -1,Attack 2]
type = ChangeState
value = 6060
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Attack 2
[State -1,Attack 2]
type = ChangeState
value = 6065
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6060
;---------------------------------------------------------------------------
;Attack 2
[State -1,Attack 2]
type = ChangeState
value = 6070
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6065
;---------------------------------------------------------------------------
;Attack 2
[State -1,Attack 2]
type = ChangeState
value = 6075
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6070
;---------------------------------------------------------------------------
;Attack 3
[State -1,Attack 3]
type = ChangeState
value = 6080
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Attack 3
[State -1,Attack 3]
type = ChangeState
value = 6085
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6080
;---------------------------------------------------------------------------
;Attack 3
[State -1,Attack 3]
type = ChangeState
value = 6090
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6085
;---------------------------------------------------------------------------
;Attack 3
[State -1,Attack 3]
type = ChangeState
value = 6095
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6090
;---------------------------------------------------------------------------
;Attack 4
[State -1,Attack 4]
type = ChangeState
value = 6100
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Attack 4
[State -1,Attack 4]
type = ChangeState
value = 6105
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6100
;---------------------------------------------------------------------------
;Attack 4
[State -1,Attack 4]
type = ChangeState
value = 6110
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6105
;---------------------------------------------------------------------------
;Attack 4
[State -1,Attack 4]
type = ChangeState
value = 6115
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6110
;---------------------------------------------------------------------------
;Attack 5
[State -1,Attack 5]
type = ChangeState
value = 6140
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Attack 1
[State -1,Air Attack 1]
type = ChangeState
value = 6180
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Attack 1
[State -1,Air Attack 1]
type = ChangeState
value = 6185
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6180
;---------------------------------------------------------------------------
;Air Attack 1
[State -1,Air Attack 1]
type = ChangeState
value = 6190
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6185
;---------------------------------------------------------------------------
;Air Attack 2
[State -1,Air Attack 2]
type = ChangeState
value = 6195
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Attack 2
[State -1,Air Attack 2]
type = ChangeState
value = 6200
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6195
;---------------------------------------------------------------------------
;Air Attack 2
[State -1,Air Attack 2]
type = ChangeState
value = 6205
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = movecontact && time > 10
trigger1 = stateno = 6200
;---------------------------------------------------------------------------
;Air Attack 3
[State -1,Air Attack 3]
type = ChangeState
value = 6210
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Power up
[State -1,Power up]
type = ChangeState
value = 6035
triggerall = var(10) = 0
triggerall = command = "holds"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dash Forward
[State -1,Dash Forward]
type = ChangeState
value = 6005
triggerall = var(10) = 0
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Hop Back
[State -1,Hop Back]
type = ChangeState
value = 6010
triggerall = var(10) = 0
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Dash Forward
[State -1,Air Dash Forward]
type = ChangeState
value = 6015
triggerall = var(10) = 0
triggerall = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Dash Back
[State -1,Air Dash Back]
type = ChangeState
value = 6020
triggerall = var(10) = 0
triggerall = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport Forward
[State -1,Teleport Forward]
type = ChangeState
value = 6245
triggerall = var(10) = 0
triggerall = command = "holdfwd"
trigger1 = command = "z"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport Back
[State -1,Teleport Back]
type = ChangeState
value = 6250
triggerall = var(10) = 0
triggerall = command = "holdback"
trigger1 = command = "z"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Full Power
[State -1,Full Power]
type = ChangeState
value = 6255
triggerall = var(10) = 0
triggerall = power >= 500
triggerall = numhelper(6256) = 0
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;AI
;---------------------------------------------------------------------------
[State -1, AI on]
type = VarSet
triggerAll = Var(10) < 1
triggerAll = RoundState = 2
trigger1 = AILevel > 0
v = 10
value = 1
Ignorehitpause = 1

[State -1, AI OFF]
type=VarSet
trigger1 = var(10) > 0
trigger1 = RoundState != 2
trigger2 = AILevel = 0
v = 10
value = 0
Ignorehitpause = 1
;---------------------------------------------------------------------------
;ai Da
[State -1,ai Da]
type = ChangeState
value = 6215
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 20
trigger1 = (p2dist x) >= 50
;---------------------------------------------------------------------------
;ai DFa
[State -1,ai DFa]
type = ChangeState
value = 6120
triggerall = var(10) = 1
triggerall = power >= 250
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 5
trigger1 = (p2dist x) >= 50
trigger1 = (p2dist x) < 100
;---------------------------------------------------------------------------
;ai DBa
[State -1,ai DBa]
type = ChangeState
value = 6125
triggerall = var(10) = 1
triggerall = power >= 250
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 5
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Db
[State -1,ai Db]
type = ChangeState
value = 6220
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 20
trigger1 = (p2dist x) >= 50
;---------------------------------------------------------------------------
;ai DFb
[State -1,ai DFb]
type = ChangeState
value = 6130
triggerall = var(10) = 1
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 100
;---------------------------------------------------------------------------
;ai DBb
[State -1,ai DBb]
type = ChangeState
value = 6135
triggerall = var(10) = 1
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 80
;---------------------------------------------------------------------------
;ai Dc
[State -1,ai Dc]
type = ChangeState
value = 6225
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 40
trigger1 = (p2dist x) >= 50
;---------------------------------------------------------------------------
;ai DFc
[State -1,ai DFc]
type = ChangeState
value = 6145
triggerall = var(10) = 1
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 10
trigger1 = (p2dist x) >= 100
;---------------------------------------------------------------------------
;ai DBc
[State -1,ai DBc]
type = ChangeState
value = 6150
triggerall = var(10) = 1
triggerall = power >= 250
triggerall = p2movetype = A
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 50
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 100
;---------------------------------------------------------------------------
;ai Dx
[State -1,ai Dx]
type = ChangeState
value = 6230
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 20
trigger1 = (p2dist x) >= 50
;---------------------------------------------------------------------------
;ai DFx
[State -1,ai DFx]
type = ChangeState
value = 6155
triggerall = var(10) = 1
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 100
;---------------------------------------------------------------------------
;ai DBx
[State -1,ai DBx]
type = ChangeState
value = 6160
triggerall = var(10) = 1
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 80
;---------------------------------------------------------------------------
;ai Dy
[State -1,ai Dy]
type = ChangeState
value = 6235
triggerall = var(10) = 1
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 60
trigger1 = (p2dist x) >= 50
;---------------------------------------------------------------------------
;ai DFy
[State -1,ai DFy]
type = ChangeState
value = 6170
triggerall = var(10) = 1
triggerall = power >= 250
trigger1 = ctrl
trigger1 = random < 5
trigger1 = (p2dist x) >= 0
;---------------------------------------------------------------------------
;ai DBy
[State -1,ai DBy]
type = ChangeState
value = 6175
triggerall = var(10) = 1
triggerall = power >= 250
trigger1 = ctrl
trigger1 = random < 5
trigger1 = (p2dist x) >= 0
;---------------------------------------------------------------------------
;ai Attack 1
[State -1,ai Attack 1]
type = ChangeState
value = 6040
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 100
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
;ai Attack 2
[State -1,ai Attack 2]
type = ChangeState
value = 6060
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 100
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
;ai Attack 3
[State -1,ai Attack 3]
type = ChangeState
value = 6080
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 100
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 70
;---------------------------------------------------------------------------
;ai Attack 4
[State -1,ai Attack 4]
type = ChangeState
value = 6100
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 50
trigger1 = (p2dist x) >= 50
trigger1 = (p2dist x) < 120
;---------------------------------------------------------------------------
;ai Attack 5
[State -1,ai Attack 5]
type = ChangeState
value = 6140
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 50
trigger1 = (p2dist x) >= 50
;---------------------------------------------------------------------------
;ai Air Attack 1
[State -1,ai Air Attack 1]
type = ChangeState
value = 6180
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 0 && random < 100
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Air Attack 2
[State -1,ai Air Attack 2]
type = ChangeState
value = 6195
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 0 && random < 100
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Air Attack 3
[State -1,ai Air Attack 3]
type = ChangeState
value = 6210
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 0 && random < 10
trigger1 = (p2dist x) >= 0
trigger1 = (p2dist x) < 100
;---------------------------------------------------------------------------
;ai Power up
[State -1,ai Power up]
type = ChangeState
value = 6035
triggerall = var(10) = 1
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 20
trigger1 = (p2dist x) >= 150
;---------------------------------------------------------------------------
;Full Power
[State -1,Full Power]
type = ChangeState
value = 6255
triggerall = var(10) = 1
triggerall = power >= 500
triggerall = numhelper(6256) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 20
;---------------------------------------------------------------------------
;ai Dash Forward
[State -1,ai Dash Forward]
type = ChangeState
value = 6005
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 0 && random < 50
trigger1 = (p2dist x) >= 80
