BEGIN ~NTHAEBAL~

IF ~OR(2)
	!Dead("NTHASDAR")
	!Global("NTTalkedToHasdar","GLOBAL",0)
!Dead("NTDRAAGI")
!Global("NTTalkedToReedig","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~StartStore("STHaebal",LastTalkedToBy(Myself))~ JOURNAL @10016 EXIT
  IF ~~ THEN REPLY @3 EXIT
  IF ~Global("NTMeetIndfigtToOffer","GLOBAL",1)
GlobalLT("NTHaeballMakesMageDeal","GLOBAL",1)~ THEN REPLY @40 GOTO 17
  IF ~Global("NTMeetIndfigtToOffer","GLOBAL",1)
GlobalLT("NTHaeballMakesMageDeal","GLOBAL",1)~ THEN REPLY @48 GOTO 18
END

IF ~False()~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @1 DO ~StartStore("STHaebal",LastTalkedToBy(Myself))~ JOURNAL @10016 EXIT
  IF ~~ THEN REPLY @5 EXIT
  IF ~Global("NTMeetIndfigtToOffer","GLOBAL",1)
GlobalLT("NTHaeballMakesMageDeal","GLOBAL",1)~ THEN REPLY @40 GOTO 17
END

/* either heard about cult from Reedrig or destroyed cult already */
IF WEIGHT #0
~OR(2)
	Global("NTTalkedToReedig","GLOBAL",3)
	Dead("NTDRAAGI")~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN DO ~EraseJournalEntry(@10016)
EraseJournalEntry(@10018)
EraseJournalEntry(@10019)
Enemy()~ UNSOLVED_JOURNAL @10017 EXIT
END

IF ~GlobalLT("NTHaebalGivesQuest","GLOBAL",1)
Dead("NTHASDAR")
Global("NTTalkedToHasdar","GLOBAL",0) 
Global("NTHaeballQuestWanted","GLOBAL",0)
!Global("NTTalkedToReedig","GLOBAL",3)~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 DO ~SetGlobal("NTHaeballSaysNew1","GLOBAL",1)~ GOTO 8
  IF ~Global("NTMeetIndfigtToOffer","GLOBAL",1)
GlobalLT("NTHaeballMakesMageDeal","GLOBAL",1)~ THEN REPLY @48 GOTO 18
END

IF ~~ THEN BEGIN 5
  SAY @14
  IF ~~ THEN DO ~SetGlobal("NTHaebalGivesQuest","GLOBAL",1)~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @15
  IF ~~ THEN DO ~RevealAreaOnMap("AR40PB")~ GOTO 7
 END

IF ~~ THEN BEGIN 7
  SAY @17
  IF ~~ THEN REPLY @18 DO ~SetGlobal("NTHaeballQuestWanted","GLOBAL",1)
//AddJournalEntry(@10019,QUEST)
~ UNSOLVED_JOURNAL @10018 GOTO 8
  IF ~PartyHasItem("DSGBBOW")
!PartyHasItem("NTMISC10")~ THEN REPLY @20 DO ~SetGlobal("NTHaeballQuestWanted","GLOBAL",1)~ UNSOLVED_JOURNAL @10018 GOTO 15
  IF ~PartyHasItem("NTMISC10")
!PartyHasItem("DSGBBOW")~ THEN REPLY @21 DO ~SetGlobal("NTHaeballQuestWanted","GLOBAL",1)~ UNSOLVED_JOURNAL @10019 GOTO 16
  IF ~PartyHasItem("DSGBBOW")
PartyHasItem("NTMISC10")~ THEN REPLY @22 GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @23
  IF ~~ THEN REPLY @24 DO ~StartStore("STHaebal",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @25 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @26
  IF ~~ THEN DO ~SetGlobal("NTHaeballQuestWanted","GLOBAL",3)
EraseJournalEntry(@10016)
EraseJournalEntry(@10017)
EraseJournalEntry(@10018)
EraseJournalEntry(@10019)
Enemy()~ UNSOLVED_JOURNAL @10020 EXIT
END

IF ~Global("NTHaeballSaysNew1","GLOBAL",1)
Global("NTHaeballQuestWanted","GLOBAL",0)~ THEN BEGIN 10
  SAY @28
  IF ~~ THEN REPLY @29 DO ~SetGlobal("NTHaeballSaysNew1","GLOBAL",2)~ GOTO 5
  IF ~~ THEN REPLY @30 GOTO 8
  IF ~Global("NTMeetIndfigtToOffer","GLOBAL",1)
  GlobalLT("NTHaeballMakesMageDeal","GLOBAL",1)~ THEN REPLY @48 GOTO 21
END

IF ~Global("NTHaeballQuestWanted","GLOBAL",1)
PartyHasItem("DSGBBOW")
!PartyHasItem("NTMISC10")~ THEN BEGIN 11
  SAY @31
  IF ~~ THEN REPLY @32 GOTO 9
  IF ~~ THEN REPLY @1 DO ~StartStore("STHaebal",LastTalkedToBy(Myself))~ JOURNAL @10016 EXIT 
  IF ~Global("NTMeetIndfigtToOffer","GLOBAL",1)
  GlobalLT("NTHaeballMakesMageDeal","GLOBAL",1)~ THEN REPLY @48 GOTO 21
END

IF ~Global("NTHaeballQuestWanted","GLOBAL",1)
PartyHasItem("NTMISC10")~ THEN BEGIN 12
  SAY @33
  IF ~~ THEN GOTO 9
END

IF WEIGHT #1
~OR(2)
	Global("NTHaeballQuestWanted","GLOBAL",2)
	PartyHasItem("NTMISC10")
PartyHasItem("DSGBBOW")~ THEN BEGIN 13
  SAY @54
  IF ~~ THEN REPLY @36 GOTO 12
END

IF ~Global("NTHaeballQuestWanted","GLOBAL",1)
!PartyHasItem("DSGBBOW")
!PartyHasItem("NTMISC10")~ THEN BEGIN 14
  SAY @37
  IF ~~ THEN REPLY @38 DO ~StartStore("STHaebal",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @39 EXIT
  IF ~Global("NTMeetIndfigtToOffer","GLOBAL",1)
  GlobalLT("NTHaeballMakesMageDeal","GLOBAL",1)~ THEN REPLY @48 GOTO 21
END

IF ~~ THEN BEGIN 15
  SAY @43
  IF ~~ THEN REPLY @44 EXIT
  IF ~~ THEN REPLY @1 DO ~StartStore("STHaebal",LastTalkedToBy(Myself))~ JOURNAL @10016 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @45
  IF ~~ THEN REPLY @46 GOTO 8
END

IF ~~ THEN BEGIN 17
  SAY @47
  IF ~Global("NTMeetIndfigtToOffer","GLOBAL",1)~ THEN REPLY @48 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @49
  IF ~!Global("NTTalkedToHasdar","GLOBAL",2)
!Global("NTTalkedToHasdar","GLOBAL",3)~ THEN REPLY @50 DO ~SetGlobal("NTHaeballMakesMageDeal","GLOBAL",1)~ GOTO 5
  IF ~!Global("NTTalkedToHasdar","GLOBAL",2)
!Global("NTTalkedToHasdar","GLOBAL",3)~ THEN REPLY @12 DO ~SetGlobal("NTHaeballMakesMageDeal","GLOBAL",1)~ GOTO 5
  IF ~OR(2)
	Global("NTTalkedToHasdar","GLOBAL",2)
	Global("NTTalkedToHasdar","GLOBAL",3)~ THEN + 19
END

/* Hasdar still alive: Haebal gives only Bowquest */
IF ~~ THEN BEGIN 19
SAY @51
IF ~~ THEN DO ~SetGlobal("NTHaeballMakesMageDeal","GLOBAL",1) SetGlobal("NTHaeballQuestWanted","GLOBAL",2) RevealAreaOnMap("AR40PB")~ UNSOLVED_JOURNAL @10019 EXIT
END

IF ~Global("NTHaeballQuestWanted","GLOBAL",2)
!PartyHasItem("DSGBBOW")~ THEN BEGIN 20
SAY @52
  ++ @38 DO ~StartStore("STHaebal",LastTalkedToBy(Myself))~ JOURNAL @10016 EXIT
  ++ @3 EXIT
END

IF ~~ THEN BEGIN 21
SAY @53
IF ~~ THEN DO ~SetGlobal("NTHaeballMakesMageDeal","GLOBAL",1)~ EXIT
END
