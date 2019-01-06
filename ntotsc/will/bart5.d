EXTEND_BOTTOM ~BART5~ 0
+~Global("NTWillWantsBlunt","GLOBAL",1)~+ @1 GOTO Flail1
END

APPEND ~BART5~

IF ~~ THEN BEGIN Flail1
  SAY @3
  IF ~~ THEN REPLY @4 EXIT
  IF ~PartyGoldGT(1054)~ THEN REPLY @5 GOTO Flail2
END

IF ~~ THEN BEGIN Flail2
  SAY @6
  IF ~~ THEN DO ~SetGlobal("NTWillWantsBlunt","GLOBAL",2)
TakePartyGold(1055)
GiveItemCreate("NTBLUN06",LastTalkedToBy,0,0,0)
EraseJournalEntry(@10080)
AddexperienceParty(1000)~ SOLVED_JOURNAL @10000 EXIT
END

END
