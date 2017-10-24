BEGIN ~NTGGHOTA~

IF ~NumberOfTimesTalkedTo(0)
PartyHasItem("NTSWD05")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~TakePartyItem("NTSWD05")
ApplySpellRES("NTSWD5XP",Player1)
DisplayStringHead(Player1,@4)
ApplySpellRES("NTSWD5XP",Player2)
ApplySpellRES("NTSWD5XP",Player3)
ApplySpellRES("NTSWD5XP",Player4)
ApplySpellRES("NTSWD5XP",Player5)
ApplySpellRES("NTSWD5XP",Player6)
EraseJournalEntry(@10030)
EraseJournalEntry(@10053)
EraseJournalEntry(@10075)
Enemy()~ SOLVED_JOURNAL @10012 EXIT
END

IF ~NumberOfTimesTalkedTo(0)
!PartyHasItem("NTSWD05")~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~
EraseJournalEntry(@10030)
EraseJournalEntry(@10053)
EraseJournalEntry(@10075)
Enemy()~ SOLVED_JOURNAL @10013 EXIT
END
