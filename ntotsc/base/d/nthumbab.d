BEGIN ~NTHUMBAB~

IF ~!Dead("NTOOGOOR")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 UNSOLVED_JOURNAL @10025 GOTO 2
  IF ~~ THEN REPLY @2 UNSOLVED_JOURNAL @10025 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN DO ~CreateCreature("NTHELLS1",[494.1381],0)
Enemy()~ JOURNAL @10025 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 1
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @10 UNSOLVED_JOURNAL @10026 EXIT
  IF ~~ THEN REPLY @12 GOTO 1
END

IF ~Dead("NTOOGOOR") Global("NT_HumbabSpawnEnemyOnce","LOCALS",0)~ THEN BEGIN 4
  SAY @13
  IF ~~ THEN DO ~SetGlobal("NT_HumbabSpawnEnemyOnce","LOCALS",1)
CreateCreature("NTHELLS1",[496.1375],0)
CreateCreature("NTHELLS1",[262.1365],0)
EraseJournalEntry(@10025)
Enemy()~ EXIT
END
