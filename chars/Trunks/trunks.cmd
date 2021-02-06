;===================trunks by frs games>franciynaldo=====================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
[Defaults]
command.time = 15
command.buffer.time = 1
[Command]
name = "morte de cold"
command = D, DB, B, F, a
time = 30
[Command]
name = "final atack"
command = D, DB, B, F, b
time = 30
[Command]
name = "atack furioso"
command = D, DB, B, F, x
time = 30
[Command]
name = "burning atack"
command = D, DB, B, F, y
time = 30
[Command]
name = "especial com espada"
command = D, DB, B, F, z
time = 30
[Command]
name = "morte de freeza"
command = D, DB, B, F, z
time = 30
[Command]
name = "sequencia"
command = D, DF, F, x
time = 15
[Command]
name = "corte simples"  ;aperte x,x para completa
command = D, DB, B, x
time = 15
[Command]
name = "corte simples manuais"
command = D, DB, B, y  ;repita o comando para completar o golpe e depois aperte y,y,y
time = 15
[Command]
name = "sequencia2"
command = D, DF, F, y
time = 15
[Command]
name = "sequencia3"
command = D, DF, F, z
time = 15
[Command]
name = "sequencia com espada"
command = D, DB, B, z
time = 15
[Command]
name = "vento de ki"
command = D, DB, B, b
time = 15
[Command]
name = "rajada de ki"
command = D, DB, B, a
time = 15
[Command]
name = "rasteira"
command = D, DF, F, a  ;aperte a para agara o p2 no ar
time = 15
[Command]
name = "sequencia com socos aereos"
command = D, DF, F, b
time = 15
[Command]
name = "destrasformar"
command = x+y
[Command]
name = "carregar ki"
command = /a
[Command]
name = "carregar ki2"
command = /b
[Command]
name = "voar"
command = y+b
time = 1
[Command]
name = "transformar trunks em ssj"
command = a+b
time = 1
[Command]
name = "velocidade"
command = x+a
time = 1
[Command]
name = "magias"
command = c
time = 1

[Command]
name = "Super pulo"
command = $D, $U
[Command]
name = "paracima"
command = $U
[Command]
name = "FF_a"
command = F, F, a
[Command]
name = "FF_b"
command = F, F, b
[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10
[Command]
name = "recovery"
command = x+y
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
name = "s"
command = s
time = 1
[Command]
name = "start"
command = s
time = 1
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
[Command]
name = "ufire"
command = /UF
time = 1
[Command]
name = "dfire"
command = /DF
time = 1
[Command]
name = "bufire"
command = /UB
time = 1
[Command]
name = "bdfire"
command = /DB
time = 1
[Command]
name = "hold_c"
command = /$c
time = 1
[Statedef -1]
[State -1]
type = ChangeState
value = 3100
triggerall = command ="especial com espada"
triggerall = var (5) =0
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 4100
triggerall = command ="morte de freeza"
triggerall = var (5) =1
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 3000
triggerall = command ="burning atack"
triggerall = var (5) =0
triggerall = power >= 2500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
trigger3 = stateno = 1500
[State -1]
type = ChangeState
value = 13000
triggerall = command ="burning atack"
triggerall = var (5) =1
triggerall = power >= 2500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
trigger3 = stateno = 1500
[State -1]
type = ChangeState
value = 2100
triggerall = command ="atack furioso"
triggerall = var (5) =0
triggerall = power >= 1500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 12100
triggerall = command ="atack furioso"
triggerall = var (5) =1
triggerall = power >= 1500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 2000
triggerall = command ="final atack"
triggerall = var (5) =0
triggerall = power >= 2500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
trigger3 = stateno = 1500
[State -1]
type = ChangeState
value = 12000
triggerall = command ="final atack"
triggerall = var (5) =1
triggerall = power >= 2500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
trigger3 = stateno = 1500
[State -1]
type = ChangeState
value = 1110
triggerall = var (5) =0
triggerall = command = "morte de cold"
triggerall = power >= 2000
trigger1 = statetype = S && ctrl
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 11107
triggerall = var (5) =1
triggerall = command = "morte de cold"
triggerall = power >= 2000
trigger1 = statetype = S && ctrl
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 32558
triggerall = command = "corte simples"
trigger1 = statetype = S && ctrl
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 33559
triggerall = command = "corte simples manuais"
trigger1 = statetype = S && ctrl
trigger1 = ctrl
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 1300
triggerall = command = "sequencia"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 2300
triggerall = command = "sequencia2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 3300
triggerall = command = "sequencia3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 4500
triggerall = command = "sequencia com espada"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 4600
triggerall = command = "rasteira"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 4700
triggerall = command = "sequencia com socos aereos"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 4300
triggerall = command = "vento de ki"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 4400
triggerall = command = "rajada de ki"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,400]
trigger2 = (movecontact)
[State -1]
type = ChangeState
value = 123
triggerall = StateType = S || StateType = C
trigger1 = command = "Super pulo"
trigger1 = ctrl || ((StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 420) && MoveContact)
[State -1]
type = ChangeState
value = 78963
triggerall = (power >= 300)
triggerall = command = "velocidade"
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = [200,300]
trigger2 = MoveContact
trigger3= stateno = 1500
[State -1]
type = ChangeState
value = 78999
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,630]
trigger2 = MoveContact
[State -1]
type = ChangeState
value = 730
triggerall = var (5) =0
triggerall = power <3000
triggerall = ctrl = 1
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = statetype = S
[State -1]
type = ChangeState
value = 730730
triggerall = var (5) =0
triggerall = power <3000
trigger1 = ctrl = 0
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = stateno = 1500
[State -1]
type = ChangeState
value = 10730
triggerall = palno != 7
triggerall = var (5) =1
triggerall = power <3000
triggerall = ctrl = 1
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = statetype = S
trigger2= stateno = 1500
[State -1]
type = ChangeState
value = 10730730
triggerall = palno != 7
triggerall = var (5) =1
triggerall = power <3000
trigger1 = ctrl = 0
trigger1 = command = "carregar ki"
trigger1 = command = "carregar ki2"
trigger1 = stateno = 1500
[State -1]
type = ChangeState
value = 1099
triggerall = stateno = 0
triggerall = var (5) =0
triggerall = power =3000
triggerall = ctrl = 1
triggerall = command = "transformar trunks em ssj"
trigger1 = statetype = S
[State -1]
type = ChangeState
value = 1098
triggerall = palno != 7
triggerall = stateno = 0
triggerall = var (5) =1
triggerall = ctrl = 1
triggerall = command = "destrasformar"
trigger1 = statetype = S
[State -1]
type = ChangeState
value = 1500
triggerall = command = "voar"
trigger1 = statetype = A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 1510
triggerall = command = "voar"
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 15143
triggerall = var (5) =0
triggerall = command = "magias"
triggerall = power >=100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = [200,600]
trigger3 = movecontact
[State -1]
type = ChangeState
value = 1514
triggerall = var (5) =1
triggerall = command = "magias"
triggerall = power >=100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = [200,600]
trigger3 = movecontact
[State -1]
type = ChangeState
value = 1070
triggerall = command = "FF_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = [200,600]
trigger3 = movecontact
[State -1]
type = ChangeState
value = 1050
triggerall = command = "FF_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = stateno = [200,600]
trigger3 = movecontact
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
[State -1]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741
[State -1]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742
[State -1]
type = ChangeState
value = 800
triggerall = command = "a" || command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
[State -1]
type = ChangeState
value = 9800
triggerall = command = "x" || command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 21
trigger3 = stateno = 1500
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 1500
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && time > 5
trigger3 = (stateno = 240) && time > 6
trigger4 = stateno = 1500
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 22
trigger4 = stateno = 1500
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 1500
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 440) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 15) || (movecontact && time > 5)
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 22) || (movecontact && time > 5)
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 15
trigger3 = stateno = 1350
trigger4 = stateno =1050
trigger4 = (movecontact)
trigger5 = stateno =1070
trigger5 = (movecontact)
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 1350
trigger4 = stateno =1050
trigger4 = (movecontact)
trigger5 = stateno =1070
trigger5 = (movecontact)
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 640
trigger2 = movecontact
trigger3 = stateno = 1350
trigger4 = stateno =1050
trigger4 = (movecontact)
trigger5 = stateno =1070
trigger5 = (movecontact)
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350
trigger3 = movecontact
trigger3 = stateno = 600
trigger4 = stateno =1050
trigger4 = (movecontact)
trigger5 = stateno =1070
trigger5 = (movecontact)
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 1350
trigger4 = stateno =1050
trigger4 = (movecontact)
trigger5 = stateno =1070
trigger5 = (movecontact)

