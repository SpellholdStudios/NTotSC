BEGIN ~NTOUPAST~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~OR(3)
NumberOfTimesTalkedTo(2)
Global("NT_HasBookOfUnknowing","GLOBAL",1)
Global("NTTalkedToOupaste","GLOBAL",1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~OR(2)
StateCheck(Myself,STATE_CHARMED)
NumTimesTalkedToGT(2)~ THEN BEGIN 4
  SAY @4
  IF ~Global("NTTalkedToLobarMage","GLOBAL",2)
Global("NTTalkedToOupaste","GLOBAL",0)
Global("NT_HasBookOfUnknowing","GLOBAL",0)~ THEN REPLY @5 DO ~ChangeEnemyAlly(Myself,NEUTRAL)~ GOTO 6
  IF ~Global("NT_HasBookOfUnknowing","GLOBAL",0)~ THEN REPLY @6 DO ~ChangeEnemyAlly(Myself,NEUTRAL)~ EXIT
IF ~Global("NT_HasBookOfUnknowing","GLOBAL",1)~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @12
  IF ~Global("NT_PCEnteredPass80PB","GLOBAL",0)~ THEN DO ~SetGlobal("NTTalkedToOupaste","GLOBAL",1)
ChangeEnemyAlly(Myself,NEUTRAL)
EraseJournalEntry(@10002)
RevealAreaOnMap("%FireLeafForest%")~ UNSOLVED_JOURNAL @10052 EXIT
  IF ~Global("NT_PCEnteredPass80PB","GLOBAL",1)~ THEN DO ~SetGlobal("NTTalkedToOupaste","GLOBAL",1)
ChangeEnemyAlly(Myself,NEUTRAL)
EraseJournalEntry(@10002)~ UNSOLVED_JOURNAL @10103 EXIT
END
