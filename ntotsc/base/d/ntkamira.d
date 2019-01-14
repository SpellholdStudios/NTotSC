BEGIN ~NTKAMIRA~

IF ~~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~NTSATOS~ 5
END

IF WEIGHT #1 ~Dead("NTKROTAN")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #2 ~Global("NTKamira","GLOBAL",0)
Global("NTSatosMustDie","GLOBAL",0)
!Global("NTTalkedToShelton","GLOBAL",1)
!Dead("NTSATOS")~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("NTKamira","GLOBAL",1)~ EXIT
END

IF WEIGHT #0 ~Global("NTSatosMustDie","GLOBAL",4)
Dead("NTSATOS1")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~SetGlobal("NTSatosMustDie","GLOBAL",5)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~NTMORDOR~ 1
END
