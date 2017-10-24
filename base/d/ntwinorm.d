BEGIN ~NTWINORM~

IF ~!Dead("NTMAGNAD")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Dead("NTMAGNAD")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~EscapeArea()
EraseJournalEntry(@10036)
EraseJournalEntry(@10097)
EraseJournalEntry(@10106)~ SOLVED_JOURNAL @10107 EXIT
END
