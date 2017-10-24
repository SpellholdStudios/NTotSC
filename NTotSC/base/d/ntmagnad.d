/*

Global("NTMagnadNeedHelpForBabys","GLOBAL",0)

Global("NTMagnadNeedHelpForBabys","GLOBAL",1): Magnad's quest was accepted
Global("NTMagnadNeedHelpForBabys","GLOBAL",2): Magnad was refused

Global("NTMagnadNeedHelpForBabys","GLOBAL",3): children freed, PC did not tell Magnad that he would help him (set by ntfalton.d)
Global("NTMagnadNeedHelpForBabys","GLOBAL",4): children freed, PC promised Magdad help.

*/

BEGIN ~NTMAGNAD~

IF ~NumberOfTimesTalkedTo(0)
Global("NTMagnadNeedHelpForBabys","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 4
  + ~Global("NTAR10PB_Reveal_FieldOfTheDead","GLOBAL",1)~ + @15 + 10
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN DO ~SetGlobal("NTMagnadNeedHelpForBabys","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8
IF ~~ THEN DO ~SetGlobal("NTMagnadNeedHelpForBabys","GLOBAL",1)
AddJournalEntry(@10106,QUEST)~ UNSOLVED_JOURNAL @10036 EXIT
END

IF ~Global("NTMagnadNeedHelpForBabys","GLOBAL",1)~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN EXIT
END

IF ~Global("NTMagnadNeedHelpForBabys","GLOBAL",2)~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 4
  IF ~~ THEN REPLY @13 EXIT
END

IF ~Global("NTMagnadNeedHelpForBabys","GLOBAL",4)~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN DO ~GiveGoldForce(500)
AddexperienceParty(1000)
ReputationInc(1)
EraseJournalEntry(@10036)
EraseJournalEntry(@10097)
EraseJournalEntry(@10106)
ActionOverride("NTWINORM",EscapeArea())
EscapeArea()~ SOLVED_JOURNAL @10097 EXIT
END

IF ~Global("NTMagnadNeedHelpForBabys","GLOBAL",3)~ THEN BEGIN 8
  SAY @16
  IF ~~ THEN + 7
END

IF WEIGHT #0
~OR(3)
	Dead("NTFALTON")
	Dead("NTVANESS")
	Dead("NTWINORM")~ BEGIN 9
SAY @17
IF ~~ THEN DO ~EraseJournalEntry(@10036)
EraseJournalEntry(@10097)
EraseJournalEntry(@10106)
ActionOverride("NTWINORM",EscapeArea())
EscapeArea()~ SOLVED_JOURNAL @10107 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @18
  IF ~Global("NTAR10PB_Reveal_FieldOfTheDead","GLOBAL",1)~ THEN DO ~SetGlobal("NTMagnadNeedHelpForBabys","GLOBAL",1)~ UNSOLVED_JOURNAL @10036 EXIT
END
