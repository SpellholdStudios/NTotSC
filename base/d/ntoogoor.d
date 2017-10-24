BEGIN ~NTOOGOOR~

IF ~Dead("NTHUMBAB")
Global("NTOogoorRecognizeHumbaba","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("NTOogoorRecognizeHumbaba","LOCALS",1)
CreateCreature("HGSAL01",[417.706],3)
ActionOverride("NTHUMBAB",SetNumTimesTalkedTo(0))
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~SetGlobal("NTOogoorRecognizeHumbaba","LOCALS",1)
CreateCreature("HGSAL01",[417.706],3)
ActionOverride("NTHUMBAB",SetNumTimesTalkedTo(0))
Enemy()~ EXIT
END

IF ~!Dead("NTHUMBAB")
Global("NTOogoorRecognizeHumbaba","GLOBAL",0)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("NTOogoorRecognizeHumbaba","LOCALS",1)
CreateCreature("HGSAL01",[417.706],3)
Enemy()~ EXIT
END
