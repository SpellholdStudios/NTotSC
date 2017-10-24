BEGIN ~NTPIQUE~

IF ~OR(2)
		Global("NTTalkedToLenore","GLOBAL",1)
		Global("NTEldodIsFriendKrotan","GLOBAL",1)
Global("NTTalkedToPique","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~~ THEN REPLY @1 GOTO 3
  IF ~~ THEN REPLY @2 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN DO ~SetGlobal("NTTalkedToPique","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~SetGlobal("NTTalkedToPique","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN DO ~SetGlobal("NTTalkedToPique","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN DO ~SetGlobal("NTTalkedToPique","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN DO ~SetGlobal("NTTalkedToPique","GLOBAL",1) EscapeArea()~ EXIT
END

IF WEIGHT #0
~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN EXIT
END
