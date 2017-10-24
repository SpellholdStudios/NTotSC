BEGIN ~NTSVLAST~

IF ~NumberOfTimesTalkedTo(0)
Global("NTSvlastSumonRevenant","GLOBAL",0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("NTSvlastSumonRevenant","GLOBAL",1)
CreateCreature("NTZOMBJU",[2026.985],0)
~ UNSOLVED_JOURNAL @10064 EXIT
END

IF ~Dead("NTZOMBJU")
Global("NTSvlastSumonRevenant","GLOBAL",1)
~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~AddexperienceParty(500)
EraseJournalEntry(@10064)
IncrementGlobal("NTSvlastSumonRevenant","GLOBAL",1)
~ UNSOLVED_JOURNAL @10065 EXIT
END

IF ~Global("NTSvlastSumonRevenant","GLOBAL",2)
~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~EraseJournalEntry(@10065)
EscapeArea()~ SOLVED_JOURNAL @10101 EXIT
END

IF ~!Dead("NTZOMBJU")~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~Global("Attacked","LOCALS",1)
~ THEN BEGIN 6
  SAY @8
  IF ~~ THEN DO ~EraseJournalEntry(@10065)
Enemy()
~ SOLVED_JOURNAL @10100 EXIT
END


