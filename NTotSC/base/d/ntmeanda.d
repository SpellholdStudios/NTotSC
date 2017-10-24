BEGIN ~NTMEANDA~

IF ~NumTimesTalkedTo(0)
GlobalLT("NTMeandarGivesCultQuest","GLOBAL",1)
Dead("NTDRAAGI")
Global("NTMeandarNeedHelp","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  ++ @21 + 13
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN DO ~SetGlobal("NTMeandarNeedHelp","GLOBAL",1)~ EXIT
END

IF ~Global("NTMeandarNeedHelp","GLOBAL",1)
Dead("NTSALMI2")~ THEN BEGIN 5
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN DO ~SetGlobal("NTMeandarNeedHelp","GLOBAL",2)
GiveItem("NTKEYPB6",LastTalkedToBy)
EraseJournalEntry(@10037)
EraseJournalEntry(@10087)
AddexperienceParty(5000)~ UNSOLVED_JOURNAL @10088 EXIT
END

IF ~Global("NTMeandarNeedHelp","GLOBAL",2)~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
!Dead("NTDRAAGI")~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @17
  IF ~Global("NTAR10PB_Reveal_FieldOfTheDead","GLOBAL",1)~ THEN DO ~SetGlobal("NTMeandarGivesCultQuest","GLOBAL",1)
AddJournalEntry(@10087,QUEST)~ UNSOLVED_JOURNAL @10037 EXIT
  IF ~Global("NTAR10PB_Reveal_FieldOfTheDead","GLOBAL",0)~ THEN DO ~SetGlobal("NTMeandarGivesCultQuest","GLOBAL",1)
AddJournalEntry(@10087,QUEST)
RevealAreaOnMap("AR10PB")
SetGlobal("NTAR10PB_Reveal_FieldOfTheDead","GLOBAL",1)~ UNSOLVED_JOURNAL @10037 EXIT
END

IF ~Dead("NTDRAAGI")
Global("NTMeandarNeedHelp","GLOBAL",0)
Global("NTMeandarGivesCultQuest","GLOBAL",1)~ THEN BEGIN 10
  SAY @19
  IF ~~ THEN DO ~EraseJournalEntry(@10037)~ GOTO 2
END

IF ~Global("NTMeandarNeedHelp","GLOBAL",1)
!Dead("NTSALMI2")~ THEN BEGIN 11
  SAY @20
  IF ~~ THEN EXIT
END

IF ~Global("NTMeandarGivesCultQuest","GLOBAL",1)
!Dead("NTDRAAGI")~ THEN BEGIN 12
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN 13
  SAY @22
  IF ~~ THEN + 4
END
