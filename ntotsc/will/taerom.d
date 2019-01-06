EXTEND_BOTTOM ~TAEROM~ 14
+~InParty("WILL") !Dead("WILL") Global("NTMakeArmorForWill","GLOBAL",0) !Global("MakeArmor","GLOBAL",1) Global("NTWillWantsArmor","GLOBAL",1)~+ @3 GOTO WantArmor
END

EXTEND_BOTTOM ~TAEROM~ 14
+~!Global("MakeArmor","GLOBAL",1) GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) Global("NTWillWantsNewArmor","GLOBAL",1) Global("NTTeromHasIdeaForWill","GLOBAL",0) InParty("WILL") !Dead("WILL")~ + @4 GOTO ArmorUpgrade
END

EXTEND_BOTTOM ~TAEROM~ 14
+~Global("NTTeromHasIdeaForWill","GLOBAL",1) !Global("MakeArmor","GLOBAL",1) InParty("WILL") !Dead("WILL") Global("NTWillWantsNewArmor","GLOBAL",1) PartyHasItem("SCRL15") PartyHasItem("MISC42")~ + @4 GOTO DoIt
END


APPEND ~TAEROM~

IF ~~ THEN BEGIN WantArmor
  SAY @5
  IF ~~ THEN EXTERN ~WILLJ~ WillArmor
END

IF ~~ THEN BEGIN ArmorUpgrade
  SAY @6
  IF ~~ THEN REPLY @7 GOTO Upgrade
END

IF ~~ THEN BEGIN Upgrade
  SAY @8
  IF ~~ THEN DO ~SetGlobal("NTTeromHasIdeaForWill","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN DoIt
  SAY @9
  IF ~~ THEN REPLY @10 EXIT
  IF ~PartyGoldGT(7999)
~ THEN REPLY @11 GOTO MakeUpgrade
END

IF ~~ THEN BEGIN MakeUpgrade
  SAY @12
  IF ~~ THEN DO ~TakePartyItem("MISC42")
TakePartyItem("SCRL15")
TakePartyItem("NTLEAT02")
DestroyItem("SCRL15")
DestroyItem("MISC42")
DestroyItem("NTLEAT02")
~ GOTO AlmostDone
END

IF ~~ THEN BEGIN AlmostDone
  SAY @13
  IF ~~ THEN REPLY @14 GOTO Longer
END

IF ~~ THEN BEGIN Longer
  SAY @15
  IF ~~ THEN REPLY @16 GOTO IsItDone
END

IF ~~ THEN BEGIN IsItDone
  SAY @17
  IF ~~ THEN DO ~TakePartyGold(8000)
SetGlobal("NTTeromHasIdeaForWill","GLOBAL",2)
SetGlobal("NTWillWantsNewArmor","GLOBAL",2)
GiveItemCreate("NTLEAT03",LastTalkedToBy,0,0,0)
AddexperienceParty(2000)
~ EXIT
END

IF ~Global("NTTeromHasIdeaForWill","GLOBAL",1)
!PartyHasItem("MISC12")
!Global("MakeArmor","GLOBAL",1)
InParty("WILL")
!Dead("WILL")
Global("NTWillWantsNewArmor","GLOBAL",1)
PartyHasItem("SCRL15")
PartyHasItem("MISC42")
~ THEN BEGIN HaveAllComponents
  SAY @9
  IF ~~ THEN REPLY @10 EXIT
  IF ~~ THEN REPLY @11 GOTO MakeUpgrade
END

IF ~~ THEN BEGIN RedLeather
  SAY @18
  IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_2%)
~ THEN EXTERN ~WILLJ~ Will2
  IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_1%)
~ THEN EXTERN ~WILLJ~ Will3
END

IF ~~ THEN BEGIN TooEarly
  SAY @19
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Ready
  SAY @20
  IF ~~ THEN EXTERN ~WILLJ~ TooHigh
END

IF ~~ THEN BEGIN AcceptCost
  SAY @21
  IF ~~ THEN GOTO OfferIt
END

IF ~~ THEN BEGIN OfferIt
  SAY @22
  IF ~PartyGoldGT(4999)
~ THEN REPLY @23 GOTO LetsUpgrade
  IF ~~ THEN REPLY @24 GOTO NoGold
END

IF ~~ THEN BEGIN LetsUpgrade
  SAY @25
  IF ~~ THEN DO ~TakePartyGold(5000)
AddexperienceParty(500)
GiveItemCreate("NTLEAT02",LastTalkedToBy,0,0,0)
SetGlobal("NTMakeArmorForWill","GLOBAL",1)
SetGlobal("NTWillWantsNewArmor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN NoGold
  SAY @26
  IF ~~ THEN EXIT
END

END

APPEND ~WILLJ~

IF ~~ THEN BEGIN WillArmor
  SAY @27
  IF ~~ THEN EXTERN ~TAEROM~ RedLeather
END

IF ~~ THEN BEGIN Will2
  SAY @28
  IF ~~ THEN EXTERN ~TAEROM~ TooEarly
END

IF ~~ THEN BEGIN Will3
  SAY @28
  IF ~~ THEN EXTERN ~TAEROM~ Ready
END

IF ~~ THEN BEGIN TooHigh
  SAY @29
  IF ~~ THEN EXTERN ~TAEROM~ AcceptCost
END

END