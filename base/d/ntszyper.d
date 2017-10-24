/* Global("NTHelpSzyper","GLOBAL",0) 

*/

BEGIN ~NTSZYPER~

IF ~~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("NTHelpSzyper","GLOBAL",0)
OR(3)
	!Dead("NTHUMBAB")
	!Dead("NTOOGOOR")
	!Dead("NTSILUA")~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 UNSOLVED_JOURNAL @10067 GOTO 6
END

IF ~Global("NTHelpSzyper","GLOBAL",1)
Dead("NTHUMBAB")
Dead("NTOOGOOR")
Dead("NTSILUA")~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN DO ~SetGlobal("NTHelpSzyper","GLOBAL",2)
AddexperienceParty(1000)
ReputationInc(1)
EraseJournalEntry(@10024)
EraseJournalEntry(@10025)
EraseJournalEntry(@10026)
EraseJournalEntry(@10067)
~ SOLVED_JOURNAL @10068 GOTO 7
END

IF ~Global("NTHelpSzyper","GLOBAL",1)
!Dead("NTHUMBAB")
OR(2)
	!Dead("NTOOGOOR")
	!Dead("NTSILUA")~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~Global("NTHelpSzyper","GLOBAL",1)
Dead("NTHUMBAB")
OR(2)
	!Dead("NTOOGOOR")
	!Dead("NTSILUA")~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("NTHelpSzyper","GLOBAL",0)
Dead("NTHUMBAB")
Dead("NTOOGOOR")
Dead("NTSILUA")~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN REPLY @9 DO ~AddexperienceParty(1000)
ReputationInc(1)
SetGlobal("NTHelpSzyper","GLOBAL",2)
EraseJournalEntry(@10024)
EraseJournalEntry(@10025)
EraseJournalEntry(@10026)
EraseJournalEntry(@10067)
~ SOLVED_JOURNAL @10068 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("NTHelpSzyper","GLOBAL",1)~ + 0
  IF ~~ THEN REPLY @12 DO ~SetGlobal("NTHelpSzyper","GLOBAL",1)~ + 0
END

IF ~~ THEN BEGIN 7
  SAY @13
  IF ~Global("NTAverySaysOfKey","GLOBAL",1)
Global("NTSzyperNadalin","GLOBAL",0)
~ THEN REPLY @14 GOTO 8
  IF ~~ THEN REPLY @15 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @16
  IF ~GlobalLT("NTHelpNadalin","GLOBAL",1)~ THEN REPLY @17 DO ~SetGlobal("NTSzyperNadalin","GLOBAL",1)~ UNSOLVED_JOURNAL @10069 EXIT
  IF ~Global("NTHelpNadalin","GLOBAL",1)~ THEN REPLY @22 DO ~SetGlobal("NTSzyperNadalin","GLOBAL",1)~ UNSOLVED_JOURNAL @10069 EXIT
  IF ~GlobalGT("NTHelpNadalin","GLOBAL",1)~ THEN REPLY @23 DO ~SetGlobal("NTSzyperNadalin","GLOBAL",1)~ UNSOLVED_JOURNAL @10090 EXIT
END

IF ~Global("NTHelpSzyper","GLOBAL",2)
~ THEN BEGIN 9
  SAY @19
  IF ~Global("NTAverySaysOfKey","GLOBAL",1)
Global("NTSzyperNadalin","GLOBAL",0)
~ THEN REPLY @20 GOTO 8
  IF ~~ THEN REPLY @21 EXIT
END
