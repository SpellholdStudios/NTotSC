BEGIN ~DSFEYDO~

IF ~ReputationLT(LastTalkedToBy,8)
NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~CreateCreature("DSWELF1",[351.926],0)
CreateCreature("DSWELF2",[523.981],0)
CreateCreature("DSWELF1",[203.999],0)
CreateCreature("DSWELF2",[212.1256],0)
CreateCreature("DSWELF1",[817.973],0)
CreateCreature("DSWELF2",[752.1203],0)
CreateCreature("DSWELF1",[567.1232],0)
CreateCreature("DSWELF2",[1068.1324],0)
CreateCreature("DSWELF1",[1108.1141],0)
CreateCreature("DSWELF2",[700.693],0)
CreateCreature("DSWELF1E",[812.798],0)
CreateCreature("DSWELF2E",[857.654],0)
Enemy()
ActionOverride("SYLVAN",Enemy())
ActionOverride("COOSHEE",Enemy())
ActionOverride("DSFEYDO",Attack([PC]))
ActionOverride("SYLVAN",Attack([PC]))
SetGlobal("Feydoch","GLOBAL",1)~ EXIT
END

IF ~ReputationLT(LastTalkedToBy,15)
ReputationGT(LastTalkedToBy,7)
NumberOfTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 4
  IF ~~ THEN REPLY @4 DO ~CreateCreature("DSWELF1",[351.926],0)
CreateCreature("DSWELF2",[523.981],0)
CreateCreature("DSWELF1",[203.999],0)
CreateCreature("DSWELF2",[212.1256],0)
CreateCreature("DSWELF1",[817.973],0)
CreateCreature("DSWELF2",[752.1203],0)
CreateCreature("DSWELF1",[567.1232],0)
CreateCreature("DSWELF2",[1068.1324],0)
CreateCreature("DSWELF1",[1108.1141],0)
CreateCreature("DSWELF2",[700.693],0)
CreateCreature("DSWELF1E",[812.798],0)
CreateCreature("DSWELF2E",[857.654],0)
Wait(1)~ GOTO 5
  IF ~~ THEN REPLY @5 DO ~CreateCreature("DSWELF1",[351.926],0)
CreateCreature("DSWELF2",[523.981],0)
CreateCreature("DSWELF1",[203.999],0)
CreateCreature("DSWELF2",[212.1256],0)
CreateCreature("DSWELF1",[817.973],0)
CreateCreature("DSWELF2",[752.1203],0)
CreateCreature("DSWELF1",[567.1232],0)
CreateCreature("DSWELF2",[1068.1324],0)
CreateCreature("DSWELF1",[1108.1141],0)
CreateCreature("DSWELF2",[700.693],0)
CreateCreature("DSWELF1E",[812.798],0)
CreateCreature("DSWELF2E",[857.654],0)
Wait(1)~ GOTO 6
END

IF ~ReputationGT(LastTalkedToBy,14)
NumberOfTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 7
  IF ~~ THEN REPLY @8 DO ~CreateCreature("DSWELF1",[351.926],0)
CreateCreature("DSWELF2",[523.981],0)
CreateCreature("DSWELF1",[203.999],0)
CreateCreature("DSWELF2",[212.1256],0)
CreateCreature("DSWELF1",[817.973],0)
CreateCreature("DSWELF2",[752.1203],0)
CreateCreature("DSWELF1",[567.1232],0)
CreateCreature("DSWELF2",[1068.1324],0)
CreateCreature("DSWELF1",[1108.1141],0)
CreateCreature("DSWELF2",[700.693],0)
CreateCreature("DSWELF1E",[812.798],0)
CreateCreature("DSWELF2E",[857.654],0)
Wait(1)~ GOTO 8
  IF ~~ THEN REPLY @9 DO ~CreateCreature("DSWELF1",[351.926],0)
CreateCreature("DSWELF2",[523.981],0)
CreateCreature("DSWELF1",[203.999],0)
CreateCreature("DSWELF2",[212.1256],0)
CreateCreature("DSWELF1",[817.973],0)
CreateCreature("DSWELF2",[752.1203],0)
CreateCreature("DSWELF1",[567.1232],0)
CreateCreature("DSWELF2",[1068.1324],0)
CreateCreature("DSWELF1",[1108.1141],0)
CreateCreature("DSWELF2",[700.693],0)
CreateCreature("DSWELF1E",[812.798],0)
CreateCreature("DSWELF2E",[857.654],0)
Wait(1)~ GOTO 9
END

IF ~NumberOfTimesTalkedTo(1)
TimerExpired(0)~ THEN BEGIN 3
  SAY @10
  IF ~~ THEN DO ~Enemy()
ActionOverride("SYLVAN",Enemy())
ActionOverride("COOSHEE",Enemy())
ActionOverride("DSFEYDO",Attack([PC]))
ActionOverride("SYLVAN",Attack([PC]))
SetGlobal("Feydoch","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN DO ~CreateCreature("DSWELF1",[351.926],0)
CreateCreature("DSWELF2",[523.981],0)
CreateCreature("DSWELF1",[203.999],0)
CreateCreature("DSWELF2",[212.1256],0)
CreateCreature("DSWELF1",[817.973],0)
CreateCreature("DSWELF2",[752.1203],0)
CreateCreature("DSWELF1",[567.1232],0)
CreateCreature("DSWELF2",[1068.1324],0)
CreateCreature("DSWELF1",[1108.1141],0)
CreateCreature("DSWELF2",[700.693],0)
CreateCreature("DSWELF1E",[812.798],0)
CreateCreature("DSWELF2E",[857.654],0)
Wait(1)
Enemy()
ActionOverride("SYLVAN",Enemy())
ActionOverride("COOSHEE",Enemy())
ActionOverride("DSFEYDO",Attack([PC]))
ActionOverride("SYLVAN",Attack([PC]))
SetGlobal("Feydoch","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN DO ~StartTimer(0,15)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN DO ~StartTimer(0,30)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN DO ~StartTimer(0,15)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @15
  IF ~~ THEN DO ~StartTimer(0,30)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN DO ~StartTimer(0,30)~ EXIT
END

IF ~AttackedBy([ANYONE],DEFAULT)
NumberOfTimesTalkedTo(0)~ THEN BEGIN 10
  SAY @1
  IF ~~ THEN DO ~CreateCreature("DSWELF1",[351.926],0)
CreateCreature("DSWELF2",[523.981],0)
CreateCreature("DSWELF1",[203.999],0)
CreateCreature("DSWELF2",[212.1256],0)
CreateCreature("DSWELF1",[817.973],0)
CreateCreature("DSWELF2",[752.1203],0)
CreateCreature("DSWELF1",[567.1232],0)
CreateCreature("DSWELF2",[1068.1324],0)
CreateCreature("DSWELF1",[1108.1141],0)
CreateCreature("DSWELF2",[700.693],0)
CreateCreature("DSWELF1E",[812.798],0)
CreateCreature("DSWELF2E",[857.654],0)
Wait(1)
Enemy()
ActionOverride("SYLVAN",Enemy())
ActionOverride("COOSHEE",Enemy())
ActionOverride("DSFEYDO",Attack([PC]))
ActionOverride("SYLVAN",Attack([PC]))
SetGlobal("Feydoch","GLOBAL",1)~ EXIT
END

IF ~AttackedBy([ANYONE],DEFAULT)
NumberOfTimesTalkedTo(1)~ THEN BEGIN 11
  SAY @10
  IF ~~ THEN DO ~CreateCreature("DSWELF1",[351.926],0)
CreateCreature("DSWELF2",[523.981],0)
CreateCreature("DSWELF1",[203.999],0)
CreateCreature("DSWELF2",[212.1256],0)
CreateCreature("DSWELF1",[817.973],0)
CreateCreature("DSWELF2",[752.1203],0)
CreateCreature("DSWELF1",[567.1232],0)
CreateCreature("DSWELF2",[1068.1324],0)
CreateCreature("DSWELF1",[1108.1141],0)
CreateCreature("DSWELF2",[700.693],0)
CreateCreature("DSWELF1E",[812.798],0)
CreateCreature("DSWELF2E",[857.654],0)
Wait(1)
Enemy()
ActionOverride("SYLVAN",Enemy())
ActionOverride("COOSHEE",Enemy())
ActionOverride("DSFEYDO",Attack([PC]))
ActionOverride("SYLVAN",Attack([PC]))
SetGlobal("Feydoch","GLOBAL",1)~ EXIT
END
