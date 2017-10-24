BEGIN ~NTLLINDE~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN UNSOLVED_JOURNAL @10034 EXIT
END

IF ~!Global("NTLlindellynHasGotArrow","GLOBAL",1)
!PartyHasItem("NTARROW3")~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~TakePartyItem("NTARROW3")
GiveItemCreate("AROW06",LastTalkedToBy,10,0,0)
EraseJournalEntry(@10034)
AddexperienceParty(500)
SetGlobal("NTLlindellynHasGotArrow","GLOBAL",1)~ EXIT
END

IF ~PartyHasItem("NTARROW3")
Global("NTLlindellynHasGotArrow","GLOBAL",0)~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~False()~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("NTLlindellynHasGotArrow","GLOBAL",1)~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8
  IF ~~ THEN GOTO 1
END
