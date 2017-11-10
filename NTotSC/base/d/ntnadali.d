BEGIN ~NTNADALI~

IF ~False()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("NTHelpNadalin","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("NTHelpNadalin","GLOBAL",1)
RevealAreaOnMap("AR20PB")
SetGlobal("NTAR20PBReveal_Northern_Coast","GLOBAL",1)~ UNSOLVED_JOURNAL @10039 EXIT
END

IF ~OR(3)
	!Dead("NTHUMBAB")
	!Dead("NTOOGOOR")
	!Dead("NTSilua")
Global("NTHelpNadalin","GLOBAL",1)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("NTHelpNadalin","GLOBAL",1)
ReputationLT(LastTalkedToBy,8)
Dead("NTHUMBAB")
Dead("NTOOGOOR")
Dead("NTSilua")~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN DO ~AddexperienceParty(1000)
//ReputationInc(1)
SetGlobal("NTHelpNadalin","GLOBAL",2)
EraseJournalEntry(@10039)
EraseJournalEntry(@10069)
EraseJournalEntry(@10090)
AddJournalEntry(@10091,QUEST)
EscapeArea()~ SOLVED_JOURNAL @10040 EXIT
END

IF ~Global("NTHelpNadalin","GLOBAL",1)
Dead("NTHUMBAB")
Dead("NTOOGOOR")
Dead("NTSilua")~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~AddexperienceParty(1000)
//ReputationInc(1)
SetGlobal("NTHelpNadalin","GLOBAL",2)
EraseJournalEntry(@10039)
EraseJournalEntry(@10069)
EraseJournalEntry(@10090)
AddJournalEntry(@10091,QUEST)
EscapeArea()~ SOLVED_JOURNAL @10040 EXIT
END

IF WEIGHT #0
~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 5
  SAY @7
  IF ~~ THEN EXIT
END

IF ~Global("NTIn_90PB","GLOBAL",0)
Global("NTHelpNadalin","GLOBAL",2)
AreaCheck("AR20PB")~ THEN BEGIN 6
  SAY @8
  IF ~Global("NTAverySaysOfKey","GLOBAL",1)
Global("NTSzyperNadalin","GLOBAL",1)~ THEN REPLY @9 GOTO 7
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetGlobal("NTIn_90PB","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUAPanic("AR90PB","",[441.673],12))
ActionOverride(Player1,LeaveAreaLUA("AR90PB","",[441.673],12))
ActionOverride(Player2,LeaveAreaLUA("AR90PB","",[420.718],12))
ActionOverride(Player3,LeaveAreaLUA("AR90PB","",[498.696],12))
ActionOverride(Player4,LeaveAreaLUA("AR90PB","",[466.738],12))
ActionOverride(Player5,LeaveAreaLUA("AR90PB","",[558.710],12))
ActionOverride(Player6,LeaveAreaLUA("AR90PB","",[532.757],12))
~ EXIT
  IF ~~ THEN REPLY @13 EXIT
END

IF ~Global("NTIn_90PB","GLOBAL",1)
AreaCheck("AR90PB")~ THEN BEGIN 8
  SAY @14
  IF ~~ THEN REPLY @15 DO ~SetGlobal("NTIn_90PB","GLOBAL",0)
ActionOverride(Player1,LeaveAreaLUAPanic("AR20PB","",[189.1721],12))
ActionOverride(Player1,LeaveAreaLUA("AR20PB","",[189.1721],12))
ActionOverride(Player2,LeaveAreaLUA("AR20PB","",[117.1905],12))
ActionOverride(Player3,LeaveAreaLUA("AR20PB","",[136.1854],12))
ActionOverride(Player4,LeaveAreaLUA("AR20PB","",[284.1947],12))
ActionOverride(Player5,LeaveAreaLUA("AR20PB","",[312.1875],12))
ActionOverride(Player6,LeaveAreaLUA("AR20PB","",[374.1835],12))
~ EXIT
  IF ~~ THEN REPLY @16 EXIT
END

IF ~Dead("NTDRAAGI")
!Dead("NTSALMI2")
!Global("NTMeandarNeedHelp","GLOBAL",2)~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @19
  IF ~~ THEN DO ~SetGlobal("NTIn_90PB","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUAPanic("AR90PB","",[441.673],12))
ActionOverride(Player1,LeaveAreaLUA("AR90PB","",[441.673],12))
ActionOverride(Player2,LeaveAreaLUA("AR90PB","",[420.718],12))
ActionOverride(Player3,LeaveAreaLUA("AR90PB","",[498.696],12))
ActionOverride(Player4,LeaveAreaLUA("AR90PB","",[466.738],12))
ActionOverride(Player5,LeaveAreaLUA("AR90PB","",[558.710],12))
ActionOverride(Player6,LeaveAreaLUA("AR90PB","",[532.757],12))~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @6
  IF ~~ THEN DO ~SetGlobal("NTHelpNadalin","GLOBAL",2)
EscapeArea()~ SOLVED_JOURNAL @10040 EXIT
END

IF ~OR(2)
	Dead("NTSALMI2")
	Global("NTMeandarNeedHelp","GLOBAL",2)~ THEN BEGIN 12
  SAY @21
  IF ~~ THEN REPLY @18 GOTO 10
END
