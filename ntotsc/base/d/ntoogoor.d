BEGIN ~NTOOGOOR~

IF ~Dead("NTHUMBAB")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~SetGlobal("NTOogoorHostile","MYAREA",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN DO ~SetGlobal("NTOogoorHostile","MYAREA",1)
Enemy()~ EXIT
END

IF ~!Dead("NTHUMBAB")~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("NTOogoorHostile","MYAREA",1)
Enemy()~ EXIT
END
