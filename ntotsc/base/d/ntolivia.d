BEGIN ~NTOLIVIA~

IF ~False()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("NTOliviaSaysToFly","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("NTOliviaSaysToFly","GLOBAL",1)~ UNSOLVED_JOURNAL @10044 EXIT
END

IF ~PartyHasItem("POTN45")~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN DO ~TakePartyItemNum("POTN45",1)
DestroyItem("POTN45")
EraseJournalEntry(@10044)
GiveItemCreate("WAND07",LastTalkedToBy(Myself),1,10,0)
ReallyForceSpellRES("NTOLIVIA",Myself)
EscapeAreaDestroy(90)~ SOLVED_JOURNAL @10045 EXIT
END

IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN EXIT
END

IF ~!PartyHasItem("POTN45")~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN EXIT
END
