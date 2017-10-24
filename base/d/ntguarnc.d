BEGIN ~NTGUARNC~

IF ~Global("NTGuardMissionNorth","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("NTGuardMissionNorth","GLOBAL",1)~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~ReactionLT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END
