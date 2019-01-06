BEGIN ~NTAVERY~

IF ~!Dead("NTKROTAN")
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN + 3
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN + 3
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN GOTO 3
END

IF ~!Dead("NTKROTAN")
OR(2)
	Global("NT_TalkedToPC","LOCALS",0)
	Global("NTPriestSpokeOfAlter","GLOBAL",1)~ THEN BEGIN 5
  SAY @8
  IF ~Global("NT_TalkedToPC","LOCALS",0)~ THEN REPLY @9 GOTO 6
  IF ~Global("NT_TalkedToPC","LOCALS",0)~ THEN REPLY @10 GOTO 7
  IF ~Global("NT_TalkedToPC","LOCALS",0)~ THEN REPLY @11 GOTO 8
IF ~Global("NTPriestSpokeOfAlter","GLOBAL",1)~ THEN REPLY @25 DO ~SetGlobal("NTPriestSpokeOfAlter","GLOBAL",2)~ GOTO 14
  IF ~~ THEN REPLY @13 GOTO 9  
END

IF ~~ THEN BEGIN 6
  SAY @12
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @10 GOTO 7
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~Global("NTPriestSpokeOfAlter","GLOBAL",1)~ THEN REPLY @25 DO ~SetGlobal("NTPriestSpokeOfAlter","GLOBAL",2)~ GOTO 14
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 8
  IF ~Global("NTPriestSpokeOfAlter","GLOBAL",1)~ THEN REPLY @25 DO ~SetGlobal("NTPriestSpokeOfAlter","GLOBAL",2)~ GOTO 14
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN DO ~SetGlobal("NT_TalkedToPC","LOCALS",1)~ EXIT
END

IF ~!Dead("NTKROTAN") Global("NT_TalkedToPC","LOCALS",1)~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN DO ~SetGlobal("NT_TalkedToPC","LOCALS",1)~ EXIT
END

IF WEIGHT #0
~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 10
  SAY @17
  IF ~~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL)~ EXIT
END

IF ~Dead("NTKROTAN")~ THEN BEGIN 11
  SAY @18
  IF ~~ THEN REPLY @19 EXIT
  IF ~!Global("NTAverySaysOfKey","GLOBAL",1)~ THEN REPLY @20 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @23
  IF ~~ THEN DO ~SetGlobal("NTAverySaysOfKey","GLOBAL",1)
RevealAreaOnMap("AR20PB")
EraseJournalEntry(@10057)
SetGlobal("NTAR20PBReveal_Northern_Coast","Global",1)~ UNSOLVED_JOURNAL @10005 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @26
  IF ~~ THEN EXIT
  IF ~Global("NT_TalkedToPC","LOCALS",0)~ THEN + 5
END
