BEGIN ~NTBOYBE1~

IF ~NumberOfTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("NTMummyDaddyWillCome","GLOBAL",1)~ EXIT
END

IF ~NumberOfTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("NTMummyDaddyWillCome","GLOBAL",3)
Dead("NTOGREMU")
Dead("NTOGREDA")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~AddexperienceParty(100)
SetGlobal("NTMummyDaddyWillCome","GLOBAL",4)
EscapeArea()~ EXIT
END
