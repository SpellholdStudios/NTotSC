BEGIN ~NTMONKDE~

IF ~Global("NTTalkedToMonkDE","GLOBAL",0)
Global("NTKoboldaVersusMonkde","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 2
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~SetGlobal("NTTalkedToMonkDE","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN DO ~SetGlobal("NTTalkedToMonkDE","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN DO ~SetGlobal("NTTalkedToMonkDE","GLOBAL",1)
EscapeArea()~ EXIT
END
