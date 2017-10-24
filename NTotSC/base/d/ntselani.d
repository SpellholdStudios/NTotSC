BEGIN ~NTSELANI~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 4
END

IF ~NumberOfTimesTalkedTo(1)
~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~StartStore("SELANIO",LastTalkedToBy(Myself))
~ EXIT
END

IF ~NumberOfTimesTalkedTo(2)
~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN DO ~StartStore("SELANIO",LastTalkedToBy(Myself))
~ EXIT
END
