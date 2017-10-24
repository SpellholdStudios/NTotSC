BEGIN ~NTSILUA~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXIT
END

IF ~NumberOfTimesTalkedTo(1)
~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~CreateCreature("NTSIRIN2",[189.1714],0)
CreateCreature("NTSIRIN2",[120.1902],0)
CreateCreature("NTSIRIN2",[376.1828],0)
CreateCreature("NTSIRIN2",[351.1916],0)
CreateCreature("NTSIRIN2",[134.1844],0)
Enemy()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END
