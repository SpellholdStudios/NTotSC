BEGIN ~NTSHELTO~

IF ~!Global("NTTalkedToShelton","GLOBAL",1)
!Dead("NTKROTAN")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~SetGlobal("NTTalkedToShelton","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~SetGlobal("NTTalkedToShelton","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN DO ~SetGlobal("NTTalkedToShelton","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~OR(2)
	Global("NTTalkedToShelton","GLOBAL",1)
	Dead("NTKROTAN")
~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN EXIT
END

IF ~False()
~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN EXIT
END
