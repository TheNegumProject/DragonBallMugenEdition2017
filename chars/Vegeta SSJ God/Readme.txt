==============================================================================
========================== Readme for Super Vegeta ===========================
=============================== by [Dizzy] ===================================
=============================== version: 1.02 ============ 05.10.2003 ========
==============================================================================
==== Contents:      ==========================================================
==== 1. Control     ==========================================================
==== 2. Plans       ==========================================================
==== 3. What's n/f  ==========================================================
==== 4. Contacting  ==========================================================
==== 5. Thanx to    ==========================================================
==============================================================================
==============================================================================
1. Control
Basic moves:
F - Forward
B - Back
U - Up
D - Down
x - light punch
y - medium punch
z - hard punch
a - light kick
b - medium kick
c - hard kick
hold a+x - charge power
more advanced stuff:
x+y while falling after being hit - recovery
a+b while falling after being hit - recovery dive kick
D,DF,F,z    - fireball
UU          - starts flying (hold back for back jump, forward for fwd one)
guard crush - when you're hit, a certain value is substracted from a guard counter. When it drops
              to zero, you're knocked out and get vulnerable for a while (exhausted state).
negative    - This should stop you from running away. if you do, your power
penality      drops down to zero, and only way to stop that is to attack.
exhaustion  - in case you'd get into tired state (after guard crush or desperation for example)
              you're getting immobile for 5 seconds. Mashing attack buttons and direction keys will 
              decrease time needed to recover (vegeta will blink).
-------------------------
------|:Specials:|-------
-------------------------
Throw:
Combination:           - F+y
Conditions:            - on the ground, close to enemy
Comments:              - it's a throw... (duh)

Attack cancel:
Combination:           - any two of the attack buttons (a,b,x or y)
Power usage:           - 500
Conditions:            - attacking, enemy in gethit state
Comments:              - good for custom combos

Faultless defense:
Combination:           - hold B, press and hold a+x, release B
Power usage:           - constant
Conditions:            - have power
Comments:              - protects from any damage, but eats up power v. fast

Counter attack:
Combination:           - F+a
Power usage:           - 500
Conditions:            - blocking, near enemy
Comments:              - Good to break some combos, but only works if you're
                         blocking and enemy is near. Knocks down the enemy.
Guard push:
Combination:           - B+a
Power usage:           - 500
Conditions:            - blocking, near enemy
Comments:              - Good to break some combos, but only works if you're
                         blocking and enemy is near. Pushes back the enemy.

Zanzoken:
Combination:           - D,DB,B,z
Power usage:           - 100 if you blocked
Conditions:            - while you have control
Comments:              - Teleports you a bit away, can be controlled by holding
                         direction keys, can also zanzoken out of guarding states.

Dash zanzoken:
Combination:           - press "z" while dashing
Conditions:            - while you dash
Comments:              - Teleports you to the other side of the screen in the direction you dash.

Dive Kick:
Combination:           - D,DF,F,b
Conditions:            - In air (also when flying)
Comments:              - Can be comboed from Sonic Kick.

Elbow rush:
Combination:           - D,DB,B,a
Comments:              - Repeat D,DB,B,a for up to 4 elbow hits. Can be comboed from backflip.

Backflip attack:
Combination:           - D,DF,F,a
Conditions:            - Be on the ground.

Sonic Kick:
Combination:           - D,DF,F,c
Comments:              - Air combo launcher, can be comboed from backflip.

Kienzan:
Combination:           - D,DF,F,x or y
Comments:              - Hits multiple times. y version travels higher than x one.

Bakuhatsu:
Combination:           - D,DB,B,x or y
Conditions:            - on ground or low flying
Comments:              - Has huge range when going upwards. Good for flyers and cowards who run up to hide 
                         from you. Comboable from Elbow rush and backflip. y version appears farther away.

Renzoku Energy Dan:
Combination:           - D,DF,F,D,DF,F,z
Power usage:           - 200 each fireball
Conditions:            - mash "z" to shoot
Comments:              - You can teleport in this state by mashing the direction key twice. 
                         Cancel by pressing any attack. Weak, but pretty fast. Good to annoy
                         enemies.

Rage Mode:
Combination:           - None
Power usage:           - continuous
Conditions:            - rage bar full to activate it
Comments:              - Attack slightly increases. your speed decreases, but you gain super 
                         armor mode. Also your defense decreases during it.
-------------------------
-------|:Supers:|--------
-------------------------
Big Bang Attack:
Combination:           - D,DF,F,D,DF,F,x
Power usage:           - 1000
Conditions:            - have power (duh)
Comments:              - If enemy's life is lower than 50 bba will destroy him. Can be 
                         comboed from elbow rush and backflip.

Final Flash:
Combination:           - D,DF,F,D,DF,F,y
Power usage:           - 2000
Conditions:            - have power

Desperation:
Combination:           - D,DF,F,D,DF,F,c
Power usage:           - 3000
Conditions:            - life less than 200
Comments:              - damage over 500, but small radius until caught, possibility to 
                         do a standing block, exhaustion after it. Hold c and z to make
                         it a bit faster, take around 850 life and drain your life to zero.
                         also you need 2x more time to recover from it then.
==============================================================================
2. Plans
 1) hmm... none.
==============================================================================
 3. What's new/fixed:
- version 1.02 -
 1) Palette sharing bug fixed. Now palettes do work under linux mugen.
 2) Super armor bug fixed (that caused invincibility).
 3) Backflip now stpos if it connects succesfully.
 4) SFF filesize optimised from 1.9 mb to 1.6 mb.
 5) Guarding bug that was causing guard freezes in linuxmugen fixed.
 6) Bug causing the charging sound in intro to persist fixed.
 7) Now he goes to a hitanim when killed while in rage mode.
 8) Slight fix on crouching hitdefs.
 9) Several other minior bugfixes.
- version 1.01 -
 1) Intro shortened.
 2) removed infinites from basics.
 3) aded additional kienzan and bakuhatsu modes.
 4) remapped some moves.
 5) tweaked desperation move.
 6) fixed a stupid bug in rage mode that was crashing linuxmugen and giving odd results in dosmugen.
 7) sprites fixed to use the exact same palette (for linux users).
- version 1.00 -
 1) power management changed a lil.
 2) fixed some fx sprites.
 3) hitdefs and comboing redone a lil.
 4) kienzan added.
 5) Attack power system was added.
 6) Exhaustion recovery time + possibility to accelerate it added.
 7) palettes.
- version 0.90 -
 1) Hidefs tweaked.
 2) Sparks now 2x smaller (hires effect).
 3) SSJ mode removed.
 4) guard push reimplemented.
 5) Final Flash abd BBA tweaks.
 6) Gyarrik ho removed.
 7) Added negative penality/danger text appearing on screen.
 8) GGX style attack cancel w/effects included. :P
 9) Optimised the snd filesize.
- version 0.86 -
 1) Faultless defense.
 2) Air combos fix.
- version 0.78 -
 1) Ussj sprites 98% ready.
 2) Some stuff, removed extending beams.
 3) Some GGX stuff like hitsparks, several techniques etc.
 4) Many gameplay and bug fixes.
 5) Desperation.
- version 0.52 -
 1) stuff...
==============================================================================
4. Contacting:
Dizzy  : An average girl you see everyday...
Email  : dizzy_chan@wp.pl
Website: http://members.lycos.co.uk/vampiresion/index.sion
Aim    : Otohime kun (priv. block)
==============================================================================
5. Thanx to:
Akira Toriyama - For DBZ (although i kinda hate it now)
Elecbyte - For creating mugen engine, what else?
Dizzy - She was lazy enough to write this readme. Oh yeah, she also created
        this character. :O
Dark Roken - for sprite help, some kool sprites (bba rulez), colors, etc.
Ragnarok - For MEE, the best program for making characters.
Roderic - electricity, some minior stuff.
Toad - most of the gfx like the FF Aura, kienzan etc.
NeOCiDe - Aura from his old BYR2 project.
==============================================================================
betatesters - Dark Roken, NeOcIdE, Roderic, Toad, HaVoC, Hinata, Gryph0n, etc.
==============================================================================
Note: Do not host this character without my prior permission. To get it, simply
email me. If i respond, that means i'm ok with it. Do not request it, or i will
remove it from my website and go private with any future updates.
==============================================================================
blargh, it's the end.