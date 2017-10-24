BEGIN ~NTDEXTPB~

IF ~NumberOfTimesTalkedTo(0) !Dead("NTROACH")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~IncrementGlobal("NTDexterSetupPBCount","MYAREA",1)~ EXIT
  IF ~~ THEN REPLY @2 DO ~IncrementGlobal("NTDexterSetupPBCount","MYAREA",1)~ GOTO 1
  + ~GlobalGT("NTDexterSetupPBCount","MYAREA",0)~ + @7 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~Global("NTDexterSetupPB","%Beregost_JovialJuggler_L2R%",0) !Dead("NTROACH")~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~CreateCreature("NTDEATHK",[553.284],10)~ EXIT
END

IF ~Dead("NTROACH")~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6
  IF ~~ THEN DO ~CreateCreature("NTROACH",[553.284],10)
SetGlobal("NTDexterSetupPB","%Beregost_JovialJuggler_L2R%",1)~ EXIT
END
