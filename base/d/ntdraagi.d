BEGIN ~NTDRAAGI~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~Enemy()~ EXIT
END
