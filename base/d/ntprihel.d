BEGIN ~NTPRIHEL~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 DO ~StartStore("ntprihel",LastTalkedToBy(Myself))~ EXIT
  IF ~!Global("NTAverySaysOfKey","GLOBAL",1)
GlobalLT("NTPriestSpokeOfAlter","GLOBAL",1)~ THEN REPLY @3 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~SetGlobal("NTPriestSpokeOfAlter","GLOBAL",1)~ UNSOLVED_JOURNAL @10057 EXIT
END
