EXTEND_BOTTOM NTHUMBAB 1
  IF ~!LevelLT(Player1,4)
  !DifficultyLT(NORMAL)~ THEN DO ~CreateCreature("NTHELLS1",[494.1381],0)
CreateCreature("NTHELLS1",[264.1379],0)
Enemy()~ JOURNAL @10025 EXIT
END

EXTEND_BOTTOM NTHUMBAB 4
  IF ~!LevelLT(Player1,4)
  !DifficultyLT(NORMAL)~ THEN DO ~SetGlobal("NT_HumbabSpawnEnemyOnce","LOCALS",1)
CreateCreature("NTHELLS1",[494.1381],0)
CreateCreature("NTHELLS1",[264.1379],0)
CreateCreature("NTHELLS1",[496.1375],0)
CreateCreature("NTHELLS1",[262.1365],0)
EraseJournalEntry(@10025)
Enemy()~ EXIT
END