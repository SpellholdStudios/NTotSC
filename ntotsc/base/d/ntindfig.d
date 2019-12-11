BEGIN ~NTINDFIG~

IF ~NumberOfTimesTalkedTo(0)
Global("NTMeetIndfigtToOffer","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @8
  IF ~~ THEN DO ~ActionOverride("NTINDFI1",Enemy())
ActionOverride("NTINDFI2",Enemy())
Enemy()~ EXIT
/*
  IF ~DifficultyGT(HARD)~ THEN DO ~ActionOverride("NTINDFI1",Enemy())
ActionOverride("NTINDFI2",Enemy())
CreateCreature("STALKE",[2054.780],0)
CreateCreature("STALKE",[1231.561],0)
CreateCreature("STALKE",[455.598],0)
CreateCreature("STALKE",[421.689],0)
CreateCreature("STALKE",[897.731],0)
CreateCreature("STALKE",[1534.420],0)
CreateCreature("STALKE",[1642.576],0)
Enemy()~ EXIT
*/
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 2
  IF ~~ THEN REPLY @11 DO ~SetGlobal("NTMeetIndfigtToOffer","GLOBAL",1)~ UNSOLVED_JOURNAL @10093 GOTO 11
  ++ @32 DO ~SetGlobal("NTMeetIndfigtToOffer","GLOBAL",1)~ UNSOLVED_JOURNAL @10093 GOTO 11
END

IF ~Global("NTMeetIndfigtToOffer","GLOBAL",1)
!PartyHasItem("NTMISC06")~ THEN BEGIN 4
  SAY @12
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @14 GOTO 2
END

IF ~Global("NTMeetIndfigtToOffer","GLOBAL",1)
PartyHasItem("NTMISC06")~ THEN BEGIN 5
  SAY @15
  IF ~~ THEN REPLY @16 DO ~EraseJournalEntry(@10093) RevealAreaOnMap("AR40PB")~ UNSOLVED_JOURNAL @10094 GOTO 6
  IF ~~ THEN REPLY @17 GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 7
  IF ~~ THEN REPLY @20 GOTO 2
END

IF ~~ THEN BEGIN 7
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 2
  IF ~~ THEN REPLY @23 DO ~TakePartyItem("NTMISC06")
DestroyItem("NTMISC06")
SetGlobal("NTMeetIndfigtToOffer","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @24
  IF ~~ THEN DO ~TakePartyItem("NTMISC06")
DestroyItem("NTMISC06")
EraseJournalEntry(@10093)
ActionOverride("NTINDFI1",Enemy())
ActionOverride("NTINDFI2",Enemy())
/*
CreateCreature("STALKE",[2054.780],0)
CreateCreature("STALKE",[1231.561],0)
CreateCreature("STALKE",[455.598],0)
CreateCreature("STALKE",[421.689],0)
CreateCreature("STALKE",[897.731],0)
CreateCreature("STALKE",[1534.420],0)
CreateCreature("STALKE",[1642.576],0)
*/
Enemy()~ EXIT
END

IF ~Global("NTMeetIndfigtToOffer","GLOBAL",2)
PartyHasItem("DSGBBOW")~ THEN BEGIN 9
  SAY @25
  IF ~~ THEN REPLY @26 DO ~TakePartyItem("DSGBBOW")
DestroyItem("DSGBBOW")
AddexperienceParty(20000)
EraseJournalEntry(@10094)
ActionOverride("NTINDFIG",DestroySelf())
ActionOverride("NTINDFI1",DestroySelf())
ActionOverride("NTINDFI2",DestroySelf())
/*
CreateCreature("STALKE",[2054.780],0)
CreateCreature("STALKE",[1231.561],0)
CreateCreature("STALKE",[455.598],0)
CreateCreature("STALKE",[421.689],0)
CreateCreature("STALKE",[897.731],0)
CreateCreature("STALKE",[1534.420],0)
CreateCreature("STALKE",[1642.576],0)
*/
~ EXIT
  IF ~~ THEN REPLY @27 GOTO 2
END

IF ~Global("NTMeetIndfigtToOffer","GLOBAL",2)
!PartyHasItem("DSGBBOW")~ THEN BEGIN 10
  SAY @28
  IF ~~ THEN REPLY @29 EXIT
  IF ~~ THEN REPLY @30 GOTO 2
END

IF ~~ THEN BEGIN 11
  SAY @31
  IF ~~ THEN EXIT
END

BEGIN NTINDFI1

IF ~True()~ THEN BEGIN 1
  SAY @33
  IF ~~ THEN EXIT
END
