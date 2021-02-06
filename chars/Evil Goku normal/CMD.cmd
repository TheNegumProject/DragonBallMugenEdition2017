
[Command]
name = "max camehameha"
command =  D, DF, F, z
time = 30
[Command]
name = "ssj5terror"
command = D, DB, B, c
time = 30
[Command]
name = "ssj5flashbatle"
command = D, DF, F, c
time = 30
[Command]
name ="especial de spancamento"
command = D, DB, B, b
time = 30
[Command]
name = "ssj5 sequencia2"
command = D, DB, B, c
time = 10
[Command]
name = "ssj5 sequencia3"
command = D, DF, F, b
time = 10
[Command]
name = "teleporte sequencia"
command =  D, DF, F, a
time = 10
[Command]
name = "ssj5 sequencia"
command =  D, DF, F, b
time = 10
[Command]
name = "sequencia rapida"
command =  D, DF, F, x
time = 10
[Command]
name = "Ki invisivel"
command = D, DF, F, z
time = 30
[Command]
name = "Taioken"
command = D, DB, B, z
time = 30
[Command]
name = "super soco direito"
command = D, DF, F, y
time = 15
[Command]
name = "super soco esquerdo"
command = D, DF, F, x
time = 15
[Command]
name = "teleporte"
command = x+a
time = 1
[Command]
name = "voar"
command = b+y
time = 1
[Command]
name = "Kamehameha fraco"
command = D, DB, B, x
time = 30
[Command]
name = "Kamehameha medio"
command = D, DB, B, a
time = 30
[Command]
name = "Kamehameha forte"
command = D, DB, B, y
time = 30
[Command]
name = "sequencia veloz"
command = ~D, DF, F, a
time = 10
[Command]
name = "sequencia subindo"
command = ~D, DB, B, b
time = 10
[Command]
name = "ataque de magia"
command = D, DB, B, F ,a
time = 30
[Command]
name = "sequencia de chutes"
command = D, DB, B, y
time = 15
[Command]
name = "Super pulo"
command = D, U
time = 15
[Command]
name = "fazer sequencia aerea"
command = F, D, DF, a
time = 30
[Command]
name = "fazer sequencia aerea2"
command = F, D, DF, b
time = 30
[Command]
name = "chute aereo"
command = B, F, a
time = 15
[Command]
name = "chute aereo2"
command = B, F, b
time = 15
[Command]
name = "cotovelada"
command = ~B, F, x
time = 15
[Command]
name = "cotovelada2"
command = ~B, F, y
time = 15
[Command]
name = "provocaçao"
command = s
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
[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "nothing"
command = b+y
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
[Command]
name = "QCF_A"
command = ~D, F, a
time = 10
[Command]
name = "QCF_B"
command = ~D, F, b
time = 10
[Command]
name = "QCF_C"
command = ~D, F, c
time = 10
[Command]
name = "QCF_X"
command = ~D, F, x
time = 10
[Command]
name = "QCF_Y"
command = ~D, F, y
time = 10
[Command]
name = "QCF_Z"
command = ~D, F, z
time = 10
[Command]
name = "QCB_A"
command = ~D, B, a
time = 10
[Command]
name = "QCB_B"
command = ~D, B, b
time = 10
[Command]
name = "QCB_C"
command = ~D, B, c
time = 10
[Command]
name = "QCB_X"
command = ~D, B, x
time = 10
[Command]
name = "QCB_Y"
command = ~D, B, y
time = 10
[Command]
name = "QCB_Z"
command = ~D, B, z
time = 10
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
[Statedef -1]
[State -2, 1]
type = VarSet
triggerall = power >= 5000
triggerall = command = "max camehameha"
triggerall = statetype != A
trigger1 = ctrl
var(0) = 3600
[State -1, Taunt]
type = ChangeState
value = 3600
triggerall = power >= 5000
triggerall = command = "max camehameha"
triggerall = statetype != A
trigger1 = ctrl

[State -1, Flash battle: Disciple style]
type = ChangeState
value = 20009
triggerall = command = "ssj5flashbatle"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact = 1
trigger3 = stateno = 610 && movecontact = 1
trigger4 = (stateno = 630) && movecontact = 1
trigger5 = (stateno = 640) && movecontact = 1
trigger6 = Stateno = 2051
[State -1, Final meteo]
type = ChangeState
value = 10679
triggerall = command = "ssj5terror"
triggerall = power >= 2000
trigger1 = statetype = S
trigger2 = stateno = 202
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 214
trigger8 = MoveContact
trigger9 = stateno = 300
trigger9 = MoveContact
trigger10 = stateno = 301
trigger10= MoveContact
trigger11= stateno = 302
trigger11= MoveContact
trigger12= stateno = 303
trigger12= MoveContact
trigger13= stateno = 400
trigger13= MoveContact
trigger14= stateno = 405
trigger14= MoveContact
trigger15= stateno = 401
trigger15= MoveContact
trigger16= stateno = 402
trigger16= MoveContact
trigger17= stateno = 403
trigger17= MoveContact
trigger18= stateno = 404
trigger18= MoveContact
; Voar
[State -1]
type = ChangeState
value = 1510
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger1 = command = "voar"
[State -1]
type = ChangeState
value = 4321
triggerall = command = "especial de spancamento"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 2991
triggerall = command = "ssj5 sequencia3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 214
trigger8 = MoveContact
trigger9 = stateno = 300
trigger9 = MoveContact
trigger10 = stateno = 301
trigger10= MoveContact
trigger11= stateno = 302
trigger11= MoveContact
trigger12= stateno = 303
trigger12= MoveContact
trigger13= stateno = 400
trigger13= MoveContact
trigger14= stateno = 405
trigger14= MoveContact
trigger15= stateno = 401
trigger15= MoveContact
trigger16= stateno = 402
trigger16= MoveContact
trigger17= stateno = 403
trigger17= MoveContact
trigger18= stateno = 404
trigger18= MoveContact
trigger19= stateno = 1500
[State -1]
type = ChangeState
value = 12345
triggerall = command = "ssj5 sequencia2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3100
trigger2 = MoveContact
trigger3 = stateno = 3400
trigger3 = MoveContact
trigger4 = stateno = 1700
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 215
trigger6 = MoveContact
trigger7 = stateno = 205
trigger7 = MoveContact
trigger8 = stateno = 210
trigger8 = MoveContact
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "provocaçao"
trigger1 = statetype != A
trigger1 = ctrl
[State -1]
type = ChangeState
value = 1235
triggerall = command = "sequencia subindo"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 214
trigger8 = MoveContact
trigger9 = stateno = 300
trigger9 = MoveContact
trigger10 = stateno = 301
trigger10= MoveContact
trigger11= stateno = 302
trigger11= MoveContact
trigger12= stateno = 303
trigger12= MoveContact
trigger13= stateno = 400
trigger13= MoveContact
trigger14= stateno = 405
trigger14= MoveContact
trigger15= stateno = 401
trigger15= MoveContact
trigger16= stateno = 402
trigger16= MoveContact
trigger17= stateno = 403
trigger17= MoveContact
trigger18= stateno = 404
trigger18= MoveContact
[State -1]
type = changestate
value = 10595
triggerall = command = "sequencia veloz"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 214
trigger8 = MoveContact
trigger9 = stateno = 300
trigger9 = MoveContact
trigger10 = stateno = 301
trigger10= MoveContact
trigger11= stateno = 302
trigger11= MoveContact
trigger12= stateno = 303
trigger12= MoveContact
trigger13= stateno = 400
trigger13= MoveContact
trigger14= stateno = 405
trigger14= MoveContact
trigger15= stateno = 401
trigger15= MoveContact
trigger16= stateno = 402
trigger16= MoveContact
trigger17= stateno = 403
trigger17= MoveContact
trigger18= stateno = 404
trigger18= MoveContact
ignorehitpause = 1
[State -1]
type = ChangeState
value = 175010
triggerall = command = "Kamehameha forte"
triggerall = power >= 3000
triggerall = stateno != 1700
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA
trigger3 = movecontact = 1
trigger4= stateno = 1500
[State -1]
type = ChangeState
value = 970009
triggerall = command = "sequencia de chutes"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 214
trigger8 = MoveContact
trigger9 = stateno = 300
trigger9 = MoveContact
trigger10 = stateno = 301
trigger10= MoveContact
trigger11= stateno = 302
trigger11= MoveContact
trigger12= stateno = 303
trigger12= MoveContact
trigger13= stateno = 400
trigger13= MoveContact
trigger14= stateno = 405
trigger14= MoveContact
trigger15= stateno = 401
trigger15= MoveContact
trigger16= stateno = 402
trigger16= MoveContact
trigger17= stateno = 403
trigger17= MoveContact
trigger18= stateno = 404
trigger18= MoveContact

[State -1]
type = ChangeState
value = 750099
triggerall = command = "ataque de magia"
triggerall = command != "holddown"
triggerall = power > 2800
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 214
trigger8 = MoveContact
trigger9 = stateno = 300
trigger9 = MoveContact
trigger10 = stateno = 301
trigger10= MoveContact
trigger11= stateno = 302
trigger11= MoveContact
trigger12= stateno = 303
trigger12= MoveContact
trigger13= stateno = 400
trigger13= MoveContact
trigger14= stateno = 405
trigger14= MoveContact
trigger15= stateno = 401
trigger15= MoveContact
trigger16= stateno = 402
trigger16= MoveContact
trigger17= stateno = 403
trigger17= MoveContact
trigger18= stateno = 404
trigger18= MoveContact
trigger19= stateno = 1500
[State -1]
type = ChangeState
value = 105099
triggerall = command = "teleporte sequencia"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 214
trigger8 = MoveContact
trigger9 = stateno = 300
trigger9 = MoveContact
trigger10 = stateno = 301
trigger10= MoveContact
trigger11= stateno = 302
trigger11= MoveContact
trigger12= stateno = 303
trigger12= MoveContact
trigger13= stateno = 400
trigger13= MoveContact
trigger14= stateno = 405
trigger14= MoveContact
trigger15= stateno = 401
trigger15= MoveContact
trigger16= stateno = 402
trigger16= MoveContact
trigger17= stateno = 403
trigger17= MoveContact
trigger18= stateno = 404
trigger18= MoveContact
trigger19= stateno = 1500
[State -1]
type = ChangeState
value = 20509
triggerall = command = "ssj5 sequencia"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 214
trigger8 = MoveContact
trigger9 = stateno = 300
trigger9 = MoveContact
trigger10 = stateno = 301
trigger10= MoveContact
trigger11= stateno = 302
trigger11= MoveContact
trigger12= stateno = 303
trigger12= MoveContact
trigger13= stateno = 400
trigger13= MoveContact
trigger14= stateno = 405
trigger14= MoveContact
trigger15= stateno = 401
trigger15= MoveContact
trigger16= stateno = 402
trigger16= MoveContact
trigger17= stateno = 403
trigger17= MoveContact
trigger18= stateno = 404
trigger18= MoveContact
[State -1]
type = ChangeState
value = 20709
triggerall = command = "sequencia rapida"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 214
trigger8 = MoveContact
trigger9 = stateno = 300
trigger9 = MoveContact
trigger10 = stateno = 301
trigger10= MoveContact
trigger11= stateno = 302
trigger11= MoveContact
trigger12= stateno = 303
trigger12= MoveContact
trigger13= stateno = 400
trigger13= MoveContact
trigger14= stateno = 405
trigger14= MoveContact
trigger15= stateno = 401
trigger15= MoveContact
trigger16= stateno = 402
trigger16= MoveContact
trigger17= stateno = 403
trigger17= MoveContact
trigger18= stateno = 404
trigger18= MoveContact
trigger19= stateno = 1500
[State -1:      Kamehameha stage 1]
type            = ChangeState
value      = 3000
triggerall      = (command = "Kamehameha fraco")
triggerall      = (power >= 1000)
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)
[State -1:      Chou Kamehameha]
type            = ChangeState
value      = 3002
triggerall      = (command = "Kamehameha medio")
triggerall      = (power >= 2000)
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)
trigger3= stateno = 1500
[State -1:      Taioken]
type            = ChangeState
value      = 2025
triggerall      = (command = "Taioken")
triggerall      = (power >= 200)
trigger1        = (statetype = S) && (ctrl)
[State -1:      Invisible Ki]
type            = ChangeState
value      = 2005
triggerall      = (command = "Ki invisivel")
triggerall      = (power >= 150)
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)
[State -1:      Ki Shot]
type            = ChangeState
value      = 2000
triggerall      = (command = "z")
triggerall      = (power >= 100)
trigger1        = (statetype = S) && (ctrl)
[State -1:      Air Ki Shot]
type            = ChangeState
value      = 2020
triggerall      = (command = "holdz")
triggerAll      = (power >= 100)
trigger1        = (statetype = A) && (ctrl)
trigger2= stateno = 1500
[State -1]
type            = ChangeState
value      = 2050
triggerall      = (command = "super soco direito")
triggerAll      = (power >= 200)
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)
trigger3        = (stateno = 2040) && (time >= 15)
trigger4        = stateno = 1500
[State -1]
type            = ChangeState
value      = 2040
triggerall      = (command = "super soco esquerdo")
triggerAll      = (power >= 200)
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)
trigger3        = (stateno = 2050) && (time >= 15)
trigger4        = stateno = 1500
[State -1:      Rising Knee 2]
type            = ChangeState
value      = 1002
triggerall      = command = "fazer sequencia aerea2"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)
[State -1:      Rising Knee]
type            = ChangeState
value      = 1000
triggerall      = command = "fazer sequencia aerea"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)
[State -1:      Cartwheel 2]
type            = ChangeState
value      = 1006
triggerall      = command = "chute aereo2"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (statetype = A) && (ctrl)
trigger3        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger3        = (movecontact)
[State -1:      Cartwheel]
type            = ChangeState
value      = 1005
triggerall      = command = "chute aereo"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (statetype = A) && (ctrl)
trigger3        = (stateno = 400) || (stateno = 401)|| (stateno = 402)|| (stateno = 403)
trigger3        = (movecontact)
trigger4        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger4        = (movecontact)
[State -1:      Dashing elbow]
type            = ChangeState
value      = 1008
triggerall      = command = "cotovelada"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)
[State -1:      Dashing elbow 2]
type            = ChangeState
value      = 1009
triggerall      = command = "cotovelada2"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)
trigger2        = (movecontact)
[State -1:      Dashing Gut punch]
type            = ChangeState
value      = 1040
triggerall      = (stateno = 100) && (command = "y")
trigger1        = (statetype = S) && (ctrl)
trigger2= stateno = 1500
[State -1:      Dashing Gut punch(light)]
type            = ChangeState
value      = 1041
triggerall      = (stateno = 100) && (command = "x")
trigger1        = (statetype = S) && (ctrl)
trigger2= stateno = 1500
[State -1:      Charge Power]
type            = ChangeState
value      = 700
triggerall      = ((command = "holda") && (command = "holdb"))
trigger1        = (statetype = S) && (ctrl)
trigger2= stateno = 1500
[State -1:      Super Jump]
type            = ChangeState
value      = 9001
triggerall      = command = "Super pulo"
trigger1        = (statetype = S) && (ctrl)
[State -1:      Zanzoken]
type            = ChangeState
value      = 500
triggerall      = (command = "teleporte")
triggerall      = (power >= 300)
trigger1        = (statetype = S) && (ctrl)
trigger2 = stateno = 202
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 214
trigger8 = MoveContact
trigger9 = stateno = 300
trigger9 = MoveContact
trigger10 = stateno = 301
trigger10= MoveContact
trigger11= stateno = 302
trigger11= MoveContact
trigger12= stateno = 303
trigger12= MoveContact
trigger13= stateno = 400
trigger13= MoveContact
trigger14= stateno = 405
trigger14= MoveContact
trigger15= stateno = 401
trigger15= MoveContact
trigger16= stateno = 402
trigger16= MoveContact
trigger17= stateno = 403
trigger17= MoveContact
trigger18= stateno = 404
trigger18= MoveContact
trigger19= stateno = 1500
[State -1:      Run Fwd]
type            = ChangeState
value      = 100
triggerall      = (command = "FF")
trigger1        = (statetype = S) && (ctrl)
[State -1:      Run Back]
type            = ChangeState
value      = 105
triggerall      = (command = "BB")
trigger1        = (statetype = S) && (ctrl)
[State -1:      Throw Attempt]
type            = ChangeState
value      = 600
triggerall      = (command = "holdfwd") && (command = "y")
trigger1        = (statetype = S) && (ctrl) 
trigger1        = (stateno != 100) && (p2movetype != H)
trigger1        = (p2statetype != A) && (P2bodydist X <= 10)
trigger2= stateno = 1500

[State -1:          Uppercut]
type            = ChangeState
value      = 202
triggerall      = (command = "holdback") && (command = "y")
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 213) && (time > 10) ||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger3= stateno = 1500
[State -1:         Roundhouse]
type            = ChangeState
value      = 215
triggerall      = (command = "c"); && (command = "b")
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214) ||(stateno = 213) && (time > 10)||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2        = (movecontact)
trigger3= stateno = 1500
[State -1:         Axe kick]
type            = ChangeState
value      = 213
triggerall      = (command = "holdback") && (command = "a")
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 214)||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2        = (movecontact)
trigger3= stateno = 1500
[State -1:      Light Punch]
type            = ChangeState
value      = 200
triggerall      = (command = "x")
triggerall      = command != "holddown"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger3        = stateno = 1500
[State -1:      Hard Punch]
type            = ChangeState
value      = 201
triggerall      = (command = "y")
triggerall      = command != "holddown"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 213) && (time > 10) ||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2        = (movecontact)
trigger3        = stateno = 1500
[State -1:      Light Kick]
type            = ChangeState
value      = 211
triggerall      = (command = "a")
triggerall      = command != "holddown"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200)||(stateno = 201)|| (stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2        = (movecontact)
trigger3        = stateno = 1500
[State -1:      Hard Kick]
type            = ChangeState
value      = 214
triggerall      = (command = "b")
triggerall      = command != "holddown"
trigger1        = (statetype = S) && (ctrl)
trigger2        = (stateno = 200) || (stateno = 211)|| (stateno = 201)|| (stateno = 213) && (time > 10)||(stateno = 302) || (stateno = 301)|| (stateno = 300)|| (stateno = 303)
trigger2        = (movecontact)
trigger3        = stateno = 1500
[State -1:      Crouch Light Punch]
type            = ChangeState
value      = 300
triggerall      = (command = "x")
trigger1        = (statetype = C) && (ctrl)
[State -1:      Crouch Hard Punch]
type            = ChangeState
value      = 301
triggerall      = (command = "y")
trigger1        = (statetype = C) && (ctrl)
trigger2        = (stateno = 302) || (stateno = 300)
trigger2        = (movecontact)
[State -1:      Crouch Light Kick]
type            = ChangeState
value      = 302
triggerall      = (command = "a")
trigger1        = (statetype = C) && (ctrl)
trigger2        = (stateno = 300)
trigger2        = (movecontact)

[State -1:      Crouch Light Kick]
type            = ChangeState
value      = 302
triggerall      = (command = "c")
trigger1        = (statetype = C) && (ctrl)
trigger2        = (stateno = 300)
trigger2        = (movecontact)
[State -1:      Crouch Hard Kick]
type            = ChangeState
value      = 303
triggerall      = (command = "b")
trigger1        = (statetype = C) && (ctrl)
trigger2        = (stateno = 302) || (stateno = 301)|| (stateno = 300)
trigger2        = (movecontact)
[State -1:      Air Light Punch]
type            = ChangeState
value      = 400
triggerall      = (command = "x")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 403)
trigger2        = (movecontact)
[State -1:      Air Smackdown]
type            = ChangeState
value      = 405
triggerall      = (command = "holddown") && (command = "y")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 400) || (stateno = 401)|| (stateno = 402)|| (stateno = 403)
trigger2        = (movecontact)
[State -1:      Air Hard Punch]
type            = ChangeState
value      = 401
triggerall      = (command = "y")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 400) || (stateno = 402)|| (stateno = 403)
trigger2        = (movecontact)
[State -1:      Air Light Kick]
type            = ChangeState
value      = 402
triggerall      = (command = "a")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 401)
trigger2        = (movecontact)
[State -1:      Air Kick down]
type            = ChangeState
value      = 404
triggerall      = (command = "holddown") && (command = "b")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 400) || (stateno = 401)|| (stateno = 402)|| (stateno = 403)
trigger2        = (movecontact)
[State -1:      Air Hard Kick]
type            = ChangeState
value      = 403
triggerall      = (command = "b")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 400) || (stateno = 401)|| (stateno = 402)
trigger2        = (movecontact)

[State -1:      Air Hard Kick]
type            = ChangeState
value      = 403
triggerall      = (command = "c")
trigger1        = (statetype = A) && (ctrl)
trigger2        = (stateno = 400) || (stateno = 401)|| (stateno = 402)
trigger2        = (movecontact)






