BEGIN ~NTKOLDAR~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN DO ~RevealAreaOnMap("AR10PB") SetGlobal("NTAR10PB_Reveal_FieldOfTheDead","GLOBAL",1)
EscapeAreaDestroy(90)~ UNSOLVED_JOURNAL @10030 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN DO ~RevealAreaOnMap("AR10PB") SetGlobal("NTAR10PB_Reveal_FieldOfTheDead","GLOBAL",1)
EscapeAreaDestroy(90)~ UNSOLVED_JOURNAL @10030 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8
  IF ~~ THEN DO ~RevealAreaOnMap("AR10PB") SetGlobal("NTAR10PB_Reveal_FieldOfTheDead","GLOBAL",1)
EscapeAreaDestroy(90)~ UNSOLVED_JOURNAL @10030 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN DO ~RevealAreaOnMap("AR10PB") SetGlobal("NTAR10PB_Reveal_FieldOfTheDead","GLOBAL",1)
EscapeAreaDestroy(90)~ UNSOLVED_JOURNAL @10030 EXIT
END
