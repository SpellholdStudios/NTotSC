BEGIN ~NTPILAR~

IF ~!PartyHasItem("NTPOTN01")
Global("NTPilarToGheldehar","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("NTPOTN01")
Global("NTPilarToGheldehar","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~TakePartyItem("NTPOTN01")
DestroyItem("NTPOTN01")
SetGlobal("NTPilarToGheldehar","GLOBAL",1)~ UNSOLVED_JOURNAL @10055 EXIT
END

IF ~!PartyHasItem("NTRING03")
Global("NTPilarToGheldehar","GLOBAL",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("NTRING03")
CheckStatLT(LastTalkedToBy,18,CHR)
Global("NTPilarToGheldehar","GLOBAL",1)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~AddexperienceParty(100)
TakePartyItem("NTRING03")
DestroyItem("NTRING03")
SetGlobal("NTPilarToGheldehar","GLOBAL",2)
EraseJournalEntry(@10055)
EscapeArea()~ EXIT
END

IF ~PartyHasItem("NTRING03")
CheckStatGT(LastTalkedToBy,17,CHR)
Global("NTPilarToGheldehar","GLOBAL",1)~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~GiveItemCreate("RING19",LastTalkedToBy,0,0,0)
AddexperienceParty(500)
TakePartyItem("NTRING03")
DestroyItem("NTRING03")
SetGlobal("NTPilarToGheldehar","GLOBAL",2)
EraseJournalEntry(@10055)
EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~TakePartyItem("NTRING03")
DestroyItem("NTRING03")
SetGlobal("NTPilarToGheldehar","GLOBAL",2)
EraseJournalEntry(@10055)
EscapeArea()~ EXIT
END
