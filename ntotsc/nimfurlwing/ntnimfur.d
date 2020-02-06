BEGIN ~NTNIMFUR~

IF ~NumDead("NTDOGFUN",3)
Global("NTNimFurlong","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~EscapeArea()~ SOLVED_JOURNAL @10042 EXIT
END

IF ~NumDead("NTDOGFUN",2)
Global("NTNimFurlong","GLOBAL",1)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~AddexperienceParty(200)
SetGlobal("NTNimFurlong","GLOBAL",2)
EscapeArea()
~ SOLVED_JOURNAL @10042 EXIT
END

IF ~NumDead("NTDOGFUN",0)
Global("NTNimFurlong","GLOBAL",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~AddexperienceParty(2000)
GiveItemCreate("ntscrlnf",LastTalkedToBy,1,0,0)
SetGlobal("NTNimFurlong","GLOBAL",2)
EscapeArea()~ SOLVED_JOURNAL @10043 EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(0)
Global("NTNimFurlong","GLOBAL",0)~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~SetGlobal("NTNimFurlong","GLOBAL",1)
~ EXIT
END

IF ~NumDead("NTDOGFUN",1)
Global("NTNimFurlong","GLOBAL",1)~ THEN BEGIN 5
  SAY @2
  IF ~~ THEN DO ~AddexperienceParty(200)
SetGlobal("NTNimFurlong","GLOBAL",2)
EscapeArea()~ SOLVED_JOURNAL @10042 EXIT
END
