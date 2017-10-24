BEGIN ~NTPAULIA~

IF ~NumberOfTimesTalkedTo(0) !Global("NTGetReadyToPitigriling","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~!Global("NTGetReadyToPitigriling","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("NTGetReadyToPitigriling","GLOBAL",1)
Global("NTPaulia","GLOBAL",0)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~SetGlobal("NTPaulia","GLOBAL",1)~ UNSOLVED_JOURNAL @10054 EXIT
END

IF ~Global("NTGetReadyToPitigriling","GLOBAL",1)
Global("NTPaulia","GLOBAL",1)
PartyHasItem("MISC91")~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN REPLY @9 DO ~TakePartyItem("MISC91")
DestroyItem("MISC91")
EraseJournalEntry(@10054)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CUTREST")
~ EXIT
  IF ~~ THEN REPLY @10 DO ~EraseJournalEntry(@10054)~ EXIT
END

IF ~Global("NTPaulia","GLOBAL",1)
!PartyHasItem("MISC91")~ THEN BEGIN 6
  SAY @2
  IF ~~ THEN EXIT
END
