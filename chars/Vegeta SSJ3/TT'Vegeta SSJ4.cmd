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
name = "Galick Gun"     ;Required (do not remove)
command = D,B,F,a
time = 20

[Command]
name = "Big Ball"     ;Required (do not remove)
command = D,B,F,y
time = 20

[Command]
name = "Combo 1"     ;Required (do not remove)
command = D,B,F,a
time = 20

[Command]
name = "Follow This"     ;Required (do not remove)
command = D,B,F,b
time = 20

[Command]
name = "Big Bang Attack"     ;Required (do not remove)
command = D,B,F,c
time = 20

[Command]
name = "Final Shine Attack"     ;Required (do not remove)
command = D,B,F,x
time = 20

[Command]
name = "Final Flash"     ;Required (do not remove)
command = D,B,F,y
time = 20

[Command]
name = "Final Explosion"     ;Required (do not remove)
command = D,B,F,z
time = 20

[Command]
name = "Teleport"     ;Required (do not remove)
command = a+c
time = 1

[Command]
name = "Teleport Counter"     ;Required (do not remove)
command = x+z
time = 1
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
;Combo 1
[State -1, Combo 1]
type = ChangeState
value = 6040
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Combo 1"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Follow This
[State -1, Follow This]
type = ChangeState
value = 6042
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Follow This"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Big Bang Attack
[State -1, Big Bang Attack]
type = ChangeState
value = 6068
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Big Bang Attack"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Final Shine Attack
[State -1, Final Shine Attack]
type = ChangeState
value = 6073
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "Final Shine Attack"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Final Flash
[State -1, Final Flash]
type = ChangeState
value = 6070
triggerall = var(10) = 0
triggerall = power >= 3000
triggerall = command = "Final Flash"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Final Explosion
[State -1, Final Explosion]
type = ChangeState
value = 6076
triggerall = var(10) = 0
triggerall = power >= 3500
triggerall = command = "Final Explosion"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Galick Gun
[State -1, Galick Gun]
type = ChangeState
value = 6035
triggerall = var(10) = 0
triggerall = power >= 2000
triggerall = command = "Galick Gun"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Big Ball
[State -1, Big Ball]
type = ChangeState
value = 6051
triggerall = var(10) = 0
triggerall = power >= 3000
triggerall = command = "Big Ball"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Power up
[State -1, Power up]
type = ChangeState
value = 6000
triggerall = var(10) = 0
triggerall = var(1) = 0
triggerall = command = "holds"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dash Kick
[State -1, Dash Kick]
type = ChangeState
value = 6019
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno = 20
trigger1 = vel x > 0
;---------------------------------------------------------------------------
;SSJ5 on
[State -1, SSJ5 on]
type = ChangeState
value = 6055
triggerall = var(10) = 0
triggerall = var(7) = 0
triggerall = power >= 500
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;SSJ5 off
[State -1, SSJ5 off]
type = ChangeState
value = 6056
triggerall = var(10) = 0
triggerall = var(7) = 1
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch 1
[State -1, Punch 1]
type = ChangeState
value = 6010
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch 1
[State -1, Punch 1]
type = ChangeState
value = 6011
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6010
;---------------------------------------------------------------------------
;Punch 1
[State -1, Punch 1]
type = ChangeState
value = 6012
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 12
trigger2 = stateno = 6011
;---------------------------------------------------------------------------
;Punch 2
[State -1, Punch 2]
type = ChangeState
value = 6020
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch 2
[State -1, Punch 2]
type = ChangeState
value = 6021
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6020
;---------------------------------------------------------------------------
;Punch 2
[State -1, Punch 2]
type = ChangeState
value = 6022
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6021
;---------------------------------------------------------------------------
;Punch 2
[State -1, Punch 2]
type = ChangeState
value = 6023
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6022
;---------------------------------------------------------------------------
;Punch 2
[State -1, Punch 2]
type = ChangeState
value = 6024
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6023
;---------------------------------------------------------------------------
;Punch 3
[State -1, Punch 3]
type = ChangeState
value = 6026
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch 3
[State -1, Punch 3]
type = ChangeState
value = 6027
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6026
;---------------------------------------------------------------------------
;Punch 3
[State -1, Punch 3]
type = ChangeState
value = 6028
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6027
;---------------------------------------------------------------------------
;Punch 3
[State -1, Punch 3]
type = ChangeState
value = 6029
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 12
trigger2 = stateno = 6028
;---------------------------------------------------------------------------
;Punch 3
[State -1, Punch 3]
type = ChangeState
value = 6030
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6029
;---------------------------------------------------------------------------
;Punch 4
[State -1, Punch 4]
type = ChangeState
value = 6046
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch 4
[State -1, Punch 4]
type = ChangeState
value = 6047
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6046
;---------------------------------------------------------------------------
;Punch 4
[State -1, Punch 4]
type = ChangeState
value = 6048
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6047
;---------------------------------------------------------------------------
;Punch 4
[State -1, Punch 4]
type = ChangeState
value = 6049
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6048
;---------------------------------------------------------------------------
;Punch 4
[State -1, Punch 4]
type = ChangeState
value = 6050
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6049
;---------------------------------------------------------------------------
;Punch 5
[State -1, Punch 5]
type = ChangeState
value = 6061
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch 5
[State -1, Punch 5]
type = ChangeState
value = 6062
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6061
;---------------------------------------------------------------------------
;Punch 5
[State -1, Punch 5]
type = ChangeState
value = 6063
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6062
;---------------------------------------------------------------------------
;Punch 5
[State -1, Punch 5]
type = ChangeState
value = 6064
triggerall = var(10) = 0
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && time > 9
trigger2 = stateno = 6063
;---------------------------------------------------------------------------
;Air Punch 1
[State -1, Air Punch 1]
type = ChangeState
value = 6060
triggerall = var(10) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Punch 2
[State -1, Air Punch 2]
type = ChangeState
value = 6058
triggerall = var(10) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Punch 3
[State -1, Air Punch 3]
type = ChangeState
value = 6015
triggerall = var(10) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Punch 4
[State -1, Air Punch 4]
type = ChangeState
value = 6016
triggerall = var(10) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Air Punch 5
[State -1, Air Punch 5]
type = ChangeState
value = 6059
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "c" || command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport
[State -1, Teleport]
type = ChangeState
value = 6008
triggerall = var(10) = 0
triggerall = power >= 1000
triggerall = command = "Teleport"
trigger1 = movetype = H
;---------------------------------------------------------------------------
;Teleport Counter
[State -1, Teleport Counter]
type = ChangeState
value = 6013
triggerall = var(10) = 0
triggerall = power >= 1500
triggerall = command = "Teleport Counter"
trigger1 = movetype = H
;---------------------------------------------------------------------------
;Teleport Forward
[State -1, Teleport Forward]
type = ChangeState
value = 6006
triggerall = var(10) = 0
triggerall = command = "FF"
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport Back
[State -1, Teleport Back]
type = ChangeState
value = 6007
triggerall = var(10) = 0
triggerall = command = "BB"
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
;ai Power Up
[State -1, ai Power Up]
type = ChangeState
value = 6000
triggerall = var(10) = 1
triggerall = var(1) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 10
trigger1 = (p2dist x) > 150
;---------------------------------------------------------------------------
;ai SSJ5 on
[State -1, ai SSJ5 on]
type = ChangeState
value = 6055
triggerall = var(10) = 1
triggerall = var(7) = 0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 130 && random < 140
trigger1 = (p2dist x) > 200
trigger1 = (p2dist x) < 210
;---------------------------------------------------------------------------
;ai Galick Gun
[State -1, ai Galick Gun]
type = ChangeState
value = 6035
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 30 && random < 35
trigger1 = (p2dist x) > 100
trigger1 = (p2dist y) > 100
;---------------------------------------------------------------------------
;ai Big Ball
[State -1, ai Big Ball]
type = ChangeState
value = 6051
triggerall = var(10) = 1
triggerall = power >= 3000
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 70 && random < 80
trigger1 = (p2dist x) > 100
trigger1 = (p2dist y) > 100
;---------------------------------------------------------------------------
;ai Combo 1
[State -1, ai Combo 1]
type = ChangeState
value = 6040
triggerall = var(10) = 1
triggerall = power >= 1000
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 150 && random < 152
trigger1 = (p2dist x) > 20 && (p2dist x) < 25
;---------------------------------------------------------------------------
;ai Big Bang Attack
[State -1, ai Big Bang Attack]
type = ChangeState
value = 6068
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 5
trigger1 = (p2dist x) > 140
trigger1 = (p2dist x) < 150
;---------------------------------------------------------------------------
;ai Final Shine Attack
[State -1, ai Final Shine Attack]
type = ChangeState
value = 6073
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 20 && random < 25
trigger1 = (p2dist x) > 100
trigger1 = (p2dist x) < 150
;---------------------------------------------------------------------------
;ai Final Explosion
[State -1,ai Final Explosion]
type = ChangeState
value = 6076
triggerall = var(10) = 1
triggerall = power >= 3500
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 100 && random < 140
trigger1 = (p2dist x) > 200
;---------------------------------------------------------------------------
;ai Final Flash
[State -1, ai Final Flash]
type = ChangeState
value = 6070
triggerall = var(10) = 1
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 60 && random < 100
trigger1 = (p2dist x) > 200
;---------------------------------------------------------------------------
;ai Follow This
[State -1, ai Follow This]
type = ChangeState
value = 6042
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 100 && random < 102
trigger1 = (p2dist x) > 200 && (p2dist x) < 210
;---------------------------------------------------------------------------
;ai Dash Kick
[State -1, ai Dash Kick]
type = ChangeState
value = 6019
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 110 && random < 112
trigger1 = (p2dist x) > 200
;---------------------------------------------------------------------------
;ai Punch 1
[State -1, ai Punch 1]
type = ChangeState
value = 6010
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random < 30
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Punch 2
[State -1, ai Punch 2]
type = ChangeState
value = 6020
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 30 && random < 60
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Punch 3
[State -1, ai Punch 3]
type = ChangeState
value = 6026
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 60 && random < 90
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Punch 4
[State -1, ai Punch 4]
type = ChangeState
value = 6046
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 90 && random < 120
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Punch 5
[State -1, ai Punch 5]
type = ChangeState
value = 6061
triggerall = var(10) = 1
triggerall = p2stateno != 5150
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 120 && random < 150
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Air Punch 1
[State -1, ai Air Punch 1]
type = ChangeState
value = 6060
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random < 30
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Air Punch 2
[State -1, ai Air Punch 2]
type = ChangeState
value = 6058
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 30 && random < 60
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Air Punch 3
[State -1, ai Air Punch 3]
type = ChangeState
value = 6015
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 60 && random < 90
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Air Punch 4
[State -1, ai Air Punch 4]
type = ChangeState
value = 6016
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 60 && random < 90
trigger1 = (p2dist x) < 50
;---------------------------------------------------------------------------
;ai Air Punch 5
[State -1, ai Air Punch 5]
type = ChangeState
value = 6059
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random < 2
trigger1 = (p2dist x) > 150
trigger1 = (p2dist x) < 160
;---------------------------------------------------------------------------
;ai Teleport
[State -1, ai Teleport]
type = ChangeState
value = 6008
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = movetype = H
trigger1 = random < 2
;---------------------------------------------------------------------------
;ai Teleport Counter
[State -1, ai Teleport Counter]
type = ChangeState
value = 6013
triggerall = var(10) = 1
triggerall = power >= 1500
trigger1 = movetype = H
trigger1 = random < 2
;---------------------------------------------------------------------------
;ai Teleport Back ground
[State -1, ai Teleport Back ground]
type = ChangeState
value = 6007
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = random > 180 && random < 195
trigger1 = (p2dist x) < 40
;---------------------------------------------------------------------------
;ai Teleport Back air
[State -1, ai Teleport Back air]
type = ChangeState
value = 6007
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = random > 115 && random < 125
trigger1 = (p2dist x) < 40
