BEGIN ~NTKROTAN~

IF ~Global("NT_EldodRestored","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN ~NTHOBGOD~ 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXTERN ~NTELDOD~ 12
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~ActionOverride("NTKAMIRA",Enemy())
ActionOverride("NTMORDOR",Enemy())
ActionOverride("NTORPEHO",Enemy())
ActionOverride("NTHOBGOD",Enemy())
EraseJournalEntry(@10003)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10015)
EraseJournalEntry(@10060)
EraseJournalEntry(@10061)
EraseJournalEntry(@10075)
Enemy()~ SOLVED_JOURNAL @10032 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN DO ~ActionOverride("NTKAMIRA",Enemy())
ActionOverride("NTMORDOR",Enemy())
ActionOverride("NTORPEHO",Enemy())
ActionOverride("NTHOBGOD",Enemy())
ActionOverride("NTELDOD1",Enemy())
EraseJournalEntry(@10003)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10015)
EraseJournalEntry(@10060)
EraseJournalEntry(@10061)
EraseJournalEntry(@10075)
Enemy()~ SOLVED_JOURNAL @10032 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~ActionOverride("NTKAMIRA",Enemy())
ActionOverride("NTMORDOR",Enemy())
ActionOverride("NTORPEHO",Enemy())
ActionOverride("NTHOBGOD",Enemy())
EraseJournalEntry(@10003)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10015)
EraseJournalEntry(@10060)
EraseJournalEntry(@10061)
EraseJournalEntry(@10075)
Enemy()~ JOURNAL @10032 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN DO ~ActionOverride("NTKAMIRA",Enemy())
ActionOverride("NTMORDOR",Enemy())
ActionOverride("NTORPEHO",Enemy())
ActionOverride("NTHOBGOD",Enemy())
EraseJournalEntry(@10003)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10015)
EraseJournalEntry(@10060)
EraseJournalEntry(@10061)
EraseJournalEntry(@10075)
Enemy()~ SOLVED_JOURNAL @10032 EXIT
END

IF ~Global("NTEldodComeEnemy","GLOBAL",2)~ THEN BEGIN 8
  SAY @0
  IF ~~ THEN EXTERN ~NTELDOD~ 13
END

IF ~Dead("NTELDOD")~ THEN BEGIN 9
  SAY @0
  IF ~~ THEN EXTERN ~NTHOBGOD~ 1
END

IF ~!Global("NT_EldodRestored","GLOBAL",3)~ THEN BEGIN 10
  SAY @0
  IF ~~ THEN EXTERN ~NTHOBGOD~ 0
END

IF ~Dead("NTELDOD1")~ THEN BEGIN 11
  SAY @0
  IF ~~ THEN EXTERN ~NTHOBGOD~ 1
END
