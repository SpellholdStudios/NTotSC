EXTEND_BOTTOM DSFEYDO 1 2
	IF ~OR(2)
Global("NTHaeballQuestWanted","GLOBAL",1)
Global("NTHaeballQuestWanted","GLOBAL",2)~ THEN REPLY @0 GOTO 7
END

APPEND DSFEYDO

IF ~NumTimesTalkedToGT(0)~ THEN talked_to
SAY @14
IF ~~ THEN EXIT
END

END
