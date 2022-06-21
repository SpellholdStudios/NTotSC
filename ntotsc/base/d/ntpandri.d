BEGIN ~NTPANDRI~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~!Global("NTYnessAsksForHelp","GLOBAL",0)~ THEN REPLY @2 GOTO 2
  + ~Global("NTYnessAsksForHelp","GLOBAL",0)~ + @7 + 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("NTPBlet3",LastTalkedToBy(Myself),0,0,0)
AddJournalEntry(@10098,QUEST)
RevealAreaOnMap("AR01PB")
EscapeArea()~ UNSOLVED_JOURNAL @10053 EXIT
END
