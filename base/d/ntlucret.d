BEGIN ~NTLUCRET~

IF ~NumberOfTimesTalkedTo(0) !Global("NTGetReadyToPitigriling","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~!Global("NTGetReadyToPitigriling","GLOBAL",1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("NTGetReadyToPitigriling","GLOBAL",1)
Global("NTLucretia","GLOBAL",0)
Global("NTLucretiaAmulet","GLOBAL",0)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~!Global("NTLucretia","GLOBAL",1)
~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("NTLucretia","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN DO ~SetGlobal("NTLucretiaAmulet","GLOBAL",1)~ UNSOLVED_JOURNAL @10035 EXIT
END

IF ~Global("NTLucretiaAmulet","GLOBAL",1)
!Global("NTLucretia","GLOBAL",1)
PartyHasItem("AMUL11")~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN REPLY @13 DO ~EraseJournalEntry(@10035)~ GOTO 8
  IF ~~ THEN REPLY @14 DO ~EraseJournalEntry(@10035)~ GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN REPLY @16 DO ~TakePartyItem("AMUL11")
DestroyItem("AMUL11")
AddexperienceParty(200)
SetGlobal("NTLucretia","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("CUTREST")~ EXIT
  IF ~~ THEN REPLY @17 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @18
  IF ~~ THEN DO ~SetGlobal("NTLucretia","GLOBAL",1)~ EXIT
END

IF ~Global("NTLucretia","GLOBAL",1)~ THEN BEGIN 10
  SAY @2
  IF ~~ THEN EXIT
END

IF ~Global("NTLucretiaAmulet","GLOBAL",1)
!PartyHasItem("AMUL11")~ THEN BEGIN 11
  SAY @2
  IF ~~ THEN EXIT
END
