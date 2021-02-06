;-| Button Remapping |-----------------------------------------------------
[Remap]
x = y
y = x
z = z
a = b
b = a
c = c
s = s
;-| Default Values |------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Motions |-------------------------------------------------------------


[Command]
name = "KHHL1"
command = ~D, DF, D, DF, x
time = 20

[Command]
name = "KHHL2"
command = ~D, DF, D, DF, y
time = 20


[Command]
name = "KX20a"
command = ~D, DB, B, D, DB, B, a
time = 25

[Command]
name = "KX20b"
command = ~D, DB, B, D, DB, B, b
time = 25


[Command]
name = "Genki Dama"
command = ~D, B, F, x
time = 30


[Command]
name = "Genki Dama"
command = ~D, B, F, y
time = 30


[Command]
name = "KX20y"
command = ~D, DB, B, D, DB, B, y
time = 20


[Command]
name = "KX20x"
command = ~D, DB, B, D, DB, B, x
time = 20


;-| Special Motions |------------------------------------------------------
[Command]
name = "KX10x"
command = ~D, DF, F, x
time = 20

[Command]
name = "KX10y"
command = ~D, DF, F, y
time = 20


[Command]
name = "Kaioken Down"
command = ~D, DF, F, a
time = 20

[Command]
name = "Kaioken Down"
command = ~D, DF, F, b
time = 20

[Command]
name = "Kaioken Toss"
command = ~B, DB, D, DF, F, x
time = 20

[Command]
name = "Kaioken Toss"
command = ~B, DB, D, DF, F, y
time = 20

[Command]
name = "KKx10Ua"
command = ~D, DB, B, a
time = 20

[Command]
name = "KKx10Ub"
command = ~D, DB, B, b
time = 20

[Command]
name = "KKx10Fx"
command = ~D, DB, B, x
time = 20

[Command]
name = "KKx10Fy"
command = ~D, DB, B, y
time = 20


[command]
name ="zanzoken"
command = a+x
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


[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10


[Command]
name = "superj"
command = $D, $U
time = 10
buffer.time = 10

[Command]
name = "superj"
command = ~D, UF
time = 10

[Command]
name = "superj"
command = ~D, UB
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery2";Required (do not remove)
command = x+y+a
time = 10

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "KnockAway";Required (do not remove)
command = x+a
time = 5


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "superj"
command = ~$D, $U
time = 10

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b

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

[Command]
name = "charge"
command = /$c
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 2

[Command]
name = "holdback"
command = /$B
time = 2

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
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
name = "holds"
command = /s
time = 1

[Command]
name = "holdupandfwd";Required (do not remove)
command = /UF
time = 1

[Command]
name = "holdupandback";Required (do not remove)
command = /UB
time = 1

[Command]
name = "holddownandfwd";Required (do not remove)
command = /DF
time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;---------------------------------------------------------------------------
;-------------------------------SUPERS--------------------------------------
;---------------------------------------------------------------------------



;Kamehameha Beam
[State -1, KX20,A]
type = ChangeState
value = 3610
triggerall = command = "KHHL2" && Power>=2000
trigger1 = statetype!=A&&ctrl
trigger2 = (stateno =[200,231]) && movecontact

;Kamehameha Blast
[State -1, KX20,A]
type = ChangeState
value = 3600
triggerall = command = "KHHL1" && power>=1000 ||  command = "KHHL2" && Power>=1000
trigger1 = statetype!=A&&ctrl
trigger2 = (stateno =[200,231]) && movecontact


;Genki Dama
[State -1, KX10,hard]
type = ChangeState
value = 3500
triggerall = command = "Genki Dama" && power>=3000
trigger1 = statetype!=A&&ctrl
trigger2 = (stateno =[200,231]) && movecontact


;Kaioken Super Assualt
[State -1, KX20,A]
type = ChangeState
value = 2500
triggerall = command = "KX20a" && Power>=1000
trigger1 = statetype!=A&&ctrl
trigger2 = (stateno =[200,231]) && movecontact

;Kaioken Super Assualt
[State -1, KX20,B]
type = ChangeState
value = 2500
triggerall = command = "KX20b"&& Power>=1000
trigger1 = statetype!=A&&ctrl
trigger2 = (stateno =[200,231]) && movecontact

;Kaioken Super Assualt 2
[State -1, KSA2X]
type = ChangeState
value = 3000
triggerall = command = "KX20x" && power>=1000
trigger1 = statetype!=A&&ctrl
trigger2 = (stateno =[200,231]) && movecontact

;----------------------------------------------------
;Kaioken Super Assualt 2
[State -1, KSA2Y]
type = ChangeState
value = 3000
triggerall = command = "KX20y" && power>=1000
trigger1 = statetype!=A&&ctrl
trigger2 = (stateno =[200,231]) && movecontact

;-|specials|-----------------------------------------------------------------------
;Kaioken Foward assualt
[State -1, Kaio Flip]
type = ChangeState
value = 734
triggerall = command = "KKx10Fx"
trigger1 = statetype = S && ctrl
trigger2 = (stateno =[200,231]) && movecontact
;-------------------------------------------------------------------------------
;Kaioken Foward Ki assualt
[State -1, Kaio Flip]
type = ChangeState
value = 734
triggerall = command = "KKx10Fy"
trigger1 = statetype = S && ctrl
trigger2 = (stateno =[200,231]) && movecontact
;-------------------------------------------------------------------------------
[State -1, Kaioken toss up ]
type = ChangeState
value = 737
triggerall = command = "Kaioken Toss"
trigger1 = statetype = S && ctrl
trigger1 = (p2statetype != A)
trigger2 = (stateno =[200,231]) && movecontact

;Kaioken - Charge-Khh
[State -1, KX10,hard]
type = ChangeState
value = 705
triggerall = command = "KX10y"
trigger1 = statetype!=A&&ctrl
trigger2 = (stateno =[200,231]) && movecontact

;-----------------------------------------------
;Kaioken -Charge-Elbow
[State -1, KX10,light]
type = ChangeState
value = 700
triggerall = command = "KX10x"
trigger1 = statetype!=A&&ctrl
trigger2 = (stateno =[200,231]) && movecontact


;------------------------------------------------------------------
;Kaioken hammer smash
[State -1, hammer smash]
type = ChangeState
value = 724
triggerall = command = "KKx10Ua"
trigger1 = statetype = S && ctrl
trigger2 = (stateno =[200,231]) && movecontact

;------------------------------------------------------------------
;Kaioken Airial Khh
[State -1, hammer smash]
type = ChangeState
value = 729
triggerall  = command = "KKx10Ub"
trigger1  = statetype = S && ctrl
trigger2 = (stateno =[200,231]) && movecontact


;------------------------------------------------------------------
;Kaioken Down
[State -1, Kaioken Down]
type = ChangeState
value = 764
triggerall = command = "Kaioken Down"  && Stateno != 55
trigger1 = statetype != A && ctrl
trigger2 = (stateno =[200,231]) && movecontact

;-------------------------------------------------------------------------------
; Super Jump - Launcher
[State -1:      SJ - Launcher]
type            = ChangeState
value      = 54
triggerall      = (command = "holdup")
triggerall      = (!statetype = A)
trigger1	= (stateno = 445) && MoveHit
Trigger2        = (StateNo = 202) && AnimElem = 2, > 4
;---------------------------------------------------------------------------

; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 60
trigger1 = command = "FF" && statetype = A && ctrl && (stateno != 100 || stateno != 60)
trigger2 = command = "FF" && (stateno = [630,640]) && time > 25
;---------------------------------------------------------------------------
;Run BACK AIR
[State -1, Run Fwd]
type 			= ChangeState
value 		= 65
trigger1 = command = "BB" && statetype = A && ctrl && (stateno != 105 || stateno != 65)
trigger2 = command = "BB" && (stateno = [630,640]) && time > 25
;-------------------------------------------------------------------------------

[State -1, AirUp]
type = ChangeState
value = 109
triggerall = var(4) = 0
trigger1 = command = "UU" && statetype = A && ctrl
trigger2 = command = "UU" && (stateno = [630,640]) && time > 25


;PowerUp
[State -1, ChargePower]
type = ChangeState
value = 801
triggerall      = ((command = "holdy") && (command = "holdb"))
triggerall = power < 3000
trigger1        = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;-------------------------------BASICS--------------------------------------
;---------------------------------------------------------------------------
;Run Fwd
[State -1, RunFwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl && (stateno != 100 || stateno != 102)

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------

;zanzoken back
[State -1, Zanzoken back]
type = ChangeState
value = 501
trigger1 = command = "zanzoken" && command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------
;Zanzoken
[State -1, Zanzoken]
type = ChangeState
value = 500
trigger1 = command = "zanzoken"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------

;Zanzoken jump
[State -1, Zanzoken jump]
type = ChangeState
value = 510
trigger1 = command = "zanzoken"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;grab
[State -1, SWP]
type = ChangeState
triggerall      = (command = "holdfwd") && (command = "y")
trigger1        = (statetype = S) && (ctrl)
trigger1        = (stateno != 100) && (p2movetype != H)
trigger1        = (p2statetype != A) && (P2bodydist X <= 8)
value = 749
;------------------------------------------------------------------------------
;============================|Advanced|=========================================

;Ki Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 634) && animelem = 4,>4
value = 635
;-------------------------------------------------------------------------------

;Melee Chain Attack  (After Taioken----Ki toss)
[State -1, KA04]
type = ChangeState
triggerall      = (command = "x")
Trigger1        = (StateNo = 604) && AnimElem = 4, > 2
value = 633
;-------------------------------------------------------------------------------
;Ki Attack 01
[State -1, KA01]
type = ChangeState
triggerall      = (command = "b")
trigger1        = (stateno = 220) && movehit && animelem = 4,>3
value = 632
;-------------------------------------------------------------------------------

;Ki Attack 01
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 231) && animelem = 4,>2
value = 631
;-------------------------------------------------------------------------------
;Ki Attack 01
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 230) && animelem = 3,>5
value = 630
;-------------------------------------------------------------------------------
;Melee Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "x")
trigger1        = (StateNo = 211) && AnimElem = 4, > 3
value = 629
;-------------------------------------------------------------------------------
;Power Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
Trigger1        = (StateNo = 622) && AnimElem = 2, > 3
value = 628
;-------------------------------------------------------------------------------
;Agilty Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "b")
Trigger1        = (StateNo = 626) && movehit && AnimElem = 4, > 10
trigger2        = (stateno = 629) && movehit && animelem = 4,>1
value = 627
;-------------------------------------------------------------------------------

;Power Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "a")
Trigger1        = (StateNo = 202) && AnimElem = 2, > 4
value = 626
;-------------------------------------------------------------------------------

;Ki Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "x")
trigger1        = (stateno = 606) && animelem = 3,>3
value = 625
;-------------------------------------------------------------------------------

;Melee Chain Attack  (After knee)
[State -1, KA04]
type = ChangeState
triggerall      = (command = "x")
trigger1        = (stateno = 616) && animelem = 3, >5
value = 624

;-------------------------------------------------------------------------------
;Ki Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 606) && animelem = 3,>2
value = 619
;-------------------------------------------------------------------------------
;Agilty Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "b")
trigger1        = (stateno = 615) && animelem = 3,>2
Trigger2        = (StateNo = 202) && movehit && AnimElem = 2, > 2
trigger3        = (StateNo = 211) && movehit && AnimElem = 5, > 1
value = 618
;-------------------------------------------------------------------------------
;Ki Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 618) && animelem = 3,>2
Trigger2        = (StateNo = 601) && AnimElem = 4, > 2
Trigger3        = (StateNo = 630) && AnimElem = 4,> 2
value = 623
;-------------------------------------------------------------------------------

;Ki Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 615) && animelem = 3,>2
Trigger2        = (StateNo = 202) && AnimElem = 2, > 4
trigger3        = (stateno = 211) && animelem = 4,>2
trigger4        = (stateno = 629) && animelem = 4,>1
value = 622
;-------------------------------------------------------------------------------
;Ki Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 616) && animelem = 3,>5
value = 617
;-------------------------------------------------------------------------------
;Power chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "a")
trigger1        = (stateno = 615) && animelem = 3,>2
value = 616
;-------------------------------------------------------------------------------

;Agilty Chain Attack
[State -1, MA01]
type            = ChangeState
Triggerall      = Command = "b"
Trigger1        = (StateNo = 201) && movehit && AnimElem = 3, > 2
value      = 615
;-------------------------------------------------------------------------------

;Ki Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
Trigger1        = (StateNo = 604) && AnimElem = 4, > 3
Trigger2        = (StateNo = 626) && AnimElem = 4, > 10
value = 614
;-------------------------------------------------------------------------------

;Agilty Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "b")
Trigger1        = (StateNo = 607) && movehit && AnimElem = 3, > 8
Trigger2        = (StateNo = 630) && movehit && AnimElem = 4, > 2
trigger3        = (stateno = 221) && movehit && animelem = 4, > 7
Trigger4        = (StateNo = 632) && movehit && AnimElem = 3, > 8

value = 613

;-------------------------------------------------------------------------------
;Melee Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "x")
Trigger1        = (StateNo = 601) && AnimElem = 4, > 1
Trigger2        = (StateNo = 622) && AnimElem = 2, > 8
trigger3        = (stateno = 629) && animelem = 4,>1
trigger4        = (stateno = 634) && animelem = 4,>4
value = 612
;-------------------------------------------------------------------------------
;Melee Chain Attack  (After Taioken----Ki toss)
[State -1, KA04]
type = ChangeState
triggerall      = (command = "x")
Trigger1        = (StateNo = 610) && AnimElem = 4, > 2
trigger2        = (stateno = 616) && animelem = 3, >5
Trigger3        = (StateNo = 626) && AnimElem = 4, > 5
Trigger4        = (StateNo = 604) && AnimElem = 4, > 2
value = 611

;-------------------------------------------------------------------------------
;Ki Chain Attack ( Ki Toss after taioken)
[State -1, KA04]
type = ChangeState
triggerall      = (command = "y")
Trigger1        = (StateNo = 600) && AnimElem = 3, > 6
value = 610

;-------------------------------------------------------------------------------
;Agilty Chain Attack M2
[State -1, KA01]
type = ChangeState
triggerall      = (command = "b")
Trigger1        = (StateNo = 604) && movehit && AnimElem = 4, > 3
Trigger2        = (StateNo = 203) && movehit && AnimElem = 3, > 2
trigger3        = (stateno = 618) && movehit && animelem = 3, >2
trigger4        = (stateno = 616) && movehit && animelem = 4, >3
trigger5        = (StateNo = 212) && movehit && AnimElem = 3, > 4
trigger6        = (stateno = 634) && movehit && animelem = 4, > 6
value = 605
;-------------------------------------------------------------------------------

;Ki Chain Attack M2
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
Trigger1        = (StateNo = 607) && AnimElem = 3, > 3
Trigger2        = (StateNo = 632) && AnimElem = 3, > 3
value = 608
;-------------------------------------------------------------------------------

;Agilty Chain Attack M2
[State -1, KA01]
type = ChangeState
triggerall      = (command = "b")
Trigger1        = (StateNo = 606) && movehit && AnimElem = 3, > 5
Trigger2        = (StateNo = 622) && AnimElem = 2, > 5
value = 621
;-------------------------------------------------------------------------------
;Agilty Chain Attack M2
[State -1, KA01]
type = ChangeState
triggerall      = (command = "x")
Trigger1        = (StateNo = 603) && AnimElem = 4, > 3
value = 634
;-------------------------------------------------------------------------------
;Agilty Chain Attack M2
[State -1, KA01]
type = ChangeState
triggerall      = (command = "b")
Trigger1        = (StateNo = 603) && movehit && AnimElem = 4, > 15
value = 607
;-------------------------------------------------------------------------------

;Ki Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
Trigger1        = (StateNo = 603) && AnimElem = 4, > 1
value = 604
;-------------------------------------------------------------------------------
;Power Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "a")
Trigger1        = (StateNo = 201)&& AnimElem = 3, > 5
value = 603
;-------------------------------------------------------------------------------
;Agilty Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "b")
Trigger1        = (StateNo = 601) && AnimElem = 4, > 2
value = 602
;-------------------------------------------------------------------------------

;Agilty Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "b")
trigger1        = (stateno = 610) && movehit && animelem = 3,>3
value = 620
;-------------------------------------------------------------------------------

;Agilty Chain Attack
[State -1, KA01]
type = ChangeState
triggerall      = (command = "b")
Trigger1        = (StateNo = 600) && movehit && AnimElem = 3, > 6
value = 606
;-------------------------------------------------------------------------------
;Power Chain Attack M1
[State -1, KA01]
type = ChangeState
triggerall      = (command = "a")
Trigger1        = (StateNo = 600) && AnimElem = 3, > 6
value = 601
;-------------------------------------------------------------------------------
;Ki Chain Attack M1
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
Trigger1        = (StateNo = 201) && AnimElem = 4, > 1
value = 600

;============================|Air|==============================================
;Air Aigilty Attack 02
[State -1, MA00]
type = ChangeState
triggerall      = (command = "b") && power >=200
trigger1        = (stateno = 431) && animelem = 4,>3
Trigger2        = (StateNo = 401) && AnimElem = 4, >4
trigger3        = (stateno = 410) && Animelem = 3,>5
value = 432
;-------------------------------------------------------------------------------
;Air Aigilty Attack 01
[State -1, MA00]
type = ChangeState
triggerall      = (command = "b") && power >=200
trigger1        = (stateno = 430) && Movehit && animelem = 3,>3
value = 431

;-------------------------------------------------------------------------------
;Air Agilty Attack 00
[State -1, MA00]
type = ChangeState
triggerall      = (command = "b") && power >=200
trigger1        = (statetype = A) && (ctrl)
value = 430
;-------------------------------------------------------------------------------

;Air Ki Attack 02
[State -1, MA00]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 421) && animelem = 2,>5
Trigger2        = (StateNo = 401) && AnimElem = 4, >4
trigger3        = (stateno = 410) && Animelem = 3,>5
value = 422

;-------------------------------------------------------------------------------

;Air Ki Attack 01
[State -1, AK01]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 420) && animelem = 2,>1
value = 421

;-------------------------------------------------------------------------------

;Air Ki Attack 00
[State -1, AA00]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (statetype = A) && (ctrl)
value = 420

;-------------------------------------------------------------------------------
;Air Power Attack 01
[State -1, AP00]
type = ChangeState
triggerall      = (command = "a")
trigger1        = (stateno = 410) && Animelem = 3,>5
Trigger2        = (StateNo = 401) && AnimElem = 4, >4
value = 411
;-------------------------------------------------------------------------------
;Air Power Attack 00
[State -1, MA00]
type = ChangeState
triggerall      = (command = "a")
trigger1        = (statetype = A) && (ctrl)
value = 410
;-------------------------------------------------------------------------------

;Air Melee Attack 02
[State -1, AM02]
type            = ChangeState
Triggerall      = Command = "x"
Trigger1        = (StateNo = 401) && AnimElem = 4, >4
trigger2        = (stateno = 410) && Animelem = 3,>5
value = 402
;-------------------------------------------------------------------------------
;Air Melee Attack 01
[State -1, AM01]
type            = ChangeState
Triggerall      = Command = "x"
Trigger1        = (StateNo = 400) && AnimElem = 2, >4
value = 401
;-------------------------------------------------------------------------------
;Air Melee Attack 00
[State -1, AM00]
type = ChangeState
triggerall      = (command = "x") && prevstateno !=401
trigger1        = (statetype = A) && (ctrl)
value = 400
;-------------------------------------------------------------------------------

;===========================|Ground|============================================
;Agilty Attack 03
[State -1, AA03]
type = ChangeState
triggerall      = (command = "b")
trigger1        = (stateno = 232) && animelem = 4,>4
value = 234
;-------------------------------------------------------------------------------
;Agilty Attack 02
[State -1, AA02]
type = ChangeState
triggerall      = (command = "b")
trigger1        = (stateno = 231) && Movehit && animelem = 4,>1
value = 232

;-------------------------------------------------------------------------------
;Agilty Attack 01
[State -1, AA01]
type = ChangeState
triggerall      = (command = "b")
trigger1        = (stateno = 230) && animelem = 3,>2
value = 231
;-------------------------------------------------------------------------------
;Agilty Attack 00
[State -1, AA00]
type = ChangeState
triggerall      = (command = "b")
trigger1        = (statetype = S) && (ctrl) || (statetype = C) && (ctrl)
value = 230

;---------------------------------------------------------------------------

;Ki Attack 05
[State -1, KA05]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 224) && animelem = 2,>1
trigger2        = (stateno = 610) && animelem = 3,>6
Trigger3        = (StateNo = 203) && AnimElem = 3, > 2
trigger4        = (StateNo = 212) && AnimElem = 3, > 4
value = 225

;-------------------------------------------------------------------------------

;Ki Attack 04
[State -1, KA04]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 223) && animelem = 2,>1
value = 224

;-------------------------------------------------------------------------------

;Ki Attack 03
[State -1, KA03]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 222)&& animelem = 2,>4
value = 223

;-------------------------------------------------------------------------------

;Ki Attack 02
[State -1, KA02]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 221)&& movehit && animelem = 4,>1
value = 222

;-------------------------------------------------------------------------------

;Ki Attack 01
[State -1, KA01]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (stateno = 220) && animelem = 4,>3
value = 221

;-------------------------------------------------------------------------------
;Ki Attack 00
[State -1, KA00]
type = ChangeState
triggerall      = (command = "y")
trigger1        = (statetype = S) && (ctrl) || (statetype = C) && (ctrl)
value = 220
;---------------------------------------------------------------------------

;Power Attack 03
[State -1, PA03]
type = ChangeState
triggerall      = (command = "a")
trigger1        = (StateNo = 212) && AnimElem = 3, > 4
Trigger2        = (StateNo = 203) && AnimElem = 2, > 4
value = 213
;-------------------------------------------------------------------------------
;Power Attack 02
[State -1, PA02]
type = ChangeState
triggerall      = (command = "a")
trigger1        = (StateNo = 211) && AnimElem = 3, > 5
value = 212
;-------------------------------------------------------------------------------
;Power Attack 01
[State -1, PA01]
type = ChangeState
triggerall      = (command = "a")
trigger1        = (StateNo = 210) && AnimElem = 4, > 2
value = 211

;-------------------------------------------------------------------------------
;Power Attack 00
[State -1, Power Attack 00]
type = ChangeState
triggerall      = (command = "a")
trigger1        = (statetype = S) && (ctrl) || (statetype = C) && (ctrl)
value = 210
;-------------------------------------------------------------------------------
;Melee Attack 04
[State -1,Melee Attack 04]
type            = ChangeState
value      = 204
Triggerall      = Command = "x"
Trigger1        = (StateNo = 203) && AnimElem = 2, > 4
trigger2        = (stateno = 618) && animelem = 3,>2
trigger3        = (StateNo = 212) && AnimElem = 3, > 4
;-------------------------------------------------------------------------------
;Melee Attack 03
[State -1, Melee Attack 03]
type            = ChangeState
value      = 203
Triggerall      = Command = "x"
Trigger1        = (StateNo = 202) && AnimElem = 2, > 4
trigger2        = (stateno = 615) && animelem = 3, >2
Trigger3        = (StateNo = 600) && AnimElem = 3, > 6

;-------------------------------------------------------------------------------
;Melee Attack 02
[State -1,Melee Attack 02]
type            = ChangeState
value      = 202
Triggerall      = Command = "x"
Trigger1        = (StateNo = 201) && AnimElem = 3, > 5
;-------------------------------------------------------------------------------
;Melee Attack 01
[State -1,Melee Attack 01]
type            = ChangeState
value      = 201
Triggerall      = Command = "x"
Trigger1        = (StateNo = 200) && AnimElem = 2, >1

;-------------------------------------------------------------------------------
;Melee Attack 00
[State -1,Melee Attack 00]
type = ChangeState
triggerall      = (command = "x")
trigger1        = (statetype = S) && (ctrl) || (statetype = C) && (ctrl)
value = 200

;---------------------------------------------------------------------------

