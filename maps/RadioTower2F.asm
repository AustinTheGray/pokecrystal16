RadioTower2F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

UnknownScript_0x5d6fd:
	end

SuperNerdScript_0x5d6fe:
	jumptextfaceplayer UnknownText_0x5d924

TeacherScript_0x5d701:
	faceplayer
	loadfont
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue UnknownScript_0x5d70f
	writetext UnknownText_0x5d956
	closetext
	loadmovesprites
	end

UnknownScript_0x5d70f:
	writetext UnknownText_0x5d983
	closetext
	loadmovesprites
	end

JigglypuffScript_0x5d715:
	loadfont
	writetext UnknownText_0x5d9b6
	cry JIGGLYPUFF
	closetext
	loadmovesprites
	end

BlackBeltScript_0x5d71f:
	jumptextfaceplayer UnknownText_0x5d9cb

BlackBeltScript_0x5d722:
	jumptextfaceplayer UnknownText_0x5da44

TrainerGruntM4:
	trainer EVENT_BEAT_ROCKET_GRUNTM_4, GRUNTM, 4, GruntM4SeenText, GruntM4BeatenText, $0000, GruntM4Script

GruntM4Script:
	talkaftercancel
	loadfont
	writetext UnknownText_0x5db07
	closetext
	loadmovesprites
	end

TrainerGruntM5:
	trainer EVENT_BEAT_ROCKET_GRUNTM_5, GRUNTM, 5, GruntM5SeenText, GruntM5BeatenText, $0000, GruntM5Script

GruntM5Script:
	talkaftercancel
	loadfont
	writetext UnknownText_0x5db99
	closetext
	loadmovesprites
	end

TrainerGruntM6:
	trainer EVENT_BEAT_ROCKET_GRUNTM_6, GRUNTM, 6, GruntM6SeenText, GruntM6BeatenText, $0000, GruntM6Script

GruntM6Script:
	talkaftercancel
	loadfont
	writetext UnknownText_0x5dc00
	closetext
	loadmovesprites
	end

TrainerGruntF2:
	trainer EVENT_BEAT_ROCKET_GRUNTF_2, GRUNTF, 2, GruntF2SeenText, GruntF2BeatenText, $0000, GruntF2Script

GruntF2Script:
	talkaftercancel
	loadfont
	writetext UnknownText_0x5dcd0
	closetext
	loadmovesprites
	end

Buena:
	faceplayer
	loadfont
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue UnknownScript_0x5d865
	checkevent EVENT_MET_BUENA
	iffalse UnknownScript_0x5d800
	checkflag ENGINE_BUENAS_PASSWORD_2
	iftrue UnknownScript_0x5d82f
	checkcode VAR_HOUR
	if_less_than 18, UnknownScript_0x5d893
	checkflag ENGINE_BUENAS_PASSWORD
	iffalse UnknownScript_0x5d80a
	checkitem BLUE_CARD
	iffalse UnknownScript_0x5d86b
	checkcode VAR_BLUECARDBALANCE
	if_equal 30, UnknownScript_0x5d87f
	playmusic MUSIC_BUENAS_PASSWORD
	writetext UnknownText_0x5de35
	special Function4ae12
	iffalse UnknownScript_0x5d81e
	writetext UnknownText_0x5de84
	closetext
	loadmovesprites
	spriteface $b, RIGHT
	checkcode VAR_FACING
	if_not_equal $3, UnknownScript_0x5d7be
	applymovement PLAYER, MovementData_0x5d921
UnknownScript_0x5d7be:
	spriteface PLAYER, RIGHT
	loadfont
	writetext UnknownText_0x5dedd
	closetext
	loadmovesprites
	spriteface $b, DOWN
	refreshscreen $0
	special SpecialBuenasPassword
	loadmovesprites
	iffalse UnknownScript_0x5d845
	loadfont
	writetext UnknownText_0x5dfc1
	closetext
	loadmovesprites
	checkcode VAR_BLUECARDBALANCE
	addvar $1
	writevarcode VAR_BLUECARDBALANCE
	waitbutton
	playsound SFX_TRANSACTION
	setflag ENGINE_BUENAS_PASSWORD_2
	pause 20
	spriteface $b, RIGHT
	loadfont
	writetext UnknownText_0x5e054
	closetext
	loadmovesprites
	special Functionc48f
	pause 20
	special RestartMapMusic
	checkcode VAR_BLUECARDBALANCE
	if_equal $1e, UnknownScript_0x5d8a4
	end

UnknownScript_0x5d800:
	writetext UnknownText_0x5dcf4
	keeptextopen
	setevent EVENT_MET_BUENA
	verbosegiveitem BLUE_CARD, 1
UnknownScript_0x5d80a:
	writetext UnknownText_0x5de10
	closetext
	loadmovesprites
	checkcellnum PHONE_BUENA
	iftrue UnknownScript_0x5d81a
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftrue UnknownScript_0x5d8cc
UnknownScript_0x5d81a:
	spriteface $b, RIGHT
	end

UnknownScript_0x5d81e:
	writetext UnknownText_0x5df29
	closetext
	loadmovesprites
	spriteface $b, RIGHT
	special Functionc48f
	pause 20
	special RestartMapMusic
	end

UnknownScript_0x5d82f:
	writetext UnknownText_0x5df6c
	closetext
	loadmovesprites
	checkcellnum PHONE_BUENA
	iftrue UnknownScript_0x5d83f
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftrue UnknownScript_0x5d8cc
UnknownScript_0x5d83f:
	spriteface $b, RIGHT
	pause 10
	end

UnknownScript_0x5d845:
	setflag ENGINE_BUENAS_PASSWORD_2
	loadfont
	writetext UnknownText_0x5e01c
	closetext
	loadmovesprites
	spriteface $b, RIGHT
	pause 20
	loadfont
	writetext UnknownText_0x5e054
	closetext
	loadmovesprites
	spriteface $b, RIGHT
	special Functionc48f
	pause 20
	special RestartMapMusic
	end

UnknownScript_0x5d865:
	writetext UnknownText_0x5e0c2
	closetext
	loadmovesprites
	end

UnknownScript_0x5d86b:
	writetext UnknownText_0x5e192
	closetext
	loadmovesprites
	checkcellnum PHONE_BUENA
	iftrue UnknownScript_0x5d87b
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftrue UnknownScript_0x5d8cc
UnknownScript_0x5d87b:
	spriteface $b, RIGHT
	end

UnknownScript_0x5d87f:
	writetext UnknownText_0x5e0f1
	closetext
	loadmovesprites
	checkcellnum PHONE_BUENA
	iftrue UnknownScript_0x5d88f
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftrue UnknownScript_0x5d8cc
UnknownScript_0x5d88f:
	spriteface $b, RIGHT
	end

UnknownScript_0x5d893:
	writetext UnknownText_0x5e131
	closetext
	loadmovesprites
	checkcellnum PHONE_BUENA
	iftrue UnknownScript_0x5d8a3
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftrue UnknownScript_0x5d8cc
UnknownScript_0x5d8a3:
	end

UnknownScript_0x5d8a4:
	checkcellnum PHONE_BUENA
	iftrue UnknownScript_0x5d8fe
	pause 20
	spriteface $b, DOWN
	pause 15
	spriteface PLAYER, UP
	pause 15
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftrue UnknownScript_0x5d8cc
	showemote EMOTE_SHOCK, $b, 15
	setevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	setevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	loadfont
	writetext UnknownText_0x5e1ee
	jump UnknownScript_0x5d8d0

UnknownScript_0x5d8cc:
	loadfont
	writetext UnknownText_0x5e2bf
UnknownScript_0x5d8d0:
	askforphonenumber PHONE_BUENA
	if_equal $1, UnknownScript_0x5d8f6
	if_equal $2, UnknownScript_0x5d8ed
	writetext UnknownText_0x5e2f3
	playsound SFX_REGISTER_PHONE_NUMBER
	waitbutton
	keeptextopen
	writetext UnknownText_0x5e310
	closetext
	loadmovesprites
	spriteface $b, RIGHT
	addcellnum PHONE_BUENA
	end

UnknownScript_0x5d8ed:
	writetext UnknownText_0x5e33c
	closetext
	loadmovesprites
	spriteface $b, RIGHT
	end

UnknownScript_0x5d8f6:
	writetext UnknownText_0x5e35e
	closetext
	loadmovesprites
	spriteface $b, RIGHT
UnknownScript_0x5d8fe:
	end

ReceptionistScript_0x5d8ff:
	faceplayer
	loadfont
	checkitem BLUE_CARD
	iffalse UnknownScript_0x5d90f
	writetext UnknownText_0x5e392
	keeptextopen
	special SpecialBuenaPrize
	loadmovesprites
	end

UnknownScript_0x5d90f:
	writetext UnknownText_0x5e3d8
	keeptextopen
	loadmovesprites
	end

MapRadioTower2FSignpost0Script:
	jumptext UnknownText_0x5e426

MapRadioTower2FSignpost1Script:
	jumptext UnknownText_0x5e430

MapRadioTower2FSignpost5Script:
	jumptext UnknownText_0x5e463

RadioTower2FBookshelf:
	jumpstd magazinebookshelf

MovementData_0x5d921:
	slow_step_down
	slow_step_right
	step_end

UnknownText_0x5d924:
	text "You can listen to"
	line "the radio any-"
	cont "where. Tune in!"
	done

UnknownText_0x5d956:
	text "Lullabies on the"
	line "radio may make"
	cont "#MON sleep."
	done

UnknownText_0x5d983:
	text "Why would they"
	line "want to take over"
	cont "the RADIO TOWER?"
	done

UnknownText_0x5d9b6:
	text "JIGGLYPUFF:"
	line "Jiggly…"
	done

UnknownText_0x5d9cb:
	text "Sorry. Authorized"
	line "personnel only"
	cont "beyond this point."

	para "It wasn't that way"
	line "before."

	para "There's something"
	line "wrong with the"
	cont "DIRECTOR…"
	done

UnknownText_0x5da44:
	text "Feel free to look"
	line "around anywhere."

	para "The DIRECTOR is"
	line "nice again, just"
	cont "as he was before."
	done

GruntM4SeenText:
	text "Three years ago,"
	line "TEAM ROCKET was"
	cont "forced to disband."

	para "But we're making a"
	line "comeback here!"
	done

GruntM4BeatenText:
	text "Gwah! Don't get"
	line "cute!"
	done

UnknownText_0x5db07:
	text "We won't let you"
	line "ruin our plans"
	cont "for our comeback!"
	done

GruntM5SeenText:
	text "We're TEAM ROCKET,"
	line "the exploiters of"
	cont "#MON!"

	para "We love being"
	line "evil! Scared?"
	done

GruntM5BeatenText:
	text "You think you're a"
	line "hero?"
	done

UnknownText_0x5db99:
	text "We're not always"
	line "evil. We just do"
	cont "whatever we like."
	done

GruntM6SeenText:
	text "Hey, hey! Keep out"
	line "of our way!"
	done

GruntM6BeatenText:
	text "Arggh. I give up."
	done

UnknownText_0x5dc00:
	text "Our EXECUTIVES are"
	line "trying to take"
	cont "this place over."

	para "They have some big"
	line "plan. I wonder"
	cont "what that is?"
	done

GruntF2SeenText:
	text "Hahaha!"

	para "How boring."
	line "It was far too"

	para "easy to take over"
	line "this place!"

	para "Come on, keep me"
	line "amused!"
	done

GruntF2BeatenText:
	text "Wh-who are you?"
	done

UnknownText_0x5dcd0:
	text "You beat me, and"
	line "I won't forget it!"
	done

UnknownText_0x5dcf4:
	text "BUENA: Hi! I'm"
	line "BUENA!"

	para "Do you know about"
	line "a radio program"
	cont "called PASSWORD?"

	para "If you can tell me"
	line "the password from"

	para "the program, you"
	line "will earn points."

	para "Save up those"
	line "points and trade"

	para "them to that sweet"
	line "young lady over"

	para "there for some"
	line "choice prizes!"

	para "Here you go!"

	para "It's your very own"
	line "point card!"
	done

UnknownText_0x5de10:
	text "BUENA: Tune in to"
	line "my PASSWORD SHOW!"
	done

UnknownText_0x5de35:
	text "BUENA: Hi!"
	line "Did you tune in to"
	cont "my radio show?"

	para "Do you remember"
	line "today's password?"
	done

UnknownText_0x5de84:
	text "BUENA: Oh, wow!"
	line "Thank you!"

	para "What was your name"
	line "again?"

	para "…<PLAY_G>, OK!"

	para "Come on, <PLAY_G>."
	line "Join the show."
	done

UnknownText_0x5dedd:
	text "BUENA: Everyone"
	line "ready?"

	para "I want to hear you"
	line "shout out today's"

	para "password for"
	line "<PLAY_G>!"
	done

UnknownText_0x5df29:
	text "BUENA: Come back"
	line "after you listen"

	para "to my show, OK?"
	line "Catch ya later!"
	done

UnknownText_0x5df6c:
	text "BUENA: Sorry…"

	para "You get just one"
	line "chance each day."

	para "Come back tomorrow"
	line "for another try!"
	done

UnknownText_0x5dfc1:
	text "BUENA: YIPPEE!"
	line "That's right!"

	para "You did tune in!"
	line "I'm so happy!"

	para "You earned one"
	line "point! Congrats!"
	done

UnknownText_0x5e01c:
	text "BUENA: Aww…"
	line "That's not it…"

	para "Did you forget the"
	line "password?"
	done

UnknownText_0x5e054:
	text "BUENA: Yup! Our"
	line "contestant was"

	para "<PLAY_G>."
	line "Thanks for coming!"

	para "I hope all you"
	line "listeners will"

	para "come too!"
	line "I'll be waiting!"
	done

UnknownText_0x5e0c2:
	text "BUENA: Huh?"
	line "Today's password?"

	para "HELP, of course!"
	done

UnknownText_0x5e0f1:
	text "BUENA: Your BLUE"
	line "CARD's full."

	para "Trade it in for a"
	line "fabulous prize!"
	done

UnknownText_0x5e131:
	text "BUENA: Tune in to"
	line "PASSWORD every"

	para "night from six to"
	line "midnight!"

	para "Tune in, then drop"
	line "in for a visit!"
	done

UnknownText_0x5e192:
	text "BUENA: Oh? You"
	line "forgot to bring"
	cont "your BLUE CARD?"

	para "I can't give you"
	line "points if you"
	cont "don't have it."
	done

UnknownText_0x5e1ee:
	text "BUENA: Oh! Your"
	line "BLUE CARD reached"

	para "30 points today!"
	line "That's so wild!"

	para "Hmm… There isn't a"
	line "prize for hitting"
	cont "30 points, but…"

	para "You came by so"
	line "often, <PLAY_G>."

	para "I'll make you a"
	line "special deal!"

	para "How would you like"
	line "my phone number?"
	done

UnknownText_0x5e2bf:
	text "BUENA: <PLAY_G>,"
	line "do you want to"

	para "register my phone"
	line "number?"
	done

UnknownText_0x5e2f3:
	text "<PLAYER> registered"
	line "BUENA's number."
	done

UnknownText_0x5e310:
	text "BUENA: I look"
	line "forward to hearing"
	cont "from you!"
	done

UnknownText_0x5e33c:
	text "BUENA: Aww… It's a"
	line "special prize…"
	done

UnknownText_0x5e35e:
	text "BUENA: <PLAY_G>,"
	line "your phone list"

	para "has no room left"
	line "for me…"
	done

UnknownText_0x5e392:
	text "You can cash in"
	line "your saved points"

	para "for a lovely prize"
	line "of your choice!"
	done

UnknownText_0x5e3d8:
	text "You can't trade in"
	line "points without"
	cont "your BLUE CARD."

	para "Don't forget your"
	line "BLUE CARD!"
	done

UnknownText_0x5e426:
	text "2F SALES"
	done

UnknownText_0x5e430:
	text "PROF.OAK'S #MON"
	line "TALK"

	para "The Hottest Show"
	line "on the Air!"
	done

UnknownText_0x5e463:
	text "Anywhere, Anytime"
	line "#MON Radio"
	done

RadioTower2F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $0, $0, 1, RADIO_TOWER_3F
	warp_def $0, $f, 3, RADIO_TOWER_1F

.XYTriggers:
	db 0

.Signposts:
	db 6
	signpost 0, 3, SIGNPOST_READ, MapRadioTower2FSignpost0Script
	signpost 0, 5, SIGNPOST_READ, MapRadioTower2FSignpost1Script
	signpost 1, 9, SIGNPOST_READ, RadioTower2FBookshelf
	signpost 1, 10, SIGNPOST_READ, RadioTower2FBookshelf
	signpost 1, 11, SIGNPOST_READ, RadioTower2FBookshelf
	signpost 0, 13, SIGNPOST_READ, MapRadioTower2FSignpost5Script

.PersonEvents:
	db 11
	person_event SPRITE_SUPER_NERD, 6, 6, $8, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, 0, 0, SuperNerdScript_0x5d6fe, EVENT_GOLDENROD_CITY_CIVILIANS
	person_event SPRITE_TEACHER, 2, 17, $5, 0, 1, -1, -1, (1 << 3) | PAL_OW_RED, 0, 0, TeacherScript_0x5d701, -1
	person_event SPRITE_ROCKET, 4, 1, $7, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM4, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	person_event SPRITE_ROCKET, 4, 8, $6, 0, 0, -1, -1, 0, 2, 3, TrainerGruntM5, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	person_event SPRITE_ROCKET, 1, 4, $6, 0, 0, -1, -1, 0, 2, 2, TrainerGruntM6, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	person_event SPRITE_ROCKET_GIRL, 5, 10, $7, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, 2, 3, TrainerGruntF2, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	person_event SPRITE_BLACK_BELT, 1, 0, $6, 0, 0, -1, -1, 0, 0, 0, BlackBeltScript_0x5d71f, EVENT_RADIO_TOWER_BLACKBELT_BLOCKS_STAIRS
	person_event SPRITE_BLACK_BELT, 1, 1, $6, 0, 0, -1, -1, 0, 0, 0, BlackBeltScript_0x5d722, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	person_event SPRITE_JIGGLYPUFF, 1, 12, $16, 0, 0, -1, -1, 0, 0, 0, JigglypuffScript_0x5d715, -1
	person_event SPRITE_BUENA, 5, 14, $9, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, 0, 0, Buena, -1
	person_event SPRITE_RECEPTIONIST, 7, 12, $9, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, 0, 0, ReceptionistScript_0x5d8ff, EVENT_GOLDENROD_CITY_CIVILIANS
