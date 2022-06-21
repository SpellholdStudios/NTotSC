/* "NTFreeReedrigToLeave" -> "NTTalkedToReedig" = 1

Global("NTReedrigComesToBeard","GLOBAL",1) -> "NTTalkedToReedig" = 2 (ar1000.baf)
Global("NTTalkedToReedigInBeard","GLOBAL",1) -> "NTTalkedToReedig" = 3 
*/

BEGIN ~NTREEDRI~

IF ~NumberOfTimesTalkedTo(0)
Global("NTTalkedToReedig","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("NTTalkedToReedig","GLOBAL",1)
AddexperienceParty(5000)
EscapeArea()~ UNSOLVED_JOURNAL @10059 EXIT
END

IF ~AreaCheck("%UlgothsBeard%")
GlobalGT("NTTalkedToReedig","GLOBAL",0)
Global("NTFoundNTPBlet4","GLOBAL",0)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 EXIT
END

IF ~OR(2) !AreaCheck("%UlgothsBeard%")
GlobalGT("NTTalkedToReedig","GLOBAL",0)
Global("NTFoundNTPBlet4","GLOBAL",1)~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN DO ~RevealAreaOnMap("AR60PB")
SetGlobal("NTTalkedToReedig","GLOBAL",3)
EraseJournalEntry(@10059)
EscapeArea()
~ UNSOLVED_JOURNAL @10085 EXIT
END

IF WEIGHT #0
~Dead("NTDRAAGI")~ THEN 5
SAY @10
  IF ~~ THEN DO ~EraseJournalEntry(@10059)
EscapeArea()~ EXIT
END

