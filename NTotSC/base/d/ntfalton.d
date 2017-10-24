BEGIN ~NTFALTON~

IF ~!Dead("NTVANESS")~ THEN BEGIN 0
  SAY @0
  IF ~!Global("NTMagnadNeedHelpForBabys","GLOBAL",1)~ THEN DO ~SetGlobal("NTMagnadNeedHelpForBabys","GLOBAL",3)
AddexperienceParty(500)
EscapeArea()
~ UNSOLVED_JOURNAL @10097 EXTERN ~NTVANESS~ 0
  IF ~Global("NTMagnadNeedHelpForBabys","GLOBAL",1)~ THEN DO ~SetGlobal("NTMagnadNeedHelpForBabys","GLOBAL",4)
AddexperienceParty(500)
EscapeArea()
~ UNSOLVED_JOURNAL @10097 EXTERN ~NTVANESS~ 0
  IF ~OR(2)
	Dead("NTMAGNAD")
	Dead("NTWINORM")~ THEN DO ~EraseJournalEntry(@10036)
EraseJournalEntry(@10097)
EraseJournalEntry(@10106)
ActionOverride("NTVANESS",EscapeArea())
EscapeArea()~ SOLVED_JOURNAL @10108 EXIT
END

IF ~Dead("NTVANESS")~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~EraseJournalEntry(@10036)
EraseJournalEntry(@10097)
EraseJournalEntry(@10106)
ActionOverride("NTVANESS",EscapeArea())
EscapeArea()~ EXIT
END
