ADD_STATE_TRIGGER GOLINV 0 ~!InParty("WILL") OR(2) Global("NTWillDialog1","GLOBAL",1) Global("NTWillDialog2","GLOBAL",1)~
APPEND ~GOLINV~

IF ~Global("NTWillOutsideParty","GLOBAL",1)
Exists("WILL")
!Dead("WILL")
~ THEN BEGIN 6
  SAY @0
  IF ~~ THEN EXTERN ~WILLJ~ Ring1
END

IF ~~ THEN BEGIN Ring2
  SAY @1
  IF ~~ THEN EXTERN ~WILLJ~ Ring3
END

IF ~~ THEN BEGIN Ring4
  SAY @2
  IF ~~ THEN DO ~GiveItemCreate("NTRING01","WILL",0,0,0)
SetGlobal("NTGolinSpawnRing","GLOBAL",2)
EscapeArea()
~ EXIT
END

IF ~InParty("WILL")
~ THEN BEGIN 9
  SAY @3
  IF ~~ THEN EXIT
END

END

APPEND ~WILLJ~

IF ~~ THEN BEGIN Ring1
  SAY @4
  IF ~~ THEN EXTERN ~GOLINV~ Ring2
END

IF ~~ THEN BEGIN Ring3
  SAY @5
  IF ~~ THEN EXTERN ~GOLINV~ Ring4
END

END
