BEGIN ~NTAURELI~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(1)
Global("NTAurelinusSays","GLOBAL",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("NTAurelinusSays","GLOBAL",1)~ EXIT
END

IF ~Global("NTAurelinusSays","GLOBAL",1)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END
