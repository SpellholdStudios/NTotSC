BEGIN ~NTVANESS~

IF ~~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~AddexperienceParty(500)
EscapeArea()
~ EXIT
END

IF ~!Dead("NTFALTON")~ BEGIN 1
SAY @1
IF ~~ THEN EXTERN ~NTFALTON~ 0
END

IF ~Dead("NTFALTON")~ BEGIN 1
SAY @2
IF ~~ THEN DO ~EraseJournalEntry(@10036)
EraseJournalEntry(@10097)
EraseJournalEntry(@10106)
EscapeArea()~ EXIT
END





