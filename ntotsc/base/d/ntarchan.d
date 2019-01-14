BEGIN ~NTARCHAN~

IF ~NumberOfTimesTalkedTo(0)
Global("NTGetReadyToPitigriling","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~SetGlobal("NTGetReadyToPitigriling","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN GOTO 2
END

IF ~Gender(LastTalkedToBy,MALE)
Global("NT_Achandra","LOCALS",0)~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @14
  IF ~~ THEN DO ~SetGlobal("NT_Achandra","LOCALS",1)~ UNSOLVED_JOURNAL @10004 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy,FEMALE)
Global("NT_Achandra","LOCALS",0)~ THEN BEGIN 8
  SAY @17
  IF ~~ THEN REPLY @18 EXIT
  IF ~~ THEN REPLY @19 GOTO 5
END

IF ~PartyHasItem("NTPOTN03")~ THEN BEGIN 9
  SAY @20
  IF ~~ THEN REPLY @21 DO ~TakePartyItem("NTPOTN03")
DestroyItem("NTPOTN03")
EraseJournalEntry(@10004)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ntcutres")~ EXIT
  IF ~~ THEN REPLY @22 GOTO 7
END

IF ~Global("NT_Achandra","LOCALS",1)
!PartyHasItem("NTPOTN03")~ THEN BEGIN 10
  SAY @5
  IF ~~ THEN EXIT
END