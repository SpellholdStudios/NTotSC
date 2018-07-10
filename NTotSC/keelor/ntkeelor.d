//FIGHTER_MALE_DWARF_LOW
BEGIN ~NTKEELOR~

IF ~HPGT(Myself,14)
HPLT(Myself,20)
Global("Attacked","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~GiveItem("AX1H02",LastTalkedToBy) Polymorph(FIGHTER_MALE_DWARF) EscapeArea()~ SOLVED_JOURNAL @10027 EXIT
END

IF ~HPGT(Myself,19)
HPLT(Myself,25)
Global("Attacked","LOCALS",0)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~GiveItemCreate("AMUL11",LastTalkedToBy,0,0,0) Polymorph(FIGHTER_MALE_DWARF) EscapeArea()~ SOLVED_JOURNAL @10028 EXIT
END

IF ~HPGT(Myself,24)
Global("Attacked","LOCALS",0)~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~SetGlobal("NT_KeelorNASHA","GLOBAL",1) Polymorph(FIGHTER_MALE_DWARF) EscapeArea()~ SOLVED_JOURNAL @10029 EXIT
END

IF ~NumTimesTalkedTo(0)
Global("Attacked","LOCALS",0)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~HPGT(Myself,10)
HPLT(Myself,15)
Global("Attacked","LOCALS",0)~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN DO ~Polymorph(FIGHTER_MALE_DWARF) EscapeArea()~ EXIT
END

IF ~HPLT(Myself,11)
Global("Attacked","LOCALS",0)~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN EXIT
END

IF ~Global("Attacked","LOCALS",1)~ THEN BEGIN 6
  SAY @9
  IF ~~ THEN DO ~Polymorph(FIGHTER_MALE_DWARF) Enemy()~ EXIT
END
