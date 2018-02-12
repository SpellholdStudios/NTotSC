BEGIN ~NTGGHOTA~


IF ~Global("NTGGHOTA_Death","MYAREA",1)~ THEN death
SAY @5
IF ~~ THEN DO ~Activate("NTGGHOT1")
SetGlobal("NTGGHOTA_Death","MYAREA",2)
GiveItem("NTSWD05","NTGGHOT1")
CreateVisualEffectObject("SPDIMNDR",Myself)
DestroySelf()~ EXIT
END

IF ~NumberOfTimesTalkedTo(0)
PartyHasItem("NTSWD05")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~TakePartyItem("NTSWD05")
SetGlobal("NTAR11PB_PCHasSword","MYAREA",1)
DisplayStringHead(Player1,@4)
Enemy()~ EXIT
END

IF ~NumberOfTimesTalkedTo(0)
!PartyHasItem("NTSWD05")~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN DO ~Enemy()~ EXIT
END
