/*

Global("NTTalkedToHasdar","GLOBAL",1): Hasdar approaches PC after PC talked to Shaella
Global("NTTalkedToHasdar","GLOBAL",2): PC didn't accept the quest but got all info (can ask Lobar nontheless)
Global("NTTalkedToHasdar","GLOBAL",3): PC accepted the quest (former Global("NTTalkedToHasdar1","GLOBAL",1))
Global("NTTalkedToHasdar","GLOBAL",4): trigger Hasdar's appearance in Temple of Black Hand (former Global("NTTalkedToHasdar2","GLOBAL",2))





*/

BEGIN ~NTHASDAR~

/* PC talked to "Elneadra" */
IF ~Global("NTTalkedToHasdar","GLOBAL",1)
Global("NTTalkedToShaellaPB","GLOBAL",3)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
+ ~PartyHasItem("NTMISC10")~ + @42 + 10
+ ~PartyHasItem("NTPBLET2")~ + @37 + confrontation_01
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
  ++ @43 + 3
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 3
  ++ @44 + 3
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN + 4 //REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @14
  IF ~~ THEN REPLY @15 + 8
  IF ~~ THEN REPLY @17 GOTO 6
  IF ~~ THEN REPLY @18 DO ~SetGlobal("NTTalkedToHasdar","GLOBAL",2)~ + 9
END

IF ~~ THEN BEGIN 6
  SAY @19
  IF ~~ THEN REPLY @20 + 13
  IF ~~ THEN REPLY @21 + 8
  IF ~!Global("NTTalkedToHasdar","GLOBAL",3)~ THEN REPLY @18 DO ~SetGlobal("NTTalkedToHasdar","GLOBAL",2)~ + 9
END

IF ~Global("NTTalkedToHasdar","GLOBAL",2)~ THEN BEGIN 7
  SAY @22
  IF ~~ THEN REPLY @23 + 6
  IF ~~ THEN REPLY @24 + 9
  IF ~~ THEN REPLY @25 GOTO 8
+ ~PartyHasItem("NTMISC10")~ + @42 + 10
END

IF ~~ THEN BEGIN 8
  SAY @26
  IF ~~ THEN DO ~SetGlobal("NTTalkedToHasdar","GLOBAL",3)~ UNSOLVED_JOURNAL @10021 EXIT
END

/* this state is also a transition state from state 5 & 7 */
IF ~Global("NTTalkedToHasdar","GLOBAL",3)
!PartyHasItem("NTMISC10")~ THEN BEGIN 9
  SAY @27
  IF ~Global("NTTalkedToHasdar","GLOBAL",3)~ THEN REPLY @28 EXIT
  IF ~Global("NTTalkedToHasdar","GLOBAL",3)~ THEN REPLY @29 GOTO 6
  IF ~!Global("NTTalkedToHasdar","GLOBAL",3)~ THEN EXIT
END

IF ~PartyHasItem("NTMISC10")~ THEN BEGIN 10
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 11
  IF ~~ THEN REPLY @32 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @33
  IF ~~ THEN DO ~TakePartyItem("NTMISC10")
SetGlobal("NTTalkedToHasdar","GLOBAL",4)
CreateCreature("NTLEGIAN",[198.738],8)
CreateCreature("NTMARIEL",[56.748],8)
CreateCreature("SHADOW01",[84.618],0)
CreateCreature("SHADOW01",[38.719],0)
CreateCreature("SHADOW01",[54.798],10)
EraseJournalEntry(@10021)
ActionOverride(Myself,EscapeArea())~ SOLVED_JOURNAL @10022 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @35
  IF ~~ THEN DO ~TakePartyItem("NTMISC10")
SetGlobal("NTTalkedToHasdar","GLOBAL",4)
CreateCreature("NTLEGIAN",[198.738],8)
CreateCreature("NTMARIEL",[56.748],8)
CreateCreature("SHADOW01",[84.618],0)
CreateCreature("SHADOW01",[38.719],0)
CreateCreature("SHADOW01",[54.798],10)
EraseJournalEntry(@10021)
ActionOverride(Myself,EscapeArea())~ SOLVED_JOURNAL @10022 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @45
  IF ~~ THEN DO ~SetGlobal("NTTalkedToHasdar","GLOBAL",6)
EraseJournalEntry(@10021)
ActionOverride(Myself,Enemy())
CreateCreature("NTLEGIAN",[198.738],8)
CreateCreature("NTMARIEL",[56.748],8)
CreateCreature("SHADOW01",[84.618],0)
CreateCreature("SHADOW01",[38.719],0)
CreateCreature("SHADOW01",[54.798],10)
~ EXIT
END

IF WEIGHT #0
~Dead("NTDraagi")~ THEN BEGIN cultdead
SAY @40
IF ~~ THEN DO ~EraseJournalEntry(@10021)
ActionOverride(Myself,Enemy())
CreateCreature("NTLEGIAN",[198.738],8)
CreateCreature("NTMARIEL",[56.748],8)
CreateCreature("SHADOW01",[84.618],0)
CreateCreature("SHADOW01",[38.719],0)
CreateCreature("SHADOW01",[54.798],10)
~ EXIT
END

/* if PC talks to Hasdar before Sgaella */
IF ~Global("NTTalkedToHasdar","GLOBAL",0)
!Dead("NTDraagi")~ THEN BEGIN notyet
SAY @36
IF ~!PartyHasItem("NTPBLET2")~ THEN EXIT
+ ~PartyHasItem("NTPBLET2")~ + @37 + confrontation
+ ~PartyHasItem("NTPBLET2")~ + @38 EXIT
END

IF ~~ THEN confrontation
SAY @39
  IF ~~ THEN EXIT
END

IF ~~ THEN confrontation_01
SAY @39
  IF ~~ THEN + 1
END

/* PC talked to Shaella, but not long enough */
IF WEIGHT #1
~Global("NTTalkedToHasdar","GLOBAL",1)
!Global("NTTalkedToShaellaPB","GLOBAL",3)~ THEN BEGIN 0
  SAY @41
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
+ ~PartyHasItem("NTMISC10")~ + @42 + 10
+ ~PartyHasItem("NTPBLET2")~ + @37 + confrontation_01
END