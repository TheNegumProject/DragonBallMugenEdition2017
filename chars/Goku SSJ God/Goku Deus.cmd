;COMANDOS Goku Deus BY MUGENMUNDO -- É AQUI ONDE A MAGIA ACONTECE .. LITERALMENTE!

;--------Burrice Artificial-----------
[Command]
name = "IA1"
command = D, DF, F, b,a
time = 1
[Command]
name = "IA2"
command = D, DF, F, b,a+b
time = 1
[Command]
name = "IA3"
command = D, DF, F, c,a+b+c
time = 1
[Command]
name = "IA4"
command = D, DF, F, x,a+b+c+z
time = 1
[Command]
name = "IA5"
command = D, DF, F, x,a+b+c+z+x
time = 1
[Command]
name = "IA6"
command = D, DF, F, b,a+b+c+z+x+y
time = 1
[Command]
name = "IA7"
command = D, DF, F, b,a+b+c+z+x+y+U
time = 1
[Command]
name = "IA8"
command = D, DF, F, c,a+b+c+z+x+y+U+D
time = 1
[Command]
name = "IA9"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
time = 1
[Command]
name = "IA10"
command = D, DF, F, x
time = 1
[Command]
name = "IA11"
command = D, DF, F, b
time = 1
[Command]
name = "IA12"
command = D, DF, F, b
time = 1
[Command]
name = "IA13"
command = D, DF, F, c,D, DF, F
time = 1
[Command]
name = "IA14"
command = D, DF, F ,D, DF, F
time = 1
[Command]
name = "IA15"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F
time = 1
[Command]
name = "IA16"
command = D, DF, F, b,a+b+c+z+x+y+U+D
time = 1
[Command]
name = "IA17"
command = D, DF, F, b,a+b+c+z+x+y+U
time = 1
[Command]
name = "IA18"
command = D, DF, F, c,a+b+c+z+x+y
time = 1
[Command]
name = "IA19"
command = D, DF, F, x,a+b+c+z+x
time = 1
[Command]
name = "IA20"
command = D, DF, F, x,a+b+c+z
time = 1
[Command]
name = "IA21"
command = D, DF, F, b,a+b+c
time = 1
[Command]
name = "IA22"
command = D, DF, F, b,a+b
time = 1
[Command]
name = "IA23"
command = D, DF, F, c,a+b+c+x+y+U+D+F+B
time = 1
[Command]
name = "IA24"
command = D, DF, F, x,a+c+z+x+y+U+D+F+B
time = 1
[Command]
name = "IA25"
command = D, DF, F, x,a+b+c+z+x+y+U+D+F+B
time = 1
[Command]
name = "IA26"
command = D, DF, F, b,a+b+c+z+x+y+U+F+B
time = 1
[Command]
name = "IA27"
command = D, DF, F, b,a+b+c+x+y+U+D+F
time = 1
[Command]
name = "IA28"
command = D, DF, F, c,a+b+c+z+x+y+F+B
time = 1
[Command]
name = "IA29"
command = D, DF, F, x,a+b+x+y+U+D+F+B
time = 1
[Command]
name = "IA30"
command = D, DF, F, x,b+c+z+x+y+U+D+F+B
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

;-| Hyper Motions |--------------------------------------------------------
[Command]
name = "Genkidama"
command = B,D,F,a+b
time = 40
;--------------------------------------------------------------------------
[Command]
name = "Super Barrage"
command = B,D,F,x+y
time = 40
;--------------------------------------------------------------------------
[Command]
name = "Super Kamehameha"
command = B,D,F,b+c
time = 40
;--------------------------------------------------------------------------
[Command]
name = "Super Dragon Fist"
command = B,D,F,y+z
time = 40
;-| Super Motions |--------------------------------------------------------
;Kamehameha Rebirth
[Command]
name = "Kamehameha Deus"
command =B,D,F,x
time = 25
;-----------------------------------------------------------------
;Super Kienzan
[Command]
name = "Kienzan"
command = B,D,F,y
time = 25
;-----------------------------------------------------------------
;Golpe do Dragão
[Command]
name = "Golpe do Dragão"
command = B,D,F,z
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "Fireball"
command = B,F,a
time = 10
;-----------------------------------------------------------------
[Command]
name = "Fireball2"
command = B,F,b
time = 10
;-----------------------------------------------------------------
[Command]
name = "Fireball3"
command = B,F,c
time = 10
;-----------------------------------------------------------------
[Command]
name = "Combo1"
command = D,F,x
time = 10
;-----------------------------------------------------------------
[Command]
name = "Combo2"
command = D,F,y
time = 10
;-----------------------------------------------------------------
[Command]
name = "Combo3"
command = D,F,z
time = 10
;-----------------------------------------------------------------
[Command]
name = "Combo4"
command = D,F,a
time = 10
;-----------------------------------------------------------------
[Command]
name = "Combo5"
command = D,F,b
time = 10
;----------------------------------------------------------------
[Command]
name = "Combo6"
command = D,F,c
time = 10
;-----------------------------------------------------------------
[Command]
name = "Mini1"
command =D,B,a
time = 10
;-----------------------------------------------------------------
[Command]
name = "Mini2"
command =D,B,b
time = 10
;-----------------------------------------------------------------
[Command]
name = "Mini3"
command =D,B,c
time = 10
;-----------------------------------------------------------------
[Command]
name = "Mini4"
command =D,B,x
time = 10
;-----------------------------------------------------------------
[Command]
name = "Mini5"
command =D,B,y
time = 10
;-----------------------------------------------------------------
[Command]
name = "Mini6"
command =D,B,z
time = 10
;-----------------------------------------------------------------
[Command]
name = "Mini kame"
command = B,F,y
time = 10
;-----------------------------------------------------------------
[Command]
name = "Explosão de vento"
command = B,F,z
time = 10
;---------------------------CHARGE--------------------------------
[Command]
name = "carregar ki"
command = /a

[Command]
name = "carregar ki2"
command = /b
;------------FLY---------------
[Command]
name = "fly"
command = b+y
time = 1
;------------SUPER JUMP---------------
[Command]
name = "SuperJump"
command = $D, $U
;------------TAIOKEN---------------
[Command]
name = "Taioken"
command =B,F,x
time = 15
;---------MODO INVENCIVEL--------
[Command]
name = "Invencivel"
command =a+b
time = 35
;---------TELETRANSPORTE---------
[Command]
name = "teleport"
command =a+x
time = 35
;---------EXPLOSÃO DE KI---------
[Command]
name = "Explosão de Ki"
command =x+y+z
time = 35

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
;----------------INTELIGENCIA ARTIFICIAL-------------------------------
[State -1]
type = varset
triggerall = var(6) != 1
trigger1 = command = "IA1"
trigger2 = command = "IA2"
trigger3 = command = "IA3"
trigger4 = command = "IA4"
trigger5 = command = "IA5"
trigger6 = command = "IA6"
trigger7 = command = "IA7"
trigger8 = command = "IA8"
trigger9 = command = "IA9"
trigger10 = command = "IA10"
trigger11 = command = "IA11"
trigger12 = command = "IA12"
trigger13 = command = "IA13"
trigger14 = command = "IA14"
trigger15 = command = "IA15"
trigger16 = command = "IA16"
trigger17= command = "IA17"
trigger18= command = "IA18"
trigger19= command = "IA19"
trigger20= command = "IA20"
trigger21 = command = "IA21"
trigger22 = command = "IA22"
trigger23 = command = "IA23"
trigger24 = command = "IA24"
trigger25 = command = "IA25"
trigger26 = command = "IA26"
trigger27 = command = "IA27"
trigger28 = command = "IA28"
trigger29 = command = "IA29"
trigger30 = command = "IA30"
trigger3= stateno = 1500
v = 6
value = 1
;----------------------------------------------------------
; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
trigger1 = (command = "FF") && statetype = A && ctrl && (stateno != 100 || stateno != 102)
;---------------------------------------------------------------------------

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
;----------------COMBOS-----------------------------------
[State -1, Combo1]
type = ChangeState
value = 876
triggerall = command = "Combo1"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>500
trigger3= stateno = 1500
;---------------------------------------------------------
[State -1, Combo2]
type = ChangeState
value = 877
triggerall = command = "Combo2"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>500
trigger3= stateno = 1500
;---------------------------------------------------------
[State -1, Combo3]
type = ChangeState
value = 878
triggerall = command = "Combo3"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>500
trigger3= stateno = 1500
;---------------------------------------------------------
[State -1, Combo4]
type = ChangeState
value = 869
triggerall = command = "Combo4"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>500
trigger3= stateno = 1500
;----------------------------------------------------------
[State -1, Combo5]
type = ChangeState
value = 865
triggerall = command = "Combo5"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>500
trigger3= stateno = 1500
;---------------------------------------------------------
[State -1, Combo5]
type = ChangeState
value = 2010
triggerall = command = "Combo6"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>500
trigger3= stateno = 1500
;----------------------------------------------------------
[State -1, Mini Kame]
type = ChangeState
value = 1728
triggerall = command = "Mini kame"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>500
trigger3= stateno = 1500

[State -1, Explosão de vento]
type = ChangeState
value = 7999
triggerall = command = "Explosão de vento"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>500
trigger3= stateno = 1500
;-----------------------------------------------------------
;MINI COMBOS
;-----------------------------------------------------------
[State -1, Mini1]
type = ChangeState
value = 255
triggerall = command = "Mini1"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>100
trigger3= stateno = 1500
;--------------------------------------------------------
[State -1, Mini2]
type = ChangeState
value = 256
triggerall = command = "Mini2"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>150
trigger3= stateno = 1500
;-------------------------------------------------------
[State -1, Mini3]
type = ChangeState
value = 257
triggerall = command = "Mini3"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>170
trigger3= stateno = 1500
;==================================================
[State -1, Mini4]
type = ChangeState
value = 258
triggerall = command = "Mini4"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>170
trigger3= stateno = 1500
;--------------------------------------------------
[State -1, Mini5]
type = ChangeState
value = 259
triggerall = command = "Mini5"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>170
trigger3= stateno = 1500
;-------------------------------------------------
[State -1, Mini6]
type = ChangeState
value = 260
triggerall = command = "Mini6"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>170
trigger3= stateno = 1500
;--------------------------
;Fireballs
[State -1,Fireball]
type = ChangeState
value = 999
triggerall = command = "Fireball"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 1500
trigger2 = time > 18
triggerall=power>100
;---------------------------------------------------------
[State -1,Fireball]
type = ChangeState
value = 998
triggerall  = command = "Fireball2"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 1500
trigger2 = time > 18
triggerall=power>100
;---------------------------------------------------------
[State -1,Fireball]
type = ChangeState
value = 997
triggerall  = command = "Fireball3"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger3 = stateno = 1500
trigger2 = time > 18
triggerall=power>100
;===========================================================================
[State -1,Taioken]
type = ChangeState
value = 5055
trigger1 = command = "Taioken"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>100
;--------------------------------------------------
[State -1,Invencivel]
type = ChangeState
value = 7300
trigger1 = command = "Invencivel"
triggerall=power>2800
triggerall = var(18) = 0
trigger1 = statetype = S
trigger1 = ctrl
;--------------------------------------------------
[State -1,Explosão de Ki]
type = ChangeState
value = 7200
trigger1 = command = "Explosão de Ki"
triggerall=power>2800
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Kamehameha Goku Deus
[State -1,Kamehameha Deus]
type = ChangeState
value = 1999
triggerall = command = "Kamehameha Deus"
triggerall = var (9) =0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2000
;---------------------------------------------------------------------------
[State -1,Kamehameha Deus no Ar]
type = ChangeState
value = 2799
triggerall = command = "Kamehameha Deus"
triggerall = var (9) =0
trigger1 = (statetype = A) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2000
trigger3= stateno = 1500
;---------------------------------------------------------------------------
[State -1, Kienzan]
type = ChangeState
value = 1998
triggerall = command = "Kienzan"
trigger1 = (statetype = s) && ctrl
triggerall = var (9) =0
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2000
trigger3= stateno = 1500
;---------------------------------------------------------------------------
[State -1, Golpe do Dragão]
type = ChangeState
value = 1996
triggerall = command = "Golpe do Dragão"
triggerall = var (9) =0
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2500
trigger3= stateno = 1500
;===========================================================================
;Super Kamehameha
[State -1,Super Kamehameha]
type = changestate
value = 2999
trigger1 = command = "Super Kamehameha"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2000

;==========================================================================
;Genkidama
[State -1,Genkidama]
type = ChangeState
value = 3999
trigger1 = command = "Genkidama"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2700
;==========================================================================
;Super Barrage
[State -1,Super Barrage]
type = ChangeState
value = 4999
trigger1 = command = "Super Barrage"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2500

;Super Dragon Fist
[State -1,Super Dragon Fist]
type = changestate
value = 5999
trigger1 = command = "Super Dragon Fist"
trigger1 = (statetype = s) && ctrl
trigger2 = stateno = 200
trigger2 = time > 18
triggerall=power>2800
;------------------CHARGE---------------------------------------------
[State -1]
type = ChangeState
value = 730
triggerall = power <2800
triggerall = var (9) =0
triggerall = ctrl = 1
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = statetype = S
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 730
triggerall = var (9) =0
triggerall = power <3000
trigger1 = ctrl = 0
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = stateno = 1500
;---------------------------------------------------------------------------
;Fly
[State -1, Fly]
type = ChangeState
value = 1500
triggerall = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Fly
[State -1, Fly]
type = ChangeState
value = 1510
triggerall = command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Super Jump
[State -1,Super Jump]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="SuperJump"
triggerall=alive
triggerall=pos y>=0
triggerall=!win
trigger1=(statetype!=A&&ctrl)
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger3= stateno = 41
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger3= stateno = 41
trigger1 = ctrl

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
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
trigger1 = statetype = S && Pos y >= 0
triggerall = command = "s"
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Teleport]
type = ChangeState
value = 1095
triggerall = command = "a"
triggerall = command = "x"
triggerall = power >100
trigger2 = stateno = 200
trigger3= stateno = 1500
trigger4= stateno = 5000
trigger5= stateno = 5005
trigger6= stateno = 5010
trigger7= stateno = 5050
trigger8= stateno = 5030
trigger9= stateno = 5110
trigger10= stateno = 5100
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
trigger2 = stateno = 210 & Movehit=1
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "y"
trigger2 = stateno = 200
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 220
triggerall = command = "z"
trigger2 = stateno = 200
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Stand Light Punch]
type = ChangeState
value = 230
triggerall = command = "a"
trigger2 = stateno = 200
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Stand Light Punch]
type = ChangeState
value = 240
triggerall = command = "b"
trigger2 = stateno = 200
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 250
triggerall = command = "c"
trigger2 = stateno = 200
trigger3= stateno = 1500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
