BEGIN ~NTSATOS~

IF ~Global("NTTalkedToSatos","GLOBAL",0)
Global("NTSatosInformedPB","GLOBAL",0)
!Dead("NTKROTAN")
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @5 GOTO 4
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN EXTERN ~NTKAMIRA~ 0
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN EXTERN ~NTMORDOR~ 0
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN DO ~SetGlobal("NTTalkedToSatos","GLOBAL",1)
~ UNSOLVED_JOURNAL @10060 EXIT
END

IF WEIGHT #3
~Global("NTSatosMustDie","GLOBAL",3)
~ THEN BEGIN 7
  SAY @12
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @13
  IF ~~ THEN DO ~GiveItemCreate("NTKEYPB5",LastTalkedToBy(Myself),0,0,0)
AddexperienceParty(5000)
SetGlobal("NTSatosMustDie","GLOBAL",4)
SetGlobal("NTTalkedToSatos","GLOBAL",1)
Kill("NTSATOS1")~ UNSOLVED_JOURNAL @10061 EXTERN ~NTKAMIRA~ 3
END

IF WEIGHT #0
~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN EXIT
END

IF ~Dead("NTKROTAN")~ THEN BEGIN 10
  SAY @16
  IF ~~ THEN EXIT
  IF ~Global("NTSatosReward","GLOBAL",0)~ THEN DO ~SetGlobal("NTTalkedToSatos","GLOBAL",1)
AddexperienceParty(5000)
SetGlobal("NTSatosReward","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1
~Global("NT_EldodRestored","GLOBAL",2)
Global("NTSatosInformedPB","GLOBAL",0)
Global("NTSatosMustDie","GLOBAL",0)
!Dead("NTKROTAN")
~ THEN BEGIN 11
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @19
  IF ~~ THEN DO ~SetGlobal("NTTalkedToSatos","GLOBAL",1)
SetGlobal("NTSatosInformedPB","GLOBAL",1)
~ EXIT
END

IF WEIGHT #2
~Global("NT_EldodRestored","GLOBAL",3)
Global("NTSatosInformedPB","GLOBAL",0)
Global("NTSatosMustDie","GLOBAL",0)
!Dead("NTKROTAN")
~ THEN BEGIN 13
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 12
END

IF ~Global("NTTalkedToSatos","GLOBAL",1)
~ THEN BEGIN 14
  SAY @15
  IF ~~ THEN EXIT
END
