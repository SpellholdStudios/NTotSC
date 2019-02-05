EXTEND_BOTTOM LOBAR 0
  IF ~OR(3)
	Global("NTTalkedToHasdar","GLOBAL",2)
	Global("NTTalkedToHasdar","GLOBAL",3)
	Global("NTHaeballQuestWanted","GLOBAL",1)
Global("NT_HasBookOfUnknowing","GLOBAL",0)~ THEN REPLY @0 GOTO Book
END


INTERJECT LOBAR 8 NT_AskLobarAboutBook
== LOBAR IF ~Global("NT_HasBookOfUnknowing","GLOBAL",0)
GlobalLT("NTTalkedToLobarMage","GLOBAL",2)
OR(3)
	Global("NTTalkedToHasdar","GLOBAL",2)
	Global("NTTalkedToHasdar","GLOBAL",3)
	Global("NTHaeballQuestWanted","GLOBAL",1)~ THEN @12  
END
  IF ~OR(3)
	Global("NTTalkedToHasdar","GLOBAL",2)
	Global("NTTalkedToHasdar","GLOBAL",3)
	Global("NTHaeballQuestWanted","GLOBAL",1)
Global("NTTalkedToLobarMage","GLOBAL",0)~ THEN REPLY @11 DO ~SetGlobal("NT_AskLobarAboutBook","GLOBAL",0)~ GOTO Book
  + ~PartyGoldGT(2999) Global("NTTalkedToLobarMage","GLOBAL",1)~ + @13 + GiveGold
  ++ @14 DO ~SetGlobal("NT_AskLobarAboutBook","GLOBAL",0)~ + Farewell



APPEND LOBAR

IF ~~ THEN BEGIN Book
  SAY @1
  IF ~~ THEN REPLY @2 GOTO BookOffer
  IF ~~ THEN REPLY @3 GOTO BookOffer
END

IF ~~ THEN BEGIN BookOffer
  SAY @4
  IF ~PartyGoldGT(2999)~ THEN REPLY @5 GOTO GiveGold
  IF ~PartyGoldLT(2999)~ THEN REPLY @6 GOTO NotEnough
  IF ~~ THEN REPLY @16 GOTO NotEnough
END

IF ~~ THEN BEGIN GiveGold
  SAY @7
  IF ~~ THEN DO ~TakePartyGold(3000)
SetGlobal("NTTalkedToLobarMage","GLOBAL",2)~ UNSOLVED_JOURNAL @10002 + Farewell
END

IF ~~ THEN BEGIN NotEnough
  SAY @9
  IF ~~ THEN DO ~SetGlobal("NTTalkedToLobarMage","GLOBAL",1)~ + Farewell
END

/* add this to increase compatibility with other mods, in case those were installed before NTotSC */
IF ~~ THEN BEGIN Farewell
  SAY @15
  COPY_TRANS LOBAR 8
END

END
