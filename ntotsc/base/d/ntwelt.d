BEGIN ~NTWELT~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN UNSOLVED_JOURNAL @10074 EXIT
END

IF ~False()
~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("NTWeltAndRats","GLOBAL",0)
PartyHasItem("NTMISC07")
~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~TakePartyItem("NTMISC07")
SetGlobal("NTWeltAndRats","GLOBAL",1)
~ EXIT
END

IF ~PartyHasItem("NTMISC07")
Global("NTWeltAndRats","GLOBAL",1)
~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN DO ~TakePartyItem("NTMISC07")
AddexperienceParty(500)
EraseJournalEntry(@10074)
ActionOverride("POOCH",EscapeArea())
EscapeArea()~ EXIT
END

IF ~!PartyHasItem("NTMISC07")
Global("NTWeltAndRats","GLOBAL",1)
~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
