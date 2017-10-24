BEGIN ~NTGHELDE~

IF ~False()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("NTGheldeharQuest","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("NTGheldeharQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @10014 EXIT
END

IF ~!PartyHasItem("NTBOOT02")
Global("NTGheldeharQuest","GLOBAL",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("NTBOOT02")~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN + 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~TakePartyItem("NTBOOT02")
EraseJournalEntry(@10014)
GivePartyGold(90)
AddexperienceParty(400)
SetGlobal("NTGheldeharQuest","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~AddexperienceParty(400)~ EXIT
END

IF ~Global("NTGheldeharQuest","GLOBAL",2)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #0
~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN EXIT
END
