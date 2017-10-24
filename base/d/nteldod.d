/*
Global("NT_EldodRestored","GLOBAL",1): PC threw restoration on Eldod (nteldod.baf)
Global("NT_EldodRestored","GLOBAL",2): Eldod is free of mind and proceeded to crypt (spawns Eldod in crypt and sets it to "3")
Global("NT_EldodRestored","GLOBAL",3): Eldod is free of mind but didn't come into the crypt.
Global("NT_EldodRestored","GLOBAL",4): (set by ar34pb.baf: Eldod spawned in crypt)
Global("NT_EldodRestored","GLOBAL",5): Eldod was freed inside of crypt (during or after fight)

*/

BEGIN ~NTELDOD~

IF ~Global("NTTalkedToSatos","GLOBAL",0) Global("NT_EldodRestored","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN UNSOLVED_JOURNAL @10015 EXIT
END

IF ~Global("NT_EldodRestored","GLOBAL",0)
Global("NTTalkedToSatos","GLOBAL",1)
Global("NTEldodIsFriendKrotan","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("NTTalkedToEldod","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("NTTalkedToEldod","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("NTTalkedToEldod","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~SetGlobal("NTEldodIsFriendKrotan","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @10007 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~SetGlobal("NTEldodIsFriendKrotan","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @10007 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN DO ~SetGlobal("NTEldodIsFriendKrotan","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @10007 EXIT
END

IF ~Global("NTEldodIsFriendKrotan","GLOBAL",1)
Global("NT_EldodRestored","GLOBAL",0)
!Global("NTKrotanAppears","GLOBAL",1)
!Dead("NTKROTAN")
Global("NTEldodComeEnemy","GLOBAL",0)
Global("NTSatosMustDie","GLOBAL",0)~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN DO ~SetGlobal("NTEldodComeEnemy","GLOBAL",1)
SetGlobal("NTSatosMustDie","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @10008 EXIT
END

IF ~!AreaCheck("AR34PB")
Global("NT_EldodRestored","GLOBAL",1)
Global("NTSatosMustDie","GLOBAL",0)~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 9
  IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 8
  IF ~~ THEN REPLY @17 DO ~SetGlobal("NTSatosMustDie","GLOBAL",1)
ActionOverride("NTELDOD",Enemy())~ UNSOLVED_JOURNAL @10009 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @19
  IF ~~ THEN DO ~SetGlobal("NT_EldodRestored","GLOBAL",2)
GiveItemCreate("NTKEYPB5",LastTalkedToBy(Myself),0,0,0)
EscapeArea()
~ UNSOLVED_JOURNAL @10009 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @20
  IF ~~ THEN DO ~SetGlobal("NT_EldodRestored","GLOBAL",3)
GiveItemCreate("NTKEYPB5",LastTalkedToBy(Myself),0,0,0)
ChangeEnemyAlly(Myself,NEUTRAL)
~ UNSOLVED_JOURNAL @10009 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @21
  IF ~~ THEN DO ~SetGlobal("NT_EldodRestored","GLOBAL",2)
GiveItemCreate("NTKEYPB5",LastTalkedToBy(Myself),0,0,0)
EscapeArea()
~ UNSOLVED_JOURNAL @10009 EXIT
END

IF ~GlobalGT("NT_EldodRestored","GLOBAL",1)~ THEN BEGIN 11
  SAY @22
  IF ~Dead("NTKROTAN")~ THEN DO ~EscapeArea()~ EXIT //EXTERN ~NTKROTAN~ 7
  IF ~!Dead("NTKROTAN")~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @23
  IF ~~ THEN EXTERN ~NTKROTAN~ 2
END

IF ~~ THEN BEGIN 13
  SAY @24
  IF ~InMyArea("NTBRENTA")~ THEN EXTERN ~NTBRENTA~ 8
  IF ~!InMyArea("NTBRENTA")~ THEN EXTERN ~NTKROTAN~ 5
END

IF ~AreaCheck("AR34PB")
Global("NT_EldodRestored","GLOBAL",1)~ THEN BEGIN 14
  SAY @25
  IF ~~ THEN DO ~SetGlobal("NT_EldodRestored","GLOBAL",5)~ EXIT 
  IF ~Dead("NTKROTAN")~ THEN + 11
END
