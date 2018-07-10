BEGIN ~NTNASHA~


IF ~Global("NT_KeelorNASHA","GLOBAL",1)
!Allegiance(Myself,ENEMY)~ THEN BEGIN after_keelor
  SAY @1
  IF ~~ THEN DO ~SetGlobal("NT_KeelorNASHA","GLOBAL",2)~ EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
!Allegiance(Myself,ENEMY)
IsGabber(Player1)
HPPercentLT(Player1,100)~ THEN BEGIN heal_player1
  SAY @2
  IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_HEAL)~ EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
IsGabber(Player1)
HPPercent(Player1,100)
!Allegiance(Myself,ENEMY)~ THEN BEGIN no_healing_player1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
!Allegiance(Myself,ENEMY)
IsGabber(Player2)
HPPercentLT(Player2,100)~ THEN BEGIN heal_player2
  SAY @2
  IF ~~ THEN DO ~ReallyForceSpell(Player2,CLERIC_HEAL)~ EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
IsGabber(Player2)
HPPercent(Player2,100)
!Allegiance(Myself,ENEMY)~ THEN BEGIN no_healing_player2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
!Allegiance(Myself,ENEMY)
IsGabber(Player3)
HPPercentLT(Player3,100)~ THEN BEGIN heal_player3
  SAY @2
  IF ~~ THEN DO ~ReallyForceSpell(Player3,CLERIC_HEAL)~ EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
IsGabber(Player3)
HPPercent(Player3,100)
!Allegiance(Myself,ENEMY)~ THEN BEGIN no_healing_player3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
!Allegiance(Myself,ENEMY)
IsGabber(Player4)
HPPercentLT(Player4,100)~ THEN BEGIN heal_player4
  SAY @2
  IF ~~ THEN DO ~ReallyForceSpell(Player4,CLERIC_HEAL)~ EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
IsGabber(Player4)
HPPercent(Player4,100)
!Allegiance(Myself,ENEMY)~ THEN BEGIN no_healing_player4
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
!Allegiance(Myself,ENEMY)
IsGabber(Player5)
HPPercentLT(Player5,100)~ THEN BEGIN heal_player5
  SAY @2
  IF ~~ THEN DO ~ReallyForceSpell(Player5,CLERIC_HEAL)~ EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
IsGabber(Player5)
HPPercent(Player5,100)
!Allegiance(Myself,ENEMY)~ THEN BEGIN no_healing_player5
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
!Allegiance(Myself,ENEMY)
IsGabber(Player6)
HPPercentLT(Player6,100)~ THEN BEGIN heal_player6
  SAY @2
  IF ~~ THEN DO ~ReallyForceSpell(Player6,CLERIC_HEAL)~ EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
IsGabber(Player6)
HPPercent(Player6,100)
!Allegiance(Myself,ENEMY)~ THEN BEGIN no_healing_player6
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
!Allegiance(Myself,ENEMY)
Allegiance(LastTalkedToBy,GOODCUTOFF)
HPPercentLT(LastTalkedToBy,100)~ THEN BEGIN heal_familiar
  SAY @2
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,CLERIC_HEAL)~ EXIT
END

IF ~Global("NT_KeelorNASHA","GLOBAL",2)
Allegiance(LastTalkedToBy,GOODCUTOFF)
HPPercent(LastTalkedToBy,100)
!Allegiance(Myself,ENEMY)~ THEN BEGIN no_healing_familiar
  SAY @3
  IF ~~ THEN EXIT
END


/*
IF ~RandomNum(2,1) Global("NT_KeelorNASHA","GLOBAL",1)
!Allegiance(Myself,ENEMY)
OR(6)
HPPercentLT(Player1,100)
HPPercentLT(Player2,100)
HPPercentLT(Player3,100)
HPPercentLT(Player4,100)
HPPercentLT(Player5,100)
HPPercentLT(Player6,100)~ THEN BEGIN 2
  SAY @1
  IF ~~ THEN DO ~SetGlobal("NT_KeelorNASHA_HEAL","LOCALS",1)~ EXIT
END

IF ~RandomNum(2,2) Global("NT_KeelorNASHA","GLOBAL",1)
!Allegiance(Myself,ENEMY)
OR(6)
HPPercentLT(Player1,100)
HPPercentLT(Player2,100)
HPPercentLT(Player3,100)
HPPercentLT(Player4,100)
HPPercentLT(Player5,100)
HPPercentLT(Player6,100)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("NT_KeelorNASHA_HEAL","LOCALS",1)~ EXIT
END

IF ~HPPercent(Player1,100)
HPPercent(Player2,100)
HPPercent(Player3,100)
HPPercent(Player4,100)
HPPercent(Player5,100)
HPPercent(Player6,100)
!Allegiance(Myself,ENEMY)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

*/

IF ~Allegiance(Myself,ENEMY)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~~ EXIT
END


IF ~True()~ THEN BEGIN befor_keelor
  SAY @0
  IF ~~ THEN EXIT
END
