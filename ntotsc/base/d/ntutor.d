BEGIN ~NTUTOR~

IF ~Global("NTTalkedToSatos","GLOBAL",1)
Global("NT_TalkedToPC","LOCALS",0)
!Dead("NTKROTAN")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("NT_TalkedToPC","LOCALS",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @3 DO ~SetGlobal("NT_TalkedToPC","LOCALS",1)~ GOTO 3
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 DO ~SetGlobal("NT_TalkedToPC","LOCALS",1)~ GOTO 3
  IF ~~ THEN REPLY @3 DO ~SetGlobal("NT_TalkedToPC","LOCALS",1)~ GOTO 3
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~RandomNum(3,1)~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN EXIT
END