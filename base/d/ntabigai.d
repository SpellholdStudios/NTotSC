BEGIN ~NTABIGAI~

IF ~!Global("NT_CitadelHostile","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("INNABIG",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @2 EXIT
END

IF ~Global("NT_CitadelHostile","GLOBAL",1)~ THEN BEGIN 0
  SAY @3
  IF ~~ THEN DO ~RunAwayFrom(LastSeenBy(Myself),30)~ EXIT
END
