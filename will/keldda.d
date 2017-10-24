
EXTEND_BOTTOM KELDDA 0

IF ~GlobalLT("NTKelddatTalkNewBlunt","GLOBAL",1) InParty("Will")~ THEN GOTO Tells END

EXTEND_BOTTOM KELDDA 0

IF ~Global("NTKelddatTalkNewBlunt","GLOBAL",1) InParty("Will")~ THEN REPLY @18 /*Can you tell me again what is needed to make Will's flail more powerful?*/GOTO TellsMore END

APPEND ~KELDDA~

IF WEIGHT #4 ~GlobalLT("NTKelddatTalkNewBlunt","GLOBAL",1) InParty("Will")~ THEN BEGIN Tells
  SAY @0 /* Ah, I see Will has joined you.  Did you know that I can make his flail more powerful?*/
  IF ~!Global("NTKelddatTalkNewBlunt","GLOBAL",1)~ THEN REPLY @1 /* What?  No, I didn't know about this.  Tell me more*/ GOTO TellsMore
  IF ~Global("NTKelddatTalkNewBlunt","GLOBAL",1)~ THEN REPLY @2 /*Yes, you did mention that.  But I do not need to make it more powerful right now*/ GOTO TellsAid
  IF ~Global("NTKelddatTalkNewBlunt","GLOBAL",1)~ THEN REPLY @3 /*Yes, you did mention that.  Could you tell me again what you need?*/ GOTO TellsMore
  IF ~GlobalLT("NTWillKeldath","GLOBAL",1)~ THEN DO ~SetGlobal("NTWillKeldath","GLOBAL",1)~ EXTERN ~WILLJ~ WillKeldath
END

IF ~GlobalLT("NTKelddatTalkNewBlunt","GLOBAL",1) InParty("Will")~ THEN BEGIN Tells5
  SAY @17 /* Good day to you as well, Will.*/
  IF ~GlobalLT("NTKelddatTalkNewBlunt","GLOBAL",1)~ THEN REPLY @1 /* What?  No, I didn't know about this.  Tell me more*/ GOTO TellsMore
END

IF ~~ THEN BEGIN TellsMore
  SAY @4 /*Yes.  If you can find a rogue stone, it would be possible to add that component to the flail and with the right spells, Will's flail would be more powerful.*/
  IF ~~ THEN REPLY @5 /*Okay, we will have to get back with you on this.*/ DO ~SetGlobal("NTKelddatTalkNewBlunt","GLOBAL",1)~ EXIT
  IF ~PartyHasItem("MISC45") PartyHasItem("NTBLUN06")~ THEN REPLY @6 /*You mean a stone like this one?*/ GOTO Tells1
END

IF ~~ THEN BEGIN Tells1
  SAY @7 /*Yes, that is what I need.  Do you want me to enhance it now?*/
  IF ~~ THEN REPLY @8 /*Hmm, not right now.*/ DO ~SetGlobal("NTKelddatTalkNewBlunt","GLOBAL",1)~ GOTO TellsAid
  IF ~~ THEN REPLY @9 /*Yes, please do.*/ GOTO Tells2
END

IF ~~ THEN BEGIN Tells2
  SAY @10 /*Okay, then let me have the flail and the stone.  Thank you.*/
  IF ~~ THEN DO ~TakePartyItem("MISC45") TakePartyItem("NTBLUN06")~ GOTO Tells3
END

IF ~~ THEN BEGIN Tells3
  SAY @11 /*This should just take a minute.*/
  IF ~~ THEN GOTO Tells4
END

IF ~~ THEN BEGIN Tells4
  SAY @12 /*There we are.  Perfect.*/
  IF ~~ THEN DO ~SetGlobal("KelddatMakesNewBlunt","GLOBAL",1) SetGlobal("NTKelddatTalkNewBlunt","GLOBAL",2) DestroyItem("MISC45") DestroyItem("NTBLUN06") SmallWait(5) ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT) SmallWait(5)GiveItemCreate("NTBLUN07",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN TellsAid
  SAY @13 /*Well then, what do you need?*/
  IF ~~ THEN REPLY @14 /*What kind of aid can you give us?*/ DO ~StartStore("tem3402",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY @15 /*We don't require any help at the moment.*/ EXIT
END
END

APPEND ~WILLJ~

IF ~~ THEN BEGIN WillKeldath
  SAY @16 /*Good day to you MorningLord.*/
  IF ~~ THEN EXTERN ~KELDDA~ Tells5
END
END