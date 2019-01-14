BEGIN ~NTHALFG~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~StartStore("TEM4801",LastTalkedToBy(Myself))~ EXIT
END
